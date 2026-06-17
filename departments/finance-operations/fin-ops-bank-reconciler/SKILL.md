---
name: fin-ops-bank-reconciler
description: "Reconcile bank statements to the GL — matching transactions, clearing discrepancies, and confirming cash balances. Use when the user says 'bank reconciliation', 'bank rec', 'reconcile the bank', 'reconcile bank statement', 'bank statement reconciliation', 'bank to QuickBooks', 'outstanding checks', 'uncleared transactions', 'bank balance vs book balance', 'cash reconciliation', 'reconcile cash', 'bank discrepancy', 'outstanding deposits', 'bank statement', or 'reconcile cash account'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <bank account name>] [--month <MM-YYYY>]"
---

# Bank Reconciler

Reconcile bank statements to the QuickBooks general ledger for MBL portfolio companies — ensuring the book balance and bank balance agree, all transactions are accurately recorded, and any discrepancies are resolved before the financial close. Bank reconciliation is the most important single control in financial operations: it is the process that catches fraud (unauthorized transactions), errors (duplicate entries, transposed amounts), and timing differences (outstanding checks, deposits in transit). A company that does not reconcile monthly is operating blind. Dr. Lewis requires a completed bank reconciliation for every account before the financial statements are approved.

## When to Use
- Monthly close — reconcile all bank accounts by BD4
- A bank discrepancy is discovered mid-month
- A new bank account is opened (establish the reconciliation from Day 1)
- Annual audit prep — providing bank reconciliations to the CPA
- Any question about the accuracy of the cash balance in QuickBooks

## Bank Reconciliation Framework

```
Bank reconciliation logic:

  Bank balance (per bank statement)
  + Deposits in transit (recorded in QB; not yet on bank statement)
  - Outstanding checks/payments (recorded in QB; not yet cleared the bank)
  = Adjusted bank balance (should equal QuickBooks balance)
  
  QuickBooks balance (per GL, cash account)
  + Bank credits not yet recorded in QB (interest income, bank transfers received)
  - Bank debits not yet recorded in QB (bank fees, NSF returned items)
  = Adjusted book balance
  
  Adjusted bank balance = Adjusted book balance = RECONCILED ✅
  If they don't equal = Discrepancy: investigate before signing off

Reconciliation process:

  Step 1 — OBTAIN STATEMENTS:
    Download bank statement for the month (online banking portal)
    Open the QuickBooks bank reconciliation window for the account
    Confirm: Statement beginning balance matches prior month ending balance in QB
    If they don't match → prior month reconciliation has an issue; investigate before proceeding
    
  Step 2 — MATCH DEPOSITS:
    Mark each deposit on the bank statement as cleared in QuickBooks
    Confirm: Amount, payee, and date match exactly
    Deposits in transit: Deposits in QuickBooks NOT on the bank statement — list them; they'll clear next month
    Unidentified bank deposits: Deposits on the bank statement NOT in QuickBooks → record them (AR cash application? Interest? Employer payroll refund?) — do not leave unrecorded
    
  Step 3 — MATCH PAYMENTS/CHECKS:
    Mark each payment/check on the bank statement as cleared in QuickBooks
    Confirm: Amount and check number (for checks) or description (for ACH) match
    Outstanding checks: Checks recorded in QB NOT on the bank statement → list them; expected to clear
    Outstanding checks >60 days old: Flag — stale checks; investigate; contact vendor; may need to void and reissue
    Unidentified bank debits: Charges on the bank statement NOT in QuickBooks → record them (bank fees? Subscription charged? NSF fee?) — do not leave unrecorded
    
  Step 4 — RESOLVE DISCREPANCIES:
    Common discrepancies and resolution:
      Amount discrepancy (QB says $1,500; bank says $1,501.50): Transposition or bank fee → research
      Missing transaction (in QB, not on bank): Outstanding item → list; monitor next month
      Missing transaction (on bank, not in QB): Unrecorded item → record in QB
      Duplicate entry: Same transaction recorded twice in QB → void one; check for duplicate payment
      Bank error: Bank charged wrong amount → initiate bank correction; document
      
    Resolution rule: Every discrepancy must be explained and resolved or listed as expected timing difference
    "I'll look into it later" is not an acceptable reconciliation status
    
  Step 5 — SIGN OFF:
    Adjusted bank balance = Adjusted book balance → Reconciliation complete
    Note remaining outstanding items (>30 days: flag; >60 days: investigate)
    Controller signs off on reconciliation; Dr. Lewis reviews as part of BD5 financial review
    
  Multiple accounts:
    Reconcile: Operating account, Payroll account (if separate), Savings/reserve account
    Each account reconciled separately with its own reconciliation schedule
    
  Fraud indicators in bank reconciliation:
    ❌ Checks made payable to cash or to an employee
    ❌ Round-number transactions with no corresponding invoice
    ❌ Payees not on the approved vendor list
    ❌ Transactions just below approval thresholds (structuring)
    ❌ Duplicate transactions on the same day to the same payee
    Any fraud indicator → Immediate escalation to Dr. Lewis; do not mention to suspected party
```

## Output Format

```markdown
# Bank Reconciliation — [Entity] [Account] [Month] [Year]
**Statement date:** [Date] | **Prepared by:** [Controller] | **Reviewed by:** Dr. Lewis

---

## Reconciliation Summary

| | Amount |
|---|--------|
| **Bank statement ending balance** | $[X] |
| + Deposits in transit | +$[X] |
| − Outstanding checks/payments | −$[X] |
| **Adjusted bank balance** | **$[X]** |
| | |
| **QuickBooks ending balance** | $[X] |
| + Unrecorded bank credits | +$[X] |
| − Unrecorded bank debits | −$[X] |
| **Adjusted book balance** | **$[X]** |
| | |
| **Difference** | **$0.00 ✅ / $[X] ❌** |

**Status: RECONCILED ✅ / DISCREPANCY — INVESTIGATING ❌**

---

## Deposits in Transit

| Date | Description | Amount |
|------|------------|--------|
| [Date] | [Customer payment — ACH] | $[X] |
| **Total** | | **$[X]** |

---

## Outstanding Checks/Payments

| Date | Check # / Ref | Payee | Amount | Days outstanding |
|------|-------------|-------|--------|----------------|
| [Date] | [1042] | [Vendor A] | $[X] | [N] days |
| ⚠️ [Date] | [1031] | [Vendor B] | $[X] | **68 days** — stale; investigate |
| **Total** | | | **$[X]** | |

---

## Unrecorded Items

| Type | Description | Amount | QuickBooks entry needed |
|------|------------|--------|------------------------|
| Bank fee | Monthly service fee | $[X] | Debit Bank Fees; Credit Cash |
| Interest income | Savings account interest | $[X] | Debit Cash; Credit Interest Income |

---

## Discrepancies

| Item | Bank amount | QB amount | Difference | Resolution |
|------|-----------|----------|-----------|-----------|
| [Vendor A ACH payment] | $1,501.50 | $1,500.00 | $1.50 | Bank charged $1.50 convenience fee; record fee separately |

---

## Fraud Indicators Detected

[None / Specific: Check #[N] payable to Cash, $450 — escalating to Dr. Lewis immediately]

---

## Controller Sign-Off

**Reconciled by:** [Name] | **Date:** [Date]
**Outstanding items >60 days:** [None / Flagged — see above]
**Dr. Lewis review:** [✅ Approved BD[N] / ❌ Pending]
```

## Output Contract
- Every discrepancy requires a specific explanation — a bank reconciliation that has a $247 "unexplained difference" carried forward month-to-month is not a reconciliation; it is a record of a growing problem; Dr. Lewis reviews the reconciliation and rejects any unexplained difference; the explanation can be: "bank error — correction requested June 15" or "recording error found in June check entry — corrected" or "timing difference — ACH posted in July, expected" but it must be specific and documented; "unknown" is not a resolution
- Stale outstanding checks require investigation — a check that has been outstanding for >60 days either (a) was lost in the mail, (b) was never received by the payee, (c) represents a duplicate payment risk if the payee requests a replacement while the original check is still outstanding, or (d) is a fraudulent check that was intercepted; Dr. Lewis requires the controller to contact the vendor for any check outstanding >60 days and determine the resolution: void and reissue, wait, or investigate; checks outstanding >90 days should be voided in QuickBooks (and the liability recreated if the payment obligation remains)
- Fraud indicators are an immediate escalation — any transaction that raises a fraud indicator (payable to cash, round numbers below threshold, unknown payee, structuring pattern) is immediately escalated to Dr. Lewis; the controller does not investigate independently and does not discuss the flag with anyone in the office; Dr. Lewis reviews the transaction and determines next steps (CEO notification, audit, referral to outside counsel); early detection of fraud requires that the reconciler flags suspicious transactions without self-censoring ("it's probably nothing") — every fraud that goes undetected does so because someone assumed it was probably nothing
- HITL required: Controller performs the reconciliation; Dr. Lewis reviews and approves every bank reconciliation before financial close sign-off; any fraud indicator escalated to Dr. Lewis immediately; any stale outstanding check >60 days flagged to Dr. Lewis; discrepancies >$100 require Dr. Lewis review of the explanation before the reconciliation is approved

## System Dependencies
- **Reads from:** Bank statement (bank portal — downloaded PDF and electronic file), QuickBooks bank register (current month transactions), prior month reconciliation (to confirm beginning balance agreement)
- **Writes to:** QuickBooks (unrecorded items — bank fees, interest, NSF charges); bank reconciliation file (SharePoint/Finance/<Company>/Closes/[Month]/BankRec/); outstanding check list; fraud flag escalation (if applicable)
- **HITL Required:** Controller reconciles; Dr. Lewis reviews and approves; all fraud indicators escalate to Dr. Lewis immediately; stale outstanding checks >60 days flagged to Dr. Lewis

## Test Cases
1. **Golden path:** Allevio operating account — June 2026 → Bank statement: ending balance $94,280; QB ending balance $91,550; deposits in transit: $4,200 (employer payment ACH submitted June 30, cleared July 2) and $1,050 (patient direct-pay June 30, cleared July 1) = $5,250; outstanding checks: check #1042 to Marshall Billing $1,850 written June 28, cleared July 3 = $1,850; no unrecorded items; adjusted bank: $94,280 + $5,250 − $1,850 = $97,680; adjusted QB: $91,550 + $0 − $0 = $91,550... wait, these don't match; re-examine: the QB balance should already include the deposits in transit and outstanding checks as QB is the running balance; adjusted bank balance = $94,280 + $5,250 − $1,850 = $97,680; QB balance already reflects all entries = $97,680; RECONCILED ✅; no fraud indicators; no stale items; Dr. Lewis approves BD4
2. **Edge case:** Bank statement shows a $3,200 ACH debit on June 22 from "ADOBE SYST" — not in QuickBooks → The controller searches all June entries for Adobe; nothing found; Dr. Lewis checks if any team member has an authorized Adobe subscription; Allevio does not have an Adobe subscription in the approved vendor list; Dr. Lewis escalates: is this an unauthorized charge? The controller logs into the bank portal and pulls the ACH origination detail — ADOBE SYSTEMS INC, debited from checking account; Dr. Lewis calls the bank to dispute the charge (Adobe subscriptions can be initiated by anyone with the account number); bank initiates a dispute; temporary credit applied; charge investigated; if the charge is fraudulent, Dr. Lewis notifies CEO and Matt Mathison; if it turns out the CEO authorized an Adobe subscription verbally, Dr. Lewis records the expense and sets up the vendor properly
3. **Adversarial:** Controller says "the reconciliation is a few hundred dollars off but I couldn't find the difference — I'll find it next month" → This is not acceptable; Dr. Lewis requires the reconciliation to balance before the financial close is approved; Dr. Lewis sits with the controller and works through the reconciliation: the most common causes of a small discrepancy are a transposed number (e.g., $342 recorded as $324 in QB), a bank fee not recorded in QB, or a check that cleared at a different amount than recorded; systematic approach: (1) search QB for any entry with that exact amount or a transposition; (2) check bank statement for any small fees or adjustments; (3) if still not found after 2 hours, Dr. Lewis enters the unexplained difference as a suspense account entry with a full description and sets a deadline (10 business days) to resolve it — the suspense entry prevents the error from compounding into next month

## Audit Log
All bank reconciliations retained permanently (required for CPA audit). Outstanding items lists retained by month. Fraud flag escalations retained permanently. Unrecorded item entries retained. Stale check investigations and resolutions retained.

## Deprecation
Retire when each portfolio company has a controller who performs monthly bank reconciliations independently — with Dr. Lewis reviewing the completed reconciliation before financial close sign-off.
