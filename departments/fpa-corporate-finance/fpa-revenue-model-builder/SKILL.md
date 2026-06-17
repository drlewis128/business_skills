---
name: fpa-revenue-model-builder
description: "Build bottoms-up revenue models from operational drivers for portfolio companies. Use when the user says 'revenue model', 'revenue forecast', 'build a revenue model', 'bottoms-up revenue', 'revenue projection', 'forecast revenue', 'model revenue', 'revenue driver model', 'revenue build', 'revenue waterfall', 'how do we model revenue', 'revenue assumptions', 'revenue by customer', 'revenue by segment', 'revenue by channel', 'campaign revenue model', 'member revenue model', 'production revenue model', 'revenue breakdown', or 'top-line model'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY or YYYY-MM>] [--granularity <annual|quarterly|monthly>] [--action <build|update|review>]"
---

# Revenue Model Builder

Build bottoms-up revenue models from operational drivers for MBL portfolio companies — constructing the revenue forecast from the specific units, rates, and timing that actually drive revenue, rather than from top-down percentage growth assumptions. A bottoms-up revenue model is grounded in operational reality: the Allevio model says "we have 14 employer groups; each has X members; each member pays $Y PMPM"; the HIVE model says "we produce Z BOE/day at an average realized price of $W/bbl"; the Column6 model says "we run N campaigns per month at an average campaign value of $V." This is how Dr. Lewis builds revenue — from the bottom up, driver by driver.

## When to Use
- Annual budget — build the revenue assumption from drivers, not from "20% growth"
- Rolling forecast update — which drivers have changed? Update from there
- A new contract is signed — how does it flow into the revenue model?
- Matt Mathison asks "how did you get to that revenue number?"
- A new portfolio company is acquired — build their revenue model from scratch
- Exit preparation — present the revenue model to show buyers that growth is driven and defensible

## Revenue Model Framework

```
ALLEVIO — PMPM Member Revenue Model:

  Model architecture (bottoms-up):
    Driver 1: Employer group count (N groups)
    Driver 2: Members per group (by group — weighted average)
    Driver 3: PMPM rate per group (contract-specific)
    Revenue = Sum across all groups: (Members in group × PMPM rate for group × months active)
    
  Monthly revenue by employer group:
    Group A: [N] members × $[X] PMPM = $[X]/month
    Group B: [N] members × $[X] PMPM = $[X]/month
    [All groups summed]
    Total monthly revenue: $[X]K
    
  Payer/insurance revenue (separate stream):
    Fee-for-service visits: [N] visits × average reimbursement rate × collections rate
    Must be tracked separately from PMPM (different timing, different collection risk)
    
  Revenue growth assumptions (bottoms-up):
    New group adds: [N] new employer groups per quarter × average members per group × PMPM
    Member churn: Existing groups × estimated churn rate (historical)
    Rate escalation: Annual PMPM escalators per contract (typically 3-5% per year)
    Net member adds per month = New adds − Churned members
    
  Model check: Sum of all groups × their PMPM × months active = Total annual revenue
    This is the bottoms-up reconciliation to the top-line number
    
HIVE PARTNERS — Production Revenue Model:

  Model architecture (bottoms-up):
    Driver 1: Average daily production (BOE/day) — from production forecast
    Driver 2: WTI realized price (from forward curve or assumption)
    Driver 3: Quality/transportation differential (Uinta Basin discount to WTI, typically −$2 to −$5/bbl)
    Revenue = Production days × BOE/day × (WTI − Differential)
    
  Monthly revenue calculation:
    Production days in month × daily BOE × net realized price = Monthly oil revenue
    Plus: NGL (natural gas liquid) revenue if applicable
    Plus: Gas revenue if applicable
    Less: Production taxes (6-8% of gross revenue — a revenue contra)
    Net revenue to HIVE
    
  Production decline curve (for multi-year model):
    Existing wells: Apply decline rate (10-15%/year for conventional) to current production
    New wells: Add production from any new drilling program (one-time uplift)
    Maintenance capital: Workover program to maintain production levels
    
  Revenue model check: Net revenue ÷ BOE/day ÷ 365 = Realized price per BOE (should tie to WTI − differential)
    
COLUMN6 — Campaign Revenue Model:

  Model architecture (bottoms-up):
    Driver 1: Campaign count per month (N campaigns)
    Driver 2: Average campaign value per campaign ($X)
    Revenue = Campaign count × Average campaign value
    
  Campaign count drivers:
    Existing advertiser campaigns: Renewal rate % × campaigns in prior period
    New advertiser acquisition: Sales pipeline × close rate × average campaign value
    Agency relationships: Agency partner pipeline × campaigns allocated to Column6
    
  Average campaign value drivers:
    Campaign type mix: CTV vs. display (CTV campaigns are larger on average)
    Campaign duration: Longer flights = larger campaign value
    Scale: Are existing campaigns getting larger as the advertiser grows?
    
  Revenue timing: Campaign revenue is recognized as impressions are delivered (see fpa-revenue-recognition-tracker)
    Model the delivery schedule: When campaigns are active, revenue is recognized
    Pre-sold pipeline: Campaigns sold but not yet started go on the deferred revenue balance
    
  Revenue model check: Total campaign revenue ÷ Campaign count = Average campaign value (should tie to the driver)
  
REVENUE MODEL CONSTRUCTION RULES:
  1. All assumptions documented: Every input assumption has a source (historical data, contract, CEO guidance)
  2. Assumptions separate from outputs: Assumptions tab in Excel; all calculations reference assumptions, no hardcoding
  3. Model check cells: The model includes a check — does the bottoms-up tie to the top-line?
  4. Scenario toggle: Revenue model has Base/Bear/Bull scenarios using a scenario toggle
     Bear: Reduced new adds, higher churn, lower WTI, fewer campaigns
     Bull: Accelerated adds, lower churn, higher WTI, more campaigns
  5. Historical actuals anchored: The model is calibrated against historical actuals — if the model can't explain the past, it can't be trusted for the future
```

## Output Format

```markdown
# Revenue Model — [Entity] | [Period]
**Prepared by:** Dr. Lewis | **Last updated:** [Date] | **Scenario:** [Base]

---

## Revenue Summary

| Revenue Stream | [Month 1] | [Month 2] | [Month 3] | ... | FY Total |
|---------------|----------|----------|----------|-----|---------|
| [Employer Group A] | $[X]K | $[X]K | $[X]K | | $[X]K |
| [Employer Group B] | $[X]K | $[X]K | $[X]K | | $[X]K |
| [Payer/FFS revenue] | $[X]K | $[X]K | $[X]K | | $[X]K |
| **Total Revenue** | **$[X]K** | **$[X]K** | **$[X]K** | | **$[X]K** |

---

## Key Revenue Drivers

| Driver | Base Case | Bear Case | Bull Case |
|--------|----------|----------|----------|
| [Member count (Allevio)] | [1,180] | [1,050] | [1,350] |
| [PMPM blended rate] | $[X] | $[X] | $[X] |
| [Net new members/month] | [+12] | [+5] | [+20] |
| [WTI assumed (HIVE)] | $[X]/bbl | $[X]/bbl | $[X]/bbl |
| [Campaigns/month (Column6)] | [42] | [32] | [55] |

---

## Revenue Bridge (Actual to Forecast)

| Item | Amount |
|------|--------|
| LTM Revenue (actual) | $[X]K |
| + New employer groups (budget year) | +$[X]K |
| + Rate escalation (existing contracts) | +$[X]K |
| − Member churn (estimated) | −$[X]K |
| **Budgeted Revenue** | **$[X]K** |

---

## Model Check

| Check | Result | Status |
|-------|--------|--------|
| Bottoms-up sum equals top-line | $[X]K = $[X]K | ✅ Ties |
| Implied PMPM (revenue ÷ member-months) | $[X] | ✅ = driver assumption |
| Implied revenue per BOE | $[X] | ✅ = WTI − differential |
```

## Output Contract
- Driver-based, not percentage-based — Dr. Lewis never builds a revenue forecast as "last year + 20%"; that approach is not a forecast, it's a guess with a label; every revenue model starts from the specific drivers (members, BOE, campaigns) and builds up from there; the percentage growth is an output of the driver model, not an input; when the driver model shows 18% revenue growth, that 18% is grounded in specific assumptions about member additions, PMPM rates, and churn — not an aspiration
- Historical calibration is the model's credibility test — before projecting forward, Dr. Lewis runs the revenue model against the last 12 months of actuals; if the model would have predicted the historical revenue within 5%, it's calibrated; if it would have missed by 20%, the driver assumptions are wrong; calibration reveals whether the underlying driver relationships (members → revenue; BOE → revenue; campaigns → revenue) are modeled correctly; a model that can't explain the past cannot be trusted to forecast the future
- Each revenue stream modeled separately — Allevio's PMPM revenue and its fee-for-service payer revenue behave differently (different timing, different risk, different growth trajectory); Column6's direct-sold CTV campaigns and its programmatic campaigns have different value, different margin, and different risk; Dr. Lewis models each stream separately and sums them; blending different revenue streams into a single line item obscures the risk profile
- HITL required: Dr. Lewis builds the revenue model; CEO provides the operational inputs (which groups are likely to add members, what's in the sales pipeline, what the production plan is); CEO and Dr. Lewis review the driver assumptions together; Matt Mathison reviews the revenue model as part of the annual budget approval; any material revenue assumption change (new large employer group, production decline, campaign volume change) triggers a rolling forecast update — Dr. Lewis does not change the revenue model without CEO awareness

## System Dependencies
- **Reads from:** Executed customer contracts (for PMPM rates, group sizes — actual contract terms, not estimates); Allevio member roster (current member count by group); QuickBooks historical revenue (for calibration); HIVE production statements (Covercy — historical BOE and pricing for calibration); Column6 campaign tracking (actual campaigns and values — for calibration); fpa-annual-budget-builder (revenue is a primary input to the budget model); sales pipeline reports (CEO provides — for new business assumptions in the forward model)
- **Writes to:** Revenue model (SharePoint/Finance/<Company>/Models/[YYYY]_RevenueModel.xlsx); annual budget (revenue section); rolling forecast (revenue tab — updated monthly); board financial package (revenue analysis section); exit preparation data room (bottoms-up revenue model for buyer diligence — shows buyers that revenue growth is driven and defensible, not extrapolated)
- **HITL Required:** Dr. Lewis builds; CEO validates assumptions (new group additions, production plan, campaign pipeline); Matt Mathison approves annual budget revenue assumptions; any revenue model change >$50K full-year impact on EBITDA is flagged to Matt Mathison; driver assumptions that are based on conversations with customers (planned additions, expected renewals) are validated by the CEO who has the relationship — Dr. Lewis does not assume a customer will renew or add without CEO confirmation

## Test Cases
1. **Golden path:** Allevio annual budget revenue model → Current groups: 14, total 1,180 members; Group A (285 members × $82 PMPM = $23,370/month); Group B (220 members × $87 PMPM = $19,140/month); [all 14 groups listed]; payer/FFS: 220 visits/month × $65 average reimbursement × 93% collections = $13,299/month; Total monthly revenue: $104.5K; Annual: $1.254M; Budget-year new adds: CEO projects 3 new groups (avg 65 members, avg $87 PMPM) onboarding July, August, September; annual uplift: 65 × $87 × 6 months (avg) = $33,930 + $33,930 + $33,930 = wait, let me compute differently: July group: 65 × $87 × 6 = $33,930; August group: 65 × $87 × 5 = $28,275; September group: 65 × $87 × 4 = $22,620; Rate escalation: 5% of prior year contracts × 1,180 members × $85 PMPM = $5,100; Churn: estimated 3% of members = −35 members × $85 × 9 months avg = −$26,775; Budget revenue = $1,254K + $84,825 + $5,100 − $26,775 = $1,317K; model check: implied PMPM: $1,317K ÷ (1,180 + 65 new − 35 churn avg × 12 months) = $84.90 — ties to driver; model check passes
2. **Edge case:** HIVE production is declining faster than modeled — actual is 940 BOE/day vs. 1,000 BOE/day plan → Dr. Lewis updates the revenue model immediately: Revenue impact: 60 BOE/day × $47.50 net realized × 365 days = −$1.04M annually; vs. original plan $17.34M; revised: $16.30M revenue; EBITDA impact: 60 BOE × $47.50 − $18 LOE = $29.50 operating contribution × 365 = −$644K EBITDA vs. plan; Dr. Lewis updates the rolling forecast immediately and alerts Matt Mathison: "HIVE production has declined to 940 BOE/day vs. 1,000 BOE/day plan — a 6% shortfall that reduces full-year revenue by $1.04M and EBITDA by $644K. Root cause: CEO is investigating (possible formation water breakthrough in well #3). I'm updating the model to reflect 940 BOE/day and will revise upward if the intervention on well #3 recovers production. This is a material model change." Matt Mathison receives same day; rolling forecast updated; HIVE CEO initiates the investigation
3. **Adversarial:** The Column6 CEO builds their own revenue forecast in a spreadsheet showing $4.2M in revenue for the budget year (vs. Dr. Lewis's bottoms-up model of $2.8M) — claiming a "major new agency relationship" is not yet in the pipeline system → Dr. Lewis evaluates: $4.2M requires 75 campaigns/month at $56K average — significantly above the current 42 campaigns/month; the claimed "major new agency" would need to drive 33 additional campaigns/month; Dr. Lewis requests the details: "For the $4.2M forecast, I need to see: (1) which agency, (2) signed framework agreement or LOI, (3) timeline for campaign execution. Without documented evidence of the pipeline, I can't include $1.4M of revenue from an unconfirmed source in the budget. What I can do: include a 'new agency' line in the budget at 10 campaigns/month ($540K) — a conservative version of the upside that I'll increase as we get evidence. The base budget uses the bottoms-up model at $2.8M. The CEO's forecast of $4.2M would be the Bull scenario, clearly labeled as requiring the new agency to deliver." CEO agrees to document the pipeline; budget includes the conservative baseline with documented upside

## Audit Log
All revenue models retained by entity and year. Driver assumption documentation retained (what sources were used for each assumption). Calibration analysis retained (how the model would have performed against historical actuals). Annual budget revenue assumptions approved by Matt Mathison retained. Revenue model changes (rolling forecast updates) retained with date and reason for change.

## Deprecation
Retire when each portfolio company has a CFO who builds the annual revenue model from drivers — with Dr. Lewis reviewing the model for consistency with the financial plan and Matt Mathison approving the revenue assumptions in the annual budget.
