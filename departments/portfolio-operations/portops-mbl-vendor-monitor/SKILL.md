---
name: portops-mbl-vendor-monitor
description: "monitor mbl vendor contracts, vendor contract renewal alert, 90-day contract renewal warning, bill.com payment verification, duplicate payment detection, unauthorized vendor flag, W-9 compliance tracker, 1099 threshold tracking, vendor performance scorecard, krista.ai SLA review, M365 vendor performance, gohighlevel vendor performance, vendor spend trend, vendor consolidation opportunities, new vendor approval gate, matt mathison vendor contract approval, annual contract renewal calendar, vendor risk monitor, vendor onboarding compliance, holdco vendor register"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<'renewal-alerts' | 'payment-audit' | 'w9-status' | 'scorecard' | 'spend' | 'all'>"
---

# MBL Vendor Monitor

MBL HoldCo vendor management has three failure modes that cost real money: missing a contract auto-renewal cancellation window, processing a duplicate or unauthorized payment through Bill.com, and filing 1099s without W-9s on file — all of which are preventable with disciplined monthly monitoring. This skill runs a monthly vendor health check covering the contract renewal calendar (90-day horizon), payment accuracy audit, W-9/1099 compliance, key vendor performance scorecards for Krista.ai, M365, and GoHighLevel, and vendor spend trend analysis, with Matt Mathison as the approval gate for any new contract exceeding $10K annually.

## When to Use

- Monthly vendor payment audit after Bill.com AP runs
- When a vendor contract renewal is approaching (triggered at 90 days out)
- Before submitting 1099s to ensure W-9 is on file and payments are reconciled
- Quarterly vendor performance scorecard review with Dr. Lewis
- Before onboarding any new vendor with an annual contract value exceeding $10K

## MBL Vendor Monitor Framework

```
VENDOR REGISTRY
  Master vendor list maintained in: SharePoint /MBL Operations/Vendors/Vendor-Register.xlsx
  Required fields per vendor: Legal name; category; contract start/end; ACV; auto-renew Y/N
    cancellation notice period; owner (Dr. Lewis or entity CEO); Bill.com vendor ID; W-9 status
  Registry audit: Quarterly reconciliation of Bill.com vendor list vs SharePoint register
    any Bill.com vendor not in SharePoint register is flagged as unauthorized

CONTRACT RENEWAL CALENDAR (90-DAY HORIZON)
  90-day alert: Schedule vendor review meeting; assess value vs alternatives
  60-day alert: Negotiate renewal terms or initiate termination notice
  30-day URGENT: Immediate action required; initiate renewal or send termination
    Matt Mathison approval required if renewed ACV >$10K (even for existing vendors)
  Auto-renew risk flag: Vendors with auto-renew AND cancellation notice >30 days
    get 90-day alert upgraded to URGENT because effective decision window closes early
  Next 12-month renewal calendar: Count by quarter; dollar value by quarter
  Negotiation leverage tracker: Incumbent advantage; switching cost; competitor pricing

BILL.COM PAYMENT VERIFICATION
  Monthly payment audit: Every payment in the period matched to a Bill.com approved bill
  Duplicate detection axes (all three required):
    Axis 1: Same vendor + same amount within 30 calendar days
    Axis 2: Same invoice number (regardless of date)
    Axis 3: Same Bill.com bill reference number paid twice
  Cross-channel detection: Bill.com payments vs QuickBooks journal entries
    catches payments made outside Bill.com (manual checks, wires not routed through Bill.com)
  Payment anomalies: Payments with no matching bill; payments to inactive vendors
    payments to new vendors added in past 30 days (heightened scrutiny)
  Authorization verification: All payments >$25K confirmed to have Matt written approval on file
  Payment accuracy rate: (Total payments - anomalies) / total payments (target 100%)

W-9 AND TAX COMPLIANCE
  W-9 requirement: Every vendor receiving payments for services must have current W-9 on file
  1099-NEC threshold: $600 cumulative in a calendar year triggers 1099 filing obligation
  W-9 collection workflow: New vendor onboarding in Bill.com blocked until W-9 received
  Expired W-9 flags: W-9 older than 3 years flagged for re-collection
  1099 prep tracking: Monthly YTD payment total per vendor vs $600 threshold
    vendors approaching threshold flagged in Q3 so W-9 collection has time to complete
  IRS filing deadline: January 31 for 1099-NEC; tracker shows days remaining during Q4

KEY VENDOR PERFORMANCE SCORECARD
  Krista.ai (strategic / AI orchestration):
    SLA adherence: Platform uptime vs 99.5% target
    Feature delivery: Roadmap items promised in current contract period — on track / delayed
    Support responsiveness: Average ticket response time vs SLA; escalation resolution time
    Integration reliability: Connector success rates (feeds from portops-mbl-system-ops)
    Overall score: GREEN / YELLOW / RED
    Renewal recommendation: Renew as-is / renegotiate / explore alternatives

  Microsoft M365 (infrastructure):
    SLA adherence: Exchange/Teams/SharePoint uptime vs 99.9% target
    Feature delivery: Features relevant to MBL workflow (Teams recording, SharePoint AI)
    Support responsiveness: Premier support ticket resolution time
    Overall score: GREEN / YELLOW / RED

  GoHighLevel CRM (sales and marketing):
    SLA adherence: Platform uptime vs published SLA
    Feature delivery: CRM roadmap items relevant to MBL and North Vista use cases
    Support responsiveness: Average chat/ticket response time
    Overall score: GREEN / YELLOW / RED

VENDOR SPEND ANALYSIS
  Monthly spend by vendor: Top 10 vendors by dollar amount
  YTD spend vs annual budget: By vendor and by category
  Spend concentration risk: Top 3 vendors as % of total vendor spend (flag if >50%)
  Quarter-over-quarter trend: Category-level spend change; flag >15% increase for explanation
  Budget vs actual: Each vendor's monthly cost vs budgeted amount in QuickBooks

VENDOR CONSOLIDATION OPPORTUNITIES
  Identification criteria: Two or more vendors with overlapping core capabilities
  Analysis per opportunity: Vendor A cost + Vendor B cost vs consolidated alternative cost
    switching cost estimate; integration complexity; risk of consolidation
  Savings estimate: Annual savings if consolidated (net of switching costs amortized 2 years)
  Ranking: By net annual savings potential; updated quarterly
  AI automation displacement: Functions being replaced by Krista.ai — candidate for vendor exit

MONTHLY VENDOR HEALTH REPORT FOR DR. LEWIS
  Distribution: Dr. Lewis (primary); Jimmy Lindsley (CC on renewal urgency alerts)
  Timing: By 7th business day of following month
  Format: Urgent renewal alerts at top; payment audit summary; W-9 gaps; scorecard; spend trend
  Escalations to Matt: New vendor approvals >$10K ACV; renewal approvals >$10K ACV;
    any duplicate payment detected >$1,000; any vendor receiving payment with no W-9
```

## Output Format

```markdown
## MBL Vendor Monitor — [Month YYYY]

**Renewals <30 Days:** [count] [URGENT / None]
**Duplicate Payment Exposure:** $[amount] [ALERT / None detected]
**W-9 Missing (above $600 threshold):** [count] [ACTION REQUIRED / None]

### Urgent Renewal Alerts
| Vendor | Expires | Days Out | ACV | Auto-Renew | Action Required |
|--------|---------|----------|-----|------------|-----------------|
| [Vendor] | [date] | [n] | $X | YES/NO | [action] |

### Payment Audit — [Month]
Total payments processed: $X ([n] payments)
Payment accuracy rate: XX%
Duplicates detected: $X exposure ([n] items) — [RESOLVED / PENDING]
Anomalies (no matching bill, inactive vendor): [n] items — [detail]
Payments >$25K missing Matt authorization: [list or None]

### W-9 / 1099 Status
| Vendor | W-9 on File | W-9 Date | YTD Payments | 1099 Threshold |
|--------|-------------|----------|--------------|----------------|
[rows for vendors above $600 or missing W-9]
All other vendors: W-9 on file and below threshold [OK]

### Vendor Performance Scorecards
| Vendor | SLA | Features | Support | Overall | Renewal Rec |
|--------|-----|----------|---------|---------|-------------|
| Krista.ai | XX% | [status] | [avg time] | GREEN/YELLOW/RED | [rec] |
| M365 | XX% | [status] | [avg time] | GREEN/YELLOW/RED | [rec] |
| GoHighLevel | XX% | [status] | [avg time] | GREEN/YELLOW/RED | [rec] |

### Vendor Spend Trend
| Category | Prior Quarter | Current Quarter | Change |
|----------|--------------|-----------------|--------|
[rows]

### Consolidation Opportunities
1. [Vendor A + Vendor B] — Est. annual savings: $X — Difficulty: [Low/Med/High]

### Pending Matt Approvals (>$10K ACV)
- [Vendor] | ACV $X | [business case summary] | Status: PENDING
- None pending

### Action Items
- [ ] [Owner] [Action] by [Date]

_Sources: Bill.com payment data [date]; SharePoint vendor register [version]; QuickBooks YTD payments [date]._
```

## Output Contract

- The 90-day renewal alert horizon is non-negotiable for vendors with auto-renew clauses, and the effective alert date must account for the contractual cancellation notice period — a vendor with a 60-day cancellation notice and a renewal date 75 days out has only 15 days to act, not 75. Missing this window on an unwanted auto-renew creates a legal obligation requiring vendor negotiation or contract exit fees far more expensive than the monitoring investment; the skill must calculate effective decision deadline, not just renewal date.

- Duplicate payment detection runs on three independent axes simultaneously because any single axis alone misses common duplicate patterns — same amount from different invoice numbers, same invoice number on different billing cycles, or the same payment submitted through both Bill.com and a manual check outside the normal AP workflow. Cross-channel detection against QuickBooks journal entries is mandatory, not optional, because payments routed outside Bill.com are invisible to a Bill.com-only scan and represent the highest-risk duplicate scenario.

- Vendor performance scorecards for Krista.ai, M365, and GoHighLevel are strategically prioritized because these three vendors directly power MBL's AI orchestration strategy and Matt's daily operational workflows — a vendor that scores RED on support responsiveness or feature delivery is not just a service quality issue, it is a strategic risk to the Phase 0-4 AI roadmap timeline. Scorecard data is retained for at least four quarters so it informs contract renewal negotiations with specific performance evidence rather than recency bias.

## System Dependencies

**Reads from:** Bill.com (payment history, vendor register, invoice matching, payment queue); QuickBooks (vendor master, YTD payment totals, budget baseline); SharePoint (vendor register, contract repository, renewal dates, ACV, W-9 files); Krista.ai platform (SLA reports, connector metrics from portops-mbl-system-ops); M365 Admin Center (support ticket history); GoHighLevel support portal
**Writes to:** Monday.com (renewal alert tasks with due dates, W-9 collection tasks, duplicate payment investigation tasks); Dr. Lewis monthly digest; Matt Mathison approval requests via Outlook for new/renewed vendor contracts >$10K ACV; Jimmy Lindsley CC on renewal urgency alerts
**HITL Required:** Matt Mathison approves all new and renewed vendor contracts with ACV >$10K before any agreement is signed or auto-renew is confirmed; Dr. Lewis approves duplicate payment recovery communications to vendors; Finance (or Dr. Lewis) reviews W-9 gaps before 1099 filing deadline to ensure no missed obligations

## Test Cases

- **Golden path:** All contract renewals greater than 90 days out; zero duplicate payments across all three detection axes; all vendors above $600 threshold have current W-9 on file; all vendor performance scores GREEN; no new vendors pending Matt approval — report generates with no flags across all sections.
- **Edge case:** A vendor has an auto-renew clause with a 60-day cancellation notice requirement but the contract end date is 65 days away — skill must classify this as URGENT (5-day effective window), not the standard 61-90 day category, escalate to Dr. Lewis immediately rather than waiting for the next monthly report cycle, and calculate the exact cancellation letter deadline.
- **Adversarial:** The same vendor is paid via Bill.com for one invoice and via a manual check (posted directly to QuickBooks) for a second invoice in the same month — skill must detect the cross-channel duplicate by comparing Bill.com payment records against QuickBooks journal entries for the same vendor in the same period, not just scanning within Bill.com alone, and flag the total combined exposure.

## Audit Log

All renewal alerts are logged with send date, days-to-expiry at time of alert, and ultimate resolution (renewed, terminated, renegotiated, no action). Duplicate payment findings are logged with detection date, detection method (which axis triggered), dollar amount, vendor name, recovery action initiated, and resolution date with amount recovered or written off. W-9 collection requests are logged with vendor name, request date, method, and receipt confirmation. New vendor approvals and rejections are logged with Matt's decision, decision date, stated rationale, and ACV. Vendor performance scorecards are archived quarterly in SharePoint for contract negotiation reference and historical trend analysis.

## Deprecation

This skill is superseded if MBL HoldCo implements a dedicated vendor management platform such as Vendr or Zip with contract repository, renewal alerting, spend analytics, and W-9 workflow built in. At that point, the contract renewal calendar and spend analysis sections are replaced by platform data exports, and this skill retains the payment audit logic and W-9 compliance tracking until those capabilities are fully operational in the replacement platform. Do not deprecate W-9 and 1099 tracking until the replacement system has successfully completed at least one full 1099 season with zero missed filings.
