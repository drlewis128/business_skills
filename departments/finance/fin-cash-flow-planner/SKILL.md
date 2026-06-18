---
name: fin-cash-flow-planner
description: "Build and maintain 13-week rolling cash flow forecasts for MBL Partners and portfolio companies. Use when the user says 'cash flow', 'cash position', 'cash forecast', '13-week cash flow', 'rolling cash flow', 'cash runway', 'how much cash do we have', 'how long can we operate', 'cash burn', 'cash needs', 'cash planning', 'when do we run out of cash', 'cash risk', 'liquidity', 'liquidity forecast', 'cash management', 'treasury', 'cash reserve', 'minimum cash', 'working capital', 'cash crunch', 'cash shortage', 'cash tight', 'payroll funding', 'can we make payroll', 'AP cash', 'cash timing', 'when do we collect', 'when do we pay', 'DSO', 'DPO', or 'cash flow statement'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <all|MBL|Allevio|HIVE|Column6>] [--horizon <4wk|13wk|annual>] [--action <build|update|review|stress>] [--focus <runway|payroll|collections|payments>]"
---

# Fin Cash Flow Planner

Build and maintain 13-week rolling cash flow forecasts for MBL Partners and portfolio companies — giving Dr. Lewis and Matt Mathison the earliest possible warning of cash shortfalls, payroll funding risks, and liquidity constraints before they become crises. Cash is the lifeblood of any operating company; the purpose of the 13-week cash flow is not to be right about every week's cash position but to be directionally accurate enough to take corrective action 4-8 weeks before a problem materializes. The 13-week horizon is the operating window — long enough to take action, short enough to be credible.

## When to Use
- Weekly update to the rolling 13-week cash flow (every Monday)
- Monthly close triggers a full cash flow reconciliation
- A large AP payment or payroll cycle is approaching (>$50K in any week)
- Cash position drops below the minimum reserve threshold
- Matt Mathison or an entity CEO asks "how much cash do we have and how long does it last?"

## Cash Flow Framework

```
13-WEEK ROLLING CASH FLOW STRUCTURE:

  CASH INFLOWS (by week):
    
    Operating receipts:
      Allevio: Employer group PMPM payments (monthly; collect dates by group)
               AdvancedMD collections (weekly AR collections; current collection rate)
               New employer group onboarding deposits (if applicable)
               
      HIVE: Royalty distributions from Covercy (monthly distribution schedule)
            One-time landowner payments (lease bonuses; if applicable)
            
      Column6: Agency IO collections (net 30/45/60 per agency; map by IO)
               DSP settlement receipts (lagged behind campaign delivery)
               
    Non-operating inflows:
      MBL capital injections (per approved capital deployment schedule)
      Debt drawdowns (if applicable; per credit facility)
      Asset sale proceeds (if applicable)
      
  CASH OUTFLOWS (by week):
  
    Fixed weekly/bi-weekly:
      Payroll (bi-weekly for most entities; timing varies)
      Payroll tax deposits (federal; state — must fund within 2 days of payroll)
      
    Fixed monthly:
      Rent (1st of month)
      Major SaaS subscriptions (renewal dates matter — Salesforce annual; QuickBooks monthly)
      Insurance premiums (monthly installments vs. annual lump sum)
      
    Variable (by AP schedule):
      Clinical/medical costs (Allevio: claims paid 2-4 weeks after adjudication)
      Vendor payments (Bill.com AP schedule — aging by vendor by week)
      CapEx payments (per approval schedule)
      
    Debt service (if applicable):
      Interest payments (monthly)
      Principal payments (per amortization schedule)
      
  MINIMUM CASH RESERVE (MBL policy):
    Portfolio-level: 15% of total available capital (exec-capital-allocation)
    Entity-level minimums:
      Allevio: 8 weeks of operating expense (payroll + claims cost) at all times
      HIVE: 12 weeks of operating expense (lower revenue predictability; WTI exposure)
      Column6: 6 weeks of operating expense (higher revenue visibility; faster collections)
      
    Below minimum reserve = Tier 1 priority; Matt Mathison notification same day

13-WEEK CASH FLOW TABLE STRUCTURE:

  Week | Beginning cash | Inflows | Outflows | Net | Ending cash | Minimum reserve | Status
  
  Traffic light on each week:
    🟢 Ending cash > minimum reserve + 30% buffer
    🟡 Ending cash between minimum reserve and minimum reserve + 30%
    🔴 Ending cash below minimum reserve → immediate action required

CASH RISK TRIGGERS:

  IMMEDIATE (same day Matt notification):
    Any week in the 13-week forecast shows ending cash below minimum reserve
    Payroll cannot be funded from available cash (within 2 weeks)
    
  URGENT (24-hour Matt notification):
    Cash runway drops below 6 weeks at any entity
    A large expected inflow (>$100K) is >5 days late with no explanation
    
  MONITOR (weekly briefing):
    Collections rate declining for 2+ consecutive weeks (AR aging increasing)
    Any vendor payment requiring >30-day delay (risk of relationship damage)
    
DSO/DPO TRACKING (integrated):

  Days Sales Outstanding (DSO):
    Measures how long it takes to collect after invoicing
    Calculate: AR balance / (Revenue / 30)
    Target by entity:
      Allevio: DSO ≤ 35 days (employer group PMPM — relatively predictable)
      HIVE: DSO ≤ 45 days (royalty distribution timing varies)
      Column6: DSO ≤ 55 days (agency payment terms; 30-60 days common)
    DSO increasing month-over-month = collections problem = cash flow risk
    
  Days Payable Outstanding (DPO):
    Measures how long we're taking to pay vendors
    Target: Pay to terms (not early; not late)
    Allevio HIPAA vendor: pay on time — relationship-critical
    All others: pay within terms; early payment discounts only if >2% (cash worth holding)
```

## Output Format

```markdown
# 13-Week Cash Flow Forecast — [Entity] — Week of [Date]
**Prepared by:** Dr. Lewis | **Updated:** [Date]

---

## Summary

| Metric | Value | Status |
|--------|-------|--------|
| Current cash | $[X] | 🟢/🟡/🔴 |
| Operating runway | [N] weeks | 🟢/🟡/🔴 |
| Minimum reserve | $[X] | — |
| Weeks to reserve breach (if trending) | [N] / N/A | — |
| Next payroll | $[X] on [Date] | 🟢/🟡/🔴 |
| Largest AP week | $[X] — Week of [Date] | — |

---

## 13-Week Forecast

| Week | Beg. cash | Inflows | Outflows | Net | End cash | Reserve | Status |
|------|-----------|---------|---------|-----|---------|---------|--------|
| [Date] | $X | $X | $X | $X | $X | $X | 🟢 |

---

## Key Inflow Assumptions

| Item | Amount | Expected date | Confidence | If late... |
|------|--------|--------------|-----------|-----------|
| [Allevio PMPM - Group A] | $[X] | [Date] | High | Cash buffer absorbs |

---

## Collections Watch (DSO)

| Entity | Current DSO | Target DSO | Trend | Action |
|--------|------------|-----------|-------|--------|
| [Entity] | [N] days | [N] days | ↑/↓/→ | [Action if needed] |
```

## Output Contract
- Weekly update is non-negotiable — cash flow forecasting is valuable only if it's current; a 13-week forecast that was last updated 3 weeks ago is a historical document, not a forward-looking tool; Dr. Lewis updates the 13-week forecast every Monday morning before 9 AM; the update takes 20-30 minutes once the process is established; if actual collections or payments differed from forecast, the week's actuals replace the forecast and the learning is applied to future weeks
- Red status = same-day Matt call — any week in the 13-week horizon that shows ending cash below minimum reserve triggers a same-day phone call to Matt Mathison; this is not included in the weekly briefing or the monthly summary; it's a direct call with the finding, the root cause, and the proposed response; Dr. Lewis does not email a cash crisis — he calls
- Collections monitoring is active — AR aging and DSO trends are reviewed weekly, not monthly; a DSO that increases by 5 days in one month doesn't look alarming in the monthly close, but a DSO that has increased 3 days/week for 4 weeks is a collections failure in progress; the 13-week cash flow is the instrument that surfaces this early enough to intervene
- HITL required: any week showing cash below minimum reserve triggers same-day Matt notification; payroll funding risk triggers same-day Matt notification; cash runway dropping below 6 weeks triggers 24-hour Matt notification; large capital injection requests (to maintain reserves) require Matt Mathison approval per exec-capital-allocation; Dr. Lewis manages the forecast and monitoring; Matt Mathison decides on capital responses

## System Dependencies
- **Reads from:** QuickBooks (current cash balance; AR aging; AP aging — the actuals that anchor each week's starting position); Bill.com (AP schedule — what payments are due when and to whom); Allevio: AdvancedMD (collections timing; AR aging by payer); HIVE: Covercy (royalty distribution schedule); Column6: IO payment terms by agency (expected collection dates); exec-capital-allocation (minimum reserve thresholds; approved capital deployment schedule)
- **Writes to:** 13-week cash flow files (SharePoint → Finance → CashFlow → [Entity] → [YYYY]); exec-cfo-oversight (cash position is the first section of the monthly financial summary); exec-kpi-dashboard (operating runway is a dashboard metric); exec-board-reporting (cash position and runway in the board package); exec-action-tracker (any cash risk action items — collections escalations; payment timing adjustments)
- **HITL Required:** Cash below reserve → Matt Mathison same-day call; payroll funding risk → Matt same-day; runway <6 weeks → Matt 24-hour; capital injection requests → Matt approval; Dr. Lewis monitors and flags; Matt decides on all capital responses

## Test Cases
1. **Golden path:** Monday morning update for HIVE; beginning cash $1.24M; Week 5 shows lowest cash point at $890K (royalty distribution expected in Week 6 brings it back to $1.1M); minimum reserve $600K (12 weeks × $50K/week opex); all 13 weeks are GREEN; DSO: royalty collections averaging 42 days vs. 45-day target (trending good); AP: $45K land lease payment due in Week 3 (funded; no concern). Dr. Lewis: "HIVE is clean this week. Lowest point is Week 5 at $890K — still well above the $600K reserve. The Week 6 royalty distribution is the key assumption; Covercy has confirmed the distribution. Nothing to flag for Matt this week."
2. **Edge case:** Column6 week 8 shows ending cash at $68K against a $75K minimum reserve (breach by $7K) → Dr. Lewis does NOT wait for the weekly briefing: "Calling Matt now. Column6 week 8 cash forecast shows a $7K breach of the minimum reserve. Cause: agency payment from [Agency X] — $185K — is expected in week 7 but if it slips by 1 week (as it has twice before), the week 8 payroll of $48K + AP creates the breach. Options: (1) Call the agency today to confirm payment timing — I'm doing this today regardless. (2) Hold the Week 9 software renewal ($12K) until the agency pays — minimal operational impact. (3) Pre-authorize a $50K MBL capital advance — last resort if confirmation doesn't come through. I recommend options 1 and 2; I don't need option 3 yet. What I need from you: awareness." Matt: "Keep me posted on the agency call."
3. **Adversarial:** Entity CEO says "don't worry about cash — we're fine" when DSO is rising → Dr. Lewis: "I hear you. But the data is telling a different story: Column6 DSO has gone from 48 days to 67 days in 6 weeks. That's $210K of revenue that's been earned but not collected. At your current cash position, that's almost 3 weeks of runway that's sitting in AR instead of the bank. I'm not raising a crisis — I'm raising an early warning. The question isn't whether we're fine today; it's whether we want to wait until the cash gets tight before we start making collection calls. Who owns AR collections? Let's start there."

## Audit Log
All 13-week forecast versions retained weekly. Actual vs. forecast cash reconciliation retained monthly. Cash breach events retained (what was forecasted; what occurred; how resolved; Matt notification record). DSO/DPO trend data retained monthly. Capital injection decisions retained.

## Deprecation
Retire when each entity has a Controller or CFO who manages the weekly cash flow forecast — with Dr. Lewis reviewing the entity-level forecasts and maintaining the portfolio-level cash position summary for Matt Mathison.
