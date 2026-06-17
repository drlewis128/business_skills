---
name: fin-ops-cash-flow-tracker
description: "Track daily cash position and build 13-week cash flow forecast. Use when the user says 'cash flow', 'cash forecast', '13-week cash', 'cash position', 'how much cash do we have', 'cash management', 'cash runway', 'cash burn', 'when will we run out of cash', 'cash flow forecast', 'cash projection', 'cash planning', 'operating cash', 'cash balance', 'cash flow statement', 'weekly cash', 'cash flow report', 'cash gap', or 'liquidity'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--horizon <weeks: 13>] [--mode <daily|weekly|scenario>]"
---

# Cash Flow Tracker

Track the daily cash position and build the 13-week rolling cash flow forecast for MBL portfolio companies — providing Dr. Lewis and the CEO with a clear, weekly picture of cash inflows, outflows, and runway. Cash is the most critical operating metric at PE portfolio scale: a profitable company with poor cash management can still miss payroll; a company with a 13-week forecast can see a cash gap coming 2-3 months early and take corrective action (accelerate collections, defer non-critical capex, draw on a line of credit). The 13-week forecast is also the primary input for investment decisions, AP payment timing, and capital allocation at MBL.

## When to Use
- Monday morning — update the cash position and rolling forecast
- Before any payment batch (fin-ops-payment-runner) — confirm reserve coverage
- Before any capital expenditure commitment — confirm cash impact
- Cash is tightening — scenario planning for recovery
- Matt Mathison requests a cash position briefing
- Preparing for a bank covenant review

## Cash Flow Tracking Framework

```
Daily cash position (update every Monday AM):
  Pull current balances from all operating bank accounts (bank portal)
  Pull balance from any credit line or revolver (if drawn)
  Confirm: Total available liquidity = Cash + undrawn credit line capacity
  
  30-day operating reserve calculation:
    Fixed monthly cash expenses: Payroll + Rent + Insurance + Loan payments + Fixed contracts
    Reserve required = Fixed expenses × 1 month
    Alert threshold: Cash < Reserve → Dr. Lewis notified immediately
    Critical threshold: Cash < 2 weeks payroll → Matt Mathison notified immediately
    
13-week rolling forecast structure:

  Week-by-week format (13 weeks = 1 quarter):
  
    INFLOWS (by week):
      Patient/client collections: Based on AR aging + expected payments
      Payer reimbursements (Allevio): Based on claim submission date + payer-specific lag
        Medicaid average lag: 30-45 days from submission
        Private insurance average lag: 30-60 days from submission
        Direct-pay: Immediate
      Employer group PMPM invoices (Allevio): Net 15; bill on 1st → cash around 15th
      Oil & gas production payments (HIVE): 60-day lag from production month (typical O&G)
        Example: June production → August check from operator
      Advertising collections (Column6): Per contract; Net 30-45 typical
      Other inflows: Deposits, refunds, insurance proceeds, loan draws
      
    OUTFLOWS (by week):
      Payroll: Bi-weekly exact; predictable
      Rent: Monthly (usually 1st)
      Vendor payments: AP aging due dates (from AP system)
      Insurance premiums: Monthly
      Loan/note payments: Fixed schedule
      Taxes: Payroll tax deposits, quarterly estimated income tax
      Capex commitments: Signed contracts or authorized purchases
      
    Net cash flow (by week) = Inflows − Outflows
    Ending cash (by week) = Prior ending cash + Net cash flow
    
  Scenario planning (if cash is tightening):
    Base case: Current inflow assumptions + current outflow schedule
    Downside: Inflows 20% lower (delayed collections, payer claims denials); outflows flat
    Severe: Inflows 40% lower; outflows flat
    Downside response actions (by trigger level):
      Reserve drops below 30 days: Accelerate collections (fin-ops-collections-manager); defer non-critical AP
      Reserve drops below 15 days: CEO and Matt Mathison briefed; line of credit draw evaluated
      Reserve drops below 7 days: Matt Mathison decision point; capital injection or sale asset options
      
  HIVE-specific cash flow considerations:
    Production payment lag: Cash from June production typically arrives in August → 60-day planning horizon essential
    WTI price impact: At $65/bbl, HIVE monthly cash from production X; at $50/bbl, cash Y → show in scenario
    CapEx timing: Well workover or new well commitments must be modeled against production payment schedule
    
  Working capital improvement levers (Dr. Lewis toolbox):
    AR: Accelerate collections (reduce DSO); tighten payment terms on new contracts
    AP: Extend payment timing to due date (don't pay early unless discount justifies); negotiate Net 45 with vendors
    Billing: Invoice immediately after service delivery (eliminate billing lag)
    Line of credit: Draw on revolver to bridge a temporary gap (not to fund operations long-term)
```

## Output Format

```markdown
# Cash Position Report — [Entity]
**Date:** [Date] | **Prepared by:** Dr. Lewis / Controller
**Next update:** [Next Monday]

---

## Current Cash Position

| Account | Balance | Notes |
|---------|---------|-------|
| Operating account | $[X] | As of [date] |
| Payroll account | $[X] | As of [date] |
| Reserve/savings | $[X] | As of [date] |
| **Total cash** | **$[X]** | |
| Available credit line | $[X] | $[X]K total − $[X]K drawn |
| **Total liquidity** | **$[X]** | |

---

## Reserve Status

| Metric | Amount | Status |
|--------|--------|--------|
| 30-day fixed expense reserve required | $[X]K | |
| Current cash vs. reserve | $[X]K above / below | 🟢/🟡/🔴 |
| Weeks of payroll covered | [N] weeks | |

---

## 13-Week Cash Flow Forecast

| Week | Starting cash | Inflows | Outflows | Net | Ending cash | Reserve coverage |
|------|--------------|---------|---------|-----|-------------|----------------|
| Wk 1 (Jun 16-20) | $[X]K | +$[X]K | −$[X]K | $[X]K | $[X]K | 🟢/🟡/🔴 |
| Wk 2 (Jun 23-27) | | | | | | |
| ... | | | | | | |
| Wk 13 | | | | | $[X]K | |

**Lowest projected cash:** $[X]K in Week [N] ([Date])
**Weeks below reserve:** [N] weeks — action required / None

---

## Key Inflow Assumptions

| Source | Basis | Amount | Timing |
|--------|-------|--------|--------|
| Allevio payer collections | Claims submitted [date]; 45-day avg lag | $[X]K | Week 4 |
| HIVE production payment | June production; 60-day lag | $[X]K | Week 9 |
| Column6 advertiser payment | Invoice [date]; Net 30 | $[X]K | Week 5 |

---

## Action Items

| Issue | Recommended action | Owner | By |
|-------|-------------------|-------|-----|
| Week 8 projected below reserve | Accelerate collections on [customer] — $[X]K outstanding | Controller | [Date] |
| [None] | | | |

---

## Matt Mathison Brief (if applicable)

Cash position summary for [Date]: [One-paragraph BLUF — total liquidity, reserve status, 13-week outlook, any action required].
```

## Output Contract
- Update every Monday by 9 AM — the cash position is stale within a week; Dr. Lewis updates the 13-week forecast every Monday morning with the prior week's actual cash movements and rolls the forecast forward one week; the Monday update is shared with the CEO; if Dr. Lewis cannot update the forecast personally, the controller updates the actuals and Dr. Lewis reviews and approves the forward projections; the CEO should never be surprised by a cash gap — the 13-week forecast exists specifically to prevent that outcome
- Model the HIVE production lag explicitly — the 60-day production payment lag in oil and gas is the most common source of cash flow surprises at HIVE; a month of strong production generates the cash 60 days later; if production is curtailed in month 1, the cash impact hits in month 3; Dr. Lewis includes HIVE production receipts in the forecast at the correct lag, not when production occurs; at $65/bbl WTI, the forecast shows the production cash; at $55/bbl, the forecast is rerun with the lower revenue; if WTI drops below $58/bbl, the HIVE capex pause trigger (from strategy-revenue-model) is automatically reflected in the cash forecast
- A cash gap in the forecast triggers immediate action — a projected week where ending cash drops below the 30-day reserve is not a "heads up for later"; it is an action item created the day the forecast is built; Dr. Lewis identifies the specific action (accelerate collections on [customer], defer [vendor] payment by 2 weeks, request a line of credit draw) and assigns it with a deadline; the action is tracked until the gap is resolved; no projected cash gap is acceptable without a documented mitigation action
- HITL required: Dr. Lewis owns the 13-week cash flow forecast and updates it every Monday; CEO receives the weekly update and approves any major decisions (line of credit draw, AP payment deferral, capex delay); Matt Mathison is notified when: (1) cash drops below 15 days of operating reserve, (2) a line of credit draw is being considered, (3) any scenario shows projected cash below 7 days reserve

## System Dependencies
- **Reads from:** Bank account balances (bank portal); AP aging due dates (QuickBooks/Bill.com); AR collections expected (fin-ops-collections-manager); payroll schedule (payroll provider); HIVE production reports (Covercy); Column6 invoice schedule (AR system); Allevio claim submission dates (AdvancedMD)
- **Writes to:** 13-week cash flow forecast (SharePoint/Finance/<Company>/CashFlow/[Date]/); Monday cash position report; CEO/Matt Mathison brief (when triggered)
- **HITL Required:** Dr. Lewis updates and owns the forecast; CEO receives weekly update; Matt Mathison notified when cash drops below 15-day reserve or any line of credit draw is under consideration

## Test Cases
1. **Golden path:** Allevio Monday morning update — June 16, 2026 → Bank balance pulled: operating $94,280; payroll $22,400; savings $35,000; total $151,680; credit line: $200K available, $0 drawn; total liquidity $351,680; 30-day fixed reserve: payroll $42,800 + rent $7,500 + insurance $2,050 + contracts $4,200 = $56,550/month; reserve coverage: $151,680 / $56,550 = 2.7 months ✅; 13-week forecast built; lowest projected week: Week 5 (payroll + rent + insurance all in same week) = ending cash $108,200 — well above reserve; no action items; weekly update emailed to CEO by 9 AM Monday; CEO acknowledges; next update Monday June 23
2. **Edge case:** HIVE production payment 3 weeks late (operator delayed distribution) → Original forecast showed $185,000 HIVE production check arriving in Week 6; Week 6 passes with no payment; Dr. Lewis calls HIVE operator — check delayed 3 weeks due to final production accounting; new estimated receipt Week 9; Dr. Lewis reruns the forecast: Weeks 6-8 now show ending cash declining; Week 8 drops to $48,000 which is below the 30-day reserve of $62,000; action: Dr. Lewis accelerates collection on 2 outstanding Column6 invoices ($28,500 and $14,200) to close the gap; CEO briefed on the HIVE payment delay and the mitigation action; if the mitigation is insufficient, a $25,000 credit line draw is authorized as the bridge
3. **Adversarial:** CEO says "we should use the reserve account to fund a quick $50,000 marketing campaign next month" → The reserve exists to cover a cash gap — it is not available for discretionary spending; Dr. Lewis presents the 13-week forecast: "Here's the cash position — we have $151,680 in cash. The 30-day reserve requirement is $56,550. That leaves $95,130 as operational buffer. At our current collections pace, we'll maintain the buffer through the 13-week horizon. The $50K campaign would bring the buffer down to $45,130 — which is below reserve. I'd recommend we either (a) defer the campaign until Q4 when HIVE production cash is expected to build the buffer to $150K+, or (b) structure the campaign spending in $15-20K/month phases so we don't deplete the buffer at once." Decision is the CEO's with the data in front of them; Dr. Lewis provides the analysis, not the decision

## Audit Log
All weekly cash position reports retained. 13-week forecasts retained (current version + prior 4 versions). CEO briefing records retained. Matt Mathison notifications retained. Line of credit draw decisions retained. Scenario models retained when a specific gap or event triggered them.

## Deprecation
Retire when each portfolio company has a controller or CFO who owns the daily cash position and 13-week forecast — with Dr. Lewis reviewing the forecast weekly and Matt Mathison receiving the quarterly cash flow briefing.
