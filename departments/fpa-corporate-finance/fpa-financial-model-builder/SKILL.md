---
name: fpa-financial-model-builder
description: "Build integrated 3-statement financial models. Use when the user says 'financial model', 'build a model', '3-statement model', 'three statement model', 'integrated model', 'P&L model', 'income statement model', 'balance sheet model', 'cash flow model', 'pro forma', 'pro-forma model', 'financial projection', 'financial projections', 'model the business', 'build projections', 'forecast model', 'LBO model', 'investment model', 'deal model', 'acquisition model', 'company model', 'DCF model', 'valuation model', or 'build a financial projection'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--purpose <budget|forecast|ma|exit|investor>] [--years <N>] [--action <build|update|present>]"
---

# Financial Model Builder

Build integrated 3-statement financial models for MBL portfolio companies — connecting the income statement, balance sheet, and cash flow statement into a single model where every assumption flows through correctly and every output is auditable. Financial models are the quantitative backbone of every major business decision at MBL: the annual budget, M&A evaluations, exit planning, investor reporting, and capital allocation all start with a financial model. A model that is wrong (disconnected statements, hardcoded overrides, circular references, incorrect assumption linkages) produces wrong outputs that lead to wrong decisions. Dr. Lewis builds and maintains models that are accurate, transparent, and built for stress testing.

## When to Use
- Annual budget cycle — the budget model is a 3-statement model
- M&A evaluation — pro forma model for a potential acquisition
- Exit preparation — model the projected exit metrics for a buyer
- Capital raise — LP or debt investor package requires a financial projection
- New portfolio company — build the first financial model to establish a baseline
- Scenario analysis — stress test the existing model against different assumptions

## Financial Model Framework

```
3-Statement model architecture:

  INCOME STATEMENT (P&L) — the starting point:
    Revenue (by driver and segment)
    − COGS
    = Gross Profit
    − Operating Expenses (by department)
    = EBITDA
    − D&A
    = EBIT
    − Interest Expense
    = Pre-tax Income
    − Tax Provision
    = Net Income
    
  BALANCE SHEET — linked to P&L:
    Cash: Beginning cash + net change in cash (from cash flow statement)
    AR: Revenue × Days Sales Outstanding / 365
    Prepaid: Expensed from the prepaid schedule
    Fixed Assets: Prior period + CapEx − Disposals − Depreciation
    AP: COGS × Days Payable Outstanding / 365
    Accrued Expenses: Linked to the accrual schedule
    Debt: Prior period + new borrowings − repayments
    Equity: Prior period + net income − dividends/distributions
    BALANCE CHECK: Assets = Liabilities + Equity (enforced with a check cell)
    
  CASH FLOW STATEMENT — derived from P&L and Balance Sheet:
    Operating Activities:
      Net Income [from P&L]
      + D&A [from P&L — non-cash add-back]
      +/− Changes in Working Capital [from Balance Sheet changes]
        AR increase = cash used (negative)
        AP increase = cash provided (positive)
        Prepaid increase = cash used (negative)
        Accrued expenses increase = cash provided (positive)
    = Net Cash from Operations
    
    Investing Activities:
      − Capital Expenditures [from CapEx schedule]
      + Asset Sales proceeds [if any]
    = Net Cash from Investing
    
    Financing Activities:
      + Debt borrowings [LOC draws, new debt]
      − Debt repayments
      − Owner distributions
    = Net Cash from Financing
    
    = Net Change in Cash
    + Beginning Cash Balance
    = Ending Cash Balance [must match Balance Sheet cash — enforced with check cell]
    
Model construction principles:

  ASSUMPTIONS PAGE (always separate from outputs):
    All assumptions on a single "Assumptions" tab
    All output tabs reference assumptions; nothing is hardcoded in output tabs
    Color code: Blue = assumption input; Black = formula; Red = error/check
    
  OPERATING DRIVERS BY ENTITY:
    Allevio: Member count by employer group × PMPM rate by group; FTE by role × salary
    HIVE: Net production (BOE/day) × working interest % × (WTI − differential); LOE per BOE
    Column6: Campaigns × average campaign value; direct costs % of revenue; G&A headcount
    
  WORKING CAPITAL ASSUMPTIONS:
    DSO (Days Sales Outstanding): Target 35 days for commercial; 45-60 days for Allevio payer claims
    DPO (Days Payable Outstanding): Target 30-45 days (pay on time, not late)
    These drive AR and AP on the balance sheet
    
  CASH FLOW CHECK CELLS (mandatory):
    Check 1: Balance sheet balances (Assets − Liabilities − Equity = 0)
    Check 2: Ending cash matches balance sheet cash (difference = 0)
    Check 3: Total shares/ownership = 100%
    If any check cell shows a non-zero value: the model has an error; do not present or use the model
    
  SCENARIO TOGGLE:
    Single dropdown or input cell selects: Base / Bear / Bull
    All assumption cells reference the scenario toggle
    Output tabs automatically update when scenario is changed
    
  MODEL FOR M&A / EXIT USE CASES:
    Add: Entry price (purchase price or enterprise value)
    Add: Financing structure (equity / debt mix; interest rate on debt)
    Add: MOIC calculation: Exit value ÷ Equity invested
    Add: IRR calculation: =XIRR(cash flows, dates)
    Add: Exit year multiple assumptions (EV/EBITDA at exit)
    Add: Debt paydown schedule
    
  GAAP ADJUSTMENTS FOR MANAGEMENT PURPOSES:
    Management EBITDA (add back one-time items): List specific add-backs
    Adjusted EBITDA: The number used for valuation; communicate basis to investors
    Always show both GAAP EBITDA and Adjusted EBITDA; never only the adjusted number
```

## Output Format

```markdown
# Financial Model Summary — [Entity] [Purpose]
**Model type:** [3-Statement / LBO / Acquisition Pro Forma]
**Years modeled:** [Year 1] through [Year N] | **Scenarios:** Base / Bear / Bull
**Built by:** Dr. Lewis | **CPA/auditor reviewed:** ✅/N/A | **Last updated:** [Date]

---

## Model Check Status

| Check | Result | Status |
|-------|--------|--------|
| Balance sheet balances | $0 difference | ✅ |
| Cash ties to ending balance | $0 difference | ✅ |
| All assumptions referenced (no hardcodes in output) | Verified | ✅ |
| Scenario toggle functional | Base/Bear/Bull tested | ✅ |

---

## P&L Summary (Base Case)

| | [Y1] | [Y2] | [Y3] | [Y4] | [Y5] |
|--|------|------|------|------|------|
| Revenue | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |
| Gross Margin | [X]% | [X]% | [X]% | [X]% | [X]% |
| EBITDA | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |
| EBITDA Margin | [X]% | [X]% | [X]% | [X]% | [X]% |
| Net Income | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |

---

## Cash Flow Summary (Base Case)

| | [Y1] | [Y2] | [Y3] | [Y4] | [Y5] |
|--|------|------|------|------|------|
| Cash from Operations | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |
| CapEx | ($[X]M) | ($[X]M) | ($[X]M) | ($[X]M) | ($[X]M) |
| Free Cash Flow | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |
| Ending Cash | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |

---

## Scenario Comparison (EBITDA)

| Scenario | [Y1] | [Y2] | [Y3] | [Y5] | CAGR |
|---------|------|------|------|------|------|
| Bear | $[X]M | $[X]M | $[X]M | $[X]M | [X]% |
| **Base** | **$[X]M** | **$[X]M** | **$[X]M** | **$[X]M** | **[X]%** |
| Bull | $[X]M | $[X]M | $[X]M | $[X]M | [X]% |

---

## Key Assumptions (Base Case)

| Driver | [Y1] | [Y2] | [Y3] | [Y5] | Basis |
|--------|------|------|------|------|-------|
| [Allevio members] | [N] | [N] | [N] | [N] | [Contract pipeline + churn assumption] |
| [WTI price] | $[X] | $[X] | $[X] | $[X] | [Forward curve + management view] |
| [Column6 campaigns] | [N] | [N] | [N] | [N] | [Historical growth + pipeline] |
| Gross margin | [X]% | [X]% | [X]% | [X]% | [Improving as revenue scales] |

---

## Model File
**Location:** SharePoint/Finance/[Company]/FinancialModel/[Purpose]_[Date].xlsx
**Access:** Dr. Lewis, CEO (view), Matt Mathison (view)
```

## Output Contract
- The model must have check cells that enforce balance — a financial model without check cells is not a financial model; it is a spreadsheet that may or may not be correct; Dr. Lewis builds check cells for (1) balance sheet balance (Assets − L − E = 0), (2) cash tie (ending cash on cash flow = cash on balance sheet), and (3) scenario toggle functionality; if any check cell shows a non-zero value, the model is broken and Dr. Lewis does not present it until it is corrected; the check cells are visible at the top of the model, not hidden
- All assumptions are on the assumptions tab — nothing is hardcoded in the output tabs — the most common model failure is an analyst who hardcodes a number directly into an output cell (bypassing the assumption) because it's faster; this creates a model where changing assumptions doesn't change all outputs; Dr. Lewis uses the color-coding convention (blue = input; black = formula) and audits every output cell before delivering the model; any blue cell in an output tab is an error
- The model supports stress testing — every model has a scenario toggle (at minimum: Base, Bear, Bull); the Bear case must represent a realistic downside (not an extreme catastrophe) where the business is still viable but meaningfully below Base; the Bull case must represent what's actually achievable with strong execution; Dr. Lewis presents all three scenarios to Matt Mathison; the decision to proceed with any major investment is based on the Bear case outcome (if the Bear case is still acceptable, the investment has adequate margin of safety)
- HITL required: Dr. Lewis builds and owns all financial models; CEO and Matt Mathison review models before they are used for decisions; M&A models are also reviewed by the CPA or investment banker; models used for LP reporting or investor materials are reviewed by Matt Mathison before release; any model used for a transaction (buying or selling a company) has the key assumptions confirmed with the CPA firm before the deal is signed

## System Dependencies
- **Reads from:** Historical actuals (QuickBooks); prior year audit (for validated starting points); revenue contracts and member rosters; production data (Covercy); pipeline data (CRM); headcount plan; CapEx plan; debt terms (from credit agreements); tax provision estimate (CPA firm); market data (WTI price, industry multiples)
- **Writes to:** Financial model file (SharePoint/Finance/<Company>/FinancialModel/); board package financial section; LP report projections; M&A memo financial exhibits; exit preparation data room; budget (the annual budget model IS this model, used for the budget cycle)
- **HITL Required:** Dr. Lewis builds; CEO and Matt Mathison review before any decision; M&A models reviewed by CPA/banker; LP investor models reviewed by Matt Mathison before release; all models must pass check cells before presentation

## Test Cases
1. **Golden path:** Allevio 3-year financial projection for LP annual report → Dr. Lewis builds: assumptions tab (member adds, PMPM rates, gross margin, headcount, WTI not applicable); P&L tab (3 years); balance sheet tab; cash flow tab; check cells: all zero ✅; scenarios: Base (members +150/yr), Bear (members +75/yr, 5% PMPM flat), Bull (members +250/yr, PMPM +3%/yr); Base EBITDA: Y1 $780K, Y2 $920K, Y3 $1.1M; Bear EBITDA: Y1 $640K, Y2 $710K, Y3 $780K; Bull EBITDA: Y1 $920K, Y2 $1.18M, Y3 $1.52M; model shared with Matt Mathison for LP report review; Matt Mathison approves Base case for the LP report; model saved to SharePoint
2. **Edge case:** The model shows a negative cash balance in Q3 of Year 2 in the Bear scenario → Dr. Lewis investigates: the cash deficit is $45K in September of Year 2; driven by payroll timing (September has 3 pay periods in the Bear case model); the business has a $200K LOC available; Dr. Lewis adds the LOC draw to the Financing section of the cash flow: draw $50K in September, repay $50K in October; cash balance stays positive; notes in the model: "LOC draw required in Bear scenario September Y2 — $50K; repaid within 30 days from October revenue." Dr. Lewis includes this in the LP report footnote; communicates to Matt Mathison: "The Bear scenario requires a temporary LOC draw in September Y2 — our existing facility covers this comfortably."
3. **Adversarial:** An investment banker sends over their own model for the Allevio M&A deal and asks Dr. Lewis to use it instead of building a new one → Dr. Lewis reviews the banker's model before accepting it: checks the check cells (one is non-zero — the balance sheet doesn't fully balance); finds two hardcoded numbers in the revenue output tab that should be formula-driven; finds that the depreciation assumption is based on the wrong useful life for medical equipment; Dr. Lewis does not use the banker's model for MBL's internal decision-making — he builds his own model and cross-references the banker's for any assumptions that differ; Dr. Lewis communicates professionally: "Thank you for sending over the model. I've built our own internal version for consistency and found a few items to align on with your team — let's compare assumptions. I noticed a balance sheet check cell that's off by $3K; I can share what I found." The banker's model may be fine for their purposes; Dr. Lewis is responsible for MBL's internal analysis

## Audit Log
All model versions retained with date/purpose labels. Model check cell status documented at delivery. Assumption source documentation retained. CEO and Matt Mathison review records retained. M&A models retained permanently. Exit preparation models retained. All model files backed up to SharePoint (not just local).

## Deprecation
Retire when each portfolio company has a CFO or FP&A manager who builds and maintains financial models — with Dr. Lewis reviewing all models before investor use and Matt Mathison approving any model used for a transaction.
