---
name: financial-statement-builder
description: "Build or review core financial statements. Use when the user says 'financial statements', 'P&L', 'profit and loss', 'income statement', 'balance sheet', 'cash flow statement', 'build the financials', 'prepare financial statements', 'monthly financials', 'financial statement review', or 'prepare the three statements'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly|annual>] [--statement <PL|BS|CF|all>]"
---

# Financial Statement Builder

Prepare, review, and present the three core financial statements — Income Statement (P&L), Balance Sheet, and Cash Flow Statement — for any MBL portfolio company or MBL Partners itself. Financial statements are the language of the business: they tell whether the company is profitable, solvent, and generating cash. A well-prepared statement set is the foundation for every financial decision, board conversation, LP update, and investment thesis.

## When to Use
- Month-end or quarter-end close — statements need to be prepared and reviewed
- Matt Mathison asks for the financials on a portfolio company
- Board package preparation — statements are the core financial exhibit
- Pre-audit preparation — statements must be reviewed for accuracy before auditors arrive
- LP reporting cycle — portfolio company performance must be documented

## Statement Standards

```
Three core statements and what each answers:

Income Statement (P&L):
  "Is the business profitable?"
  Revenue - COGS = Gross Profit
  Gross Profit - Operating Expenses = EBITDA / Operating Income
  Operating Income - Interest/Tax = Net Income

Balance Sheet:
  "Is the business solvent?"
  Assets = Liabilities + Equity
  (Always must balance — if it doesn't, there's an error)

Cash Flow Statement:
  "Is the business generating cash?"
  Net Income + Non-cash adjustments = Cash from Operations
  + Cash from Investing + Cash from Financing = Net change in cash

The most important statement for operating companies: Cash Flow.
P&L can show profit while the company is running out of cash (accrual timing).
```

## Output Format

```markdown
# Financial Statements — <Company Name>
**Period:** [Month / Quarter / Year ended <date>]
**Basis:** Cash / Accrual | **Currency:** USD
**Prepared by:** Dr. John Lewis | **Reviewed by:** [CPA / Controller]
**Status:** Draft / Final

---

## INCOME STATEMENT (P&L)
*Period: [Month / Quarter / YTD] vs. [Prior period / Budget]*

| Line Item | Current Period | Prior Period | $ Variance | % Variance | YTD |
|-----------|--------------|-------------|-----------|-----------|-----|
| **Revenue** | | | | | |
| [Revenue stream 1] | $[X] | $[X] | $[X] | [X%] | $[X] |
| [Revenue stream 2] | $[X] | $[X] | $[X] | [X%] | $[X] |
| **Total Revenue** | **$[X]** | **$[X]** | **$[X]** | **[X%]** | **$[X]** |
| | | | | | |
| **Cost of Goods Sold (COGS)** | | | | | |
| [Direct cost 1] | $[X] | $[X] | | | |
| **Total COGS** | **$[X]** | **$[X]** | | | |
| | | | | | |
| **Gross Profit** | **$[X]** | **$[X]** | | | |
| **Gross Margin %** | **[X%]** | **[X%]** | | | |
| | | | | | |
| **Operating Expenses** | | | | | |
| Salaries & Benefits | $[X] | $[X] | | | |
| Rent & Facilities | $[X] | $[X] | | | |
| Technology & Software | $[X] | $[X] | | | |
| Marketing & Advertising | $[X] | $[X] | | | |
| Professional Services | $[X] | $[X] | | | |
| Other Operating | $[X] | $[X] | | | |
| **Total OpEx** | **$[X]** | **$[X]** | | | |
| | | | | | |
| **EBITDA** | **$[X]** | **$[X]** | | | |
| **EBITDA Margin %** | **[X%]** | **[X%]** | | | |
| D&A | ($[X]) | ($[X]) | | | |
| **EBIT** | **$[X]** | **$[X]** | | | |
| Interest Expense | ($[X]) | ($[X]) | | | |
| **Pre-Tax Income** | **$[X]** | **$[X]** | | | |
| Income Tax | ($[X]) | ($[X]) | | | |
| **Net Income** | **$[X]** | **$[X]** | | | |
| **Net Margin %** | **[X%]** | **[X%]** | | | |

---

## BALANCE SHEET
*As of [Date] vs. [Prior period]*

| Line Item | Current | Prior | Change |
|-----------|---------|-------|--------|
| **ASSETS** | | | |
| **Current Assets** | | | |
| Cash & Cash Equivalents | $[X] | $[X] | $[X] |
| Accounts Receivable | $[X] | $[X] | |
| Inventory | $[X] | $[X] | |
| Prepaid Expenses | $[X] | $[X] | |
| **Total Current Assets** | **$[X]** | **$[X]** | |
| **Long-Term Assets** | | | |
| PP&E (net of depreciation) | $[X] | $[X] | |
| Intangible Assets | $[X] | $[X] | |
| Other Long-Term | $[X] | $[X] | |
| **Total Long-Term Assets** | **$[X]** | **$[X]** | |
| **TOTAL ASSETS** | **$[X]** | **$[X]** | |
| | | | |
| **LIABILITIES** | | | |
| **Current Liabilities** | | | |
| Accounts Payable | $[X] | $[X] | |
| Accrued Liabilities | $[X] | $[X] | |
| Current Portion of Debt | $[X] | $[X] | |
| **Total Current Liabilities** | **$[X]** | **$[X]** | |
| **Long-Term Liabilities** | | | |
| Long-Term Debt | $[X] | $[X] | |
| Other Long-Term | $[X] | $[X] | |
| **Total Long-Term Liabilities** | **$[X]** | **$[X]** | |
| **TOTAL LIABILITIES** | **$[X]** | **$[X]** | |
| | | | |
| **EQUITY** | | | |
| Paid-In Capital | $[X] | $[X] | |
| Retained Earnings | $[X] | $[X] | |
| Current Period Net Income | $[X] | $[X] | |
| **TOTAL EQUITY** | **$[X]** | **$[X]** | |
| **TOTAL LIABILITIES + EQUITY** | **$[X]** | **$[X]** | |

**Balance check:** Assets = Liabilities + Equity: ✅ Balanced / ❌ OUT OF BALANCE — investigate immediately

---

## CASH FLOW STATEMENT
*Period: [Month / Quarter / YTD]*

| Line Item | Current Period | Prior Period | YTD |
|-----------|--------------|-------------|-----|
| **Operating Activities** | | | |
| Net Income | $[X] | $[X] | $[X] |
| + Depreciation & Amortization | $[X] | | |
| + Changes in Working Capital | | | |
| &nbsp;&nbsp;(Increase)/Decrease in AR | ($[X]) | | |
| &nbsp;&nbsp;(Increase)/Decrease in Inventory | ($[X]) | | |
| &nbsp;&nbsp;Increase/(Decrease) in AP | $[X] | | |
| &nbsp;&nbsp;Increase/(Decrease) in Accruals | $[X] | | |
| **Net Cash from Operations** | **$[X]** | **$[X]** | **$[X]** |
| | | | |
| **Investing Activities** | | | |
| Capital Expenditures | ($[X]) | | |
| Acquisitions | ($[X]) | | |
| Other Investing | $[X] | | |
| **Net Cash from Investing** | **($[X])** | | |
| | | | |
| **Financing Activities** | | | |
| Debt Proceeds | $[X] | | |
| Debt Repayments | ($[X]) | | |
| Equity Contributions | $[X] | | |
| Distributions/Dividends | ($[X]) | | |
| **Net Cash from Financing** | **$[X]** | | |
| | | | |
| **Net Change in Cash** | **$[X]** | | |
| Beginning Cash | $[X] | | |
| **Ending Cash** | **$[X]** | | |

---

## Financial Highlights (Narrative — 3-5 bullets)

- **Revenue:** $[X] for the period — [X%] [above/below] prior period; [key driver]
- **Gross Margin:** [X%] — [improving/declining] from [X%] prior period; [key driver]
- **EBITDA:** $[X] ([X%] margin) — [key driver of movement]
- **Cash Position:** $[X] ending — [key observation: strong/declining; why]
- **Key variance to note:** [The one number that most requires explanation]
```

## Output Contract
- Balance sheet must always balance — if Assets ≠ Liabilities + Equity, there is an error in the source data; this is a hard stop; do not present a balance sheet that doesn't balance without explicitly flagging the discrepancy and its likely cause
- Cash position always prominently presented — for operating companies, cash is the most important number; it must be visible in the executive narrative section, not buried in the balance sheet
- Prior period comparison always included — a single period P&L with no comparison is almost uninterpretable; always show the prior period (month or year) and flag significant variances
- Key variances called out in narrative — the financial statements tell what happened; the narrative must address why; unexplained variances leave Matt Mathison with questions that derail board meetings
- HITL required: Dr. Lewis compiles; CPA or controller reviews before any external distribution (board, LPs, auditors); Matt Mathison reviews before board submission; any restatement of previously issued financials requires legal and accounting counsel

## System Dependencies
- **Reads from:** QuickBooks (source of record for all portfolio companies), bank statements, payroll reports, accounts payable records (Bill.com)
- **Writes to:** Financial statement files (SharePoint/Finance/<Entity>/Statements); board package; LP reports
- **HITL Required:** Dr. Lewis compiles; CPA reviews before external distribution; Matt Mathison approves board package financials

## Test Cases
1. **Golden path:** Allevio monthly P&L for May 2026 → Revenue: $342K (vs. $318K prior month — +7.5%); COGS: $87K; Gross profit: $255K (74.6% margin — up from 73.2%); OpEx: $198K; EBITDA: $57K (16.7% margin); Net income: $48K; Cash: $234K (up from $198K — strong operating month); Key narrative: "Revenue increase driven by 2 new practice implementations; gross margin improvement from lower subcontractor costs; cash position up $36K — strongest month since February." Balance sheet: balanced (verified); Cash flow: $57K operating, ($12K) investing (equipment), $0 financing; net change +$45K
2. **Edge case:** Balance sheet doesn't balance — Assets: $842K, Liabilities + Equity: $839K (off by $3K) → stop; do not proceed; flag immediately to the controller or accountant; do not try to "fix" the discrepancy without understanding its source; common causes: missed transaction, double-counted entry, timing difference in accruals; the accountant must find and correct the error before the statements are finalized
3. **Adversarial:** A portfolio company CEO presents financial statements that show revenue above budget but the cash position is declining → cash flow analysis is mandatory in this case; accrual revenue recognition can show revenue that hasn't been collected; examine AR aging — if receivables are growing faster than revenue, the company is booking revenue but not collecting; examine whether the revenue recognition policy is conservative or aggressive; this is a potential earnings quality issue; flag to Matt Mathison

## Audit Log
All financial statements retained by entity, period, and version (draft vs. final). CPA review confirmations retained. Matt Mathison approval dates logged. Restatements documented with reason and approvals.

## Deprecation
Retire when portfolio companies have CFOs and accounting systems that produce financial statements automatically from QuickBooks with automated review workflows.
