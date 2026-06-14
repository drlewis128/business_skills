---
name: data-model-designer
description: "Design data models for analytics and applications. Use when the user says 'data model', 'design the schema', 'how should we structure this data', 'entity relationship', 'ERD', 'star schema', 'data model for analytics', 'dimensional modeling', 'fact and dimension tables', or 'design the database tables'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--type <oltp|olap|dimensional>] [--use-case <analytics|application|ai>]"
---

# Data Model Designer

Design data models for analytics, applications, and AI systems. A well-designed data model makes queries fast, analytics intuitive, and AI inputs reliable. A poorly designed model creates technical debt that compounds — every report is harder to write, every query is slower, and every AI prompt needs custom transformation. For MBL, data modeling serves two purposes: operational databases (PostgreSQL for applications) and analytical models (BigQuery/dbt for reporting).

## When to Use
- Building a new application or API — design the database schema first
- Building a new analytics mart in dbt — dimensional model design
- Current data structure is making queries complex — redesign
- Adding a new concept to an existing data model — where does it fit?
- AI product needs a structured data input — model the data the AI will read

## Data Modeling Approaches

```
OLTP (Online Transaction Processing) — for applications:
  Purpose: Optimized for writes and transactional consistency
  Approach: Normalized (3NF) — eliminate redundancy
  Example: OpenFang's agent session storage; HIPAA audit log tables
  Tools: PostgreSQL

OLAP (Online Analytical Processing) — for analytics:
  Purpose: Optimized for reads and aggregations
  Approach: Dimensional (star/snowflake schema) — denormalized for query performance
  Example: MBL's BigQuery analytics mart
  Tools: BigQuery + dbt

Dimensional model components:
  Fact table: Measurements/events (e.g., fact_meeting_sessions — one row per meeting)
  Dimension tables: Context about facts (e.g., dim_users, dim_meetings)
  Star schema: One fact table surrounded by dimension tables (best for most BI)
```

## Star Schema Design for MBL Analytics

```
Example: Meeting Intelligence analytics

fact_meeting_sessions:
  meeting_id (PK)
  meeting_date_key (FK → dim_date)
  user_id_key (FK → dim_user)
  entity_key (FK → dim_entity)
  duration_minutes
  summary_generated (boolean)
  action_items_count
  action_items_completed_count
  hitl_approved (boolean)
  api_cost_usd

dim_user:
  user_id (PK)
  user_name
  user_email
  user_role
  entity_name

dim_entity:
  entity_id (PK)
  entity_name (MBL, Allevio, HIVE, Column6)
  entity_type (PE, Healthcare, O&G, CTV)

dim_date:
  date_key (PK)
  date
  year, quarter, month, week, day_of_week
  is_business_day
```

## Output Format

```markdown
# Data Model Design — <Use Case>
**Date:** <date> | **Designer:** Dr. John Lewis
**Model type:** OLTP / OLAP / Dimensional
**Use case:** Analytics / Application / AI input

---

## Entity-Relationship Overview

```
[Meeting] ──< [Action Item] 
[Meeting] >── [User]
[Meeting] >── [Entity (MBL/Allevio/HIVE)]
[Meeting] >── [Summary]
[Action Item] >── [User] (assigned_to)
[Action Item] >── [Monday Item] (synced)
```

---

## Table Designs

### Table: <table_name>

**Purpose:** <what this table stores>
**Grain:** One row per <what>
**Update pattern:** Append-only / SCD Type 1 / SCD Type 2

| Column | Type | Nullable | Description | Notes |
|--------|------|---------|-------------|-------|
| id | UUID | NOT NULL | Primary key | Auto-generated |
| created_at | TIMESTAMPTZ | NOT NULL | Record creation time | UTC |
| entity_id | UUID | NOT NULL | FK → entities.id | Portfolio isolation key |
| [field] | VARCHAR(255) | NULL | [description] | [constraint notes] |
| [field] | DECIMAL(10,2) | NOT NULL | [description] | |
| is_deleted | BOOLEAN | NOT NULL | Soft delete flag | Default: false |

**Indexes:**
```sql
CREATE INDEX idx_<table>_entity_id ON <table>(entity_id);
CREATE INDEX idx_<table>_created_at ON <table>(created_at);
```

**HIPAA note (if applicable):** [Which fields are PHI; access controls required]

---

### dbt Model: <model_name> (analytics layer)

**Purpose:** <what business question this answers>
**Layer:** Staging / Mart / Core
**Upstream models:** <model1>, <model2>
**Grain:** One row per <what>

```sql
-- marts/meeting_intelligence/fct_meeting_sessions.sql

with meetings as (
  select * from {{ ref('stg_krista_meetings') }}
),

action_items as (
  select 
    meeting_id,
    count(*) as action_items_count,
    count(case when is_completed then 1 end) as action_items_completed_count
  from {{ ref('stg_monday_action_items') }}
  group by meeting_id
)

select
  m.meeting_id,
  m.meeting_date,
  m.entity_id,
  m.user_id,
  m.duration_minutes,
  m.summary_generated,
  m.hitl_approved,
  m.api_cost_usd,
  coalesce(ai.action_items_count, 0) as action_items_count,
  coalesce(ai.action_items_completed_count, 0) as action_items_completed_count
from meetings m
left join action_items ai on m.meeting_id = ai.meeting_id
```

---

## Design Decisions

| Decision | Rationale |
|---------|---------|
| Soft deletes (is_deleted flag) vs. hard deletes | HIPAA requires audit trail; soft deletes preserve history |
| UUID primary keys vs. sequential integers | Portfolio isolation; UUIDs don't leak sequence across entities |
| entity_id on all tables | Enforces portfolio entity isolation at the data layer; prevents cross-entity data leaks |
| Append-only fact tables | Audit trail; enables point-in-time analysis; required for financial records |
```

## Output Contract
- Entity isolation always enforced via entity_id on all tables — portfolio data isolation is a design requirement
- HIPAA constraints always noted for tables touching Allevio data
- Soft deletes preferred over hard deletes for audit trail integrity
- dbt models always include the SQL implementation, not just the schema description
- HITL required: Dr. Lewis approves all data model designs; schema changes to production databases require Dr. Lewis review; HIPAA-relevant schema changes require Allevio privacy officer review

## System Dependencies
- **Reads from:** Business requirements, existing schema, source system documentation
- **Writes to:** Data model design document (SharePoint/Data/Architecture); database migrations; dbt models
- **HITL Required:** Dr. Lewis approves; production schema changes require Dr. Lewis review; HIPAA schema reviewed by Allevio privacy officer

## Test Cases
1. **Golden path:** Meeting Intelligence analytics data model → fact_meeting_sessions (one row per meeting with metrics); dim_user, dim_entity, dim_date; entity_id on all tables for portfolio isolation; action items count as a metric in fact table (aggregated from action items source); HIPAA: no PHI in analytics mart (meeting transcripts stay in SharePoint; analytics only sees counts and metadata)
2. **Edge case:** A new entity type is added to the portfolio (new company acquired) → entity_id design makes this trivial; add a new row to dim_entity; no schema changes required; all existing analytics automatically support the new entity by entity_id filter; this is the value of designing entity isolation into the model from the start
3. **Adversarial:** Application developer wants to use the analytics mart as the application database (to avoid maintaining two models) → OLAP and OLTP models serve different purposes; the analytics mart is optimized for queries (denormalized); the application database is optimized for writes (normalized); they are different tools for different purposes; building an app on the analytics mart will cause write performance issues and data consistency problems; maintain separation

## Audit Log
Data model designs versioned. Schema change migrations documented. Design decisions retained with rationale.

## Deprecation
Retire when MBL has a dedicated data engineering function that owns data modeling independently with established design review and approval processes.
