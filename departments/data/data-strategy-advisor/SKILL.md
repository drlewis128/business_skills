---
name: data-strategy-advisor
description: "Advise on data strategy for MBL and portfolio companies. Use when the user says 'data strategy', 'how should we think about our data', 'data roadmap', 'data as an asset', 'what data should we collect', 'data infrastructure strategy', 'build our data capability', 'data maturity', or 'data vision'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--company <MBL|Allevio|HIVE|Column6>] [--maturity <ad-hoc|managed|optimizing>]"
---

# Data Strategy Advisor

Build a data strategy that turns raw data into a durable business advantage. Data strategy is not about tools — it's about deciding what data matters, how to collect it reliably, how to govern it, and how to convert it into decisions that create value. For MBL's portfolio, data strategy is a competitive lever: portfolio companies with better data make better decisions faster. For MBL itself, data across portfolio companies reveals patterns that individual companies can't see alone.

## When to Use
- Starting to think seriously about data at a company that's been ad hoc
- Evaluating a portfolio company's data maturity
- Before investing in a data warehouse or BI platform
- Building an AI product (data is the foundation of AI quality)
- Presenting a data roadmap to Matt Mathison or a portfolio company board

## Data Maturity Model

```
Level 1 — Ad Hoc (data chaos)
  Data lives in spreadsheets, emails, and people's heads
  Reports are built one-off for each meeting
  No single source of truth; same metric can have 5 different numbers
  Analytics burden falls on the person who knows Excel best

Level 2 — Managed (data infrastructure exists)
  A data warehouse or database exists
  Basic dashboards for key metrics
  Data team or data-literate operator owns the infrastructure
  Still mostly backward-looking; reactive reporting

Level 3 — Optimizing (data-driven decisions)
  Self-serve analytics; anyone can answer their own questions
  Predictive models inform decisions before they're made
  Data quality is actively monitored; issues caught proactively
  AI/ML built on top of a reliable data foundation
  Data is a competitive moat

For MBL portfolio, target Level 2 within 12 months of engagement, Level 3 within 24 months.
```

## Data Strategy Components

```
1. Data inventory: What data do we have? Where does it live? Who owns it?
2. Data collection: What should we be collecting that we're not?
3. Data architecture: Where does data land, flow, and get served?
4. Data governance: Who owns data quality? Who can access what?
5. Data usage: Who are the consumers? What decisions does data enable?
6. Data team: Who is responsible? Hired, contracted, or tool-enabled?
7. Data roadmap: What do we build and when?
```

## Output Format

```markdown
# Data Strategy — <Company>
**Date:** <date> | **Author:** Dr. John Lewis
**Current maturity:** Level <N> (Ad Hoc / Managed / Optimizing)
**Target maturity:** Level <N> by <date>

---

## Executive Summary (BLUF)

**Current state:** <2-3 sentences on data maturity>
**Biggest gap:** <the single most important thing missing>
**Top recommendation:** <the highest-leverage action>
**Investment required:** <rough estimate — people + tools>

---

## Data Inventory

| Data source | What it contains | Where it lives | Quality | Business value |
|------------|----------------|--------------|---------|---------------|
| GoHighLevel CRM | Contacts, deals, pipeline | GoHighLevel | Medium | High |
| QuickBooks | P&L, invoices, expenses | QuickBooks Online | High | High |
| Monday.com | Projects, tasks, sprint data | Monday.com | Medium | Medium |
| Meetings (Krista.ai) | Transcripts, summaries | SharePoint | Medium | High |
| [Other] | <description> | <location> | <quality> | <value> |

**Data gaps (missing and needed):**
- [Data type we should be collecting but aren't]
- [Metric we want to measure but have no data for]

---

## Data Architecture Recommendation

```
[Data Sources] → [Ingestion] → [Storage] → [Transformation] → [Serving]

Recommended for MBL at current maturity:
  Sources: QuickBooks, GoHighLevel, Monday.com, Krista.ai, Microsoft
  Ingestion: API connectors (Fivetran / custom scripts for small scale)
  Storage: PostgreSQL or BigQuery (cloud; small scale for MBL = BigQuery ~$0)
  Transformation: dbt (SQL-based; matches team's SQL literacy)
  Serving: Looker Studio (free) or Metabase (affordable) for dashboards
```

**Build vs. Buy for each layer:**
| Layer | Recommendation | Rationale |
|-------|--------------|---------|
| Ingestion | Buy (Fivetran or Stitch) | Commodity; maintenance cost too high to build |
| Storage | Buy (BigQuery or Postgres) | Not a differentiator |
| Transformation | Buy/Open (dbt) | Standard; strong community |
| Serving | Buy (Metabase or Looker Studio) | Dashboards are commodity |
| AI/ML | Build on top (OpenFang + Claude) | This IS the differentiator |

---

## Data Governance Framework (summary)

**Data owner:** Dr. Lewis (interim); dedicated data hire when volume justifies
**Access control:** Role-based per entity (MBL, Allevio, HIVE, Column6 isolated)
**Data quality:** Automated checks at ingestion + weekly manual review
**HIPAA:** Allevio data — encrypted, access-logged, PHI never in BI tools without de-identification
**Retention:** Per data-retention-policy-builder framework

---

## Data Roadmap

| Phase | Focus | Target | Investment |
|-------|-------|--------|-----------|
| Phase 1 (0-3 mo) | Data inventory + single source of truth for KPIs | KPI dashboard live | <N hours engineering |
| Phase 2 (3-6 mo) | Self-serve analytics; team can answer their own questions | 3 dashboards; Metabase or Looker Studio live | <tool cost> |
| Phase 3 (6-12 mo) | Predictive models; AI on top of reliable data foundation | 1 forecast model; 1 AI-enhanced insight | <tool + time> |

---

## Quick Wins (do in next 30 days)

1. [Specific, immediate action] — <value> — <effort>
2. [Specific, immediate action] — <value> — <effort>
3. [Specific, immediate action] — <value> — <effort>
```

## Output Contract
- Maturity assessment always stated — "do data better" without a baseline is not strategy
- Architecture recommendation always matches current maturity — don't recommend a Snowflake data lake to a Level 1 company
- HIPAA noted for Allevio — any data strategy involving Allevio must address PHI separation
- Quick wins always included — a 12-month roadmap without a 30-day win loses momentum
- HITL required: Dr. Lewis approves data strategy; Matt Mathison aligned on investment before any tooling purchase; portfolio company data strategy requires portfolio lead sign-off

## System Dependencies
- **Reads from:** Existing data systems inventory, QuickBooks data, GoHighLevel data, Monday.com, SharePoint
- **Writes to:** Data strategy document (SharePoint/Strategy); data roadmap
- **HITL Required:** Dr. Lewis approves; Matt Mathison approves investment; portfolio company lead sign-off for their entity

## Test Cases
1. **Golden path:** MBL data strategy → Maturity: Level 1 (ad hoc); biggest gap: no single source of truth for portfolio KPIs; architecture: BigQuery (free tier) + Metabase ($500/mo) + dbt (open source); roadmap: Phase 1 — consolidate KPIs into BigQuery in 60 days; Phase 2 — 3 dashboards for Matt Mathison by Q3; Phase 3 — Meeting Intelligence analytics integration by Q4; investment: 40 engineer hours + $500/mo tooling
2. **Edge case:** Portfolio company is already on Level 2 with a data team → strategy shifts to Level 3 roadmap; focus on self-serve analytics and predictive modeling; assess their current tooling quality rather than recommending the same stack; portfolio company with a data team is ahead of the MBL median
3. **Adversarial:** Matt Mathison wants to buy an enterprise data platform (Snowflake + Tableau) → right tool for the wrong maturity; MBL at Level 1 will not get value from enterprise tools; $10k/month in tooling doesn't fix the absence of data culture and processes; start with BigQuery + Metabase (total: $500/month); graduate to enterprise tools when the team runs out of headroom; typical threshold: >10 data users, >100 daily queries

## Audit Log
Data strategy documents retained per company. Architecture decisions documented. Roadmap progress tracked quarterly.

## Deprecation
Retire when each portfolio company has a dedicated data team with an established strategy and roadmap of their own.
