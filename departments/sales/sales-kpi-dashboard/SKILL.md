---
name: sales-kpi-dashboard
description: "Generate a sales KPI dashboard with key performance metrics. Use when the user says 'sales KPIs', 'sales dashboard', 'sales metrics', 'sales performance', 'sales report', 'revenue metrics', 'team performance metrics', or 'how is sales doing'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <monthly|quarterly>] [--view <team|individual|executive>]"
---

# Sales KPI Dashboard

Generate a structured sales performance dashboard with leading and lagging indicators. Revenue is a lagging indicator — by the time you see it, it's too late to change it. This dashboard surfaces both early warning signals and final results.

## When to Use
- Monthly sales review for Matt Mathison
- Weekly sales leadership review
- Quarterly board or LP update (revenue section)
- When quota attainment is off track (diagnose early)
- Annual planning (set KPI targets for next year)

## Sales Metrics Library

### Lagging Indicators (Results)
| Metric | Formula | Target |
|--------|---------|--------|
| Revenue closed | Sum of closed-won deals | vs. quota |
| Quota attainment | Revenue / Quota × 100 | ≥ 100% |
| Average deal size | Total revenue / # of deals | Increasing trend |
| Win rate | Closed-won / Total opportunities × 100 | > 25-30% (varies) |
| # of new logos | Count of new customer accounts | vs. plan |

### Leading Indicators (Inputs — These Predict Future Results)
| Metric | Formula | Why It Matters |
|--------|---------|---------------|
| Pipeline coverage | Weighted pipeline / Remaining quota | < 3x = risk |
| Outbound activity | Emails/calls/meetings per rep per week | Low activity = low pipeline |
| Pipeline additions | New deals entering pipeline per week | Predicts future coverage |
| Stage conversion rates | % advancing from each stage | Diagnoses process gaps |
| Time to first meeting | Days from lead to first meeting | Speed of rep response |

### Efficiency Metrics
| Metric | Formula | Benchmark |
|--------|---------|-----------|
| Sales cycle length | Avg days from Stage 1 to Close | Shorter = better |
| Cost of customer acquisition (CAC) | Sales + Marketing spend / New customers | Track trend |
| Revenue per rep | Total revenue / # of active reps | Increasing trend |
| Pipeline created per rep | New pipeline $ / # of reps | vs. plan |

## Output Format

```markdown
# Sales KPI Dashboard — <Entity>
**Period:** <period> | **Date:** <date>

## Top-Line Performance

| Metric | Target | Actual | Attainment | Trend |
|--------|--------|--------|-----------|-------|
| Revenue closed | $<N> | $<N> | X% | ⬆️ |
| Quota attainment | 100% | X% | | |
| New logos | <N> | <N> | X% | |
| Avg deal size | $<N> | $<N> | | |

## Leading Indicators — Pipeline Health

| Metric | Target | Current | Status |
|--------|--------|---------|--------|
| Pipeline coverage | ≥ 3x | <N>x | 🟢 / 🟡 / 🔴 |
| New pipeline added this period | $<N> | $<N> | |
| Outbound meetings booked | <N>/week | <N>/week | |

## Stage Conversion Funnel

| Stage | In | Out | Conversion | vs. Target |
|-------|----|----|-----------|----------|
| Discovery → Demo | <N> | <N> | X% | On target |
| Demo → Proposal | <N> | <N> | X% | Below target |
| Proposal → Close | <N> | <N> | X% | |

## Rep Performance Summary

| Rep | Quota | Closed | Attainment | Pipeline | Activity Score |
|-----|-------|--------|-----------|---------|----------------|
| <Name> | $<N> | $<N> | X% | $<N> | High |
| <Name> | $<N> | $<N> | X% | $<N> | Low ⚠️ |

## Alerts and Actions

🔴 **Pipeline coverage at <N>x** — Below 3x minimum. Need $<N> in new pipeline by <date>.
⚠️ **Demo → Proposal conversion at X%** — Below target. Review demo quality and proposal timing.
✅ **Win rate at X%** — Above target for the period.

## Forecast vs. Actual (If Period Complete)
**Forecasted:** $<N> | **Actual:** $<N> | **Accuracy:** <+/- X>%
```

## Output Contract
- Leading AND lagging indicators always shown — revenue alone is not enough
- Rep-level data always included — team averages hide individual rep issues
- Alerts always specific with recommended actions — not just flags
- HITL required before rep-level performance data is shared outside the sales management team

## System Dependencies
- **Reads from:** CRM pipeline data, closed deal data, activity logs (provided or from `sales-pipeline-tracker`)
- **Writes to:** Nothing (dashboard for HITL review)
- **HITL Required:** Dr. Lewis reviews before executive/board distribution; rep-level data shared only within sales management

## Test Cases
1. **Golden path:** Monthly sales review → 5 lagging metrics, 4 leading indicators, stage funnel, 3 reps, 2 alert flags with actions
2. **Edge case:** No CRM data available → structured framework with placeholders and recommendation to establish tracking before next period
3. **Adversarial:** Request to exclude a rep's underperformance from the dashboard → refuses, surfaces all rep data, recommends addressing underperformance through coaching rather than data omission

## Audit Log
Monthly dashboards retained by entity and period. Rep attainment records used for comp calculation and performance review.

## Deprecation
Retire when CRM provides real-time sales analytics dashboard with automated leading/lagging indicator tracking.
