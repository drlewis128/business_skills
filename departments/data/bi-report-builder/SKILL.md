---
name: bi-report-builder
description: "Build business intelligence reports and dashboards. Use when the user says 'build a report', 'create a dashboard', 'BI report', 'business intelligence', 'build me a dashboard', 'executive report', 'weekly report', 'financial report', 'operational report', 'analytics report', or 'data visualization'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--report-type <executive|operational|financial|product>] [--audience <matt|team|portfolio-lead>] [--cadence <weekly|monthly|quarterly>]"
---

# BI Report Builder

Design and build business intelligence reports that drive decisions. A good BI report answers a specific question, for a specific audience, at the right cadence. Bad reports try to show everything — they end up showing nothing, because no one reads them. For MBL, BI reports primarily serve Matt Mathison (portfolio performance) and portfolio company operational leads (their business metrics). The standard is: Matt gets his answers in under 2 minutes of reading.

## When to Use
- Building a new executive dashboard or report
- An existing report isn't being used — redesign it to be useful
- New metric added to the portfolio review — add it to the right report
- Portfolio company needs a standard operating report
- Preparing for a board meeting — assemble the right data package

## Report Design Principles

```
1. Audience first: Who reads this? What decision does it enable?
   Matt Mathison: portfolio performance, investment decisions, team priorities
   Portfolio company CEO: their operational metrics, team performance
   Dr. Lewis: technical operations, AI product health, engineering metrics

2. One question per report: What is this report trying to answer?
   "How is the portfolio performing this month?" — yes
   "Everything about MBL, Allevio, HIVE, and Column6" — no

3. BLUF format: Bottom line first, detail below
   Header: 3 numbers / traffic lights that tell the story in 5 seconds
   Body: supporting context and drill-down
   Appendix: raw data for people who want it

4. Signal over noise: Every element earns its place
   If removing a chart doesn't lose information, remove it
   If you can't describe what decision a number enables, cut it

5. Comparison is understanding: Always compare to something
   vs. target / vs. last period / vs. benchmark
   A number without context is a fact; a number with comparison is an insight
```

## Report Types for MBL

```
Portfolio Performance Report (monthly, for Matt Mathison):
  - Portfolio company health scores
  - Revenue/ARR by entity
  - AI project progress
  - Key risks

Company Operational Report (weekly/monthly, for portfolio company CEO):
  - Core operating KPIs (industry-specific)
  - Sprint/project status
  - Team performance
  - Customer health

Product Analytics Report (weekly, for Dr. Lewis):
  - North Star metric
  - AARRR funnel
  - AI product health (HITL rate, quality score, API cost)

Financial Report (monthly, for Matt Mathison + CFO):
  - P&L vs. budget
  - Cash position
  - Receivables aging
  - LP distribution schedule (HIVE)
```

## Output Format

```markdown
# BI Report Design — <Report Name>
**Date:** <date> | **Designer:** Dr. John Lewis
**Audience:** <name/role> | **Cadence:** Weekly / Monthly / Quarterly
**Question answered:** "<The specific question this report answers>"

---

## Report Layout

### Header (5-second scan)

| KPI | This period | vs. Last period | vs. Target | Status |
|-----|------------|----------------|-----------|--------|
| [NSM] | <value> | +<N>% | On target | 🟢 |
| [Revenue] | $<N> | +<N>% | On target | 🟢 |
| [Key risk indicator] | <value> | — | Alert | 🔴 |

**In plain English:** <1-2 sentences describing what this header is saying>

---

### Body (primary metrics)

**Section 1: <Topic>**

[Chart or table description — what the data shows, what it means]

| Metric | Value | Trend | Context |
|--------|-------|-------|---------|
| <Metric> | <N> | ↑ 12% | Above target for 3 consecutive months |
| <Metric> | <N> | ↓ 8% | First decline since Q1; investigate |

**Insight:** <What this data is telling us — specific, not generic>
**Action required:** <If any>

---

**Section 2: <Topic>**
[Same format]

---

### Appendix (raw data)

*Available on request / linked to data source*

---

## Delivery Format

| Channel | Timing | Format | Recipient |
|---------|--------|--------|---------|
| Email | Monday 8am | PDF + Excel | Matt Mathison |
| Teams message | Monday 8am | Link to live dashboard | Dr. Lewis |
| Monthly review meeting | 1st Monday of month | Slide deck | Matt Mathison + portfolio leads |

---

## Data Sources

| Section | Source | Refresh cadence | Owner |
|---------|--------|----------------|-------|
| Revenue | QuickBooks | Daily | Dr. Lewis |
| CRM pipeline | GoHighLevel | Real-time | Dr. Lewis |
| Project status | Monday.com | Real-time | Dr. Lewis |
| AI health | Product analytics + Claude API dashboard | Daily | Dr. Lewis |

---

## Report Maintenance

**Owner:** Dr. Lewis (builder and maintainer)
**Review cadence:** Quarterly — is this report still being used and useful?
**Metric change process:** Any metric change requires Dr. Lewis approval + 1-week notice to recipients
```

## Output Contract
- Audience always named — "general audience" is not an audience
- "Question answered" always stated — a report without a question doesn't have a purpose
- BLUF header always present — Matt Mathison reads the top 3 rows, not the appendix
- Insights always included — data without interpretation requires the reader to do analysis; do it for them
- HITL required: Dr. Lewis reviews and approves all reports before first distribution; report design changes require Dr. Lewis approval; reports going to Matt Mathison reviewed by Dr. Lewis day-of

## System Dependencies
- **Reads from:** QuickBooks, GoHighLevel, Monday.com, Claude API dashboard, product analytics
- **Writes to:** Reports (email via Outlook / SharePoint / PDF); dashboard (Metabase or Looker Studio)
- **HITL Required:** Dr. Lewis reviews before distribution; report content changes require Dr. Lewis approval

## Test Cases
1. **Golden path:** Weekly portfolio performance report for Matt Mathison → Header: 3 KPIs (portfolio ARR: $X, AI projects on track: 3/4, key risk: HIVE cash timing); Body: section 1 (Allevio RCM metrics), section 2 (MBL AI project status), section 3 (HIVE pipeline); Delivery: Monday 8am email + Teams; data sources: QuickBooks + Monday.com + Krista.ai; reading time: < 3 minutes for Matt
2. **Edge case:** A metric needs to change in a live report (definition changes, system migration) → announce the change 1 week before; note the change in the report header for 2 months ("Note: metric definition changed on [date]"); provide bridging comparison if possible; history before the change must be labeled as using the old definition
3. **Adversarial:** Stakeholder asks for a report with 40 metrics because "they want to see everything" → say no; a 40-metric report is not a report — it's a data dump; the purpose of a report is to answer a question; identify the question, then select the minimum metrics that answer it; if they "need everything," they need a self-serve analytics tool, not a report

## Audit Log
Report designs and changes retained. Distribution logs (who received what, when) maintained. Quarterly usage review (is this report being used?) documented.

## Deprecation
Retire when a self-serve analytics platform (Metabase, Looker) is live and stakeholders can build their own reports without this skill scaffold.
