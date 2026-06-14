---
name: data-lineage-mapper
description: "Map data lineage from source to report. Use when the user says 'data lineage', 'where does this data come from', 'trace this metric', 'data flow', 'how does data get from X to Y', 'data transformation trail', 'impact analysis', 'what breaks if I change this', 'upstream dependencies', or 'downstream dependencies'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--metric <name>] [--system <source>] [--direction <upstream|downstream|both>]"
---

# Data Lineage Mapper

Map data lineage from source systems to final reports and AI outputs. Data lineage answers two questions: "Where does this number come from?" (for debugging wrong data) and "What breaks if I change this table?" (for impact analysis before a migration or refactor). For MBL's AI products, lineage also covers how data flows into Claude prompts — a change in the source data can change AI outputs in ways that are hard to predict without lineage documentation.

## When to Use
- A report shows a wrong number — trace it back to the source
- Planning a database migration or source system change — what's impacted?
- New engineer or analyst joins — show them how the data flows
- Debugging an AI output quality issue — trace the data input chain
- HIPAA compliance audit — demonstrate what data flows where

## Lineage Documentation Structure

```
For each data flow, document:
  Source: Where does the raw data originate?
  Ingestion: How does it move from source to storage?
  Transformations: What changes happen to it along the way?
  Storage: Where does it live at each stage?
  Consumption: Who and what uses the final data?
  Sensitivity: Any compliance flags (PHI, LP data, PII)?
```

## Output Format

```markdown
# Data Lineage Map — <Metric or System>
**Date:** <date> | **Author:** Dr. John Lewis
**Scope:** <Specific metric / Full system / Source system>
**Direction:** Upstream (where does it come from?) / Downstream (what does it affect?)

---

## Lineage Diagram

```
[Source] → [Ingestion] → [Raw Storage] → [Transformation] → [Mart] → [Consumption]

Example — MRR metric:
  QuickBooks Invoices
    ↓ (Fivetran daily sync)
  BigQuery: raw_quickbooks.invoices
    ↓ (dbt: stg_quickbooks_invoices)
  BigQuery: stg_quickbooks.invoices (cleaned, typed)
    ↓ (dbt: marts.finance.mrr_monthly)
  BigQuery: marts.finance.mrr_monthly (one row per month per entity)
    ↓
  ├── Metabase: Portfolio KPI dashboard (Matt Mathison)
  ├── Metabase: Financial report (monthly)
  └── Claude prompt context (OpenFang: financial summary skill)
```

---

## Full Lineage Table

| Stage | System/Object | Description | Transformation | Owner |
|-------|--------------|-------------|---------------|-------|
| Source | QuickBooks Invoices | Raw invoice records | None | QuickBooks |
| Ingestion | Fivetran | Daily API pull | Schema mapping | Dr. Lewis |
| Raw | BigQuery: raw_quickbooks.invoices | Exact copy of QuickBooks invoices | None — immutable | Dr. Lewis |
| Staging | BigQuery: stg_quickbooks.invoices (dbt) | Cleaned, typed, renamed | Type casting; null handling | Dr. Lewis |
| Mart | BigQuery: marts.finance.mrr_monthly (dbt) | Monthly MRR by entity | Aggregation; ARR calculation | Dr. Lewis |
| Dashboard | Metabase: Portfolio KPI | Executive dashboard | None — reads mart | Dr. Lewis |
| Report | Excel: Monthly Financial Report | Offline analysis | Manual export | CFO |
| AI Context | OpenFang: financial summary skill | AI prompt input | Formatted as text | Dr. Lewis |

---

## Upstream Dependencies (what this data depends on)

| Dependency | Risk if it changes | Impact on MRR metric |
|-----------|-------------------|---------------------|
| QuickBooks API availability | Medium — Fivetran retries; 24h stale max | MRR stale; dashboard shows old data |
| QuickBooks invoice schema | High — field renames break staging | dbt stg model fails; dashboard shows no data |
| Entity classification field | High — entity filter in mart query | MRR broken down by entity would be wrong |

---

## Downstream Impact (what this data affects)

| Downstream system | What it uses | Impact if source data is wrong | Owner |
|-----------------|-------------|-------------------------------|-------|
| Portfolio KPI dashboard | mrr_monthly | Matt Mathison sees wrong portfolio ARR | Dr. Lewis |
| Monthly financial report | mrr_monthly | CFO sends wrong report | CFO |
| OpenFang financial summary | mrr_monthly | AI produces wrong financial summaries | Dr. Lewis |
| ARR forecast model | mrr_monthly | Forecast built on wrong baseline | Dr. Lewis |

---

## Compliance Flags

| Data element | Sensitivity | Controls | Audit requirement |
|-------------|------------|---------|-----------------|
| Invoice amounts | Financial | Finance team access only | Monthly reconciliation |
| Customer names in invoices | Standard PII | Standard access control | Annual data review |
| Entity breakdown | Business sensitive | MBL internal only | None specific |

---

## Change Impact Analysis

**If [QuickBooks invoice schema] changes:**
| Affected system | Break type | Severity | Action needed |
|----------------|-----------|---------|--------------|
| Fivetran ingestion | Schema drift | High — will error | Update Fivetran schema mapping |
| dbt stg_quickbooks | Column reference | High — model fails | Update dbt model |
| marts.finance.mrr_monthly | Upstream dependency | High — data missing | Validate after staging fix |
| Metabase dashboard | Data unavailable | High — Matt sees error | Notify before making change |

**Migration checklist for this change:**
- [ ] Update Fivetran schema mapping
- [ ] Test dbt staging model in dev environment
- [ ] Run full mart refresh in staging
- [ ] Validate MRR numbers against QuickBooks manual check
- [ ] Deploy to production during low-usage window
- [ ] Monitor dashboard for 24h post-deploy
```

## Output Contract
- Full lineage chain always documented end-to-end — partial lineage misses the most important downstream consumers
- Downstream impact always listed — this is the impact analysis that prevents breaking changes
- Compliance flags always documented — HIPAA and LP data sensitivity must be visible in the lineage map
- Change impact checklist always included when documenting a breaking upstream change
- HITL required: Dr. Lewis reviews lineage maps; any change to a data source or transformation that affects financial reporting requires Dr. Lewis and CFO review; HIPAA data lineage changes require Allevio privacy officer review

## System Dependencies
- **Reads from:** All data systems (QuickBooks, GoHighLevel, Monday.com, Krista.ai, BigQuery, dbt), HIPAA documentation
- **Writes to:** Data lineage documentation (SharePoint/Data/Lineage)
- **HITL Required:** Dr. Lewis reviews; financial data changes require CFO review; HIPAA changes require Allevio privacy officer

## Test Cases
1. **Golden path:** MRR metric lineage → Source: QuickBooks invoices; Ingestion: Fivetran daily; Raw: BigQuery raw_quickbooks.invoices; Staging: stg_quickbooks.invoices (dbt); Mart: marts.finance.mrr_monthly (dbt); Consumption: Metabase dashboard (Matt Mathison), monthly financial report (CFO), OpenFang financial summary (AI prompt); Downstream impact: if QuickBooks API changes, Fivetran + staging + mart + all downstream consumers break; change checklist: 6 steps before deploying any QuickBooks schema change
2. **Edge case:** An AI output is wrong — how do we trace it? → trace backward from the AI output: what prompt was used? what data was in the context? where did that context data come from? which transformation produced it? what was in the raw data? this lineage trace often reveals either a data quality issue (wrong data in source) or a transformation bug (data was correct but transformation changed it)
3. **Adversarial:** Team makes a source system change without checking lineage first → this is a common cause of data outages; establish a rule: any change to a source system API, schema, or data model requires a lineage review before deployment; create a lineage-impact checklist that is mandatory before any source system change; the goal is to prevent surprise breakages, not to block changes

## Audit Log
Lineage maps versioned. Change impact analyses retained per migration. HIPAA lineage documentation maintained separately per HIPAA requirements.

## Deprecation
Retire when MBL adopts a data cataloging tool with automated lineage tracking (dbt's built-in lineage, Atlan, or similar) that tracks lineage from source to consumption automatically.
