---
name: fin-ops-ar-aging-manager
description: "Manage accounts receivable aging — monitor, escalate, and action on overdue invoices. Use when the user says 'AR aging', 'accounts receivable aging', 'aging report', 'AR report', 'overdue invoices', 'invoice aging', 'AR management', 'AR status', 'outstanding invoices', 'past due invoices', 'AR health', 'DSO', 'days sales outstanding', 'collections aging', 'AR review', 'AR dashboard', 'AR weekly review', 'aging buckets', 'invoice overdue', or 'AR summary'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--as-of <YYYY-MM-DD>] [--focus <all|30-60|60-90|90-plus>] [--action <review|escalate|report>]"
---

# AR Aging Manager

Manage the accounts receivable aging report for MBL portfolio companies — running a disciplined weekly review, actioning on overdue buckets, escalating appropriately, and maintaining DSO within target. AR aging is the single most important AR management tool: it tells you who owes money, how long they've owed it, and where the collection risk is concentrating. At PE portfolio companies, DSO above 35 days is a cash flow tax that erodes working capital and compounds as revenue grows. Dr. Lewis reviews the AR aging every Monday AM and drives collections actions at the controller level.

## When to Use
- Monday AM weekly AR review (standard cadence — non-negotiable)
- Month-end AR aging required for close (must tie to QuickBooks AR balance)
- A customer dispute is escalating — where does their aging stand?
- Preparing the monthly KPI dashboard (DSO metric)
- CEO or Matt Mathison requests an AR status update

## AR Aging Framework

```
AR aging bucket definitions and response protocol:

  CURRENT (0-30 days) — MONITOR:
    Status: Normal; within payment terms (Net 30 is current at day 30)
    Action: No outbound contact required; confirm invoice was received if large
    Responsibility: Controller tracks; Dr. Lewis reviews at month-end
    
  BUCKET 1: 31-60 DAYS PAST DUE — EMAIL CONTACT:
    Status: First delinquency; may be administrative (invoice lost, wrong contact)
    Action: Friendly email reminder within 3 business days of aging into bucket
      Template: "Hi [Name], this is a quick note to remind you that invoice #[N] for $[X]
        dated [date] is now past due. Please let us know if you have any questions or if
        you've already sent payment. [Payment link or instructions]."
    Responsibility: Controller sends email; Dr. Lewis reviews the bucket weekly
    Escalation: If no response or promise to pay within 10 days → Bucket 2 protocol
    
  BUCKET 2: 61-90 DAYS PAST DUE — PHONE CONTACT:
    Status: Significant delinquency; must be treated as a collections priority
    Action: Phone call within 2 business days of aging into bucket
      Goal of the call: Get a specific payment commitment ("payment will be sent by [date]")
      Documented outcome: "Customer confirmed payment by [date]" or "Customer disputes [specific issue]"
    Responsibility: Dr. Lewis handles phone contact for amounts >$5K; controller handles <$5K
    If disputed: Document the dispute; investigate; resolve within 10 business days
    If payment promised: Confirm receipt by promised date; if not received, escalate to Bucket 3
    Escalation: If no payment or resolution within 15 days → Bucket 3 / CEO escalation
    
  BUCKET 3: 91-120 DAYS PAST DUE — CEO ESCALATION:
    Status: Serious delinquency; CEO and Matt Mathison awareness required
    Action: CEO briefed; decision made on escalation path
      Option A: Internal collections escalation (formal demand letter + payment plan offer)
      Option B: Pause new services to the customer (if ongoing relationship)
      Option C: Refer to collections agency or outside counsel
    Write-off consideration: At 91+ days, begin evaluating whether to write off
      Write-off authority: <$500 Dr. Lewis; >$500 CEO + Dr. Lewis; >$5K Matt Mathison notification
    Responsibility: Dr. Lewis and CEO jointly manage; Matt Mathison notified
    
  BUCKET 4: 120+ DAYS PAST DUE — BAD DEBT / LEGAL:
    Status: Probable bad debt; recovery is uncertain
    Action: Dr. Lewis presents write-off recommendation to CEO
      If writeable: Write off (accounting entry); issue 1099-C if required (debt cancellation >$600)
      If material: Collections agency or litigation (Matt Mathison decision)
    Responsibility: Dr. Lewis and Matt Mathison jointly decide the path

Entity-specific AR dynamics:

  ALLEVIO (Healthcare):
    Payer AR: Insurance reimbursements (30-90 day standard lag); managed by Marshall Medical Billing
      Monitor: ERA (Electronic Remittance Advice) processing rate; denial rate by payer
      Target: Denial rate <5%; ERA received within 45 days
    Employer group AR: PMPM invoices; Net 15; should age to 31+ rarely
      DSO target for employer groups: ≤20 days
    
  HIVE PARTNERS (Oil & Gas):
    Production payment AR: Operator distributes 60 days after the production month (normal, not a collection issue)
      Model explicitly: Expected payments 60 days out; do not treat as past due until Day 75
    LOE reimbursements: Should clear within 45 days; flag at 60+
    
  COLUMN6 / SIPROCAL (CTV/Advertising):
    Agency AR: 30-60 day payment cycles are common in advertising; strict enforcement builds reputation
    Direct advertiser AR: Net 30; hold new campaigns at 45+ days past due
    Discrepancy disputes: If an advertiser disputes delivery data — investigate within 5 business days before escalating
    
DSO calculation:

  DSO = (Accounts Receivable Balance ÷ Revenue for the period) × Number of days in the period
  
  Example (monthly): AR balance $285K; June revenue $320K; June = 30 days
  DSO = ($285K ÷ $320K) × 30 = 26.7 days → EXCELLENT (below 35-day target)
  
  Monitor DSO monthly; report in the KPI dashboard; trend line matters more than any single month
  A DSO trend that's increasing month-over-month is an early warning signal even if still below 35 days
```

## Output Format

```markdown
# AR Aging Report — [Entity]
**As of:** [Date] | **Prepared by:** Dr. Lewis | **Review cadence:** Weekly Monday AM

---

## DSO Trend

| Month | Revenue | AR Balance | DSO | Target | Status |
|-------|---------|-----------|-----|--------|--------|
| [Month-3] | $[X]K | $[X]K | [X] days | ≤35 days | 🟢/🟡/🔴 |
| [Month-2] | $[X]K | $[X]K | [X] days | ≤35 days | 🟢/🟡/🔴 |
| [Month-1] | $[X]K | $[X]K | [X] days | ≤35 days | 🟢/🟡/🔴 |
| **[Current]** | **$[X]K** | **$[X]K** | **[X] days** | ≤35 days | 🟢/🟡/🔴 |

**Trend:** Improving / Stable / ⚠️ Deteriorating

---

## Aging Buckets — Current Week

| Bucket | # Invoices | Amount | % of Total AR | Action Protocol |
|--------|-----------|--------|--------------|----------------|
| Current (0-30 days) | [N] | $[X]K | [X]% | Monitor |
| 31-60 days | [N] | $[X]K | [X]% | Email reminder sent ✅/⚠️ |
| 61-90 days | [N] | $[X]K | [X]% | Phone contact required ⚠️ |
| 91-120 days | [N] | $[X]K | [X]% | CEO escalation ❌ |
| 120+ days | [N] | $[X]K | [X]% | Write-off review ❌ |
| **Total AR** | **[N]** | **$[X]K** | **100%** | |

---

## Action Items — This Week

| Customer | Invoice # | Amount | Days Past Due | Last Contact | Action This Week | Owner |
|---------|-----------|--------|--------------|-------------|-----------------|-------|
| [Customer A] | INV-[N] | $[X]K | 45 days | [Date] — no reply | Phone call — Dr. Lewis | Dr. Lewis |
| [Customer B] | INV-[N] | $[X]K | 38 days | [Date] — email sent | Follow-up email | Controller |
| [Customer C] | INV-[N] | $[X]K | 95 days | [Date] — promised 6/15 | Confirm receipt; if not paid → CEO | Dr. Lewis |

---

## Escalations This Week

**CEO brief required:** [Customer C — $[X]K at 95 days; promised payment not received; recommend: formal demand letter or service pause]
**Matt Mathison notification:** [None / Customer D — write-off recommendation >$5K]
```

## Output Contract
- Monday AM review without exception — the AR aging review on Monday morning is not optional; it is the mechanism that keeps DSO under control; when the Monday review is skipped (even once), invoices age one more week in each bucket without action, and the 61-90-day bucket in particular compounds quickly; Dr. Lewis conducts the Monday AR aging review for all three portfolio entities and produces the action item list for the controller before 10 AM; any items requiring Dr. Lewis's direct action (phone calls >$5K, CEO escalations) are on Dr. Lewis's calendar for that week
- Action every bucket with a specific next step, not a status update — "in process" and "following up" are not action items; every past-due invoice in the 31+ buckets has a specific next action with a specific owner and specific deadline: "email by Tuesday 5 PM," "phone call before Wednesday noon," "CEO brief in Friday meeting"; the weekly review drives action, not observation
- DSO trend is the leading indicator — a single week's AR aging can be distorted by timing (large invoice just sent, large payment just received); DSO trend over 3-4 months is the true signal; Dr. Lewis reports the 3-month DSO trend in the KPI dashboard and alerts the CEO when DSO is increasing for 2 consecutive months, even if it's still below the 35-day target; catching the trend early prevents a DSO crisis later
- HITL required: Controller handles email reminders and phone calls <$5K; Dr. Lewis handles phone contacts >$5K and all CEO escalations; CEO is briefed on all 91+ day accounts; Matt Mathison notified for write-off recommendations >$5K; write-offs require CEO approval ($500-$5K) or Matt Mathison notification (>$5K)

## System Dependencies
- **Reads from:** QuickBooks AR aging report (run each Monday AM); invoice records; prior week's action log; customer payment history; credit limit file (fin-ops-customer-credit-manager)
- **Writes to:** Weekly action item list (Monday.com AR board or SharePoint); CEO escalation brief (when required); Matt Mathison notification (write-off >$5K); collections log (date of contact, response, commitment); DSO metric to KPI dashboard
- **HITL Required:** Dr. Lewis reviews weekly; phone contacts >$5K by Dr. Lewis; CEO briefed on 91+ days; Matt Mathison approves write-off >$5K; service suspensions require Dr. Lewis + CEO alignment

## Test Cases
1. **Golden path:** Column6 Monday AM AR review — 3 past-due invoices → 31-60 bucket: InvMedia LLC, $12K, 38 days, email sent last week, no reply; Dr. Lewis schedules phone call for Tuesday; 61-90 bucket: DataCore Agency, $28K, 74 days, phone call 10 days ago, promised payment by 6/10, payment not received; Dr. Lewis sends payment demand letter and briefs CEO; Current bucket: all other invoices within 30 days, no action; DSO this month: 31 days (below 35-day target ✅); trend: 28 → 30 → 31 days (slight upward trend — monitor but not alarming); action list delivered to controller by 9:30 AM Monday
2. **Edge case:** Allevio's payer AR is showing $180K in the 61-90-day bucket — is this a collection problem? → Dr. Lewis investigates: The AR consists of insurance reimbursement claims submitted 45-75 days ago; the 61-90-day bucket for Allevio payer AR is not collections-delinquent the same way a commercial invoice would be — payer reimbursement timelines of 45-75 days are standard; the question is whether these specific claims have been denied, rejected, or are just pending; Dr. Lewis queries Marshall Medical Billing: what is the denial rate? Are these claims in process or rejected? If denied: work the denials immediately (denial appeals are time-limited); if pending: track the expected payment date and escalate any claims over 90 days to Marshall Medical Billing for status; Dr. Lewis adjusts the AR aging report for Allevio to show payer AR separately from commercial AR with different escalation thresholds (90 days for payer; 45 days for commercial)
3. **Adversarial:** A sales rep wants Dr. Lewis to hold off on collections contact for a key advertiser (Column6) who is 75 days past due — "they're in a budget cycle and calling them will hurt the relationship" → Dr. Lewis holds the call for 5 business days if there is a documented, specific reason (e.g., the advertiser sent an email saying "we're processing payment in our budget cycle closing [date]"); Dr. Lewis will not hold collections contact indefinitely based on a sales rep's intuition about the relationship; if the advertiser hasn't paid by Day 80, Dr. Lewis calls regardless; the conversation is professional: "Hi [Name], I'm calling about invoice #[N] for $[X]K that's now 80 days past due. I want to make sure this doesn't create any issues for our relationship — can you confirm when payment will be sent?" The goal is to get a specific date, not to threaten; Dr. Lewis tracks the commitment and follows up on the promised date

## Audit Log
Weekly AR aging reports retained. All collections contact records retained (date, method, outcome, commitment). CEO escalation briefs retained. Write-off decisions retained with approval. DSO trend data retained monthly. HIVE production payment timing model retained.

## Deprecation
Retire when each portfolio company has a controller who manages the AR aging review independently — with Dr. Lewis reviewing the weekly summary, handling escalations >$5K, and Matt Mathison approving write-offs >$5K.
