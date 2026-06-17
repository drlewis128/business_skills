---
name: fpa-annual-budget-builder
description: "Build the annual operating budget from driver assumptions. Use when the user says 'annual budget', 'build the budget', 'budget process', 'budget season', 'operating budget', 'next year budget', 'budget plan', 'budget model', 'set the budget', 'budget preparation', 'annual plan', 'AOP', 'annual operating plan', 'next year forecast', 'budget submission', 'department budget', 'budget template', 'budget assumptions', or 'build a budget'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <YYYY>] [--method <driver-based|zero-based|incremental>] [--action <build|review|present>]"
---

# Annual Budget Builder

Build the annual operating budget for MBL portfolio companies — starting from business driver assumptions, not last year's numbers. A driver-based budget forces honest conversation about what activity levels are actually expected next year (How many members will Allevio add? What will HIVE's average production rate be? How many campaigns will Column6 close?), produces a P&L that is defensible at the line level, and creates the variance baseline that makes the monthly budget vs. actual meaningful throughout the year. Dr. Lewis leads the budget build; the CEO and Matt Mathison approve the final version.

## When to Use
- October-November: Annual budget season for the following fiscal year
- After a major business event that invalidates the existing budget (acquisition, loss of key customer)
- A new portfolio company has no budget — build the first budget
- Matt Mathison requests a revised budget (new year plan after significant changes)

## Annual Budget Framework

```
Budget build timeline (example: fiscal year Jan-Dec):

  SEPTEMBER: Kick-off
    Dr. Lewis issues the budget calendar and template to department heads
    CEO communicates top-down guidance: key priorities, revenue targets, hiring plans
    
  OCTOBER: Driver assumptions
    Revenue drivers finalized (by customer segment, product, entity)
    Headcount plan finalized (by role and department; start dates specific)
    CapEx plan finalized (by project; approved by CEO)
    
  NOVEMBER: Model build
    Dr. Lewis builds the integrated P&L model from assumptions
    Department heads review their expense sections
    Dr. Lewis produces the EBITDA sensitivity table
    CEO and Matt Mathison review the first draft
    
  DECEMBER: Finalization
    Revisions incorporated; final P&L, cash flow, and balance sheet complete
    Matt Mathison approves final budget
    Budget loaded into QuickBooks (or the management reporting system) by January 1

Driver-based budget construction:

  REVENUE (build from drivers, not percentages):
  
    ALLEVIO — PMPM model:
      Revenue = Sum(Employer Group × Member Count × PMPM Rate)
      Current groups: [List with expected member counts and rates]
      New groups expected in [Year]: [Names; expected start dates; expected member counts]
      Churn assumption: Which groups are at risk? Conservative scenario drops them entirely
      PMPM rate increases: Contracted rate increases vs. new contract negotiations
      
    HIVE PARTNERS — Production model:
      Revenue = Net Production (BOE/day) × Working Interest % × WTI Price Assumption
      Production decline curve: Industry standard ~10-15%/year for existing wells; new well additions modeled separately
      WTI price: Base ($65/bbl), Bear ($50/bbl), Bull ($80/bbl)
      Differentials: Uinta Basin crude trades at a discount to WTI — model the basis differential
      LOE reimbursements: Estimated separately based on production
      
    COLUMN6 / SIPROCAL — Campaign model:
      Revenue = Sum(Advertiser × Campaigns × Average Campaign Value)
      Pipeline-to-close rate by segment: New advertiser vs. repeat advertiser
      Average campaign value assumption (CTV vs. digital)
      Seasonal pattern: Q4 typically highest (holiday advertising); model the quarterly split
      
  COST OF GOODS SOLD (direct delivery costs):
    Allevio: Clinician compensation; Marshall Medical Billing fees; supplies
    HIVE: LOE (per-BOE cost assumption); production taxes; operator fees
    Column6: Media buy costs; platform fees; data costs per campaign
    
  OPERATING EXPENSES (bottom-up by department):
    Each department head submits: headcount plan + non-headcount expenses
    Dr. Lewis validates: Is headcount timing consistent with the revenue plan?
    Dr. Lewis challenges: Is any line item growing faster than revenue without explanation?
    
  HEADCOUNT COST CALCULATION:
    For each new hire: Salary + Benefits + Payroll taxes + Equipment + Recruiting
    Fully-loaded cost multiplier: 1.25×-1.35× of base salary
    Pro-rate by start date: A hire starting July 1 = 50% annual cost in Year 1
    
  EBITDA BUILD:
    Revenue [drivers]
    − COGS [direct costs]
    = Gross Profit [gross margin %]
    − G&A [headcount + non-headcount]
    − Sales & Marketing [if applicable]
    − R&D / Product [if applicable]
    = EBITDA [target margin %]
    
  SENSITIVITY TABLE (required in every budget):
    What happens to EBITDA if:
    Revenue is 10% below plan?
    Revenue is 20% below plan?
    Headcount exceeds plan by 2 FTE?
    HIVE WTI price drops to $50/bbl?
    Allevio loses its largest employer group?
    
  BUDGET APPROVAL PROCESS:
    Draft 1: Dr. Lewis → CEO (internal review, no Matt Mathison yet)
    Draft 2: CEO-approved revisions → Matt Mathison review (2-3 week window)
    Final: Matt Mathison approval → load into systems → communicate to teams
    Matt Mathison approval is required; CEO cannot unilaterally approve the annual budget
```

## Output Format

```markdown
# Annual Operating Budget — [Entity] [Fiscal Year]
**Version:** Draft [N] / Final | **Date:** [Date]
**Prepared by:** Dr. Lewis | **CEO reviewed:** ✅/⚠️ | **Matt Mathison approved:** ✅/⚠️

---

## Key Budget Assumptions

| Driver | [Year] Assumption | Basis | Risk |
|--------|-----------------|-------|------|
| Allevio members (EOY) | [N] | Current groups + [N] new expected | [Group X at risk — no contract yet] |
| HIVE average BOE/day | [N] | Production decline curve −12%/yr | WTI <$50/bbl stress case |
| Column6 campaigns | [N] | [N] new + [N] repeat at avg $[X]K | Advertising market softness |
| Total headcount (EOY) | [N] FTE | [N] new hires across portfolio | [$3.2M salary risk if all hired] |
| WTI base price | $[X]/bbl | Forward curve + management view | Bear $50; Bull $80 |

---

## Income Statement Budget

| | Q1 | Q2 | Q3 | Q4 | **Full Year** |
|--|----|----|----|----|-------------|
| Revenue | $[X]K | $[X]K | $[X]K | $[X]K | **$[X]K** |
| COGS | ($[X]K) | ($[X]K) | ($[X]K) | ($[X]K) | **($[X]K)** |
| **Gross Profit** | **$[X]K** | **$[X]K** | **$[X]K** | **$[X]K** | **$[X]K** |
| **Gross Margin** | [X]% | [X]% | [X]% | [X]% | **[X]%** |
| Operating Expenses | ($[X]K) | ($[X]K) | ($[X]K) | ($[X]K) | **($[X]K)** |
| **EBITDA** | **$[X]K** | **$[X]K** | **$[X]K** | **$[X]K** | **$[X]K** |
| **EBITDA Margin** | [X]% | [X]% | [X]% | [X]% | **[X]%** |

---

## EBITDA Sensitivity

| Scenario | Revenue Impact | EBITDA Impact | EBITDA Margin |
|---------|--------------|--------------|--------------|
| Base case | — | $[X]K | [X]% |
| Revenue −10% | ($[X]K) | ($[X]K) | [X]% |
| Revenue −20% | ($[X]K) | ($[X]K) | [X]% |
| HIVE WTI $50/bbl | ($[X]K) | ($[X]K) | [X]% |
| Allevio loses [Group X] | ($[X]K) | ($[X]K) | [X]% |
| +2 FTE ahead of plan | — | ($[X]K) | [X]% |

---

## Headcount Plan

| Department | Current | Net New | EOY | Cost | Start Dates |
|-----------|---------|--------|-----|------|------------|
| Allevio Clinical | [N] | +[N] | [N] | $[X]K | [Months] |
| Allevio G&A | [N] | +[N] | [N] | $[X]K | [Months] |
| HIVE | [N] | 0 | [N] | $[X]K | — |
| MBL HoldCo | [N] | +[N] | [N] | $[X]K | [Month] |
| **Total** | **[N]** | **+[N]** | **[N]** | **$[X]K** | |

---

## Matt Mathison Approval Brief

**Budget summary — [Entity] [Year]:** Revenue $[X]M (+[X]% vs. [prior year]); EBITDA $[X]M ([X]% margin); [N] FTE at EOY (+[N] net adds); key risks: [1-2 sentences]. Recommendation: approve for loading into systems effective January 1.
```

## Output Contract
- Drivers before percentages — a budget built by taking last year's P&L and adding 10% everywhere is not a budget; it's a projection with an aspirational overlay; every revenue line must be built from a driver (members × rate, BOE/day × price, campaigns × average value); every major opex line must be built from headcount plans and specific expense items; Dr. Lewis forces the driver-based build because it is the only way to have an honest conversation about whether the budget is achievable — if the driver assumptions are challenged (are we really going to add 200 members next year given our current pipeline?), the budget gets revised; if the budget is built by percentages, that conversation never happens and the team commits to targets that have no operational backing
- Sensitivity table is not optional — a budget that only shows the base case is incomplete; every MBL portfolio budget includes a sensitivity table showing EBITDA at revenue −10% and revenue −20%, plus entity-specific stress scenarios (HIVE at $50/bbl WTI; Allevio losing its largest employer group); the sensitivity table answers the question Matt Mathison will always ask: "what happens if things don't go as planned?"; if the bear case produces a positive EBITDA, the company can absorb the downside; if the bear case produces a cash crisis, the budget needs either a revenue risk mitigation plan or a cost contingency plan
- Matt Mathison approval is the gate — the CEO can approve department-level spending within their authority, but the annual budget is the company's operating plan for the full year; Matt Mathison reviews and approves it before it becomes official; Dr. Lewis delivers the budget to Matt Mathison with a concise brief (the output format above) — not a 40-page model dump; Matt Mathison's approval is documented; Dr. Lewis does not load the budget into systems or communicate it to the team before Matt Mathison's approval is received
- HITL required: Dr. Lewis builds the model; CEO reviews and revises before Matt Mathison; Matt Mathison approves the final budget; headcount additions above the approved headcount plan require a separate approval (not assumed from the budget); CapEx above the approved CapEx plan requires a separate approval; any budget revision mid-year (reforecast) requires the same approval chain as the original budget

## System Dependencies
- **Reads from:** Prior year actuals (QuickBooks); current year actuals YTD; revenue contracts and member rosters (Allevio); HIVE production data (Covercy); Column6 pipeline (CRM); compensation data (payroll system); department head budget submissions
- **Writes to:** Budget model (SharePoint/Finance/<Company>/Budget/[Year]/); QuickBooks budget load (for BvA reporting); Matt Mathison approval brief; CEO communication to teams; planning calendar updates
- **HITL Required:** Dr. Lewis builds; CEO reviews and revises; Matt Mathison approves final; budget loaded into systems only after Matt Mathison approval; mid-year revisions require same approval chain

## Test Cases
1. **Golden path:** Allevio FY2027 budget — October through December process → Dr. Lewis issues budget template October 1; CEO provides guidance: target EBITDA $850K (up from $650K actual); Dr. Lewis interviews the medical director on realistic member adds (base: +150 members; bear: +50; bull: +300); Dr. Lewis builds the revenue model: current 1,200 members × $85 PMPM = $1,224K; +150 new × $87 PMPM (Jan-Dec avg) = +$156K; total revenue base $1,380K; COGS: clinical staff 65% of revenue = $897K; gross profit $483K; G&A: 2 new hires in Q2 ($85K × 8 months = $57K); other opex $120K; EBITDA $306K (initial draft — misses $850K target); Dr. Lewis presents the gap to CEO: EBITDA target requires either +350 members (Bull case) or a 10% PMPM rate increase on renewal; CEO decides: target +250 members (achievable) + 5% PMPM rate increase on renewals; model revised; EBITDA $780K (within 8% of target); draft sent to Matt Mathison; Matt approves with comment "push for the Bull case on member adds"; final budget $780K EBITDA; loaded into QuickBooks January 1
2. **Edge case:** HIVE budget — WTI oil prices are volatile; how do we budget? → Dr. Lewis sets the base WTI assumption at the current 12-month forward curve average ($67/bbl); builds the full model at base; runs Bear ($50/bbl) and Bull ($80/bbl) scenarios; at $50/bbl, HIVE EBITDA is negative (-$85K) — cash flow requires a draw on the LOC; at $67/bbl, EBITDA is $320K; at $80/bbl, EBITDA is $520K; Dr. Lewis presents the scenario table to Matt Mathison: "The budget at $67/bbl base is achievable. At $50/bbl (a tail risk), HIVE would need to draw ~$100K on the LOC. Our stress protocol (WTI <$48/bbl) would pause discretionary CapEx. I recommend approving the base case budget with explicit acknowledgment that the bear scenario may require LOC access." Matt Mathison approves with the LOC contingency documented
3. **Adversarial:** The Allevio CEO says "just add 15% to last year's revenue" → Dr. Lewis declines to build the budget on a percentage assumption: "A 15% revenue increase for Allevio means adding approximately 180 members in the year. Our current pipeline has 60 employer group prospects. I need us to map the expected contract starts by quarter — which groups are we confident will close, which are maybes, and which are in early stage? Let's build the member add plan first, then we'll see what the revenue number actually comes out to." If the member plan can only support 12% growth, the budget says 12%; Dr. Lewis does not inflate the budget to satisfy a top-line goal and then hope the business catches up to it; a sandbagged budget (built low intentionally) is equally problematic — Dr. Lewis builds to the realistic most-likely case

## Audit Log
All budget drafts retained with version history. Assumption documentation retained. CEO review records retained. Matt Mathison approval retained. Budget model files retained (Excel/Sheets). QuickBooks budget load confirmation retained. Any mid-year budget revision records retained with approval.

## Deprecation
Retire when each portfolio company has a CFO who leads the annual budget process — with Dr. Lewis reviewing the model, Matt Mathison approving the final, and the budget process becoming a self-sustaining annual function.
