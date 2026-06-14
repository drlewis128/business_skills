---
name: database-schema-designer
description: "Design database schemas and advise on data modeling. Use when the user says 'design the database', 'data model', 'schema design', 'database structure', 'table design', 'entity relationship', 'ER diagram', 'should we normalize', 'database indexes', 'PostgreSQL schema', or 'data architecture'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--db <postgres|mysql|sqlite|mongo>] [--mode <design|review|optimize>] [--domain <name>]"
---

# Database Schema Designer

Design database schemas and advise on data modeling for MBL engineering. Schema decisions are among the hardest to reverse — a poorly designed schema requires expensive migrations that carry downtime and data risk. This skill applies relational and document database design principles with MBL-specific context: HIPAA compliance for Allevio PHI, audit trail requirements across all entities, and agent/LLM data access patterns.

## When to Use
- New feature requires new tables or collections
- Existing schema is showing performance problems
- Reviewing a schema design before implementation
- Migration planning for a schema change
- Data modeling for a new portfolio company integration

## Relational Design Principles

### Normalization Guidelines
```
1NF — Atomic values: no arrays or comma-separated lists in columns
2NF — No partial dependencies: every non-key column depends on the entire key
3NF — No transitive dependencies: non-key columns depend only on the key

When to denormalize:
  - Read performance is critical and joins are expensive
  - Data is append-only (audit logs, event tables)
  - The field is a computed aggregate updated rarely
  Document the denormalization and the reason — it's a deliberate trade-off
```

### Naming Conventions
- Tables: `snake_case`, plural nouns (`invoices`, `meeting_summaries`, `portfolio_companies`)
- Primary keys: `id` (UUID preferred; serial for high-insert-rate append tables)
- Foreign keys: `<referenced_table_singular>_id` (`company_id`, `user_id`)
- Timestamps: always `created_at`, `updated_at` on every table
- Booleans: `is_<state>` or `has_<thing>` (`is_active`, `has_approved`)
- Avoid reserved words as column names (`status` → `approval_status`)

### Required Columns (Every Table)
```sql
id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
created_by  UUID REFERENCES users(id),  -- audit trail
```

### Index Strategy
```
Always index:
  - Foreign key columns (often missed — causes seq scans on joins)
  - Columns used in WHERE clauses on large tables
  - Columns used in ORDER BY on large result sets

Composite indexes:
  - Order matters: most selective column first
  - (company_id, created_at) for company-scoped time-range queries

Avoid over-indexing:
  - Each index slows INSERT/UPDATE
  - Index unused columns wastes storage and maintenance
  - Use EXPLAIN ANALYZE before adding indexes
```

## HIPAA Schema Requirements (Allevio)

```
PHI columns must be:
  - Encrypted at rest (column-level encryption or disk encryption documented)
  - Audited: separate audit log table for all reads and writes
  - Minimized: collect only what's required for the business function
  - Retained per HIPAA: 6-year minimum; deletion requires documented process

PHI audit log table (required):
  CREATE TABLE phi_access_log (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    table_name  TEXT NOT NULL,
    record_id   UUID NOT NULL,
    user_id     UUID NOT NULL REFERENCES users(id),
    action      TEXT NOT NULL CHECK (action IN ('read', 'write', 'delete')),
    accessed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    ip_address  INET,
    reason      TEXT
  );
```

## Output Format

```markdown
# Database Schema Design — <Domain/Feature>
**Date:** <date> | **Designer:** Dr. John Lewis
**Database:** PostgreSQL / MySQL / MongoDB
**Entity:** <portfolio company or MBL>

---

## Design Summary

**Tables/collections:** <N>
**Key design decisions:** <2-3 bullets on significant choices>
**HIPAA considerations:** <Yes — see PHI section / Not applicable>

---

## Schema

### Table: <table_name>

**Purpose:** <what this table stores>

| Column | Type | Constraints | Notes |
|--------|------|------------|-------|
| id | UUID | PK, default gen_random_uuid() | |
| <column> | TEXT | NOT NULL | |
| <fk_column> | UUID | FK → <table>(id) | |
| created_at | TIMESTAMPTZ | NOT NULL, default NOW() | |
| updated_at | TIMESTAMPTZ | NOT NULL, default NOW() | |

**Indexes:**
- `idx_<table>_<column>` ON `<table>`(`<column>`) — <reason>

**Constraints:**
- CHECK `<column>` IN ('<value1>', '<value2>') — enforces enum at DB level

---

## Relationships

| From | To | Type | Notes |
|------|----|------|-------|
| invoices | companies | Many-to-one | Each invoice belongs to one company |
| users | roles | Many-to-many | via users_roles junction table |

---

## Migration Notes

**Breaking changes:** Yes / No
**Estimated migration time:** <estimate>
**Rollback plan:** <how to reverse>
**Downtime required:** Yes (alter table) / No (additive change)

---

## HIPAA PHI Inventory (Allevio)

| Column | Table | PHI Type | Encryption | Audit Log |
|--------|-------|---------|-----------|----------|
| patient_name | patients | Direct identifier | Column-level AES-256 | ✅ |
| dob | patients | Direct identifier | Column-level AES-256 | ✅ |

---

## Risks

| Risk | Mitigation |
|------|-----------|
| Table will grow to >100M rows within 12 months | Partition by created_at; archive old records |
| JSON column used for flexible attributes | Document schema; validate at app layer |
```

## Output Contract
- DDL always provided (CREATE TABLE statements), not just diagrams
- Indexes always specified with reason — "add indexes" without specifying which is useless
- HIPAA PHI inventory always completed for Allevio schemas
- Migration notes always included for changes to existing schemas
- HITL required: Dr. Lewis reviews schema design; schema migrations to production require explicit approval; PHI schema changes require compliance review

## System Dependencies
- **Reads from:** Feature requirements, existing schema documentation, entity-relationship definitions
- **Writes to:** Schema design document (SharePoint/Engineering); migration scripts
- **HITL Required:** Dr. Lewis reviews and approves; Allevio PHI schemas require compliance review; production migrations require explicit approval from Dr. Lewis

## Test Cases
1. **Golden path:** Design schema for meeting intelligence system → 4 tables: `meetings` (id, title, occurred_at, krista_meeting_id), `meeting_participants` (meeting_id, user_id, role), `meeting_summaries` (meeting_id, summary_text, key_decisions, action_items, created_by), `action_items` (id, meeting_id, assigned_to, description, due_date, status); all with created_at/updated_at/created_by; indexes on meeting_id (all junction tables) and occurred_at (meetings)
2. **Edge case:** Feature requires storing semi-structured data that varies per record → JSONB column (PostgreSQL): document expected schema, validate at application layer, add GIN index for JSON queries; caveat: can't enforce column-level constraints inside JSON; evaluate whether to normalize if structure stabilizes
3. **Adversarial:** Developer proposes using a single `data` JSONB column for all entity data → anti-pattern: loses type safety, indexing, FK enforcement, and query performance; forces all filtering to JSON operators; recommend normalization; if truly needed (EAV-style system), design a proper EAV pattern with typed value columns

## Audit Log
Schema designs retained. Migration scripts versioned. PHI schema changes documented for HIPAA compliance.

## Deprecation
Retire when engineering team adopts a database schema management tool (Prisma, Liquibase, Flyway) with integrated design review and migration automation.
