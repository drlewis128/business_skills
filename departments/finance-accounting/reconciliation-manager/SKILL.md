---
name: reconciliation-manager
description: "Manage financial account reconciliations. Use when the user says 'reconciliation', 'bank rec', 'bank reconciliation', 'reconcile accounts', 'reconcile the books', 'account reconciliation', 'QuickBooks reconciliation', 'balance sheet reconciliation', 'credit card reconciliation', 'account balances don't match', or 'reconcile QuickBooks to bank'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <bank|credit-card|ap|ar|payroll|all>] [--period <YYYY-MM>]"
---

# Reconciliation Manager

Manage financial account reconciliations — the process of matching the balances in the company's accounting system (QuickBooks) against external statements (bank statements, credit card statements, vendor statements) to ensure every transaction is accounted for and the books are accurate. Reconciliation is the foundational control in financial management: unreconciled accounts mean the financial statements are unreliable, and unreliable financials lead to bad decisions.

## When to Use
- Monthly — all accounts must be reconciled as part of the month-end close
- A balance sheet account shows an unexpected balance
- The accountant or CPA says "the books don't tie to the bank"
- Preparing for an audit — reconciliations are the first thing auditors check
- A transaction appears in the bank statement but not in QuickBooks (or vice versa)

## Reconciliation Standards

```
Accounts to reconcile every month:
  1. Operating bank account(s) — QuickBooks vs. bank statement
  2. Payroll bank account (if separate) — QB vs. bank
  3. Credit card account(s) — QB vs. credit card statement
  4. Accounts payable — Bill.com vs. QB GL
  5. Accounts receivable — QB AR subledger vs. QB GL
  6. Payroll liabilities — Payroll provider vs. QB
  7. Debt / loan balances — Lender statement vs. QB
  8. Intercompany accounts (if applicable) — must zero out across entities

Timing target:
  All reconciliations complete by Day 5 of the close calendar.
  Reconciliations are a prerequisite to finalizing financial statements.

Materiality: Investigate any reconciling item >$100.
  Small unexplained items are often the first sign of a larger problem.
```

## Output Format

```markdown
# Reconciliation Report — <Company Name>
**Period:** <Month YYYY>
**Prepared by:** Dr. John Lewis | **Date:** <Date>

---

## Reconciliation Summary

| Account | QB Balance | Statement Balance | Difference | Status | Items to clear |
|---------|-----------|------------------|-----------|--------|---------------|
| Operating Checking ([Last 4]) | $[X] | $[X] | $[0 / $Diff] | ✅ / ❌ | [N outstanding] |
| Payroll Account ([Last 4]) | $[X] | $[X] | | ✅ / ❌ | |
| Credit Card — [Card] | $[X] | $[X] | | ✅ / ❌ | |
| Accounts Payable (Bill.com vs. QB) | $[X] | $[X] | | ✅ / ❌ | |
| Accounts Receivable | $[X] | $[X] | | ✅ / ❌ | |
| Payroll Liabilities | $[X] | $[X] | | ✅ / ❌ | |
| Loan/Debt — [Lender] | $[X] | $[X] | | ✅ / ❌ | |

**Overall status:** ✅ All accounts reconciled / ❌ [N] accounts have outstanding items — see below

---

## Operating Checking Reconciliation Detail

**QuickBooks balance (end of month):** $[X]
**Bank statement ending balance:** $[X]

**Reconciling items:**

| Type | Description | Amount | Age | Resolution |
|------|------------|--------|-----|-----------|
| Outstanding check | Check #[N] to [Vendor] issued [Date] | ($[X]) | [N days] | Clear when check is cashed |
| Outstanding check | Check #[N] to [Vendor] | ($[X]) | [N days] | |
| Deposit in transit | ACH from [Client] received [Date+1] | $[X] | [N days] | Clears in Day 1 of next month |
| Bank fee | Monthly service fee | ($[X]) | 0 days | Add to QuickBooks |
| Interest earned | Interest income | $[X] | 0 days | Add to QuickBooks |

**Adjusted QB balance:** $[X] | **Adjusted bank balance:** $[X]
**Net difference after adjustments:** $[0 — reconciled] / [$Diff — INVESTIGATE]

---

## Credit Card Reconciliation Detail

**QB credit card balance:** $[X]
**Statement balance:** $[X]

| Reconciling item | Amount | Description | Action |
|-----------------|--------|------------|--------|
| Unposted transaction | ($[X]) | [Charge appearing in QB not on statement yet] | Clear next month |
| Missing transaction | ($[X]) | [Charge on statement not in QB] | Enter in QB |

**Status:** ✅ Reconciled / ❌ Difference of $[X]

---

## AP Reconciliation (Bill.com vs. QuickBooks)

**Bill.com outstanding payables:** $[X]
**QuickBooks AP balance:** $[X]
**Difference:** $[0 — reconciled] / $[Diff]

**Items causing difference (if any):**
| Description | Amount | Reason | Action |
|------------|--------|--------|--------|
| [Invoice in QB not in Bill.com] | $[X] | [Entered in QB directly; not routed through Bill.com] | Correct process going forward |
| [Payment in Bill.com not yet synced to QB] | ($[X]) | [Sync delay] | Force sync / enter manually |

---

## AR Reconciliation

**QuickBooks AR subledger total:** $[X]
**QuickBooks AR GL balance:** $[X]
**Difference:** $[0] / $[Diff]

**Note:** AR subledger and GL must always match — if they don't, there's either a posting error or a manual GL entry that bypassed the AR module.

---

## Outstanding Reconciling Items (Age Analysis)

| Account | Item | Amount | Age | Cleared by |
|---------|------|--------|-----|-----------|
| Operating | Check #[N] | ($[X]) | [N] days | [Void if >90 days] |
| Credit Card | [Unposted charge] | ($[X]) | [N] days | [Next cycle] |

**Checks outstanding >90 days:** [If any — recommend voiding and reissuing or contacting payee]
**Items outstanding >30 days that are not checks or deposits in transit:** [Red flag — requires investigation]

---

## Reconciliation Sign-Off

| Account | Reconciled by | Date | Reviewed by | Date |
|---------|-------------|------|-------------|------|
| Operating Checking | Dr. Lewis | <Date> | [CPA/Controller] | |
| Credit Card | Dr. Lewis | | | |
| AP | Dr. Lewis | | | |
| AR | Dr. Lewis | | | |

**Month-end close requirement:** All reconciliations must be complete and reviewed before financial statements are finalized.
```

## Output Contract
- Every reconciling item must be identified and explained — "difference of $300 — unknown" is not a reconciliation; it is an incomplete reconciliation; every item in the difference must have an explanation; unknown differences require investigation until resolved
- Reconciliation must be done before financial statements are finalized — reconciliation is a prerequisite to close, not an optional step; financial statements prepared from unreconciled accounts are unreliable; this order of operations is non-negotiable
- Outstanding checks >90 days flagged for void-and-reissue consideration — an outstanding check that hasn't cleared in 90 days is either lost, forgotten, or the payee can't cash it; after 90 days, void the check in QuickBooks, contact the payee, and reissue if appropriate; state laws (escheatment) govern uncashed checks >1 year
- AP and AR subledgers must match GL — if the AP or AR subledger doesn't match the GL balance, there is either a data entry error or a manual journal entry that bypassed the normal process; the root cause must be found and corrected; never manually adjust the GL to make it match the subledger without understanding why they differ
- HITL required: Dr. Lewis prepares reconciliations; CPA or controller reviews and signs off; any difference >$500 unexplained at close date requires immediate escalation; financial statements cannot be distributed with an unexplained reconciling item >$500

## System Dependencies
- **Reads from:** QuickBooks (GL balances and transactions), bank statements, credit card statements, Bill.com (AP records), payroll provider reports, lender statements
- **Writes to:** Reconciliation workpapers (SharePoint/Finance/Reconciliations/<Period>/), QuickBooks (correction entries), close checklist
- **HITL Required:** Dr. Lewis prepares; CPA/controller reviews; unexplained differences >$500 block close until resolved; all reconciliations required before financial statement distribution

## Test Cases
1. **Golden path:** Allevio May 2026 reconciliations → Operating checking: QB $234,187, bank $232,842; difference: $1,345 (two outstanding checks — Vendor A $890 issued May 28, Vendor B $455 issued May 30 — both expected to clear June 1-3); reconciled with 2 outstanding items (both checks, both <7 days old); credit card: QB $8,342, statement $8,342 — ✅ zero difference; AP (Bill.com vs. QB): Bill.com $22,450, QB $22,450 — ✅ reconciled; AR: subledger $287,000, GL $287,000 — ✅ reconciled; all reconciliations complete Day 4 of close calendar; CPA reviewed and signed off Day 5; financial statements finalized Day 6
2. **Edge case:** An outstanding check has been on the reconciliation for 4 months → this check is a stale check; action: (1) Verify in QuickBooks that the original payment was legitimate and properly authorized; (2) Contact the payee — did they receive the check? Was it lost? (3) If the payee confirms they received and cashed it, there's likely a bank processing error — contact the bank; (4) If the check was never received, void it in QB and issue a replacement; (5) If the payee says they don't expect a payment, investigate the original transaction; stale checks left on reconciliations for multiple months indicate the reconciliation process isn't being managed
3. **Adversarial:** The CPA says "just write off the $220 difference — it's not material" → do not write off unidentified reconciling items; a $220 difference could indicate a data entry error, a missing transaction, or the first indication of a larger systematic issue; find the cause: run a transaction report for the period, compare it to the bank statement line by line, identify what generated the difference; only after the source is identified should a correcting entry (if needed) be made; "immaterial" doesn't mean "not worth finding"

## Audit Log
Reconciliation workpapers retained by account and period (minimum 7 years). Outstanding items tracked to resolution. Sign-off dates documented. Correction entries made as a result of reconciliation documented with explanation. Unexplained difference escalations documented.

## Deprecation
Retire when portfolio companies have accounting staff with automated reconciliation tools (e.g., QuickBooks Online's built-in bank reconciliation with automated matching, or third-party reconciliation tools) that perform the matching automatically and require human review only of exceptions.
