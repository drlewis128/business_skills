---
name: forecast-model-builder
description: "Build financial and operational forecasting models. Use when the user says 'build a forecast', 'revenue forecast', 'forecast model', 'predict next quarter', 'financial forecast', 'headcount forecast', 'demand forecast', 'build a projection', 'what will revenue be', or 'forecasting methodology'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--type <revenue|headcount|demand|cost>] [--period <monthly|quarterly|annual>] [--company <MBL|Allevio|HIVE|Column6>]"
---

# Forecast Model Builder

Build financial and operational forecasting models that provide realistic, actionable projections. A good forecast is not a prediction — it's a structured range of outcomes based on explicit assumptions. The value is not the number; it's the conversation about what assumptions drive the number, and how to change those assumptions. For MBL, forecasting serves Matt Mathison's planning decisions: hiring, investment, portfolio resource allocation.

## When to Use
- Annual / quarterly planning cycle — what does next year look like?
- New product launch — what's the revenue potential?
- Hiring decision — what headcount can the business sustain?
- Portfolio company assessment — is their forecast reasonable?
- LP reporting (HIVE) — return projections and fund performance

## Forecasting Approaches

```
Bottom-up forecast (preferred for operations):
  Build from unit economics and activity drivers
  Example: # of reps × avg deals/rep × avg ACV = revenue
  More granular; requires more input; more accurate if inputs are reliable

Top-down forecast (useful for market sizing):
  Start from market size; apply share assumptions
  Example: $50M TAM × 2% market share = $1M ARR
  Faster; useful for strategic planning; less operational

Driver-based forecast (most useful for MBL):
  Identify 3-5 key drivers; model their impact on the outcome
  Example: meetings recorded × summary coverage × action item completion rate → AI value score
  Makes assumptions explicit and debatable

Time series (for mature business with history):
  Use historical patterns to project forward
  Requires 12+ months of consistent data
  Not applicable to most MBL products at current stage
```

## Forecast Structure

```
Base case: Most likely scenario (P50 — happens 50% of the time)
  Conservative assumptions; achievable with current plan

Bull case: Optimistic scenario (P80 — happens if things go well)
  What if key assumptions exceed expectations?
  Example: win rate improves by 5pp; faster portfolio onboarding

Bear case: Pessimistic scenario (P20 — happens if things go poorly)
  What if key assumptions fall short?
  Example: churn is 2× expected; portfolio company delays

Present all three cases — decisions made on base case, contingencies built for bear case
```

## Output Format

```markdown
# Forecast Model — <Company> | <Type> | <Period>
**Date:** <date> | **Author:** Dr. John Lewis
**Forecast type:** Revenue / Headcount / Demand / Cost
**Period:** <start> to <end>
**Last updated:** <date>

---

## Forecast Summary

| Scenario | <Q1> | <Q2> | <Q3> | <Q4> | Full Year |
|---------|------|------|------|------|----------|
| Bear case (P20) | $<N> | $<N> | $<N> | $<N> | $<N> |
| Base case (P50) | $<N> | $<N> | $<N> | $<N> | $<N> |
| Bull case (P80) | $<N> | $<N> | $<N> | $<N> | $<N> |

**Key message:** <1-2 sentences on what the model is saying — Dr. Lewis interpretation>

---

## Key Assumptions (base case)

| Driver | Assumption | Basis | Sensitivity |
|--------|-----------|-------|------------|
| [ARR growth rate] | +8% per quarter | Historical trend; portfolio company onboarding | High — ±5% ARR per 1pp change |
| [Win rate] | 35% | Last 12 months average | Medium |
| [Avg contract value] | $<N> | Current book analysis | Low |
| [Churn rate] | 2% monthly | Industry benchmark; better than current | High |

**Assumption most likely to be wrong:** [The one assumption the model is most sensitive to]
**What would change it:** [External or internal factor]

---

## Driver-Based Model

### Revenue Model (bottom-up)

```
Monthly revenue = 
  (Existing ARR × (1 - monthly churn rate))
  + (New deals × average ACV / 12)
  + (Expansion MRR from existing customers)

Q1 base case:
  Existing ARR: $<N> (starting) × (1 - 2%) = $<N> retained
  + New deals: <N> × $<N> ACV / 12 = $<N> new MRR
  + Expansion: $<N>
  = $<N> end-of-Q1 ARR
```

---

## Sensitivity Analysis

| Assumption | -20% | Base | +20% | Impact on full-year |
|-----------|------|------|------|-------------------|
| Win rate | $<N> | $<N> | $<N> | ±$<N>K ARR |
| Churn rate | $<N> | $<N> | $<N> | ±$<N>K ARR |
| ACV | $<N> | $<N> | $<N> | ±$<N>K ARR |

**Biggest lever:** <Which variable has the most impact on the outcome>

---

## Forecast Confidence

**Data quality:** High / Medium / Low (based on data quality audit)
**Historical accuracy:** Prior forecast vs. actual: <N>% accurate (if applicable)
**Key risk:** <The single biggest thing that could make this forecast wrong>

---

## Monthly Detail (base case)

| Month | Starting ARR | New ARR | Churned ARR | Expansion ARR | Ending ARR |
|-------|------------|---------|------------|--------------|-----------|
| Jan | $<N> | $<N> | ($<N>) | $<N> | $<N> |
[...continue...]

---

## Trigger Points

| Trigger | Action |
|---------|--------|
| Actual Q1 revenue <90% of base case | Re-forecast Q2-Q4; assess assumption adjustments |
| Win rate drops >5pp below assumption | Flag to Matt Mathison; update pipeline coverage requirement |
| New deal count drops >20% | Escalate to Matt Mathison; sales review |
```

## Output Contract
- All three scenarios always presented — single-point forecasts are false precision
- Key assumptions always explicit — the assumptions are the model; the numbers are just the output
- Sensitivity analysis always included — tells you which assumptions to obsess over
- Trigger points always defined — when does the forecast become invalid?
- HITL required: Dr. Lewis reviews and approves forecast before presenting to Matt Mathison; Matt Mathison approves before any decisions are made based on the forecast (hiring, investment, portfolio allocation); HIVE LP return projections require legal review before distribution

## System Dependencies
- **Reads from:** QuickBooks (historical actuals), GoHighLevel (pipeline data), headcount plan, product analytics
- **Writes to:** Forecast model (SharePoint/Finance/Forecasts); executive report
- **HITL Required:** Dr. Lewis reviews; Matt Mathison approves for decisions; HIVE LP projections require legal

## Test Cases
1. **Golden path:** MBL ARR forecast for 2026 → Bottom-up: existing ARR $X × (1-2% monthly churn) + pipeline × 35% win rate × $Y ACV / 12; Base case: $X end-of-year ARR; Bear: 60% of base (2× churn, 20% lower win rate); Bull: 130% of base (improved win rate, one large deal closes); Sensitivity: churn is the biggest lever; Trigger: Q1 actual <85% of base → re-forecast in April
2. **Edge case:** Insufficient historical data to build a meaningful model (new product, <3 months of data) → acknowledge the data limitation explicitly; use analogies from comparable products (similar market, similar business model); range should be very wide with explicitly stated analogical assumptions; re-forecast quarterly as data accumulates; label as "hypothesis-based forecast" not "data-based forecast"
3. **Adversarial:** Matt Mathison asks for the forecast to be revised upward to match a target number → forecasts must reflect honest assumptions, not targets; a forecast revised to match a desired number is not a forecast — it's a wish; if the target is achievable, identify what assumptions would need to change; if assumptions are unrealistic, say so directly (Truth in THRIVE); adjust the plan, not the forecast

## Audit Log
Forecast models versioned. Assumptions documented per version. Actual vs. forecast variance tracked monthly.

## Deprecation
Retire when MBL has a dedicated FP&A function with a live financial model and rolling forecasts maintained autonomously.
