---
name: portops-mbl-cash-monitor
description: "monitor mbl cash position, check mbl bank balance, run 13-week cash forecast, review AP obligations vs cash, check intercompany transfers, authorize transfers over 25k, check cash runway, mbl cash health status, daily cash position report, weekly cash report for matt, check management fee receipts, flag low cash reserve, holdco cash dashboard, cash coverage ratio, operating reserve check, cash flow from portfolio, bill.com payment queue vs cash, cash burn rate analysis, verify bank portal balance, intercompany loan tracking"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<'daily' | 'weekly' | 'forecast' | 'authorization-check'>"
---

# MBL Cash Monitor

MBL HoldCo cash management requires the bank portal as the authoritative daily source — not QuickBooks — because bank data is real-time and unaffected by posting delays, reconciliation lag, or accrual adjustments that can make QuickBooks balances misleading for operational decisions. This skill provides Dr. Lewis with a daily cash position and Matt Mathison with a weekly executive summary, with automated health tiering and escalation when reserves fall below safe thresholds.

## When to Use

- Daily: Dr. Lewis needs current cash position before approving any disbursement or transfer
- Weekly: Matt Mathison's executive cash briefing with forecast and health status
- When a portfolio company requests a management fee waiver or deferral
- When a significant AP obligation or capital expenditure requires cash coverage verification

## MBL Cash Monitor Framework

```
CASH SOURCE OF TRUTH
  Primary: Bank portal (real-time, authoritative for operational decisions)
  Secondary: QuickBooks (accrual-adjusted, used for reporting reconciliation only)
  Daily reconciliation: Bank portal balance vs QuickBooks cash account
  Rationale: Bank portal reflects cleared transactions; QuickBooks lags 1-3 days
    and includes uncleared items that overstate or understate actual available cash

3-TIER CASH HEALTH SYSTEM
  GREEN  — ≥3-month operating reserve (operating expenses x 3)
    Status: Normal operations; standard reporting cadence
  YELLOW — 2-3 months operating reserve
    Status: Monitor closely; weekly briefing escalated to Matt Mathison
    Action: Dr. Lewis reviews AP deferral opportunities; accelerates fee collections
  RED    — <2 months operating reserve
    Status: Immediate Matt Mathison briefing required (same business day)
    Action: Full cash preservation protocol; no discretionary spend; Matt approves all outflows

DAILY CASH POSITION
  Opening balance: Prior day bank portal closing balance
  Receipts today: Management fees received; portfolio distributions; other credits
  Disbursements today: Bill.com payments cleared; wire transfers; ACH debits
  Closing balance: Opening + receipts - disbursements
  Available credit: Revolving credit facility headroom (if applicable)
  Net position vs prior day: Delta and explanation of material changes

AP OBLIGATIONS VS CASH
  Bill.com payment queue: Scheduled payments next 7 / 14 / 30 days
  Total scheduled obligations next 30 days: Dollar amount
  Cash coverage ratio: Closing balance / 30-day obligations (target >=2.0x)
  At-risk obligations: Payments where cash coverage ratio <1.25x
  Deferred payment candidates: Low-priority vendors eligible for 15-30 day push

INTERCOMPANY TRANSFERS
  Management fee receipts: Allevio / HIVE Partners / Column6 — scheduled vs received
  Intercompany loans outstanding: Principal, rate, maturity, entity
  Transfer authorization log: All transfers logged with requestor, amount, date, Matt approval if >$25K
  Pending intercompany items: Transfers requested but not yet settled

13-WEEK CASH FORECAST
  Rolling 13-week horizon: Updated weekly every Monday
  Base case: Contracted receipts + scheduled disbursements
  Upside scenario: Accelerated management fee collection + distributions
  Downside scenario: One or more portfolio entities misses fee payment
  Key assumptions: Management fee schedule; Bill.com payment timing; no unplanned capex
  Minimum cash floor: 2-month operating expense reserve (hard floor)
  Weeks to floor breach (downside): Flagged if <8 weeks in downside scenario

AUTHORIZATION PROTOCOL
  <$25K: Dr. Lewis approves; logged in audit trail; Bill.com or wire
  >$25K: Matt Mathison written approval required before initiation
  Emergency (off-hours >$25K): Dr. Lewis notifies Matt via Teams; initiates with documented approval
  All transfers: Logged with amount, recipient, purpose, approver, timestamp, system reference
  Unauthorized transfer detection: Any Bill.com payment to unregistered vendor flagged immediately

DAILY/WEEKLY REPORTING CADENCE
  Daily (Dr. Lewis): Bank portal balance, 7-day obligations, health tier — by 8:00 AM MST
  Weekly (Matt Mathison): Full position + forecast + health trend — Monday by 9:00 AM MST
  Jimmy Lindsley: CC on weekly report; no action required unless Dr. Lewis flags
  Red-tier escalation: Immediate Teams message to Matt; phone call if no response in 2 hours
```

## Output Format

```markdown
## MBL Cash Monitor — [DAILY | WEEKLY] — [Date]

**Cash Health: GREEN / YELLOW / RED**
**Bank Portal Balance (as of [timestamp]):** $X,XXX,XXX
**Operating Reserve (months):** X.X months

### Daily Cash Position
| Item | Amount |
|------|--------|
| Opening Balance | $X,XXX,XXX |
| Receipts Today | +$XXX,XXX |
| Disbursements Today | -$XXX,XXX |
| Closing Balance | $X,XXX,XXX |
| Available Credit | $X,XXX,XXX |

### AP Obligations vs Cash (Next 30 Days)
- Scheduled obligations: $X,XXX,XXX
- Cash coverage ratio: X.Xx [OK / WATCH / ALERT]
- At-risk obligations: [None | List]

### Intercompany Transfers (Pending)
[None | List with entity, amount, status, authorization]

### 13-Week Forecast Summary (Weekly Only)
| Week | Base | Upside | Downside |
|------|------|--------|----------|
| Current | $X | $X | $X |
| +4 wks | $X | $X | $X |
| +8 wks | $X | $X | $X |
| +13 wks | $X | $X | $X |

### Authorization Queue
[Transfers requiring Matt Mathison approval | None pending]

### Action Items
- [ ] [Owner] [Action] by [Date]
```

## Output Contract

- The cash health tier (GREEN/YELLOW/RED) must appear in the first line of every output and must be derived exclusively from the bank portal balance divided by the trailing 30-day average operating expense run rate — never estimated or carried forward from the prior report. This is non-negotiable because a stale health tier could delay escalation during a rapid cash burn event, and Matt Mathison must be able to interpret any single report without context from prior reports.

- The authorization protocol section must appear in every report that contains any transfer or payment exceeding $25K, even if authorization has already been obtained. Repeating the authorization status in every report creates an auditable paper trail and prevents any payment from being processed without explicit approval documentation — a critical internal control for a PE HoldCo with fiduciary obligations to LPs.

- The 13-week forecast must include all three scenarios (base, upside, downside) and must be updated fresh each Monday rather than rolled forward. Stale forecasts are worse than no forecast because they create false confidence in cash adequacy; portfolio management fee timing can shift by weeks due to entity-level cash constraints, and the downside scenario must reflect current intelligence on each entity's ability to pay.

## System Dependencies

**Reads from:** Bank portal (primary cash source); Bill.com (payment queue and scheduled obligations); QuickBooks (reconciliation cross-check); portfolio entity fee schedules (SharePoint or M365)
**Writes to:** Monday.com cash position card (weekly); Teams message to Matt Mathison (red-tier escalation); audit log (all transfers and authorizations)
**HITL Required:** Matt Mathison approval for any transfer >$25K; Dr. Lewis review before weekly report distribution; Dr. Lewis same-day escalation on red-tier detection

## Test Cases

- **Golden path:** Bank portal shows $1.2M balance; monthly burn $300K; health tier GREEN; 30-day obligations $280K covered by $1.2M (4.3x coverage); 13-week forecast stable across all scenarios; weekly report generated and sent to Matt and Jimmy by 9:00 AM Monday.
- **Edge case:** Management fee from Allevio delayed by 2 weeks; base case forecast drops to 2.1 months reserve; system automatically upgrades to YELLOW; Dr. Lewis notified; weekly report includes Allevio fee collection action item with 7-day resolution deadline.
- **Adversarial:** Bill.com payment queue contains $45K wire to an unregistered vendor; system flags unauthorized vendor before payment clears; Dr. Lewis alerted immediately; payment held pending investigation; Matt Mathison briefed within 2 hours.

## Audit Log

Every cash report is timestamped and archived to SharePoint under /MBL Operations/Cash Management/[Year]/[Month]/ with filename convention YYYY-MM-DD_cash-[daily|weekly].md. Authorization events (approvals, holds, overrides) are logged to a separate /Authorizations/ folder with the approver identity, timestamp, and reference amount. Audit logs are retained for 7 years per MBL financial records policy and are available for LP reporting and regulatory review on request.

## Deprecation

This skill is deprecated when MBL HoldCo deploys a live treasury management system (TMS) with real-time bank feed integration that produces automated health-tier dashboards — at which point this skill transitions to exception-only escalation handling. Dr. John Lewis must review and approve deprecation; Matt Mathison must be briefed on the replacement system before this skill is removed from the active registry.
