---
name: fin-quickbooks-reviewer
description: "Review and maintain QuickBooks health for MBL Partners and portfolio companies. Use when the user says 'QuickBooks review', 'QuickBooks health check', 'QuickBooks audit', 'review the books', 'books review', 'clean up QuickBooks', 'QuickBooks reconciliation', 'QB review', 'QB audit', 'QB health', 'QuickBooks issues', 'QuickBooks errors', 'chart of accounts', 'GL review', 'general ledger review', 'uncleared transactions', 'uncategorized expenses', 'uncategorized transactions', 'QuickBooks cleanup', 'bank feeds', 'bank feed review', 'open invoices', 'old invoices', 'stale invoices', 'QuickBooks balance sheet', 'balance sheet review', 'review the GL', 'reconcile QuickBooks', 'QuickBooks journal entry review', or 'bookkeeping quality'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--action <review|cleanup|reconcile|audit|check>] [--focus <chart-of-accounts|bank-feeds|ar|ap|balance-sheet|journal-entries>] [--period <monthly|quarterly|annual>]"
---

# Fin QuickBooks Reviewer

Review and maintain QuickBooks health for MBL Partners and portfolio companies — ensuring that the books of record are accurate, properly organized, consistently coded, and free of the common errors that accumulate over time and distort financial reporting. QuickBooks is the financial system of record for all MBL entities; the quality of every financial report, every variance analysis, every board report, and every audit starts here. A QuickBooks file with systemic errors produces financial reports that appear precise but are wrong; a well-maintained QuickBooks file produces financial reports that can be trusted and acted upon.

## When to Use
- Monthly health check (after the close; verify no new issues)
- Quarterly deep review (more thorough; catch issues that accumulate slowly)
- After a new entity is acquired and QuickBooks needs to be assessed or restructured
- When financial reports don't look right and the source data needs investigation
- Annual audit preparation (QuickBooks must be audit-ready)

## QuickBooks Review Framework

```
MONTHLY HEALTH CHECK (30-45 minutes):

  CHART OF ACCOUNTS:
    □ No new accounts created without Dr. Lewis approval
    □ No duplicate accounts (e.g., "Office Supplies" and "Office Expense" — should be one)
    □ Account naming follows the MBL standard (consistent across all entities)
    □ Inactive accounts marked as inactive (not cluttering the active list)
    
  BANK FEEDS:
    □ All bank feeds connected and current (no disconnected feeds)
    □ All downloaded transactions categorized (no "Ask My Accountant" transactions)
    □ Uncategorized transactions: 0 goal; flag any >$100 that are uncategorized
    □ Split transactions reviewed: splits to multiple accounts must have documentation
    □ Matched transactions: all bank feed matches are legitimate (not forced matches)
    
  ACCOUNTS RECEIVABLE:
    □ Open invoices list reviewed: any invoice >90 days past due still open? (Fin-AR-manager)
    □ Credit memos: any credit memos that should be applied to an invoice?
    □ Customer deposits: any deposits held longer than 60 days without delivery/invoicing?
    □ Unapplied payments: any payments received that are not applied to an invoice?
    
  ACCOUNTS PAYABLE:
    □ Bill aging: any bills >60 days past due still open? (fin-ap-manager)
    □ Vendor credits: any vendor credits unapplied?
    □ Duplicate bills: run the duplicate transaction report monthly
    
  BALANCE SHEET REASONABLENESS:
    □ Cash: does the cash balance match the bank reconciliation? (to the penny)
    □ AR: does AR aging balance match the A/R balance on the balance sheet?
    □ AP: does AP aging balance match the A/P balance on the balance sheet?
    □ Fixed assets: is the fixed asset balance changing by the expected additions and depreciation?
    □ Equity: does equity roll forward correctly? (Prior equity + net income)
    □ Negative balances: any accounts with unexpected negative balances? (Liabilities don't go negative; assets shouldn't be negative without clear reason)
    
  JOURNAL ENTRIES:
    □ All journal entries for the month have attached documentation
    □ No adjusting journal entries from unknown users
    □ Large journal entries (>$10K) reviewed individually
    □ Automated entries (depreciation; payroll) match expected amounts

QUARTERLY DEEP REVIEW (additional to monthly):

  PAYROLL RECONCILIATION:
    □ YTD payroll expense in QuickBooks = payroll register total (matches within $0)
    □ Payroll tax liabilities: QuickBooks liability balance = taxes due to IRS/state
    □ Employee advances: any outstanding employee advances should be resolved within 60 days
    
  INTERCOMPANY TRANSACTIONS:
    □ All MBL ↔ entity transactions recorded consistently on both sides
    □ Management fee charges from MBL to entities recorded and reconciled
    □ Capital injections from MBL recorded as equity contributions (not revenue) at entity level
    □ Intercompany eliminations prepared for portfolio consolidation (fin-entity-consolidation)
    
  INVENTORY (if applicable — HIVE operations supplies):
    □ Inventory count matches QuickBooks balance
    □ No obsolete inventory on the books (write down if value impaired)
    
  TAX ACCOUNTS:
    □ Sales tax payable: any collected sales tax not yet remitted?
    □ Payroll tax payable: does the QuickBooks liability match the payroll tax deposits?
    □ 1099 vendor tracking: are all vendors requiring 1099s flagged in QuickBooks?

COMMON QUICKBOOKS ISSUES (red flags):

    🔴 Negative retained earnings in a profitable entity (equity structure problem)
    🔴 Large "Uncategorized Income" or "Uncategorized Expense" balances
    🔴 Journal entries with no description or documentation
    🔴 Cash balance that doesn't reconcile to any bank statement
    🔴 AR balance growing faster than revenue (collections problem or revenue recognition error)
    🔴 Duplicate transactions (QuickBooks duplication is common when importing bank feeds)
    🔴 Voided checks that don't have corresponding documentation
```

## Output Format

```markdown
# QuickBooks Health Review — [Entity] — [Month/Quarter Year]
**Reviewed by:** Dr. Lewis | **Review date:** [Date] | **Period covered:** [Date range]

---

## Health Summary

| Area | Status | Issues found | Action required |
|------|--------|-------------|----------------|
| Chart of accounts | 🟢/🟡/🔴 | [N] issues | [Action] |
| Bank feeds | 🟢/🟡/🔴 | [N] uncategorized | [Action] |
| Accounts receivable | 🟢/🟡/🔴 | [N] issues | [Action] |
| Accounts payable | 🟢/🟡/🔴 | [N] issues | [Action] |
| Balance sheet | 🟢/🟡/🔴 | [N] issues | [Action] |
| Journal entries | 🟢/🟡/🔴 | [N] issues | [Action] |

**Overall QB health:** 🟢 Clean / 🟡 Minor issues / 🔴 Requires attention

---

## Issues Requiring Resolution

| # | Issue | Account/Area | Amount | Priority | Owner | Due |
|---|-------|-------------|--------|---------|-------|-----|
| 1 | [Issue] | [Account] | $[X] | HIGH/MED/LOW | [Owner] | [Date] |

---

## Resolved Issues (from prior review)

| Issue | Resolved date | How |
|-------|--------------|-----|
| [Prior issue] | [Date] | [Resolution] |
```

## Output Contract
- Chart of accounts is the foundation — every financial report in QuickBooks is only as good as the chart of accounts it draws from; a chart of accounts with 200 accounts (when 60 would suffice), duplicate accounts, and inconsistent naming produces financial reports that cannot be compared across entities or across periods; Dr. Lewis reviews and approves any new account creation and quarterly reviews the chart for cleanup opportunities; MBL entities share a common chart of accounts structure (with entity-specific additions) so that portfolio-level reporting is consistent
- Uncategorized transactions are zero-tolerance — an "Uncategorized Income" or "Uncategorized Expense" balance tells the reader that the bookkeeper ran out of time or didn't know what account to use; it means the financial statements are wrong by exactly that amount; Dr. Lewis has a zero-tolerance policy on uncategorized transactions exceeding $100 in the monthly health check; every transaction gets coded or investigated before the books are closed
- Journal entries require documentation — an undocumented journal entry in QuickBooks is either an error or a misrepresentation waiting to be discovered; every journal entry must have: (1) a description that tells a reader what this is and why it was posted; (2) attached supporting documentation (invoice; email; calculation); (3) the initials or name of the person who posted it; journal entries without documentation are flagged immediately and investigated
- HITL required: new accounts in the chart of accounts require Dr. Lewis approval; journal entries >$10K require Dr. Lewis review and approval before posting; QuickBooks access credentials are provisioned by Dr. Lewis (no self-provisioning); quarterly deep review is Dr. Lewis sign-off; any red flag issue (negative retained earnings; large undocumented JE; duplicate transaction pattern) is escalated to Matt Mathison if not resolved within 48 hours; annual audit access for external auditors is provisioned by Dr. Lewis (read-only)

## System Dependencies
- **Reads from:** QuickBooks (primary; all entities — the system being reviewed); Bank statements (for reconciliation verification); Bill.com (AP comparison to QuickBooks AP); Payroll provider (payroll comparison to QuickBooks payroll expense); Allevio: AdvancedMD (AR comparison)
- **Writes to:** QuickBooks health review reports (SharePoint → Finance → QBReviews → [Entity] → [YYYY]-[MM]); exec-cfo-oversight (QB health feeds into monthly financial controls review); fin-audit-readiness (QB health is the foundation of audit readiness); fin-internal-controls (QB control weaknesses feed into the internal controls improvement plan); exec-action-tracker (QB issues requiring resolution)
- **HITL Required:** New accounts require Dr. Lewis approval; journal entries >$10K require Dr. Lewis review; red flag issues escalated within 48 hours; external auditor access provisioned by Dr. Lewis; quarterly sign-off by Dr. Lewis; annual cleanup before audit is Dr. Lewis-led

## Test Cases
1. **Golden path:** Monthly QB health check for Column6; bank feeds: all 3 accounts connected and current; 0 uncategorized transactions; AR: 4 open invoices all within 60 days (within terms; consistent with AR aging); AP: 6 open bills; 1 is 45 days (within payment terms); no duplicates; balance sheet: cash balance matches bank rec to the penny; AR balance matches AR aging; AP balance matches AP aging; equity roll-forward is correct; journal entries: 3 this month (payroll accrual; depreciation; deferred revenue adjustment) — all documented. Overall: 🟢 Clean. No action required.
2. **Edge case:** Quarterly deep review discovers that HIVE has 14 uncategorized bank feed transactions totaling $23,400 from the prior 3 months → Dr. Lewis: "I've identified 14 uncategorized transactions totaling $23,400 in the HIVE QuickBooks from the past 3 months. These need to be resolved before the Q3 audit prep begins. I'm pulling the bank statements for each transaction to categorize based on the payee and amount. I'll have a proposed categorization for each one by Friday. For any that require entity-specific knowledge (operational expenses with no obvious payee), I'll need 30 minutes with the HIVE Controller to work through them. This shouldn't have been left for 3 months — going forward, the monthly health check will flag any uncategorized transaction >$100 within 30 days." 14 transactions categorized within 3 days.
3. **Adversarial:** Bookkeeper argues that "some of those journal entries don't need documentation because they're obvious" → Dr. Lewis: "I hear you — some journal entries are indeed obvious (monthly depreciation; payroll entry that matches the payroll register exactly). For those, I'll accept a standard description in the memo field with a reference to the supporting schedule. What I can't accept is a journal entry with no memo and no documentation, even if the bookkeeper knows what it is. Here's why: the auditor doesn't know what the bookkeeper knows; Matt Mathison doesn't know what the bookkeeper knows; and 18 months from now, even the bookkeeper may not remember. The documentation rule is: if someone else can't look at this entry and understand what it is and why it was posted, it needs more documentation. That's the standard. Let's go through the flagged entries and I'll tell you for each one what level of documentation is sufficient."

## Audit Log
All QuickBooks health review reports retained. Issue tracking (found; resolution; date; owner). Journal entry review records. Chart of accounts change history (new accounts; deletions; modifications). Access provisioning records. Annual audit cleanup records.

## Deprecation
Retire when each entity has a Controller who performs the QuickBooks health review — with Dr. Lewis conducting the quarterly deep review and Matt Mathison receiving the annual audit readiness assessment.
