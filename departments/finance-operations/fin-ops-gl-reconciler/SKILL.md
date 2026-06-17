---
name: fin-ops-gl-reconciler
description: "Reconcile general ledger accounts — clearing suspense, resolving variances, and ensuring balance sheet accuracy. Use when the user says 'GL reconciliation', 'reconcile GL', 'general ledger reconciliation', 'balance sheet reconciliation', 'account reconciliation', 'reconcile accounts', 'balance sheet tie-out', 'suspense account', 'GL balance', 'clean up GL', 'reconcile prepaid', 'reconcile accruals', 'account tie-out', 'balance sheet scrub', 'reconcile balance sheet', or 'account analysis'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <account name or GL#>] [--month <MM-YYYY>]"
---

# GL Reconciler

Reconcile general ledger accounts for MBL portfolio companies — ensuring every balance sheet account is supported by a reconciling schedule, suspense accounts are cleared, and the financial statements reflect economic reality. The GL reconciliation process is the backbone of financial close quality: the bank reconciliation confirms cash; the GL reconciliation confirms every other balance sheet account. An unreconciled balance sheet account is a financial statement risk — the balance may be wrong, inflated, or contain undetected errors that compound over time. Dr. Lewis reviews all balance sheet reconciliations before signing off on the financial close.

## When to Use
- Monthly close — BD4 reconciliation deadline
- A balance sheet account balance looks unusual or unexpected
- Preparing for a CPA review or audit
- A new account is opened in QuickBooks (establish the reconciliation format from the first month)
- Year-end cleanup — identifying and clearing old balances

## GL Reconciliation Framework

```
Balance sheet accounts requiring monthly reconciliation:

  ASSETS:
  ☐ Cash and cash equivalents — fin-ops-bank-reconciler (separate process)
  ☐ Accounts receivable — AR aging report to QuickBooks balance
  ☐ Allowance for doubtful accounts — provision schedule
  ☐ Prepaid expenses — prepaid amortization schedule
  ☐ Deposits — tenant security deposits, vendor deposits; list each item
  ☐ Fixed assets (gross) — fin-ops-fixed-asset-manager (depreciation schedule)
  ☐ Accumulated depreciation — depreciation schedule
  
  LIABILITIES:
  ☐ Accounts payable — AP aging report to QuickBooks balance
  ☐ Accrued liabilities — accrual schedule (each line item with supporting basis)
  ☐ Deferred revenue — deferred revenue schedule (services not yet earned)
  ☐ Payroll taxes payable — payroll report to QuickBooks
  ☐ Benefits payable — benefit carrier invoices vs. QuickBooks
  ☐ Notes payable / long-term debt — lender statements to QuickBooks
  ☐ Credit card payable — credit card statement to QuickBooks
  
  EQUITY:
  ☐ Retained earnings — prior year retained earnings + current year net income
  
  Reconciliation format for each account:
    1. GL balance per QuickBooks as of month-end
    2. Supporting schedule or sub-ledger total
    3. Difference (should be zero or explained timing difference)
    4. Explanation of any variance
    
Specific account reconciliation approaches:

  ACCOUNTS RECEIVABLE:
    Pull AR aging from QuickBooks (or billing system)
    Confirm: Total aging = AR balance in QuickBooks
    Common issues: Unapplied payments (credits without matching invoices); 
      write-offs not yet approved; invoices in wrong period
    Action: fin-ops-cash-application for unapplied payments; fin-ops-collections-manager for aging >60 days
    
  PREPAID EXPENSES:
    Maintain a prepaid amortization schedule:
      List each prepaid item: Description, original amount, start date, end date, monthly amortization
      Total schedule = GL balance
      Each month: Debit expense; credit prepaid for the current month's portion
    Common prepaids: Annual insurance premiums; software annual licenses; lease deposits
    Alert: If a prepaid has been on the books >12 months without full amortization → investigate
    
  ACCRUED LIABILITIES:
    Each accrual has its own line in the schedule:
      Description | Original entry date | Amount | Basis | Expected invoice date
    Every accrual should have an expected invoice arrival date
    When the invoice arrives: Debit accrual; credit AP (reversing the accrual)
    Accruals >90 days old without invoice: Investigate — should it still be accrued? Is the service actually happening?
    
  DEFERRED REVENUE:
    Revenue received but not yet earned (e.g., advance payments for services)
    Schedule: Customer | Payment received date | Total | Earned to date | Deferred balance
    Each month: Recognize earned portion (debit deferred revenue; credit revenue)
    Deferred revenue balance = customer deposits + advance payments not yet earned
    
  NOTES PAYABLE / DEBT:
    Obtain lender statement monthly
    Confirm: QB balance matches lender balance
    Confirm: Interest expense recorded correctly (monthly accrual if payment schedule doesn't match period end)
    Amortization schedule: Beginning balance + new draws − principal payments = Ending balance
    
  SUSPENSE ACCOUNTS:
    Suspense accounts are for temporary use only — any entry in suspense must have a resolution date
    Monthly target: Suspense balance = $0
    If suspense has a balance, every entry must be identified and cleared
    Common suspense items: Unidentified bank transactions; coding questions pending management direction
    No entry stays in suspense more than 30 days without Dr. Lewis review
    
  Year-end considerations:
    Prepaid and accrual schedules reconciled to support audit
    All suspense accounts cleared to $0 by December 31
    Allowance for doubtful accounts reviewed and adjusted (based on AR aging >90 days)
```

## Output Format

```markdown
# GL Reconciliation Package — [Entity] [Month] [Year]
**Reconciled by:** [Controller] | **Reviewed by:** Dr. Lewis | **Date:** BD[N]

---

## Balance Sheet Reconciliation Status

| Account | GL Balance | Schedule/Sub-Ledger | Difference | Status |
|---------|-----------|--------------------|-----------|----|
| Cash (per bank rec) | $[X]K | Bank rec ✅ | $0 | ✅ |
| Accounts receivable | $[X]K | AR aging total | $0 | ✅ |
| Prepaid expenses | $[X]K | Prepaid schedule | $0 | ✅ |
| Fixed assets (gross) | $[X]K | Fixed asset schedule | $0 | ✅ |
| Accum. depreciation | ($[X]K) | Depreciation schedule | $0 | ✅ |
| Accounts payable | ($[X]K) | AP aging total | $0 | ✅ |
| Accrued liabilities | ($[X]K) | Accrual schedule | $0 | ✅ |
| Deferred revenue | ($[X]K) | Deferred revenue schedule | $0 | ✅ |
| Notes payable | ($[X]K) | Lender statement | $0 | ✅ |
| Suspense | $0 | All items cleared | $0 | ✅ |

**All accounts reconciled:** ✅ / ❌ Issues — see below

---

## Prepaid Expenses Detail

| Item | Original | Start | End | Monthly | Balance EOM |
|------|---------|-------|-----|---------|------------|
| Malpractice insurance | $24,600 | Jan 2026 | Dec 2026 | $2,050/mo | $[X] |
| AdvancedMD annual | $7,200 | Apr 2026 | Mar 2027 | $600/mo | $[X] |
| **Total** | | | | | **$[X]** |

---

## Accrued Liabilities Detail

| Item | Date accrued | Amount | Basis | Expected invoice |
|------|------------|--------|-------|----------------|
| [Cleaning service — June] | Jun 30 | $280 | Contract monthly $280 | Mid-July |
| [Legal fees — estimated] | Jun 30 | $1,500 | Retainer month est. | Early July |
| **Total** | | **$[X]** | | |

---

## Suspense Account

| Entry | Date | Amount | Resolution | Expected clearance |
|-------|------|--------|-----------|-------------------|
| [Unidentified bank debit] | Jun 14 | $3,200 | Investigating — Adobe subscription | By June 30 |
| **Total** | | **$[X]** | | |

**Suspense cleared to $0?** ✅ / ❌ $[X] outstanding — [description]

---

## Issues / Flags

[None / Specific: Accrual for [vendor] has been open 95 days without invoice — Dr. Lewis reviewing whether to reverse]
```

## Output Contract
- Every balance sheet account is reconciled monthly, not quarterly — quarterly reconciliation of balance sheet accounts means errors compound for 3 months before detection; a prepaid balance that should have amortized to $0 in January but is still showing $18,000 in March represents 3 months of overstated assets; Dr. Lewis requires that every balance sheet account listed above is reconciled monthly as part of the close, with the reconciliation schedule provided to Dr. Lewis as part of the BD5 preliminary financial package; the bank reconciliation alone is not sufficient
- Suspense accounts must clear monthly — a suspense account with a balance at month-end is an unresolved question about the financial statements; every item in suspense must have an identified owner and an expected clearance date; Dr. Lewis reviews the suspense balance as part of every close; any item in suspense >30 days requires a specific explanation and escalation path; items in suspense >60 days trigger a Dr. Lewis investigation of the underlying transaction
- Accruals must have a basis, not an estimate — an accrual entered as "misc. accrual $5,000" with no supporting documentation is not an accrual; it is a placeholder that will either be over- or under-stated when the invoice arrives; every accrual entry must have: (1) the specific vendor or service, (2) the specific amount (based on the contract, last invoice, or a documented estimate with basis), (3) the expected invoice date; if the invoice doesn't arrive by the expected date, Dr. Lewis reviews whether to keep the accrual, adjust the amount, or reverse it
- HITL required: Controller prepares all balance sheet reconciliations; Dr. Lewis reviews the complete reconciliation package at BD5 and approves the financial close at BD6; any reconciliation with a difference >$100 requires a documented explanation before Dr. Lewis approves; any suspense balance >$0 at close requires Dr. Lewis review and approval to carry forward; any accrual >$5,000 requires Dr. Lewis review of the basis

## System Dependencies
- **Reads from:** QuickBooks GL (all balance sheet accounts); AR aging report (fin-ops-ar-invoicer, QuickBooks); AP aging report (fin-ops-ap-processor, QuickBooks); bank reconciliation (fin-ops-bank-reconciler); fixed asset depreciation schedule (fin-ops-fixed-asset-manager); lender statements (loan servicer portal); payroll reports (payroll provider)
- **Writes to:** QuickBooks (adjusting journal entries — prepaid amortization, accrual entries, suspense clearance); reconciliation package (SharePoint/Finance/<Company>/Closes/[Month]/GLRec/); BD5 financial package for Dr. Lewis review
- **HITL Required:** Controller reconciles; Dr. Lewis reviews and approves the full reconciliation package; any balance with a difference >$100 requires documented explanation; suspense balance at close requires Dr. Lewis approval to carry forward

## Test Cases
1. **Golden path:** Allevio June 2026 GL reconciliation → Controller pulls all BS account balances from QuickBooks; AR aging: $97,680 aging total matches $97,680 AR balance in QB ✅; prepaid schedule: malpractice insurance $18,400 remaining + AdvancedMD license $5,400 remaining = $23,800 in QB ✅; accrued liabilities: cleaning $280 + legal $1,500 = $1,780 matches QB accrued liabilities account ✅; AP aging: $14,200 total matches AP balance in QB ✅; suspense: $0 ✅; notes payable: lender statement confirms $285,000 outstanding matches QB ✅; reconciliation package delivered to Dr. Lewis BD5; all accounts ✅; Dr. Lewis approves; financial close proceeds to BD6
2. **Edge case:** AR balance in QuickBooks is $97,680 but the AR aging report shows $102,450 — a $4,770 difference → Difference means either (a) a payment was applied to the wrong account, (b) a credit memo was applied without the corresponding invoice, or (c) an invoice was entered in QuickBooks but not yet in the billing system; controller runs a "find discrepancy" process: pull all AR transactions for the month; look for payments applied to accounts that don't match aging; most likely cause: a $4,770 payment was received and posted to cash but not applied to the specific invoice in AR (unapplied cash); controller runs fin-ops-cash-application process to apply the payment; AR aging drops to $97,680; reconciliation balances; if unapplied cash is the cause, the fix is simple; if it can't be found, Dr. Lewis reviews the source transactions
3. **Adversarial:** Controller says "the accrued liabilities account doesn't reconcile — there are a bunch of old entries from 2024 that nobody cleaned up" → Old, unresolved accruals are a real and common problem at small companies; Dr. Lewis reviews the accrual schedule: for each old entry, evaluate: did the invoice ever arrive and get posted? If yes → the accrual should have been reversed; reverse it now (debit accrued liabilities, credit expense — which reduces the overstatement). Did the invoice never arrive? If the vendor relationship is still active, ask for the invoice; if the vendor is gone and the service was never delivered, the accrual should be reversed (it was an overstatement). Dr. Lewis works through all old entries systematically; each is resolved with a documented explanation; going forward, every accrual has a maximum 90-day life before Dr. Lewis reviews and decides to maintain, adjust, or reverse

## Audit Log
All monthly GL reconciliation packages retained. Adjusting journal entry support retained. Suspense entries and resolutions retained. Accrual reversal decisions retained with documentation. Year-end workpapers for CPA audit retained permanently.

## Deprecation
Retire when each portfolio company has a controller who prepares monthly balance sheet reconciliations independently — with Dr. Lewis reviewing the package and approving the close, and the CPA reviewing annually.
