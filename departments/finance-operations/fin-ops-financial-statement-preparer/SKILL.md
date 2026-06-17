---
name: fin-ops-financial-statement-preparer
description: "Prepare monthly financial statements — P&L, balance sheet, and cash flow statement. Use when the user says 'financial statements', 'P&L', 'profit and loss', 'income statement', 'balance sheet', 'cash flow statement', 'monthly financials', 'monthly statements', 'prepare financials', 'financial package', 'monthly package', 'management accounts', 'financial reporting', 'close package', 'month-end financials', 'board package financials', 'investor financials', 'prepare the P&L', or 'prepare the balance sheet'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-MM>] [--audience <ceo|board|lp|bank>] [--format <summary|full>]"
---

# Financial Statement Preparer

Prepare monthly financial statements for MBL portfolio companies — P&L, balance sheet, and statement of cash flows, formatted for the appropriate audience (CEO, board, LP, bank). Financial statements are the scorecard of the business: they tell Matt Mathison and the CEO whether the company is growing profitably, generating cash, and building equity value. At PE portfolio companies, the quality of the financial statements is also a signal of management capability — investors and buyers evaluate how well the management team understands and communicates financial performance. Dr. Lewis prepares financial statements that are accurate, clear, and actionable.

## When to Use
- Month-end close — preparing the monthly CEO financial package (by BD7)
- Board or LP meeting preparation — financial package for investors
- Bank covenant compliance — financial statements for the bank
- Due diligence — buyer or investor requests historical financials
- Matt Mathison requests a financial update

## Financial Statement Framework

```
Three financial statements — why each matters:

  1. INCOME STATEMENT (P&L):
     What it shows: Revenue, cost of goods sold (COGS), gross profit, operating expenses, EBITDA, and net income for the period
     Why it matters: Shows profitability; whether the business is earning money on its core operations
     
  2. BALANCE SHEET:
     What it shows: Assets (what the company owns), liabilities (what it owes), and equity (the net value) as of a point in time
     Why it matters: Shows the financial health and liquidity of the business; required for covenant compliance; shows equity value growth over time
     
  3. STATEMENT OF CASH FLOWS:
     What it shows: How cash moved through the business — operating, investing, and financing activities
     Why it matters: EBITDA doesn't equal cash; the cash flow statement reconciles net income to actual cash change; shows whether the business generates real cash or just accounting profit

P&L structure for MBL portfolio companies:

  REVENUE:
    [Segment 1]: [Allevio: PMPM fees by employer group | HIVE: Production revenue | Column6: Campaign revenue by format]
    [Segment 2]: [Allevio: FFS/service revenue | HIVE: LOE reimbursements | Column6: Managed service fees]
  Total Revenue
  
  COST OF GOODS SOLD (COGS / Cost of Revenue):
    Direct costs of delivering the service
    [Allevio: Clinician compensation (employed or contracted) | HIVE: LOE costs | Column6: Media buy costs, platform fees]
  Gross Profit = Revenue − COGS
  Gross Margin % = Gross Profit ÷ Revenue
  
  OPERATING EXPENSES:
    Salaries & Benefits (G&A and management)
    Marketing & Advertising
    Technology & Software
    Office & Facilities
    Professional Services (legal, accounting, consulting)
    Other Operating
  Total Operating Expenses
  
  EBITDA = Gross Profit − Operating Expenses
  (Earnings Before Interest, Taxes, Depreciation, Amortization)
  
  Depreciation & Amortization
  Interest Expense (if any debt)
  
  Operating Income / EBIT
  
  Income Tax Provision
  
  Net Income

Balance sheet structure:

  ASSETS:
    Current Assets:
      Cash and Cash Equivalents
      Accounts Receivable (net of allowance for bad debt)
      Prepaid Expenses
      Other Current Assets
    Total Current Assets
    
    Non-Current Assets:
      Fixed Assets (Property, Plant & Equipment)
      Less: Accumulated Depreciation
      Net Fixed Assets
      Intangible Assets (if any)
      Other Non-Current Assets
    Total Non-Current Assets
    
  TOTAL ASSETS
  
  LIABILITIES:
    Current Liabilities:
      Accounts Payable
      Accrued Expenses
      Deferred Revenue
      Current Portion of Long-Term Debt
      Other Current Liabilities
    Total Current Liabilities
    
    Non-Current Liabilities:
      Long-Term Debt (net of current portion)
      Other Non-Current Liabilities
    Total Non-Current Liabilities
    
  TOTAL LIABILITIES
  
  EQUITY:
    Contributed Capital (equity invested by owners)
    Retained Earnings (accumulated net income)
    Current Period Net Income
  TOTAL EQUITY
  
  CHECK: Total Assets = Total Liabilities + Total Equity (ALWAYS)

Cash flow statement (indirect method):

  OPERATING ACTIVITIES:
    Net Income [from P&L]
    Adjustments to reconcile to cash:
      + Depreciation & Amortization [non-cash, add back]
      +/− Changes in Working Capital:
        [Increase in AR = use of cash (−)]
        [Decrease in AR = source of cash (+)]
        [Increase in Prepaid = use of cash (−)]
        [Increase in AP = source of cash (+)]
        [Increase in Accrued Expenses = source of cash (+)]
        [Increase in Deferred Revenue = source of cash (+)]
    Net Cash from Operating Activities
    
  INVESTING ACTIVITIES:
    [Capital expenditures (equipment, leasehold) = use of cash (−)]
    [Proceeds from asset sales = source of cash (+)]
    Net Cash from Investing Activities
    
  FINANCING ACTIVITIES:
    [LOC draws = source of cash (+)]
    [LOC repayments = use of cash (−)]
    [Owner distributions = use of cash (−)]
    Net Cash from Financing Activities
    
  Net Change in Cash = Operating + Investing + Financing
  Beginning Cash Balance [prior month ending balance]
  Ending Cash Balance [must match bank reconciliation!]

Audience formatting:

  CEO PACKAGE (monthly): Full P&L with prior month and budget comparison; balance sheet; cash balance and 13-week outlook; top 3 KPIs (EBITDA, DSO, cash)
  BOARD PACKAGE: CEO package + cash flow statement + portfolio-level summary + YTD vs. budget
  LP REPORT: Quarterly; EBITDA; equity value update; distributions declared; any material events; Dr. Lewis and Matt Mathison review before delivery — never automated
  BANK (covenant compliance): P&L, balance sheet, covenant calculations — delivered per bank agreement (monthly or quarterly)
```

## Output Format

```markdown
# Financial Statement Package — [Entity] [Month YYYY]
**Prepared by:** Dr. Lewis | **Reviewed:** ✅ | **Delivered to:** CEO on BD[N]
**Period:** [Month 1] to [Month end]

---

## Income Statement (P&L)

| | [Current Month] | Prior Month | Budget | YTD Actual | YTD Budget |
|--|----------------|------------|--------|-----------|-----------|
| **Revenue** | | | | | |
| [Revenue line 1] | $[X] | $[X] | $[X] | $[X] | $[X] |
| [Revenue line 2] | $[X] | $[X] | $[X] | $[X] | $[X] |
| **Total Revenue** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** |
| | | | | | |
| **COGS** | $[X] | $[X] | $[X] | $[X] | $[X] |
| **Gross Profit** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** |
| **Gross Margin** | **[X]%** | [X]% | [X]% | [X]% | [X]% |
| | | | | | |
| **Operating Expenses** | $[X] | $[X] | $[X] | $[X] | $[X] |
| **EBITDA** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** |
| **EBITDA Margin** | **[X]%** | [X]% | [X]% | [X]% | [X]% |
| | | | | | |
| D&A | ($[X]) | ($[X]) | ($[X]) | ($[X]) | ($[X]) |
| Interest | ($[X]) | | | ($[X]) | |
| **Net Income** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** |

---

## Balance Sheet (as of [Month End])

| | [Current] | Prior Month | Change |
|--|-----------|------------|--------|
| Cash | $[X] | $[X] | $[X] |
| Accounts Receivable | $[X] | $[X] | $[X] |
| Prepaid & Other Current | $[X] | $[X] | |
| **Total Current Assets** | **$[X]** | **$[X]** | |
| Net Fixed Assets | $[X] | $[X] | |
| **Total Assets** | **$[X]** | **$[X]** | |
| | | | |
| Accounts Payable | $[X] | $[X] | |
| Accrued Expenses | $[X] | $[X] | |
| Deferred Revenue | $[X] | $[X] | |
| **Total Liabilities** | **$[X]** | **$[X]** | |
| **Total Equity** | **$[X]** | **$[X]** | |
| **Total L + E** | **$[X]** | **$[X]** | **Must = Total Assets** |

---

## Cash Summary

**Ending cash:** $[X]K | **Prior month:** $[X]K | **Change:** +/−$[X]K
**Days of operating expenses in cash:** [X] days | **Reserve threshold:** 30 days ✅/⚠️/❌

---

## CEO Narrative (3 bullets)

- **Revenue:** $[X]K vs. $[X]K budget ([+/−X]% variance) — [one-line explanation of key driver]
- **EBITDA:** $[X]K vs. $[X]K budget ([+/−X]% variance) — [one-line explanation]
- **Cash:** $[X]K ending; [X] days of reserve; [no concern / watch closely / action required]
```

## Output Contract
- Balance sheet must balance — the fundamental accounting equation (Assets = Liabilities + Equity) must hold; if it doesn't, there is a posting error somewhere; Dr. Lewis verifies the balance check every month before delivering the financials to the CEO; in QuickBooks, the balance sheet out of balance is a sign of either a manual journal entry error or a QuickBooks data integrity issue; the balance must be resolved before delivering the package — a CEO who receives a balance sheet that doesn't balance will (correctly) lose confidence in the finance function
- Ending cash on the financial statements must match the bank reconciliation — the balance sheet cash balance must equal the reconciled bank balance from the bank reconciliation; if they don't match, a journal entry is missing or a bank statement item was incorrectly classified; Dr. Lewis always verifies cash-to-bank-rec before finalizing the financial statements; this is the most common financial statement error at small companies
- The P&L is delivered with budget comparison and a 3-bullet CEO narrative — a financial statement without context is data; with context, it's intelligence; Dr. Lewis includes a prior month comparison (trend) and budget comparison (performance vs. plan) in every P&L; the 3-bullet CEO narrative translates the numbers into plain-language summaries of revenue, EBITDA, and cash; Matt Mathison and the CEO make decisions from the narrative — the detailed schedules are the backup; Dr. Lewis calibrates the narrative to signal urgency appropriately: no alarm when things are fine, clear urgency when action is required
- HITL required: Dr. Lewis prepares (or reviews if controller prepares) all financial statements before delivery; CEO receives financials by BD7 (fin-ops-close-calendar-manager); Matt Mathison receives the portfolio brief quarterly and any month with a material variance (>$20K EBITDA); board and LP reports reviewed by Dr. Lewis and Matt Mathison before delivery — these are never automated; bank financial statements confirmed accurate before submission (covenant compliance feeds from these numbers)

## System Dependencies
- **Reads from:** QuickBooks GL and reports (P&L, balance sheet, detailed GL); bank reconciliation (fin-ops-bank-reconciler); journal entries (fin-ops-journal-entry-preparer); fixed asset schedule (fin-ops-fixed-asset-manager); budget loaded in QuickBooks (for variance reporting); prior month financials (for comparison)
- **Writes to:** Monthly financial package (SharePoint/Finance/<Company>/Financials/[YYYY-MM]/); CEO email delivery; Matt Mathison portfolio brief; board package (quarterly); LP report (quarterly); bank covenant compliance submission; data room (for due diligence)
- **HITL Required:** Dr. Lewis prepares and reviews all financials; CEO receives by BD7; Matt Mathison reviews material variance months; board and LP reports require Matt Mathison sign-off before delivery; all financials final-checked: balance sheet must balance; cash must tie to bank rec

## Test Cases
1. **Golden path:** Allevio June 2026 financial package — prepared by BD6, delivered to CEO BD7 → Controller runs QuickBooks P&L for June (revenue $342K; COGS $180K; gross profit $162K — 47.4% margin; opex $98K; EBITDA $64K — 18.7% margin); Dr. Lewis reviews: revenue is $22K above budget (Employer Group A added 50 members mid-month); EBITDA $8K above budget (volume leverage — opex didn't grow proportionally); balance sheet run: Assets $1.24M; Liabilities $380K; Equity $860K — total L+E $1.24M ✅ balanced; cash $151K on balance sheet = $151K on bank reconciliation ✅; Dr. Lewis prepares the CEO narrative: "Revenue above budget +$22K (new member additions); EBITDA 18.7% — above budget and above prior month; cash $151K — 47 days of reserve, comfortable"; financial package delivered to CEO at 11:30 AM BD7; CEO reviews and confirms receipt; package filed to SharePoint
2. **Edge case:** Balance sheet doesn't balance — Dr. Lewis discovers a $3,200 difference when preparing the June balance sheet → Assets are $3,200 higher than Liabilities + Equity; Dr. Lewis investigates the difference: checks recent manual journal entries for errors; finds the June depreciation entry was posted to the wrong account (credit to Cash instead of credit to Accumulated Depreciation — both are balance sheet accounts, but Cash is an asset); the error increased cash by $3,200 and decreased accumulated depreciation by $3,200, netting to zero on total assets — but wait, that would still balance; Dr. Lewis re-examines; the actual error: a $3,200 debit to a revenue account was posted instead of a debit to an expense account (both income statement, but one increased net income and one decreased it, creating a $6,400 net income discrepancy that flows to retained earnings); Dr. Lewis identifies the specific JE, prepares a correcting entry, gets Dr. Lewis's own approval on the correction, posts, re-runs the balance sheet; Assets = L + E ✅; notates the correction in the JE log; financial package is delivered (on time if the error was caught during review, one day late if caught after initial delivery — CEO and controller notified of the correction)
3. **Adversarial:** Matt Mathison asks for an LP report "by tomorrow morning" — this is the standard quarterly LP report → Dr. Lewis informs Matt: "I can have a draft to you for review by tomorrow morning, but the LP report requires your review and sign-off before delivery — I'll have it ready for you to review by 9 AM and ask that you return any changes by noon so we can deliver to LPs by 3 PM." Dr. Lewis does not deliver LP reports without Matt Mathison's review; the urgency of the request does not override this control; Dr. Lewis works overnight if necessary to prepare the draft, but Matt Mathison must review the final numbers before the report goes to LPs; Matt Mathison's review is a non-negotiable control

## Audit Log
All financial packages retained (PDF and QuickBooks backup). Delivery timestamps retained (CEO, board, LP, bank). Balance sheet balance checks retained. Cash-to-bank-rec verification retained. Matt Mathison review confirmations for board and LP reports retained. All material variance notifications retained.

## Deprecation
Retire when each portfolio company has a controller who prepares financial statements — with Dr. Lewis reviewing before delivery and Matt Mathison reviewing all board and LP reports.
