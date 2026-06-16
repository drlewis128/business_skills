---
name: hr-metrics-dashboard
description: "Build and report HR function KPIs and metrics. Use when the user says 'HR metrics', 'HR KPIs', 'HR dashboard', 'people metrics', 'HR analytics', 'turnover rate', 'time to hire', 'cost per hire', 'headcount report', 'HR data', 'employee metrics', 'HR scorecard', 'people data', 'workforce analytics', 'retention rate', 'absenteeism rate', or 'HR reporting'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly|annual>] [--format <dashboard|report|brief>]"
---

# HR Metrics Dashboard

Build and report HR function KPIs at MBL portfolio companies — the data that tells you whether the HR function is working, not just busy. HR metrics serve two purposes: measuring the health of the workforce (are we retaining the right people, hiring efficiently, paying competitively?) and measuring the effectiveness of the HR function itself (are our processes working?). At portfolio scale, a handful of the right metrics tracked consistently is more valuable than a comprehensive analytics system that no one reads.

## When to Use
- Quarterly HR report for Matt Mathison or a portfolio company CEO
- Annual HR review requiring data-backed assessment of workforce health
- A specific HR problem is suspected (high turnover, slow hiring) and data is needed to confirm and quantify
- Comparing HR performance across portfolio companies
- Setting baselines before launching a new HR initiative

## HR Metrics Framework

```
Core HR metrics — track for every portfolio company:

WORKFORCE HEALTH:
  Total headcount: total employees (FT + PT); trending
  Voluntary turnover rate: (voluntary departures / average headcount) × 100
    — Target: <15% (industry varies; <10% is excellent; >25% is a warning)
    — Why voluntary specifically: voluntary turnover is often controllable; involuntary is intentional
  Regrettable turnover rate: (high-performer departures / average headcount) × 100
    — More meaningful than total turnover; losing your best people is a crisis even at low overall rate
  Retention rate: 100% - turnover rate
  Tenure distribution: % employees with <1 yr, 1-3 yrs, 3-5 yrs, 5+ yrs

RECRUITING EFFICIENCY:
  Time to fill (days): date req opened → offer accepted
    — Target: <45 days for most roles; <30 days for junior roles; <60 days for senior
  Time to hire (days): date candidate applied → offer accepted
  Cost per hire: (total recruiting costs) / (number of hires in period)
    — Target: $3,000-$6,000 for most roles at portfolio scale
  Offer acceptance rate: (offers accepted / offers extended) × 100
    — Target: >80%; <70% = compensation or process problem
  Source of hire: % from referrals / job boards / LinkedIn / other

PERFORMANCE AND DEVELOPMENT:
  % employees with current performance review: (reviews completed / total) × 100
  % employees on PIPs: (active PIPs / total) × 100
  Internal promotion rate: (internal promotions / total positions filled) × 100
  Training completion rate: (completions / enrolled) × 100 for mandatory training

COMPENSATION:
  Payroll as % of revenue: (total payroll cost) / (revenue) × 100
  Average salary vs. market midpoint: (average actual salary) / (market 50th percentile)
  Benefit cost per employee: (total benefits cost) / headcount

HR FUNCTION EFFICIENCY:
  HR ratio: (Dr. Lewis HR hours) / (total employees)
  Payroll error rate: (corrections made / total payroll runs) × 100
  I-9 compliance rate: (compliant I-9s / total current employees) × 100
  Open req aging: number of reqs open >60 days
```

## Output Format

```markdown
# HR Metrics Dashboard — <Company Name>
**Period:** [Q[N] YYYY / Annual YYYY] | **Date:** [Date]
**Total headcount:** [N] FT + [N] PT = [N] total
**Prepared by:** Dr. John Lewis | **For:** [CEO / Matt Mathison]

---

## TL;DR — Workforce Health Signal

🟢 / 🟡 / 🔴 **Overall: [Green / Caution / Alert]**

| Signal | Status | Value vs. Target |
|--------|--------|-----------------|
| Voluntary turnover | 🟢 / 🟡 / 🔴 | [X%] vs. <15% |
| Regrettable turnover | 🟢 / 🟡 / 🔴 | [N] people |
| Time to fill | 🟢 / 🟡 / 🔴 | [N days] vs. <45 |
| Offer acceptance | 🟢 / 🟡 / 🔴 | [X%] vs. >80% |

**What this data tells us:** [2-3 sentence narrative — what the numbers signal about the workforce]

---

## Workforce Health

| Metric | This period | Prior period | Target | Trend |
|--------|------------|-------------|--------|-------|
| Total headcount | [N] | [N] | [N] | ↑ / → / ↓ |
| Voluntary turnover rate | [X%] | [X%] | <15% | |
| Regrettable turnover | [N] employees | [N] | 0 | |
| Retention rate | [X%] | | >85% | |
| Average tenure | [X.X yrs] | | | |

**Turnover by department:**
| Dept | Voluntary exits | Regrettable | Notes |
|------|----------------|------------|-------|
| [Dept] | [N] | [N] | |

---

## Recruiting

| Metric | This period | Target | Trend |
|--------|------------|--------|-------|
| Open requisitions | [N] | | |
| Hires completed | [N] | [N per plan] | |
| Time to fill (avg) | [N days] | <45 days | |
| Cost per hire (avg) | $[X] | <$5,000 | |
| Offer acceptance rate | [X%] | >80% | |
| Top source of hire | [Referral / LinkedIn] | Referral | |

**Reqs open >60 days:** [N] — [Role names — flag as at-risk]

---

## Performance and Development

| Metric | Status | Target |
|--------|--------|--------|
| Employees with current review | [X%] | 100% |
| Active PIPs | [N] ([X%]) | <5% |
| Internal promotion rate | [X%] | >30% |
| Mandatory training completion | [X%] | 100% |

---

## Compensation

| Metric | Value | Benchmark |
|--------|-------|-----------|
| Payroll as % of revenue | [X%] | [Industry: X-X%] |
| Average salary vs. 50th pct | [X%] | 100-110% |
| Benefit cost per employee/mo | $[X] | |
| Fully-loaded employer cost (annualized) | $[X]M | |

---

## HR Function Efficiency

| Metric | Value | Benchmark |
|--------|-------|-----------|
| I-9 compliance rate | [X%] | 100% |
| Payroll error rate | [X%] | <1% |
| ER cases opened this period | [N] | |
| ER cases resolved | [N] | |

---

## Actions

| Priority | Action | Owner | By |
|---------|--------|-------|--|
| 1 | [Metric-driven action] | [Owner] | [Date] |
| 2 | | | |

---

## Matt Mathison Brief (3 sentences)

HR at [Company] for [Q/Year]: [Headline — biggest strength or concern]. [Metric that matters most and what it signals]. [Action underway / no action required].
```

## Output Contract
- Data is actual, not estimated — metrics are pulled from payroll system, HR records, and recruiting log; if a metric cannot be calculated from available data, it's flagged as "data not available — establish baseline this quarter" rather than estimated; fabricated metrics undermine trust in the entire report
- Regrettable turnover is always separated from total — losing an underperformer who quit is not equivalent to losing a top performer; regrettable turnover is tracked by name and role; a company with 10% overall turnover but 3 of its 5 best people leaving is in crisis the overall rate obscures
- Trend always matters more than snapshot — every metric is shown vs. prior period with a trend indicator; Matt Mathison's brief surfaces the trend direction, not just the current value
- Matt Mathison gets 3 sentences — the dashboard is for Dr. Lewis and the CEO; the brief is for Matt Mathison; honest if turnover is bad: say so; no sugarcoating
- HITL required: Dr. Lewis compiles all metrics; CEO reviews before Matt Mathison report; significant adverse changes (>25% increase in turnover, multiple regrettable departures) trigger immediate Matt Mathison notification

## System Dependencies
- **Reads from:** Payroll system (headcount, compensation), recruiting log or ATS (time to fill, acceptance rates), HR file (tenure, reviews, PIPs), I-9 binder, ER case log
- **Writes to:** HR metrics dashboard (SharePoint/HR/<Company>/People Analytics/); Matt Mathison brief; quarterly HR report
- **HITL Required:** Dr. Lewis compiles; CEO reviews; Matt Mathison receives quarterly; adverse metric changes trigger immediate notification

## Test Cases
1. **Golden path:** Allevio Q2 dashboard → 45 total employees; voluntary turnover 6.9% (🟢); 1 regrettable departure (senior biller); time to fill 38 days (🟢); cost per hire $3,200 (🟢); offer acceptance 83% (🟢); performance reviews 100% current (🟢); I-9 compliance 100% (🟢); payroll as % of revenue 48% (within healthcare 40-60% benchmark); Matt Mathison brief: "Allevio workforce is healthy in Q2. We lost one regrettable (senior biller) and have an open req to backfill with an expected offer by end of July. No action needed from you."
2. **Edge case:** HIVE Partners — turnover data not tracked systematically → Establish the baseline from available payroll records; acknowledge the data gap in the report; present what is calculable; establish tracking process going forward; "Based on payroll records, N departures in past 12 months against average headcount of N = X%. This is our first formal measurement — tracking quarterly going forward."
3. **Adversarial:** A CEO says "these metrics are overhead" → Respond: "Five metrics, one page, quarterly. What I'm preventing is turnover creeping from 10% to 25% over two years without notice — until we're losing people we can't replace. The metrics don't change how you operate; they tell you whether what you're doing is working."

## Audit Log
All HR metrics reports retained by period and company. Source data records retained. Matt Mathison reports retained. Significant metric change notifications retained.

## Deprecation
Retire when portfolio companies have HRIS (Rippling, Workday, BambooHR) that automates headcount, turnover, and hiring metrics and produces dashboards without manual compilation by Dr. Lewis.
