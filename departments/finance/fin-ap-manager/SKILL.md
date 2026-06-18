---
name: fin-ap-manager
description: "Manage accounts payable and vendor payments for MBL Partners and portfolio companies. Use when the user says 'accounts payable', 'AP', 'vendor payment', 'pay the vendor', 'approve the invoice', 'invoice approval', 'Bill.com', 'AP workflow', 'AP management', 'pay the bills', 'accounts payable process', 'vendor invoice', 'process an invoice', 'AP aging', 'AP aging report', 'outstanding invoices', 'unpaid invoices', 'vendor aging', 'AP review', 'approve the AP', 'bill payment', 'scheduled payments', 'payment run', 'when do we pay', 'payment terms', 'vendor payment terms', 'AP accrual', 'accrued liabilities', 'AP reconciliation', 'AP dashboard', 'overdue vendor', 'past due vendor', or 'AP controls'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--action <review|approve|schedule|reconcile|audit>] [--focus <aging|workflow|controls|accruals>] [--period <weekly|monthly>]"
---

# Fin AP Manager

Manage accounts payable and vendor payments for MBL Partners and portfolio companies — ensuring that all vendor obligations are accurately recorded, properly approved, paid on time (not early; not late), and controlled against the capital allocation thresholds. Bill.com is the AP management platform for all MBL entities; it is both the workflow tool (routing invoices for approval) and the payment platform (ACH; check; wire). The AP function is also the first line of defense against financial fraud — unauthorized vendors, duplicate invoices, and approval bypasses are caught here, not in the annual audit.

## When to Use
- Weekly AP review (every Wednesday; schedule payments for the following week)
- Monthly close AP reconciliation (all invoices for the month posted; Bill.com reconciled to QuickBooks)
- A new vendor needs to be added to the approved vendor list
- An invoice is disputed or requires investigation
- AP aging shows past-due invoices requiring escalation

## AP Management Framework

```
BILL.COM AP WORKFLOW:

  INVOICE RECEIPT:
    □ All vendor invoices submitted to Bill.com (not email; not paper)
    □ Invoice capture: vendor name; invoice date; invoice number; amount; due date
    □ GL coding: which account and entity does this expense belong to?
    □ Supporting documentation attached (PO if applicable; service confirmation)
    
  APPROVAL WORKFLOW (by amount):
    <$1,000: Entity Controller/bookkeeper can approve without additional review
    $1,000-$10,000: Dr. Lewis approves for MBL expenses; entity Controller for entity expenses
    $10,000-$50,000: Dr. Lewis + entity CEO (joint approval)
    $50,000-$250,000: Matt Mathison notified (24hr objection window); Dr. Lewis approves
    >$250,000: Matt Mathison explicit approval before payment
    
  PAYMENT TERMS (honor; do not pay early without discount analysis):
    Net 30: most common; pay on Day 28-30 (not Day 1; cash is worth holding)
    Net 45/60: agency partners (Column6); larger professional services
    Early payment discount: pay early only if discount is >2% (e.g., 2/10 Net 30)
    Immediate: avoid; negotiate terms for any vendor requiring immediate payment
    
  WEEKLY PAYMENT RUN (every Wednesday for Friday payment):
    □ Review invoices due in the next 7 days
    □ Confirm all required approvals are complete
    □ Check that vendor is on the approved vendor list
    □ Schedule payment in Bill.com (ACH preferred; wire for >$50K if required)
    □ Notify Dr. Lewis of any payment >$25K before processing
    
  AP CONTROLS (fraud prevention — integrated with exec-cfo-oversight):
    □ Approved vendor list: all vendors who receive payment must be on the list
      - New vendor = Dr. Lewis approval before first payment
      - Vendor not on list = hold payment; investigate
    □ Duplicate invoice check: Bill.com flags duplicates; review any flag before payment
    □ Approval bypass: any invoice paid without the required approval is an audit finding
    □ Round-number invoices: invoices for exactly $5K, $10K, $25K — investigate before paying
    □ New bank account for existing vendor: verify directly with vendor before changing

AP AGING REVIEW (monthly):

  AP aging buckets:
    Current (0-30 days): normal
    31-60 days: review — are these within terms or overdue?
    61-90 days: flag — likely past due; potential relationship damage
    90+ days: escalate — past due; risk of vendor suspension or legal action
    
  Resolution protocol:
    Past due: contact vendor; confirm amount; schedule payment
    Disputed: hold payment; document dispute; resolve before paying
    Unmatched (invoice with no PO/contract): investigate before paying; document resolution

VENDOR MANAGEMENT:

  Approved vendor list by entity (maintained in SharePoint):
    MBL: legal counsel; accounting; IT vendors; insurance; facilities
    Allevio: AdvancedMD; clinical staffing agencies; employer group vendors; HIPAA vendors
    HIVE: Covercy; field operators; equipment vendors; legal (mineral rights)
    Column6: DSP platforms; technology vendors; agency partners; content vendors
    
  New vendor onboarding:
    □ W-9 collected before first payment
    □ Insurance certificate (if services vendor; required for Allevio clinical vendors)
    □ BAA (Business Associate Agreement) for any Allevio vendor handling PHI
    □ Dr. Lewis approval to add to approved vendor list
    □ Payment terms agreed and documented
```

## Output Format

```markdown
# AP Review — [Entity] — Week of [Date]
**Prepared by:** Dr. Lewis (or Controller) | **Payment run:** [Friday date]

---

## Payment Schedule This Week

| Vendor | Invoice # | Amount | Due date | Terms | Approval | Status |
|--------|-----------|--------|---------|-------|---------|--------|
| [Vendor] | [INV#] | $[X] | [Date] | Net [N] | [Approver] | Ready/Hold |

**Total payments this week:** $[X]

---

## AP Aging Summary

| Bucket | # Invoices | Amount | Action |
|--------|-----------|--------|--------|
| Current (0-30) | [N] | $[X] | Normal |
| 31-60 days | [N] | $[X] | Review |
| 61-90 days | [N] | $[X] | Flag |
| 90+ days | [N] | $[X] | Escalate |

---

## Items Requiring Attention

| Issue | Vendor | Amount | Action required |
|-------|--------|--------|----------------|
| [New vendor] | [Name] | $[X] | Add to approved list — Dr. Lewis approval needed |
| [Duplicate] | [Name] | $[X] | Flagged as possible duplicate — investigating |
| [Past due] | [Name] | $[X] | 65 days past due — contacting vendor today |
```

## Output Contract
- Pay to terms, not early — vendor payment terms are a cash management tool; every dollar paid 25 days before it's due is 25 days of float given away; MBL does not pay early unless there is a specific early-payment discount of >2%; this is not a policy to be overridden by "it's easier" or "the vendor prefers it"; the entity Controller manages payment timing against terms; Dr. Lewis reviews any pattern of early payment in the monthly AP review
- Every vendor on the approved list — a payment to a vendor not on the approved list is a controls failure, not a process inconvenience; the purpose of the approved vendor list is to catch fraudulent vendors, fictitious vendors, and unauthorized commitments before money leaves the entity's account; the rule is simple: if the vendor isn't on the list, the payment doesn't go out until the vendor is added (with Dr. Lewis approval); this takes 30 minutes, not days
- Approval thresholds are enforced, not suggested — the approval matrix is a financial control; an invoice that bypasses the required approval (e.g., a $45K payment approved only by the entity bookkeeper when it required Dr. Lewis + entity CEO concurrence) is an audit finding and a controls failure; Dr. Lewis reviews the Bill.com approval audit trail monthly; any bypass is investigated and the person responsible is corrected; repeat bypasses go to Matt Mathison
- HITL required: Dr. Lewis approves all MBL entity AP above $1K and all entity AP above $10K; Matt Mathison receives notification on payments $50K-$250K and explicit approval on >$250K; new vendors require Dr. Lewis approval before first payment; Allevio clinical vendors require BAA before any payment; the weekly payment run is reviewed by Dr. Lewis before processing for any payment >$25K; monthly AP reconciliation is Dr. Lewis sign-off

## System Dependencies
- **Reads from:** Bill.com (primary AP system — all invoices; approvals; payment history; AP aging); QuickBooks (GL accounts for coding; AP balance for reconciliation); Approved vendor list (SharePoint → Finance → VendorManagement → ApprovedVendors_[Entity]); exec-capital-allocation (approval thresholds — the approval matrix is derived from these thresholds)
- **Writes to:** QuickBooks (AP entries; payment entries — synced from Bill.com); exec-cfo-oversight (AP anomalies feed into monthly financial controls review); fin-entity-close (AP reconciliation is a close requirement); fin-internal-controls (AP controls performance feeds into internal controls assessment); exec-action-tracker (unresolved AP items — past due; disputes; new vendor approvals pending)
- **HITL Required:** All payments >$25K reviewed by Dr. Lewis before processing; payments $50K-$250K require Matt notification; payments >$250K require Matt approval; new vendors require Dr. Lewis approval; BAA required for Allevio PHI vendors before first payment; AP controls audit conducted by Dr. Lewis monthly (approval bypass review; duplicate check; round-number invoice review)

## Test Cases
1. **Golden path:** Weekly AP review for Allevio; 8 invoices due Friday; total $41,500; largest: AdvancedMD monthly platform fee $18,000 (approved; on the approved vendor list; within terms); clinical staffing agency $12,500 (approved; entity CEO co-approved per threshold; BAA on file); office supplies $850 (Controller-approved; below $1K threshold); 5 smaller invoices <$500 each (Controller-approved). No duplicates flagged. No new vendors. No past-due items. Payment run scheduled for Friday morning. Dr. Lewis: "Clean week. Processing as scheduled."
2. **Edge case:** Bill.com flags a potential duplicate invoice from a legal vendor ($6,500 — same vendor; same amount; 10 days apart) → Dr. Lewis: "Hold both payments. Contacting the law firm directly today to confirm: were these two separate billings for different matters, or is one a duplicate? I will not release either payment until I have written confirmation from the firm. If it's a duplicate, the second invoice is rejected and documented. If both are legitimate (two separate matters billed in the same month for the same amount — rare but possible), both are released with the written confirmation attached." Law firm confirms two separate matters. Both released with confirmation attached.
3. **Adversarial:** Entity employee submits a vendor invoice directly to the bookkeeper for payment without using Bill.com → Dr. Lewis: "I've put a hold on that payment. The invoice needs to go through Bill.com — that's not optional. Here's why: Bill.com is how we enforce the approval workflow, maintain the AP audit trail, and catch duplicates. An invoice that goes directly to the bookkeeper bypasses all three controls. Even if this invoice is 100% legitimate, the process failure creates the conditions where a fraudulent invoice could also go directly to the bookkeeper and get paid. The fix: enter the invoice in Bill.com today; it will route for approval and be paid in the next payment run. Going forward, all vendor invoices go directly to Bill.com — not to email, not to the bookkeeper directly."

## Audit Log
All Bill.com payment records retained 7 years. Approval audit trail retained (who approved; when; amount). Duplicate invoice flags retained (flagged; investigated; resolution). New vendor approvals retained (who; when; Dr. Lewis sign-off). Controls violations retained (approval bypasses; unauthorized vendors; round-number flags). Monthly AP reconciliation sign-offs retained.

## Deprecation
Retire when each entity has a Controller or AP specialist who manages the AP workflow — with Dr. Lewis providing the controls oversight (approval threshold enforcement; duplicate review; new vendor approvals) and Matt Mathison retaining approval authority for >$250K payments.
