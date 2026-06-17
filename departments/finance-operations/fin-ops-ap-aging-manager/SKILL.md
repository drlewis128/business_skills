---
name: fin-ops-ap-aging-manager
description: "Manage AP aging — review past-due payables, vendor dispute resolution, and payment prioritization. Use when the user says 'AP aging', 'accounts payable aging', 'past due payables', 'AP aging report', 'overdue payables', 'vendor aging', 'what do we owe', 'AP review', 'AP balance', 'past due vendors', 'vendor dispute', 'vendor past due', 'AP management', 'payable aging', 'bills past due', 'how old is our AP', or 'aging payables'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--age <30|60|90|all>] [--vendor <name>] [--action <review|prioritize|dispute>]"
---

# AP Aging Manager

Review and manage the accounts payable aging for MBL portfolio companies — ensuring vendors are paid on time, flagging past-due payables, managing vendor disputes, and prioritizing payments when cash is constrained. AP aging management is a weekly discipline: Dr. Lewis reviews the AP aging every Monday to confirm that the payment cycle is functioning correctly, no vendor has been inadvertently missed, no past-due balance has accumulated, and no duplicate or fraudulent invoice has entered the system. A clean AP aging is a sign of a well-run finance operation; a tangled AP aging with items >60 days past due is a sign of a broken process.

## When to Use
- Weekly Monday morning review — standard process
- Before any payment batch — confirm what's due this week
- A vendor contacts about a past-due payment
- Month-end close — AP aging must reconcile to QuickBooks before close is approved
- Cash is constrained and payments must be prioritized

## AP Aging Framework

```
AP aging buckets:
  Current (0-30 days from invoice date): Normal; expected; no action unless due this week
  31-60 days past due: Should have been paid; investigate why it wasn't
  61-90 days past due: Problem; vendor likely to contact; immediate attention
  91+ days past due: Serious; vendor relationship at risk; escalate to CEO
  
AP aging management cycle (weekly, Monday AM):

  PULL THE REPORT:
    QuickBooks: Reports → Accounts Payable Aging Detail (detailed view by vendor)
    Confirm: Report as of today; not a stale report from last week
    
  REVIEW CURRENT (0-30 days):
    Identify: Which invoices are due this week or next week?
    Add to: This week's payment batch prep (fin-ops-payment-runner inputs)
    Flag: Any current invoice that is in dispute (coding question, amount discrepancy) → hold; resolve before including in payment batch
    
  REVIEW 31-60 DAYS PAST DUE:
    For each invoice: Why wasn't this paid?
    Common reasons:
      a. Approval pending — approver didn't click approve in Bill.com → remind approver
      b. Invoice in dispute — amount or services disputed → resolve or hold
      c. Payment ran but didn't clear → investigate (ACH return? Wrong bank account?)
      d. Missed in the weekly batch — add to this week's batch immediately
    Action: For uncomplicated past-dues — include in this week's payment batch with a note
    Vendor contact: If the vendor has already reached out about the past due — respond immediately
    
  REVIEW 61-90 DAYS PAST DUE:
    Contact vendor proactively before they contact you
    "We have an outstanding invoice #[N] from [date] for $[X]. I'm confirming this is on our list for this week's payment batch. Can you confirm the current amount owed including any late charges?"
    Add to this week's payment batch
    Investigate root cause: How did this get to 60+ days?
    
  REVIEW 91+ DAYS PAST DUE:
    Escalate to CEO immediately — a vendor with a 90-day past due balance has not received payment in 3 months
    Potential consequences: Vendor suspends service; late fees; vendor sends to collections; credit report impact
    CEO authorizes payment; Dr. Lewis manages vendor communication
    
  Vendor dispute process:
    If the past-due amount is disputed (invoice amount wrong, services not received):
    1. Document the dispute reason in Bill.com/QuickBooks
    2. Contact vendor in writing (email) with the specific dispute: "Invoice #[N] for $18,500 shows 400 hours at $46.25/hour. Our records show 380 hours at the agreed rate. We are holding payment pending resolution."
    3. Resolve: Agree on correct amount; vendor issues a credit memo or corrected invoice
    4. Pay the undisputed portion while the dispute is pending (shows good faith)
    5. Document the resolution; update the invoice record
    
  Payment prioritization (when cash is constrained):
    Priority 1 — Critical services: Payroll (employees first), utilities, insurance
    Priority 2 — Regulatory: Any vendor with regulatory implications (malpractice insurance, licensing fees)
    Priority 3 — Critical operations: Vendors whose non-payment would stop operations
      (Allevio: AdvancedMD, Marshall Medical Billing — billing stops without these)
      (HIVE: Operator invoices — production stops without payment)
    Priority 4 — Standard vendors: Pay in due date order; oldest first
    Priority 5 — Discretionary: Marketing, consulting — defer if cash is constrained
    
  Month-end AP aging reconciliation:
    Total AP aging (sum of all outstanding invoices) must equal the QuickBooks AP balance
    If they don't match: There are either unmatched invoices or payments not posted correctly
    Resolve before the GL reconciliation is complete (fin-ops-gl-reconciler requirement)
```

## Output Format

```markdown
# AP Aging Review — [Entity]
**Date:** [Date] | **Reviewed by:** Dr. Lewis / Controller
**Total AP outstanding:** $[X] | **Total current:** $[X] | **Total past due:** $[X]

---

## AP Aging Summary

| Bucket | Amount | # Invoices | Status |
|--------|--------|-----------|--------|
| Current (0-30 days) | $[X]K | [N] | ✅ Normal |
| 31-60 days past due | $[X]K | [N] | ⚠️ Action this week |
| 61-90 days past due | $[X]K | [N] | ❌ Immediate attention |
| 91+ days past due | $[X] | [N] | 🚨 Escalate to CEO |
| **Total** | **$[X]K** | **[N]** | |

---

## Past Due Detail

| Vendor | Invoice # | Invoice date | Amount | Days past due | Root cause | Action |
|--------|----------|-------------|--------|--------------|-----------|--------|
| [Vendor A] | [#N] | [Date] | $[X] | 38 days | Approval pending — CEO not clicked | Remind CEO today |
| [Vendor B] | [#N] | [Date] | $[X] | 65 days | Coding dispute resolved last week | Include in Tuesday batch |
| [Vendor C] | [#N] | [Date] | $[X] | 92 days | Unknown — investigating | Escalate to CEO today |

---

## Disputed Invoices

| Vendor | Invoice # | Amount | Dispute reason | Undisputed portion | Status |
|--------|----------|--------|--------------|------------------|--------|
| [Vendor D] | [#N] | $18,500 | Hours billed 400 vs. 380 agreed | $17,575 (380 hrs × $46.25) | Email sent [Date]; awaiting credit memo |

---

## This Week's Payment Priority (inputs to fin-ops-payment-runner)

| Priority | Vendor | Amount | Due date | Reason |
|---------|--------|--------|---------|--------|
| 1 | [AdvancedMD] | $1,850 | [Date] | Critical operations — billing system |
| 2 | [Malpractice insurance] | $2,050 | [Date] | Regulatory |
| 3 | [Vendor A] | $[X] | Past due | Past due — include to clear aging |

---

## Month-End AP Reconciliation

**AP aging total:** $[X]K
**QuickBooks AP balance:** $[X]K
**Difference:** $0.00 ✅ / $[X] ❌ — investigating
```

## Output Contract
- Weekly Monday review is non-negotiable — the AP aging review on Monday morning provides the inputs for the weekly payment batch and catches past-due balances before they become vendor relationship issues; a company that reviews AP aging monthly (only at close) will consistently have 31-60 day past-dues that should have been caught at 15 days; Dr. Lewis performs this review personally or reviews the controller's report every Monday; the review takes 15 minutes for a well-organized AP aging and should never be skipped
- Root cause for every past-due item — a past-due invoice must have a specific root cause: "approval pending" or "in dispute" or "missed in batch" or "ACH returned"; "unknown" is not acceptable after day 1 of being past due; if the controller can't identify the root cause in the weekly review, Dr. Lewis investigates; the most dangerous past-due items are those where the root cause is unknown — they may indicate a payment that was made but not matched, a duplicate invoice that was already paid, or a fraudulent invoice that slipped through approval
- Pay the undisputed portion of a disputed invoice — withholding the entire payment on a disputed invoice damages the vendor relationship and may breach the payment terms in the contract; standard practice is to pay the undisputed amount (the portion both sides agree on) while the dispute is pending; this shows good faith and prevents a dispute over $1,000 from holding up payment of $17,000; the disputed amount is held and released when the dispute is resolved; Dr. Lewis documents the specific disputed amount and the resolution pathway in the invoice record
- HITL required: Controller pulls and reviews the AP aging weekly; Dr. Lewis reviews the controller's weekly aging report and approves all payment prioritization decisions when cash is constrained; Dr. Lewis reviews all 61+ day past-due items personally; 91+ day past-dues escalated to CEO immediately; month-end AP reconciliation approved by Dr. Lewis before the financial close is signed off

## System Dependencies
- **Reads from:** QuickBooks AP aging report; Bill.com approval status (for pending approvals); fin-ops-cash-flow-tracker (for cash-constrained payment prioritization); vendor contracts (for dispute resolution); AP payment batch records (to confirm prior payments)
- **Writes to:** Payment batch inputs (this week's payment list → fin-ops-payment-runner); vendor dispute correspondence (email + QuickBooks notes); QuickBooks (invoice dispute notation); controller weekly report; CEO escalation (91+ days); month-end AP reconciliation record
- **HITL Required:** Controller pulls report; Dr. Lewis reviews weekly; all payment prioritization under cash constraint requires Dr. Lewis and CEO approval; 91+ day past-dues require CEO escalation; month-end reconciliation approved by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Monday AP aging review — $24,800 total outstanding → Current (0-30): $18,400 (5 invoices due this week → inputs to Tuesday payment batch); 31-60 days: $4,200 (Marshall Medical Billing — approval was pending; CEO hadn't clicked in Bill.com; controller sends CEO a reminder; CEO approves by 10 AM Monday; added to this week's batch); 61-90 days: $2,200 (medical supply vendor — invoice was in a coding dispute that was resolved Friday; include in Tuesday batch with priority); 91+ days: $0; total past due $6,400; root causes all identified; payment batch for Tuesday: $18,400 current + $4,200 past due + $2,200 past due = $24,800; all paid Tuesday; next Monday aging shows $0 past due; aging clean
2. **Edge case:** AP aging shows a $12,000 invoice from a vendor Dr. Lewis doesn't recognize — "TechAdvance LLC" — 75 days past due → Dr. Lewis investigates immediately: Is TechAdvance LLC in the approved vendor list? No — it is not; how did this invoice get into QuickBooks? Controller checks: it was entered by the prior controller 3 months ago; no W-9 on file; no CEO authorization; no service described; Dr. Lewis does NOT pay this invoice; treats it as a potential fraudulent invoice; escalates to CEO: "We have a $12,000 invoice in our system from TechAdvance LLC — 75 days old, no vendor setup, no authorization. Do you recognize this vendor?" If CEO says no → fraud investigation; if CEO says "oh yes, that's the IT consultant we used in March" → vendor setup process must be completed retroactively; invoice held until vendor setup complete; prior controller's conduct investigated
3. **Adversarial:** A vendor calls Dr. Lewis directly threatening to send Allevio to collections if their $28,000 invoice isn't paid today — the invoice is 48 days past due → Dr. Lewis remains professional: "I understand and I'll investigate the status of your invoice today." Dr. Lewis checks the AP aging: the invoice is in the system, approved in Bill.com, but the ACH payment failed 3 weeks ago (ACH return — invalid bank account) and nobody followed up; Dr. Lewis immediately contacts the vendor to re-verify bank details (vendor enters directly in Bill.com via portal invite); once bank details are verified, Dr. Lewis runs an out-of-cycle payment (CEO authorization obtained by phone); vendor receives payment within 3 business days; escalation resolved; root cause: ACH return notifications need to be monitored more closely — Dr. Lewis adds ACH return monitoring to the weekly AP review checklist

## Audit Log
All weekly AP aging reports retained. Root cause notes for past-due items retained. Vendor dispute correspondence retained. Payment prioritization decisions retained with rationale. Month-end AP reconciliation records retained. Fraudulent or suspicious invoice investigations retained permanently. 91+ day past-due escalations to CEO retained.

## Deprecation
Retire when each portfolio company has a controller who performs weekly AP aging reviews and manages vendor communications independently — with Dr. Lewis reviewing the weekly report, approving all payment prioritization, and handling 91+ day escalations.
