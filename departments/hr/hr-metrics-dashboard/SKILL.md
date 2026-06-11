---
name: hr-metrics-dashboard
description: "Generate an HR metrics dashboard with key people analytics. Use when the user says 'HR metrics', 'people analytics', 'HR dashboard', 'HR KPIs', 'workforce metrics', 'HR report', 'people data', or 'what are our HR numbers'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name|all>] [--period <monthly|quarterly|annual>] [--audience <executive|hr|operations>]"
---

# HR Metrics Dashboard

Generate a structured HR metrics dashboard for executive reporting or HR management review. People are the largest cost in most organizations — measuring them with the same rigor as financial metrics is non-negotiable.

## When to Use
- Monthly HR reporting to Dr. Lewis or Matt Mathison
- Quarterly people analytics for executive team
- Annual workforce review for strategic planning
- Board-level people reporting (LP or board deck)
- Post-acquisition people baseline (what are we inheriting?)

## Core HR Metrics Library

### Workforce Metrics
| Metric | Formula | Target |
|--------|---------|--------|
| Total headcount | Count of active employees | vs. Plan |
| FTE | FTE + (PT hours/40) | vs. Plan |
| HC growth rate | (End HC – Start HC) / Start HC × 100 | vs. Plan |
| Contractor ratio | Contractors / Total workforce × 100 | Flag if > 20% |

### Recruiting Metrics
| Metric | Formula | Benchmark |
|--------|---------|-----------|
| Time to fill | Days from req open to offer accepted | 30-45 days |
| Time to hire | Days from application to offer accepted | 14-30 days |
| Offer acceptance rate | Offers accepted / Offers extended | ≥ 85% |
| Cost per hire | Total recruiting spend / Total hires | Varies by role |
| Pipeline conversion | Applicants → Phone screen → Interview → Offer | By stage |

### Retention Metrics
| Metric | Formula | Benchmark |
|--------|---------|-----------|
| Voluntary turnover | Voluntary exits / Avg HC × 100 | < 10-15% annually |
| Regrettable turnover | Regrettable exits / Avg HC × 100 | < 5% annually |
| Retention rate | (HC end – exits) / HC start × 100 | > 85-90% |
| Average tenure | Total months employed / Count | Increasing trend preferred |
| New hire turnover (< 90 days) | < 90-day exits / Total new hires × 100 | < 5% |

### Engagement Metrics
| Metric | Formula | Benchmark |
|--------|---------|-----------|
| eNPS | % Promoters – % Detractors | > 0; > 30 is strong |
| Survey response rate | Responses / Distributed × 100 | ≥ 70% |
| Engagement score | From survey instrument | Entity-specific trend |

### Compensation and Cost
| Metric | Formula |
|--------|---------|
| Avg base salary | Total base payroll / HC |
| Fully-loaded cost per head | Total compensation + benefits / HC |
| Revenue per FTE | Revenue / FTE |
| Payroll as % of revenue | Total payroll / Revenue × 100 |
| Overtime rate | OT hours / Total hours × 100 |

## Output Format

```markdown
# HR Metrics Dashboard — <Entity>
**Period:** <period> | **Date:** <date> | **Audience:** <audience>

## Workforce Summary

| Metric | Current | Prior Period | vs. Plan | Trend |
|--------|---------|------------|---------|-------|
| Total HC | <N> | <N> | <+/-N> | ⬆️ |
| FTE | <N> | <N> | <+/-N> | |
| Open Reqs | <N> | <N> | — | |
| Contractors | <N> | <N> | — | |

## Recruiting

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Time to fill | <N> days | 30-45 days | 🟢 On target |
| Offer acceptance rate | X% | ≥ 85% | 🟡 Slightly below |
| Open reqs active > 60 days | <N> | 0 | 🔴 Action needed |

## Retention

| Metric | Current Period | YTD | Annual Rate | Flag |
|--------|--------------|-----|------------|------|
| Voluntary turnover | <N> exits | <N> | X% ann'd | — |
| Regrettable turnover | <N> exits | <N> | X% ann'd | ⚠️ > 3% |
| New hire < 90-day exits | <N> | <N> | X% | |

## Engagement
**eNPS:** <score> | **Survey response:** X% | **Last survey:** <date>

## Cost
**Avg fully-loaded cost/head:** $<N> | **Payroll as % of revenue:** X%

## Action Items
1. <Metric that's off-target → specific action, owner, deadline>
```

## Output Contract
- Every metric has a comparison period and a target or benchmark
- Metrics that are off-target always have a named action item
- Contractor count always reported separately — hidden contractors distort people data
- HITL required before any people metrics are included in board or LP reporting

## System Dependencies
- **Reads from:** HRIS, payroll, recruiting data (provided or from `headcount-tracker`, `turnover-analysis`, `recruiting-pipeline-tracker`)
- **Writes to:** Nothing (dashboard for HITL review)
- **HITL Required:** HR lead and Finance verify before executive distribution

## Test Cases
1. **Golden path:** Monthly HR dashboard for MBL → 15 metrics across 4 categories, 2 off-target items with actions, executive-ready format
2. **Edge case:** Entity with no formal recruiting metrics (no ATS) → presents available data, flags gaps, recommends minimum tracking setup
3. **Adversarial:** Request to exclude turnover data that looks bad from the executive report → refuses, includes all metrics with accurate data; recommends providing context and action plan alongside the unfavorable numbers

## Audit Log
Monthly HR dashboards retained by entity and period for trend analysis.

## Deprecation
Retire when HRIS and analytics platform (Workday, Rippling, Lattice) provides real-time people analytics dashboards with automated reporting.
