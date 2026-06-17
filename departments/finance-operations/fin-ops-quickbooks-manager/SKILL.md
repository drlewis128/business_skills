---
name: fin-ops-quickbooks-manager
description: "Manage QuickBooks setup, chart of accounts, and integration health. Use when the user says 'QuickBooks', 'QBO', 'QuickBooks setup', 'chart of accounts', 'QuickBooks integration', 'QB setup', 'QuickBooks issue', 'QuickBooks error', 'QuickBooks user access', 'QuickBooks classes', 'QuickBooks locations', 'QuickBooks bank feed', 'QB bank connection', 'chart of accounts cleanup', 'QuickBooks cleanup', 'fix QuickBooks', 'QuickBooks configuration', 'set up QuickBooks', or 'QuickBooks accounts'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <setup|review|cleanup|integration>] [--module <coa|users|reports|banking>]"
---

# QuickBooks Manager

Set up, maintain, and optimize QuickBooks Online for MBL portfolio companies — establishing the chart of accounts, configuring user access, managing bank integrations, and ensuring QuickBooks is a reliable system of record for each entity. QuickBooks is the financial backbone of every portfolio company: it holds the P&L, balance sheet, cash position, AR, and AP; if QuickBooks is misconfigured (wrong chart of accounts, incorrect user permissions, broken bank feed), the financial statements are unreliable and the close process breaks down. Dr. Lewis designs each company's QuickBooks instance to match the reporting needs and entity type.

## When to Use
- New company setup in QuickBooks (acquisition Day 1)
- Chart of accounts review and cleanup
- User access review — who has what permissions?
- Bank feed connection is broken or has gaps
- Bill.com or payroll system integration needs configuration
- Preparing QuickBooks for CPA review or audit
- A financial statement is producing unexpected results — QuickBooks configuration is the likely cause

## QuickBooks Configuration Framework

```
QuickBooks Online (QBO) company setup:

  COMPANY SETTINGS:
    Company name: Legal entity name (e.g., "Allevio Health MSO, LLC")
    Fiscal year start: January (standard)
    Industry: Healthcare / Oil & Gas / Advertising — affects default chart of accounts suggestion
    Tax form: Form 1120 (C-Corp) / 1120-S (S-Corp) / 1065 (Partnership/LLC) / Schedule C
    Accounting method: Accrual (required for PE portfolio companies; cash basis for tax if applicable)
    
  USER ACCESS (QBO user roles — principle of least privilege):
    Company Admin (Dr. Lewis): Full access — settings, users, reports, chart of accounts
    Standard + Payroll Admin (Controller): Full access except company settings and user management
    Reports only (CEO): P&L, Balance Sheet, Dashboard — view only
    Time Tracking only (Hourly employees): Enter time only
    Accountant access: CPA gets time-limited Accountant user access during audit/review
    
    Critical: Confirm who has Company Admin access — only Dr. Lewis and the controller
    Do NOT give the bookkeeper Company Admin — they can change chart of accounts and user permissions
    
CHART OF ACCOUNTS — Standard PE Portfolio Template:

  INCOME (4xxx):
    4000 Patient Services Revenue (Allevio)
    4010 Payer Reimbursements — Medicare/Medicaid (Allevio)
    4020 Payer Reimbursements — Private Insurance (Allevio)
    4030 Direct Pay Revenue (Allevio)
    4040 Employer Group PMPM Revenue (Allevio)
    4100 Oil & Gas Revenue (HIVE)
    4200 Advertising Revenue (Column6)
    4900 Other Income
    
  COST OF REVENUE (5xxx) [COGS]:
    5000 Provider Compensation (Allevio clinical staff)
    5010 Medical Supplies (Allevio)
    5020 Billing Services — Marshall Medical Billing (Allevio)
    5100 Oil & Gas LOE — Lease Operating Expense (HIVE)
    5110 Production Taxes and Royalties (HIVE)
    5200 Traffic Acquisition Cost — TAC (Column6)
    5210 Ad Platform Fees (Column6)
    
  OPERATING EXPENSES (6xxx):
    6000 Salaries — Administrative
    6010 Payroll Taxes — Employer
    6020 Employee Benefits
    6100 Rent and Occupancy
    6110 Utilities
    6200 Software/SaaS Subscriptions
    6210 IT and Technology
    6300 Insurance — General Liability
    6310 Insurance — Professional Liability / Malpractice
    6400 Professional Fees — Legal
    6410 Professional Fees — Accounting/CPA
    6420 Consulting Fees
    6500 Marketing and Advertising
    6600 Travel and Entertainment
    6700 Office Supplies
    6800 Repairs and Maintenance
    6900 Bank Charges and Fees
    6950 Miscellaneous Expense
    6999 Depreciation Expense
    
  ASSETS (1xxx):
    1000 Checking Account — Operating
    1010 Checking Account — Payroll
    1020 Savings / Reserve Account
    1100 Accounts Receivable
    1110 Allowance for Doubtful Accounts
    1200 Prepaid Expenses
    1300 Fixed Assets (gross)
    1310 Accumulated Depreciation
    
  LIABILITIES (2xxx):
    2000 Accounts Payable
    2100 Accrued Liabilities
    2200 Payroll Taxes Payable
    2300 Deferred Revenue
    2400 Notes Payable — Short Term
    2500 Notes Payable — Long Term
    
  EQUITY (3xxx):
    3000 Owner's Equity / Member Capital
    3100 Retained Earnings
    3200 Distributions
    
  CLASSES (for multi-location or department tracking):
    Allevio: Scottsdale Clinic | Tucson Clinic | Admin/G&A
    HIVE: Well 1 | Well 2 | Field Operations | G&A
    Column6: Direct Response | Brand | G&A
    
BANK FEED CONFIGURATION:
    Connect bank account: Settings → Reconciliation → Connect Account
    Auto-categorization rules: Create rules for recurring vendors
      "ADVANCEDMD" → Code to 5020 Billing Services / 6200 Software/SaaS
      "PAYROLL GUSTO" → Code to payroll GL accounts
    Review: Bank feed suggestions before accepting — do not accept all auto-categorizations
    Orphaned bank feed: If bank feed goes stale (>30 days) → reconnect immediately; gap will require manual import
    
BILL.COM INTEGRATION:
    Connect Bill.com: Settings → Apps → Bill.com sync
    Sync direction: Bill.com → QuickBooks (Bill.com is the source of truth for AP workflow)
    Vendor sync: Vendors in QuickBooks should match Bill.com vendor master
    Payment sync: Bill.com payments auto-sync to QuickBooks as bill payments
    Confirm sync daily: No duplicate entries; no orphaned payments
```

## Output Format

```markdown
# QuickBooks Configuration Review — [Entity]
**Date:** [Date] | **QBO version:** [Essentials/Plus/Advanced]
**Company Admin:** Dr. Lewis | **Controller:** [Name]

---

## Company Settings

| Setting | Current | Recommended | Status |
|---------|---------|-------------|--------|
| Accounting method | [Cash/Accrual] | Accrual | ✅/❌ |
| Fiscal year start | [Month] | January | ✅/❌ |
| Tax form | [1120/1120-S/1065] | [Per entity] | ✅/❌ |
| Multi-currency | [On/Off] | Off (domestic) | ✅/❌ |

---

## User Access Review

| User | Role | Access level | Status |
|------|------|-------------|--------|
| Dr. Lewis | Company Admin | Full | ✅ |
| [Controller] | Standard + Payroll | Transactions + Payroll | ✅ |
| [CEO] | Reports Only | View only | ✅/❌ |
| [Unknown user] | Company Admin | Full | ❌ — REMOVE |

---

## Chart of Accounts Health

| Issue | Account | Action |
|-------|---------|--------|
| Duplicate accounts | "Rent" and "Rent Expense" | Merge into 6100 Rent and Occupancy |
| Uncategorized | $[X] in Uncategorized Expense | Review and recode |
| Missing accounts | No malpractice insurance account | Add 6310 Insurance — Professional Liability |

---

## Bank Feed Status

| Account | Status | Last sync | Outstanding items |
|---------|--------|---------|-----------------|
| Operating — [Bank] | ✅ Connected | [Date] | [N] transactions to review |
| Payroll — [Bank] | ✅ Connected | [Date] | 0 outstanding |
| [Account] | ❌ Disconnected — reconnect required | [Date] | [N] days gap |

---

## Integration Status

| Integration | Status | Last sync | Issues |
|------------|--------|---------|--------|
| Bill.com | ✅ Connected | [Date] | None |
| Payroll (Gusto/ADP) | ✅ Connected | [Date] | None |
| [Other] | ❌ Not connected | — | [Issue] |

---

## Remediation Action Plan

| Issue | Priority | Action | Owner | Deadline |
|-------|----------|--------|-------|---------|
| Unknown Company Admin user | HIGH | Remove immediately | Dr. Lewis | Today |
| Uncategorized Expense — $[X]K | MEDIUM | Review and recode | Controller | Next close |
| Bank feed disconnected | HIGH | Reconnect; import gap | Controller | 48 hours |
```

## Output Contract
- Company Admin access is restricted to Dr. Lewis and one controller, no exceptions — Company Admin in QBO can change the chart of accounts, add/remove users, connect/disconnect bank accounts, and modify company settings; giving this access to anyone without a need for it is a control gap; Dr. Lewis reviews the user list quarterly and removes any user with Company Admin access who shouldn't have it; departing controllers must have their QBO access removed on the day they leave — not "eventually"
- Accrual basis accounting is required for PE portfolio companies — cash basis accounting shows cash transactions only; accrual accounting shows when revenue is earned and when expenses are incurred, regardless of cash timing; PE valuation and LP reporting are based on accrual EBITDA; a company reporting on cash basis may show wildly different results from month to month based on payment timing rather than operational performance; Dr. Lewis ensures every portfolio company is on accrual basis in QBO; if the company was on cash basis before acquisition, converting to accrual is a Day 1 priority
- Uncategorized transactions are a month-end blocker — QBO will put transactions it can't match into "Uncategorized Expense" or "Uncategorized Asset"; these transactions are in the financial statements but coded incorrectly; Dr. Lewis requires the controller to clear all uncategorized transactions before the financial close; a month-end close with $15,000 in uncategorized expense is not a valid close; bank feed auto-categorization rules should eliminate most uncategorized entries for recurring vendors
- HITL required: Dr. Lewis designs and reviews the QBO configuration; Dr. Lewis approves all user access changes; controller manages day-to-day transaction coding; Dr. Lewis reviews and clears any uncategorized transactions before close; departing employee QBO access removal must happen on departure date

## System Dependencies
- **Reads from:** QBO company settings (QuickBooks Online admin), Bill.com (for sync configuration), payroll provider system (for payroll integration), bank portal (for bank feed connection)
- **Writes to:** QuickBooks (chart of accounts, user permissions, company settings, bank feed rules, integration configurations); controller process documentation (SharePoint/Finance/<Company>/QuickBooks/Configuration/)
- **HITL Required:** Dr. Lewis approves all QBO configuration changes; Dr. Lewis manages user access; departing employee access removal is Dr. Lewis responsibility on day of departure

## Test Cases
1. **Golden path:** New portfolio company QBO setup → Dr. Lewis creates new QBO company with correct legal entity name, accrual basis, January fiscal year, correct tax form; creates chart of accounts using the template above with entity-specific customizations (Allevio healthcare accounts added; O&G and ad accounts not added); creates users: Dr. Lewis as Company Admin; controller as Standard + Payroll; CEO as Reports Only; connects operating and payroll bank accounts via bank feed; configures Bill.com integration; creates bank feed auto-categorization rules for top 10 recurring vendors; runs a test entry to confirm journal entry flows from Bill.com to QuickBooks correctly; configuration complete; documented; controller briefed on the chart of accounts structure and coding expectations
2. **Edge case:** Bank feed shows a 45-day gap — the bank connection dropped and nobody noticed → Controller discovers during close prep that the operating account bank feed has no new transactions since April 12 (today is May 28); Dr. Lewis reconnects the bank feed; bank feed only auto-imports back 90 days; manually downloads the April 12 - May 28 bank statement from the bank portal; imports the missing transactions using QuickBooks import function (or manually enters if volume is low); matches each transaction to existing QuickBooks entries (payroll, vendor payments, AR receipts already entered); after the import, reconciles the bank account from April 12 forward; the gap is closed; process improvement: set up QBO email alert for bank feed disconnection so it is caught within 24 hours
3. **Adversarial:** A departing controller says "I need to keep my QBO access for another 2 weeks to finish some projects" → Access is removed on the departure date, not 2 weeks later; Dr. Lewis explains: "I'll make sure the transition plan is documented and the new controller or I can complete any pending work. Your access needs to be removed today per our controls policy." If there are genuinely incomplete items, Dr. Lewis or the interim controller completes them; the departing controller's access is removed the day they leave; if they have knowledge needed for the transition, that knowledge is transferred verbally or through documentation, not through continued system access; Dr. Lewis documents the access removal in the controls log

## Audit Log
All QBO configuration changes retained. User access changes retained with dates. Departing employee access removal confirmation retained. Chart of accounts change history retained. Bank feed reconnection events retained. Integration configuration changes retained.

## Deprecation
Retire when each portfolio company has a controller who owns the QBO configuration — with Dr. Lewis as Company Admin, conducting quarterly access reviews and approving all configuration changes.
