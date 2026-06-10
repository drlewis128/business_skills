---
name: journal-entry-classification
description: "Auto-code financial transactions to correct GL accounts. Use when the user says 'classify this transaction', 'what GL account does this go to', 'journal entry coding', 'code these transactions', 'GL account mapping', 'chart of accounts coding', or 'how should I book this'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<transaction-description | batch-file>"
---

# Journal Entry Classification

Map financial transactions to the correct General Ledger accounts using description analysis and contextual signals. Reduces manual coding errors and speeds up close.

## When to Use
- When entering transactions with unclear GL coding
- Batch classification of imported bank transactions
- Training new AP staff on coding standards
- Reviewing GL coding consistency before close

## Classification Logic

### Step 1 — Parse Transaction Description
Extract: vendor name, amount, payment method, date, any line item detail.

### Step 2 — Apply Classification Rules

**Revenue accounts (4xxx)**
- Customer payment received → AR Clearing (1200) → Revenue by type
- Subscription payments → 4100 Subscription Revenue
- Service revenue → 4200 Professional Services Revenue
- Product sales → 4300 Product Revenue

**Cost of Goods / Direct Costs (5xxx)**
- Direct labor for billable projects → 5100 Direct Labor
- Materials for delivered product → 5200 Materials
- Third-party services for client delivery → 5300 Subcontractor Costs

**Operating Expenses (6xxx)**
- Payroll (non-direct) → 6100 Salaries & Wages
- Payroll taxes → 6110 Payroll Taxes
- Benefits → 6120 Employee Benefits
- Rent → 6200 Rent & Occupancy
- Utilities → 6210 Utilities
- SaaS/Software subscriptions → 6300 Software & Technology
- Office supplies → 6400 Office Supplies
- Marketing spend → 6500 Marketing & Advertising
- Travel → 6600 Travel & Entertainment
- Professional fees (legal, accounting) → 6700 Professional Services
- Insurance → 6800 Insurance
- Depreciation → 6900 Depreciation

**Balance Sheet**
- Equipment purchase → 1500 Property, Plant & Equipment
- Loan payment principal → 2100 Notes Payable
- Loan payment interest → 6850 Interest Expense
- Prepaid expenses → 1300 Prepaid Expenses

### Step 3 — Confidence Rating
High = clear match to known vendor or category
Medium = likely correct but verify
Low = ambiguous — provide top 2-3 options with explanation

## Output Format

```markdown
# GL Classification Results

| Transaction | Vendor | Amount | Debit Account | Credit Account | Confidence | Notes |
|-------------|--------|--------|--------------|----------------|-----------|-------|
| Jun 5 | AWS | $1,240 | 6300 Software | 2000 AP | High | Cloud infrastructure |
| Jun 6 | Unknown LLC | $850 | ? | 2000 AP | Low | Unclear — see options below |

## Low Confidence Items — Options
**Jun 6 — Unknown LLC — $850**
- Option A: 6700 Professional Services (if consulting/legal)
- Option B: 6300 Software (if SaaS license)
- Option C: 6500 Marketing (if agency fee)
Please clarify the nature of this payment.
```

## Output Contract
- Low confidence items always present multiple options — never force a classification
- Read-only — does not post to QuickBooks directly
- HITL required before posting any journal entries

## System Dependencies
- **Reads from:** Transaction descriptions (input or file)
- **Writes to:** Nothing (outputs coding recommendations)
- **HITL Required:** Before posting any journal entries to accounting system

## Deprecation
Retire when QuickBooks AI rules handle automatic transaction classification.
