---
name: fin-ops-tax-provision-preparer
description: "Prepare the income tax provision and manage deferred tax calculations. Use when the user says 'tax provision', 'income tax provision', 'deferred tax', 'deferred tax asset', 'deferred tax liability', 'ASC 740', 'GAAP tax', 'book-tax difference', 'tax accrual', 'effective tax rate', 'income tax expense', 'tax rate', 'temporary difference', 'permanent difference', 'NOL', 'net operating loss', 'tax provision review', 'R&D credit', 'tax benefit', 'tax expense', or 'tax footnote'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY or YYYY-QN>] [--structure <c-corp|s-corp|llc|partnership>] [--action <prepare|review|estimate|reconcile>]"
---

# Tax Provision Preparer

Prepare and manage the income tax provision for MBL portfolio companies — calculating income tax expense for GAAP financial statements, managing deferred tax assets and liabilities, and ensuring the provision aligns with the CPA firm's year-end tax return. Tax provisions are one of the most complex areas of GAAP accounting and the area where small company controllers most commonly make mistakes; an incorrect tax provision overstates or understates net income and distorts EBITDA-to-net-income reconciliations. Dr. Lewis works closely with the CPA firm to ensure the provision is accurate and consistent with the tax return.

## When to Use
- Year-end close — preparing the annual income tax provision for GAAP financials
- Quarterly interim provision — if required by investors or lenders (simplified approach for PE companies)
- A significant taxable event occurred (asset sale, gain recognition, large loss)
- Evaluating the impact of a net operating loss (NOL) carryforward
- CPA firm requests the book-tax reconciliation from Dr. Lewis before finalizing the return

## Tax Provision Framework

```
Entity structure determines provision complexity:

  S-CORP or LLC (pass-through entities):
    Entity-level federal income tax: $0 (income passes through to owner/shareholders)
    Entity-level state income tax: May be required in some states (e.g., California minimum franchise tax; some state-level pass-through entity taxes PTET)
    Tax provision entry for S-corps (if applicable):
      DR  State Income Tax Expense
        CR  State Income Tax Payable
    Owner-level tax distribution: The company may distribute cash to owners to fund their personal tax liability on the pass-through income; this is a distribution, not an expense
    Pass-through entity tax (PTET): Many states now allow S-corps and partnerships to pay the state income tax at the entity level (and deduct it); consult the CPA for applicability
    MBL entities: HIVE Partners and most LLC structures are pass-through; Allevio and Column6 structure should be confirmed with the CPA
    
  C-CORP:
    Federal corporate income tax: 21% flat rate (current federal rate)
    State income tax: Varies by state (Arizona: 4.9%; varies for multi-state apportionment)
    Provision is required under ASC 740
    
  ASC 740 PROVISION (for C-corps or entities with state-level income tax):
  
  Step 1 — CALCULATE CURRENT TAX EXPENSE:
    Current year taxable income: Start with GAAP net income; apply book-tax adjustments
    Common book-tax adjustments:
      + Bonus depreciation (tax deducts 100% in year 1; GAAP depreciates over useful life)
      + Section 179 expense (tax immediate deduction; GAAP capitalizes)
      − Accruals that are not yet deductible for tax (accrual method: deductible when paid in some cases)
      + Meals and entertainment (50% deductible for tax; 100% expensed for GAAP)
    Taxable income = GAAP net income +/− book-tax adjustments
    Current tax expense = Taxable income × current tax rate
    
  Step 2 — CALCULATE DEFERRED TAXES:
    Temporary differences: Timing differences between GAAP income and tax income that will reverse in future years
    Example temporary difference: Accelerated tax depreciation (bonus depreciation) creates a deferred tax liability
      GAAP: $10,000 equipment depreciated over 5 years = $2,000/year
      Tax: Same equipment 100% deducted in year 1 ($10,000)
      Year 1 difference: Tax deduction = $10,000; GAAP expense = $2,000; difference = $8,000
      Tax paid less in Year 1 (deferred tax liability: the company owes more tax in future years)
      Deferred tax liability = $8,000 × 21% (federal rate) = $1,680
      Journal entry: DR Deferred Tax Expense; CR Deferred Tax Liability
      
    Net operating loss (NOL) carryforward:
      If taxable income is negative (a tax loss), the loss can be carried forward to offset future taxable income
      Deferred tax asset (DTA): The future tax benefit of the NOL = NOL × tax rate
      Valuation allowance: If it is "more likely than not" that the DTA will not be realized (because the company won't have future taxable income), record a valuation allowance to reduce the DTA
      This is a significant judgment; consult the CPA firm before recording or releasing a valuation allowance
      
  Step 3 — RECORD THE PROVISION:
    Current tax expense: DR Income Tax Expense / CR Income Tax Payable
    Deferred tax expense: DR or CR Deferred Tax Expense / CR or DR Deferred Tax Liability or Asset
    Total income tax expense = Current + Deferred
    
  Step 4 — EFFECTIVE TAX RATE:
    Effective tax rate = Income Tax Expense ÷ Pre-tax Income
    Expected effective rate for a C-corp: ~25-27% (federal 21% + state 4-6%)
    If the effective rate is significantly different from 25-27%: Investigate; may be a provision error or a significant permanent difference (R&D credit, meals and entertainment, non-deductible compensation)
    
  Step 5 — RECONCILE TO THE TAX RETURN:
    At year-end, the CPA prepares the actual tax return
    The provision calculated in Step 1-4 should approximate the final tax liability
    Any difference between the provision and the return is recorded as a "provision to return" adjustment
    Material differences should be investigated and explained
    
Interim quarterly provision (simplified — for PE companies):
  Estimate annual effective tax rate
  Apply to year-to-date pre-tax income: interim tax expense = YTD pre-tax income × ETR
  This is simpler than a full quarterly provision and acceptable for internal reporting and PE investors
  Annual provision (at year-end) is the definitive calculation; interim is an estimate

Pass-through entity coordination:
  For Allevio and HIVE (if LLC or S-corp):
    No entity-level federal provision required
    But: Calculate the estimate of owner-level tax liability so Matt Mathison knows the expected personal tax obligation from MBL distributions
    This is informational, not a GAAP provision, but is critical for cash planning (distributions to fund personal taxes)
    Formula: Estimated pass-through income × owner's estimated marginal rate (typically 37% federal + state)
    This estimate should be prepared annually and discussed with Matt Mathison before year-end distributions are declared
```

## Output Format

```markdown
# Income Tax Provision — [Entity] [Year]
**Entity type:** [C-Corp / S-Corp / LLC] | **Tax jurisdiction:** [Federal + State(s)]
**Prepared by:** Dr. Lewis + CPA firm | **CPA firm:** [Name] | **Date:** [Date]

---

## Book-Tax Reconciliation (C-Corp only)

| Item | GAAP Amount | Tax Amount | Difference | Direction |
|------|------------|-----------|-----------|-----------|
| Net income (GAAP) | $[X] | | | |
| + Bonus depreciation (tax excess) | — | ($[X]) | ($[X]) | Temporary |
| + Non-deductible meals | $[X] | $[X] × 50% | $[X] × 50% | Permanent |
| + Accruals not yet deductible | $[X] | — | $[X] | Temporary |
| **Estimated taxable income** | | | **$[X]** | |

---

## Current and Deferred Tax Calculation

| Component | Amount | Rate | Tax |
|-----------|--------|------|-----|
| Estimated taxable income | $[X] | 21% federal + [X]% state | |
| **Current tax expense** | | | **$[X]** |
| | | | |
| Temporary differences (net) | $[X] | 21% + [X]% state | |
| **Deferred tax expense (benefit)** | | | **$[X]** |
| | | | |
| **Total income tax expense** | | | **$[X]** |
| **Effective tax rate** | | | **[X]%** |

---

## Deferred Tax Roll-Forward

| Deferred Tax | Beginning Balance | Current Year Activity | Ending Balance |
|-------------|------------------|----------------------|----------------|
| DTA — NOL carryforward | $[X] | $[X] | $[X] |
| DTL — Accelerated depreciation | ($[X]) | ($[X]) | ($[X]) |
| **Net DTA / (DTL)** | **$[X]** | | **$[X]** |

---

## Pass-Through Income Estimate (S-Corp / LLC — informational only)

**Pass-through income to owners:** $[X]K
**Estimated owner-level federal tax (37% marginal):** $[X]K
**Estimated state tax:** $[X]K
**Total estimated owner tax obligation:** $[X]K
**Recommended distribution for tax funding:** $[X]K (Matt Mathison decision)

---

## CPA Coordination

**Provision shared with CPA firm:** [Date]
**CPA review status:** [In review / Confirmed / Provision to return adjustment: $[X]]
**Any material differences from tax return:** [None / [Specific item]]
```

## Output Contract
- The tax provision is a CPA collaboration, not a solo exercise — Dr. Lewis prepares the initial provision estimate and the book-tax reconciliation, but the year-end provision is confirmed with the CPA firm before it is finalized in the financial statements; the CPA firm knows the tax return positions (elections, credits, timing differences) that Dr. Lewis may not have full visibility into; any provision that Dr. Lewis prepares independently without CPA confirmation risks a "provision to return" adjustment that creates a year-end GAAP income adjustment; the standard process is: Dr. Lewis prepares the estimate, shares it with the CPA firm in November, CPA confirms or adjusts, Dr. Lewis finalizes for the year-end close
- Effective tax rate is the quick sanity check — for a C-corp, the expected effective tax rate is approximately 25-27% (21% federal + state); if the provision produces an effective rate significantly different from this range (e.g., 15% or 40%), Dr. Lewis investigates before finalizing; common reasons for a low effective rate: R&D credits, significant NOL usage, state tax credits; common reasons for a high effective rate: non-deductible expenses, valuation allowance on DTA, prior year provision to return; understanding the effective rate tells the story of the provision
- Pass-through income estimates are an operational necessity for Matt Mathison — at MBL portfolio companies structured as pass-throughs (LLC, S-corp), the entity pays no entity-level federal tax, but Matt Mathison and other owners pay personal income tax on their share of the pass-through income; Dr. Lewis prepares an estimate of the expected pass-through income and the corresponding personal tax obligation before year-end so Matt Mathison can plan distributions to fund the tax liability; failing to prepare this estimate leads to Matt Mathison being surprised by a large personal tax bill with insufficient liquidity to pay it — a situation that is entirely avoidable with planning
- HITL required: Dr. Lewis prepares the initial provision; CPA firm confirms and adjusts as needed; Matt Mathison reviews the pass-through income estimate and authorizes any tax-funding distributions; valuation allowance decisions (recording or releasing a DTA valuation allowance) require CPA and Dr. Lewis joint assessment; material differences between the provision and the tax return must be explained and corrected before financial statements are finalized; board and LP reports include the income tax provision as a financial statement line item

## System Dependencies
- **Reads from:** GAAP financial statements (net income, pre-tax income); CPA firm's tax return draft and book-tax reconciliation; fixed asset schedule (bonus depreciation timing differences); QuickBooks GL (income tax payable, deferred tax accounts); prior year provision and tax return; entity structure documentation (C-corp vs. LLC vs. S-corp)
- **Writes to:** QuickBooks journal entries (income tax expense; income tax payable; deferred tax assets/liabilities); CPA firm provision memo (SharePoint/Finance/<Company>/Tax/TaxProvision/[Year]/); Matt Mathison pass-through income estimate; annual financial statements (income tax expense line; DTA/DTL on balance sheet); management representation letter (provision confirmation)
- **HITL Required:** Dr. Lewis prepares; CPA firm confirms; Matt Mathison reviews pass-through estimate and authorizes distributions; valuation allowance = Dr. Lewis + CPA joint decision; board and LP reports include finalized provision; any material provision-to-return adjustment requires CEO awareness

## Test Cases
1. **Golden path:** Allevio year-end provision (assuming C-corp) — GAAP net income $285K → Book-tax adjustments: + Bonus depreciation taken on $45K equipment ($45K tax deduction vs. $9K GAAP depreciation in Year 1 = $36K temporary difference); + Non-deductible meals: $8,200 in meals × 50% non-deductible = $4,100 permanent difference; Total taxable income estimate: $285K − $36K (bonus dep timing) + $4,100 (permanent) = $253,100; Current tax (21% federal + 4.9% AZ state): $253,100 × 25.9% = $65,554; Deferred tax liability: $36,000 × 25.9% = $9,324 (will reverse over 4 years as GAAP depreciation continues); Total income tax expense: $65,554 + $9,324 = $74,878; Effective tax rate: $74,878 ÷ $285K pre-tax = 26.3% (within expected range ✅); Dr. Lewis shares estimate with CPA firm; CPA confirms: correct, plus they identified a $3,200 R&D credit for software development → reduces current tax by $3,200; final provision: $71,678; effective rate: 25.2%; JEs posted; financial statements finalized; balance sheet includes DTA/DTL; provision filed with CPA
2. **Edge case:** HIVE Partners (LLC partnership) — no entity-level federal tax, but pass-through income is $380K → Dr. Lewis calculates: $380K HIVE net income × 99% Matt Mathison ownership = $376,200 pass-through to Matt Mathison; Federal tax at 37% marginal: $139,194; Arizona state at 4.5%: $16,929; Total estimated personal tax from HIVE: $156,123; Dr. Lewis presents to Matt Mathison: "HIVE's pass-through income for the year is approximately $380K. Your estimated personal tax obligation from HIVE alone is roughly $156K. Recommend a $175K distribution before December 31 to ensure you have funds available for April 15 (with cushion for AZ estimated taxes). This is an estimate — your CPA should confirm with your full tax picture." Matt Mathison reviews and authorizes the distribution; Dr. Lewis processes the distribution from HIVE operating accounts; the distribution is not an expense (it's an equity reduction); Dr. Lewis records: DR Equity / CR Cash; QuickBooks updated; Matt Mathison's CPA receives the K-1 in February with the final pass-through income number
3. **Adversarial:** The CPA firm sends a note in February: "The year-end provision you recorded for Allevio was $74,878 but the actual tax return liability is $82,400 — a provision-to-return adjustment of $7,522 is needed" → Dr. Lewis investigates the difference: the CPA identified an additional $29,000 in taxable income from a deferred compensation arrangement that Dr. Lewis didn't have visibility into; the provision was prepared with incomplete information; adjustment: DR Income Tax Expense $7,522 / CR Income Tax Payable $7,522; this is recorded in Q1 of the following year (when the return is finalized); Dr. Lewis updates the financial statements; CEO is informed of the adjustment; the root cause is addressed: Dr. Lewis will request a comprehensive list of all book-tax differences from the CPA firm in October (before the year-end provision is prepared) rather than relying solely on the information in Dr. Lewis's possession; this ensures the provision incorporates all items the CPA firm is tracking

## Audit Log
All tax provision calculations retained. CPA firm correspondence on provision confirmation retained. Book-tax reconciliation worksheets retained. Deferred tax roll-forwards retained. Pass-through income estimates retained. Matt Mathison distribution authorizations retained. Provision-to-return adjustments retained with root cause explanation. Valuation allowance decisions retained.

## Deprecation
Retire when each portfolio company has a CFO who manages the tax provision in coordination with the CPA firm — with Dr. Lewis reviewing the final provision, Matt Mathison reviewing the pass-through income estimate, and the CPA firm confirming the final numbers.
