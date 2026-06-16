---
name: invoice-approver
description: "Review and approve vendor invoices. Use when the user says 'approve invoice', 'invoice review', 'review a bill', 'invoice approval', 'process an invoice', 'vendor bill review', 'check this invoice', 'approve this bill', 'invoice check', 'three-way match', 'invoice verification', or 'review vendor invoice'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--vendor <name>] [--amount <dollar amount>] [--invoice-number <#>]"
---

# Invoice Approver

Review and approve vendor invoices before payment — verifying that the invoice is legitimate, matches what was ordered or contracted, and is being coded to the correct expense category. Invoice approval is the primary control point in the AP process: it's where mistakes, unauthorized charges, and potential fraud are caught before money leaves the company. Every invoice that passes through approval is one that has been verified, not just processed.

## When to Use
- A vendor invoice arrives and needs to be approved before entry into Bill.com
- An invoice is flagged in Bill.com for approval
- A new or unusual invoice arrives from a known or unknown vendor
- An invoice amount differs from the contract or prior invoices
- A three-way match is needed: purchase order, delivery receipt, and invoice

## Invoice Approval Checklist

```
Five checks every invoice must pass:

1. VENDOR VERIFICATION
   → Is this vendor on the approved vendor list?
   → Is the vendor name, EIN, and address as expected?
   → Has the banking information changed? (Red flag if yes — verify)

2. AMOUNT VERIFICATION
   → Does the invoice amount match the contract, purchase order, or agreed rate?
   → If it's different from last month: why? Is the increase authorized?
   → Is this a round number? (Round numbers from service vendors sometimes indicate estimates rather than actual services)

3. DATE AND PERIOD VERIFICATION
   → Is this invoice for the correct period?
   → Has this invoice already been paid? (Duplicate check)
   → Is the invoice date within a reasonable recent period? (Watch for old invoices appearing unexpectedly)

4. BUSINESS PURPOSE VERIFICATION
   → Was this service or product ordered/authorized?
   → Who authorized it?
   → Is there a corresponding PO, contract, or email approval?

5. CODING VERIFICATION
   → Is the expense category correct?
   → Is the correct entity and department coded?
   → CapEx threshold: items >$2,500 with useful life >1 year should be capitalized, not expensed
```

## Output Format

```markdown
# Invoice Approval — <Company Name>
**Invoice from:** <Vendor name>
**Invoice #:** <Invoice number>
**Invoice date:** <Date> | **Due date:** <Date>
**Amount:** $<Amount>
**Reviewed by:** Dr. John Lewis | **Review date:** <Date>

---

## Approval Checklist

| Check | Status | Notes |
|-------|--------|-------|
| 1. Vendor on approved list | ✅ / ❌ New vendor — see setup | [Approved vendor / New — requires setup] |
| 2. Amount matches contract/expectation | ✅ / ⚠️ / ❌ | [$[X] matches contract / $[X] invoice vs. $[X] contract — $[X] variance] |
| 3. Period is correct | ✅ / ⚠️ | [For [Month] — correct / Invoice is for [Month] — prior period posting question] |
| 4. Not a duplicate | ✅ / ❌ | [No prior payment for this invoice # / Duplicate — Invoice # [N] already paid on [Date]] |
| 5. Business purpose authorized | ✅ / ⚠️ | [Standing contract / PO [#] authorized by [Name] on [Date] / No clear authorization — HOLD] |
| 6. GL coding correct | ✅ / ⚠️ | [Account: [Code] — [Category name] — correct / Suggest recode to [Account]] |
| 7. CapEx check | ✅ N/A — OpEx / ⚠️ Should be CapEx | [Expense <$2,500 or recurring service / $[X] equipment purchase — capitalize] |

---

## Decision

**Approval status:** ✅ APPROVED / ⚠️ APPROVED WITH CONDITIONS / ❌ HOLD — [reason] / ❌ REJECT

**If approved:**
- Entry in: Bill.com
- GL account: [Account code — Category name]
- Payment due: [Date] (Net [N] from invoice date [Date])
- Payment method: ACH / Check / Wire
- Approval level: [Dr. Lewis (< $10K) / Matt Mathison required (> $10K)]

**If on hold:**
- Reason: [Specific — missing authorization / amount mismatch / possible duplicate]
- Action: [Contact vendor / request documentation / investigate prior payment]
- Expected resolution: [Date]

**If rejected:**
- Reason: [Duplicate / Unauthorized / Incorrect amount — vendor to resubmit]
- Vendor notified: ✅ [Date] / ❌ Pending

---

## Variance Explanation (if amount differs from expectation)

| Expected amount | Invoice amount | Difference | Explanation | Approved? |
|----------------|---------------|-----------|------------|-----------|
| $[X] | $[X] | $[X] | [Price increase / Additional scope / Error] | ✅ / Investigating |
```

## Output Contract
- Duplicate check is mandatory for every invoice — duplicate invoice payments are one of the most common AP errors and are easy to catch with a simple search; before approving any invoice, search Bill.com and QuickBooks for the same invoice number and vendor; the search takes 30 seconds and can prevent payments of thousands of dollars to vendors who either made a mistake or are attempting fraud
- Amount variance always explained — any invoice that differs from the contract, prior month's invoice, or PO amount must be explained before approval; "it's close enough" is not acceptable; the explanation might be valid (rate increase, additional scope), but it must be documented
- Business purpose authorization always verified — the AP function doesn't exist to pay whatever vendors send; every invoice must be linked to an authorization (contract, PO, email approval from the right level); invoices without authorization are held until authorization is obtained or the invoice is rejected
- CapEx items never processed as OpEx — an equipment purchase that arrives as a vendor invoice must be recognized as a capital asset if it meets the capitalization threshold; coding it to operating expense understates assets, overstates current expenses, and misstates the financial statements
- HITL required: Dr. Lewis approves all invoices; Matt Mathison approves invoices >$10K or any invoice where the business purpose is unclear or where a vendor is new; any hold or reject decision is communicated to the vendor with a specific reason

## System Dependencies
- **Reads from:** Bill.com (incoming invoices and payment history), vendor contracts (SharePoint), QuickBooks (prior payments and GL codes), approved vendor list
- **Writes to:** Bill.com (approval entry and payment scheduling), QuickBooks (via Bill.com sync), invoice approval log
- **HITL Required:** Dr. Lewis approves all invoices; Matt Mathison required for >$10K; new vendor invoices require Dr. Lewis to verify vendor setup first

## Test Cases
1. **Golden path:** Allevio software subscription invoice — $2,400/month from [SaaS vendor] → Vendor: on approved list ✅; Amount: $2,400 matches contract signed March 2026 ✅; Period: June 2026 billing ✅; Duplicate check: no prior payment for June invoice ✅; Business purpose: standing contract, authorized by CEO March 2026 ✅; GL code: Technology & Software (Account 6300) ✅; CapEx check: monthly subscription service, not a capital asset ✅; Decision: approved; Bill.com entry, payment due July 10 (Net 30), Dr. Lewis approved; Matt Mathison not required (<$10K)
2. **Edge case:** A vendor sends an invoice for services in an amount 40% higher than last month with no explanation → hold the invoice; contact the vendor: "Invoice [#] for $[X] is $[X] (40%) higher than our standard monthly invoice of $[X]. Please provide a breakdown of the additional charges before we process payment." If the vendor provides a valid explanation (scope expansion authorized, rate increase per contract), document and approve; if the vendor cannot explain the variance, reject the invoice and request a corrected invoice at the contracted rate
3. **Adversarial:** An invoice arrives from a vendor with a legitimate business name but a slightly different address — "ABC Consulting LLC" vs. "ABC Consulting, LLC" — and the invoice is for the same amount as a real vendor → this is a red flag for either a fraudulent vendor or a data entry error; before paying, verify: (1) call the real vendor and ask if they sent this specific invoice on this specific date; (2) compare the bank account on file with the bank account on the invoice; (3) if any detail doesn't match, hold the payment and escalate to Matt Mathison immediately; do not pay until verified; vendor name variations are a common fraud vector

## Audit Log
All invoice approvals retained in Bill.com with approver, date, and GL coding. Holds and rejections documented with reason. Duplicate checks logged. Vendor notifications for rejected invoices retained. Matt Mathison approvals documented.

## Deprecation
Retire when portfolio companies have automated invoice processing with three-way matching capabilities (AP software that automatically matches invoices to POs and contracts) and approval workflows that don't require Dr. Lewis as the primary approver for all invoices.
