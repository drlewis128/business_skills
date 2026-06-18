---
name: fin-financial-model
description: "Build and maintain 3-statement financial models for MBL Partners and portfolio companies. Use when the user says 'financial model', 'build a financial model', '3-statement model', 'P&L model', 'income statement model', 'build the model', 'model the financials', 'financial projection', 'financial forecast', 'revenue model', 'expense model', 'build projections', 'project the financials', 'model the business', 'build a forecast', '5-year model', '3-year model', 'acquisition model', 'deal model', 'investment model', 'model the acquisition', 'financial analysis', 'model sensitivity', 'what does the model say', 'run the model', 'update the model', 'refresh the model', 'driver-based model', or 'bottoms-up model'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--horizon <1yr|3yr|5yr>] [--purpose <operations|acquisition|exit|lp>] [--action <build|update|sensitivity|review>]"
---

# Fin Financial Model

Build and maintain driver-based 3-statement financial models (P&L, balance sheet, cash flow) for MBL Partners and its portfolio companies — producing the financial projections that support operating decisions, capital allocation, acquisition evaluation, and LP reporting. All MBL financial models are driver-based (revenue from unit economics, not top-down growth rates), bottoms-up where possible, and include sensitivity analysis on the key assumptions that determine the outcome. A model that produces one answer is a model that hasn't been stress-tested; MBL models always show the range.

## When to Use
- Building the annual operating plan financial model for any entity
- Evaluating an acquisition target's financial projections
- Preparing the LP financial reporting projections (exec-lp-reporting)
- Sensitivity analysis on a capital allocation decision
- Updating projections based on actual performance vs. plan

## Financial Modeling Framework

```
3-STATEMENT MODEL STRUCTURE:

  INCOME STATEMENT (P&L):
    Revenue:
      Driver-based — built from unit economics, not top-down
      Entity-specific revenue drivers:
        Allevio: employer groups × avg members per group × PMPM rate
        HIVE: leased acreage × production rate per acre × WTI price × royalty %
        Column6: active campaigns × avg CPM × impression volume
      Always: revenue by customer/segment (concentration visible)
      
    COGS / Direct costs:
      Allevio: medical claims (claim ratio × premium revenue); clinical staff
      HIVE: production costs; severance taxes; operating costs per BOE
      Column6: media costs (DSP spend); delivery costs
      
    Gross profit and gross margin %
    
    Operating expenses (by function):
      Payroll (headcount plan × fully-loaded cost per head)
      Technology (SaaS; infrastructure)
      Sales & marketing
      G&A
      
    EBITDA and EBITDA margin %
    Depreciation and amortization (if applicable)
    EBIT
    Interest (if debt; entity-specific)
    EBT
    Taxes (entity tax rate)
    Net income

  BALANCE SHEET:
    Current assets: Cash; AR; prepaid
    Fixed assets: PP&E (if material)
    Current liabilities: AP; accrued liabilities; deferred revenue
    Long-term liabilities: Debt (if applicable)
    Equity: Retained earnings; MBL invested capital

  CASH FLOW STATEMENT:
    Operating cash flow (net income + D&A + working capital changes)
    Investing cash flow (capex; acquisitions)
    Financing cash flow (debt; equity injections; distributions)
    Net change in cash → ending cash balance
    
  DRIVER PAGE (the source of truth):
    All assumptions documented in one place
    Revenue drivers: price × volume per entity
    Headcount plan: current + planned hires by quarter
    Cost escalation: inflation assumptions by cost category
    Capital expenditure: timing and amount
    Working capital: DSO, DPO, DIO assumptions

MODEL CONSTRUCTION RULES:

  Rule 1: Driver-based only — no top-down growth rates
    Bad: "Revenue grows 15% per year"
    Good: "Allevio: 12 employer groups at start of year + 4 new groups/year × avg 85 members/group × $420 PMPM"
    
  Rule 2: Sensitivity table required for every model
    Minimum 2 variables × 5 scenarios each
    Allevio: employer group adds (0-8) × PMPM rate ($380-$460)
    HIVE: WTI price ($50-$80) × production rate (±20%)
    Column6: VCR rate (88%-96%) × CPM pricing ($8-$15)
    
  Rule 3: Assumptions documented and dated
    Every assumption has a source (management estimate; market data; contract)
    Every assumption has a date (when was this last validated?)
    
  Rule 4: Actuals vs. model comparison
    Once a period closes, actual data replaces projections
    Variance column shows projection accuracy (model quality feedback)
    
  Rule 5: Three scenarios at minimum for acquisition or LP models
    Base: most likely path given current trajectory
    Upside: all key drivers improve by one step (not heroic)
    Downside: 2 of 3 key drivers miss (not catastrophic — operational downside)
    
ENTITY MODEL PRIORITIES:

  Allevio — most sensitive variables:
    1. Employer group count (each group = ~$430K ARR at current rates)
    2. Claim ratio (each 1% change = ~$X in net revenue impact)
    3. PMPM rate (renewal negotiation outcome)
    
  HIVE — most sensitive variables:
    1. WTI price (use current strip pricing; show $50/$60/$70/$80 sensitivities)
    2. Leased acreage (production potential ceiling)
    3. Landowner GRR (royalty base retention)
    
  Column6 — most sensitive variables:
    1. Agency NRR (retention × expansion)
    2. CPM pricing (market rate × premium for performance)
    3. VCR (affects premium pricing and renewal negotiation)
```

## Output Format

```markdown
# Financial Model — [Entity] — [Horizon] — [Purpose]
**Built by:** Dr. Lewis | **Period:** [Date range] | **Last updated:** [Date]

---

## Key Assumptions (Driver Page Summary)

| Driver | Base | Upside | Downside | Source |
|--------|------|--------|---------|--------|
| [Driver 1] | [Value] | [Value] | [Value] | [Source] |

---

## P&L Summary ($000s)

| Metric | [Year 1] | [Year 2] | [Year 3] |
|--------|---------|---------|---------|
| Revenue | $X | $X | $X |
| Gross profit | $X | $X | $X |
| Gross margin | X% | X% | X% |
| EBITDA | $X | $X | $X |
| EBITDA margin | X% | X% | X% |

---

## Sensitivity Analysis

| Variable | Pessimistic | Base | Optimistic |
|----------|------------|------|-----------|
| [Driver 1] | $[EBITDA] | $[EBITDA] | $[EBITDA] |
| [Driver 2] | $[EBITDA] | $[EBITDA] | $[EBITDA] |

---

## Cash Position

| | Q1 | Q2 | Q3 | Q4 |
|-|----|----|----|----|
| Beginning cash | $X | $X | $X | $X |
| Operating CF | $X | $X | $X | $X |
| Ending cash | $X | $X | $X | $X |

---

## Key Risks to Model

1. [Risk 1 — which assumption is most likely wrong and in which direction]
2. [Risk 2]
```

## Output Contract
- Driver-based, not rate-based — every revenue line in an MBL model is built from the unit economics of the business (employer groups × members × PMPM, not "20% revenue growth"); if an entity's finance team submits a model with top-down growth rates, Dr. Lewis returns it with the request to rebuild from drivers; the driver-based approach forces the team to articulate the business mechanics, not just project a growth rate that feels plausible
- Sensitivity table is non-negotiable — a model without sensitivity analysis is a point estimate dressed up as a forecast; the MBL model standard requires a 2-variable sensitivity table that shows how EBITDA (or the relevant output) changes across the realistic range of the two most important drivers; for acquisition models, the sensitivity shows IRR across the scenario range
- Three scenarios for acquisition and LP models — base/upside/downside; upside is one step better on each key driver (realistic bull case); downside is 2 of 3 key drivers miss (operational stress test); catastrophic scenarios are tracked in exec-risk-management, not in the operating model
- HITL required: all financial models used in capital allocation decisions >$50K are reviewed by Matt Mathison before the decision is made; acquisition models are reviewed by Matt + legal before the LOI is submitted; LP financial projections are reviewed by Matt Mathison before any LP communication; entity operating models are reviewed by the entity CEO before the annual plan is finalized; Dr. Lewis builds the models; Matt Mathison validates the assumptions and approves the outputs for decision use

## System Dependencies
- **Reads from:** QuickBooks (historical actuals — the base against which projections are built); entity operating data (Allevio: AdvancedMD metrics; HIVE: Covercy production data; Column6: DSP campaign data); exec-capital-allocation (capital plan inputs); exec-annual-planning-kickoff (planning cycle timing and priority inputs)
- **Writes to:** Financial model files (SharePoint → Finance → Models → [Entity] → [YYYY]); exec-lp-reporting (LP financial projections section); exec-board-reporting (board financial projections); exec-deal-financial-model (acquisition model builds on the operating model structure); fin-scenario-modeler (scenario outputs feed into the scenario planning skill); exec-capital-allocation (model outputs inform capital allocation decisions)
- **HITL Required:** Capital allocation decisions >$50K require Matt Mathison review of the supporting model; acquisition models require Matt + legal review before LOI; LP financial projections require Matt approval; entity operating models reviewed by entity CEO; all sensitivity analyses shared with Matt before he makes a decision that depends on the model output

## Test Cases
1. **Golden path:** Build Allevio 3-year operating model for the annual plan; driver page: start with 12 employer groups + 4 new/year; avg 85 members/group; PMPM $420 Y1/$432 Y2/$445 Y3 (3% escalation per renewal); claim ratio 89% Y1/88% Y2/87% Y3 (clinical program impact); headcount: 2 clinical coordinators added in Q2 Y1; G&A flat. Y1: Revenue $5.1M; EBITDA $340K (6.7%); Y2: Revenue $6.7M; EBITDA $580K (8.7%); Y3: Revenue $8.6M; EBITDA $860K (10%). Sensitivity: employer groups 0-6 new/year × PMPM $400-$460 → EBITDA range Y3: -$120K to $1.4M. Matt reviews: "The 4 new groups/year assumption — what's the sales capacity behind that?" Dr. Lewis: "2 BD calls per month from the Allevio CEO + the North Vista referral channel; we closed 3 last year. I've built 4 as the base and 2 as downside." Matt: "Approved. Use this for the plan."
2. **Edge case:** HIVE model with WTI at $52 (below $58 capex trigger) shows negative free cash flow → Dr. Lewis flags immediately: "The HIVE model at $52 WTI shows negative FCF of $180K/year. At current strip pricing ($59), FCF is positive at $240K. I'm showing 3 scenarios: $52 (stress) / $59 (current strip) / $68 (recovery). At $52 for >2 consecutive quarters, the capex trigger (no new well development) activates. I recommend Matt sees this before the quarterly review — this is the kind of scenario we should have a pre-planned response for, not improvise in a board meeting." Matt: "Send me the model. Let's talk through the $52 scenario."
3. **Adversarial:** Entity CEO submits a model showing 40% revenue growth in Year 1 with no driver breakdown → Dr. Lewis: "I can't use this model as submitted for the capital allocation decision — it doesn't show how we get to 40% growth. Before we build any plan around these numbers, I need to see the driver page: what is the unit economics assumption behind the revenue line? How many new customers? At what price? With what retention? 40% is achievable — I've seen it happen — but it needs to be built from the bottom up. If the drivers support 40%, the model will show it. If they don't, the model will show what's actually achievable. Let's build the driver page together and then run the numbers."

## Audit Log
All model versions retained with build date, purpose, and who reviewed. Assumption change log (what changed; when; why). Actuals vs. model comparison retained monthly. Sensitivity analysis outputs retained. Matt Mathison review records retained. LP and board model submissions retained separately (fiduciary documentation).

## Deprecation
Retire and replace when each entity has a Controller or CFO who owns the entity financial model — with Dr. Lewis providing the portfolio consolidation model and the acquisition/deal model, and Matt Mathison retaining review authority for all models used in capital or LP decisions.
