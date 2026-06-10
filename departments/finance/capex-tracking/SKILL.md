---
name: capex-tracking
description: "Track capital expenditure approvals, spending, and capitalization against budget. Use when the user says 'capex tracking', 'capital expenditure', 'capex budget', 'capex vs budget', 'capital project status', 'asset capitalization', 'fixed asset additions', or 'capex approval status'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM>] [--project <id>]"
---

# CapEx Tracking

Monitor capital expenditure approvals, spending actuals, and asset capitalization status across the MBL portfolio. Catch budget overruns before they close and ensure proper capitalization vs. expensing decisions.

## When to Use
- Monthly close — reconcile capex spend to approved budget
- When a new capital project is initiated (set up tracking)
- Board reporting (capital allocation summary)
- During budget planning (review prior year capex vs. plan)
- When an invoice arrives for a potentially capitalizable item

## Capitalization Rules (GAAP)

### Capitalize (record as fixed asset)
- Purchase price ≥ company capitalization threshold (typically $2,500–$5,000)
- Useful life > 1 year
- Significant betterment to an existing asset (extends life or increases capacity)
- Software development costs (GAAP: capitalize development phase, expense R&D)

### Expense (record to P&L)
- Maintenance and repairs that restore to original condition
- Items below capitalization threshold
- Software preliminary stage and post-implementation costs
- Training costs related to new assets

## CapEx Register Format

| Project ID | Description | Budget | Approved By | Committed | Actual YTD | Remaining | Status |
|-----------|-------------|--------|-------------|-----------|------------|-----------|--------|
| CAP-2026-01 | Office buildout | $150K | Matt Mathison | $135K | $87K | $63K | In Progress |
| CAP-2026-02 | Server hardware | $45K | Dr. Lewis | $45K | $45K | $0 | Complete |

## Variance Analysis

For each project:
- Budget vs. committed (approval exposure)
- Budget vs. actual (spend to date)
- Flag projects > 10% over budget immediately
- Forecast-to-complete for in-progress projects

## Output Format

```markdown
# CapEx Tracking Report — <entity> — <period>

## Portfolio Summary
| Metric | Amount |
|--------|--------|
| Total approved CapEx budget (FY) | $X |
| Total committed (POs + contracts) | $X |
| Total spent YTD | $X |
| Remaining budget | $X |
| Budget utilization | X% |

## Project Status

### In Progress
| Project | Budget | Spent YTD | % Used | Forecast at Complete | Status |
|---------|--------|-----------|--------|---------------------|--------|
| CAP-2026-01 | $150K | $87K | 58% | $148K | ✅ On budget |

### Over Budget — Attention Required
| Project | Budget | Forecast at Complete | Overage | Action |
|---------|--------|---------------------|---------|--------|

### Completed
[Projects finalized and transferred to fixed asset schedule]

## Capitalization Queue (invoices pending classification)
| Invoice | Vendor | Amount | Description | Capitalize? | Determination |
|---------|--------|--------|-------------|-------------|---------------|
| INV-4521 | Dell | $8,500 | Server upgrade | Pending | Likely capitalize — review useful life |

## Upcoming Approvals Needed
<projects at 80%+ of budget need CFO/board re-approval before additional spend>
```

## Output Contract
- All budget variances include dollar amount AND percentage
- Capitalization determinations flagged for HITL — never auto-classifies as expense vs. capital
- Re-approval triggers at 80% of budget consumed flagged proactively

## System Dependencies
- **Reads from:** AP invoices, project approvals register, fixed asset schedule
- **Writes to:** Nothing (outputs status for finance team action)
- **HITL Required:** Before classifying any asset as capital vs. expense

## Test Cases
1. **Golden path:** Clean project register with approved budgets → outputs utilization table and status per project
2. **Edge case:** Invoice arrives without project code → flags as unclassified, requests assignment before posting
3. **Adversarial:** Project at 95% of budget with more spend expected → flags re-approval required before additional POs

## Audit Log
Monthly capex reports retained as evidence of budget compliance. Capitalization decisions documented with approver and rationale.

## Deprecation
Retire when fixed asset management module in ERP (NetSuite, Sage) handles project-level capex tracking natively.
