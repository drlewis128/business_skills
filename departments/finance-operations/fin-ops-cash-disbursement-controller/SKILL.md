---
name: fin-ops-cash-disbursement-controller
description: "Control cash disbursements — verify, authorize, and audit all outgoing cash. Use when the user says 'disbursement control', 'cash disbursement', 'disbursement review', 'disbursement audit', 'control cash', 'payment authorization', 'unauthorized payment', 'payment controls', 'cash control', 'disbursement verification', 'cash out', 'money out', 'outgoing payments', 'payment risk', 'disbursement risk', 'payment fraud', 'cash disbursement fraud', 'control outgoing cash', 'vendor payment risk', or 'cash payment controls'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--payment-type <ach|check|wire|credit-card>] [--amount <$>] [--vendor <name>] [--action <review|approve|audit|hold>]"
---

# Cash Disbursement Controller

Control all outgoing cash for MBL portfolio companies — implementing verification, authorization, and audit controls that prevent unauthorized payments, duplicate payments, and fraud. Cash disbursement is the highest-risk area in small company finance: once cash leaves the bank account, recovery is difficult; wire fraud is often irreversible within minutes; the most common form of embezzlement at small companies involves false vendor payments. Dr. Lewis applies layered controls at every point in the disbursement workflow — not as bureaucracy, but as the mechanism that ensures every dollar leaving the company was authorized and correctly applied.

## When to Use
- Reviewing a payment batch before release (weekly ACH run, check run)
- Evaluating a request for an out-of-cycle wire or check
- Auditing recent disbursements for compliance
- A potential unauthorized payment is identified
- Designing or improving disbursement controls at a portfolio company

## Cash Disbursement Control Framework

```
The five layers of disbursement control:

  LAYER 1 — VENDOR VERIFICATION (before any vendor is paid the first time):
    Every vendor must go through fin-ops-vendor-setup before receiving payment
    Vendor list: Active vendor list maintained; new vendors require setup; inactive vendors purged quarterly
    W-9 on file: No payment without a valid W-9
    Bank details: Entered through the Bill.com portal (vendor enters directly); never entered by company employees from an email
    
  LAYER 2 — INVOICE VALIDATION (before any invoice is approved for payment):
    Three-way match (where applicable): Purchase order + receiving confirmation + invoice
    For service invoices (no PO): Invoice reviewed against contract or agreement
    Duplicate check: Is this invoice number already in the system? Has this amount/vendor/date combination been paid before?
    Period check: Is the invoice date reasonable? Invoice dated 3+ years ago = red flag
    GL coding: Correct expense account and cost center
    
  LAYER 3 — APPROVAL (before payment is released):
    Approval matrix (fin-ops-approval-matrix-manager):
      <$1K: Controller
      $1K-$5K: CEO
      $5K-$25K: CEO + Dr. Lewis
      >$25K: Dr. Lewis + Matt Mathison
    Wire transfers: Any wire >$10K requires Matt Mathison approval
    No self-approval: The person requesting the payment cannot approve their own payment
    
  LAYER 4 — PAYMENT EXECUTION (during the payment run):
    Bank confirmation: Before releasing ACH or check run, confirm available cash balance (30-day reserve maintained after disbursement)
    Positive pay (for checks): Company sends the bank a file of checks issued; bank only clears checks that match (fraud prevention for check tampering)
    ACH file review: The ACH file must be reviewed line-by-line before upload; do not upload an unreviewed ACH file
    Wire: Wire instructions confirmed by phone callback to a known number (not the number in the wire request email — look up the number independently)
    
  LAYER 5 — POST-PAYMENT AUDIT (after disbursements are released):
    Same-day reconciliation: Post-payment, Dr. Lewis reviews the bank confirmation that the batch cleared correctly
    Exception check: Any payment that is $0 (system error) or double-charged is flagged immediately
    Monthly disbursement audit: Random sample of 10 disbursements from the month — verify: invoice on file, approval chain documented, vendor in the active list, amount matches the invoice
    
Specific high-risk disbursement scenarios and controls:

  BUSINESS EMAIL COMPROMISE (BEC — highest-risk scenario):
    What happens: A vendor's email is spoofed; a fraudulent "change of bank details" email is sent; company pays the fraudster's account
    Prevention:
      NEVER update vendor bank details from an email request alone
      Bill.com portal: Vendor updates their own bank details via a portal invitation sent to their verified email
      Phone callback: For any vendor bank detail change (even if requested through Bill.com), call the vendor at their known number (not a number provided in the change request) to confirm
      
  DUPLICATE PAYMENT PREVENTION:
    Bill.com: Duplicate invoice detection is built in — flag by vendor + invoice number
    QuickBooks: Duplicate detection by vendor + amount + date
    Monthly audit: Check for two payments to the same vendor within 5 days of the same amount
    Annual vendor statement reconciliation: Request vendor statements from top 10 vendors; reconcile to QuickBooks
    
  CHECK FRAUD PREVENTION:
    Physical checks: Blank check stock stored in a locked drawer; only Dr. Lewis and the controller have access
    Positive pay: All check-issuing accounts enrolled in positive pay with the bank
    Check register reconciliation: Every check issued must appear in the check register; no unrecorded checks
    Voided checks: Mutilate (shred) or record as voided; never leave a blank check voided and untracked
    
  CREDIT CARD CONTROLS:
    Company cards: Issued only to employees who need them; no personal cards reimbursed without receipt
    Receipt requirement: All charges ≥$25 require a receipt within 5 days of transaction
    Monthly review: Dr. Lewis reviews all card statements; any personal expense is repaid immediately
    Card limits: Individual card limits set per employee role; no exceptions without Dr. Lewis approval
    
Disbursement frequency and method:
  ACH: Weekly (Tuesday); for standard vendor payments; posted same day or next day
  Checks: Weekly (Friday) for vendors who require check payment; checks require positive pay enrollment
  Wires: As needed; >$10K requires Matt Mathison approval; wire instructions verified by phone callback
  Credit card: Continuous (individual transactions); reviewed monthly by Dr. Lewis
```

## Output Format

```markdown
# Disbursement Control Review — [Entity]
**Date:** [Date] | **Review type:** Pre-batch / Post-payment audit / Monthly audit
**Reviewed by:** Dr. Lewis | **Batch total:** $[X]K | **Payment method:** ACH / Check / Wire

---

## Pre-Batch Checklist (before releasing payment)

| Control Layer | Check | Status |
|--------------|-------|--------|
| Vendor verification | All payees on active vendor list; W-9 on file | ✅/❌ |
| Invoice validation | Invoices match approvals; no duplicates detected | ✅/❌ |
| Approval chain | All invoices have correct approval level | ✅/❌ |
| Cash balance | Post-disbursement balance ≥ 30-day reserve | ✅/❌ |
| ACH file review | Line-by-line review of ACH file complete | ✅/❌ |
| Wire phone callback | N/A / Confirmed with [Vendor] at [known number] | ✅/N/A |

**Batch status:** ✅ Cleared for release / ❌ HOLD — [specific issue]

---

## Batch Detail

| Vendor | Invoice # | Amount | Method | GL Code | Approval | Flag |
|--------|-----------|--------|--------|---------|---------|------|
| [Vendor A] | INV-[N] | $[X] | ACH | 6xxx | CEO ✅ | — |
| [Vendor B] | INV-[N] | $[X] | ACH | 6xxx | Controller ✅ | — |
| [Vendor C] | INV-[N] | $[X] | Wire | 6xxx | Dr. Lewis + Matt ✅ | Wire callback ✅ |

**Total disbursements:** $[X]K | **Post-payment cash balance:** $[X]K ([X] days of reserve)

---

## Post-Payment Confirmation

**Bank confirmation received:** ✅ [Date] — all [N] payments processed
**Exceptions:** None / [Specific exception and resolution]
**Positive pay file submitted:** ✅ (for check payments)

---

## Monthly Audit Sample (10 transactions)

| # | Vendor | Date | Amount | Invoice on file? | Approval documented? | Vendor on active list? | Finding |
|---|--------|------|--------|-----------------|---------------------|----------------------|---------|
| 1 | [Name] | [Date] | $[X] | ✅ | ✅ | ✅ | Clean |
| 2 | [Name] | [Date] | $[X] | ✅ | ⚠️ — approval email not archived | ✅ | Minor — archive approval |
```

## Output Contract
- Wire transfers require phone verification — no exceptions — a wire transfer is irreversible once processed; the most common wire fraud occurs via business email compromise: a fraudster intercepts email and sends wire instructions to a real vendor's bank account; Dr. Lewis calls the wire recipient at a phone number that Dr. Lewis independently looks up (not a number provided in the wire request or in the email thread) to confirm the amount, account number, and purpose; this call takes 3 minutes and has prevented wire fraud at companies across the country; there are no exceptions to the wire phone verification rule — not for urgency, not for trusted vendors, not for wires under a certain amount; if Dr. Lewis cannot reach the recipient by phone, the wire does not go out until phone confirmation is received
- Positive pay on every check-issuing account — check fraud (check washing, counterfeit checks) is a growing threat; positive pay is the bank service where the company sends a file of authorized check numbers and amounts before they clear; the bank only pays checks that exactly match the file; any check presented that is not in the file is returned (flagged for review); Dr. Lewis ensures every portfolio company check-issuing account is enrolled in positive pay; the cost is typically $15-30/month per account; this single control prevents check fraud
- Segregation of duties at every disbursement step — the person who approves an invoice cannot also release the payment; the person who sets up a vendor cannot also approve that vendor's invoices; in small companies with limited staff, perfect segregation is not always achievable; Dr. Lewis applies compensating controls where segregation is impossible: Dr. Lewis reviews all disbursements weekly (as a second set of eyes); CEO approves all invoices >$1K; Dr. Lewis reviews the bank statement before giving it to the controller; the goal is to ensure that no single employee can commit a fraud without a second person seeing it
- HITL required: Every payment batch reviewed by Dr. Lewis or the controller before release; wire transfers >$10K require Matt Mathison approval; wire instructions verified by Dr. Lewis via phone callback; any suspected unauthorized disbursement is immediately escalated to Dr. Lewis and (if confirmed) to Matt Mathison by phone; do not tip off a suspected fraudster before securing records

## System Dependencies
- **Reads from:** Bill.com (invoice approvals and payment batch); QuickBooks (vendor list, AP, payment history); bank account (cash balance before releasing batch); bank positive pay enrollment (for check payments); wire instructions (phone-verified); approval matrix (fin-ops-approval-matrix-manager); vendor list (fin-ops-vendor-setup)
- **Writes to:** Bank ACH file (upload); positive pay file (upload to bank); payment confirmation log; monthly disbursement audit records; QuickBooks payment records; Matt Mathison wire approval records; fraud investigation records (if applicable)
- **HITL Required:** Dr. Lewis reviews all batches; Matt Mathison approves wires >$10K; Dr. Lewis phone-verifies all wire instructions; unauthorized disbursement suspicion → Dr. Lewis + Matt Mathison immediately; check stock locked and access controlled

## Test Cases
1. **Golden path:** Allevio Tuesday ACH batch — $28,400 total, 6 vendors → Dr. Lewis reviews the batch in Bill.com: 6 vendors, all on the active list, all with W-9 on file; invoices match approvals (2 controller-level <$1K; 3 CEO-level $1K-$5K; 1 CEO + Dr. Lewis level $8,200); duplicate check: Bill.com shows no duplicates; 1 of the 6 is a new vendor who was set up last week — Dr. Lewis confirms the vendor record is complete (W-9 ✅; bank details entered by vendor via portal ✅; related-party check ✅); cash balance check: current cash $151K; post-disbursement will be $122.6K = 38 days of operating reserve ✅ (above 30-day minimum); ACH file downloaded and reviewed line-by-line — 6 rows, amounts match, bank routing/account numbers match Bill.com records; ACH file uploaded to bank; batch released Tuesday AM; bank confirms all 6 payments processed by Wednesday morning; Dr. Lewis reviews the bank confirmation; QuickBooks updated; batch logged
2. **Edge case:** A vendor emails: "We've updated our bank account — please send future payments to the new routing number: [XXXX]" → This is a classic BEC setup; Dr. Lewis does NOT update the bank details based on the email; Dr. Lewis responds to the vendor (not by replying to the email — by opening a new email addressed to the vendor's known contact): "Thank you for the notice. To update your banking information securely, I'll send you a portal invitation through Bill.com — please click that link and enter your new bank details directly. I'm also going to call you to confirm. Is [known phone number] still the best number?" Dr. Lewis calls the vendor at their known number, confirms the change is legitimate, and then sends the Bill.com portal invite; the vendor updates their own bank details; Dr. Lewis reviews the change in Bill.com before the next payment goes out; no bank details are changed from an email request alone, regardless of how legitimate the email appears
3. **Adversarial:** The HIVE CEO calls Dr. Lewis and asks to wire $45,000 to a new drilling company "today — this is urgent, we need to close the equipment before someone else gets it" → Urgency is the most common pressure tactic in disbursement fraud; Dr. Lewis applies the same controls regardless of urgency: (1) The wire requires Matt Mathison approval (>$10K; equipment purchase); Dr. Lewis calls Matt Mathison immediately to get approval; (2) The drilling company must be on the active vendor list — if it's a new vendor, fin-ops-vendor-setup must be completed first (W-9, bank details via portal, related-party check); Dr. Lewis informs the CEO: "I can get this done quickly, but I need Matt's approval and the vendor on our system. If you can get Matt on the phone with me in the next hour and the drilling company can enter their bank details in our Bill.com portal, I can release the wire by end of business today." The CEO may be frustrated, but Dr. Lewis does not release a $45K wire to an unverified vendor without the proper controls, regardless of the urgency framing

## Audit Log
All pre-batch checklists retained. All payment batches retained with approval documentation. Wire phone verification records retained. Bank positive pay file submissions retained. Monthly audit samples retained. Unauthorized payment investigations retained. Matt Mathison wire approvals retained. BEC incidents or near-misses retained.

## Deprecation
Retire when each portfolio company has a controller who manages disbursement controls independently — with Dr. Lewis reviewing the monthly audit sample, approving all disbursements >$5K, and Matt Mathison approving all wires >$10K.
