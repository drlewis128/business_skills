---
name: data-migration-planner
description: "Plan and execute a data migration safely. Use when the user says 'data migration', 'migrate data', 'move data to', 'database migration', 'migrate to BigQuery', 'move our data', 'ETL migration', 'schema migration', 'lift and shift data', 'migrate production data', or 'switch data systems'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--source <system>] [--target <system>] [--scope <full|incremental|schema-only>]"
---

# Data Migration Planner

Plan and execute data migrations safely with zero data loss and minimal downtime. Data migrations are high-risk operations — the source is production data, the target must be validated before cutover, and rollback must be possible if something goes wrong. For MBL, migrations typically involve moving from disparate per-company systems into the centralized BigQuery data warehouse, or migrating between versions of internal schemas as the data model evolves.

## When to Use
- Onboarding a portfolio company — pulling historical data into BigQuery
- Replacing a data system (e.g., old CRM → GoHighLevel)
- BigQuery schema changes requiring historical data re-processing
- dbt model architecture change that requires data backfill
- Disaster recovery test — validating backup data completeness
- Any time source data must move to a new location or format

## Migration Risk Classification

```
Migration Risk:
  LOW — read-only, no production impact:
    Historical backfill from an API with full history available
    Adding columns to a BigQuery table (BigQuery: additive = safe)
    Creating a new dbt model alongside existing models

  MEDIUM — production impact, rollback possible:
    Migrating a system of record to a new system
    Changing primary keys or foreign key relationships
    Schema refactor where downstream consumers exist

  HIGH — production impact, rollback complex:
    Dropping columns or tables that have downstream dependencies
    Migrating HIPAA data between systems (BAA implications)
    Migrating financial data that must be reconciled to source
    Any migration affecting Matt Mathison's executive dashboards

  CRITICAL — board-level sign-off required:
    Migrating all customer data to a new system of record
    Shutting down a data source used by multiple portfolio companies
```

## Output Format

```markdown
# Data Migration Plan — <Source> → <Target>
**Date:** <date> | **Owner:** Dr. John Lewis
**Risk level:** Low / Medium / High / Critical
**Migration type:** Full / Incremental / Schema-only
**Data volume:** <N rows / N GB / date range>

---

## Migration Overview

**What is moving:** <description of data being migrated>
**Why this migration:** <business reason — system decommission, consolidation, etc.>
**Success criteria:** <how we'll know the migration succeeded>
**Rollback plan:** <how we reverse it if something goes wrong>

---

## Pre-Migration Checklist

### Data Audit
- [ ] Source data documented: <N rows, schema, date range>
- [ ] Data quality issues identified (nulls, duplicates, encoding)
- [ ] PII/HIPAA fields identified and handling confirmed
- [ ] Dependencies mapped: who reads from source?

### Target Validation
- [ ] Target schema designed and validated against source
- [ ] Target has sufficient storage/capacity
- [ ] Access permissions configured in target
- [ ] Test migration completed in staging environment

### Stakeholder Alignment
- [ ] Affected teams notified of migration window
- [ ] Rollback decision criteria agreed with stakeholders
- [ ] Communication plan for downtime (if any)
- [ ] Matt Mathison informed (if executive dashboards affected)

---

## Migration Steps

| Step | Description | Owner | Duration | Validation |
|------|-----------|-------|---------|-----------|
| 1 | Full source data backup | Dr. Lewis | 30 min | Backup size matches source |
| 2 | Schema migration (if applicable) | Dr. Lewis | 15 min | New schema deployed; no errors |
| 3 | Historical data extract | Dr. Lewis | <N> hours | Row count matches source |
| 4 | Data transform (if needed) | Dr. Lewis | <N> hours | Spot-check 100 records |
| 5 | Load to target | Dr. Lewis | <N> hours | Target row count matches extract |
| 6 | Data validation (see below) | Dr. Lewis | 1 hour | All validation checks pass |
| 7 | Downstream consumer cutover | Dr. Lewis + Eng | 30 min | Dashboards show correct data |
| 8 | Monitor for 24h | Dr. Lewis | Async | No anomaly alerts triggered |
| 9 | Source decommission (if applicable) | Dr. Lewis | 15 min | Source archived, not deleted |

---

## Data Validation Plan

### Row Count Reconciliation
```sql
-- Source
SELECT COUNT(*) FROM source_system.table;

-- Target
SELECT COUNT(*) FROM target_system.table;

-- Must match within 0.01% tolerance
```

### Sample Reconciliation
```sql
-- Compare 100 random records across key fields
SELECT s.id, s.field1, s.field2,
       t.id, t.field1, t.field2,
       CASE WHEN s.field1 = t.field1 THEN 'MATCH' ELSE 'MISMATCH' END AS status
FROM source_system.table s
JOIN target_system.table t ON s.id = t.id
ORDER BY RAND()
LIMIT 100;
```

### Aggregate Reconciliation
```sql
-- Key metrics must match
SELECT 
  'source' AS origin, SUM(amount), COUNT(DISTINCT customer_id)
FROM source_system.table
UNION ALL
SELECT 
  'target' AS origin, SUM(amount), COUNT(DISTINCT customer_id)  
FROM target_system.table;
```

---

## Rollback Plan

**Rollback trigger:** Any validation failure where discrepancy > 0.1% OR any critical dashboard showing incorrect data

**Rollback steps:**
1. Stop downstream consumers from reading target (switch back to source)
2. Document what failed (validation report)
3. Identify and fix root cause
4. Re-run migration from Step 3

**Rollback window:** Keep source live for 30 days post-cutover; do NOT decommission until stability confirmed

---

## HIPAA Migration Controls (if Allevio data)

Additional requirements for PHI migration:
- [ ] BAA in place with target system vendor
- [ ] Encryption in transit: TLS 1.2+
- [ ] Encryption at rest: confirmed in target
- [ ] PHI access log: who accessed data during migration window
- [ ] Allevio privacy officer notified and signed off
- [ ] Post-migration access audit: PHI only accessible to named roles

---

## Post-Migration Monitoring (30 days)

| Check | Frequency | What to look for |
|-------|----------|-----------------|
| Row count drift | Daily | New records appearing in target correctly |
| Dashboard accuracy | Daily (first week) | Data matches expectations |
| Anomaly alerts | Continuous | Any data quality alerts |
| Downstream consumer feedback | Weekly | Any reports of wrong data |
```

## Output Contract
- Row count reconciliation always included — the most basic migration validation is that nothing was lost
- Rollback plan always explicit — migration without a rollback plan is not a plan
- HIPAA controls always a separate section when Allevio data is involved — PHI migration requires explicit documentation
- Source never decommissioned until 30-day stability window — source data is the last line of rollback
- HITL required: Dr. Lewis owns migration; Matt Mathison notified if executive dashboards affected; HIPAA: Allevio privacy officer signs off before PHI migration begins; rollback decision is Dr. Lewis + Matt Mathison jointly

## System Dependencies
- **Reads from:** Source system (whatever is being migrated)
- **Writes to:** Target system (BigQuery, new schema, etc.); Migration log (SharePoint/Data/Migrations)
- **HITL Required:** Dr. Lewis executes; Matt Mathison notified for high/critical migrations; HIPAA privacy officer for PHI

## Test Cases
1. **Golden path:** Migrate GoHighLevel CRM historical data to BigQuery → Risk: Low (read-only from GHL API); Steps: audit source (12K contacts, 3 years), extract via GHL API, load to raw_crm.ghl_contacts, dbt staging model, validate: row count 12,847 = source 12,847 ✅; aggregate: total deal value matches $X ✅; dashboards: GoHighLevel pipeline dashboard updated to read from BigQuery ✅; source: GHL still live (no decommission)
2. **Edge case:** Mid-migration, source system has a schema change — new field added → stop migration; re-audit source schema; add new field to target schema; restart from data extract; document the schema change in the migration log; this is why migrations should happen during low-traffic windows
3. **Adversarial:** Someone wants to skip the staging validation and go directly to production ("we're in a rush") → no production data migration without staging validation; staging validation is the only way to discover data quality issues before they affect Matt Mathison's dashboards; "rushing" a migration is how you create a P0 incident; 30 minutes of staging validation prevents 4 hours of incident response

## Audit Log
Migration plan retained. Validation results retained. Post-migration monitoring log retained. HIPAA: PHI migration log retained separately per HIPAA requirements.

## Deprecation
Retire when MBL has a dedicated data platform with automated migration tooling (Airbyte, dbt Cloud, Fivetran managed migrations) and a DataOps engineer who owns migration execution.
