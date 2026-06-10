---
name: tax-provision-estimator
description: "Estimate income tax provision and current vs. deferred tax components for financial reporting. Use when the user says 'tax provision', 'income tax estimate', 'tax accrual', 'current vs deferred tax', 'ASC 740', 'book-tax difference', 'effective tax rate', or 'quarterly tax estimate'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM>] [--ytd-income <amount>]"
---

# Tax Provision Estimator

Estimate the income tax provision (current and deferred components) for interim financial reporting under ASC 740. Provides management-level estimates — CPA review required before booking.

## When to Use
- Monthly and quarterly close (estimate tax accrual)
- Before finalizing financial statements presented to lenders or investors
- Annual tax planning (estimate full-year effective tax rate)
- When book income diverges significantly from prior periods

## ASC 740 Framework

### Current Tax
Tax payable (or receivable) on this year's taxable income:
- Starts with GAAP pre-tax income
- Add back: book expenses not deductible for tax (meals 50%, entertainment, fines)
- Deduct: tax deductions not in book income (accelerated depreciation, Section 179)
- Apply: applicable federal rate (21% for C-Corps) + state blended rate

### Deferred Tax
Tax effect of temporary differences between book and tax:
- **Deferred tax liability:** Book income recognized before tax (will owe tax later)
  - Example: Straight-line book depreciation vs. accelerated MACRS tax depreciation
- **Deferred tax asset:** Tax deduction taken before book expense recognized (or tax recognized before book)
  - Example: Warranty reserves, NOL carryforwards

### Common Book-Tax Differences

| Item | Book Treatment | Tax Treatment | Creates |
|------|---------------|---------------|---------|
| Depreciation (new assets) | Straight-line | MACRS accelerated | DTL |
| Meals & entertainment | 100% expense | 50% deductible | Permanent difference |
| Section 179 / Bonus depreciation | Capitalize | Full deduction | DTL (temporary) |
| Accrued vacation | Expense when earned | Deductible when paid | DTA |
| Net operating loss | Income statement | Carryforward | DTA |
| Unrealized gains | Not recognized | Not recognized | N/A |

## Standard Tax Rates (2024-2026)

| Level | Rate |
|-------|------|
| Federal C-Corp | 21% |
| Utah state (HIVE, MBL) | 4.55% |
| Blended (approx.) | ~25.5% |
| Pass-through / Flow-through | Individual rates apply (varies) |

## Output Format

```markdown
# Tax Provision Estimate — <Entity> — <period>
**Entity type:** C-Corp / S-Corp / LLC
⚠️ DRAFT — Requires CPA Review Before Booking

## Pre-Tax Income
GAAP Pre-Tax Income: $X

## Book-Tax Adjustments
| Item | Book | Tax | Difference | Type |
|------|------|-----|------------|------|
| Depreciation | $X | $X | $X | Temporary — creates DTL |
| Meals & entertainment | $X | $X | $X | Permanent — no deferred |
| Section 179 | — | $X | $X | Temporary — creates DTL |
| Accrued PTO | $X | $0 | $X | Temporary — creates DTA |

**Taxable Income (estimated):** $X

## Current Tax Provision
Federal: $X × 21% = $X
State (blended): $X × X% = $X
**Current tax: $X**

## Deferred Tax Activity
Deferred tax liabilities, net change: $X
Deferred tax assets, net change: ($X)
**Net deferred tax expense (benefit): $X**

## Total Tax Provision
| Component | Amount |
|-----------|--------|
| Current tax | $X |
| Deferred tax | $X |
| **Total provision** | **$X** |
| Effective tax rate | X% |

## Journal Entry (for CPA confirmation)
  Dr: Income Tax Expense    $X
  Cr: Current Tax Payable   $X
  Cr: Deferred Tax Liability $X
```

## Output Contract
- Always labeled "DRAFT — Requires CPA Review Before Booking"
- Permanent differences distinguished from temporary (permanent don't create deferred tax)
- Pass-through entities flagged separately — no entity-level federal income tax
- HITL required before any tax provision is posted to the general ledger

## System Dependencies
- **Reads from:** YTD P&L (pre-tax income), depreciation schedules, prior year deferred tax balances
- **Writes to:** Nothing (outputs provision estimate for CPA review)
- **HITL Required:** CPA/tax advisor must review before booking — this is an estimate, not a filing

## Test Cases
1. **Golden path:** C-Corp with $500K GAAP pre-tax income, no unusual items → clean current tax calculation at 25.5% blended rate
2. **Edge case:** Company with large Section 179 election creating DTL → correctly shows current tax higher than book provision, DTL offsets
3. **Adversarial:** Pass-through entity with income → flags "no entity-level federal tax" for LLC/S-Corp, redirects to individual K-1 analysis

## Audit Log
Tax provision estimates retained with input data and assumptions. Prior period estimates compared to actual tax return for accuracy calibration.

## Deprecation
Retire when CPA firm or tax platform handles quarterly provision calculations with direct system access.
