---
name: depreciation-schedule-builder
description: "Build asset depreciation schedules using GAAP or tax methods. Use when the user says 'depreciation schedule', 'depreciation calculation', 'straight-line depreciation', 'MACRS', 'asset schedule', 'book vs tax depreciation', 'Section 179', or 'depreciate this asset'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<asset-description> --cost <amount> --life <years> [--method <sl|macrs|ddb>] [--salvage <amount>]"
---

# Depreciation Schedule Builder

Calculate asset depreciation schedules for book (GAAP) and tax purposes. Output period-by-period depreciation, accumulated depreciation, and net book value.

## When to Use
- New fixed asset purchase → build schedule before posting
- Month-end close → verify depreciation entries are correct
- Tax planning → calculate MACRS vs. Section 179 vs. bonus depreciation
- Selling an asset → determine gain/loss (proceeds vs. net book value)
- Audit prep → support depreciation expense with underlying schedules

## Supported Methods

### Book (GAAP)
| Method | Use Case | Formula |
|--------|----------|---------|
| Straight-Line (SL) | Most assets | (Cost - Salvage) / Useful Life |
| Double Declining Balance (DDB) | Accelerated book depreciation | 2 × (1/Life) × Book Value |
| Units of Production | Manufacturing equipment | (Cost - Salvage) / Total Units × Units Used |

### Tax (IRS)
| Method | Use Case |
|--------|----------|
| MACRS | Standard for most business assets |
| Section 179 | Full expense in year 1 (up to annual limit: $1.16M in 2024) |
| Bonus Depreciation | 60% first-year bonus in 2024 (phasing down) |

## MACRS Useful Life Reference

| Asset Type | MACRS Class | GAAP Useful Life |
|-----------|-------------|-----------------|
| Cars / light trucks | 5-year | 5 years |
| Computers / tech | 5-year | 3-5 years |
| Office furniture | 7-year | 7 years |
| Leasehold improvements | 15-year | Shorter of lease or 15 yr |
| Commercial real estate | 39-year | 30-40 years |
| Software (purchased) | 3-year | 3 years |

## Output Format

```markdown
# Depreciation Schedule — <Asset Name>
**Asset ID:** <id> | **Entity:** <entity>
**Method:** <SL / DDB / MACRS> | **Placed in Service:** <date>

## Asset Details
| Field | Value |
|-------|-------|
| Cost basis | $X |
| Salvage value | $X |
| Depreciable basis | $X |
| Useful life | X years |
| Monthly depreciation | $X |

## Schedule

| Year | Period | Depreciation | Accumulated Depreciation | Net Book Value |
|------|--------|-------------|--------------------------|----------------|
| 2024 | Jan | $X | $X | $X |
| 2024 | Feb | $X | $X | $X |
| ... | ... | ... | ... | ... |
| 2029 | Dec | $X | $X | $0 (fully depreciated) |

## Book vs. Tax Comparison (if applicable)
| | Book (SL) | Tax (MACRS) | Difference |
|-|-----------|-------------|------------|
| Year 1 | $X | $X | $X |
| Total Life | $X | $X | $0 (always zero over full life) |

## Journal Entry
Monthly:
  Dr: Depreciation Expense    $X
  Cr: Accumulated Depreciation  $X
```

## Output Contract
- Always shows both book and tax schedules when MACRS is requested
- Salvage value of $0 assumed when not provided; flagged for confirmation
- HITL required before posting depreciation entries to GL

## System Dependencies
- **Reads from:** Asset details provided in prompt or from fixed asset register
- **Writes to:** Nothing (outputs schedule for accounting team)
- **HITL Required:** Before posting any depreciation entries or tax elections

## Test Cases
1. **Golden path:** $50,000 equipment, 5-year SL, $5,000 salvage → clean monthly schedule with $750/month depreciation
2. **Edge case:** Asset placed mid-month → applies half-month convention in year 1 and year of disposal
3. **Adversarial:** Section 179 election requested on passenger vehicle → flags luxury auto limits, outputs corrected deduction cap

## Audit Log
Generated schedules referenced by asset ID and generation date. Retained as support for annual depreciation expense on tax returns and audited financials.

## Deprecation
Retire when fixed asset module in ERP calculates and posts depreciation automatically.
