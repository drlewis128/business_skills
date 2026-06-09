---
name: schema-migration-auditor
description: "Assess the risk of database schema migrations before they run. Use when the user says 'review this migration', 'is this migration safe', 'database migration audit', 'schema migration risk', 'will this migration lock the table', 'can I roll back this migration', 'migration review', 'check the DB migration', or 'is this a safe schema change'. Works with SQL migrations (Postgres, MySQL, SQLite), SQLx migrations, Diesel migrations, and raw ALTER TABLE statements."
metadata:
  version: 1.0.0
  tier: code-audit
  owner: Dr. John Lewis
argument-hint: "<migration-file | migration-directory>"
---

# Schema Migration Auditor

Assess database migration risk before execution. A bad migration on a 50M-row table at peak traffic is an outage. This skill catches the dangerous patterns before they run.

## When to Use

- Before running any migration in staging or production
- When reviewing a PR that includes migration files
- When a migration is planned for a table with >100K rows
- When the migration includes operations on tables with active concurrent writes

## Risk Categories

| Category | What it checks |
|----------|---------------|
| **Data Loss Risk** | Operations that destroy data permanently |
| **Lock Risk** | Operations that take long-running table locks |
| **Rollback Risk** | Migrations that can't be reversed cleanly |
| **Performance Risk** | Operations that will be slow on large tables |
| **Constraint Risk** | Constraints added to tables with potentially violating data |

## Input

`$ARGUMENTS`: Path to a migration file or directory.

Supported formats:
- Raw `.sql` files
- SQLx migration files (`migrations/YYYYMMDDHHMMSS_<name>.sql`)
- Diesel migration files (`up.sql` / `down.sql` pairs)
- TypeORM migration files (TypeScript)

## Audit Process

### Step 1 — Parse Migration Operations

Extract all DDL and DML statements. Categorize each:
- `CREATE TABLE` / `CREATE INDEX`
- `ALTER TABLE ADD COLUMN`
- `ALTER TABLE DROP COLUMN`
- `ALTER TABLE ALTER COLUMN` / `MODIFY COLUMN`
- `ALTER TABLE ADD CONSTRAINT`
- `ALTER TABLE RENAME COLUMN` / `RENAME TABLE`
- `DROP TABLE` / `DROP INDEX` / `DROP COLUMN`
- `UPDATE` / `DELETE` (data migrations)
- `CREATE INDEX` without `CONCURRENTLY` (Postgres)

### Step 2 — Flag High-Risk Patterns

**🔴 Critical — Immediate Data Loss**
- `DROP TABLE` — all data lost instantly
- `DROP COLUMN` — column data destroyed (even if column is "unused" — verify first)
- `TRUNCATE TABLE` — all rows deleted
- `DELETE FROM` without `WHERE` clause
- `ALTER TABLE ... DROP CONSTRAINT` on a foreign key used for referential integrity

**🔴 Critical — Irreversible**
- Any of the above without a corresponding `down.sql` / rollback migration
- Changing a column from `NOT NULL` to nullable then removing old null-safe code
- Column type narrowing that could lose precision (e.g., `NUMERIC(10,4)` → `INTEGER`)

**🟠 High — Table Lock Risk (Postgres/MySQL)**
- `ALTER TABLE ADD COLUMN ... NOT NULL` without a DEFAULT — locks entire table in Postgres < 11
- `ALTER TABLE ALTER COLUMN TYPE` — full table rewrite + lock
- `ADD CONSTRAINT ... FOREIGN KEY` without `NOT VALID` first (Postgres)
- `CREATE INDEX` without `CONCURRENTLY` on a large table — takes `ShareLock`
- `ALTER TABLE ... RENAME COLUMN` — locks in MySQL (safe in Postgres 10+)

**🟠 High — Performance Risk on Large Tables**
- `UPDATE` statement affecting entire table (data backfill)
- `ADD COLUMN ... DEFAULT <computed_value>` on large table — rewrites all rows
- Backfill migration without batching
- Creating index on unindexed column with high cardinality on >1M row table

**🟡 Medium — Constraint Risk**
- `ADD CONSTRAINT NOT NULL` — fails if any existing rows have NULL in that column
- `ADD CONSTRAINT UNIQUE` — fails if duplicate values exist
- `ADD CONSTRAINT CHECK` — fails if existing data violates the check
- `ADD FOREIGN KEY` — fails if orphaned rows exist

**🟡 Medium — Rollback Concerns**
- No `down.sql` or rollback path provided
- `down.sql` is incomplete (rolls back schema but not data)
- Migration that removes a column also used by currently-deployed application code

### Step 3 — Check Migration Pairs

For each `up.sql`, check if `down.sql` exists:
- Does `down.sql` reverse every operation in `up.sql`?
- Are there operations in `up.sql` that are inherently irreversible (data loss) that `down.sql` cannot recover?
- Flag any asymmetry between up and down

### Step 4 — Concurrent-Safe Alternatives

For flagged lock risks, suggest the zero-downtime pattern:

| Risky Pattern | Zero-Downtime Alternative |
|---------------|--------------------------|
| `ADD COLUMN NOT NULL` | Add as nullable → backfill → add NOT NULL constraint |
| `CREATE INDEX` (Postgres) | `CREATE INDEX CONCURRENTLY` |
| `ADD FOREIGN KEY` (Postgres) | `ADD CONSTRAINT ... NOT VALID` → `VALIDATE CONSTRAINT` in separate transaction |
| `ALTER COLUMN TYPE` | Add new column → backfill → swap application → drop old column (multi-step) |
| Large data backfill | Batch with `LIMIT` + loop + sleep between batches |

### Step 5 — Application Code Compatibility

Check if the migration:
- Removes a column that appears in source code (`SELECT *` + specific column names)
- Renames a column or table referenced in ORM models or queries
- Changes a column type that may break ORM deserialization

## Output Format

```markdown
# Schema Migration Audit
**Migration:** <filename>
**Date:** <today>
**Database:** Postgres / MySQL / SQLite (detected from syntax)

---

## Risk Summary
| Category | Risk Level | Count |
|----------|-----------|-------|
| Data Loss | 🔴 Critical | <N> |
| Lock Risk | 🟠 High | <N> |
| Rollback Risk | 🟠 High | <N> |
| Performance | 🟡 Medium | <N> |
| Constraint | 🟡 Medium | <N> |

**Verdict:** ✅ SAFE TO RUN / ⚠️ CONDITIONAL (fix warnings first) / ❌ DO NOT RUN (critical issues)

---

## 🔴 CRITICAL Issues

### Issue 1 — Lock Risk: ALTER TABLE without CONCURRENTLY
**Statement:** `CREATE INDEX idx_users_email ON users(email);`
**Risk:** Takes ShareLock on `users` table. All writes blocked for duration of index build.
**Table size note:** If `users` > 100K rows, this will cause visible latency/timeouts.
**Safe alternative:**
```sql
CREATE INDEX CONCURRENTLY idx_users_email ON users(email);
```
**Note:** CONCURRENTLY cannot run inside a transaction block — run separately.

---

## 🟡 WARNINGS

### Warning 1 — Constraint Risk: NOT NULL without backfill
**Statement:** `ALTER TABLE orders ADD COLUMN tenant_id UUID NOT NULL;`
**Risk:** Will fail immediately if any existing rows exist in `orders`.
**Safe pattern:**
```sql
-- Step 1: Add as nullable
ALTER TABLE orders ADD COLUMN tenant_id UUID;
-- Step 2: Backfill
UPDATE orders SET tenant_id = '00000000-0000-0000-0000-000000000000' WHERE tenant_id IS NULL;
-- Step 3: Add constraint  
ALTER TABLE orders ALTER COLUMN tenant_id SET NOT NULL;
```

---

## Rollback Assessment
**down.sql present:** Yes / No
**Rollback completeness:** Complete / Incomplete / MISSING

<gap analysis if down.sql is incomplete>

---

## Deployment Recommendation
- [ ] Run `EXPLAIN ANALYZE` on any UPDATE statements in staging first
- [ ] Estimate migration duration on production data volume before scheduling
- [ ] Schedule during low-traffic window if lock risk exists
- [ ] Verify application code compatibility before running
- [ ] Test rollback path in staging before production deployment
```

## Output Contract

- Never executes migrations — read-only audit
- Always provides a safe-alternative SQL pattern for every flagged risk
- Verdict is explicit: SAFE / CONDITIONAL / DO NOT RUN
- HITL required before any migration runs in production

## System Dependencies

- **Reads from:** File system (migration files)
- **Writes to:** Nothing (read-only)
- **HITL Required:** Before executing any migration flagged as CONDITIONAL or DO NOT RUN in production

## Feedback

Engineering leads (Tier 2) may provide database-specific context (table sizes, traffic patterns) to calibrate risk assessments. Log via `skill-feedback-collector`.
