---
name: fin-ops-reconciliation-reviewer
description: "Review and approve account reconciliations prepared by the controller. Use when the user says 'reconciliation review', 'review reconciliations', 'reconciliation approval', 'approve reconciliations', 'account reconciliation review', 'rec review', 'balance sheet reconciliation review', 'month-end rec review', 'review account recs', 'reconciliation quality', 'controller reconciliation', 'bank rec review', 'review the recs', 'accounts reconciled', 'balance sheet accounts reviewed', 'reconciliation sign-off', or 'approve the reconciliations'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-MM>] [--account <all|cash|ar|ap|prepaid|fixed-assets|accruals>] [--action <review|approve|request-revision>]"
---

# Reconciliation Reviewer

Review and approve account reconciliations prepared by the controller for MBL portfolio companies — verifying completeness, accuracy, and proper documentation before sign-off. Reconciliations are the audit of the accounting: each reconciliation proves that a balance sheet account balance is supported by real, verified items. When reconciliations are weak (unreconciled differences, vague line items, old items with no resolution plan), the financial statements are unreliable regardless of whether they balance. Dr. Lewis reviews all reconciliations monthly as the second-level control and approves them before the close is considered complete.

## When to Use
- Month-end close — reviewing controller-prepared reconciliations (BD4-BD5)
- An auditor requests reconciliation files during annual audit
- A reconciliation has an unexplained difference — investigating before approval
- Establishing the reconciliation preparation process at a newly acquired portfolio company
- Quarterly reconciliation quality assessment

## Reconciliation Review Framework

```
Balance sheet accounts that require monthly reconciliation:

  TIER 1 — CRITICAL (reconcile every close; Dr. Lewis reviews):
    1. Cash (all bank accounts): Tie to bank statements; no unreconciled items >30 days
    2. Accounts Receivable: Tie to AR aging; no items in current that are actually past due
    3. Accounts Payable: Tie to AP aging and vendor statements for top 10 vendors
    4. Accrued Expenses: Every accrual has a memo, amount basis, and expected invoice date
    5. Deferred Revenue: Schedule of all deferred amounts; revenue recognition policy applied
    
  TIER 2 — IMPORTANT (reconcile every close; controller reviews; Dr. Lewis spot-checks):
    6. Prepaid Expenses: Amortization schedule current; no prepaids >12 months without review
    7. Fixed Assets and Accumulated Depreciation: Fixed asset schedule ties to GL; no unrecorded disposals
    8. Lines of Credit / Notes Payable: Bank statement tie; interest expense current
    9. Payroll Liabilities (accrued salaries, payroll taxes payable): Tie to payroll register; EFTPS confirmed
    10. Owner/Equity accounts: No unexplained activity; equity entries require Dr. Lewis review
    
  TIER 3 — STANDARD (reconcile quarterly or when materially active):
    11. Intangible assets: Amortization schedule; useful life confirmed
    12. Security deposits: Property lease deposit confirmed; no change without lease event
    13. Other assets/liabilities: Any account >$5,000 with activity in the quarter
    
WHAT MAKES A GOOD RECONCILIATION:
  1. Header: Account name; account code; period; preparer; reviewer; date
  2. Ending balance: GL balance matches the reconciliation total
  3. Every item explained: For accounts with multiple components, each component is listed with: description, original date, amount, and expected resolution date
  4. Supporting documentation: Reference to the document that supports each item (invoice #, bank statement date, schedule)
  5. Open items: Any item that cannot be immediately resolved is listed as an open item with: age, description, responsible party, resolution plan, and expected resolution date
  6. Prior period comparison: Reconciliation compares this month's balance to prior month; changes are explained
  7. Reviewer sign-off: Dr. Lewis signature/timestamp after review

RED FLAGS IN RECONCILIATIONS (request revision if any of these are present):
  "In process" or "to be investigated" with no further detail: Not acceptable; must have specific explanation
  Open items older than 60 days with no resolution plan: Escalate; may require write-off or adjustment
  Reconciliation total doesn't tie to the GL: Hard stop; posting error exists; must be corrected before approval
  Accrual with no basis: "Accrual $5,000" with no explanation of what services, what period, expected invoice: Reject
  Cash reconciliation with items >$10,000 in transit >30 days: Investigate before approving
  AP balance ties to aging but doesn't match vendor statements for top vendors: Investigate

REVIEW PROCESS (for Dr. Lewis):

  Step 1 — GL BALANCE TIE:
    Every reconciliation total must equal the GL balance for that account on the close date
    If they don't tie, there is a posting error that must be corrected first
    
  Step 2 — COMPLETENESS:
    Every required Tier 1 and Tier 2 account has a reconciliation prepared
    No balance sheet account >$5,000 with activity is unreconciled
    
  Step 3 — OPEN ITEMS:
    Review every open item; challenge any open item with a vague description
    Items >60 days old must have an active resolution plan
    Items >90 days old that cannot be resolved are candidates for write-off or adjustment
    
  Step 4 — UNUSUAL ITEMS:
    Any item that is new (not present in prior month's reconciliation) and >$5,000 must be explained
    Any item that reversed (was present last month, is gone this month without being invoiced/received) must be explained
    
  Step 5 — SIGN-OFF:
    If the reconciliation meets all standards: Dr. Lewis approves and signs (timestamp)
    If revision is needed: Dr. Lewis returns with specific revision requests; controller revises; re-review
    If a material discrepancy is found: Hold the close; investigate; do not deliver financials based on unresolved reconciliation discrepancies
```

## Output Format

```markdown
# Reconciliation Review — [Entity] [Period]
**Reviewed by:** Dr. Lewis | **Review date:** [Date] | **Controller:** [Name]

---

## Tier 1 Reconciliations

| Account | GL Balance | Rec Total | Ties? | Open Items | Oldest Open Item | Status |
|---------|-----------|----------|-------|-----------|-----------------|--------|
| Cash — Operating | $[X] | $[X] | ✅ | 1 (OC — deposit in transit) | 12 days | ✅ Approved |
| Accounts Receivable | $[X] | $[X] | ✅ | 0 | — | ✅ Approved |
| Accounts Payable | $[X] | $[X] | ✅ | 2 (disputed invoices) | 48 days | ✅ Approved (resolution plan documented) |
| Accrued Expenses | $[X] | $[X] | ✅ | 1 (accrual per CEO email) | 5 days | ✅ Approved |
| Deferred Revenue | $[X] | $[X] | ✅ | 0 | — | ✅ Approved |

---

## Tier 2 Reconciliations

| Account | GL Balance | Rec Total | Ties? | Issues | Status |
|---------|-----------|----------|-------|--------|--------|
| Prepaid Expenses | $[X] | $[X] | ✅ | Schedule current | ✅ Approved |
| Fixed Assets (net) | $[X] | $[X] | ✅ | 1 disposal not recorded — controller to correct | ⚠️ Revision Required |
| Accrued Salaries | $[X] | $[X] | ✅ | Payroll register confirms | ✅ Approved |

---

## Open Items Review

| Account | Item | Amount | Age | Resolution Plan | Next Action |
|---------|------|--------|-----|----------------|------------|
| AP | Vendor dispute — [Name] | $[X] | 48 days | Pending contract review | Controller follows up by [Date] |
| Fixed Assets | Unreported disposal of [asset] | $[X] | 5 days | Controller recording correcting entry | Due [Date] |

---

## Dr. Lewis Sign-Off

**Overall reconciliation status:** ✅ Approved / ⚠️ Conditional — revisions required / ❌ Not approved — material issues
**Revisions required:** [List if any]
**Close status:** ✅ Reconciliations approved — clear to finalize and deliver financials
**Approval timestamp:** [YYYY-MM-DD HH:MM] — Dr. Lewis
```

## Output Contract
- No reconciliation means no close — the financial statements cannot be delivered until all Tier 1 reconciliations are approved; if the accounts receivable is not reconciled, the AR balance on the balance sheet is unverified; if the accrued expenses are not reconciled, the P&L may contain inaccurate accruals; Dr. Lewis treats the reconciliation review as a hard gate in the close process; the close calendar (fin-ops-close-calendar-manager) allocates BD4-BD5 for reconciliation review because the financial statements (BD7 delivery) depend on it
- GL balance must tie before approval is possible — a reconciliation where the total doesn't match the GL balance is not a reconciliation; it is a starting point for investigating a posting error; Dr. Lewis returns any reconciliation where the total doesn't tie to the GL immediately with the instruction: "The reconciliation total of $[X] doesn't match the GL balance of $[X] — a $[Y] difference exists. Do not rework the reconciliation; first find the transaction that explains the difference. The reconciliation can only be correct after the posting error is corrected." The controller finds the error, corrects the posting, and resubmits
- Old open items without resolution plans are write-off candidates — an unresolved open item in the accounts receivable reconciliation that is 120 days old is probably uncollectable; an unresolved accrual that is 90 days old with no invoice in sight may need to be reversed; Dr. Lewis challenges every open item over 60 days with the question: "What specifically is the resolution plan, who owns it, and by what date will it be resolved?" If the controller cannot answer this question specifically, Dr. Lewis either escalates the investigation or proposes a write-off or reversal
- HITL required: Controller prepares all reconciliations; Dr. Lewis reviews and approves all Tier 1 reconciliations; Dr. Lewis spot-checks Tier 2 reconciliations; close is not final until Dr. Lewis signs off on the reconciliation package; any reconciliation with a GL-total mismatch is returned before close; any open item >90 days without a resolution plan is escalated to CEO or requires write-off; Matt Mathison is notified of write-offs >$5K

## System Dependencies
- **Reads from:** QuickBooks GL balances (by account; as of close date); controller-prepared reconciliations (SharePoint/Finance/<Company>/Reconciliations/[Period]/); bank statements; AP aging; AR aging; payroll register; fixed asset schedule; deferred revenue schedule; prior month reconciliations (for comparison)
- **Writes to:** Reconciliation approval records (SharePoint/Finance/<Company>/Reconciliations/[Period]/Review/); close calendar (close status update); revision requests to controller; write-off recommendations (if applicable); quarterly reconciliation quality report
- **HITL Required:** Controller prepares; Dr. Lewis reviews and approves; GL-total mismatches returned immediately; open items >90 days escalated; close not final without Dr. Lewis reconciliation sign-off; write-offs >$5K require Matt Mathison notification

## Test Cases
1. **Golden path:** Allevio June close — controller submits reconciliation package on BD4 → Dr. Lewis reviews: 5 Tier 1 accounts all tie to the GL ✅; Cash rec: 1 deposit in transit ($8,200, dated June 29) — clears July 1 per bank notification ✅; AR rec: all items match the AR aging; $0 in dispute ✅; AP rec: $42,800 AP balance matches the aging; 2 invoices in dispute ($2,400 total — resolution plan documented, expected by July 10) ✅; Accrued expenses: 3 accruals all have memos, amounts, and expected invoice dates ✅; Deferred revenue: $0 (no deferred revenue contracts at Allevio currently) ✅; Tier 2: Prepaid schedule current; fixed asset schedule ties; payroll liabilities confirmed by payroll register ✅; Dr. Lewis approves the full package at 2:00 PM on BD5; close proceeds; financial statements delivered to CEO at 10:30 AM BD7
2. **Edge case:** The Column6 AP reconciliation shows a $6,800 discrepancy between the reconciliation total and the GL → Dr. Lewis returns immediately: "The AP reconciliation shows $184,200 but the QuickBooks AP balance shows $191,000 — a $6,800 difference. I cannot approve this reconciliation until the discrepancy is identified and the posting is corrected. Please find the transaction that explains the difference." Controller investigates: a $6,800 invoice was coded to AP in QuickBooks but was not included in the Bill.com reconciliation because it was posted directly to QuickBooks (bypassing the standard Bill.com workflow — a control violation as well as a reconciliation error); controller records the invoice in Bill.com retroactively; reconciliation is resubmitted; total now ties to GL ✅; Dr. Lewis approves; notes the control violation (direct GL posting bypassing Bill.com) and adds it to the quarterly controls review
3. **Adversarial:** Controller says "The open items section has 5 items over 90 days, but they're all small and we've been tracking them for months" → Dr. Lewis asks for the specific status of each: (1) Customer A — $380 credit balance; customer has confirmed they want it applied to future invoice (written email on file) → acceptable; (2) Vendor B — $1,200 prepayment for a service that was never delivered; vendor has not responded in 90 days → probable write-off; Dr. Lewis recommends writing off $1,200 (below $500 individual threshold but >$500 requires CEO + Dr. Lewis; let's confirm amount is below); (3)-(5): Similar investigation for each; Dr. Lewis does not accept "we've been tracking them for months" without a specific current status and resolution action; after reviewing all 5, Dr. Lewis approves 2 (with documentation), writes off 2 (with CEO approval for the $1,200 one), and escalates 1 to the CEO for a business decision about a disputed vendor

## Audit Log
All reconciliation packages retained by period. Dr. Lewis approval timestamps retained. Revision requests and controller responses retained. Open item tracking retained. GL-total mismatch incidents and resolutions retained. Write-off recommendations triggered by reconciliation review retained. Annual reconciliation quality trend retained.

## Deprecation
Retire when each portfolio company has a controller who prepares reconciliations and a CFO who reviews them — with Dr. Lewis spot-checking quarterly and Matt Mathison receiving the annual reconciliation quality summary.
