---
name: data-pipeline-designer
description: "Design data pipelines for ingestion, transformation, and delivery. Use when the user says 'data pipeline', 'ETL pipeline', 'ELT', 'ingest this data', 'data flow design', 'process this data', 'pipeline architecture', 'data integration', 'data ingestion', or 'transform and load'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--source <system>] [--destination <system>] [--mode <design|review|debug>] [--pattern <etl|elt|streaming|batch>]"
---

# Data Pipeline Designer

Design data pipelines for MBL engineering. Data pipelines are the connective tissue between systems — they move data from where it lives to where it needs to be used. For MBL, this means pipelines connecting financial systems (QuickBooks, Bill.com), operational systems (Monday.com), AI systems (Claude API), and portfolio company data. A poorly designed pipeline is an invisible liability — it fails silently, corrupts data, or creates compliance gaps.

## When to Use
- Connecting a new system to the MBL data platform
- Meeting Intelligence pipeline (Krista.ai → Claude → Monday.com)
- Financial data extraction for reporting (QuickBooks → data warehouse)
- Portfolio company data integration (Allevio RCM, HIVE Covercy)
- Existing pipeline is failing or producing incorrect data

## Pipeline Patterns

```
ETL (Extract, Transform, Load):
  Traditional: extract data → transform in pipeline → load to destination
  Use when: destination schema is rigid; transformation is complex; batch OK
  Risk: pipeline is a single point of failure; transformation bugs corrupt destination

ELT (Extract, Load, Transform):
  Modern: extract → load raw → transform in destination (SQL/dbt)
  Use when: destination is a data warehouse (BigQuery, Snowflake, Azure Synapse)
  Benefit: raw data preserved; transformations can be re-run; destination handles scale

Streaming:
  Real-time: events flow continuously; processed as they arrive
  Use when: low latency required (<1 minute); event-driven workflows; webhook sources
  Example: Krista.ai meeting end → Claude summarization → Monday.com push

Batch:
  Scheduled: run every N hours/daily; process accumulated data
  Use when: latency tolerance is high (hours); large volume; resource-intensive processing
  Example: Daily QuickBooks export → reconciliation report
```

## Design Checklist

```
DATA QUALITY
  [ ] Schema validation at ingestion — reject malformed data before it enters the pipeline
  [ ] Null handling defined — what happens when expected fields are missing?
  [ ] Deduplication strategy — how are duplicate records detected and handled?
  [ ] Data lineage tracked — can you trace a record from source to destination?

RELIABILITY
  [ ] Idempotent processing — re-running a failed pipeline produces the same result
  [ ] At-least-once vs. exactly-once semantics — which is required?
  [ ] Dead letter queue — failed records go somewhere for investigation
  [ ] Retry logic with backoff — transient failures don't abort the pipeline
  [ ] Alerting on pipeline failure — someone knows when it breaks

COMPLIANCE (Allevio PHI / Financial)
  [ ] PHI never leaves Allevio's Azure environment — no PHI in MBL data stores
  [ ] Financial data encryption in transit and at rest
  [ ] Audit log: what data moved, when, from where, to where
  [ ] PII minimization — only move fields required for the use case

PERFORMANCE
  [ ] Estimated volume: <N> records/hour or <N> records/batch
  [ ] Processing time target: <N> seconds/batch
  [ ] Memory ceiling: does processing require loading full dataset into memory?
```

## MBL Pipeline Reference Architectures

### Meeting Intelligence Pipeline (Active Design)
```
Source: Krista.ai meeting recording API (webhook push)
  ↓ Azure Function (event trigger)
  ↓ Claude API (summarization + action extraction)
    - System prompt: meeting summary template
    - Prompt caching: system prompt cached
    - Tool use: extract_action_items(), extract_decisions()
  ↓ Microsoft Graph API (SharePoint — store summary)
  ↓ Monday.com API (create action items on board)
  
Reliability: dead letter queue in Azure Service Bus for failed summaries
Compliance: no PHI; audio files not retained after transcription; audit log at each step
Alert: if >10% of meetings fail summarization in 24h
```

### Financial Data Pipeline
```
Source: QuickBooks API (daily scheduled pull)
  ↓ Azure Function (scheduled trigger)
  ↓ Data transformation (normalize, categorize, aggregate)
  ↓ Azure SQL (reporting database)
  ↓ PowerBI / Excel export
  
Reliability: idempotent (pull by date range; re-running produces same result)
Compliance: financial data encrypted; audit log of each pull
Alert: if daily pull fails
```

## Output Format

```markdown
# Data Pipeline Design — <Pipeline Name>
**Date:** <date> | **Designer:** Dr. John Lewis
**Source:** <system> | **Destination:** <system>
**Pattern:** ETL / ELT / Streaming / Batch
**Trigger:** Webhook / Schedule (<cron>) / Event

---

## Pipeline Summary

**Purpose:** <what this pipeline does and why it exists>
**Volume:** <N> records/day or <N> events/hour
**Latency requirement:** Real-time (<1 min) / Near-real-time (<15 min) / Batch (<24 hrs)
**Compliance:** PHI in scope (Allevio) / Financial (QuickBooks) / Standard

---

## Data Flow

```
[Source System]
  ↓ [Extraction method — API/webhook/DB query]
  ↓ [Validation — schema check, required fields]
  ↓ [Transformation — Claude API / SQL / code]
  ↓ [Load — API call / DB write / file]
[Destination System]
```

---

## Schema

### Source Schema
```json
{
  "meeting_id": "string (required)",
  "transcript": "string (required)",
  "participants": ["array of strings"],
  "duration_seconds": "integer"
}
```

### Destination Schema
```json
{
  "summary": "string",
  "action_items": [{"description": "string", "assignee": "string", "due_date": "date"}],
  "decisions": ["array of strings"]
}
```

---

## Error Handling

| Error Type | Action | Escalation |
|-----------|--------|-----------|
| Schema validation failure | Dead letter queue + alert | Dr. Lewis review |
| Transformation failure | Retry × 3; then dead letter | Dr. Lewis review |
| Destination write failure | Retry × 3 with backoff | P2 alert |
| Source unavailable | Retry every 5 min × 12 | P2 alert after 1 hour |

---

## Compliance Notes

**PHI:** <Not in scope / In scope — see HIPAA controls>
**Audit log:** Each pipeline run logged: run_id, source, destination, records_processed, errors, duration
**Data retention:** Raw source data: <N> days; Processed destination data: <N>
**Encryption:** TLS in transit; AES-256 at rest

---

## Implementation Plan

| Step | Owner | Sprint | Notes |
|------|-------|--------|-------|
| Source extraction function | [name] | N | Azure Function + webhook receiver |
| Transformation logic | Dr. Lewis | N | Claude API integration |
| Destination writer | [name] | N | Monday.com and SharePoint API |
| Monitoring + alerts | Dr. Lewis | N+1 | After pipeline is running |
```

## Output Contract
- Dead letter queue always designed — a pipeline without a DLQ loses data silently
- Idempotency always addressed — re-runnable pipelines are safer than fragile ones
- Compliance controls always addressed when financial or PHI data is involved
- Volume and latency requirements always specified — these drive the choice of streaming vs. batch
- HITL required: Dr. Lewis reviews pipeline design before implementation; PHI pipelines require compliance review; production pipelines require Dr. Lewis approval before go-live

## System Dependencies
- **Reads from:** Source system APIs (QuickBooks, Krista.ai, Monday.com, GoHighLevel, Covercy); Claude API
- **Writes to:** Destination systems (Monday.com, SharePoint, Azure SQL, GoHighLevel)
- **HITL Required:** Dr. Lewis approves design; PHI data pipelines require compliance review; production go-live requires Dr. Lewis sign-off

## Test Cases
1. **Golden path:** Meeting Intelligence pipeline design → streaming (webhook trigger); Krista.ai → Azure Function → Claude API (with caching) → SharePoint + Monday.com; dead letter queue in Service Bus; audit log; alert if >10% fail; schema validated at ingestion; Dr. Lewis approves; implementation in 2 sprints
2. **Edge case:** Source API changes schema without notice → schema validation catches the change; failed records go to dead letter queue; alert fires; Dr. Lewis investigates; update transformation to handle new schema; re-process dead letter records
3. **Adversarial:** "We'll handle errors later" — ship the happy path first → pipelines without error handling silently drop data; the first production failure with no error handling = data loss; error handling is not optional; at minimum: dead letter queue and alert on failure; add it in the same sprint

## Audit Log
Pipeline designs retained. Pipeline run logs maintained per compliance requirements. Error and DLQ records retained for investigation.

## Deprecation
Retire when entity adopts a dedicated data pipeline platform (Azure Data Factory, dbt, Airbyte) that handles orchestration, monitoring, and error handling as a managed service.
