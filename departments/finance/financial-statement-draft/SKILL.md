---
name: financial-statement-draft
description: "Generate first-draft income statement, balance sheet, and cash flow statement from trial balance or QuickBooks data. Use when the user says 'draft financial statements', 'generate financial statements', 'P&L draft', 'balance sheet draft', 'financial statement prep', 'compile financials', or 'first draft of financials'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<trial-balance-file | qb-export> [--period <month|quarter|year>] [--format <gaap|mgmt>]"
---

# Financial Statement Draft

Convert trial balance or QuickBooks data into properly formatted financial statements — P&L, Balance Sheet, and Cash Flow statement — as a first draft for CPA or CFO review.

## When to Use
- Monthly close package preparation
- Quarterly and annual reporting
- Board and LP presentations
- Due diligence packages (M&A)
- When QuickBooks reports need reformatting for presentation

## Formats
- `gaap` — GAAP-compliant presentation (for external reporting)
- `mgmt` — Management format (simplified, business-unit focused, for internal use)

## Process

### Step 1 — Parse Trial Balance
Map GL account numbers to financial statement line items using the standard chart of accounts mapping.

### Step 2 — Build Income Statement (P&L)
```
Revenue
  - [Revenue lines by category]
Total Revenue: $X

Cost of Revenue / COGS
  - [Direct cost lines]
Total COGS: $X

Gross Profit: $X (X% margin)

Operating Expenses
  - Salaries & Benefits: $X
  - Sales & Marketing: $X
  - General & Administrative: $X
  - Depreciation & Amortization: $X
Total OpEx: $X

EBITDA: $X (X%)
Less: D&A: ($X)
EBIT: $X

Less: Interest Expense: ($X)
Less: Income Tax: ($X)
Net Income: $X (X%)
```

### Step 3 — Build Balance Sheet
Assets → Liabilities → Equity. Verify: Assets = Liabilities + Equity.
Flag if out of balance with difference amount.

### Step 4 — Build Cash Flow Statement
Indirect method:
- Start with Net Income
- Adjust for non-cash items (D&A, stock comp)
- Changes in working capital
- Investing activities (capex, investments)
- Financing activities (debt payments, equity raises)

### Step 5 — Comparison Columns
If prior period data available: add current period, prior period, and variance columns.

## Output Contract
- Always labeled "DRAFT — Requires CPA/CFO Review"
- If Balance Sheet doesn't balance, flag prominently before any other content
- Prior period comparatives included when data is available
- HITL required before external distribution

## System Dependencies
- **Reads from:** Trial balance or QuickBooks export
- **Writes to:** Nothing (outputs draft for review)
- **HITL Required:** Before distributing to any external party (investors, lenders, auditors)

## Deprecation
Retire when accounting system generates presentation-ready financials automatically.
