---
name: finance-cash-flow-manager
description: "Manage and report cash flow for MBL Partners portfolio entities. Use when the user says 'cash flow', 'cash position', 'cash management', 'cash burn', 'burn rate', 'runway', 'how much cash do we have', 'how long can we operate', 'cash runway', 'cash balance', 'cash forecast', 'cash projection', 'how long until we run out of cash', 'operating cash', 'cash flow statement', 'cash flow report', 'monthly cash flow', 'cash flow model', 'cash flow analysis', 'cash flow planning', 'free cash flow', 'cash flow from operations', 'cash outflow', 'cash inflow', 'net cash', 'accounts payable cash', 'accounts receivable cash', 'cash flow forecast', 'cash liquidity', 'liquidity management', 'working capital', 'how is our liquidity', 'cash health', or 'cash flow review'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--period <monthly|quarterly|13-week>] [--action <report|forecast|alert>]"
---

# Finance Cash Flow Manager

Manage and report cash flow for MBL Partners portfolio entities — tracking cash inflows and outflows, calculating burn rate and runway, producing 13-week rolling cash flow forecasts, and alerting Dr. Lewis and Matt Mathison when any entity's runway drops below threshold. Cash is the oxygen of any business; running out of it is fatal regardless of revenue performance.

## When to Use
- Monthly cash position update (included in entity P&L close)
- Quarterly 13-week cash flow forecast
- Alert trigger: entity runway drops below 90 days
- Matt Mathison ad-hoc cash position request

## Cash Flow Framework

```
CASH FLOW COMPONENTS BY ENTITY:

  ALLEVIO:
    Inflows:
      Employer billing payments: PMPM invoices collected (QuickBooks AR)
      Expected timing: net 30 from invoice; ~$X/month
    Outflows:
      Provider payments (clinical delivery): bi-weekly or monthly
      AdvancedMD / billing fees: monthly
      Payroll / AE comp / G&A: bi-weekly/monthly
      Marketing spend: as incurred
    Cash balance: QuickBooks checking account (Allevio entity)
    
  COLUMN6:
    Inflows:
      IO collections: net 30-60 from invoice (agency payment terms vary)
      Platform fees (if applicable): net 30
    Outflows:
      Media costs (supply-side): net 30-60 to publishers
      Payroll / AE comp: bi-weekly
      Technology / G&A: monthly
    Cash balance: QuickBooks (Column6 entity)
    Note: Column6 cash flow is lumpy — IO timing creates significant MoM variance
    
  HIVE PARTNERS:
    Inflows:
      Production revenue: monthly from Covercy (1-2 month lag from production to payment)
      Royalty income: quarterly from Covercy
      LP capital calls: as needed (investor capital contributions)
    Outflows:
      LOE (lease operating expense): monthly (field operations)
      G&A: monthly
      Acquisition payments: episodic (capital deployment)
    Cash balance: Covercy operating account + any reserve accounts
    WTI impact: $1/bbl WTI change ≈ $X/month revenue change (entity-specific calculation)
    
BURN RATE AND RUNWAY CALCULATION:
  Burn rate = (Total cash outflows - Total cash inflows) in a month
  Positive burn = outflows > inflows = net cash consumption
  Negative burn = inflows > outflows = positive cash generation
  
  Runway = Current cash balance / Monthly burn rate
  Threshold: ≥6 months runway = Green; 3-6 months = Yellow; <3 months = Red
  Alert: <90 days runway → Dr. Lewis + entity CEO immediate; <60 days → Dr. Lewis + Matt Mathison
  
13-WEEK CASH FLOW FORECAST:
  Built: quarterly (or triggered by Yellow/Red runway status)
  Method: bottom-up; each cash line item projected for next 13 weeks
  Inflow assumptions: confirmed AR collections (GHL Closed Won × payment probability); recurring billing
  Outflow assumptions: contracted obligations + planned hires + approved spend
  Output: weekly ending cash balance for 13 weeks; minimum cash balance; when and how much
  
CASH FLOW REVIEW CADENCE:
  Monthly: cash position reported in entity P&L and portfolio dashboard
  Quarterly: 13-week forecast for all entities; entity CEO + Dr. Lewis review
  Triggered: runway Yellow (<6 months) → 13-week forecast immediately; entity CEO action plan
  Triggered: runway Red (<3 months) → Dr. Lewis + Matt Mathison within 24 hours
```

## Output Format

```markdown
# Cash Flow Report — [Entity] — [Month Year]
**Prepared by:** Dr. Lewis | **Source:** QuickBooks + Covercy (HIVE)

---

## Cash Position Summary

| Entity | Cash Balance | Monthly Burn | Runway | Status |
|--------|-------------|-------------|--------|--------|
| Allevio | $X | $X | X months | 🟢/🟡/🔴 |
| Column6 | $X | $X | X months | |
| HIVE Partners | $X | $X | X months | |

---

## Entity Detail

**Allevio**
- Inflows this month: $X (employer billing collections)
- Outflows this month: $X (clinical: $X; payroll: $X; G&A: $X)
- Net cash: +/-$X

**HIVE Partners**
- Production revenue received: $X (WTI realized: $X/bbl)
- LOE paid: $X | G&A paid: $X
- Net cash: +/-$X

---

## Flags
[Any runway <6 months; unusual cash movement; large upcoming outflow; WTI impact]
```

## Output Contract
- Runway is the single most important metric Dr. Lewis monitors across the portfolio — a business can have good revenue, good pipeline, and good team and still fail if it runs out of cash before it achieves positive cash generation; Dr. Lewis tracks runway for every entity monthly and escalates before the entity CEO has time to be surprised; the 90-day alert exists so there is always at least 90 days of decision time (capital raise, cost reduction, accelerate collections, bridge financing); the 60-day Matt Mathison escalation exists because at 60 days, the Managing Partner needs to be in the decision
- Column6 cash flow is deliberately watched with a monthly lag — agency payment terms (net 30-60) mean an IO signed in month 1 generates cash in months 2-3; if Column6 has a strong IO booking month, cash lags; if IO bookings slow, cash will slow 60 days later; Dr. Lewis builds the Column6 13-week forecast with explicit booking-to-cash lag modeling so the entity CEO sees the downstream cash impact of today's pipeline decisions
- HITL required: runway <90 days → entity CEO + Dr. Lewis immediate; runway <60 days → Matt Mathison within 24 hours; any entity cash reserve below $50K → Dr. Lewis + entity CEO same day; capital raise decision → Matt Mathison approves; large unexpected outflow (>$25K unplanned) → entity CEO explains + Dr. Lewis approves; HIVE WTI cash impact calculation → Dr. Lewis confirms before delivery

## System Dependencies
- **Reads from:** QuickBooks (all entity cash balances; AR collections; AP payments); Covercy (HIVE production revenue receipts; royalty income; LP capital tracking); GoHighLevel (pipeline → forward inflow estimates for 13-week forecast); entity CEO planned expenditure commitments
- **Writes to:** Cash flow reports (SharePoint → [Entity] → Finance → Cash Flow → [YYYY-MM]); 13-week forecasts (SharePoint → [Entity] → Finance → Cash Flow → 13-Week); portfolio dashboard cash section; runway alert records; Matt Mathison escalation records
- **HITL Required:** Runway <90 days → entity CEO + Dr. Lewis; runway <60 days → Matt Mathison; cash below $50K → same-day escalation; capital raise → Matt Mathison; unplanned outflow >$25K → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio June 2026 cash position. Cash balance: $218K. Monthly outflows: $88K (clinical $48K; payroll $28K; G&A $12K). Monthly inflows: $94K (employer billing collections). Net: +$6K (cash generative this month ✅). Runway: $218K / ($88K - $94K net) → actually improving; at current burn trajectory, 8+ months runway ✅ Green. Column6: $95K cash; $62K inflows; $58K outflows; +$4K net; 12+ months runway ✅. HIVE: $142K in Covercy operating + $28K production received this month; LOE $18K; G&A $8K; net +$2K. WTI realized $64/bbl — above trigger ✅. All entities Green. No escalations.
2. **Edge case:** Column6 shows a $42K outflow for a media cost obligation that wasn't in the budget, and their cash balance drops to $53K → Dr. Lewis: "Column6 cash position is now at $53K — this is below my informal $75K monitoring floor and the $42K unbudgeted media cost is the cause. I need two things from entity CEO within 24 hours: (1) confirmation that this media cost was necessary and why it wasn't pre-approved; (2) their projection for the next 30 days of inflows (any IO collections due?). I'm building a quick 4-week cash bridge model to confirm whether Column6 can reach $75K+ within 30 days through normal collections. If the collections don't get us there, I need Matt Mathison in the conversation."
3. **Adversarial:** Entity CEO argues that cash flow analysis is unnecessary because "the business is growing and money will come in" → Dr. Lewis: "Growth is the best reason to monitor cash flow, not a reason to skip it. Here's why: the faster you grow, the faster you spend cash on headcount, marketing, and operations — and the longer the lag between that spending and the revenue it generates. I've seen businesses with 40% revenue growth fail because they hired a month before a big deal slipped and couldn't make payroll. The 13-week cash forecast tells you: given what's in the pipeline and what's committed on the expense side, when will cash be lowest and how low will it go? If the answer is 'fine,' we move on. If the answer is 'tight in week 9,' we have 9 weeks to act. That's a gift."

## Audit Log
Monthly cash position reports. 13-week cash flow forecasts (quarterly). Runway alert records. Matt Mathison escalation records. Entity cash balance trajectory (monthly tracking). Unplanned outflow approval records. HIVE WTI cash impact records.

## Deprecation
Cash thresholds reviewed annually or when entity scale changes. HIVE cash flow structure reviewed when production model or Covercy setup changes. Runway alert thresholds reviewed when portfolio risk tolerance changes. 13-week forecast methodology reviewed when entity business model matures. Column6 lag model reviewed when agency payment terms change.
