---
name: fpa-cash-flow-model
description: "Build and maintain the integrated cash flow model — direct and indirect methods. Use when the user says 'cash flow model', 'cash flow forecast', 'cash forecast', 'cash projection', 'cash planning', 'how much cash will we have', 'cash position forecast', 'model cash', 'forecast cash', 'cash flow plan', '13-week cash forecast', 'short-term cash', 'cash outlook', 'cash management model', 'liquidity model', 'cash burn', 'cash runway', 'cash flow planning', 'model the cash', 'when do we run out of cash', or 'cash flow statement forecast'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--method <direct|indirect>] [--horizon <weeks|months>] [--as-of <YYYY-MM>] [--action <build|update|present>]"
---

# Cash Flow Model

Build and maintain the cash flow model for MBL portfolio companies — projecting actual cash receipts and disbursements to answer the most important financial question in any business: Will we have enough cash to meet our obligations? The P&L tells you if the business is profitable; the cash flow model tells you if the business will have cash when bills are due. A company can be profitable and still run out of cash (high DSO + rapid growth = cash crisis). Dr. Lewis builds and maintains both short-term (13-week) and longer-term (12-month) cash flow models and monitors them weekly.

## When to Use
- Weekly monitoring — 13-week rolling cash forecast updated every Monday
- Monthly update — 12-month cash forecast updated with actuals from the close
- Before any major cash event: large payment, distribution, debt draw, CapEx outlay
- Cash position below 30 days of operating reserve — escalate immediately
- New portfolio company — build the first cash model to understand the baseline
- Matt Mathison requests a cash position update

## Cash Flow Model Framework

```
Two model types (both required for complete cash management):

  MODEL 1 — 13-WEEK DIRECT CASH FORECAST (near-term precision):
    Purpose: Identify exactly when cash receipts arrive and disbursements go out
    Horizon: 13 weeks (one quarter), updated every Monday
    Method: DIRECT (lists actual expected receipts and payments by week)
    Inputs: AR aging (which invoices will be collected this week?); AP due dates 
            (which invoices are due this week?); payroll schedule; tax deadlines
    Output: Week-by-week cash balance forecast
    
  MODEL 2 — 12-MONTH INDIRECT CASH FORECAST (strategic view):
    Purpose: Understand the full-year cash trajectory and minimum/maximum balance
    Horizon: 12 months, updated monthly with actuals
    Method: INDIRECT (starts with net income; adds back non-cash; adjusts for working capital)
    Inputs: Rolling forecast P&L; working capital assumptions; CapEx plan; debt schedule
    Output: Monthly cash position and full-year ending cash estimate
    
13-WEEK DIRECT CASH FORECAST (construction):

  RECEIPTS (weekly, by source):
    Allevio: Which employer groups pay this week? (Net 15-30 from invoice date; calendar based on invoice dates)
    HIVE: No weekly receipts — HIVE pays ~monthly with a 60-day lag from production; lump sums
    Column6: Which agency invoices are due this week? (Track by invoice age and terms)
    Other: Any unusual receipts expected (tax refund, insurance reimbursement, etc.)
    Total weekly receipts: Sum of all expected cash in
    
  DISBURSEMENTS (weekly, by category):
    Payroll: Exact payroll dates (bi-weekly or semi-monthly); total net payroll amount
    Payroll taxes: EFTPS deposit deadlines (typically within 1-3 days of payroll)
    Vendor payments (AP): Which Bill.com payments are scheduled this week?
    Rent / fixed monthly: Which day of the month is rent due?
    Insurance: Which month's insurance premium is due?
    Debt service: Any LOC interest payments or principal payments due?
    Taxes: Any estimated tax payments due (quarterly: April 15, June 15, Sept 15, Jan 15)
    CapEx: Any approved CapEx payments scheduled this week?
    Distributions: Any approved distributions scheduled this week (requires Dr. Lewis + Matt Mathison)
    Total weekly disbursements: Sum of all expected cash out
    
  NET WEEKLY CASH FLOW: Receipts − Disbursements
  BEGINNING BALANCE: Prior week ending balance
  ENDING BALANCE: Beginning balance + Net weekly cash flow
  
  CASH MANAGEMENT TRIGGERS:
    Ending balance below 30 days operating reserve ($[X]K): Alert CEO and Dr. Lewis immediately
    Ending balance below 15 days operating reserve ($[X]K): Alert Matt Mathison; LOC draw authorization
    Ending balance below 7 days operating reserve ($[X]K): Crisis mode — Matt Mathison by phone; Dr. Lewis
    
12-MONTH INDIRECT CASH FORECAST (construction):

  Start with: Net Income (from rolling forecast P&L)
  Add back: Depreciation and Amortization (non-cash expense)
  Adjust for working capital changes:
    AR increase = cash used (negative)
    AP decrease = cash used (negative)
    Accrued expenses increase = cash provided (positive)
  = Net cash from operating activities
  
  Investing activities:
    Approved CapEx (monthly, by item from CapEx plan)
  = Net cash from investing
  
  Financing activities:
    LOC draws or repayments
    Owner distributions (approved by Dr. Lewis + Matt Mathison)
    Debt principal payments
  = Net cash from financing
  
  = Net change in cash
  + Beginning cash balance
  = Ending cash balance
  
  MINIMUM CASH MAINTENANCE RULE:
    Minimum operating reserve = 30 days of operating expenses
    30 days of operating expenses = Monthly opex × 1.0
    Cash below minimum: No distributions; LOC draw authorized
    Cash above 90 days of operating reserve: Distribution candidate (pending Matt Mathison review)
```

## Output Format

```markdown
# Cash Flow Model — [Entity] | 13-Week View as of [Monday Date]
**Prepared by:** Dr. Lewis | **Updated:** [Monday Date]

---

## 13-Week Cash Balance Forecast

| Week | Beginning | Receipts | Disbursements | Net | Ending | Status |
|------|-----------|---------|--------------|-----|--------|--------|
| Wk 1 ([Date]) | $[X]K | +$[X]K | −$[X]K | +/−$[X]K | $[X]K | 🟢/🟡/🔴 |
| Wk 2 | $[X]K | +$[X]K | −$[X]K | +/−$[X]K | $[X]K | 🟢/🟡/🔴 |
| Wk 3 | $[X]K | +$[X]K | −$[X]K | +/−$[X]K | $[X]K | 🟢/🟡/🔴 |
| ... | | | | | | |
| **Wk 13** | **$[X]K** | **+$[X]K** | **−$[X]K** | **+/−$[X]K** | **$[X]K** | |

**Minimum projected balance:** $[X]K in Week [N] | **Operating reserve threshold:** $[X]K
**LOC available:** $[X]K of $[X]K facility | **LOC draw needed?** Yes / No

---

## 12-Month Cash Forecast (Indirect Method)

| Month | EBITDA | D&A | WC Change | Operating CF | CapEx | Financing | Net | Ending Cash |
|-------|--------|-----|-----------|-------------|-------|-----------|-----|-------------|
| [Month 1] | $[X]K | $[X]K | +/−$[X]K | $[X]K | ($[X]K) | ($[X]K) | $[X]K | $[X]K |
| ... | | | | | | | | |
| **Full Year** | **$[X]K** | **$[X]K** | **+/−$[X]K** | **$[X]K** | **($[X]K)** | **($[X]K)** | **$[X]K** | **$[X]K** |

**Min cash balance (12-month):** $[X]K in [Month] | **Max cash balance:** $[X]K in [Month]

---

## Cash Management Summary

**Operating reserve:** [N] days (target: 30-90 days) | Status: 🟢/🟡/🔴
**LOC headroom:** $[X]K available | Drawn: $[X]K | Covenants: ✅
**Distributions available:** [Yes — $X]K above 90-day reserve / No — below target reserve
**Key cash events next 4 weeks:** [Payroll [Date], Q2 tax payment [Date], large vendor payment [Date]]
```

## Output Contract
- The 13-week model must be updated every Monday — a cash model that's two weeks old is worse than no model because it creates false confidence; Dr. Lewis updates the 13-week model every Monday morning before 9 AM, using the prior week's bank statement as the starting balance; the model is shared with the controller and CEO for awareness; any week where the projected minimum balance is within $20K of the 30-day operating reserve threshold triggers immediate notification
- Cash alerts are time-critical — unlike variance analysis (which can wait for the monthly package), a cash position alert must go out the day it is identified; if the 13-week model shows a cash deficit in Week 6, Dr. Lewis does not wait until the monthly financial package to notify the CEO; he contacts the CEO and Matt Mathison that day with: (1) when the deficit is projected, (2) how large the deficit is, (3) what options are available (accelerate collections, draw on LOC, delay CapEx, defer distribution), and (4) a recommendation; cash crises that are identified 6 weeks in advance are manageable; cash crises identified 2 days in advance are not
- Distribution decisions are driven by the 12-month cash model — Matt Mathison asks about distributions based on the cash position; the cash model is the input to that conversation; Dr. Lewis presents: "Current cash: $X; operating reserve target: $Y (30 days); 90-day reserve: $Z; cash above 90-day reserve: $W; recommended distribution amount: $V (leaves 60-day reserve as buffer)"; distributions are only recommended when the 12-month model shows the cash position remains above the minimum reserve for the entire forecast period after the distribution
- HITL required: Dr. Lewis updates the 13-week model weekly and the 12-month model monthly; CEO receives the 13-week model weekly (by Monday 9 AM) and the 12-month model monthly; Matt Mathison receives the 12-month model monthly and is notified immediately when cash drops below 30 days of operating reserve; LOC draws require CEO + Dr. Lewis authorization; LOC draws >$50K require Matt Mathison authorization; distributions require Matt Mathison authorization

## System Dependencies
- **Reads from:** Bank accounts (weekly — actual cash balance; online banking or controller report); QuickBooks AR aging (which invoices are expected to be paid this week); Bill.com AP schedule (which payments are going out this week); payroll system (exact payroll dates and amounts); debt service schedule (LOC interest, principal payments); IRS/EFTPS deposit calendar; CapEx approval records (scheduled payments); rolling forecast P&L (for the 12-month indirect model); working capital analysis (fpa-working-capital-analyzer)
- **Writes to:** 13-week cash model (SharePoint/Finance/<Company>/CashForecast/13-Week_[MonDate].xlsx); 12-month cash forecast (SharePoint/Finance/<Company>/CashForecast/12-Month_[Period].xlsx); CEO Monday morning cash update (email or Teams message); Matt Mathison alert (when below 30-day reserve); distribution analysis memo; LOC draw authorization request
- **HITL Required:** Dr. Lewis updates weekly; CEO receives weekly; Matt Mathison receives monthly and immediate alert <30-day reserve; LOC draws: CEO + Dr. Lewis <$50K; Matt Mathison for >$50K; distributions: Matt Mathison authorization; all cash decisions tracked in the model log

## Test Cases
1. **Golden path:** Monday morning 13-week cash update for Allevio → Dr. Lewis pulls the Friday bank balance: $183K; Week 1: +$42K receipts (3 employer group payments due per AR aging) − $48K disbursements (semi-monthly payroll $37K + vendor payments $11K) = −$6K net; Week 1 ending: $177K; payroll tax deposit due Tuesday ($5.6K — EFTPS), included in Week 2; Q2 estimated taxes due June 15 ($8K, Week 7); no single week below $120K (operating reserve threshold); no LOC draw needed; Dr. Lewis emails the controller: "Cash forecast as of [Monday]. Min balance: $121K in Week 7 (tax payment week). Well above the $72K operating reserve threshold. No action needed." Controller acknowledged.
2. **Edge case:** HIVE receives an unexpected $65K LOE reimbursement from the operator → Dr. Lewis receives the notice on Wednesday; immediately updates the 13-week model; the receipt moves in Week 3; HIVE ending cash at Week 3 jumps from $88K to $153K; the $153K is above the 90-day operating reserve ($95K); Dr. Lewis prepares a distribution analysis: "HIVE received an unexpected $65K operator reimbursement. Cash is now $153K — $58K above the 90-day reserve. This creates a distribution opportunity. At $35K distribution, HIVE retains $118K (45 days of reserve — conservative). Recommend: $35K distribution pending Matt Mathison approval. Distribution waterfall memo attached." Matt Mathison receives the memo; approves a $30K distribution (conserving slightly more reserve given WTI uncertainty).
3. **Adversarial:** The CEO asks Dr. Lewis to project cash without including the CapEx approval he hasn't yet received from Matt Mathison → Dr. Lewis declines: "I can't model the cash excluding approved CapEx — the model needs to reflect the actual cash commitments, including the $42K equipment purchase that's pending Matt Mathison's approval. What I can do is show you two versions: (1) the current cash model without the CapEx (pending approval), and (2) the model with the CapEx included so you can see the cash impact. Would that be helpful?" Dr. Lewis does not model scenarios that exclude known pending commitments to make the cash position look better; he shows the CEO both scenarios and is clear about which is which

## Audit Log
All 13-week models retained (weekly — for audit and reconciliation). 12-month models retained by month. Cash alerts and Matt Mathison notifications retained. LOC draw authorizations retained. Distribution decisions and authorization records retained. Actual vs. forecast cash accuracy tracked monthly.

## Deprecation
Retire when each portfolio company has a CFO or controller who owns the weekly cash forecast — with Dr. Lewis reviewing the 12-month cash model monthly and Matt Mathison receiving the monthly cash summary.
