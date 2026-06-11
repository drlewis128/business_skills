---
name: cs-kpi-dashboard
description: "Generate a Customer Success KPI dashboard. Use when the user says 'CS KPIs', 'CS metrics', 'customer success dashboard', 'CS performance', 'retention metrics', 'NRR dashboard', 'churn metrics', or 'how is customer success performing'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <monthly|quarterly>] [--view <team|executive|board>]"
---

# CS KPI Dashboard

Generate a structured Customer Success KPI dashboard covering retention, adoption, satisfaction, and team performance. CS leaders who can't articulate their metrics can't defend their budget or headcount.

## When to Use
- Monthly CS team performance review
- Quarterly board or LP update (customer health section)
- CS team planning and headcount justification
- When NRR drops unexpectedly — diagnose the driver
- Annual CS strategy review with Matt Mathison

## CS Metrics Library

### Retention Metrics (Most Critical)

| Metric | Formula | Benchmark (SaaS) |
|--------|---------|-----------------|
| **Net Revenue Retention (NRR)** | (Start ARR + Expansion - Churn - Downgrades) / Start ARR | > 110% is excellent |
| **Gross Revenue Retention (GRR)** | (Start ARR - Churn - Downgrades) / Start ARR | > 90% is excellent |
| **Logo churn rate** | Churned customers / Total customers | < 5% annually |
| **Revenue churn rate** | Churned ARR / Start ARR | < 10% annually |
| **Renewal rate** | Renewals closed / Renewals due | > 90% |

### Customer Health Metrics

| Metric | Benchmark |
|--------|---------|
| % of accounts with Green health score | > 60% |
| % of accounts with Red health score | < 10% |
| Average customer health score | > 70 |
| Avg time to resolve Red → Green | < 60 days |

### Adoption Metrics

| Metric | Benchmark |
|--------|---------|
| Portfolio-wide seat activation | > 65% |
| Feature adoption rate | > 50% of core features |
| Average weekly active users | > 3 logins/user/week |

### Satisfaction Metrics

| Metric | Benchmark |
|--------|---------|
| NPS | > 30 (varies by industry) |
| CSAT (support tickets) | > 85% positive |
| QBR completion rate | > 80% of eligible accounts |

### CS Team Efficiency

| Metric | Definition | Benchmark |
|--------|-----------|---------|
| CSM-to-ARR ratio | Total ARR managed / # of CSMs | $1-2M per CSM (varies by market segment) |
| Renewal close rate | Renewals won / Renewals owned | > 90% |
| Time to first value (TTFV) | Days from signature to first customer value | < 30 days (depends on product) |
| Escalation rate | Escalated accounts / Total accounts | < 5% |

## Output Format

```markdown
# CS KPI Dashboard — <Entity>
**Period:** <period> | **Date:** <date>

---

## Retention Summary

| Metric | Target | Actual | Status | Trend |
|--------|--------|--------|--------|-------|
| NRR | X% | X% | 🟢 / 🔴 | ⬆️ / ⬇️ |
| GRR | X% | X% | | |
| Logo churn rate | X% | X% | | |
| Renewal rate | > 90% | X% | | |

---

## Customer Health Portfolio

| Health Tier | Count | % | ARR |
|------------|-------|---|-----|
| 🟢 Green | <N> | X% | $<N> |
| 🟡 Yellow | <N> | X% | $<N> |
| 🔴 Red | <N> | X% | $<N> |

**ARR at risk (Red + Yellow):** $<N>

---

## Adoption

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Seat activation | > 65% | X% | |
| Core feature usage | > 50% | X% | |
| Active users (weekly) | > 40% | X% | |

---

## Satisfaction

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| NPS | > 30 | <N> | |
| CSAT | > 85% | X% | |
| QBR completion | > 80% | X% | |

---

## CS Team Efficiency

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| ARR per CSM | $1.5M | $<N>M | |
| Renewal close rate | > 90% | X% | |
| Time to first value | < 30 days | <N> days | |
| Escalation rate | < 5% | X% | |

---

## Renewal Pipeline

| Category | Count | ARR |
|---------|-------|-----|
| Renewals due this period | <N> | $<N> |
| Renewals closed | <N> | $<N> |
| Renewals at risk | <N> | $<N> |

---

## Alerts

🔴 **NRR at X% — below X% target** — Driver: [expansion declining / churn spiking]. Action: [Specific]
⚠️ **<N> Red accounts** — $<N>K ARR at risk. Save plans active for <N> accounts.
✅ **Renewal close rate at X%** — Above target.
```

## Output Contract
- NRR always shown and benchmarked — it's the core retention metric
- ARR at risk always quantified (Red + Yellow) — connects health to business impact
- Renewal pipeline always included — forward-looking view alongside current state
- HITL required before CS KPI dashboard is shared with board or LP investors

## System Dependencies
- **Reads from:** CS platform data, renewal pipeline, NPS survey results, usage analytics (provided or from CS platform)
- **Writes to:** Nothing (dashboard for HITL review)
- **HITL Required:** Dr. Lewis reviews before board/LP sharing; CS Manager reviews with team monthly

## Test Cases
1. **Golden path:** Q2 CS dashboard for MBL entity → NRR 108%, 3 red accounts with $145K ARR at risk, seat activation at 67%, NPS 42, renewal pipeline $320K with 85% close rate, 2 action alerts
2. **Edge case:** First dashboard for a new CS team → builds dashboard with available data, explicitly marks metrics where benchmarks aren't yet established, recommends 2-quarter baseline before target-setting
3. **Adversarial:** Request to exclude churn numbers from a board presentation → refuses, includes all retention metrics, recommends framing them with context and a recovery plan rather than omitting

## Audit Log
CS KPI dashboards retained by entity and period. Metrics trends documented for year-over-year comparison.

## Deprecation
Retire when CS platform provides real-time automated KPI dashboards with configurable benchmarks and alert thresholds.
