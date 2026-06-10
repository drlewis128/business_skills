---
name: spend-category-classification
description: "Classify transactions into spend categories for reporting and budget tracking. Use when the user says 'categorize this expense', 'what GL account', 'classify transactions', 'spend classification', 'is this COGS or OpEx', 'how should I code this', or 'what category does this go in'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<transaction-description-or-file> [--entity <name>] [--amount <X>]"
---

# Spend Category Classification

Classify individual transactions or batches into the correct spend category, GL account, and cost center for accurate financial reporting.

## When to Use
- Coding vendor invoices in QuickBooks/Bill.com
- Reviewing credit card transactions for expense reports
- Month-end close — clear unclassified transaction queue
- Onboarding a bookkeeper (reference guide)
- Reconciling bank transactions with ambiguous descriptions

## MBL Classification Framework

### Revenue (4000s)
| Account | Description | Examples |
|---------|-------------|---------|
| 4000 | Product/Service Revenue | Client fees, subscription revenue, management fees |
| 4100 | Interest Income | Bank interest, loan interest received |
| 4200 | Other Income | Asset sales, insurance proceeds |

### Cost of Revenue / COGS (5000s)
Direct costs to deliver the product/service:
| Account | Description | Examples |
|---------|-------------|---------|
| 5000 | Direct Labor | Staff whose time is billable to a client or project |
| 5100 | Direct Materials | Materials consumed in delivering service |
| 5200 | Subcontractor Costs | Third-party delivery of client services |
| 5300 | Software / Tools (COGS) | SaaS tools used exclusively for client delivery |

> Rule: If you removed this cost, could you still generate revenue without this customer? If yes → OpEx. If no → COGS.

### Operating Expenses (6000s)
| Account | Description | Examples |
|---------|-------------|---------|
| 6100 | Salaries & Wages | Base compensation, non-billable staff |
| 6110 | Payroll Taxes & Benefits | Employer FICA, health insurance, 401k match |
| 6200 | Rent & Occupancy | Office rent, utilities |
| 6300 | Software & Subscriptions | SaaS tools for internal operations |
| 6310 | IT & Technology | Hardware, tech support, domain/hosting |
| 6400 | Marketing & Advertising | Ads, campaigns, SEO, events |
| 6500 | Professional Services | Legal, accounting, consulting (non-COGS) |
| 6600 | Travel & Entertainment | Airfare, hotel, client meals, mileage |
| 6700 | Office & Supplies | Paper, coffee, office consumables |
| 6800 | Insurance | Business insurance premiums |
| 6900 | Depreciation & Amortization | Auto-posted from fixed asset schedule |
| 6950 | Interest Expense | Loan interest paid |
| 6990 | Other / Miscellaneous | Use sparingly — always describe in memo |

## Classification Decision Tree

```
Is this cost directly tied to delivering a client product/service?
  YES → Is it labor? → 5000 (Direct Labor)
       → Is it software for client work only? → 5300
       → Is it a subcontractor? → 5200
  NO → Is it compensation? → 6100/6110
     → Is it a facility? → 6200
     → Is it a SaaS tool for internal use? → 6300
     → Is it for marketing? → 6400
     → Is it professional advice (lawyer, CPA)? → 6500
     → Is it travel? → 6600
```

## Common Ambiguous Transactions

| Transaction | Typical Classification | Notes |
|------------|----------------------|-------|
| AWS / Azure | 5300 or 6310 | 5300 if client-specific infrastructure; 6310 if shared |
| Slack | 6300 | Internal tool |
| GitHub | 5300 or 6310 | 5300 if used in client deliverable; 6310 if internal |
| Restaurant meal | 6600 | Meals & entertainment (50% deductible for tax) |
| LinkedIn Premium | 6400 | Marketing/recruiting tool |
| Uber Eats (delivered to office) | 6700 | Office meals — not M&E |
| Legal fees (contract review) | 6500 | |
| Legal fees (M&A) | Add to deal cost basis | Capitalize as part of deal |

## Output Format

```markdown
# Spend Classification — <transaction or batch>

## Single Transaction
**Transaction:** <description>
**Amount:** $X | **Vendor:** <name>

**Classification:**
- GL Account: 6300 — Software & Subscriptions
- Account Name: Software & Subscriptions
- Cost Center: <department>
- Memo: <vendor> — <month> subscription

**Rationale:** Internal operational SaaS tool, not client-specific — OpEx, not COGS.
**Confidence:** High / Medium (review recommended) / Low (requires human judgment)

## Batch Classification (<N> transactions)
| Transaction | Vendor | Amount | Account | Confidence | Notes |
|------------|--------|--------|---------|------------|-------|
```

## Output Contract
- Always provides rationale for the classification, not just the account code
- Low-confidence classifications flagged for human review — never silently assigned
- HITL required for any transaction > $5,000 or marked low-confidence before posting

## System Dependencies
- **Reads from:** Transaction data (provided), COA reference (this skill), entity context
- **Writes to:** Nothing (outputs classification for bookkeeper/accountant to post)
- **HITL Required:** For ambiguous or high-value transactions before posting

## Test Cases
1. **Golden path:** "Zoom subscription — $149.90 — monthly" → 6300, high confidence
2. **Edge case:** AWS bill with line items for both internal and client infrastructure → splits classification, requests allocation percentages
3. **Adversarial:** "Misc — $8,200" with no vendor or description → flags as low-confidence, requires human description before posting

## Audit Log
Batch classifications logged with source transaction count and confidence distribution. Low-confidence escalations tracked to resolution.

## Deprecation
Retire when QuickBooks AI or Bill.com auto-coding reaches >95% accuracy and Finance team validates the model.
