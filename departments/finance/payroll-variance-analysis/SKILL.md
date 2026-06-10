---
name: payroll-variance-analysis
description: "Compare payroll runs period-over-period and flag headcount and compensation changes. Use when the user says 'payroll variance', 'payroll analysis', 'why did payroll change', 'payroll comparison', 'headcount change in payroll', 'salary variance', or 'compare payroll runs'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<current-payroll-file> [--prior-payroll <file>]"
---

# Payroll Variance Analysis

Compare consecutive payroll runs to detect headcount changes, compensation adjustments, and anomalies before they become financial surprises.

## When to Use
- After every payroll run (compare to prior period)
- During month-end close (reconcile payroll to GL)
- When payroll cost differs from budget expectation
- Before distributing payroll to employees (pre-flight check)

## Variance Categories

### Headcount Changes
- New hires (first appearance in payroll)
- Terminations (last appearance or zero pay)
- Leaves of absence (pay reduction or cessation)
- Status changes (FT → PT or vice versa)

### Compensation Changes
- Salary/rate changes (new rate vs prior rate)
- Bonus or one-time payments (not in prior period)
- Commission payments
- Overtime (amount vs budget)

### Deduction Changes
- Benefit enrollment changes
- Garnishments added or removed
- 401k contribution changes
- Tax withholding changes (new W-4)

### Anomalies
- Employee paid more than their stated salary (annualized)
- Employee paid in two different departments in same period
- Employee paid with incorrect pay frequency
- Ghost employee check (name not in HR system — from `fraud-signal-scoring`)

## Output Format

```markdown
# Payroll Variance Report
**Current Period:** <dates> | **Prior Period:** <dates>
**Current Total:** $X | **Prior Total:** $X | **Variance:** +/-$X (+/-X%)

## Headcount Changes
| Name | Change | Effective | $ Impact |
|------|--------|-----------|---------|
| Jane Doe | New hire | Jun 1 | +$6,250/mo |
| Bob Smith | Termination | May 31 | -$8,333/mo |

**Net headcount change:** <N> | **Net payroll impact:** +/-$X/mo

## Compensation Changes
| Name | Prior Rate | New Rate | Change | Reason |
|------|-----------|----------|--------|--------|
| Alice Johnson | $75,000 | $80,000 | +$5,000 | Annual review (per HR) |

## One-Time Items This Period
- Bonus payments: $X (N employees)
- Commission payments: $X

## Anomalies — Review Required
<any items from anomaly checks>

## GL Reconciliation
Total payroll per run: $X
Expected GL entry (Salaries + Taxes + Benefits): $X
Difference: $0 ✅ / $X ⚠️
```

## Output Contract
- Every variance is attributed (headcount, rate change, one-time) — no unexplained differences
- Anomalies flagged separately and always reviewed
- CONFIDENTIAL — payroll data is sensitive, Tier 1 distribution only

## System Dependencies
- **Reads from:** Payroll system exports (current and prior period)
- **Writes to:** Nothing
- **HITL Required:** Before any payroll adjustments are processed
- **Data sensitivity:** CONFIDENTIAL — do not share with Tier 3

## Deprecation
Retire when payroll platform generates automated variance reports.
