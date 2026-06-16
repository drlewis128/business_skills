---
name: revenue-forecast-model
description: "Build or update a revenue forecast model. Use when the user says 'revenue forecast', 'revenue model', 'revenue projection', 'forecast revenue', 'build a revenue model', 'revenue planning', 'project revenue', 'ARR forecast', 'MRR model', 'revenue pipeline model', 'revenue growth model', or 'how much revenue will we make'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--model-type <subscription|transactional|production|pipeline>] [--horizon <quarterly|annual>]"
---

# Revenue Forecast Model

Build a rigorous, driver-based revenue forecast model — projecting future revenue from specific business drivers (customers, volume, price, churn, pipeline conversion) rather than from top-down growth percentages. A revenue forecast that says "we'll grow 20% next year" is not a model; it's a guess. A model that says "we have 14 active practices at $2,200/month; we add 2 per quarter at an 80% pipeline conversion rate; we expect 5% annual churn" is a model that management can monitor, adjust, and defend.

## When to Use
- Annual budget planning — revenue section of the budget must be driver-based
- Monthly or quarterly forecast update — revenue assumptions need to reflect current pipeline and churn data
- Matt Mathison asks "how are we modeling revenue growth?"
- A new revenue stream (product, geography, partnership) is being added to the model
- A board member or LP challenges the revenue assumptions

## Revenue Model Types

```
Choose the model type based on business model:

Subscription / Recurring Revenue (Allevio):
  Drivers: Starting customers × price × (1 + new additions − churn)
  Key metrics: MRR, ARR, net revenue retention, LTV

Production-Based (HIVE Partners):
  Drivers: Production volume (BBL/day) × realized price/BBL × days in period
  Key metrics: BBL/day, realized price, decline rate, new well adds

Pipeline-Based (any company with project/deal revenue):
  Drivers: Pipeline by stage × close rate × average deal size × timing
  Key metrics: Pipeline coverage ratio, weighted pipeline value, win rate

Transactional / Unit-Based:
  Drivers: Units sold × price × frequency
  Key metrics: Volume, ASP, repeat rate
```

## Output Format

```markdown
# Revenue Forecast Model — <Company Name>
**Model type:** [Subscription / Production / Pipeline / Transactional]
**Prepared by:** Dr. John Lewis | **Last updated:** <Date>
**Horizon:** [Full year YYYY / Next 12 months / Through Q[N]]

---

## Revenue Summary

| | Q1 | Q2 | Q3 | Q4 | Full Year | YoY Growth |
|---|---|---|---|---|---|---|
| **Total Revenue** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **[X%]** |
| [Segment 1] | $[X] | | | | | |
| [Segment 2] | $[X] | | | | | |

---

## [MODEL TYPE A: Subscription / Recurring Revenue — Allevio example]

### Customer Count Waterfall

| | Jan | Feb | Mar | Q1 | Q2 | Q3 | Q4 | FY |
|---|---|---|---|---|---|---|---|---|
| Beginning customers | [N] | | | [N] | [N] | [N] | [N] | [N] |
| + New additions | [N] | | | [N] | [N] | [N] | [N] | [N] |
| − Churn | ([N]) | | | ([N]) | | | | ([N]) |
| **Ending customers** | **[N]** | | | **[N]** | | | | **[N]** |
| **Avg. active customers** | [N] | | | [N] | | | | [N] |

**New addition assumptions:**
- Q1: [N] new additions — [confirmed signed / pipeline stage 4+ / estimated]
- Q2: [N] new additions — [source of the assumption]
- Q3: [N] new additions
- Q4: [N] new additions
- Pipeline conversion rate assumed: [X%]

**Churn assumption:** [X%] annual = [N] customers/year = ~[N/12]/month
- [Is this based on historical data or estimate? Note the basis.]

### Revenue Per Customer

| | Q1 | Q2 | Q3 | Q4 | Annual |
|---|---|---|---|---|---|
| Average monthly fee | $[X] | $[X] | $[X] | $[X] | |
| Price increase (if any) | — | — | +[X%] effective [Month] | | |
| **Revenue** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** |

---

## [MODEL TYPE B: Production-Based Revenue — HIVE Partners example]

### Production Forecast

| | Q1 | Q2 | Q3 | Q4 | Full Year |
|---|---|---|---|---|---|
| Beginning production (BBL/day) | [N] | [N] | [N] | [N] | |
| + New well adds / workovers | [N] | [N] | [N] | [N] | |
| − Natural decline ([X%]/year) | ([N]) | ([N]) | ([N]) | ([N]) | |
| **Ending production (BBL/day)** | **[N]** | | | | |
| **Average production (BBL/day)** | **[N]** | | | | |
| Realized price ($/BBL) | $[X] | $[X] | $[X] | $[X] | |
| Hedge floor ($/BBL) | $[X] | | | | |
| **Oil revenue** | **$[X]** | | | | |
| Gas revenue (if applicable) | $[X] | | | | |
| **Total production revenue** | **$[X]** | | | | |

**Key assumptions:**
- Natural decline rate: [X%] per year (based on [production history / engineering estimate])
- New well adds: [N wells] in [Q/Month] — [confirmed / estimated]
- Realized price assumption: [WTI minus $[X]/BBL differential; current hedge covers [X%] at $[X] floor]

---

## [MODEL TYPE C: Pipeline-Based Revenue]

### Pipeline Conversion Model

| Pipeline Stage | Description | Probability | Value | Expected Revenue | Close Month |
|--------------|-------------|------------|-------|-----------------|------------|
| Stage 1 — Lead | [N] deals | 10% | $[X] | $[X] | [Range] |
| Stage 2 — Qualified | [N] deals | 25% | $[X] | $[X] | |
| Stage 3 — Proposal | [N] deals | 50% | $[X] | $[X] | |
| Stage 4 — Negotiation | [N] deals | 75% | $[X] | $[X] | |
| Stage 5 — Committed | [N] deals | 90% | $[X] | $[X] | [Specific] |
| **Total weighted pipeline** | | | **$[X]** | **$[X]** | |

**Pipeline coverage ratio:** $[X] weighted pipeline / $[X] revenue target = [X]× coverage
(Target: ≥2.5× for reasonable confidence in hitting target)

---

## Revenue Model Sensitivity

| Driver | Base assumption | Bear assumption | Bear revenue impact | Bull assumption | Bull impact |
|--------|---------------|----------------|---------------------|-----------------|------------|
| [Volume — customers / BBL / deals] | [N] | [N-] | ($[X]) | [N+] | +$[X] |
| [Price] | $[X] | $[X-] | ($[X]) | $[X+] | +$[X] |
| [Timing — close/add rate] | [N/quarter] | Delay by [X weeks] | ($[X]) | Accelerate | +$[X] |
| [Churn / decline] | [X%] | [X+1%] | ($[X]) | [X-1%] | +$[X] |

**Most sensitive variable:** [The driver with the largest revenue impact per unit change]

---

## Revenue Assumptions — Full List

*Every assumption that drives the revenue model must be documented*

| # | Assumption | Value | Basis | Last reviewed |
|---|-----------|-------|-------|--------------|
| 1 | Starting [customers / production / pipeline] | [N] | [Actual as of <date>] | <Date> |
| 2 | New additions per quarter | [N] | [Pipeline / historical / management estimate] | |
| 3 | Price per unit | $[X] | [Contracts / rate card / market] | |
| 4 | Churn / decline rate | [X%] | [Historical / industry standard / estimate] | |
| 5 | Price change (if any) | [X%] effective [Date] | [Approved by CEO / board] | |
| 6 | [Other material assumption] | | | |
```

## Output Contract
- Revenue always built from drivers, not from percentages — "grow 20%" is not acceptable as a revenue assumption; the model must show what specific drivers produce that growth (more customers, higher prices, more production, better conversion) and at what rate, from what starting point
- Assumptions always documented with their basis — every assumption in the model must state where it came from: actual historical data, CEO estimate, pipeline analysis, engineering estimate; assumptions without a stated basis are unauditable and undefendable
- Pipeline coverage ratio always calculated for pipeline-based models — a revenue target without a pipeline coverage assessment is wishful thinking; if the weighted pipeline doesn't cover the target at ≥2.5×, the revenue target is at risk
- Sensitivity analysis always shows the most important driver — management needs to know which variable to monitor most closely; the sensitivity table identifies this
- HITL required: Dr. Lewis builds the model; CEO or relevant operational owner validates volume and timing assumptions; Matt Mathison reviews revenue model before it's incorporated into the annual budget or LP reporting; any revenue assumption change >10% requires documented rationale

## System Dependencies
- **Reads from:** QuickBooks (actual revenue history), CRM/pipeline (GoHighLevel for MBL/North Vista), Covercy (HIVE production history), contract data (customer counts, pricing)
- **Writes to:** Revenue model (SharePoint/Finance/Models/); annual budget (revenue section); rolling forecast; scenario analysis
- **HITL Required:** Dr. Lewis builds; CEO validates assumptions; Matt Mathison reviews before budget or LP distribution; changes >10% to revenue assumptions require documented rationale

## Test Cases
1. **Golden path:** Allevio subscription revenue model — Jan 2026 → Starting practices: 14 at $2,200/month; Q1 add: 2 new practices (Stage 4+ in pipeline — 80% probability, 90% weighted); Q2 add: 2 practices (confirmed in onboarding pipeline); Q3: 1 practice (estimated from early-stage pipeline); Q4: 1 practice (estimated); churn: 5% per year = 0.7 practices — model 1 departure in Q4; year-end: 20 practices; weighted average: 16.2 practices; annual revenue: 16.2 × $2,200 × 12 = $427,680; sensitivity: 1 practice = $26,400/year; pipeline coverage: $440K weighted pipeline vs. $428K target = 1.03× — thin; recommendation: accelerate outreach to increase pipeline to $1.0M+ before locking the budget; model presented to CEO and Matt Mathison for review
2. **Edge case:** Pipeline coverage ratio is 0.8× (well below the 2.5× target) — the revenue target cannot be met with current pipeline → flag immediately and present the data: "Current weighted pipeline of $[X] supports only [X%] of the $[X] revenue target. At current win rates, we are tracking to $[X] — a $[X] shortfall. Options: (1) Increase pipeline immediately — need $[X] more in Stage 3+ deals by [date]; (2) Reduce the revenue budget to $[X] — a more defensible target given current pipeline; (3) Both." Do not accept a revenue target that the pipeline doesn't support without documenting the gap
3. **Adversarial:** A CEO wants to use a higher price assumption in the revenue model "to show what we could achieve if we raise prices" — but the price increase hasn't been approved or communicated to customers → the base case model must reflect current contracted or expected prices; a hypothetical price increase belongs in the bull case only, labeled clearly as "assumes price increase of [X%] effective [Date] — not yet approved"; using hypothetical price increases in the base case overstates expected revenue and misleads Matt Mathison and the board

## Audit Log
Revenue model versions retained with date and assumption sets. CEO validation documented. Matt Mathison review and approval dated. Pipeline coverage ratios tracked over time. Assumption changes logged with rationale.

## Deprecation
Retire when portfolio companies have dedicated FP&A or CRM-connected revenue models that update automatically from pipeline data, reducing the need for Dr. Lewis to manually rebuild the model each planning cycle.
