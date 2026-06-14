---
name: revenue-analytics-builder
description: "Build revenue analytics reports and models. Use when the user says 'revenue analytics', 'analyze revenue', 'revenue breakdown', 'ARR analysis', 'revenue waterfall', 'MRR movement', 'revenue by segment', 'understand our revenue', 'revenue composition', 'new vs expansion vs churn revenue', or 'revenue reporting'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--company <MBL|Allevio|HIVE|Column6>]"
---

# Revenue Analytics Builder

Build revenue analytics that decompose where revenue comes from, how it moves, and what drives it. Revenue is the most important metric for most businesses, but "total revenue" is the least useful form of it. Decomposed revenue analytics answer the questions that actually matter: Is growth coming from new customers or expansion? Where are we losing customers? Which product lines are growing fastest? For MBL, revenue analytics serve Matt Mathison's portfolio performance assessment.

## When to Use
- Monthly financial review — build the revenue waterfall
- ARR is growing but you don't know why — decompose it
- Churn is reported but not analyzed — add the revenue lens
- Investor or LP update — build the revenue story
- Portfolio company assessment — do they have revenue visibility?

## Revenue Analytics Framework

```
ARR Waterfall (core revenue model):
  Starting ARR
  + New ARR (new customers)
  + Expansion ARR (existing customers growing)
  - Churned ARR (customers who left)
  - Contracted ARR (customers who reduced)
  = Ending ARR

  This is the definitive view of what happened to revenue in a period

Net Revenue Retention (NRR):
  (Starting ARR + expansion - churn - contraction) / starting ARR × 100
  >100%: Growing from existing customers alone (excellent)
  <100%: Losing net revenue from existing customers (danger)

Revenue by segment:
  By entity (Allevio, HIVE, Column6, MBL services)
  By product line
  By customer type (recurring vs. project)

Revenue quality indicators:
  Concentration: Top customer % of total ARR (risk if >30%)
  Mix shift: Is recurring % growing or shrinking?
  Cohort revenue: Are newer cohorts generating more or less revenue than older ones?
```

## Output Format

```markdown
# Revenue Analytics — <Company> | <Period>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Period:** <Q / Month / Year>
**Data source:** QuickBooks — validated and reconciled

---

## ARR Waterfall

| Component | Amount | % of starting ARR |
|-----------|--------|-----------------|
| Starting ARR | $<N> | 100% |
| + New ARR | $<N> | +<N>% |
| + Expansion ARR | $<N> | +<N>% |
| - Churned ARR | ($<N>) | -<N>% |
| - Contracted ARR | ($<N>) | -<N>% |
| **= Ending ARR** | **$<N>** | |
| **Net change** | **$<N>** | **<+/->N%** |

**Net Revenue Retention:** <N>% (target: >100%)
**New ARR / Total growth:** <N>% (how much growth is coming from new customers)

---

## Revenue by Segment

| Segment | This period | Prior period | Change | % of total |
|---------|------------|-------------|--------|-----------|
| Allevio services | $<N> | $<N> | +<N>% | <N>% |
| HIVE advisory | $<N> | $<N> | +<N>% | <N>% |
| Column6 advisory | $<N> | $<N> | +<N>% | <N>% |
| MBL AI services | $<N> | $<N> | +<N>% | <N>% |
| **Total** | $<N> | $<N> | | 100% |

**Revenue concentration risk:** Top entity = <N>% of total ARR (alert if >40%)

---

## Revenue Quality

| Metric | This period | Prior period | Target | Status |
|--------|------------|-------------|--------|--------|
| Recurring % of total | <N>% | <N>% | >80% | 🟢 |
| NRR | <N>% | <N>% | >100% | 🟡 |
| Customer concentration (top 1) | <N>% | <N>% | <30% | 🟢 |
| Revenue predictability (% under contract) | <N>% | <N>% | >90% | 🟢 |

---

## Churn Analysis

| Churned entity | ARR lost | Churn reason | Avoidable? |
|---------------|---------|-------------|-----------|
| [Entity] | $<N> | [Reason] | Yes / No |

**Total churned ARR this period:** $<N>
**% of churns that were avoidable:** <N>%
**Top churn reason:** <Reason — e.g., price, competitive displacement, product gap>

---

## Revenue Trend (trailing 6 months)

| Month | New ARR | Expansion | Churn | Net change | Ending ARR |
|-------|---------|---------|-------|-----------|-----------|
| Jan | $<N> | $<N> | ($<N>) | +$<N> | $<N> |
| Feb | $<N> | $<N> | ($<N>) | +$<N> | $<N> |
[Continue...]

**Trend:** ARR growing at +<N>%/month; pace accelerating / decelerating / stable

---

## Revenue Forecast vs. Actuals

| Month | Forecast | Actual | Variance | Accuracy |
|-------|---------|--------|---------|---------|
| Jan | $<N> | $<N> | +$<N> | <N>% |
| Feb | $<N> | $<N> | -$<N> | <N>% |

**Forecast accuracy (trailing 3 months):** <N>% — model reliability assessment

---

## Key Insights + Actions

1. **[Finding]:** <Specific data observation>
   **Action:** <Specific response> | Owner: <name> | By: <date>

2. **[Finding]:** <Specific data observation>
   **Action:** <Specific response>
```

## Output Contract
- ARR waterfall always the primary view — total ARR without decomposition is insufficient for management decision-making
- NRR always calculated — it's the most important efficiency indicator for recurring revenue businesses
- Revenue concentration always flagged — >30% from one customer is a business risk
- Forecast vs. actuals always included once a model exists — revenue without accountability against forecast is not managed
- HITL required: Dr. Lewis reviews and approves revenue analytics before distribution to Matt Mathison; LP-facing revenue data (HIVE) requires legal review before distribution; any revenue anomaly investigated and verified before publication

## System Dependencies
- **Reads from:** QuickBooks (invoices, customers, products), GoHighLevel (contract records)
- **Writes to:** Revenue analytics report (SharePoint/Finance/Revenue); executive presentation slides
- **HITL Required:** Dr. Lewis approves; Matt Mathison receives; LP-facing data requires legal review

## Test Cases
1. **Golden path:** Q2 2026 MBL revenue analytics → Starting ARR $1.8M; New: +$180K; Expansion: +$90K; Churn: -$60K; Ending ARR: $2.01M; NRR: 101% (green); Concentration: Allevio 42% (yellow — just above 40% threshold); Churn: 1 client, $60K, price sensitivity, partially avoidable; Trend: +5% MoM for 3 consecutive months; Insights: (1) Allevio concentration slightly elevated — focus on diversifying revenue mix; (2) NRR barely above 100% — expansion is thin, focus on upsell
2. **Edge case:** Revenue data shows a spike in one month due to a one-time payment — should it be included in recurring ARR? → one-time payments are NOT included in ARR (ARR = annualized recurring); separate it into "one-time revenue" in the segment view; flag it clearly in the waterfall ("one-time professional services: $X excluded from ARR calculation"); the ARR metric must be pure recurring
3. **Adversarial:** Matt Mathison asks why NRR is below 100% — what does that mean practically? → NRR < 100% means the company is losing net revenue from existing customers — even before accounting for new customers; at NRR = 95%, a company with no new sales would have 5% less revenue every month; it's a signal that retention and expansion programs need strengthening; the company must acquire more and more new customers just to maintain flat revenue — that's an expensive growth model

## Audit Log
Monthly revenue analytics retained. Waterfall calculations reconciled against QuickBooks. Forecast vs. actual tracking maintained. HIPAA: no PHI in revenue analytics.

## Deprecation
Retire when MBL has a dedicated FP&A function with automated revenue analytics and a live ARR waterfall dashboard.
