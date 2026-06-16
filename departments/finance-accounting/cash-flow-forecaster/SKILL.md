---
name: cash-flow-forecaster
description: "Build or update a cash flow forecast. Use when the user says 'cash flow forecast', 'cash forecast', 'cash projection', 'will we have enough cash', 'cash runway', 'cash planning', '13-week cash flow', 'short-term cash forecast', 'cash position forecast', 'project the cash', or 'cash management'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--horizon <13-week|quarterly|annual>] [--concern <runway|planning|distribution>]"
---

# Cash Flow Forecaster

Build and maintain a cash flow forecast — a forward-looking view of cash coming in and going out, telling management whether the business will have sufficient cash to meet its obligations and fund its plans. For operating companies, a reliable cash flow forecast is the single most important financial tool: a company can have great revenue and positive EBITDA and still run out of cash if collections are slow, expenses are lumpy, or growth requires significant upfront investment.

## When to Use
- Monthly cash planning — what will cash look like over the next 13 weeks?
- A distribution is being considered — is there enough cash after the distribution?
- A portfolio company CEO is worried about making payroll or vendor payments
- Matt Mathison asks "how much cash do we have and how long will it last?"
- Planning a capital expenditure or investment — what is the cash impact and timing?
- HIVE Partners — modeling distribution timing based on production and realized prices

## Cash Flow Framework

```
Two forecast horizons:

13-Week Cash Flow (operational — week by week):
  Used when cash is tight or decisions must be made in real time.
  Shows: actual cash in/out by week; ending cash each week.
  Update: weekly.

Quarterly/Annual Cash Flow (strategic — month by month):
  Used for planning distributions, CapEx, and debt service.
  Shows: operating/investing/financing cash flows by month.
  Update: monthly.

Key cash drivers to understand:
  Cash in: AR collections (not revenue recognized); new customer payments
  Cash out: AP payments (not expenses accrued); payroll (specific dates); debt service; taxes
  Timing differences: Invoice date ≠ collection date; expense date ≠ payment date
```

## Output Format

### 13-Week Cash Flow

```markdown
# 13-Week Cash Flow Forecast — <Company Name>
**Start date:** <Date> | **End date:** <13 weeks later>
**Prepared by:** Dr. John Lewis | **Updated:** <Date>
**Current cash balance:** $[X] (as of <date>)

---

## Week-by-Week Cash Flow

| Week | W/E Date | Cash In | Cash Out | Net | Ending Cash | Buffer vs. Reserve |
|------|----------|---------|---------|-----|-------------|-------------------|
| 1 | [Date] | $[X] | ($[X]) | $[±X] | $[X] | $[±X] |
| 2 | [Date] | | | | | |
| 3 | [Date] | | | | | |
| 4 | [Date] | | | | | |
| 5 | [Date] | | | | | |
| 6 | [Date] | | | | | |
| 7 | [Date] | | | | | |
| 8 | [Date] | | | | | |
| 9 | [Date] | | | | | |
| 10 | [Date] | | | | | |
| 11 | [Date] | | | | | |
| 12 | [Date] | | | | | |
| 13 | [Date] | | | | | |

**Minimum cash reserve:** $[X] (3 months operating expenses)
**Lowest projected cash:** $[X] (Week [N]) — [above / below] reserve 🟢/🟡/🔴

---

## Key Cash Events (Next 13 Weeks)

| Week | Event | Cash impact | Status |
|------|-------|-------------|--------|
| [W1] | Payroll — [date] | ($[X]) | Confirmed |
| [W2] | AR collection — [Client] invoice due | +$[X] | Expected / At risk |
| [W3] | Vendor payment — [Vendor] | ($[X]) | Confirmed |
| [W4] | [Debt service / loan payment] | ($[X]) | Confirmed |
| [W?] | [Tax payment / estimated tax] | ($[X]) | [Date] |
| [W?] | [One-time cash event] | ($[X]/+$[X]) | [Status] |

---

## Cash Risks

| Risk | Probability | Cash impact | Mitigation |
|------|------------|-------------|-----------|
| [AR collection delay] | [High/Med/Low] | ($[X]) | [Follow up on [Client] invoice — now [N] days past due] |
| [Unexpected expense] | | | |
| [Revenue miss in Week X] | | | |
```

---

### Monthly/Annual Cash Flow

```markdown
# Cash Flow Forecast — <Company Name>
**Period:** [YYYY or Q[N]-Q[N]]
**Prepared by:** Dr. John Lewis | **Updated:** <Date>

---

## Monthly Cash Flow Summary

| Month | Operating | Investing | Financing | Net | Beginning Cash | Ending Cash |
|-------|----------|----------|----------|-----|---------------|-------------|
| Jan | $[X] | ($[X]) | ($[X]) | $[±X] | $[X] | $[X] |
| Feb | | | | | | |
| [etc.] | | | | | | |
| **Full Year** | **$[X]** | **($[X])** | **($[X])** | **$[X]** | **$[X]** | **$[X]** |

---

## Cash Flow Build

**Operating Cash Flow:**
EBITDA: $[X/month]
± Working capital changes:
  AR collections lag: [X] days DSO × daily revenue = $[X] AR balance
  AP payment timing: [N]-day payment terms = $[X] float
Taxes paid: ($[X]/quarter)
= Operating cash flow: $[X/month]

**Investing:**
Capital expenditures: ($[X]) in [Month/Quarter]
[Acquisition / investment]: ($[X]) in [Month]

**Financing:**
Debt repayments: ($[X]/month)
Distributions to MBL/LPs: ($[X]) in [Month(s)]
New debt proceeds: +$[X] in [Month — if applicable]

---

## Distribution Analysis (if planning a distribution)

**Available cash:** $[X]
**Minimum operating reserve:** $[X]
**CapEx planned (next 90 days):** ($[X])
**Debt service (next 90 days):** ($[X])
**Distributable cash:** $[X]
**Proposed distribution:** $[X]
**Post-distribution cash:** $[X]
**Post-distribution buffer above reserve:** $[X] — 🟢 Adequate / 🟡 Thin / 🔴 Insufficient
```

## Output Contract
- Minimum cash reserve always compared against — the cash reserve (typically 3 months of operating expenses) must be shown in every forecast period; every projected period where cash falls below reserve must be flagged; this is non-negotiable
- Payroll always explicitly shown — payroll is the most predictable and the most critical cash obligation; missing payroll is a legal, HR, and reputational crisis; payroll dates and amounts must appear in the 13-week view
- AR collection timing distinguished from revenue — accrual-basis companies recognize revenue before collecting cash; the cash forecast must reflect actual collection patterns (DSO), not just revenue recognition; a client who pays in 45 days creates a 45-day cash lag
- Distribution analysis always required before any distribution — no distribution should be made without a post-distribution cash flow analysis showing the business retains at least the minimum reserve after the distribution; Matt Mathison must approve any distribution
- HITL required: Dr. Lewis prepares; CEO or CFO confirms key receivable timing; Matt Mathison approves before any distribution is authorized; any week where cash is projected below reserve requires immediate escalation

## System Dependencies
- **Reads from:** QuickBooks (AR aging, AP schedule, cash position), bank statements, payroll schedule, debt amortization schedule, Covercy (HIVE production and revenue timing)
- **Writes to:** Cash flow forecast (SharePoint/Finance/Cash Flow/); distribution notice; management report
- **HITL Required:** Dr. Lewis prepares; CEO confirms AR collection timing; Matt Mathison approves distributions; immediate escalation if reserve breach projected

## Test Cases
1. **Golden path:** Allevio 13-week cash flow (July-September 2026) → Current cash: $234K; Week 1: payroll ($24K) + operating expenses ($8K); AR collections from June invoices: +$38K (all practices paid within 30 days); Week 2: software vendor payment ($3K); Week 3: payroll ($24K); Week 6: estimated tax payment ($12K); Lowest projected cash: Week 1 ($240K after collection offset); minimum reserve: $72K (3 × $24K monthly burn); buffer at lowest point: $168K above reserve — strong; Matt Mathison: "Cash position strong; no action needed; modeling Q3 distribution of $45K — post-distribution cash $195K, still $123K above reserve; requesting Matt Mathison approval to proceed"
2. **Edge case:** AR aging shows 2 major clients are 45+ days past due — their expected payments in weeks 2-3 are now uncertain → flag immediately: "Cash forecast assumes $[X] in collections from [Client A] and [Client B] in weeks 2-3. Both invoices are currently [N] days past due. If these payments are delayed, Week 3 cash drops to $[X] — below the $[X] reserve. Recommend: (1) CEO to contact clients directly this week; (2) Hold any non-essential payments pending collection; (3) Dr. Lewis will update 13-week forecast if collections not received by [date]." AR risk must be surfaced before it becomes a cash crisis
3. **Adversarial:** A portfolio company CEO wants to take a distribution before year-end because they need personal liquidity, but the cash flow forecast shows the business would be operating below the reserve post-distribution → hard stop; personal liquidity needs of the CEO/owner do not override business reserve requirements; the distribution cannot be approved; present the data: "A $[X] distribution would leave the business with $[X] — $[X] below our $[X] minimum reserve. We cannot approve this distribution at this size. Options: (1) Reduce the distribution to $[X] (post-distribution cash = $[X] — $[X] above reserve); (2) Wait until [Month] when projected cash will support the full distribution." Escalate to Matt Mathison.

## Audit Log
Cash flow forecasts retained by entity and update date. Distribution analyses and approvals retained permanently. Reserve breach escalations documented. Matt Mathison distribution approvals retained. Week-by-week actuals tracked against forecast for accuracy improvement.

## Deprecation
Retire when portfolio companies have dedicated treasury/finance function with live cash position dashboards and automated cash flow modeling from QuickBooks data, reducing the manual preparation burden on Dr. Lewis.
