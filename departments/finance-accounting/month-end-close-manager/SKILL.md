---
name: month-end-close-manager
description: "Manage the monthly financial close process. Use when the user says 'month end close', 'monthly close', 'close the books', 'financial close', 'end of month accounting', 'close process', 'month-end checklist', 'close the month', 'accounting close', 'reconcile and close', or 'monthly close process'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-MM>] [--close-date <date>]"
---

# Month-End Close Manager

Manage the monthly financial close process — the structured sequence of accounting tasks that transforms raw transaction data into a complete, accurate set of financial statements for the period. A well-run close is not just accurate; it's fast. MBL portfolio companies should be completing their close within 5-7 business days of month end. A close that takes 15+ days is an operational problem that limits management's ability to respond to financial information in time to act on it.

## When to Use
- Beginning of each month — initiating the close process for the prior month
- Tracking close progress against the close calendar
- A portfolio company's close process is too slow or producing errors
- Building a close calendar for a new portfolio company
- Matt Mathison asks "are the books closed yet?" or "when will we have the numbers?"

## Close Standards

```
MBL Close Target: 5-7 business days after month end
(i.e., a January close should complete by ~Feb 9)

Close day categories:
  Day 1-2: Sub-ledger cutoff and transaction entry
  Day 2-3: Reconciliations (bank, AP, AR, payroll)
  Day 3-4: Accruals and journal entries
  Day 4-5: Financial statement preparation and first review
  Day 5-6: Management review and approval
  Day 6-7: Final sign-off and distribution

Common close killers:
  - Missing bank statements (bank isn't accessible yet)
  - Unresolved AP or AR items
  - Missing payroll tax entries
  - Unapproved journal entries
  - Inter-company transactions not reconciled
```

## Output Format

```markdown
# Month-End Close — <Company Name>
**Period:** <Month YYYY> | **Target close date:** <Date>
**Managed by:** Dr. John Lewis | **System:** QuickBooks

---

## Close Status Dashboard

| Phase | Tasks | Status | Owner | Target | Actual |
|-------|-------|--------|-------|--------|--------|
| 1. Transaction Cutoff | [N] tasks | 🟢 Complete / 🟡 In Progress / 🔴 Blocked | | Day 2 | |
| 2. Reconciliations | [N] tasks | | | Day 3 | |
| 3. Accruals & JEs | [N] tasks | | | Day 4 | |
| 4. Financial Statements | [N] tasks | | | Day 5 | |
| 5. Review & Sign-Off | [N] tasks | | | Day 7 | |

**Overall close status:** 🟢 On track / 🟡 At risk ([N] days behind) / 🔴 Blocked ([Issue])
**Estimated close date:** <Date>

---

## Phase 1: Transaction Cutoff (Business Days 1-2)

| Task | Description | Status | Owner | Notes |
|------|-------------|--------|-------|-------|
| AP transactions | All bills through [last day of month] entered in QuickBooks | ☐ / ✅ | | |
| AR transactions | All invoices through [last day of month] entered | ☐ / ✅ | | |
| Payroll posted | [Pay period] payroll posted with correct allocations | ☐ / ✅ | | |
| Credit card transactions | All credit card charges downloaded and categorized | ☐ / ✅ | | |
| Expense reports | All employee expense reports for the period entered | ☐ / ✅ | | |
| Revenue recognition | Revenue recognized per company policy for the period | ☐ / ✅ | | |
| Bank transactions | All bank transactions downloaded and matched | ☐ / ✅ | | |
| Cutoff memo | Confirmation that no prior-period transactions are included | ☐ / ✅ | | |

**Phase 1 blockers:** [List any items that are causing delays — be specific]

---

## Phase 2: Reconciliations (Business Days 2-3)

| Reconciliation | System | Status | Reconciling items | Owner | Notes |
|---------------|--------|--------|------------------|-------|-------|
| Bank — Operating account ([Last 4 digits]) | QuickBooks vs. bank statement | ☐ / ✅ | $[X] or None | | |
| Bank — Payroll account (if separate) | | ☐ / ✅ | | | |
| Credit card — [Card name] | QuickBooks vs. statement | ☐ / ✅ | | | |
| Accounts payable | AP subledger vs. GL | ☐ / ✅ | | | |
| Accounts receivable | AR subledger vs. GL | ☐ / ✅ | | | |
| Payroll liabilities | Payroll provider vs. QB | ☐ / ✅ | | | |
| [Loan / debt] | Statement vs. QB | ☐ / ✅ | | | |
| Intercompany (if applicable) | All entities balanced | ☐ / ✅ | | | |

**Reconciliation exceptions:** [List any reconciling items >$500 that have not been resolved — with explanation]

---

## Phase 3: Accruals and Journal Entries (Business Days 3-4)

| Journal Entry | Amount | Description | Status | Reviewed by |
|--------------|--------|-------------|--------|------------|
| Depreciation — [Month] | $[X] | Fixed asset depreciation for period | ☐ / ✅ | |
| Amortization | $[X] | [Intangible / loan cost amortization] | ☐ / ✅ | |
| Accrued payroll | $[X] | [X] days payroll earned but not yet paid | ☐ / ✅ | |
| Accrued PTO | $[X] | Estimated earned PTO liability | ☐ / ✅ | |
| Prepaid expense | ($[X]) | [Subscription / insurance] — amortize [X] months | ☐ / ✅ | |
| Accrued liabilities | $[X] | [Professional services / utilities not yet billed] | ☐ / ✅ | |
| Income tax provision | $[X] | Estimated quarterly tax provision | ☐ / ✅ | |
| [Other accrual] | $[X] | [Description] | ☐ / ✅ | |

**Journal entry total impact:** Revenue: $[±X] | Expenses: $[±X] | Net income: $[±X]

---

## Phase 4: Financial Statement Preparation (Business Day 4-5)

| Statement | Status | Reviewed by | Notes |
|---------|--------|------------|-------|
| Income Statement (P&L) | ☐ / ✅ | | |
| Balance Sheet | ☐ / ✅ | Balance check: ✅ / ❌ | |
| Cash Flow Statement | ☐ / ✅ | | |
| Budget vs. Actual (variance) | ☐ / ✅ | | |
| Prior month comparison | ☐ / ✅ | | |

---

## Phase 5: Review and Sign-Off (Business Days 5-7)

| Review step | Reviewer | Date | Status |
|------------|---------|------|--------|
| Controller / CPA review | [Name] | | ☐ / ✅ |
| Balance sheet balance confirmed | Dr. Lewis | | ☐ / ✅ |
| Revenue reconciliation confirmed | [Controller] | | ☐ / ✅ |
| Management review — Dr. Lewis | Dr. Lewis | | ☐ / ✅ |
| Matt Mathison sign-off (for board/LP months) | Matt Mathison | | ☐ / N/A |
| Final statements distributed | Dr. Lewis | | ☐ / ✅ |

---

## Close Summary (post-close)

**Close completed:** [Date] — [Day N of close calendar]
**vs. target:** [On target / [N] days late]
**Issues encountered:** [List close issues that delayed the process]
**Process improvements for next month:** [Specific changes to prevent recurrence]
```

## Output Contract
- Close date tracked against target every day — a close that slips without being tracked is a management failure; the close status dashboard must be reviewed daily during the close period; if the close will be late, Matt Mathison is notified proactively with the expected completion date and the reason for the delay
- All reconciliations must clear before financial statements are finalized — a balance sheet that includes unreconciled items is not a closed balance sheet; it is a draft; every reconciling item >$500 must be investigated and resolved or documented with a specific explanation before the close is complete
- Balance sheet must balance — this is a hard rule; a balance sheet that doesn't balance means there is an accounting error in the ledger; do not distribute financial statements until this is resolved
- Post-close process improvement note always required — every close that takes longer than the target or encounters issues should document what caused the delay and how the process will be improved for the next month; close process improvement is a continuous improvement exercise
- HITL required: Dr. Lewis manages the close process; CPA or controller reviews all journal entries and final statements; Matt Mathison signs off on months that are followed by board meetings or LP reporting; no financial statements distributed before management review is complete

## System Dependencies
- **Reads from:** QuickBooks (primary accounting system), bank statements, payroll reports, Bill.com (AP records), credit card statements, prior month financials
- **Writes to:** Closed financial statements (SharePoint/Finance/Monthly Statements/); close checklist documentation; variance analysis
- **HITL Required:** Dr. Lewis manages; CPA reviews JEs and statements; Matt Mathison approves for board/LP months; no distribution without management sign-off

## Test Cases
1. **Golden path:** Allevio July 2026 close → Day 1: all AP/AR entered, payroll posted; Day 2: bank rec complete (1 reconciling item — $340 in-transit ACH, resolved Day 3); AR rec complete (no exceptions); Day 3: accruals posted (depreciation $2,100, accrued payroll $8,400, prepaid software $1,200); Day 4: three-statement financials prepared — balance sheet balanced; revenue $342K, EBITDA $57K; Day 5: CPA reviewed — one journal entry correction (depreciation formula — corrected and reposted); Day 6: Dr. Lewis review complete, Matt Mathison signed off (board meeting next week); Close complete: Day 6 of close calendar (one day ahead of 7-day target); improvement note: "AP cutoff was delayed by one vendor invoice received after the 5th — establish cutoff rule: all invoices received after the 5th of the month post to the following period"
2. **Edge case:** A bank reconciliation shows a $4,200 difference that can't be resolved by the Day 3 target → do not close with an unresolved reconciling item of this size; escalate immediately: "Bank rec for [account] shows a $4,200 unreconciled variance. Investigating. Possible causes: [uncleared ACH / NSF check / bank error / duplicate entry in QB]. Target resolution: Day 4. Will update close timeline." If the item takes until Day 5 to resolve, the close shifts to Day 9 — communicate proactively to Matt Mathison; never close with a material unreconciled bank variance
3. **Adversarial:** A portfolio company controller wants to close quickly and leave a $1,200 AP invoice in the following month to "keep the close clean" → this is period misstatement (AP cutoff manipulation); the invoice belongs in the period in which the expense was incurred (accrual basis) or received (cash basis); depending on the company's accounting policy, either accrue the expense or post it with the correct date; "keeping the close clean" by misallocating expenses across periods is a GAAP violation; flag to the CPA; if the controller resists, escalate to Matt Mathison

## Audit Log
Monthly close checklists retained by period. All journal entries retained in QuickBooks with approval documentation. Reconciliation workpapers retained for 7 years. Late close incidents and resolution documented. CPA review sign-offs retained.

## Deprecation
Retire when portfolio companies have dedicated accounting teams with automated close workflows (e.g., FloQast, Numeric, or similar close management software) and the close process runs independently of Dr. Lewis's involvement.
