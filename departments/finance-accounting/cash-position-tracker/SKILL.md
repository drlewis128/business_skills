---
name: cash-position-tracker
description: "Track and report daily or weekly cash position. Use when the user says 'cash position', 'how much cash do we have', 'cash balance', 'check the cash', 'current cash balance', 'cash today', 'what is our cash', 'cash status', 'daily cash position', 'weekly cash report', 'bank balance', or 'cash monitoring'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--cadence <daily|weekly>] [--date <YYYY-MM-DD>]"
---

# Cash Position Tracker

Track and report the current cash position across all bank accounts for an MBL portfolio company — a simple, fast daily or weekly view of the most important number in the business. For small and growing companies, running out of cash is the primary existential risk; knowing the cash position at all times is not optional. This skill produces the cash dashboard that Matt Mathison and portfolio company CEOs should be able to check in 60 seconds.

## When to Use
- Weekly Monday morning routine — what is the cash position as we start the week?
- Matt Mathison asks "how much cash does [Company] have right now?"
- A significant payment is pending and management needs to confirm available cash before processing
- Cash position has been declining — need to establish a monitoring cadence
- Before approving a distribution — confirm post-distribution cash is above reserve

## Cash Position Standards

```
Minimum cash reserve rule:
  Operating reserve: 3 months of operating expenses
  Example: Monthly OpEx $100K → Reserve: $300K
  
Cash status thresholds:
  🟢 Strong: Cash ≥ 2× reserve
  🟡 Monitor: Cash between 1× and 2× reserve
  🔴 Action required: Cash < 1× reserve

Accounts to track:
  1. Operating checking account(s) — primary operating cash
  2. Payroll account (if separate)
  3. Reserve/savings account (if applicable)
  4. Exclude: restricted cash, security deposits, escrowed funds
     (these are not available operating cash)
```

## Output Format

```markdown
# Cash Position — <Company Name>
**As of:** <Date> (<Day of week>)
**Prepared by:** Dr. John Lewis

---

## Cash Summary

| Account | Bank | Last 4 | Balance | % of Total |
|---------|------|--------|---------|-----------|
| Operating Checking | [Bank name] | [XXXX] | $[X] | [X%] |
| Payroll Account | [Bank] | [XXXX] | $[X] | [X%] |
| Savings / Reserve | [Bank] | [XXXX] | $[X] | [X%] |
| **Total available cash** | | | **$[X]** | **100%** |

**Restricted / unavailable:** $[X] ([Security deposit / Escrow / Restricted]) — not included above

---

## Cash Status

| Metric | Value | Status |
|--------|-------|--------|
| Total available cash | $[X] | |
| Monthly operating expense run rate | $[X] | |
| **Months of runway** | **[N.N] months** | 🟢/🟡/🔴 |
| Minimum reserve (3 months) | $[X] | |
| **Buffer above reserve** | **$[X]** | 🟢/🟡/🔴 |

---

## Cash Movements (Since Last Report)

| Date | Type | Description | Amount | Running Total |
|------|------|------------|--------|--------------|
| [Date] | In | [AR collection from Client X] | +$[X] | $[X] |
| [Date] | Out | [Payroll] | ($[X]) | $[X] |
| [Date] | Out | [Vendor payment — Vendor Y] | ($[X]) | $[X] |
| [Date] | In | [Revenue payment] | +$[X] | $[X] |

**Net cash movement since last report:** $[±X]

---

## Upcoming Cash Events (Next 14 Days)

| Date | Type | Description | Estimated amount |
|------|------|------------|-----------------|
| [Date+1] | Out | [Payroll] | ($[X]) |
| [Date+3] | Out | [Rent] | ($[X]) |
| [Date+5] | In | [Expected AR collection — Client A invoice due] | +$[X] |
| [Date+7] | Out | [Loan payment] | ($[X]) |
| [Date+14] | Out | [Software subscriptions auto-debit] | ($[X]) |

**Net expected cash movement (14 days):** $[±X]
**Projected cash in 14 days:** $[X]
**Projected status in 14 days:** 🟢/🟡/🔴

---

## Matt Mathison Flag

Cash position — [Company] as of [Date]: $[X] available. [N.N] months runway. Status: 🟢/🟡/🔴. [Any flag: "Projected below reserve in [N] days / Large AR collection expected / Unusual outflow"]. **Action needed:** [Specific — or "None — monitoring as usual."]
```

## Output Contract
- Balance from bank statement, not accounting system — the cash position must reflect actual bank balances, not QuickBooks balances; QuickBooks can show a balance that includes checks that haven't cleared or deposits that haven't posted; always verify against the online banking portal or bank statement
- Restricted cash always excluded and labeled — a security deposit is not operating cash; cash in escrow is not operating cash; these must be shown separately and excluded from the operating cash calculation; including them overstates available cash
- Monthly run rate always calculated to provide months of runway — a dollar balance without context is unhelpful; the cash position only means something in the context of how fast the company is spending; monthly OpEx run rate must be shown to calculate runway
- 14-day forward view always included — the cash position as of today is a lagging indicator; what matters for cash management is the cash position 2 weeks from now; large outflows (payroll, lease) and expected inflows (AR collections) must be shown for the forward 14-day window
- HITL required: Dr. Lewis verifies balances from bank portal (not QuickBooks); Matt Mathison receives weekly cash update; if projected cash will fall below reserve in the next 30 days, Matt Mathison is notified immediately — not at the next scheduled report; any distribution must have a post-distribution cash review before proceeding

## System Dependencies
- **Reads from:** Online banking portal (primary source — actual bank balances), QuickBooks (to verify movements), AP schedule (upcoming payments), AR aging (expected inflows)
- **Writes to:** Cash position report (SharePoint/Finance/Cash Position/); Matt Mathison weekly update; cash flow forecast (as input)
- **HITL Required:** Dr. Lewis verifies from bank portal; Matt Mathison receives weekly; below-reserve projection triggers immediate notification; distributions require pre-distribution cash review

## Test Cases
1. **Golden path:** Allevio Monday June 16 cash check → Operating checking: $187,432 (bank portal verified); payroll account: $0 (payroll processed directly from operating — no separate payroll account); reserve account: $46,800; Total: $234,232; Monthly run rate: $78K; Runway: 3.0 months; Reserve (3 months): $234K; buffer: $232 above reserve (🟡 very thin — right at reserve); Upcoming: payroll $24K on June 20 (4 days), rent $3,800 on June 25, expected AR from Allevio Practice 4 ($4,400) by June 18; Projected 14-day cash: $234K − $24K − $3.8K + $4.4K = $210K (below reserve); Flag 🟡 to Matt Mathison: "Projected cash will dip to $210K by June 30 — below $234K reserve. AR collection from 3 practices totaling $38K is expected in July 1-5; reserve breach is temporary timing. Monitoring closely. No action needed unless AR collections don't arrive by July 5."
2. **Edge case:** The bank portal shows a balance 20% lower than QuickBooks because a large check hasn't cleared → the bank portal balance is the authoritative number for cash position; QuickBooks should show the check as outstanding; use bank balance $[lower] as the operating cash; note the outstanding check: "Note: QuickBooks shows $[X] — difference is outstanding check #[N] for $[X] to [Vendor], issued [date], not yet cleared. Bank balance is the actual available cash."
3. **Adversarial:** A CEO reports to Matt Mathison that "cash is fine" based on QuickBooks, but Dr. Lewis's bank portal check shows a balance $40K lower because several large checks are outstanding → correct the record: "QuickBooks shows $[X], but the bank portal shows actual available cash of $[X] — the difference is outstanding checks totaling $[X]. For cash management purposes, we use the bank balance. At $[X], we have [N] months of runway — [above / below] our reserve." The QuickBooks balance can be misleading when checks are outstanding; the bank balance is always the authoritative number

## Audit Log
Cash position reports retained by entity and date. Bank balance verification method documented (portal vs. statement). Matt Mathison notifications and responses retained. Reserve breach projections and resolutions documented.

## Deprecation
Retire when portfolio companies have live bank feed integrations with QuickBooks (or equivalent treasury software) that display real-time cash positions automatically, eliminating the need for manual portal checks and weekly reports.
