---
name: data-kpi-dashboard
description: "Build a KPI dashboard for the data and analytics function. Use when the user says 'data team KPIs', 'analytics team dashboard', 'data function metrics', 'how is the data team performing', 'data team scorecard', 'data operations dashboard', or 'measure data team effectiveness'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--period <weekly|monthly>]"
---

# Data KPI Dashboard

Build a KPI dashboard for the data and analytics function that tracks both data operations health and business impact of data work. Data teams are often asked "what do you do?" — a good KPI dashboard answers that with numbers. It tracks data freshness, quality, dashboard usage, and whether the data work is actually enabling better decisions. For MBL, this dashboard is Dr. Lewis's view into the health of the data infrastructure that underpins both AI products and executive reporting.

## When to Use
- Monthly data function review with Matt Mathison
- Dr. Lewis needs a snapshot of data infrastructure health
- Justifying data investment — show the ROI of data work
- Identifying which data assets are being used vs. ignored
- Tracking the health of AI product data dependencies

## KPI Categories

```
Data Operations (is the pipeline working?):
  Pipeline health: % of ETL jobs completing successfully
  Data freshness: % of dashboards with data current within SLA
  Incident rate: # of data quality incidents per month
  Mean time to resolve (MTTR): avg time from data incident to resolution

Data Quality (can we trust the data?):
  Quality score: % of data assets passing quality checks
  Error rate: # of data errors caught before reaching stakeholders
  Catalog coverage: % of data assets documented in the catalog

Business Impact (is the data creating value?):
  Dashboard usage: # of unique users per week using dashboards
  Self-serve rate: % of data questions answered without Dr. Lewis involvement
  AI data quality: HITL rejection rate linked to data quality issues
  Decisions enabled: # of documented data-driven decisions per month

Data Team Capacity:
  Query response time: avg time from data request to delivery
  Backlog: # of open data requests > 5 days old
  OKR progress: current quarter grade
```

## Output Format

```markdown
# Data KPI Dashboard — <Period>
**Prepared by:** Dr. John Lewis | **Date:** <date>
**For:** Internal (Dr. Lewis self-review) / Matt Mathison

---

## TL;DR

**Data ops health:** 🟢 / 🟡 / 🔴
**Data quality:** 🟢 / 🟡 / 🔴
**Business impact:** 🟢 / 🟡 / 🔴
**Biggest issue:** <One-line summary of top concern>
**Action required:** <Specific action or "No action needed">

---

## Data Operations

| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Pipeline success rate | <N>% | >99% | 🟢 |
| Data freshness (within SLA) | <N>% | >95% | 🟡 |
| Data incidents | <N> | <2/month | 🟢 |
| MTTR (data incidents) | <N> hours | <4 hours | 🟢 |

**Pipeline details:**
| Pipeline | Status | Last successful run | Lag | Notes |
|---------|--------|-------------------|-----|-------|
| QuickBooks → BigQuery | 🟢 | <date> | <N>h | — |
| GoHighLevel → BigQuery | 🟡 | <date> | 26h | Rate limit hit yesterday |
| Monday.com → BigQuery | 🟢 | <date> | 2h | — |
| Krista.ai → SharePoint | 🟢 | <date> | On creation | — |

---

## Data Quality

| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Overall quality score | <N>% | >85% | 🟡 |
| Fields with completeness <90% | <N> | <5 | 🟡 |
| Duplicate records detected | <N> | <1% of table | 🟢 |
| Catalog coverage | <N>% | >80% | 🟡 |

**Quality issues this period:**
| Issue | System | Severity | Status |
|-------|--------|---------|--------|
| [Issue] | GoHighLevel | Medium | Remediating |
| [Issue] | QuickBooks | Low | Scheduled for next sprint |

---

## Business Impact

| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Dashboard weekly active users | <N> | ><N> | 🟢 |
| Self-serve data requests (no Dr. Lewis) | <N>% | >60% | 🟡 |
| Data-driven decisions documented | <N> | ><N>/month | 🟢 |
| AI data quality (HITL rejection from data) | <N>% | <5% | 🟢 |

**Top dashboards by usage:**
| Dashboard | Weekly users | Primary user | Last accessed |
|-----------|------------|-------------|-------------|
| Portfolio KPI | 3 | Matt Mathison | <date> |
| Meeting Intelligence health | 2 | Dr. Lewis | <date> |

---

## Data Team Capacity

| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Open data requests >5 days | <N> | <3 | 🟡 |
| Avg time to respond to request | <N> days | <2 days | 🟢 |
| OKR progress (current quarter) | <N>/1.0 avg | >0.7 | 🟡 |

---

## Monthly Trend

| Metric | Jan | Feb | Mar | Target | Trend |
|--------|-----|-----|-----|--------|-------|
| Pipeline success rate | 97% | 98% | 99% | >99% | ↑ |
| Quality score | 78% | 82% | 85% | >85% | ↑ |
| Dashboard users | 2 | 3 | 4 | >5 | ↑ |
```

## Output Contract
- TL;DR always first — Dr. Lewis and Matt Mathison read the top section; detail is for drill-down
- Pipeline health always per-pipeline — "pipeline health: 95%" without pipeline detail doesn't tell you which one is broken
- Business impact always included — data operations metrics alone don't show whether the data is creating value
- Monthly trend always shown — a single data point is a fact; a trend is an insight
- HITL required: Dr. Lewis reviews monthly and shares with Matt Mathison; any red metrics require same-day investigation by Dr. Lewis; data incidents affecting management reporting escalated immediately

## System Dependencies
- **Reads from:** Pipeline job logs, data quality monitoring, dashboard usage analytics (Metabase), product analytics
- **Writes to:** Data KPI dashboard (SharePoint/Data); monthly report to Matt Mathison
- **HITL Required:** Dr. Lewis reviews; Matt Mathison informed monthly; red alerts same-day escalation

## Test Cases
1. **Golden path:** Monthly data KPI dashboard → Ops: pipeline success 99% (green), 1 data incident (resolved in 2h); Quality: 85% quality score (yellow — GoHighLevel missing fields), catalog 75% coverage (yellow); Impact: 4 weekly dashboard users, 55% self-serve rate (yellow), 3 documented data-driven decisions; Capacity: 2 open requests >5 days (yellow); TL;DR: data ops healthy; quality improving but GoHighLevel completeness needs attention; self-serve below target — need more dashboard training
2. **Edge case:** A pipeline fails and data is stale for 2+ days without anyone noticing → this indicates insufficient monitoring; add a freshness alert: if any pipeline hasn't run in >24 hours, automated alert to Dr. Lewis via Teams; freshness monitoring is cheaper than manual checking and prevents stale data from reaching dashboards without warning
3. **Adversarial:** Matt Mathison asks why the data team is so expensive if only 4 people use the dashboards → the right answer isn't defensive; show the value: 4 users using dashboards = Matt Mathison making portfolio allocation decisions based on real-time data instead of anecdote; 3 data-driven decisions this month; AI product is 92% accurate because of clean data; frame data investment as infrastructure, not headcount cost

## Audit Log
Monthly KPI dashboards retained. Pipeline incident log maintained. Data quality improvement trends tracked.

## Deprecation
Retire when data function has a live operational dashboard with automated alerting that doesn't require manual compilation each month.
