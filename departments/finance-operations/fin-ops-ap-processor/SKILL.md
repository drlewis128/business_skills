---
name: fin-ops-ap-processor
description: "Process vendor invoices — receipt, matching, coding, and approval routing. Use when the user says 'process an invoice', 'vendor invoice', 'AP processing', 'invoice approval', 'code this invoice', 'approve this bill', 'accounts payable', 'invoice entry', 'PO matching', 'bill.com invoice', 'process bills', 'vendor bill', 'invoice workflow', 'invoice coding', or 'pay this vendor'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--vendor <vendor name>] [--amount <$amount>] [--invoice <invoice #>]"
---

# AP Processor

Process vendor invoices for MBL portfolio companies — receiving, coding, matching, and routing invoices through the approval workflow before payment. Accounts payable is the most fraud-exposed process in a small company: invoice fraud, duplicate payments, and unauthorized vendor additions are all common; the controls embedded in this skill are not bureaucracy — they are the mechanisms that protect MBL's capital. At portfolio scale, Dr. Lewis enforces a consistent AP process across all three entities, with Bill.com as the primary workflow tool and QuickBooks as the system of record.

## When to Use
- A vendor invoice arrives for any portfolio company
- Staff asks how to process or code a bill
- An invoice is disputed or needs escalation
- Reviewing AP process health as part of operations review

## AP Processing Framework

```
Invoice processing workflow:

  Step 1 — RECEIVE:
    Paper: Scan immediately; file original; do not process from paper
    Email: Forward to designated AP email (Bill.com inbox or bookkeeper email)
    Portal: Confirm receipt in vendor portal; download PDF; same processing as email
    
    Receipt rule: Invoice must be in the system within 2 business days of receipt
    
  Step 2 — VALIDATE (before coding):
    ☐ Vendor is in the approved vendor list (not a new/unknown vendor)
    ☐ Invoice date and due date present
    ☐ Invoice number present (for duplicate check)
    ☐ Amount matches purchase order (if PO-based) or contract (if contract-based)
    ☐ Services/goods described are consistent with vendor relationship
    ☐ Bank/payment details match vendor's approved payment method
    
    Duplicate check: Search existing invoices for same vendor + same invoice number
    If duplicate detected → Do not process; flag to Dr. Lewis; investigate
    
    New vendor alert: If vendor is not in the approved list → Stop; do not create new vendor
    without following fin-ops-vendor-setup process; invoice processing does not include vendor setup
    
  Step 3 — CODE:
    Account coding: Map invoice line items to correct GL accounts
    Cost center: Assign to correct entity and department
    
    Common GL mappings (Allevio example):
      Medical supplies → 5020 Medical Supplies
      AdvancedMD monthly fee → 5210 Software/SaaS
      Rent → 5300 Rent and Occupancy
      Marshall Medical Billing fee → 5220 Billing Services
      Malpractice insurance → 5510 Insurance — Professional Liability
      
    If GL account is unclear → Flag to controller; do not guess on coding
    
  Step 4 — MATCH (for PO-based invoices):
    3-way match: Purchase Order → Receiving document → Invoice
    Invoice amount ≤ PO amount: Process normally
    Invoice amount > PO amount: Flag to approver; do not process overage without approval
    Missing PO for invoice >$500: Obtain retroactive PO approval before processing
    
  Step 5 — ROUTE FOR APPROVAL (Bill.com):
    <$1,000: Controller or bookkeeper approval
    $1,000-$5,000: CEO approval required
    $5,000-$25,000: CEO + Dr. Lewis approval required
    >$25,000: Dr. Lewis + Matt Mathison approval required
    
    Send invoice to correct approver(s) in Bill.com; include: invoice PDF, GL coding, due date
    
  Step 6 — RECORD IN QUICKBOOKS:
    After approval: Enter bill in QuickBooks (or sync from Bill.com)
    Due date: Enter exactly as stated on invoice; system will flag aging
    Vendor: Confirm correct vendor record (not duplicate vendor records)
    
  Timing targets:
    Receipt to processing: ≤2 business days
    Processing to approval routing: Same day
    Approval to payment: Per fin-ops-payment-runner (due date discipline)
```

## Output Format

```markdown
# Invoice Processing Record — [Vendor] Invoice #[N]
**Entity:** [Company] | **Date received:** [Date] | **Processor:** [Name]

---

## Invoice Details

| Field | Value |
|-------|-------|
| Vendor | [Name] (✅ Approved vendor / ⚠️ NEW — stop and run vendor-setup first) |
| Invoice number | [N] |
| Invoice date | [Date] |
| Due date | [Date] |
| Amount | $[X] |
| Duplicate check | ✅ Clear / ❌ Duplicate — [existing invoice #] |

---

## GL Coding

| Line item | Amount | GL account | Cost center |
|---------|--------|-----------|------------|
| [Medical supplies] | $[X] | 5020 Medical Supplies | Allevio |
| [AdvancedMD monthly] | $[X] | 5210 Software/SaaS | Allevio |

---

## Approval Routing

**Approval threshold:** [≤$1K / $1K-$5K / $5K-$25K / >$25K]
**Required approver(s):** [Controller / CEO / CEO + Dr. Lewis / Dr. Lewis + Matt]
**Bill.com approval sent:** [Date/Time]
**Approval received:** [Pending / Date]

---

## Issues / Flags

[None / Specific flag: amount exceeds PO by $[X] — awaiting CEO approval for overage]
```

## Output Contract
- No new vendor without vendor-setup first — if an invoice arrives from a vendor not in the approved vendor list, the invoice cannot be processed; new vendors are set up through fin-ops-vendor-setup which includes W-9 collection, bank detail verification, and approval; processing an invoice from an unapproved vendor bypasses the controls that prevent fraudulent vendor additions; Dr. Lewis enforces this rule and does not create exceptions for "small" or "one-time" vendors — those are often the mechanism for vendor fraud
- Duplicate invoice detection is a hard stop — if a search of existing invoices returns a matching vendor + invoice number combination, the invoice is not processed; it is flagged immediately to the controller and Dr. Lewis; the investigation determines whether it is a billing error (vendor sent the same invoice twice) or a duplicate payment attempt; in either case, the flag is documented and the investigation is completed before any payment is made; catching one duplicate saves more than the time the detection process costs
- Approval authority matrix is non-negotiable — no invoice is paid without the correct approvals; the approval matrix reflects MBL's capital controls; a controller or bookkeeper who approves a $10,000 invoice unilaterally (skipping the CEO requirement) has exceeded their authority; Dr. Lewis reviews AP aging periodically to confirm that approval levels are being honored; any exception requires Dr. Lewis written approval with documented rationale
- HITL required: Controller or bookkeeper processes invoices; Dr. Lewis reviews AP aging weekly; any invoice >$5,000 requires Dr. Lewis approval; any invoice >$25,000 requires Matt Mathison approval; any invoice with a flag (new vendor, duplicate, PO mismatch) escalates to Dr. Lewis before processing continues

## System Dependencies
- **Reads from:** Approved vendor list (Bill.com/QuickBooks vendor master), purchase orders (approval system), contracts (SharePoint Legal), GL chart of accounts (QuickBooks)
- **Writes to:** Bill.com (approval workflow); QuickBooks (bill entry after approval); AP aging report; approval record
- **HITL Required:** Controller/bookkeeper processes; CEO approves >$1K; Dr. Lewis approves >$5K; Matt Mathison approves >$25K; all flags to Dr. Lewis before proceeding

## Test Cases
1. **Golden path:** AdvancedMD monthly SaaS invoice $1,850 arrives by email → Received, forwarded to AP inbox; validated: approved vendor ✅; invoice # M-2026-089 ✅; due date June 30 ✅; duplicate check: clear ✅; coded: 5210 Software/SaaS / Allevio; approval threshold $1K-$5K → CEO approval required; sent to CEO in Bill.com June 14; CEO approved June 14; entered in QuickBooks; due date June 30; scheduled for payment batch June 27 per fin-ops-payment-runner
2. **Edge case:** Invoice arrives from "MedSupply Pro" — not in the approved vendor list → STOP; do not process; Dr. Lewis notified immediately; investigation: did CEO authorize this vendor? Is this the actual vendor or a fraudulent substitution?; if legitimate: CEO confirms, COO explains why no PO exists; vendor setup initiated through fin-ops-vendor-setup; invoice held until vendor is approved and W-9 received; if fraudulent: invoice discarded; security review of how the invoice arrived (did someone spoof the AP email inbox?)
3. **Adversarial:** CEO says "just pay this invoice — I'll get you the approval paperwork later" → Approval paperwork does not come later in the AP process — it comes before payment; Dr. Lewis maintains the control and responds: "I'll get the Bill.com approval set up for you right now — takes 30 seconds to click approve. Can I send it while we're talking?"; if the CEO is unavailable and the payment is genuinely time-sensitive (late payment penalty imminent), Dr. Lewis escalates to Matt Mathison to approve the exception in writing (email or text) before processing; the exception and the reason are documented in the invoice record; the exception is not a pattern

## Audit Log
All invoices retained in Bill.com and QuickBooks permanently. Approval records retained in Bill.com (who approved, when). Duplicate detection events retained. New vendor flags retained. Exceptions (out-of-policy approvals) retained with documentation.

## Deprecation
Retire when each portfolio company has a controller or bookkeeper who owns the AP process — with Dr. Lewis reviewing the monthly AP aging and approval compliance and Matt Mathison approving all invoices >$25K.
