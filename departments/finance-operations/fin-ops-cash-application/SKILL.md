---
name: fin-ops-cash-application
description: "Apply customer payments to invoices — clearing AR, resolving unapplied cash, and maintaining AR accuracy. Use when the user says 'cash application', 'apply payment', 'unapplied cash', 'payment not applied', 'match payment to invoice', 'remittance advice', 'payment received', 'AR cash application', 'apply check', 'ACH received', 'customer paid but invoice still open', 'apply EFT', 'payment matching', 'unapplied payment', 'clear invoice', 'payment remittance', or 'apply cash to AR'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--customer <name>] [--amount <$>] [--invoice <#>]"
---

# Cash Application

Apply customer payments to open invoices for MBL portfolio companies — clearing the AR aging accurately, resolving unapplied cash, and ensuring the AR balance reflects only genuinely outstanding receivables. Cash application is the bridge between receiving cash (fin-ops-bank-reconciler sees the deposit) and clearing revenue (the open invoice is marked paid); if cash isn't applied, the AR aging shows invoices as unpaid that have actually been received, the collections team chases customers who already paid, and the financial statements overstate AR. At PE portfolio scale, unapplied cash is a financial reporting deficiency that Dr. Lewis clears before every close.

## When to Use
- A payment arrives and needs to be applied to specific invoices
- The AR aging shows a customer balance that the customer says they've paid
- The bank reconciliation shows unidentified deposits
- Month-end close — all unapplied cash must be resolved before GL reconciliation
- A customer sends a remittance advice with partial payment instructions

## Cash Application Framework

```
Standard cash application process:

  Step 1 — RECEIVE AND IDENTIFY THE PAYMENT:
    ACH/EFT: Payment appears in bank portal; QuickBooks may auto-pull via bank feed
      Check the payment reference (remittance advice in ACH description or attached)
      ACH description often contains: Invoice number, customer name, or PO number
    Check: Received physically; amount and payee confirmed
    Wire: Wire notification from bank; confirm sender name and amount
    
    Payment amount scenarios:
      Exact match (payment = one invoice): Simple application
      Partial payment: Payment < open invoice(s) — apply to specific invoices per customer instruction
      Overpayment: Payment > open invoice(s) — apply fully; credit balance on account; contact customer
      Payment across multiple invoices: Remittance advice specifies which invoices to close
      Unexplained payment: No remittance, no invoice number in description — investigate
      
  Step 2 — MATCH PAYMENT TO INVOICE:
    Search customer in QuickBooks by name, EIN, or known contact
    Identify open invoices for that customer
    Match payment amount to open invoice(s)
    
    Matching hierarchy:
      1. Match exactly to a single open invoice (preferred)
      2. Match to multiple invoices as specified in remittance advice
      3. If remittance advice is ambiguous: Apply to oldest open invoice first
      4. If no clear match: Hold as unapplied cash until customer provides clarification
      
  Step 3 — APPLY IN QUICKBOOKS:
    Navigate to: Receive Payment for the customer
    Select: The specific invoices being paid
    Confirm: Amount applied = payment received; no rounding differences left unapplied
    Post: Payment entry in QuickBooks — closes the selected invoices
    Bank feed match: Match the payment in the bank feed to the QuickBooks payment record
    
  Step 4 — HANDLE EXCEPTIONS:
    Partial payment:
      Apply to oldest invoice first (unless remittance specifies otherwise)
      Remaining balance stays open on the invoice
      Collections follow-up: Notify controller — customer has an open partial balance
      
    Overpayment:
      Apply full payment to all open invoices it covers
      Remaining amount: Post as a credit on the customer's account
      Notify customer: "We received $[X] which is $[Y] more than your outstanding invoices. 
        We've applied a credit to your account — please let us know how you'd like to handle it 
        (apply to future invoice or refund)."
      Dr. Lewis approval required before issuing a refund >$1,000
      
    Unknown payment (no customer identified):
      Post to Suspense (or Unidentified Customer Receipts clearing account) temporarily
      Research: Call bank for ACH originator details; search QuickBooks for matching amount + likely customer
      Timeline: Identify and apply within 5 business days; if still unknown, Dr. Lewis review
      
    Short payment with dispute code:
      Customer paid $X less than invoiced and noted a dispute reason in the remittance
      Do not leave $X unapplied; apply the payment received and create a credit memo for the disputed portion
      Track disputed amount separately; route to dispute resolution (fin-ops-ar-invoicer dispute process)
      
  Payer-specific guidance (Allevio):
    Insurance payers (Medicaid, private) remit through ERA (Electronic Remittance Advice)
    ERA from payer includes: Claim ID, patient, amount paid, adjustments (contractual adjustment, CO-45, PR-2)
    ERA application is done in AdvancedMD (billing system) — NOT directly in QuickBooks
    Marshall Medical Billing (Allevio's RCM) applies ERA to AdvancedMD; QuickBooks sees net payment deposits
    For direct-pay patients and employer group invoices: Apply directly in QuickBooks
    
  Month-end close rule:
    All unapplied cash must be resolved before the GL reconciliation (BD4)
    Unapplied cash balance should = $0 at month-end
    If a payment cannot be identified by BD4: Post to AR suspense with Dr. Lewis awareness
```

## Output Format

```markdown
# Cash Application — [Entity] [Customer/Payer]
**Payment received:** [Date] | **Amount:** $[X] | **Method:** [ACH / Check / Wire]
**Applied by:** [Controller] | **Date applied:** [Date]

---

## Payment Details

| Field | Value |
|-------|-------|
| Customer | [Name] |
| Bank reference | [ACH trace number / Check number / Wire confirmation] |
| Remittance advice | [Attached / Not provided / Invoice #[N] in ACH description] |
| Payment amount | $[X] |

---

## Application Detail

| Invoice # | Invoice date | Invoice amount | Amount applied | Remaining balance |
|----------|-------------|--------------|--------------|-----------------|
| [INV-2026-089] | [May 1] | $12,325 | $12,325 | $0 (Paid in full ✅) |
| [INV-2026-094] | [June 1] | $12,325 | $[X] | $0 / $[X] remaining |
| **Total applied** | | | **$[X]** | |

---

## Exception Handling (if applicable)

**Overpayment:** $[X] credit posted to [Customer] account — customer notified [Date]
**Partial payment:** $[X] remaining on Invoice #[N] — collections notified
**Unknown payment:** Posted to AR suspense — researching; expected resolution by [Date]
**Short pay/dispute:** Invoice #[N] disputed $[X] — credit memo created; routed to dispute resolution

---

## QuickBooks Confirmation

**Payment entry posted:** ✅ [Date/Time]
**Bank feed matched:** ✅ [Date] / ❌ Pending
**AR aging updated:** ✅ Invoice cleared / ❌ Partial balance remains — $[X]
```

## Output Contract
- Apply cash within 24 hours of receipt — a payment that sits in the bank without being applied to the invoice creates a false picture: the customer has paid, but the AR aging still shows them as owing; collections may contact a customer who paid last Tuesday; the CEO may see an AR balance that is overstated by the unapplied payments; Dr. Lewis expects cash application within 24 hours of a payment being visible in the bank feed; if the controller cannot identify which invoice to apply (no remittance advice), the payment is applied to the oldest open invoice as a default and the customer is notified within 24 hours
- Unapplied cash balance is $0 at month-end — the GL reconciliation (fin-ops-gl-reconciler) checks that the AR balance per aging matches the QuickBooks AR balance; unapplied cash creates a discrepancy because the payment is in cash but not reducing AR; Dr. Lewis requires that the controller reviews the unapplied cash report in QuickBooks on BD3-BD4 and clears all items before the reconciliation; if a payment genuinely cannot be identified (unknown sender), it is moved from the bank to an AR suspense account with documentation — it is not left as unapplied cash
- Credit balances on customer accounts require action — a customer credit balance (overpayment) is a liability: the company owes the customer money or a future service; credits should not sit indefinitely; Dr. Lewis requires that any credit balance >$100 is reviewed with the customer within 10 business days of creation: apply to next invoice, issue a refund, or document why the credit is retained; credits >$1,000 require Dr. Lewis approval before a refund is issued; credits >$5,000 require CEO awareness
- HITL required: Controller applies cash daily; Dr. Lewis reviews unapplied cash weekly and clears any items >5 business days old; month-end unapplied cash must be $0 (or in suspense with documentation) before Dr. Lewis approves the GL reconciliation; credit balance refunds >$1,000 require Dr. Lewis approval; refunds >$5,000 require CEO approval

## System Dependencies
- **Reads from:** Bank feed / bank portal (payment deposits), remittance advice (customer email or ACH file), QuickBooks open AR invoices, AdvancedMD ERA (Allevio payer payments via Marshall Medical Billing)
- **Writes to:** QuickBooks (payment application, invoice clearance, credit memos, unapplied cash suspense); AR aging report; collections notification (if partial payment); customer credit balance notification
- **HITL Required:** Controller applies cash; Dr. Lewis reviews weekly unapplied report; refunds >$1K require Dr. Lewis approval; refunds >$5K require CEO approval; month-end unapplied must be cleared before GL reconciliation approval

## Test Cases
1. **Golden path:** Allevio employer group ($12,325 PMPM invoice for June) — ACH received June 16 for $12,325 → Bank feed shows ACH: "ACME CORP PAYROLL" $12,325; ACH description includes "ALLEVIO INV 2026-089"; controller searches QuickBooks customer "Acme Corp"; open invoice INV-2026-089 $12,325 dated June 1; exact match; controller applies $12,325 to INV-2026-089; invoice closes (Paid in full); bank feed matched; AR aging updated: Acme Corp $0 outstanding; applied within 2 hours of bank feed update; no collections contact needed; GL reconciliation BD4 confirms AR aging matches QB balance
2. **Edge case:** Check received for $24,500 from a Column6 advertiser — no remittance advice, no invoice number on check → Controller cannot match the payment to a specific invoice; Column6 has 3 open invoices for this advertiser: $14,200 (60 days old), $10,300 (30 days old); and a $24,500 would cover both; controller calls the advertiser's AP contact: "We received a check for $24,500 — can you tell me which invoices this covers?" Advertiser confirms: both invoices. Controller applies $14,200 to the 60-day invoice and $10,300 to the 30-day invoice; both close; check deposited; bank feed matched; if the advertiser doesn't respond within 24 hours, the default rule is to apply to oldest invoice first: $14,200 applied and $10,300 applied to the 30-day invoice; same result in this case
3. **Adversarial:** A customer submits an ACH for $8,500 but deducts $750 "per our standard vendor discount" that was never agreed to by Column6 → This is a short payment with an invented deduction; the column6 has no discount agreement with this advertiser; apply the $8,500 received; create a credit memo for $0 (do not forgive the $750 — the invoice is still $9,250 and $750 is outstanding); notify the advertiser: "We received $8,500 for Invoice #[N] of $9,250. We show no discount agreement on file. Please remit the remaining $750." If the advertiser insists on the discount, escalate to the Column6 CEO — this is a commercial relationship decision; Dr. Lewis does not approve a discount without CEO authorization and documentation; the $750 remains in the AR aging as outstanding until resolved

## Audit Log
All payment applications retained in QuickBooks permanently. Remittance advice retained (bank or email). Unapplied cash suspense entries and resolutions retained. Credit balance notifications retained. Overpayment refund approvals retained. Month-end unapplied cash clearance records retained.

## Deprecation
Retire when each portfolio company has a controller or AR specialist who applies cash daily — with Dr. Lewis reviewing weekly unapplied cash and approving month-end clearance.
