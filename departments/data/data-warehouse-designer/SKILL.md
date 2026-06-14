---
name: data-warehouse-designer
description: "Design a data warehouse or lakehouse architecture for analytics. Use when the user says 'data warehouse', 'build a warehouse', 'analytics infrastructure', 'where should data live', 'data stack', 'modern data stack', 'BigQuery', 'Snowflake', 'data lakehouse', 'set up our data infrastructure', or 'analytics data store'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--company <MBL|Allevio|HIVE|Column6>] [--scale <small|medium|large>] [--budget <low|medium|high>]"
---

# Data Warehouse Designer

Design a data warehouse or analytics data store for MBL and portfolio companies. The data warehouse is the analytical foundation — it consolidates data from all operational systems into a single place built for queries, reporting, and AI. Without it, every report is a bespoke SQL query against a production database, or worse, an Excel file. For MBL at current scale, the right architecture is pragmatic and affordable — not enterprise-grade before the data volume justifies it.

## When to Use
- No single source of truth for analytics — data lives scattered across systems
- Dashboard or BI tool needs a clean data layer underneath it
- Building an AI product that needs reliable, structured data to query
- Portfolio company is outgrowing their spreadsheet-based reporting
- Evaluating which data warehouse to adopt

## Architecture Options by Scale

```
Small scale (< 50M rows, < 5 data sources, < 10 users):
  Recommended: BigQuery (free tier covers MBL; $0.01/GB queries beyond free)
  Alt: Postgres (on-prem/cloud; excellent for SQL-first teams)
  Why BigQuery: Serverless; free tier; no infrastructure management; SQL
  Why not Snowflake: Overkill at this scale; $400+/month minimum useful tier

Medium scale (50M-1B rows, 5-20 sources, 10-100 users):
  Recommended: BigQuery (pay-as-you-go still affordable) or Snowflake
  Transformation: dbt
  Serving: Looker, Metabase, or Hex

Large scale (>1B rows, 20+ sources, 100+ users):
  This is not MBL's near-term situation — use Snowflake or Databricks
  Full modern data stack; dedicated data engineering team required

For MBL Partners (2026):
  Scale: Small (< 5 sources, < 10 users, < 10M rows)
  Recommended stack: BigQuery + dbt Core (open source) + Metabase
  Monthly cost: ~$0-100 (BigQuery free tier covers most small operations)
```

## Modern Data Stack for MBL

```
[Data Sources] → [Ingestion] → [Raw] → [Transform] → [Serving]

Sources (existing):
  QuickBooks → Finance data
  GoHighLevel → CRM data
  Monday.com → Project data
  Krista.ai / SharePoint → Meeting intelligence
  Claude API → AI usage and cost data

Ingestion (recommended):
  Fivetran or Airbyte for automated connectors
  Custom Python scripts for sources without connectors (low volume)

Raw storage:
  BigQuery — raw schemas (exact copies of source data)
  Naming: raw_<source>.<table>

Transformation (dbt):
  staging layer: clean and normalize raw data
  marts layer: business-ready tables that match metric definitions
  Example: marts.finance.mrr_monthly

Serving:
  Metabase (BI dashboards; affordable)
  Claude/OpenFang (AI queries via natural language)
```

## Output Format

```markdown
# Data Warehouse Design — <Company>
**Date:** <date> | **Designer:** Dr. John Lewis
**Scale:** Small / Medium / Large
**Target stack:** <tools>
**Estimated monthly cost:** $<N>

---

## Architecture Diagram

```
[QuickBooks] ──┐
[GoHighLevel] ─┤─→ [Fivetran/Airbyte] → [BigQuery raw] → [dbt transform] → [BigQuery marts] → [Metabase]
[Monday.com] ──┤                                                                                 [Claude API]
[Krista.ai] ───┘
```

---

## Layer Design

### Raw Layer (BigQuery)

| Schema | Source | Tables | Refresh cadence |
|--------|--------|--------|----------------|
| raw_quickbooks | QuickBooks API | invoices, accounts, payments | Daily |
| raw_gohighlevel | GoHighLevel API | contacts, deals, pipelines | Daily |
| raw_monday | Monday.com API | items, boards, updates | Daily |
| raw_meetings | SharePoint / Krista.ai | summaries, action_items | On creation |

**Rules:** Raw tables are immutable copies of source data. Never modify raw data.

---

### Staging Layer (dbt)

| Model | Source | Purpose |
|-------|--------|---------|
| stg_quickbooks_invoices | raw_quickbooks.invoices | Cleaned, typed, renamed fields |
| stg_gohighlevel_contacts | raw_gohighlevel.contacts | Normalized company names, de-duped |
| stg_monday_items | raw_monday.items | Parsed JSON fields, status normalized |

---

### Mart Layer (dbt — business-ready)

| Model | Grain | Business use |
|-------|-------|-------------|
| marts.finance.mrr_monthly | One row per month per entity | MRR and ARR reporting |
| marts.crm.pipeline_current | One row per open deal | Pipeline dashboard |
| marts.meetings.action_items | One row per action item | Meeting intelligence tracking |

---

## Access Control

| Role | Layer access | Tool access |
|------|------------|------------|
| Dr. Lewis | Full (all layers) | BigQuery + Metabase + dbt |
| Matt Mathison | Mart layer (read only) | Metabase dashboards only |
| Portfolio leads | Their entity's mart tables | Metabase (entity-filtered) |
| Engineering | dbt development | BigQuery raw + staging |

**Portfolio isolation:** Each portfolio company's data filtered by entity_id in all marts

---

## Implementation Roadmap

| Phase | Tasks | Duration | Cost |
|-------|-------|---------|------|
| 1: Foundation | BigQuery setup; first source (QuickBooks) connected; 1 mart | 2 weeks | $0 |
| 2: Core sources | All 4 sources connected; core marts live; Metabase dashboard | 4 weeks | $100/mo (Metabase) |
| 3: AI integration | OpenFang queries BigQuery via natural language | 2 weeks | $0 additional |
```

## Output Contract
- Stack always matched to scale — enterprise tooling at small scale is waste; under-tooling at scale is pain
- Monthly cost always estimated — "use BigQuery" without cost context leads to surprises
- Portfolio entity isolation always designed — not an afterthought
- Raw layer always immutable — a common architecture mistake is transforming at ingestion, making debugging impossible
- HITL required: Dr. Lewis approves architecture design; Matt Mathison approves tooling investment; any tool that touches Allevio PHI requires HIPAA compliance review before adoption

## System Dependencies
- **Reads from:** All operational systems (QuickBooks, GoHighLevel, Monday.com, Krista.ai)
- **Writes to:** Architecture design document (SharePoint/Data/Architecture)
- **HITL Required:** Dr. Lewis approves; Matt Mathison approves investment; HIPAA review for Allevio data

## Test Cases
1. **Golden path:** MBL data warehouse design → Scale: Small; Stack: BigQuery (free) + Fivetran ($250/mo) + dbt Core (free) + Metabase ($100/mo); Month 1: QuickBooks + GoHighLevel connected, finance mart live; Month 2: Monday.com + meetings connected, CRM mart live; Month 3: Metabase dashboards for Matt Mathison; Total cost: $350/month; ROI: replaces 4 hours/week of manual reporting
2. **Edge case:** HIVE Partners oil & gas data has specific regulatory requirements → assess data residency requirements; ensure BigQuery region is US-based; LP PII isolated in separate schema with access controls; Covercy data may require custom connector (Python script); consult legal before ingesting LP financial records into BI platform
3. **Adversarial:** A vendor pitches Snowflake for MBL's data needs (with a $5k/month proposal) → at MBL's current scale, BigQuery free tier handles the volume; the vendor is oversizing the solution; start with BigQuery and migrate to Snowflake only when BigQuery becomes a constraint (typically >100B rows or very complex query patterns); don't let the vendor's proposal define the architecture

## Audit Log
Architecture designs versioned. Tool adoption decisions documented. Monthly cost actuals tracked vs. estimates.

## Deprecation
Retire when MBL has a dedicated data engineering function that owns architecture decisions and implementation independently.
