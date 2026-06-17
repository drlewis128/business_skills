---
name: fin-ops-journal-entry-preparer
description: "Prepare standard and adjusting journal entries with proper documentation. Use when the user says 'journal entry', 'JE', 'adjusting entry', 'accrual entry', 'prepaid entry', 'depreciation entry', 'deferred revenue entry', 'reversing entry', 'correcting entry', 'manual journal entry', 'book an entry', 'record an entry', 'accounting entry', 'record a transaction', 'adjusting journal', 'month-end entries', 'close entries', 'reclassification entry', or 'post an entry'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <accrual|prepaid|depreciation|deferred|reversal|correction|reclassification>] [--period <YYYY-MM>] [--amount <$>]"
---

# Journal Entry Preparer

Prepare, document, and record journal entries for MBL portfolio companies — covering standard month-end entries, accruals, prepaids, depreciation, deferred revenue, reversals, and corrections. Journal entries are the atomic unit of accounting: every financial result traces to individual JEs; a JE that is wrong (wrong amount, wrong period, wrong account) produces a wrong financial statement. Dr. Lewis applies four controls to every journal entry: correct accounts, correct period, correct amount, and supporting documentation. No JE is posted to QuickBooks without meeting all four.

## When to Use
- Month-end close — preparing accruals, prepaids, depreciation, deferred revenue
- A transaction occurred that doesn't flow through the standard AP/AR workflow (needs a manual entry)
- Correcting a posting error discovered during close or reconciliation
- Reclassifying a transaction to the correct account
- Setting up reversing entries for the next period

## Journal Entry Framework

```
The accounting equation: Assets = Liabilities + Equity (always balanced)

Every JE: Total debits = Total credits (this is the check — if they don't balance, the entry is wrong)

Debit/Credit rules:
  Assets: Debit to increase; Credit to decrease
  Liabilities: Credit to increase; Debit to decrease
  Equity/Revenue: Credit to increase; Debit to decrease
  Expenses: Debit to increase; Credit to decrease

Standard month-end journal entries:

  1. ACCRUED EXPENSES (services received, invoice not yet received):
     Example: $5,000 of legal services received in June; invoice expected in July
     DR  Legal Expense (6xxx)         $5,000
       CR  Accrued Expenses (2xxx)         $5,000
     Memo: "Accrue June legal services — Morrison & Foerster; invoice expected ~7/15"
     Supporting: Email from attorney confirming July billing; engagement letter
     Reversal: Set to auto-reverse on July 1; when the invoice arrives, post normally through AP
     
  2. PREPAID EXPENSE AMORTIZATION (insurance, subscriptions paid in advance):
     Example: $12,000 annual insurance premium paid January 1; monthly amortization = $1,000/month
     DR  Insurance Expense (6xxx)         $1,000
       CR  Prepaid Insurance (1xxx)            $1,000
     Memo: "June 2026 insurance amortization — [Policy #]; Schedule: $1,000/month × 12"
     Supporting: Prepaid amortization schedule (SharePoint/Finance/<Company>/Prepaids/)
     
  3. DEPRECIATION (fixed assets):
     Example: Medical equipment ($15,000 cost; 5-year life; straight-line; $250/month depreciation)
     DR  Depreciation Expense (6xxx)         $250
       CR  Accumulated Depreciation (1xxx)         $250
     Memo: "June 2026 depreciation — [Asset name]; Ref: fixed asset schedule"
     Supporting: Fixed asset schedule (fin-ops-fixed-asset-manager)
     Note: Run from the fixed asset schedule; do NOT manually calculate each period — use the schedule
     
  4. DEFERRED REVENUE (cash received before services delivered):
     Example: Column6 advertiser paid $30,000 upfront for a 3-month campaign (July-Sept)
     Initial entry (July 1 — cash received):
       DR  Cash (1xxx)                   $30,000
         CR  Deferred Revenue (2xxx)         $30,000
     Monthly recognition ($10,000/month as campaign runs):
       DR  Deferred Revenue (2xxx)       $10,000
         CR  Revenue (4xxx)                  $10,000
     Memo: "July 2026 campaign revenue recognition — [Advertiser]; IO #[N]; $10K of $30K total"
     Supporting: Insertion Order (IO); campaign delivery report confirming delivery
     
  5. ACCRUED REVENUE (services delivered; invoice not yet sent):
     Example: Allevio PMPM services provided in June; invoicing on July 1
     DR  Accrued Revenue / AR (1xxx)     $85,000   [PMPM × members]
       CR  Revenue (4xxx)                    $85,000
     Memo: "Accrue June PMPM revenue — [Employer Group]; 1,000 members × $85; invoice 7/1"
     Supporting: Roster count from the group; contract confirming rate
     Reversal: Auto-reverse July 1; replaced by the actual invoice when posted
     
  6. PAYROLL ACCRUAL (payroll earned but not yet paid):
     Example: June 16-30 payroll; paid July 3 (semi-monthly)
     DR  Salaries Expense (6xxx)         $[X]
     DR  Payroll Taxes Expense (6xxx)    $[X]
       CR  Accrued Salaries (2xxx)           $[X]
       CR  Accrued Payroll Taxes (2xxx)      $[X]
     Memo: "Accrue June 16-30 payroll — [N] employees; pay date 7/3"
     Supporting: Payroll register or payroll estimate
     
  7. RECLASSIFICATION (posted to wrong account):
     Example: $2,500 office supplies expensed to Repairs & Maintenance
     DR  Office Supplies Expense (6xxx)      $2,500
       CR  Repairs & Maintenance Expense (6xxx)  $2,500
     Memo: "Reclassify: Office supplies incorrectly posted to Repairs & Maintenance — Invoice #[N]; corrected per controller review"
     Supporting: Original invoice; screenshot of the misposted transaction
     
  8. CORRECTING ENTRY (amount or period error):
     Example: A $5,000 invoice posted as $500 (transposition error)
     Step 1 — Reverse the wrong entry:
       DR  AP (2xxx)                  $500
         CR  Expense (6xxx)              $500
     Step 2 — Record correctly:
       DR  Expense (6xxx)            $5,000
         CR  AP (2xxx)                   $5,000
     Memo: "Correct transposition error on Invoice #[N] — posted $500, should be $5,000; approved by Dr. Lewis"
     Supporting: Original invoice; QuickBooks screenshot of the error

JE documentation requirements:
  Every JE must have: (1) Clear memo describing WHAT, WHY, and the basis for the amount
  (2) Supporting document (invoice, contract, schedule, email) attached or referenced
  (3) Dr. Lewis review for JEs >$10,000 or any correcting/reclassification entries
  (4) Period: Posted to the correct accounting period (accrue in the period earned/incurred)
  
JE approval authorities:
  <$5,000: Controller can prepare and post with Dr. Lewis weekly review
  $5,000-$25,000: Dr. Lewis review and approval before posting
  >$25,000: Dr. Lewis prepares or reviews; CEO awareness for entries that materially affect the P&L
  Correcting/reclassification entries (any amount): Dr. Lewis review required
  Period-prior entries (posting to a closed period): Dr. Lewis approval; CEO for periods >2 months closed
```

## Output Format

```markdown
# Journal Entry — [Entity] [Period]
**JE Reference:** JE-[YYYY-MM]-[###] | **Type:** [Accrual / Prepaid / Depreciation / Correction / Reclassification]
**Prepared by:** [Controller / Dr. Lewis] | **Reviewed by:** Dr. Lewis | **Status:** ✅ Approved / ⚠️ Pending Review

---

## Entry

| Account | Account # | Description | Debit | Credit |
|---------|-----------|-------------|-------|--------|
| [Expense Account] | 6XXX | [Description] | $[X] | |
| [Accrued Liability] | 2XXX | [Description] | | $[X] |
| **Totals** | | | **$[X]** | **$[X]** |

**Balance check:** Debits = Credits ✅ / ❌ DOES NOT BALANCE — DO NOT POST

---

## Documentation

**Period:** [Month-Year] — posted to the correct period ✅
**Memo:** [Clear description: what happened, why this entry is needed, basis for the amount]
**Supporting:** [Invoice #N attached / Amortization schedule linked / Email from [person] confirming amount]
**Reversing entry:** [Auto-reversal set for [date] / No reversal needed / Manual reversal required]

---

## Approval

**Approval required:** [Controller self-post (<$5K) / Dr. Lewis review ($5K-$25K) / CEO awareness (>$25K)]
**Dr. Lewis approval:** ✅ [Date] [Time] — approved for posting
**Posting instruction:** Post to [QuickBooks / Sage Intacct] in period [Month-Year]
```

## Output Contract
- Every JE has a memo that explains WHY — the account code and amount tell you what was recorded; the memo tells you why the entry exists; a memo that says "Accrual" is not a memo — it's a label; a memo that says "Accrue June legal services per email from Morrison & Foerster on 6/28 confirming $5,000 billing for contract review — invoice expected 7/15; auto-reversal set" is a memo; Dr. Lewis and the controller can reconstruct every entry 12 months later from the memo and supporting document; auditors read memos; a weak memo creates an auditor question that requires human time to answer
- Debits equal credits — always — if a journal entry doesn't balance, it is wrong and cannot be posted; the accounting system (QuickBooks) will reject an unbalanced entry, but Dr. Lewis verifies the math before attempting to post; complex entries with 3+ lines have more opportunity for error; Dr. Lewis adds up the debit column and the credit column independently before posting any entry with more than 2 lines
- Accruals reverse — standard accruals (accrued expenses, accrued revenue) are set to auto-reverse in the subsequent period; this prevents double-counting when the actual invoice or payment arrives; Dr. Lewis confirms the reversal setting is active before posting any accrual; in QuickBooks, this is the "Set reversal date" checkbox in the journal entry; failing to set a reversal leads to a permanent overstatement that is often discovered only at audit
- HITL required: Controller prepares JEs; Dr. Lewis reviews all JEs >$5K, all correcting entries, and all reclassifications; CEO is made aware of entries >$25K that materially affect the P&L; period-prior entries (posting to a closed period) require Dr. Lewis approval; entries to a period closed more than 2 months ago require CEO approval; no JE is posted without completing the balance check (debits = credits) and confirming supporting documentation is attached

## System Dependencies
- **Reads from:** Source documents (invoices, contracts, schedules, emails); prior period GL for comparison; fixed asset schedule (fin-ops-fixed-asset-manager); prepaid amortization schedule; payroll register; deferred revenue schedule
- **Writes to:** QuickBooks journal entry (posted to GL); JE log (SharePoint/Finance/<Company>/JournalEntries/[Period]/); reversal scheduling; account reconciliation (feeds fin-ops-gl-reconciler); financial statements (feeds fin-ops-financial-statement-preparer)
- **HITL Required:** Controller prepares; Dr. Lewis reviews >$5K, all corrections/reclassifications; CEO aware of entries >$25K affecting P&L; period-prior postings require Dr. Lewis; all entries require supporting documentation before posting

## Test Cases
1. **Golden path:** Allevio June close — prepare 4 standard accrual entries → (1) Accrue legal services: $3,200 per attorney email — DR Legal Expense / CR Accrued Expenses; auto-reversal July 1; (2) Prepaid insurance amortization: $1,000/month per schedule — DR Insurance Expense / CR Prepaid Insurance; (3) Depreciation: $1,580/month per fixed asset schedule — DR Depreciation / CR Accumulated Depreciation (multiple lines per asset); (4) Accrue June 16-30 payroll: $48,200 gross; $3,680 employer taxes — DR Salaries/Payroll Taxes / CR Accrued Salaries/Accrued Payroll Taxes; total of 4 JEs prepared, each with memo and supporting; Dr. Lewis reviews each (all <$10K individually but aggregate material); approves all 4; posts to QuickBooks in period June 2026; close proceeds with correct accruals
2. **Edge case:** Column6 deferred revenue — advertiser paid $90,000 for a 6-month campaign (July-December) → Initial entry July 1: DR Cash $90,000 / CR Deferred Revenue $90,000; monthly recognition: each month, $15,000 is earned as the campaign runs; JE each month: DR Deferred Revenue $15,000 / CR Revenue $15,000; supporting: Insertion Order confirming the campaign schedule and $90K total; delivery report each month confirming the campaign ran; Dr. Lewis reviews the initial entry ($90K — CEO awareness for revenue recognition policy); monthly $15K recognition entries posted by controller; deferred revenue balance in QuickBooks reconciled monthly to the schedule ($90K initial − $15K/month × months elapsed = correct balance); at year-end, $90K will have fully recognized if campaign completed; any unused portion remains as deferred revenue (refundable liability)
3. **Adversarial:** The controller asks Dr. Lewis to approve a reclassification entry dated to March (a closed period — it's now June) → Dr. Lewis investigates: What was posted wrong in March? What is the impact of correcting it now vs. leaving it in the current period? If the March financial statements have been delivered to the CEO and Matt Mathison, restating March changes a document that was already relied upon; Dr. Lewis evaluates: Is the error material? If the error is $800 in a wrong expense category (but the total expenses were correct), Dr. Lewis may recommend posting the correction in June with a clear memo rather than reopening March; if the error is material (wrong period for revenue recognition, incorrect capitalization vs. expense), Dr. Lewis reopens March with CEO approval, posts the correction, and delivers an updated March financial statement to the CEO and Matt Mathison with a clear explanation; Dr. Lewis does not reopen prior periods without CEO approval and does not reopen periods more than 2 months closed without Matt Mathison awareness

## Audit Log
All journal entries retained with supporting documentation. JE log maintained by period. Dr. Lewis approval records retained. All reclassifications and corrections retained with root cause notes. Period-prior posting approvals retained. Reversal scheduling confirmed and documented.

## Deprecation
Retire when each portfolio company has a controller who prepares all standard journal entries independently — with Dr. Lewis reviewing entries >$5K, all corrections/reclassifications, and all period-prior postings.
