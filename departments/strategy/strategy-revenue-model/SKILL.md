---
name: strategy-revenue-model
description: "Build or analyze the company's revenue model — revenue drivers, projections, and sustainability. Use when the user says 'revenue model', 'build a revenue model', 'revenue projections', 'revenue forecast', 'top-line model', 'revenue drivers', 'unit economics', 'revenue mix', 'revenue analysis', 'project revenue', 'what drives revenue', 'revenue plan', 'revenue forecast model', 'build projections', 'top-line projections', or 'revenue breakdown'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1-Q4 or FY>] [--year <YYYY>] [--purpose <annual-plan|m-and-a|lp-report|internal>]"
---

# Revenue Model

Build or analyze revenue models for MBL portfolio companies — decomposing revenue into its fundamental drivers, validating the assumptions, and projecting forward with a disciplined bottoms-up approach. Revenue models are the foundation of every investment thesis, annual plan, and exit valuation: a model built on solid unit economics and evidence-based assumptions is a management tool; a model built on wishful thinking is a liability. At PE portfolio scale, the revenue model is the first document examined in any investor review or M&A process — it must withstand scrutiny from a buyer's QoE team.

## When to Use
- Annual planning — building the revenue plan for the coming year
- Board or LP reporting — supporting the financial summary with driver-level analysis
- M&A (buy-side or sell-side) — modeling target revenue or presenting current revenue to a buyer
- New service line — projecting revenue from an expansion
- Revenue is below plan — diagnosing which driver is underperforming

## Revenue Model Framework

```
Revenue model structure by entity type:

ALLEVIO — Healthcare MSO (primary care):
  Revenue model type: Fee-for-service + capitation (value-based contracts if applicable)
  
  Fee-for-service model:
    Driver 1: Provider capacity (FTE providers × average patient visits/day × working days)
    Driver 2: Average reimbursement rate per visit (payer mix × rate per payer)
    Driver 3: Patient utilization (visits/patient/year; appointment availability)
    Driver 4: Payer mix (% Medicare × Medicare rate + % commercial × commercial rate + % direct-pay × direct-pay rate)
    
    Formula: Revenue = Providers × Days × Visits/Provider/Day × Average reimbursement per visit
    
  Revenue drivers for Allevio:
    Provider FTE count: 3 providers (target 4); each provider: 18 patients/day × 240 days = 4,320 visits/year
    Reimbursement mix: 40% Medicare ($95/visit) + 50% commercial ($115/visit) + 10% direct-pay ($105/visit)
    Blended rate: (0.40 × $95) + (0.50 × $115) + (0.10 × $105) = $38 + $57.50 + $10.50 = $106/visit
    Annual revenue (3 providers): 3 × 4,320 visits × $106 = $1.38M
    Revenue at target (4 providers): 4 × 4,320 × $106 = $1.84M
    
    Sensitivity: If blended rate drops $5 (payer mix shifts): -$21.6K/year per provider
    Key risk: Provider count is the dominant driver — provider vacancy has immediate revenue impact
    
HIVE PARTNERS — Oil & Gas E&P:
  Revenue model type: Commodity price × production volume
  
  Formula: Revenue = Production (BOE/day) × 365 × (WTI price − differential − LOE per BOE)
    Note: Net revenue = gross revenue minus LOE is effectively operating income from production
    
  Revenue drivers for HIVE:
    Production: [N] BOE/day average × 365 = annual gross BOE
    WTI price (base case): $70/bbl; downside: $58/bbl; stress: $48/bbl
    Basis differential: $4-6/bbl below WTI (Uinta Basin transport differential)
    Net realized price: $70 − $5 differential = $65/bbl (base case)
    LOE: $18/BOE (target; current $22/BOE)
    Net margin per BOE: $65 − $18 LOE = $47/BOE (base) → target when LOE hits $18: $47/BOE
    
    Sensitivity: $1/bbl WTI change = ±$[N × 365 × $1] annual revenue
    Key risk: WTI price and production rate; LOE is controllable but takes time to optimize
    
COLUMN6/SIPROCAL — CTV/Programmatic Advertising:
  Revenue model type: Impression-based (CPM revenue share) + direct advertiser contracts
  
  Formula: Revenue = Impressions served × CPM / 1,000 × revenue share %
    Or: Revenue = Spend delivered × net revenue margin %
    
  Revenue drivers for Column6:
    Impression volume: Monthly impressions served (total; by content category)
    Match rate: % of available impressions that successfully serve an ad (target >85%)
    CPM: Average CPM by content category; blended CPM
    Revenue share: Column6 net take rate after publisher revenue share
    
    Example: 100M impressions/month × $9 CPM / 1,000 × 40% net take = $360K/month
    Annual: $360K × 12 = $4.32M
    
    Sensitivity: 1% match rate improvement = +$[x] monthly revenue at current impression volume
    Key risk: Impression volume (platform/publisher relationships); CPM compression (market conditions)
    
Revenue model quality standards:
  Bottoms-up: All projections built from driver-level assumptions, not top-down ("grow 20%")
  Evidence-based assumptions: Each driver assumption tied to historical actuals or cited market data
  Sensitivity table: Show revenue at ±10% and ±20% on top 2-3 drivers
  Payer/customer mix: Revenue by source (not aggregate) — identifies concentration risk
  Monthly build: Annual projections built month-by-month (accounts for seasonality)
  No hockey stick: Revenue hockey sticks (flat then sudden acceleration) require specific driver explanation
```

## Output Format

```markdown
# Revenue Model — [Company Name] [Period]
**Date:** [Date] | **Purpose:** [Annual plan / M&A / LP report / Internal]

---

## Revenue Summary

**Projected revenue [Year]:** $[X]M
**Growth vs. prior year:** [+/-X]% ([Prior year: $[X]M])
**Revenue per [provider/BOE/impression]:** $[X]
**Key assumption driving this projection:** [One sentence — the most critical assumption]

---

## Revenue Driver Model

### [ALLEVIO example]

| Driver | Current | Year [N] target | Assumption basis |
|--------|---------|----------------|-----------------|
| Provider FTE count | 3.0 | 4.0 | NP hired Q2; target 4.0 FTE by Q3 |
| Patient visits/provider/day | 16 | 18 | Scheduling optimization by Q2 |
| Working days/year | 240 | 240 | Standard |
| Total annual visits | 11,520 | 17,280 | |
| Blended reimbursement/visit | $102 | $106 | Rate increase effective Jan; direct-pay +$20 |
| **Projected revenue** | **$1.18M** | **$1.83M** | |

### Payer Mix

| Payer | % revenue | Rate/visit | Source |
|-------|---------|-----------|--------|
| Medicare | 40% | $95 | CMS fee schedule |
| Commercial (BCBS/Aetna) | 50% | $115 | Payer contracts |
| Direct-pay | 10% | $105 | Rate increase effective [Date] |
| **Blended** | | **$106** | |

---

## Sensitivity Analysis

| Scenario | Key change | Revenue impact | EBITDA impact |
|---------|----------|--------------|--------------|
| Provider count at 3.0 (no NP) | 3 FTE vs. plan 4 | -$458K | -$92K |
| Blended rate −$5/visit | Payer mix shift | -$86K | -$86K |
| Visit rate at 14/day (utilization low) | Scheduling inefficiency | -$214K | -$43K |
| Provider count at 4.5 (hire 5th) | Upside | +$458K | +$92K |

---

## Monthly Revenue Build

| Month | Providers | Visits | Revenue |
|-------|----------|--------|---------|
| Jan | 3.0 | 1,056 | $[X]K |
| Feb | 3.0 | 912 | $[X]K |
| Mar | 3.0 | 1,056 | $[X]K |
| Apr | 3.5 | 1,188 | $[X]K |
| ... | | | |
| **Full year** | **Avg 3.7** | **17,280** | **$1.83M** |

---

## Comparison: Actual vs. Model

| Month | Projected | Actual | Variance | Root cause |
|-------|----------|--------|---------|-----------|
| [Prior period actuals vs. model] | | | | |

**Model accuracy (trailing 3 months):** [+/-X]% average variance

---

## Matt Mathison Brief

[Company] revenue model [Year]: Projected $[X]M ([+/-X]% growth). Key driver: [Provider FTE / WTI + production / Match rate + impressions]. Top assumption: [Specific — 4.0 FTE providers by Q3; 18 visits/day; blended rate $106]. Top risk: [Provider vacancy — each FTE vacancy = -$[X]K/year]. Sensitivity range: $[low]M-$[high]M depending on [driver]. Confidence: [High / Medium — NP ramp uncertain]. Action from Matt Mathison: [None / Discuss [specific driver] / Review sensitivity on WTI at $58].
```

## Output Contract
- All revenue projections are bottoms-up from driver assumptions, not top-down growth rates — "revenue will grow 15% next year" is not a revenue model; "revenue will grow from $1.18M to $1.83M because provider FTE increases from 3.0 to 4.0 (NP hired by April) and blended rate increases from $102 to $106 (direct-pay rate increase effective January)" is a revenue model; Dr. Lewis builds from the driver level so the CEO and Matt Mathison can stress-test each assumption independently; a top-down growth rate hides the mechanisms and cannot be managed
- Every material assumption has a named source or historical basis — "we assume 18 visits per provider per day" must be justified: is that the current rate? The historical peak? A peer benchmark? If it's an assumption the company has never achieved, it is aspirational and must be labeled accordingly; aspirational assumptions that are presented as base case without disclosure are the most common source of model credibility problems in M&A processes; Dr. Lewis labels assumptions as: Historical (based on actuals), Benchmark (based on market data), and Target (improvement from current state — requires supporting plan)
- The sensitivity table is mandatory — every revenue model includes a sensitivity table showing the revenue and EBITDA impact of ±10% and ±20% changes on the top 2-3 drivers; the sensitivity table is how Matt Mathison and the board understand the range of outcomes without needing to re-run the model; for HIVE, WTI sensitivity is the dominant driver and must be shown at $48, $58, $68, and $75; for Allevio, provider FTE sensitivity is the dominant driver; for Column6, impression volume and match rate are the dominant drivers
- HITL required: Dr. Lewis builds the model; controller validates historical data inputs and provides actuals; CEO reviews and validates the driver assumptions (particularly the targets — the CEO owns the assumptions for their own business); Matt Mathison reviews the revenue model for annual plan approval and any M&A application; M&A revenue models (presenting Allevio revenue to a buyer) require attorney review of any forward-looking statements included in the data room

## System Dependencies
- **Reads from:** Historical financial statements (QuickBooks), payer contracts and rate schedules (Allevio), UT DOGM production data and WTI price history (HIVE), impression reports and CPM data (Column6), prior annual plans
- **Writes to:** Revenue model file (SharePoint/Finance/<Company>/Revenue Model/[Year]/); annual plan (strategy-annual-plan-builder); LP report inputs (strategy-lp-reporting); board report financial section (strategy-board-reporting); M&A data room (strategy-data-room-builder if sell-side)
- **HITL Required:** Dr. Lewis builds; controller validates actuals; CEO validates targets and assumptions; Matt Mathison approves for annual plan and any M&A application; attorney reviews before including in sell-side data room or LP report

## Test Cases
1. **Golden path:** Allevio FY2027 revenue model for annual plan → Current (FY2026): 3.0 FTE providers; 16 visits/day; blended $102/visit; revenue $1.18M; FY2027 plan: hire NP (FTE 4.0 by Q3); scheduling optimization → 18 visits/day by Q2; direct-pay rate increase +$20 → blended $106/visit; monthly build: Jan-Mar at 3.0 FTE; Apr-Jun at 3.5 FTE (NP ramp); Jul-Dec at 4.0 FTE; full year 17,280 visits × $106 = $1.83M (+55% vs. FY2026 — driven by FTE increase and rate increase); sensitivity: if NP hire delayed to Q4 → $1.43M; if blended rate $100 (no direct-pay increase) → $1.72M; model presented to CEO; CEO validates provider ramp timeline; presented to Matt Mathison for annual plan approval; Matt Mathison approves with note to track NP ramp monthly
2. **Edge case:** HIVE revenue model at WTI $55 (below base) → WTI $55 base vs. $70 base plan: basis differential $5/bbl → net realized $50/bbl; LOE $22/BOE (current; target $18 not yet achieved); net margin per BOE: $50 − $22 = $28/BOE; at [N] BOE/day: [N × 365 × $28] = $[X] annual net revenue (vs. $[X] base plan); CapEx pause trigger: Dr. Lewis activates strategy-scenario-planner for downside case; completion well program paused per CapEx trigger rule (WTI <$58 = pause); HIVE operates on cash preservation mode until WTI recovers; Matt Mathison briefed immediately on WTI crossing threshold; LP notification if sustained below $58 for 10 trading days
3. **Adversarial:** CEO presents a revenue model with 80% growth driven by "anticipated new contract wins" that haven't been signed → This is aspirational revenue, not plan revenue; Dr. Lewis separates the model into: (1) contracted or historical-basis revenue — base case; (2) anticipated wins — upside case with probability weighting; the annual plan is built on the contracted/base case; the upside case is presented as a range above base; the CEO is responsible for explaining what specifically the anticipated wins are, who the customer is, what the probability of close is, and by when; "anticipated" without specificity is not a planning input; it is a motivation; Dr. Lewis requires specifics or moves the new wins to the upside case

## Audit Log
All revenue models retained by version and date. Assumption sources retained. Annual plan vs. actual comparisons retained (model accuracy tracking). M&A applications (sell-side or buy-side) retained permanently. Assumption changes and rationale retained.

## Deprecation
Retire when portfolio companies have a CFO or VP Finance who owns the revenue model — with Dr. Lewis reviewing the driver assumptions for thesis alignment and Matt Mathison approving the annual plan model regardless of who builds it.
