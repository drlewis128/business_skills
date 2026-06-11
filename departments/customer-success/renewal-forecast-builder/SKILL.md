---
name: renewal-forecast-builder
description: "Build a renewal revenue forecast for the CS team's book of business. Use when the user says 'renewal forecast', 'forecast renewals', 'what renewals are coming up', 'renewal pipeline', 'expected renewal revenue', 'renewal ARR forecast', or 'what will we renew this quarter'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <quarter|annual>] [--view <team|executive|board>]"
---

# Renewal Forecast Builder

Build a renewal revenue forecast for the CS team's book of business. Renewal forecasting is to CS what sales forecasting is to Sales — it's how leadership knows whether ARR is stable, growing, or at risk. A credible renewal forecast requires honest health assessment and deal-level visibility.

## When to Use
- Monthly renewal pipeline review for Matt Mathison
- Quarterly board or LP update (ARR retention section)
- Annual planning (what's the retention baseline for next year's growth model?)
- Finance needs renewal ARR for cash flow planning
- When ARR variance is unexplained — diagnose renewal vs. expansion vs. new logo

## Renewal Categorization

| Category | Definition | Forecast Probability |
|---------|-----------|---------------------|
| **Commit** | Contract renewing; no risk signals | 95% |
| **Likely** | Health is Yellow; minor risk | 75% |
| **At Risk** | Health is Red; active intervention | 40% |
| **Churn Risk** | Customer in active save play | 15% |
| **Lost** | Customer confirmed non-renewal | 0% |

## Renewal Forecast Formula

```
Renewal Forecast = Σ (Account ACV × Renewal Probability)

Scenarios:
Conservative = Commit only (95% probability)
Base = Commit + Likely (weighted)
Upside = Commit + Likely + partial At-Risk
```

## Output Format

```markdown
# Renewal Forecast — <Entity>
**Period:** <quarter/year> | **Date:** <date>

---

## Renewal ARR Summary

| Category | # of Accounts | ARR | Weighted Forecast |
|---------|------------|-----|-----------------|
| Commit (95%) | <N> | $<N> | $<N> |
| Likely (75%) | <N> | $<N> | $<N> |
| At Risk (40%) | <N> | $<N> | $<N> |
| Churn Risk (15%) | <N> | $<N> | $<N> |
| Lost (0%) | <N> | $<N> | $0 |
| **Total due for renewal** | **<N>** | **$<N>** | |

---

## Forecast Scenarios

| Scenario | Renewal ARR | GRR | NRR (inc expansion) |
|---------|------------|-----|---------------------|
| Conservative (commit only) | $<N> | X% | |
| Base (commit + likely) | $<N> | X% | X% |
| Upside (base + 50% at-risk) | $<N> | X% | X% |

---

## Deal-Level Renewal Pipeline

| Account | ACV | Renewal Date | Category | Health | CSM | Risk |
|---------|-----|------------|---------|--------|-----|------|
| <Account> | $<N> | <date> | Commit | 🟢 | <CSM> | Low |
| <Account> | $<N> | <date> | At Risk | 🔴 | <CSM> | High |
| <Account> | $<N> | <date> | Lost | — | <CSM> | Confirmed |

---

## ARR at Risk This Period

| Account | ACV | Category | Why At Risk | Save Plan |
|---------|-----|---------|------------|---------|
| <Account> | $<N> | At Risk | Adoption at 22% | Active — re-onboarding |
| <Account> | $<N> | Churn Risk | Champion departed | Executive outreach initiated |

**Total ARR at risk:** $<N> (<X>% of renewal ARR)

---

## Forecast vs. Prior Period

| Metric | Prior Period | Current Period | Change |
|--------|------------|--------------|--------|
| Total renewal ARR | $<N> | $<N> | <+/->% |
| Weighted forecast | $<N> | $<N> | <trend> |
| # at-risk accounts | <N> | <N> | |

---

## Key Assumptions

1. [Assumption — e.g., "Save plan for [Account] succeeds by end of period"]
2. [Assumption — e.g., "No additional accounts deteriorate to churn risk"]

**Biggest forecast risk:** [Specific account or factor]
```

## Output Contract
- All renewals categorized with probability — no single-point renewal forecast
- Deal-level detail always available — forecasts must be backed by named accounts
- ARR at risk always explicitly quantified
- Assumptions always stated — leadership must know what has to be true for the forecast to hold
- HITL required before renewal forecast is shared with Finance or board — Dr. Lewis reviews

## System Dependencies
- **Reads from:** Customer contract database (renewal dates, ACV), health scores from `customer-health-scorer`, CRM account records
- **Writes to:** Nothing (forecast for HITL review and Finance planning)
- **HITL Required:** Dr. Lewis reviews before sharing with Finance or board; CS Manager validates category assignments; Finance uses forecast for cash flow planning

## Test Cases
1. **Golden path:** Q3 renewal forecast, 15 accounts → $380K commit, $95K likely, $60K at-risk, $25K churn risk, base forecast $460K (91% GRR), 2 key assumptions stated
2. **Edge case:** Large single account represents 40% of renewal ARR → flags single-account concentration risk explicitly, recommends executive attention regardless of current health score
3. **Adversarial:** CS Manager wants to move an at-risk account to "Likely" without improvement in health score → requires health score improvement or specific evidence of risk resolution before category upgrade, documents rationale for any category change

## Audit Log
Renewal forecasts retained by entity and period. Forecasted vs. actual renewal outcomes tracked for forecast accuracy calibration.

## Deprecation
Retire when CS platform provides automated renewal pipeline with real-time health-weighted forecasting and Finance system integration.
