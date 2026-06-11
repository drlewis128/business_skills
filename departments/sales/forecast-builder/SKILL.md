---
name: forecast-builder
description: "Build a sales forecast for a period. Use when the user says 'sales forecast', 'forecast', 'revenue forecast', 'what will we close this month', 'build a forecast', 'forecast this quarter', 'how much will we sell', or 'commit call'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--method <pipeline|bottoms-up|trend>]"
---

# Forecast Builder

Build a credible sales forecast using pipeline data. A forecast is a commitment, not a wish. Bad forecasts destroy executive trust and create planning disasters — this skill produces defensible, methodology-backed calls.

## When to Use
- Monthly or quarterly forecast for Matt Mathison or Finance
- Before a board meeting or LP update (revenue line)
- Mid-period reforecast (are we still on track?)
- Annual planning (forward revenue estimate)

## Forecast Methods

### 1. Pipeline-Based (Most Common)
Multiply each deal's value by its stage probability and sum.
```
Forecast = Σ (Deal Value × Stage Probability)
```
**Strengths:** Objective; reflects actual deal status
**Weaknesses:** Pipeline probability isn't always accurate; ignores rep performance patterns

### 2. Bottoms-Up (Most Accurate for Near-Term)
Rep-by-rep, deal-by-deal commit:
- **Commit:** Rep is highly confident (> 90%) this will close in period
- **Upside:** Rep believes this could close but has risk
- **Pipeline:** Early-stage; unlikely to close this period
```
Forecast = Commit + (Upside × 50%)
```

### 3. Trend-Based (Best for Mature Companies)
Use historical win rates and pipeline coverage to project:
```
Forecast = (Current pipeline in advanced stages) × (Historical close rate)
```

## Forecast Accuracy Calibration

Track rep-level and team-level forecast accuracy:
```
Accuracy = Actual Closed / Forecasted Amount
```

Target: ±15% of forecast (within $15K on a $100K forecast)
Flag if consistently > ±25% — bad forecasting behavior or process

## Output Format

```markdown
# Sales Forecast — <Entity>
**Period:** <month/quarter> | **Date:** <date> | **Method:** <pipeline/bottoms-up/trend>

## Top-Line Forecast

| Category | Amount |
|---------|--------|
| Commit (90%+ confidence) | $<N> |
| Upside (50% weighted) | $<N> |
| **Total Forecast** | **$<N>** |
| Quota | $<N> |
| Attainment at Midpoint | <X>% |

## Attainment Scenario

| Scenario | Revenue | Quota Attainment |
|---------|---------|-----------------|
| Conservative (commit only) | $<N> | X% |
| Base (commit + 50% upside) | $<N> | X% |
| Upside (commit + all upside) | $<N> | X% |

## Deal-Level Forecast

| Account | Rep | Stage | Value | Category | Close Date | Risk |
|---------|-----|-------|-------|---------|------------|------|
| <Account> | <Name> | Negotiation | $<N> | Commit | <date> | Low |
| <Account> | <Name> | Proposal | $<N> | Upside | <date> | Medium |

## Forecast Risks
1. <Deal or category that could slip or fall out>
2. <External factor — seasonality, budget cycle timing>

## Forecast Confidence
**Overall confidence:** High / Medium / Low
**Key assumption:** <What must be true for the base forecast to hold>

## Closed This Period (Actual)
**Closed to date:** $<N> | **% of period elapsed:** X%
**Run rate to close:** $<N> (at current pace)
```

## Output Contract
- Scenarios always shown (conservative, base, upside) — no single-point forecast
- Deal-level detail always included for commits — "we're going to close $X" must be backed by named deals
- Risks always stated explicitly — never sandbagged optimism
- HITL required before any forecast is shared with Matt Mathison, board, or LP investors

## System Dependencies
- **Reads from:** Pipeline data from `sales-pipeline-tracker`, deal notes (provided or from CRM)
- **Writes to:** Nothing (forecast for HITL review)
- **HITL Required:** Dr. Lewis reviews before executive/board sharing; Finance uses forecast for cash flow planning

## Test Cases
1. **Golden path:** Q2 forecast for MBL entity → commit/upside breakdown by deal, 3 scenarios, risk statement, 82% quota attainment base case
2. **Edge case:** All pipeline in early stages with no commits → honest forecast showing low attainment, flags pipeline coverage problem, recommends specific actions
3. **Adversarial:** Request to inflate forecast to avoid a difficult conversation → refuses, provides honest forecast, recommends framing the gap with a recovery plan instead

## Audit Log
Forecast snapshots retained by entity and period. Actuals vs. forecast documented for accuracy calibration.

## Deprecation
Retire when CRM provides automated forecast with AI-based deal scoring and commit/upside/pipeline categorization.
