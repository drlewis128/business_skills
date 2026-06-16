---
name: annual-budget-builder
description: "Build an annual operating budget. Use when the user says 'annual budget', 'build the budget', 'budget for next year', 'annual plan', 'operating budget', 'create the budget', 'financial plan', 'next year budget', 'budget planning', 'departmental budget', 'company budget', or 'prepare the annual budget'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <YYYY>] [--approach <zero-based|prior-year-plus|driver-based>]"
---

# Annual Budget Builder

Build the annual operating budget for an MBL portfolio company — a forward-looking financial plan that commits to specific revenue, expense, and cash flow targets for the year. The budget is the primary management accountability tool: it establishes what the business intends to achieve, against which actual results will be measured every month. A budget built on wishful thinking destroys accountability. A budget built on bottom-up drivers creates alignment and gives management a real operating framework.

## When to Use
- Q4 budget planning season — building next year's budget
- A new portfolio company needs its first formal budget
- Matt Mathison asks "what's the plan for next year?"
- Annual board approval of the budget is required
- A significant business change (new product, acquisition, restructuring) requires a revised annual plan

## Budget Design Philosophy

```
Three budget approaches — choose based on company maturity:

1. Driver-based (preferred): Build revenue from units × price, expenses from
   headcount plan, and model the P&L from the ground up. Most accurate
   and most useful for accountability.

2. Zero-based: Each expense line must be justified from zero.
   Good for companies with uncontrolled cost growth or new entities.
   Time-intensive — use when discipline is the primary goal.

3. Prior-year-plus: Start with last year's actuals and apply a % adjustment.
   Fastest but least rigorous. Use only for stable businesses where
   prior year is a reliable base.

MBL default: Driver-based. It creates discussion around the right
assumptions, not just the right numbers.
```

## Output Format

```markdown
# Annual Budget — <Company Name>
**Year:** <YYYY>
**Approach:** Driver-based / Zero-based / Prior-year-plus
**Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison
**Board approval date:** <Date>
**Status:** Draft v[N] / Board-approved final

---

## Budget Summary (One-Page View)

| | <YYYY> Budget | <YYYY-1> Actual | YoY Growth |
|---|---|---|---|
| **Revenue** | **$[X]** | **$[X]** | **[X%]** |
| [Revenue stream 1] | $[X] | $[X] | [X%] |
| [Revenue stream 2] | $[X] | $[X] | |
| **COGS** | **$[X]** | **$[X]** | |
| **Gross Profit** | **$[X]** | **$[X]** | |
| **Gross Margin %** | **[X%]** | **[X%]** | [±Xpp] |
| **Operating Expenses** | | | |
| Salaries & Benefits | $[X] | $[X] | |
| Rent & Facilities | $[X] | $[X] | |
| Technology & Software | $[X] | $[X] | |
| Marketing | $[X] | $[X] | |
| Professional Services | $[X] | $[X] | |
| Other | $[X] | $[X] | |
| **Total OpEx** | **$[X]** | **$[X]** | |
| **EBITDA** | **$[X]** | **$[X]** | |
| **EBITDA Margin %** | **[X%]** | **[X%]** | [±Xpp] |
| D&A | ($[X]) | ($[X]) | |
| Interest | ($[X]) | ($[X]) | |
| **Net Income** | **$[X]** | **$[X]** | |
| **Year-end Cash** | **$[X]** | **$[X]** | |

---

## Revenue Budget — Driver Build

*Building revenue from first principles, not from a percentage adjustment*

### Revenue Model

| Driver | Assumption | Q1 | Q2 | Q3 | Q4 | Annual |
|--------|-----------|----|----|----|----|--------|
| [Volume driver — e.g., active practices / BBL/day / clients] | [Value] | [Q1] | [Q2] | [Q3] | [Q4] | [Total] |
| [Price driver — e.g., monthly fee / price/BBL / ACV] | $[X] | $[X] | $[X] | $[X] | $[X] | |
| [Growth driver — new additions per month/quarter] | [N]/mo | [N] | [N] | [N] | [N] | [N total] |
| [Churn/attrition assumption] | [X%]/year | | | | | |
| **Revenue** | | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** |

**Key revenue assumptions (must be explicitly documented):**
1. [Assumption 1 — e.g., "14 active practices at Jan 1; 4 new practices onboarded by June, 2 by September"]
2. [Assumption 2 — e.g., "Average monthly fee: $2,200/practice, no price increase assumed"]
3. [Assumption 3 — e.g., "No practice churn assumed; flag if a practice is at-risk"]
4. [Risk to revenue assumption — e.g., "If onboarding timeline slips by 60 days, Q2 revenue declines by ~$18K"]

---

## Headcount Budget

| Role | Current | +Adds | Year-end | Annual cost | Start month |
|------|---------|-------|---------|------------|------------|
| [Role 1] | [N] | [N] | [N] | $[X] | [Month] |
| [Role 2] | | | | | |
| **Total headcount** | **[N]** | **[N]** | **[N]** | **$[X]** | |
| Benefits load (estimated [25-35%] of salary) | | | | $[X] | |
| **Total people cost** | | | | **$[X]** | |

**Headcount budget notes:**
- New hires approved: [List approved adds with names/roles and start months]
- Contingent adds (pending board approval): [List — do not include in base budget]
- Vacancy risk: [Any role currently open that creates timing uncertainty]

---

## Quarterly P&L Budget

| | Q1 | Q2 | Q3 | Q4 | Full Year |
|---|---|---|---|---|---|
| Revenue | $[X] | $[X] | $[X] | $[X] | $[X] |
| Gross Profit | $[X] | | | | |
| EBITDA | $[X] | | | | |
| Net Income | $[X] | | | | |
| Ending Cash | $[X] | | | | |

---

## Cash Flow Budget

| | Q1 | Q2 | Q3 | Q4 | Full Year |
|---|---|---|---|---|---|
| Beginning cash | $[X] | $[X] | $[X] | $[X] | $[X] |
| Cash from operations | $[X] | | | | |
| CapEx | ($[X]) | | | | |
| Debt service | ($[X]) | | | | |
| Distributions | ($[X]) | | | | |
| **Ending cash** | **$[X]** | | | | |

**Minimum cash reserve:** $[X] (3 months of operating expenses = $[X])
**Cash cushion vs. reserve:** $[X] [healthy / thin — action required]

---

## Budget Risks and Sensitivities

| Risk | Probability | Revenue impact | EBITDA impact | Mitigation |
|------|------------|---------------|--------------|-----------|
| [Revenue risk — e.g., onboarding delay] | Medium | ($[X]) | ($[X]) | [Monitor weekly; accelerate onboarding resources if needed] |
| [Cost risk — e.g., wage inflation] | Low | — | ($[X]) | [Cap merit increases at [X%] without CEO approval] |
| [Market risk — e.g., oil price for HIVE] | High | ($[X]) per $1/BBL | | [Hedge [X%] of production through Q[N]] |

---

## Budget Approval

| | Name | Date | Status |
|---|---|---|---|
| Prepared by | Dr. John Lewis | | |
| Finance review (CPA) | [Name] | | |
| CEO / Management approval | [Name] | | |
| Matt Mathison approval | Matt Mathison | | |
| Board approval | Board of Directors | | |
```

## Output Contract
- Revenue always built from drivers — a budget that starts with "we'll grow 15%" without grounding in specific volume, price, and customer assumptions is not a budget; it's a wish; every revenue line must be traceable to a specific assumption about how many customers/units × what price, growing at what rate
- Key assumptions always documented explicitly — the budget is only as reliable as its assumptions; every material assumption must be named so that when results deviate, the discussion centers on "which assumption was wrong?" not "where did the number come from?"
- Headcount budget always detailed by role — salary is typically the largest expense line; "headcount cost: $1.2M" without a head-by-head list is unmanageable; every budgeted role must be named or at least titled with a planned start month
- Cash flow budget always included alongside P&L — a budget that shows only P&L can show profit while the company runs out of cash; cash flow is a separate obligation, especially when the company is growing and investing
- HITL required: Dr. Lewis builds first draft; CEO reviews and adjusts assumptions; Matt Mathison reviews and approves before board; board votes on final budget; any change >5% from board-approved budget requires Matt Mathison notification and re-approval for changes >10%

## System Dependencies
- **Reads from:** Prior year actuals (QuickBooks), current year forecast, headcount records, operational KPI history, customer contracts (for renewal/churn assumptions)
- **Writes to:** Annual budget model (SharePoint/Finance/Budgets/<Entity>/); board approval package; quarterly variance analysis template
- **HITL Required:** Dr. Lewis builds; CEO reviews assumptions; Matt Mathison approves; board votes on final; mid-year revisions >10% require board notification

## Test Cases
1. **Golden path:** Allevio 2027 budget → Driver build: 14 practices at Jan 1 at $2,200/month = $30,800/month base; add 6 practices through year (2 in Q1, 2 in Q2, 2 in Q4) = 20 practices by year-end; weighted average ~17 practices = $37,400/month average = $448,800 annual revenue; COGS (implementation + support): $112K (25% of revenue); Gross margin: 75%; OpEx: headcount $198K (5 FTE + 1 new implementation specialist Q2) + tech $36K + rent $24K + other $44K = $302K; EBITDA: $448K − $112K − $302K = $34K (7.6%); Year-end cash: $178K (after $22K CapEx); Approved by CEO May 15; Matt Mathison approved May 20; board approved June 1 board meeting
2. **Edge case:** The CEO presents a revenue budget that assumes 40% growth from new business with no existing customer expansion plan → push back on the assumption: "A 40% growth target requires [N] new customers at $[X] average. Our current pipeline has [N] qualified prospects. If we close [X%] of the pipeline, we get [N] customers. The 40% target requires closing 100% of current pipeline with no deal slippage — that's not a conservative assumption. Recommend 25% growth as the base case with 40% as the stretch. What would we need to invest in sales and onboarding to reach 40%?" Revenue assumptions must be ground-truthed against pipeline
3. **Adversarial:** Midway through a budget cycle, a board member asks why the budget doesn't reflect a specific growth initiative they proposed — but the initiative was never approved by management → clarify: "The [initiative] was discussed but not approved as a budgeted item. To include it in the budget, we'd need CEO approval for the spend (estimated $[X]) and a revenue model for the expected return. If Matt Mathison and the CEO want to approve it now, we can amend the budget with a board acknowledgment at the next meeting." Never add unapproved items to a budget because a board member suggested them; the budget is a management plan, not a board wish list

## Audit Log
Budget drafts and final versions retained by entity and year. Board approval documentation retained permanently. Assumption sets retained with each version. Mid-year amendments documented with approval. Variance-to-budget tracking initiated upon board approval.

## Deprecation
Retire when portfolio companies have dedicated FP&A resources or CFOs who own the budget process end-to-end with board approval workflow managed independently.
