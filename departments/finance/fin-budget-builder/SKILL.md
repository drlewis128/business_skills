---
name: fin-budget-builder
description: "Build the annual operating budget for MBL Partners and portfolio companies. Use when the user says 'budget', 'build the budget', 'annual budget', 'operating budget', 'build a budget', 'budget for next year', 'what is the budget', 'budget process', 'budget submission', 'budget template', 'budget review', 'budget approval', 'headcount budget', 'expense budget', 'revenue budget', 'capex budget', 'departmental budget', 'entity budget', 'set the budget', 'approve the budget', 'revise the budget', 'reforecast', 'budget update', 'budget vs plan', 'budget assumptions', 'build the opex budget', 'budget by department', 'budget by quarter', 'quarterly budget', 'budget kickoff', or 'submit the budget'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--year <YYYY>] [--type <full|headcount|capex|reforecast>] [--action <build|review|approve|submit>]"
---

# Fin Budget Builder

Build the annual operating budget for MBL Partners and portfolio companies — producing the financial plan that translates strategic priorities (exec-annual-planning-kickoff) into specific revenue targets, expense limits, headcount commitments, and capital authorizations for the planning year. The MBL budget process follows a strict sequence: revenue drivers first, headcount second, discretionary expenses third, capex last — because every expense decision is a resource allocation decision and the budget is the financial expression of the operating priorities.

## When to Use
- Annual budget cycle (November-December; feeds exec-annual-planning-kickoff Phase 3)
- A new entity has been acquired and needs its first MBL-managed budget
- A mid-year reforecast is required (significant variance from plan)
- Matt Mathison asks "what's in the budget for [entity/category]?"
- A capital or headcount request needs to be evaluated against budget availability

## Budget Framework

```
BUDGET CONSTRUCTION SEQUENCE:

  STEP 1 — REVENUE BUDGET (Week 1):
    Purpose: Set the revenue target based on drivers, not aspirations
    
    Input: fin-financial-model (driver-based revenue projection)
    Process:
      □ Review current year actuals vs. prior budget
      □ Update driver assumptions based on current trajectory
      □ Set base case revenue by month (seasonality matters — Allevio OE season; HIVE production cycles)
      □ Set upside revenue (achievable with strong execution)
      □ Entity CEO reviews and commits to the base case
      
    Revenue budget rules:
      - Base case is the commitment; upside is the stretch goal
      - No top-down growth rates — all revenue built from drivers (fin-financial-model)
      - Allevio: employer group count is the primary revenue lever
      - HIVE: locked in by royalty contracts and WTI strip pricing
      - Column6: built from current IO pipeline + projected new agency wins
      
  STEP 2 — HEADCOUNT BUDGET (Week 2):
    Purpose: Personnel is typically 50-65% of operating expense; it's the most important budget decision
    
    Current headcount:
      □ List all current employees by role; department; fully-loaded cost
      □ Identify planned departures (known exits; end of contracts)
      □ Identify open roles being filled (already in process)
      
    New hire requests:
      □ Each request must be tied to a specific operating priority
      □ Format: "Role: [Title] | Quarter of hire: Q[X] | Fully-loaded cost: $[X] | Business case: [tied to which priority]"
      □ Fully-loaded cost = salary + benefits + payroll taxes + equipment + onboarding (1.25-1.35× base)
      □ Rule: hire behind the curve (revenue must be visible before adding headcount)
      
    Headcount budget approval:
      - Each new position requires entity CEO approval
      - Positions >$150K fully-loaded or Director+ level require Dr. Lewis review
      - VP+ positions require Matt Mathison approval
      
  STEP 3 — OPERATING EXPENSE BUDGET (Week 2):
    Categories to budget:
      □ Technology / SaaS: list every recurring subscription with renewal date and cost
      □ Professional services: legal; accounting; consulting (estimate by category)
      □ Marketing / BD: Allevio employer outreach; Column6 agency events; HIVE landowner relations
      □ Travel and entertainment: per-person limits by role; entity-specific (Allevio: clinical conferences)
      □ Office / facilities: rent; utilities; supplies
      □ Insurance: annual premium renewal estimates (fin-insurance-reviewer)
      □ Miscellaneous / contingency: 3% of total opex
      
    Expense budget rules:
      - No line item increased by more than 10% without a written business case
      - New vendors (not budgeted last year) require Dr. Lewis approval before inclusion
      - Any single expense >$25K/year gets a separate approval line
      
  STEP 4 — CAPITAL EXPENDITURE BUDGET (Week 3):
    For each capital request:
      □ Description of the investment
      □ Timing (quarter of spend)
      □ Total cost and year 1 cash outflow
      □ Expected life (how long will this asset generate value?)
      □ ROI estimate (when does this pay back? — ≤18 months operational; ≤24 months strategic)
      □ What happens if we don't make this investment?
      
    CapEx budget approval:
      Per exec-capital-allocation thresholds:
      - <$10K: Dr. Lewis
      - $10K-$50K: Dr. Lewis + entity CEO
      - $50K-$250K: Matt notification
      - >$250K: Matt explicit approval
      
  STEP 5 — BUDGET ASSEMBLY AND REVIEW (Week 3-4):
    Dr. Lewis assembles the full entity budget:
      □ Monthly P&L (revenue - COGS - opex = EBITDA)
      □ Monthly cash flow (EBITDA + working capital changes + capex)
      □ Headcount roster by month (opens, hires, departures tracked)
      □ Capital authorization schedule (what's approved to spend when)
      
    Review sequence:
      1. Entity CEO reviews: "Does this reflect your operating plan?"
      2. Dr. Lewis reviews: "Does this pass the capital and THRIVE filters?"
      3. Matt Mathison final review: "Is this the right investment for the portfolio priority?"
      4. Matt Mathison approves: "Budget is locked"
      
  BUDGET SUBMISSION DEADLINE:
    December 15 (per exec-annual-planning-kickoff Phase 3)
    Matt Mathison reviews December 16-20
    Budget locked by December 20
    Communicated to entity leadership January 1-15

REFORECAST PROTOCOL (mid-year only if warranted):
    Trigger: Variance >15% on revenue for 2 consecutive months
    Trigger: Material change in business model (new entity; lost major customer)
    Process: Rebuild revenue budget from updated drivers; hold headcount and opex unless Matt authorizes changes
    Not a trigger: One bad month; seasonal variation within expected range
```

## Output Format

```markdown
# Annual Budget — [Entity] — [Year]
**Built by:** Dr. Lewis | **Entity CEO:** [Name] | **Approved by:** Matt Mathison | **Locked date:** [Date]

---

## Budget Summary ($000s)

| Category | Q1 | Q2 | Q3 | Q4 | Full Year |
|----------|----|----|----|----|----------|
| Revenue | $X | $X | $X | $X | $X |
| COGS | $X | $X | $X | $X | $X |
| Gross profit | $X | $X | $X | $X | $X |
| Payroll (HC) | $X | $X | $X | $X | $X |
| Other opex | $X | $X | $X | $X | $X |
| Total opex | $X | $X | $X | $X | $X |
| EBITDA | $X | $X | $X | $X | $X |
| EBITDA % | X% | X% | X% | X% | X% |
| CapEx | $X | $X | $X | $X | $X |
| Free cash flow | $X | $X | $X | $X | $X |

---

## Headcount Plan

| Role | Current FTE | New hires (Q) | Departures | Year-end FTE | Fully-loaded cost |
|------|------------|--------------|-----------|-------------|-----------------|
| [Role] | [N] | [Q1/Q2/Q3/Q4] | [N] | [N] | $[X] |
| **Total** | **[N]** | **[N]** | **[N]** | **[N]** | **$[X]** |

---

## Capital Expenditure Plan

| Item | Q | Amount | Approval level | Status |
|------|---|--------|---------------|--------|
| [CapEx item] | Q[X] | $[X] | [Dr. Lewis/CEO/Matt] | [Approved/Pending] |

---

## Budget Assumptions

| Driver | Assumption | Source | Last validated |
|--------|-----------|--------|---------------|
| [Revenue driver] | [Value] | [Source] | [Date] |
```

## Output Contract
- Headcount first, expenses second — the headcount budget is the most important and most constrained line item; every other expense is easier to cut than a person who's already been hired; Dr. Lewis reviews every new headcount request before it goes into the budget and applies a simple test: "If we don't make this hire, what specifically doesn't get done?" Vague answers ("we need the bandwidth") don't advance; specific answers ("without a second clinical coordinator, we cannot onboard more than 2 new employer groups per quarter") do
- Revenue budget is the commitment — the entity CEO who signs off on the revenue budget is making a commitment to Matt Mathison; it is not a "target" or a "hope"; if the CEO doesn't believe the revenue budget is achievable, the right time to say so is in December, not in March; Dr. Lewis surfaces this explicitly in the budget review by asking the entity CEO: "Are you committing to this revenue number? What would have to be true for you to miss it?"
- Budget is locked December 20 — no changes after December 20 without a reforecast trigger (>15% variance for 2 consecutive months); a budget that can be revised whenever it's inconvenient is not a budget; it's an aspirational document with no accountability attached; the budget's purpose is to create the standard against which actual performance is measured (fin-variance-analyzer)
- HITL required: entity CEO must review and commit to the budget before Dr. Lewis submits it to Matt; Matt Mathison approves every entity budget; capital requests within the budget are approved per exec-capital-allocation thresholds at the time of spend (budget inclusion is not spend authorization — each expenditure still requires appropriate approval); all reforecast decisions require Matt Mathison awareness and approval

## System Dependencies
- **Reads from:** fin-financial-model (driver-based revenue and expense projections); exec-annual-planning-kickoff (strategic priorities that the budget must fund); exec-capital-allocation (capital thresholds and reserve requirements); QuickBooks (prior year actuals — the base for next year's budget); entity headcount rosters (current FTEs and fully-loaded costs)
- **Writes to:** Budget files (SharePoint → Finance → Budgets → [Entity] → [YYYY]); fin-variance-analyzer (the budget is the benchmark against which actual results are compared monthly); exec-capital-allocation (approved CapEx schedule feeds into capital deployment tracking); fin-capital-deployment-tracker (approved capital spend by entity and quarter); exec-board-reporting (budget summary for the board package)
- **HITL Required:** Entity CEO commits to revenue budget; Matt Mathison approves all entity budgets; individual capital expenditures >$10K require entity CEO concurrence regardless of budget inclusion; VP+ headcount requests require Matt approval; reforecast requires Matt Mathison authorization; budget lock is Matt Mathison decision

## Test Cases
1. **Golden path:** Column6 FY2027 budget; revenue: 8 active agency relationships × avg $185K ARR + 1 new agency in Q2 + 1 new agency in Q4 = $1.68M; Column6 CEO reviews: "Q2 agency win is probable — we have LOI conversations active. Q4 is uncertain." Dr. Lewis: "I'll put Q4 as upside; build the base on 9 agencies." Headcount: current 6 FTEs; 1 new account manager in Q3 ($95K base; $121K fully-loaded). Tech: $18K DSP tooling upgrade in Q1 (Dr. Lewis approval). CapEx: none. EBITDA: $287K (17.1%). Matt reviews December 18: "The Q3 account manager — what does that unlock?" Dr. Lewis: "At $2M ARR we're hitting the $333K/CSM capacity limit. The hire unlocks the Q4 acquisition target." Matt: "Approved. Lock it."
2. **Edge case:** Allevio submits a headcount budget with 6 new hires (all labeled "critical") → Dr. Lewis: "I need to prioritize these. Of the 6 requests, which 2 are essential to hit the revenue commitment? Here's my read: the 2nd clinical coordinator is directly tied to the 4 new employer group target (without it, we can onboard 2 max). The billing specialist is needed for the AdvancedMD AR backlog — that's a cash flow risk if we don't address it. The other 4 are capacity investments that make sense but aren't revenue-blocking. My recommendation: fund the 2 essential roles now; conditional approval on the other 4 subject to Q1 revenue being on track. If Q1 closes at or above plan, we release the Q2 and Q3 hires." Entity CEO: "Agreed."
3. **Adversarial:** Entity CEO wants to skip the budget process ("just let us execute") → Dr. Lewis: "The budget isn't bureaucracy — it's the instrument that tells Matt Mathison how much capital to deploy to your entity and what he's getting for it. Without a budget, every expense decision becomes a negotiation, and every capital request is improvised. More practically: Matt uses the budget to set the portfolio capital allocation in December. If your entity doesn't submit a budget, you don't get capital allocated in advance — you get it reactively, which means slower decisions and higher cost. The budget process takes 3 weeks. It saves 12 months of friction. Let's start with the revenue driver page."

## Audit Log
All budget versions retained (draft; CEO review; Matt approval; locked). Headcount request tracking (what was requested; what was approved; why). CapEx authorization records. Reforecast records (trigger; what changed; new numbers; Matt approval). Budget lock date and approver records.

## Deprecation
Retire when each entity has a Controller or CFO who manages the entity budget process — with Dr. Lewis providing portfolio-level budget review and Matt Mathison retaining approval authority for all entity budgets and any reforecast decisions.
