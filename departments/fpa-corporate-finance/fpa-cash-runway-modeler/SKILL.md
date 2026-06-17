---
name: fpa-cash-runway-modeler
description: "Model cash runway and burn rate for portfolio companies. Use when the user says 'cash runway', 'burn rate', 'how long will cash last', 'cash burn', 'runway analysis', 'when do we run out of cash', 'cash survival', 'months of cash', 'days of cash', 'cash position', 'do we need to raise money', 'capital needs', 'funding runway', 'cash sufficiency', 'cash deficit', 'operating cash needs', 'cash consumption', 'how much cash do we have', 'cash monitoring', or 'cash risk'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scenario <base|stress|crisis>] [--horizon <90days|6mo|12mo>] [--action <model|alert|present>]"
---

# Cash Runway Modeler

Model cash runway and burn rate for MBL portfolio companies — calculating how long the current cash position will sustain operations at the current or projected burn rate, and identifying when capital action is required. Cash runway is the survival metric: it answers "how much time do we have?" A company that runs out of cash fails, regardless of its EBITDA potential. Dr. Lewis monitors cash runway for each portfolio company monthly and escalates to Matt Mathison when the runway falls below the alert threshold.

## When to Use
- Monthly portfolio review — confirm each company's cash runway
- A company's cash balance is declining — how much runway remains?
- WTI drops significantly (HIVE) — how long can HIVE survive at current cash burn?
- A growth investment increases the cash burn rate — does the company still have adequate runway?
- Before any distribution decision — does the company have surplus cash to distribute?
- Matt Mathison asks "is [company] okay on cash?"

## Cash Runway Framework

```
RUNWAY CALCULATION METHODS:

  Method 1 — Simple Cash Runway (for quick assessment):
    Cash runway (days) = Current cash balance ÷ Average daily cash burn
    Cash burn rate = Monthly operating cash outflows (not EBITDA — actual cash paid out)
    Note: EBITDA ≠ cash burn; EBITDA excludes debt service, CapEx, and working capital changes
    
  Method 2 — 13-Week Cash Forecast (for precision):
    Uses the 13-week direct cash flow model (fpa-cash-flow-model)
    Week-by-week actual receipts and disbursements
    Identifies the specific week when cash drops below the minimum reserve
    Most accurate; requires weekly update from the CEO and accounting team
    
  Method 3 — Monthly Model (for 3-12 month horizon):
    Projects monthly cash inflows (collections, not revenue recognition)
    Projects monthly cash outflows (payroll, rent, vendors, debt service, CapEx)
    Working capital changes (AR, AP timing)
    Identifies the month when the company would need additional cash without action
    
CASH THRESHOLDS (MBL POLICY):
  >90 days cash reserve: Healthy — distribution candidate
  60-90 days: Monitor closely; no distributions; discretionary spending paused
  30-60 days: Alert CEO and Dr. Lewis; no distributions; non-essential spending frozen; LOC standby
  <30 days: Alert Matt Mathison; LOC draw authorization; crisis protocol active
  <15 days: Matt Mathison direct involvement; LOC draw; emergency cost cuts
  <7 days: Phone call — Matt Mathison + CEO + Dr. Lewis; immediate capital action required
  
CASH RUNWAY COMPONENTS:

  Inflows (collected cash, not recognized revenue):
    Allevio: Employer group payments (30-day invoice terms; actual collection timing varies)
    HIVE: Oil sale proceeds (60-day contractual lag from production; actual receipts predictable)
    Column6: Advertiser payments (Net 30-60 from invoice; agency payments often slow)
    
  Outflows (actual cash paid):
    Payroll: Bi-weekly or semi-monthly; most significant fixed disbursement
    Rent: Monthly; first of month
    Vendors and suppliers: Per contract payment terms
    Debt service: Interest and principal per the credit agreement schedule
    CapEx: As incurred; often lumpy
    Tax payments (EFTPS): Quarterly estimated; payroll withholding bi-weekly
    
  Capital actions available (when runway is short):
    Draw on LOC: Immediate; up to facility limit
    Accelerate collections: Call the 10 largest past-due AR accounts
    Defer non-essential CapEx: Postpone discretionary spend
    Delay AP: Extend payment terms with suppliers (carefully — reputation risk)
    Equity injection: Matt Mathison provides additional capital; requires formal authorization
    Refinancing: New facility or refinancing of existing debt; takes 30-60 days minimum
    
BURN RATE ANALYSIS:
  Gross burn = All cash outflows per month (regardless of revenue)
  Net burn = Gross burn − Cash inflows = The net cash consumed per month
  If net burn is positive (inflows > outflows): Company is cash-generative; runway is theoretically infinite
  If net burn is negative (outflows > inflows): Company is consuming cash; runway is finite
  For profitable businesses: Net burn = -1 × operating cash flow (cash-generative)
  For pre-profitability or distressed: Net burn = Monthly cash shortfall
  
  HIVE special case: The 60-day production lag means HIVE regularly has periods of negative operating cash flow even when EBITDA is positive; Dr. Lewis accounts for this lag explicitly in the HIVE cash runway model
```

## Output Format

```markdown
# Cash Runway Analysis — [Entity]
**Date:** [Date] | **Prepared by:** Dr. Lewis | **Frequency:** Monthly (updated after BD5 close)

---

## Cash Position Summary

| Metric | Amount | Threshold | Status |
|--------|--------|-----------|--------|
| Cash on hand (today) | $[X]K | — | — |
| LOC available | $[X]K | — | — |
| Total liquidity | $[X]K | >$[X]K minimum | ✅ / ⚠️ / 🔴 |
| Monthly net burn rate | ($[X]K) / +$[X]K | — | — |
| **Cash runway (at current burn)** | **[N] months / [N] days** | **>60 days** | **✅ / ⚠️ / 🔴** |

---

## 13-Week Cash Forecast (Summary)

| Period | Beginning Cash | Net Cash Flow | Ending Cash | vs. Minimum |
|--------|--------------|--------------|------------|-------------|
| Week 1-4 (Month 1) | $[X]K | +/−$[X]K | $[X]K | ✅ / ⚠️ |
| Week 5-8 (Month 2) | $[X]K | +/−$[X]K | $[X]K | ✅ / ⚠️ |
| Week 9-13 (Month 3) | $[X]K | +/−$[X]K | $[X]K | ✅ / ⚠️ |

**Projected minimum cash (in next 13 weeks):** $[X]K on [Date] — [Above / At risk of / Below] the $[X]K minimum

---

## Capital Action Plan (if needed)

| Action | Timeline | Amount Available | Owner |
|--------|---------|-----------------|-------|
| LOC draw | Immediate | $[X]K | Dr. Lewis + CEO |
| Accelerate AR collection | 1-2 weeks | $[X]K estimated | CEO |
| Defer CapEx | Immediate | $[X]K | CEO |
| Equity injection | 2-4 weeks | TBD | Matt Mathison decision |

---

## Status

🟢 **Healthy** — Cash runway >[N] days; no action needed
🟡 **Monitor** — Cash runway [N] days; [specific action taken or monitoring in place]
🔴 **Alert** — Cash runway <30 days; [capital action initiated; Matt Mathison notified]
```

## Output Contract
- Cash runway is the primary survival metric — a company can have positive EBITDA and still run out of cash (timing mismatch between cash receipts and disbursements); Dr. Lewis monitors the actual cash position, not the EBITDA, as the real-time health indicator; the 13-week direct cash forecast (updated weekly at minimum) is the definitive cash runway tool — it shows the actual dollars arriving and leaving the bank each week, not a P&L abstraction
- The 60-day HIVE lag is expected, not alarming — HIVE's oil sales are always collected 60 days after production; this means HIVE regularly shows 2 months of production revenue as uncollected AR; Dr. Lewis accounts for this lag explicitly in the cash model; HIVE's "cash runway" cannot be modeled accurately without factoring in the known receivables from the prior 2 months of production; the $48/bbl stress protocol is the signal to recalculate; normal 60-day lag is not a problem
- Act before the threshold, not at it — the worst time to take capital action is when cash is already below the minimum reserve; by that point, options are limited and credibility with lenders and suppliers is strained; Dr. Lewis acts at the warning threshold (30-60 days), not at the crisis threshold (<30 days); the early alert → early action playbook preserves options and prevents crisis
- HITL required: Dr. Lewis monitors weekly and reports monthly; CEO receives a cash position alert when runway drops below 60 days; Matt Mathison receives an alert when runway drops below 30 days; LOC draws <$50K authorized by Dr. Lewis + CEO; draws >$50K or any equity injection require Matt Mathison approval; the decision to pursue equity injection from Matt Mathison is a Matt Mathison decision — Dr. Lewis presents the need and the amount, Matt Mathison decides the form and timing of the capital action

## System Dependencies
- **Reads from:** Bank statements and bank portal (actual current cash balance — checked weekly); QuickBooks AR aging (for collection timing — outstanding AR that will become cash); Bill.com AP (outstanding payables — will be cash outflows); fpa-cash-flow-model (13-week direct forecast — primary tool); HIVE: Covercy production statements (for 60-day lag projection); Allevio: Employer group payment history (for collection timing estimate); Column6: Agency payment history (for receivables timing); LOC availability (bank portal)
- **Writes to:** Cash runway analysis (SharePoint/Finance/<Company>/CashManagement/[Date]_CashRunway.xlsx); Matt Mathison alert (when <30 days); CEO alert (when <60 days); 13-week cash model (weekly update); distribution eligibility notification (when >90 days with adequate surplus — fpa-distribution-decision-modeler); LOC draw authorization memo (when draw is initiated)
- **HITL Required:** Dr. Lewis monitors and alerts; CEO takes collection and AP actions; LOC draw authorization: Dr. Lewis + CEO (<$50K); Matt Mathison + Dr. Lewis (>$50K); equity injection: Matt Mathison decision only; Dr. Lewis does not take any capital action (LOC draw, equity injection) without the appropriate authorization; Matt Mathison is never surprised by a cash crisis — Dr. Lewis surfaces the warning at the 30-day threshold, not at the 7-day crisis point

## Test Cases
1. **Golden path:** Monthly cash runway check for all 3 portfolio companies → Allevio: Cash $245K; monthly net cash inflow +$45K (cash-generative); runway: infinite (but "surplus" designation requires >90 days = $90K × 3 = $270K minimum; current $245K = 82 days at the minimum reserve rate; distribution not yet eligible); HIVE: Cash $185K; monthly net cash inflow +$18K after 60-day lag (some months negative due to lag timing); at stress WTI ($48), monthly cash burn estimated at −$22K; stress runway: $185K ÷ $22K = 8.4 months = 252 days ✅; but Dr. Lewis monitors: "At $48 WTI (stress), HIVE has 8 months of runway before LOC is needed. Current WTI is $63 — no action required. Stress protocol monitors weekly."; Column6: Cash $52K; net cash inflow +$22K; runway: $52K ÷ average burn — Column6 is cash-generative, so runway is positive; but $52K is only 22 days of operating expenses — needs monitoring; Dr. Lewis alerts Column6 CEO: "Cash balance is below the 30-day monitoring threshold ($52K = 22 days operating). Please confirm: (1) Are all outstanding invoices following up aggressively? (2) Any large collections expected this week? I'll update the 13-week model by Thursday." No LOC draw yet; collection follow-up initiated
2. **Edge case:** HIVE WTI drops to $47 for the third consecutive week, stress protocol active → Dr. Lewis recalculates the cash runway under sustained stress: HIVE cash: $195K; at $47 WTI, monthly operating cash flow: −$28K (EBITDA negative, fixed costs exceed net revenue); 60-day collection lag means the next 2 months of HIVE revenue are already locked at current WTI — Dr. Lewis projects forward: Month 1: −$28K (cash to $167K); Month 2: −$28K ($139K); Month 3: −$28K ($111K) — still above 30-day threshold ($110K minimum); Month 4: −$28K ($83K); Month 5: −$28K ($55K) — approaching alert threshold; Dr. Lewis alerts Matt Mathison immediately: "At sustained $47 WTI, HIVE has 6 months of cash runway before hitting the 30-day alert threshold. LOC is fully available ($200K facility, $0 drawn). No immediate action required, but I recommend: (1) Freeze all HIVE CapEx >$5K; (2) Authorize the LOC as a standby draw in Month 4 if WTI has not recovered; (3) Monitor WTI weekly." Matt Mathison approves the freeze; LOC standby plan documented
3. **Adversarial:** The Column6 CEO asks Dr. Lewis to delay vendor payments 45 days beyond terms to "manage cash" → Dr. Lewis evaluates: Column6 is on Net 30 terms with its primary ad tech vendors; delaying to Net 75 would stretch relationships and likely result in service disruptions or premium pricing in the next contract negotiation; Dr. Lewis declines as a first resort: "I understand the cash management motivation, but systematically delaying vendor payments beyond terms has real costs — vendors will either require prepayment in the next contract cycle, add credit hold clauses, or raise rates to compensate for the extended terms. The right tool for cash management here is accelerating our own AR collection, not extending AP beyond terms. Let me work with you on the AR recovery first: we have $85K in accounts over 45 days — if we recover half of that in the next 10 days, the cash position is fine. If we still need more after that, I can authorize a $40K LOC draw as a bridge." CEO agrees to the AR-first approach; vendor terms are maintained

## Audit Log
All monthly cash runway analyses retained by entity and date. CEO and Matt Mathison alert records retained (with dates and thresholds that triggered the alert). LOC draw authorizations retained with dual approval documentation. 13-week cash models retained by week. Capital action records retained (what was taken, when, amount, authorization). Distribution eligibility determinations retained.

## Deprecation
Retire when each portfolio company has a CFO or controller who monitors the 13-week cash position weekly — with Dr. Lewis reviewing the monthly cash runway and Matt Mathison receiving the alert when any company drops below the 30-day threshold.
