---
name: fpa-cost-structure-analyzer
description: "Analyze fixed vs. variable cost structure and operating leverage. Use when the user says 'cost structure', 'fixed vs variable costs', 'operating leverage', 'breakeven analysis', 'break-even', 'contribution margin', 'variable cost', 'fixed cost', 'cost model', 'analyze costs', 'cost breakdown', 'cost base', 'cost profile', 'margin structure', 'operating leverage analysis', 'cost efficiency', 'scaling costs', 'do costs scale with revenue', 'cost as percent of revenue', 'COGS structure', 'expense structure', or 'profitability model'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY or trailing-N-months>] [--focus <cogs|opex|all>] [--action <analyze|model|present>]"
---

# Cost Structure Analyzer

Analyze the fixed vs. variable cost structure of MBL portfolio companies — identifying operating leverage, calculating breakeven revenue, and modeling how EBITDA changes as revenue scales. Cost structure analysis answers two questions that drive investment and scaling decisions: (1) How much does it cost to serve one more unit of revenue? (variable cost analysis), and (2) What happens to EBITDA if revenue grows 20%? (operating leverage). Dr. Lewis analyzes cost structure quarterly and uses it to inform both the budget build and capital allocation decisions.

## When to Use
- Before any growth investment decision — does the cost structure support the expected margin expansion?
- Revenue is growing but EBITDA margin is flat or declining — investigate fixed vs. variable cost mix
- Annual budget process — cost structure assumptions underpin the EBITDA sensitivity table
- Exit preparation — buyers model the operating leverage; Dr. Lewis ensures the company's own analysis is accurate
- A portfolio company is considering pricing changes — understand the contribution margin impact

## Cost Structure Analysis Framework

```
Cost classification:

  VARIABLE COSTS:
    Definition: Costs that increase proportionally with revenue (or with service delivery volume)
    Examples:
      Allevio: Clinician compensation tied directly to patient volume; Marshall Medical Billing fees (% of collections)
      HIVE: LOE (Lease Operating Expense — per-BOE cost that scales with production)
      Column6: Media buy costs (direct percentage of campaign revenue); data costs per campaign
    Behavior: If revenue doubles, variable costs approximately double too
    Variable cost ratio = Variable costs ÷ Revenue = how many cents of each revenue dollar go to variable costs
    Gross margin = 1 − Variable cost ratio = how many cents of each revenue dollar remain after variable costs
    
  FIXED COSTS:
    Definition: Costs that remain constant regardless of revenue volume (within a relevant range)
    Examples (across all entities):
      Rent / Facilities
      IT and software infrastructure
      Insurance (D&O, general liability, etc.)
      Depreciation and Amortization
      Most salaried G&A staff (CEO, controller, HR)
    Behavior: Fixed costs do not increase when revenue increases → operating leverage
    
  SEMI-VARIABLE (STEP) COSTS:
    Definition: Costs that are fixed within a range but increase when revenue crosses a threshold
    Examples:
      Allevio: Clinicians are fixed until member volume requires adding a new provider (step cost)
      Column6: Account managers can handle up to $X of revenue each; adding $1M of revenue requires a new AM
      HIVE: Operator fees are variable; but management oversight (Dr. Lewis time) is fixed
    These are the most important costs to model because they determine the scaling economics
    
  CONTRIBUTION MARGIN ANALYSIS:
    Contribution margin = Revenue − Variable costs (COGS + variable-percentage expenses)
    Contribution margin % = Contribution margin ÷ Revenue
    This is the margin available to cover fixed costs + generate EBITDA
    
  OPERATING LEVERAGE:
    Definition: The degree to which a change in revenue produces a magnified change in EBITDA
    High operating leverage: Mostly fixed costs → 10% revenue growth produces >10% EBITDA growth
    Low operating leverage: Mostly variable costs → 10% revenue growth produces ~10% EBITDA growth
    Formula: EBITDA % change ÷ Revenue % change = Operating leverage ratio
    Target: Operating leverage >1.5× (EBITDA should grow 1.5× as fast as revenue)
    
  BREAKEVEN ANALYSIS:
    Breakeven revenue = Fixed costs ÷ Contribution margin %
    This is the revenue level at which EBITDA = 0 (all fixed costs are covered)
    Margin of safety = (Actual revenue − Breakeven revenue) ÷ Actual revenue
    Higher margin of safety = more buffer before a revenue decline causes losses
    
Portfolio entity cost structure profiles:

  ALLEVIO (MSO/Healthcare):
    Variable costs: Clinical staff compensation (can be tied to patient volume via PRN/part-time); 
                   billing fees (% of collections)
    Fixed costs: Admin staff salaries; rent/facility; insurance; IT; Dr. Lewis allocation
    Step costs: Adding a full-time clinician (crosses a member count threshold)
    Key insight: Allevio has moderate-to-high operating leverage once clinical capacity is covered; 
                 each additional employer group adds revenue with minimal incremental cost above the 
                 clinical capacity needed
    
  HIVE PARTNERS (O&G):
    Variable costs: LOE per BOE (essentially all of COGS); production taxes
    Fixed costs: Very limited — most HIVE costs are variable (LOE) or allocated management time
    Step costs: Adding a new well (large, lumpy CapEx that adds significant production capacity)
    Key insight: HIVE has low operating leverage in the traditional sense because LOE is 
                 highly variable with production; the key profitability driver is the WTI price, 
                 not the cost structure
    
  COLUMN6 (CTV/Programmatic):
    Variable costs: Media buy costs (direct % of campaign revenue); data costs
    Fixed costs: Account management staff; technology/platform; Dr. Lewis allocation; 
                 executive compensation
    Step costs: Adding an account manager (each AM handles up to ~$1.5M in campaigns)
    Key insight: Column6 has meaningful operating leverage in G&A; as revenue grows, 
                 the AM and platform costs are largely step costs (not continuous variable); 
                 the gross contribution margin (~45%) is healthy but needs scale to absorb G&A
```

## Output Format

```markdown
# Cost Structure Analysis — [Entity] [Period]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Revenue (LTM):** $[X]K

---

## Cost Breakdown by Type

| Cost Category | LTM Amount | % of Revenue | Type |
|--------------|-----------|-------------|------|
| [Clinical compensation] | $[X]K | [X]% | Variable |
| [Billing fees] | $[X]K | [X]% | Variable |
| [Admin salaries] | $[X]K | [X]% | Fixed |
| [Rent/Facilities] | $[X]K | [X]% | Fixed |
| [IT/Software] | $[X]K | [X]% | Fixed |
| [Insurance] | $[X]K | [X]% | Fixed |
| **Total Variable** | **$[X]K** | **[X]%** | |
| **Total Fixed** | **$[X]K** | **[X]%** | |
| **Total Costs** | **$[X]K** | **[X]%** | |

---

## Operating Leverage Profile

| Metric | Value |
|--------|-------|
| Revenue | $[X]K |
| Variable costs | $[X]K ([X]%) |
| **Contribution margin** | **$[X]K ([X]%)** |
| Fixed costs | $[X]K ([X]%) |
| **EBITDA** | **$[X]K ([X]%)** |
| **Breakeven revenue** | **$[X]K** (fixed costs ÷ CM%) |
| **Margin of safety** | **[X]%** |
| **Operating leverage** | **[X.X]×** |

---

## Scaling Model

*"What happens to EBITDA if revenue grows X%?"*

| Revenue Growth | New Revenue | Variable Costs | Fixed Costs | EBITDA | EBITDA Margin |
|---------------|------------|----------------|-------------|--------|--------------|
| −10% | $[X]K | $[X]K | $[X]K | $[X]K | [X]% |
| Base (0%) | $[X]K | $[X]K | $[X]K | $[X]K | [X]% |
| +10% | $[X]K | $[X]K | $[X]K | $[X]K | [X]% |
| +25% | $[X]K | $[X]K | $[X]K | $[X]K | [X]% |
| +50% | $[X]K | $[X]K | $[X]K | $[X]K | [X]% |

**Key insight:** At [X]% revenue growth, EBITDA grows [X]% — [X.X]× operating leverage. The fixed cost base begins to show its leverage at the [+25%] revenue level.

---

## Step Cost Watch Items

| Step Cost | Current | Trigger Level | Incremental Cost |
|----------|---------|--------------|-----------------|
| [New clinician — Allevio] | [N] providers | [N]+[X]K members | $[X]K/year FLM |
| [Account manager — Column6] | [N] AMs | $[X]K additional revenue | $[X]K/year FLM |

*If any trigger level is within [N]% of current volume, discuss with CEO.*
```

## Output Contract
- Classify every cost line — a cost structure analysis that only shows "COGS" and "Operating Expenses" is not an analysis; it's a P&L summary; Dr. Lewis classifies every material cost line as Variable, Fixed, or Step; the classification is not always obvious (a salesperson who is commissioned is variable; a salesperson on base salary is fixed); where costs are mixed, Dr. Lewis splits them (e.g., a salesperson at 70% base + 30% commission = 70% fixed, 30% variable); the classification enables the contribution margin and operating leverage calculations
- Operating leverage is communicated in plain language — the [X.X]× operating leverage ratio is useful for financial analysis but not always intuitive for business leaders; Dr. Lewis translates it: "For every dollar of revenue Allevio adds above the current base, 72 cents flows to EBITDA — because our fixed costs are already covered by the current revenue run rate"; this framing makes the scaling economics concrete and motivates revenue growth investment
- Step costs are the most strategically important — understanding when the next step cost is triggered (when does the next clinician need to be hired? when does the next account manager join?) is critical for margin planning; adding a step cost before the revenue supports it temporarily compresses EBITDA margin; adding it too late creates delivery constraints that limit revenue; Dr. Lewis tracks the revenue trigger for each step cost and pre-warns the CEO 60-90 days before the trigger is reached
- HITL required: Dr. Lewis analyzes quarterly; CEO reviews as part of budget planning and quarterly financial review; Matt Mathison reviews the cost structure in the board package (scaling model section); any cost reclassification that materially changes the operating leverage calculation is discussed with the CEO before being incorporated into board materials; step cost decisions (hire approval) require CEO + approval matrix adherence

## System Dependencies
- **Reads from:** QuickBooks P&L (all cost lines, LTM); payroll records (fixed vs. variable compensation); billing/vendor contracts (fixed vs. % of revenue fees — Marshall Medical, media buys); HIVE: LOE detail from Covercy (per-BOE vs. fixed); headcount roster (fixed salary vs. variable compensation); CapEx and D&A schedule; annual budget (for comparison to actuals)
- **Writes to:** Cost structure analysis (SharePoint/Finance/<Company>/Analysis/CostStructure_[Period].xlsx); annual budget (variable cost rate assumptions); fpa-scenario-planner (variable cost ratio for EBITDA sensitivity); board financial package (cost structure and operating leverage section); exit data room (for buyer due diligence on scalability)
- **HITL Required:** Dr. Lewis classifies and analyzes; CEO reviews and validates cost classifications (CEO knows which costs are truly fixed or variable); Matt Mathison receives in board package; any major cost reclassification discussed with CEO first

## Test Cases
1. **Golden path:** Allevio cost structure analysis — LTM revenue $1.18M → Variable costs: clinician compensation $392K (part-time/PRN tied to patient volume, 33.2%); Marshall Medical Billing fees $47K (4% of collections, 4.0%); supplies $12K (1.0%); total variable $451K (38.2%); contribution margin $729K (61.8%); Fixed costs: admin salaries $185K (15.7%); rent $42K (3.6%); IT/software $28K (2.4%); insurance $18K (1.5%); D&A $22K (1.9%); Dr. Lewis allocation $36K (3.1%); total fixed $331K (28.0%); EBITDA $398K (33.7%); Breakeven: $331K ÷ 61.8% = $535K (Allevio is $645K above breakeven — 55% margin of safety); Operating leverage: at +10% revenue ($118K), EBITDA grows $73K (+18.3%) → 1.83× operating leverage; scaling model shows strong EBITDA margin expansion as fixed costs are already covered
2. **Edge case:** Allevio hires a full-time clinician (step cost) before the member count triggers it → Dr. Lewis models the step cost impact: clinician FLM $85K/year; current member count: 1,155; the clinician is needed at 1,350 members (based on current clinician utilization); adding the hire today (195 members early): EBITDA impact = −$85K annually until the member trigger is hit; breakeven now $430K (vs. $535K before hire); margin of safety drops from 55% to 46%; Dr. Lewis presents: "Hiring now costs $85K against a trigger that's 17% member growth away. If we can close [N] employer groups in 3 months, the hire is justified by Q4. If we can't, we're carrying the cost 6-9 months early. Recommendation: defer the hire until the pipeline converts 75 of the 195 needed members — then hire in advance of the trigger." CEO agrees to the milestone-based hire decision
3. **Adversarial:** The Column6 CEO says "all our costs scale with revenue — we have no operating leverage" → Dr. Lewis examines the P&L: media buy costs do scale with revenue (variable), but the G&A (AM salaries, technology, insurance) is fixed; at $3M revenue, G&A is $820K (27%); at $4M revenue (33% growth), G&A stays at ~$850K (21% of revenue); the EBITDA margin expands from 18% to 24%; Dr. Lewis shows: "At your current cost structure, 33% revenue growth produces 78% EBITDA growth — that's 2.4× operating leverage. The G&A is not variable; it's a step cost that will stay flat until you hit the next AM capacity threshold at $4.5M." The CEO updates their cost model understanding; this changes the conversation about whether to invest in revenue growth

## Audit Log
All cost structure analyses retained by period. Variable/fixed classification decisions documented with rationale. Step cost trigger levels maintained and monitored. Operating leverage history (8+ quarters). Exit data room cost structure presentation retained. Scaling model assumptions documented.

## Deprecation
Retire when each portfolio company has a CFO who maintains the cost structure model — with Dr. Lewis reviewing the model before board presentations and Matt Mathison reviewing the operating leverage section in the board package.
