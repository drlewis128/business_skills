---
name: fin-ops-fixed-asset-manager
description: "Manage fixed assets — capitalization, depreciation schedules, and disposal tracking. Use when the user says 'fixed assets', 'capitalize an asset', 'depreciation', 'depreciation schedule', 'fixed asset schedule', 'asset register', 'capitalize vs expense', 'GAAP capitalization', 'PP&E', 'property plant and equipment', 'dispose of an asset', 'asset disposal', 'depreciation expense', 'depreciation methods', 'useful life', 'CIP', 'construction in progress', 'leasehold improvements', 'bonus depreciation', or 'Section 179'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--asset <description>] [--cost <$>] [--action <capitalize|depreciate|dispose|review>]"
---

# Fixed Asset Manager

Manage fixed assets for MBL portfolio companies — making the capitalize-vs-expense determination, building and maintaining depreciation schedules, tracking asset disposals, and ensuring the fixed asset balance sheet account is accurately stated. Fixed asset management is often neglected at small PE portfolio companies: equipment is expensed when it should be capitalized (understating assets, understating profit), fully depreciated assets remain on the books at zero carrying value, and assets that have been sold or disposed of are never removed from the register. Dr. Lewis maintains a clean fixed asset register as part of the financial close discipline.

## When to Use
- A capital expenditure is being considered or has been made
- Adding a new asset to the fixed asset register
- Monthly close — recording depreciation expense
- An asset has been sold, disposed of, or fully depreciated
- CPA requests the fixed asset schedule for audit
- Tax strategy — evaluating Section 179 or bonus depreciation

## Fixed Asset Framework

```
Capitalization policy (capitalize vs. expense):
  Capitalize when ALL three conditions are met:
    1. Cost ≥ $2,500 (MBL portfolio capitalization threshold; CPA may advise on tax threshold)
    2. Useful life > 1 year
    3. The asset maintains or improves the company's operating capacity
    
  Expense (do not capitalize) when:
    Cost < $2,500 (regardless of useful life)
    Life ≤ 1 year (consumable, even if expensive)
    Routine maintenance (maintaining existing capacity, not improving it)
    Repairs that restore an asset to its prior condition (not betterments)
    
  Borderline determination: If a purchase is $2,500-$5,000 and you're unsure — ask Dr. Lewis
  
  Capitalization policy table:
    Medical equipment (Allevio): Capitalize if ≥$2,500
    Computers/laptops: Expense (typically < $2,500 or short useful life)
    Software (perpetual license): Capitalize if ≥$2,500
    Software (SaaS/subscription): EXPENSE — not capitalized (operating cost)
    Leasehold improvements: Capitalize; depreciate over shorter of lease term or useful life
    Oil field equipment (HIVE): Capitalize; depreciate per oil field useful life
    Vehicles: Capitalize if ≥$2,500; business-use percentage documentation required
    Furniture: Capitalize if ≥$2,500
    
GAAP depreciation methods:
  Straight-line (most common for PE portfolio companies):
    Annual depreciation = (Cost − Salvage value) ÷ Useful life in years
    Simplest; consistent; preferred for GAAP financial reporting
    
  Standard useful lives (GAAP):
    Buildings: 39 years (commercial)
    Leasehold improvements: Shorter of lease term or 15 years
    Medical equipment: 5-7 years
    Computer equipment: 3-5 years
    Vehicles: 5 years
    Furniture: 7 years
    Oil field equipment (HIVE): 7-15 years (asset-specific)
    Software (perpetual license): 3 years
    
  Tax depreciation (separate from GAAP book depreciation):
    Section 179: First-year expensing of qualifying property; up to $1.16M limit (2023); 
      reduces taxable income but creates a book-tax difference
    Bonus depreciation: 60% first-year expensing for qualifying property placed in service in 2024
    Dr. Lewis works with the CPA to optimize Section 179 and bonus depreciation elections
    Note: Tax depreciation reduces tax liability but does NOT change GAAP book depreciation
    The financial statements show GAAP depreciation; tax returns show accelerated depreciation
    
Fixed asset register (maintain in Excel or QuickBooks fixed asset module):
  Columns: Asset #; Description; Date placed in service; Cost; Salvage value; Useful life; 
    Method; Annual depreciation; Accumulated depreciation; Net book value; 
    Location/entity; Status (active/disposed)
    
Monthly depreciation entry (journal entry):
  Debit: Depreciation Expense (6999 or appropriate expense account)
  Credit: Accumulated Depreciation (contra-asset, 1310)
  Amount: Monthly depreciation = Annual depreciation ÷ 12
  
Asset disposal:
  When an asset is sold, retired, or disposed of:
  1. Calculate net book value at disposal date: Cost − Accumulated depreciation to disposal date
  2. Record disposal:
    Debit: Cash received (if any)
    Debit: Accumulated Depreciation (remove from books)
    Debit or Credit: Gain/Loss on disposal
    Credit: Fixed Asset (remove cost from books)
  3. Remove asset from the fixed asset register; mark as Disposed with date and reason
  4. For a disposed asset that was written off (no sale proceeds): 
    Record the loss (net book value at disposal = loss)
    
CIP — Construction in Progress:
  When: A major project is not yet placed in service (clinic buildout, major equipment installation)
  Accounting: Capitalize costs as incurred into CIP account; no depreciation until placed in service
  Transfer: When the project is complete and placed in service → Transfer from CIP to the appropriate fixed asset category → Begin depreciation
```

## Output Format

```markdown
# Fixed Asset Register — [Entity] as of [Date]
**Total gross fixed assets:** $[X] | **Total accumulated depreciation:** ($[X]) | **Net book value:** $[X]

---

## Fixed Asset Schedule

| Asset # | Description | In service date | Cost | Salvage | Life | Method | Annual depr. | Accum. depr. | Net BV | Status |
|---------|------------|----------------|------|---------|------|--------|-------------|-------------|--------|--------|
| FA-001 | [Ultrasound machine] | [2023-04-01] | $35,000 | $2,000 | 7 yr | SL | $4,714 | $14,143 | $20,857 | Active |
| FA-002 | [Leasehold improvements] | [2022-01-01] | $85,000 | $0 | 5 yr (lease) | SL | $17,000 | $51,000 | $34,000 | Active |
| FA-003 | [Vehicle — Ford F-150] | [2024-06-15] | $48,000 | $10,000 | 5 yr | SL | $7,600 | $3,800 | $44,200 | Active |
| FA-004 | [Laptop — MacBook Pro] | [2023-01-01] | $2,100 | — | — | — | — | — | — | EXPENSED (<$2,500) |
| **Totals** | | | **$[X]K** | | | | **$[X]K** | **($[X]K)** | **$[X]K** | |

---

## Monthly Depreciation Entry

**Month:** [June 2026]
**Monthly depreciation:** $[X] (= annual $[X] ÷ 12)

| Account | Debit | Credit |
|---------|-------|--------|
| Depreciation Expense (6999) | $[X] | |
| Accumulated Depreciation (1310) | | $[X] |

---

## Assets Placed in Service This Month

| Description | Cost | Capitalized? | If yes: In service date, life, annual depr. |
|------------|------|-------------|---------------------------------------------|
| [New exam table × 2] | $5,800 | ✅ Yes | [Date]; 7 yr SL; $828/yr |

---

## Assets Disposed This Month

| Asset # | Description | Disposal date | Reason | Proceeds | Net BV | Gain/(Loss) |
|---------|------------|--------------|--------|---------|--------|------------|
| [FA-007] | [Old ECG machine] | [Date] | Replaced | $0 | $1,200 | ($1,200) loss |

---

## Fully Depreciated Assets (Net BV = $0, still in use)

| Asset # | Description | Original cost | In service date | Status |
|---------|------------|--------------|----------------|--------|
| [FA-002] | [Old clinic computers] | $[X] | [Date] | Still in use — no depreciation; retain on register |
```

## Output Contract
- Capitalization policy is applied consistently — inconsistent capitalization (sometimes expensing, sometimes capitalizing assets of similar size and nature) is a GAAP violation and creates financial statement comparability problems; Dr. Lewis applies the $2,500 capitalization threshold consistently; a $3,000 medical device is always capitalized; a $2,000 office chair is always expensed; the controller does not make capitalization decisions independently for assets in the $2,500-$5,000 range without Dr. Lewis confirmation; CPA may recommend a different tax capitalization threshold for tax purposes, which does not change the GAAP book treatment
- Monthly depreciation must be recorded in the close — depreciation is a non-cash expense that reduces the carrying value of fixed assets; if depreciation is not recorded monthly, EBITDA is overstated (depreciation is an operating expense below EBITDA in EBITDA calculations, but it is reflected in operating income and net income) and fixed asset NBV is overstated; Dr. Lewis includes monthly depreciation as a required adjusting journal entry in the close checklist (fin-ops-close-calendar-manager); the fixed asset schedule drives the depreciation amount; if a new asset was placed in service this month, depreciation begins the month of placement in service (half-month convention if CPA recommends it)
- Dispose of assets when they leave service — a fixed asset that has been scrapped, sold, donated, or abandoned must be removed from the register even if fully depreciated (net book value = $0); a fully depreciated asset has a cost and accumulated depreciation on the balance sheet that offset each other, but the register is inaccurate if it contains assets that are gone; Dr. Lewis reviews the fixed asset register annually to identify assets that are no longer in service and processes the disposals; the CPA will test fixed assets in the audit by physically confirming selected assets — an asset the auditor can't find triggers questions about the accuracy of the register
- HITL required: Controller maintains the fixed asset register and records monthly depreciation; Dr. Lewis reviews any capitalization determination for assets in the $2,500-$5,000 range; Dr. Lewis reviews the fixed asset register quarterly; all fixed asset disposals require Dr. Lewis approval; any major capital expenditure (>$25,000) requires CEO approval and Matt Mathison notification per the capital expenditure policy

## System Dependencies
- **Reads from:** Vendor invoices for capital purchases (Bill.com/QuickBooks); lease agreements (for leasehold improvement useful life); CPA guidance on tax depreciation elections; prior year fixed asset schedule
- **Writes to:** Fixed asset register (Excel or QuickBooks FA module); QuickBooks (depreciation journal entry — monthly; disposal entries); balance sheet (FA gross; accumulated depreciation; net BV); CPA audit PBC package (Section 5 — fixed assets)
- **HITL Required:** Controller maintains register and records entries; Dr. Lewis approves all capitalization decisions >$2,500; Dr. Lewis reviews quarterly; all disposals require Dr. Lewis approval; CapEx >$25K requires CEO approval and Matt Mathison notification

## Test Cases
1. **Golden path:** Allevio purchases a new medical exam table — 2 units × $2,900 each = $5,800 invoice → $5,800 > $2,500 threshold ✅; useful life >1 year ✅; maintains operating capacity ✅; Dr. Lewis confirms capitalization; placed in service June 15, 2026; useful life: 7 years (medical equipment); salvage value: $0; annual depreciation: $5,800 ÷ 7 = $828.57/year = $69.05/month; controller adds to fixed asset register as FA-022; monthly depreciation entry added: $69.05 debit Depreciation Expense; $69.05 credit Accumulated Depreciation; June depreciation entry includes this new asset; QuickBooks updated
2. **Edge case:** Allevio decides to replace the old ECG machine (fully depreciated, cost $8,500) with a new unit — old unit sold for $0 (scrapped) → Old unit: cost $8,500; accumulated depreciation $8,500; NBV $0; disposal entry: Debit Accum. Depreciation $8,500; Credit FA (Gross) $8,500; no gain/loss (NBV was $0; proceeds $0); controller removes FA-007 from the register (marked Disposed); new ECG machine: cost $18,000; > $2,500 threshold; useful life 7 years; added as FA-023; depreciation begins month of placement in service; annual depreciation $2,571/year = $214/month; register updated
3. **Adversarial:** A CEO wants to capitalize $1,800 of monthly office supply purchases "because we need them every year" → Recurring purchases are not capital expenditures; capitalization requires that the item have a useful life >1 year as a standalone asset — not that the company consistently buys supplies; office supplies are consumed immediately and are an operating expense; Dr. Lewis explains: "Capitalization requires each item to have a useful life >1 year as an asset that the company controls. Office supplies are consumed — they're expensed in the period purchased. What specifically are you trying to capitalize? If it's a piece of equipment or furniture, let's evaluate it individually." The CEO may be trying to smooth expenses or meet an EBITDA target; if so, Dr. Lewis identifies the underlying concern and addresses it directly rather than misapplying capitalization

## Audit Log
All fixed asset register versions retained by quarter. Depreciation schedule retained by month. Capitalization determination documentation retained. Disposal records retained permanently (cost and disposal date retained even if the asset is removed from the active register). CPA audit fixed asset workpapers retained by year.

## Deprecation
Retire when each portfolio company has a controller who maintains the fixed asset register and records monthly depreciation independently — with Dr. Lewis reviewing quarterly and approving all capitalization decisions and disposals.
