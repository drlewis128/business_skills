---
name: etl-pipeline-builder
description: "Design and build ETL/ELT data pipelines. Use when the user says 'data pipeline', 'ETL pipeline', 'build a pipeline', 'move data from X to Y', 'sync this data', 'automated data transfer', 'ELT', 'data integration', 'connect these systems', 'ingest this data', or 'automate data movement'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--source <quickbooks|gohighlevel|monday|krista>] [--destination <bigquery|postgres>] [--pattern <etl|elt|streaming|batch>]"
---

# ETL Pipeline Builder

Design and build ETL (Extract-Transform-Load) or ELT (Extract-Load-Transform) data pipelines. Pipelines are how raw data gets from operational systems into the analytics layer reliably. A well-designed pipeline runs automatically, handles failures gracefully, monitors itself, and produces clean data for downstream consumers. For MBL, pipelines connect QuickBooks, GoHighLevel, Monday.com, and Krista.ai to BigQuery for analytics and to AI prompt contexts for OpenFang.

## When to Use
- Building a new connection between a source system and the data warehouse
- An existing pipeline is breaking or producing bad data
- A new source system was adopted — need to integrate it into analytics
- Manual data export/import is happening — automate it
- AI product needs reliable data input — design the pipeline that feeds it

## ETL vs. ELT

```
ETL (Transform before loading):
  Extract from source → Transform (clean, reshape) → Load to destination
  Use when: Source data is messy; transformation logic is complex; destination can't handle raw data
  Downside: Transformation logic is outside the data warehouse; harder to debug

ELT (Load raw, transform in warehouse):
  Extract from source → Load raw to warehouse → Transform in place (dbt)
  Use when: Destination has compute power (BigQuery, Snowflake)
  Advantage: Raw data preserved; transform in SQL (easier to debug and audit)
  MBL recommendation: ELT via Fivetran/Airbyte + dbt

Streaming vs. Batch:
  Streaming: Real-time; events processed as they arrive (Kafka, Pub/Sub)
  Use when: Latency < 1 minute required (e.g., real-time monitoring)
  Batch: Scheduled runs (hourly, daily); simpler to build and maintain
  Use when: Reports/dashboards refresh daily or hourly is sufficient
  MBL recommendation: Batch for most analytics; streaming only if real-time is required
```

## Pipeline Design Checklist

```
Before building:
  [ ] What data is being moved? (schema/fields)
  [ ] Source API availability and rate limits
  [ ] Destination table design (schema ready?)
  [ ] How often does the data need to refresh?
  [ ] What happens on failure? (retry, alert, fallback)
  [ ] Is this a full refresh or incremental? (incremental preferred)
  [ ] Are there HIPAA or compliance constraints?

During build:
  [ ] Idempotent: running twice produces the same result
  [ ] Incremental: only fetches records changed since last run
  [ ] Validated: schema checks before loading
  [ ] Logged: every run has a log entry (start, end, rows processed, errors)
  [ ] Alertable: failure sends an alert to Dr. Lewis via Teams

After build:
  [ ] Tested: run in staging with real data; validate output
  [ ] Monitored: freshness alert configured
  [ ] Documented: source, destination, schedule, owner
```

## Output Format

```markdown
# ETL Pipeline Design — <Pipeline Name>
**Date:** <date> | **Designer:** Dr. John Lewis
**Pattern:** ETL / ELT / Streaming / Batch
**Source:** <system> | **Destination:** <system>
**Refresh cadence:** Real-time / Hourly / Daily / Weekly

---

## Pipeline Specification

**Name:** `<source>_to_<destination>_<entity>`
**Purpose:** <What business need does this pipeline serve?>

### Extract (Source)

**System:** <GoHighLevel / QuickBooks / Monday.com / Krista.ai>
**API/method:** <REST API / Webhook / File export / DB connection>
**Authentication:** <API key / OAuth / Service account>
**Rate limits:** <N> requests/minute — pipeline must respect this
**Data volume:** ~<N> records per run; ~<N>MB
**Incremental strategy:** Filter by `updated_at > last_run_timestamp`

---

### Load (Destination)

**System:** BigQuery / PostgreSQL
**Destination table:** `<project>.<dataset>.<table>`
**Schema:**

```sql
CREATE TABLE IF NOT EXISTS raw_gohighlevel.contacts (
  id STRING NOT NULL,
  name STRING,
  email STRING,
  company STRING,
  entity_id STRING NOT NULL,  -- portfolio isolation
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  _extracted_at TIMESTAMP NOT NULL  -- pipeline metadata
);
```

**Load mode:** Incremental (upsert on id) / Full refresh / Append
**Partitioning:** BY DATE(updated_at) — reduces scan cost

---

### Transform (dbt — ELT)

**Model:** `stg_gohighlevel_contacts`

```sql
with source as (
  select * from {{ source('raw_gohighlevel', 'contacts') }}
),

renamed as (
  select
    id as contact_id,
    trim(name) as contact_name,
    lower(email) as email,
    trim(company) as company_name,
    entity_id,
    created_at,
    updated_at
  from source
  where _extracted_at >= dateadd('day', -7, current_date)  -- recent data
)

select * from renamed
```

---

## Error Handling

| Error type | Detection | Response | Escalation |
|-----------|---------|---------|-----------|
| API unavailable | 3 consecutive failures | Retry with exponential backoff (5min, 15min, 45min) | Alert Dr. Lewis after 3rd retry |
| Rate limit hit | 429 response code | Wait and retry per rate limit header | — |
| Schema mismatch | Column missing in source | Fail loudly; halt pipeline | Alert Dr. Lewis immediately |
| Data quality check fail | Null count > threshold | Log warning; load anyway; flag in quality monitor | — |

---

## Monitoring

| Check | Threshold | Alert |
|-------|---------|-------|
| Pipeline success | Must complete within 2× expected runtime | Teams message to Dr. Lewis |
| Data freshness | Source data must be < 26 hours old | Teams message + Metabase alert |
| Row count anomaly | <50% or >200% of expected row count | Teams message to Dr. Lewis |
| Schema drift | Unexpected field added or removed | Teams message; pipeline halted |

---

## Compliance (HIPAA — if applicable)

**This pipeline handles PHI:** Yes / No
**PHI fields:** <list fields> — must be encrypted in transit and at rest
**Access logging:** Required — all pipeline access logged in HIPAA audit log
**BAA required with:** <vendor handling PHI — Fivetran? BigQuery?>
**Allevio privacy officer notified:** Yes / No (required for new PHI pipelines)

---

## Implementation

**Tool:** Fivetran (managed connector) / Airbyte (open source) / Custom Python script
**Schedule:** Daily at 2am UTC (low-traffic window)
**Runtime:** ~<N> minutes expected
**Owner:** Dr. Lewis
**Repository:** `openfang/pipelines/<name>/`
```

## Output Contract
- Idempotency always designed in — pipelines that can't be safely re-run are fragile
- Incremental strategy always specified — full refresh pipelines don't scale and cost more
- Error handling always designed before building — discovering failure modes in production is too late
- HIPAA pipelines always noted with explicit controls — new PHI pipelines require Allevio privacy officer notification
- HITL required: Dr. Lewis approves pipeline design and deployment; HIPAA pipeline deployment requires Allevio privacy officer review; any pipeline failure in production escalated to Dr. Lewis same-day

## System Dependencies
- **Reads from:** Source systems (QuickBooks API, GoHighLevel API, Monday.com API, Krista.ai webhooks)
- **Writes to:** BigQuery raw tables; dbt models; pipeline logs
- **HITL Required:** Dr. Lewis approves design and deployment; HIPAA pipelines require Allevio privacy officer; failures escalated to Dr. Lewis

## Test Cases
1. **Golden path:** GoHighLevel contacts → BigQuery pipeline → Source: GoHighLevel REST API; auth: API key (stored in Secret Manager); rate limit: 100 req/min; incremental by updated_at; destination: raw_gohighlevel.contacts; upsert on id; dbt staging model: stg_gohighlevel_contacts (cleaned, normalized); monitoring: freshness alert if >26h old; error handling: 3-retry with backoff; schema drift alert; runtime: 8 minutes daily at 2am UTC
2. **Edge case:** Source system doesn't support incremental (no updated_at field) → options in order: (1) check if the API supports cursor-based pagination or event webhooks; (2) fetch the full dataset daily (acceptable if <1M rows); (3) request the vendor to add a timestamp field; (4) build a change data capture (CDC) layer if database access is available; document the full refresh trade-off in the design
3. **Adversarial:** Pipeline produces different row counts on re-run (not idempotent) → non-idempotent pipelines are a data integrity risk; a pipeline that inserts different data each run will cause duplicate records and inaccurate aggregations; root cause: usually upsert logic is wrong, or there's a race condition with the timestamp filter; fix the upsert key; test by running the pipeline twice and comparing row counts — they should be identical

## Audit Log
Pipeline designs and deployment decisions documented. Run logs retained (start, end, rows, errors). HIPAA pipeline access logs retained per HIPAA requirements. Schema changes logged.

## Deprecation
Retire when MBL has a dedicated data engineering function with automated pipeline monitoring and deployment tooling.
