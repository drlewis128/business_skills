---
name: tax-planning-advisor
description: "Provide tax planning analysis and strategy. Use when the user says 'tax planning', 'tax strategy', 'minimize taxes', 'tax optimization', 'reduce tax liability', 'tax efficiency', 'tax structure', 'year-end tax planning', 'entity tax strategy', 'deduction planning', 'tax advisor', 'tax considerations for the deal', or 'what is the tax impact'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or MBL>] [--event <year-end|deal|distribution|hire>] [--urgency <planning|immediate>]"
---

# Tax Planning Advisor

Analyze tax planning opportunities and flag tax considerations for MBL portfolio companies and MBL Partners. Tax planning is a legitimate tool for reducing tax liability through legal means — entity structure, timing of income and deductions, qualified business income deductions, oil and gas tax preferences, and strategic use of depreciation. It is not tax avoidance or evasion. Good tax planning is integrated into financial decisions, not bolted on at year-end.

## When to Use
- Q4 year-end tax planning — what can be done before December 31 to reduce the tax bill?
- A significant business event (acquisition, distribution, large deduction) has tax implications
- Matt Mathison asks "what is the tax impact of [decision]?"
- Setting up a new portfolio company — entity structure has major tax implications
- Oil and gas context (HIVE) — intangible drilling costs, depletion, energy tax credits
- A deal is being evaluated — asset vs. stock deal has very different tax implications

## Tax Planning Framework

```
Key tax planning areas for MBL:

1. Entity Structure (most impactful — set it right at formation)
   - LLC taxed as partnership: Pass-through; self-employment tax on active income
   - S-Corp election: Reduces self-employment tax on distributions
   - C-Corp: QBI deduction not available; double taxation on distributions
   - MBL standard: LLC/LP structure for most portfolio companies

2. Timing of Income and Deductions
   - Accelerate deductions into current year if higher income expected
   - Defer income into next year if lower tax rate expected
   - Bonus depreciation: 100% in year of purchase (may be phasing out)
   - Section 179: Immediate expensing up to annual limit

3. Oil & Gas Tax Preferences (HIVE Partners)
   - Intangible Drilling Costs (IDCs): 100% deductible in year incurred
   - Depletion allowance: 15% of gross income from production (percentage depletion)
   - Energy tax credits (if applicable — solar, efficiency upgrades)

4. Qualified Business Income (QBI) Deduction (20% deduction for pass-throughs)
   - Applies to active business income, not investment income
   - Income limits apply to service businesses

5. Year-End Moves (before December 31)
   - Prepay deductible expenses (rent, insurance, professional services)
   - Accelerate charitable contributions
   - Max retirement plan contributions (SEP-IRA, Solo 401k for owners)
   - Harvest capital losses against gains

Key rule: All tax decisions require CPA review before implementation.
This skill identifies opportunities — the CPA confirms feasibility and executes.
```

## Output Format

```markdown
# Tax Planning Analysis — <Company / Entity>
**Planning period:** [Q4 YYYY / FY YYYY / Event: <description>]
**Prepared by:** Dr. John Lewis | **CPA review required before action**
**Date:** <Date>

---

## Tax Situation Summary

| | Value | Notes |
|---|---|---|
| Entity type | [LLC/Partnership / S-Corp / C-Corp] | |
| Tax year end | [December 31] | |
| Estimated taxable income (year) | $[X] | [Before planning moves] |
| Estimated federal tax (before planning) | $[X] | [Estimate — CPA to confirm] |
| Estimated state tax | $[X] | [State: [state]] |
| **Estimated total tax burden** | **$[X]** | |

---

## Tax Planning Opportunities

### 1. [Highest Priority Opportunity]

| | |
|---|---|
| **Opportunity** | [Specific description] |
| **Estimated tax savings** | $[X] (estimated) |
| **Action required** | [What needs to happen — by whom — by when] |
| **Deadline** | [December 31 for current year / or specific date] |
| **CPA action** | [What the CPA needs to do to implement] |
| **Risk/Complexity** | [Low / Medium — explain if medium or high] |

---

### 2. [Second Opportunity]

[Same format]

---

### 3. Oil & Gas Specific (HIVE Partners)

| Opportunity | Description | Savings estimate |
|------------|-------------|-----------------|
| IDC deduction | Intangible drilling costs from Q[N] workover — $[X] total IDCs | [X% of IDCs = $[X] deduction] |
| Percentage depletion | 15% of gross production income — $[X] gross revenue | $[X] deduction |
| Working interest losses | Net operating loss from HIVE can offset other income | [Depends on passive vs. active determination] |

---

## Year-End Deadline Items (December 31)

| Action | Estimated savings | Deadline | Owner | CPA input needed |
|--------|-----------------|---------|-------|-----------------|
| Prepay [January rent/insurance] — $[X] deductible now | $[X × tax rate] | Dec 31 | Dr. Lewis | Confirm deductibility |
| Max SEP-IRA contribution — $[X] | $[X × tax rate] | [Tax filing + extension] | Matt Mathison | Confirm 2026 limit |
| Accelerate depreciation on [asset purchased in YYYY] | $[X] | Dec 31 | Dr. Lewis / CPA | Bonus depreciation available? |
| Capital loss harvest — $[X] in unrealized losses | $[X] | Dec 31 | Matt Mathison | Review portfolio |
| Charitable contribution — $[X] to [Org] | $[X × tax rate] | Dec 31 | Matt Mathison | Confirm charitable status |

---

## Deal-Specific Tax Analysis (if applicable)

**Event:** [Acquisition / Distribution / New entity / Other]

| Tax dimension | Analysis |
|--------------|---------|
| Asset vs. stock deal (acquisition) | [Asset: buyer gets step-up in basis — generally better for buyer; stock: seller may prefer for capital gain treatment] |
| Purchase price allocation | [If asset deal: allocation between goodwill, hard assets, covenants matters for both depreciation and tax rate] |
| Depreciation / bonus | [Will assets qualify for bonus depreciation? What's the Year 1 deduction?] |
| Entity structure | [What's the right entity for the new business for tax purposes?] |
| State tax | [What state(s) is the company operating in? State tax obligations?] |
| Distribution tax | [How will a distribution be characterized — ordinary income, qualified dividends, return of capital?] |

---

## Estimated Tax Savings Summary

| Opportunity | Estimated annual savings | Implementation timeline |
|------------|------------------------|------------------------|
| [Opportunity 1] | $[X] | [Immediate / Q4 / Next year] |
| [Opportunity 2] | $[X] | |
| [Opportunity 3] | $[X] | |
| **Total estimated savings** | **$[X]** | |

**Important disclaimer:** All estimates are preliminary. CPA review and confirmation required before taking any tax action. Tax law changes may affect applicability.

---

## CPA Action Items

| Item | CPA task | Due date |
|------|---------|---------|
| [Confirm bonus depreciation availability] | [CPA to review 2026 tax law on bonus depreciation %] | [Date] |
| [Model estimated taxes before and after planning] | [CPA to provide updated estimate after moves] | [Date] |
| [File extensions if needed] | [If year-end planning requires additional time] | [Tax deadline] |
```

## Output Contract
- CPA review always required before implementation — this skill identifies opportunities and estimates savings; the CPA confirms feasibility, implements, and signs the returns; tax planning is not a DIY activity; no action is taken without CPA confirmation
- Oil and gas tax benefits always analyzed for HIVE — IDC deductions and depletion allowances are significant, often under-utilized tax preferences for oil and gas operators; every year-end plan for HIVE must include these items
- Deal tax analysis always separated from business analysis — the economics of a deal and the tax treatment of a deal are two different questions; both must be analyzed; a deal that looks great economically but is tax-inefficient may have its returns significantly reduced
- Estimates always labeled as estimates — tax savings estimates before CPA review are directionally useful but not precise; every savings estimate must be labeled as preliminary and subject to CPA confirmation; never commit to a specific tax number without the CPA's sign-off
- HITL required: Dr. Lewis identifies opportunities and prepares the analysis; CPA reviews and confirms every item before implementation; Matt Mathison approves all significant tax planning decisions; no entity structure changes, no material deductions, and no deal tax positions without CPA + Matt Mathison approval

## System Dependencies
- **Reads from:** QuickBooks (income and expense data for current year), prior year tax returns, oil and gas production records (HIVE), deal documents
- **Writes to:** Tax planning analysis (SharePoint/Finance/Tax/Planning/); CPA action items; deal tax memo
- **HITL Required:** Dr. Lewis identifies; CPA confirms and executes; Matt Mathison approves all significant actions; entity structure changes require legal + CPA + Matt Mathison

## Test Cases
1. **Golden path:** MBL year-end tax planning Q4 2026 → Estimated MBL taxable income: $420K; Key opportunities: (1) Prepay January-February 2027 professional services retainer $22K — deductible in 2026; estimated savings at 37% rate: $8,140; (2) Max Matt Mathison SEP-IRA contribution: estimated $[limit]; savings: [limit × 37%]; (3) HIVE IDC deduction: $42K workover — 100% IDC; savings estimate $15,540; (4) HIVE percentage depletion: 15% × $1.15M gross revenue = $172,500 deduction; savings estimate $63,800; total estimated savings: ~$100K; CPA action items: confirm current-year bonus depreciation %, confirm IDC allocation from workover, model revised estimated tax; Matt Mathison informed; CPA engaged by November 15 for year-end planning session
2. **Edge case:** A portfolio company acquisition is being structured and the seller insists on a stock deal but the buyer (MBL) would prefer an asset deal → the tax difference must be quantified and presented as part of the negotiation: "A stock deal vs. asset deal for [Company] means MBL doesn't get a step-up in basis on the assets. This costs us approximately $[X] in future depreciation deductions over [N] years — a present value of approximately $[X] at [X%] discount rate. This amount should be reflected in the price negotiation — we should pay [X%] less for a stock deal than an asset deal, all else being equal." Tax structure is a negotiation variable
3. **Adversarial:** A portfolio company CEO wants to treat a personal expense (home office, personal vehicle, personal travel) as a business deduction to reduce the company's taxable income → hard stop; personal expenses are never deductible business expenses; this is a potential tax fraud issue; respond: "Personal expenses cannot be deducted as business expenses. This would misstate taxable income, trigger penalties if audited, and could be characterized as fraud in extreme cases. If there's a legitimate business use component (e.g., home office used exclusively for business), the CPA can advise on the appropriate treatment. I cannot include personal expenses in the tax planning analysis."

## Audit Log
Tax planning analyses retained by entity and year. CPA confirmation documentation retained. Matt Mathison approvals retained. Year-end moves implemented with dates and amounts. IDC and depletion calculations retained for HIVE. All tax returns retained 7 years minimum.

## Deprecation
Retire when MBL has a dedicated CPA firm relationship that proactively delivers quarterly tax planning updates without Dr. Lewis's involvement in identifying opportunities, and when each portfolio company has a tax-oriented CFO or controller.
