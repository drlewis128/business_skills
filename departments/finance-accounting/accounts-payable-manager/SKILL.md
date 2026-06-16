---
name: accounts-payable-manager
description: "Manage accounts payable and vendor payments. Use when the user says 'accounts payable', 'AP management', 'pay vendors', 'vendor invoices', 'bill.com', 'pay bills', 'manage payables', 'vendor payments', 'AP process', 'invoice processing', 'pay our vendors', 'outstanding bills', or 'vendor invoice management'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <review|approve|schedule|report>] [--period <weekly|monthly>]"
---

# Accounts Payable Manager

Manage the accounts payable process — reviewing, approving, scheduling, and tracking vendor payments for MBL portfolio companies. AP management through Bill.com is the primary tool: it provides the approval workflow, payment scheduling, and audit trail. Good AP management means vendors are paid on time (protecting relationships), cash is optimized (paying at the last day of terms, not early), and every dollar spent is reviewed and approved before it leaves the company.

## When to Use
- Weekly AP review — which bills are due this week?
- A vendor payment needs to be approved in Bill.com
- Matt Mathison asks "what do we owe and when is it due?"
- Month-end close — all AP must be reviewed and reconciled
- A vendor flags a late payment or payment dispute
- Setting up a new vendor in Bill.com

## AP Standards

```
Bill.com is the primary AP tool for MBL portfolio companies.
All vendor payments flow through Bill.com for:
  - Approval workflow (multi-step for amounts over threshold)
  - Payment scheduling (ACH, check, wire)
  - Audit trail (who approved, when, what amount)
  - QuickBooks integration (auto-sync)

Payment timing policy:
  - Pay on the last day of terms, not early (cash optimization)
  - Net 30 vendors: pay on Day 30
  - Net 15 vendors: pay on Day 15
  - Early payment discounts (2/10 Net 30): always take — 2% for 20 days = 36% annualized

Approval thresholds (Bill.com):
  < $1,000: Controller or designated approver
  $1,000 - $10,000: Dr. Lewis must approve
  > $10,000: Matt Mathison must approve
  New vendors (first payment): Always Dr. Lewis reviews; Matt Mathison for >$10K
```

## Output Format

```markdown
# AP Report — <Company Name>
**Period:** [Week of <Date> / Month of <Month>]
**Prepared by:** Dr. John Lewis | **System:** Bill.com → QuickBooks

---

## AP Summary

| Category | Amount | Count | Action |
|---------|--------|-------|--------|
| **Due this week** | **$[X]** | [N] bills | Review and approve |
| **Due next week** | $[X] | [N] bills | Schedule in advance |
| **Past due** | $[X] | [N] bills | Immediate — pay today |
| **Disputed** | $[X] | [N] bills | Hold — investigating |
| **Total outstanding AP** | **$[X]** | **[N] bills** | |

---

## Bills Due This Week

| Vendor | Invoice # | Invoice date | Due date | Amount | Category | Approval status | Action |
|--------|----------|------------|---------|--------|---------|----------------|--------|
| [Vendor 1] | [#] | [Date] | [Date] | $[X] | [Rent / Software / Professional Svcs] | Approved / Pending | Pay by [date] |
| [Vendor 2] | | | | | | | |
| [Vendor 3] | | | | | | | |
| **Total** | | | | **$[X]** | | | |

---

## Past Due AP (Immediate Action Required)

| Vendor | Invoice # | Due date | Days past due | Amount | Reason for delay | Action |
|--------|----------|---------|--------------|--------|-----------------|--------|
| [Vendor] | [#] | [Date] | [N] days | $[X] | [Approval pending / system issue / dispute] | [Pay today / hold — dispute] |

**Past due total:** $[X] — **flag: any past due AP requires explanation and immediate resolution**

---

## Upcoming AP (Next 14 Days)

| Vendor | Amount | Due date | Notes |
|--------|--------|---------|-------|
| [Payroll service] | $[X] | [Date] | Payroll — cannot be late |
| [Rent] | $[X] | [Date] | |
| [Subscription auto-renew] | $[X] | [Date] | Verify contract still active |
| **Total upcoming** | **$[X]** | | |

---

## New Vendors Added This Period

| Vendor name | Category | Bank account verified | Added by | Dr. Lewis reviewed | Matt Mathison reviewed |
|------------|---------|----------------------|---------|------------------|----------------------|
| [Vendor] | [Category] | ✅ / ❌ | [Name] | ✅ / Pending | ✅ / N/A (<$10K) |

---

## AP to QuickBooks Reconciliation

| | Bill.com | QuickBooks | Variance |
|---|---|---|---|
| Total outstanding AP | $[X] | $[X] | $[±X] |
| Payments made this period | $[X] | $[X] | $[±X] |

Reconciliation status: ✅ Reconciled / ❌ Variance of $[X] — investigation in progress

---

## Vendor Disputes or Holds

| Vendor | Amount | Dispute reason | Status | Target resolution |
|--------|--------|---------------|--------|-----------------|
| [Vendor] | $[X] | [Duplicate invoice / Service not delivered / Incorrect amount] | [Investigating / Contacted vendor / Escalated] | [Date] |

**Matt Mathison flag:** [Any dispute >$5K or any new vendor payment >$10K requiring approval]
```

## Output Contract
- Past due AP always flagged — past due vendor invoices damage vendor relationships, can trigger late fees, and indicate a process breakdown; any invoice more than 5 days past due must be explained and resolved in the current week's AP report; "we forgot" is not an acceptable explanation more than once
- New vendor bank accounts always verified before first payment — ACH fraud and vendor impersonation are the most common sources of payment fraud; a new vendor's bank account information must be verified through the official vendor contact (not through a document someone sent in email) before any payment is made; Bill.com's vendor verification process must be completed for all new vendors
- Payment timing optimized for cash — paying 30 days before the due date is the same as giving the vendor a 30-day free loan; all payments scheduled on the due date (or last business day before); early payment discounts exceeding 2% annualized should always be taken
- Bill.com → QuickBooks sync verified monthly — the AP subledger (Bill.com) must reconcile to the QuickBooks general ledger; any variance requires immediate investigation and resolution
- HITL required: Dr. Lewis reviews and approves all AP $1K-$10K; Matt Mathison approves all AP >$10K; new vendors >$10K require Matt Mathison review; no payment made without appropriate approval; any new vendor ACH payment requires bank account verification before first payment

## System Dependencies
- **Reads from:** Bill.com (invoice management and payment scheduling), vendor contracts (payment terms), QuickBooks (GL sync)
- **Writes to:** Bill.com (payment approvals and scheduling), QuickBooks (via Bill.com sync), AP report (SharePoint/Finance/AP/)
- **HITL Required:** Dr. Lewis approves $1K-$10K; Matt Mathison approves >$10K; new vendor first payment always reviewed by Dr. Lewis; bank account verification before first ACH

## Test Cases
1. **Golden path:** Allevio weekly AP review (June 9-13) → Due this week: rent $3,800 (approved — Dr. Lewis), software subscription auto-renewal $1,450 (verified active — approved Dr. Lewis), professional services $7,200 (CPA invoice — approved Dr. Lewis); due next week: payroll service $23,400 (requires Matt Mathison — sent for approval); past due: none; new vendor: lab supply company $2,800 first payment — bank account verified via phone call to vendor AP contact — approved Dr. Lewis; Bill.com → QB reconciliation: ✅ matched; Matt Mathison flag: payroll service payment $23,400 due June 17 — requesting approval; Matt Mathison approved within 24 hours
2. **Edge case:** A vendor sends an email saying their banking information has changed and requests that the next payment be sent to a new account → stop — do not change vendor banking information based on an email; this is one of the most common AP fraud vectors; call the vendor's known phone number (not the number in the email) and verbally confirm the change; if they confirm, update in Bill.com with a note documenting the verification call (date, time, person spoken to); if they don't confirm (the vendor didn't request a change), the email is fraudulent — notify Matt Mathison and document the incident
3. **Adversarial:** A portfolio company CEO requests that a vendor be paid immediately (same-day wire) before the approval workflow is complete, citing an "urgent situation" → the approval workflow exists to protect the company; same-day payment without approval bypasses the control; at minimum, obtain verbal approval from Matt Mathison if >$10K and document it before processing the payment; if the CEO cannot or will not involve Matt Mathison, do not process the payment; escalate to Matt Mathison; "urgency" is never a reason to bypass financial controls — it is the exact situation that fraud exploits

## Audit Log
All vendor invoices retained in Bill.com with approval history. Payment dates and amounts logged. New vendor setup documentation retained including bank account verification. Approval decisions (Dr. Lewis and Matt Mathison) with dates retained. Any disputes, holds, or fraud flags documented.

## Deprecation
Retire when portfolio companies have dedicated AP staff or a controller who owns the AP function day-to-day with Bill.com, and Dr. Lewis's role shifts to oversight and exception escalation only.
