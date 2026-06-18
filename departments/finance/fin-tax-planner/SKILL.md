---
name: fin-tax-planner
description: "Plan and manage tax strategy for MBL Partners and portfolio companies. Use when the user says 'tax planning', 'tax strategy', 'tax position', 'estimated taxes', 'quarterly estimated taxes', 'quarterly taxes', 'tax estimate', 'year-end tax', 'tax year-end', 'tax minimization', 'tax efficiency', 'tax exposure', 'tax liability', 'tax timing', 'defer income', 'accelerate deductions', 'entity tax structure', 'pass-through taxation', 'K-1', 'partnership tax', 'LLC tax', 'S-corp tax', 'state taxes', 'Utah tax', 'Arizona tax', 'franchise tax', 'state income tax', 'tax filing deadline', 'extension', 'tax return', 'CPA', 'tax advisor', 'tax counsel', 'tax compliance', 'tax calendar', 'bonus depreciation', 'Section 179', 'R&D credit', 'work opportunity tax credit', or 'qualified opportunity zone'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--period <quarterly|annual|year-end>] [--action <estimate|plan|review|file|extension>] [--focus <federal|state|structure|timing>]"
---

# Fin Tax Planner

Plan and manage tax strategy for MBL Partners and portfolio companies — coordinating with external tax advisors to minimize tax liability, ensure compliance with all filing obligations, and avoid the surprises (large year-end tax bills; missed deadlines; underpayment penalties) that result from reactive tax management. Dr. Lewis is not a CPA and does not prepare tax returns; the external tax advisor is the preparer and the authority on tax law. Dr. Lewis's role is to: (1) ensure the entity's books are in the right shape for efficient tax preparation; (2) track tax filing deadlines and payments; (3) coordinate with the tax advisor on planning opportunities; (4) present Matt Mathison with tax position updates and material decisions.

## When to Use
- Quarterly estimated tax payment planning (April 15; June 15; September 15; January 15)
- September-November: year-end tax planning (timing of income and deductions)
- A material event occurs that has tax implications (acquisition; asset sale; large capex)
- Tax filing deadline approach (check extensions; coordinate with advisor)
- Matt Mathison asks about the entity's tax position

## Tax Planning Framework

```
ENTITY TAX STRUCTURE (MBL portfolio):

  MBL Partners:
    Structure: Limited partnership or LLC (Dr. Lewis to confirm current structure)
    Taxation: Pass-through — income/loss flows to partners (Matt Mathison; LPs)
    Key: LP K-1 preparation by March 15 (or September 15 with extension)
    State: Registered in [primary state]; may have nexus in other states
    
  Allevio:
    Structure: LLC (confirm current; may be LLC taxed as S-Corp)
    Taxation: Pass-through to MBL (flow-through entity)
    State: Arizona (primary); confirm nexus in other states if any
    Key: Arizona TPT (transaction privilege tax) considerations for healthcare services
    
  HIVE Partners:
    Structure: LLC or partnership
    Taxation: Pass-through; royalty income is ordinary income
    State: Utah (primary; Uinta Basin operations)
    Key: Utah severance tax on oil and gas production (in addition to income tax)
         Depletion deduction: oil and gas entities qualify for percentage depletion
         IDC (intangible drilling costs): deductible in year incurred
    
  Column6:
    Structure: LLC (confirm current)
    Taxation: Pass-through to MBL
    State: [Primary state]; digital advertising nexus rules — confirm
    Key: Digital services tax developments (watch state-level DST legislation)

QUARTERLY ESTIMATED TAX CALENDAR:

  Q1 payment: April 15 (for income earned January-March)
  Q2 payment: June 15 (for income earned April-May; note: only 2 months)
  Q3 payment: September 15 (for income earned June-August)
  Q4 payment: January 15 of the following year (for income earned September-December)
  
  Estimated payment calculation:
    Method 1 (Safe Harbor): pay 100% of prior year tax (110% if prior AGI >$150K)
    Method 2 (Current year): estimate current year tax and pay 25% each quarter
    Recommendation: use Method 1 (safe harbor) for predictability; Method 2 if current year will be significantly lower
    
  Underpayment penalty: occurs if quarterly payments are less than required
    Penalty rate: IRS short-term rate + 3% (currently ~8%)
    Avoid by paying safe harbor amounts on time

YEAR-END TAX PLANNING (September-November):

  INCOME TIMING:
    Defer income to next year: if entity has a good year and the owners want to smooth income
      Allevio: consider whether year-end PMPM collection can be pushed to January (timing)
      Column6: delay invoicing of December IO if delivery is complete but not yet billed
      Note: revenue recognition rules limit how much income timing is available
      
  DEDUCTION ACCELERATION:
    Accelerate deductible expenses into the current year if income is higher than expected
      Pay December vendor invoices in December (don't wait until January)
      Purchase needed equipment before year-end (Section 179 or bonus depreciation)
      Prepay certain expenses (insurance; licenses; subscriptions) if deductible
      
  RETIREMENT PLAN CONTRIBUTIONS (if applicable):
    SEP-IRA or Solo 401(k) for pass-through entity partners
    Contributions deductible up to contribution deadlines (often tax filing date + extensions)
    Allevio: 401(k) match for employees — deductible in the year paid
    
  ENTITY-SPECIFIC PLANNING:
    HIVE: IDC (intangible drilling costs) — deduct in year incurred (not capitalize)
           Percentage depletion: 15% of gross income from oil and gas (statutory deduction)
           Utah severance tax: deductible as a state tax
    Allevio: R&D credit potential? (Clinical protocols; outcomes measurement technology)
    Column6: State tax nexus review (digital advertising and remote employee nexus)

TAX FILING DEADLINES:

  PARTNERSHIPS AND LLCs (pass-throughs):
    Form 1065: March 15 (or September 15 with extension)
    K-1 distribution to partners: March 15 (or upon filing if extended)
    
  S-CORPORATIONS (if any entity is taxed as S-Corp):
    Form 1120-S: March 15 (or September 15 with extension)
    
  ESTIMATED PAYMENTS:
    April 15; June 15; September 15; January 15
    
  STATE RETURNS:
    Generally: same as federal or 30 days later (varies by state)
    Utah: April 15 for individuals; March 15 for partnerships
    Arizona: April 15 for individuals; March 15 for partnerships
    
  INFORMATION RETURNS:
    W-2: January 31 (employee copies + SSA filing)
    1099-NEC: January 31 (recipient copies + IRS filing)
    1099-MISC: January 31 (where applicable)
```

## Output Format

```markdown
# Tax Planning Summary — [Entity] — [Year]
**Prepared by:** Dr. Lewis | **External advisor:** [CPA firm] | **Date:** [Date]

---

## Tax Position (Year-to-Date)

| Metric | Amount | Notes |
|--------|--------|-------|
| Estimated taxable income (YTD) | $[X] | Pass-through to partners |
| Prior year tax (safe harbor base) | $[X] | Basis for estimated payments |
| Q1 estimated payment | $[X] | Paid [Date] ✅/⏳ |
| Q2 estimated payment | $[X] | Paid [Date] ✅/⏳ |
| Q3 estimated payment | $[X] | Paid [Date] ✅/⏳ |
| Q4 estimated payment | $[X] | Due [Date] |
| Year-end liability estimate | $[X] | Based on current trajectory |

---

## Year-End Planning Actions

| Action | Entity | Deadline | Estimated tax benefit | Owner |
|--------|--------|---------|----------------------|-------|
| [Accelerate equipment purchase] | [Entity] | Dec 31 | $[X] | [Owner] |
| [Defer invoice] | [Entity] | Dec 31 | $[X] | [Owner] |

---

## Filing Calendar

| Filing | Entity | Due date | Extension filed? | Status |
|--------|--------|---------|-----------------|--------|
| Form 1065 | MBL | March 15 | Yes/No | ✅/⏳ |
```

## Output Contract
- Tax decisions go to external counsel — Dr. Lewis coordinates the tax planning process and tracks deadlines, but tax law interpretations, entity structure recommendations, and material planning decisions are made by the external CPA/tax advisor; Dr. Lewis presents tax planning opportunities and risks to Matt Mathison with the advisor's recommendation; Matt Mathison makes the final decision; the external advisor takes responsibility for the technical position
- Safe harbor is the default — for quarterly estimated payments, the safe harbor method (pay 100%/110% of prior year tax) protects against underpayment penalties even if current year income is higher; this is the default unless the advisor recommends otherwise (e.g., if the current year will be significantly lower than prior year, current-year method may be more efficient); Dr. Lewis tracks all estimated payment due dates in exec-action-tracker and confirms payment completion
- Material tax events trigger immediate advisor consultation — an acquisition, asset sale, large capital gain, or significant change in entity structure is a tax event that should not be executed without advisor input; Dr. Lewis flags any such event to the tax advisor before the transaction closes; waiting until filing time to consult the advisor on a transaction that happened 8 months ago results in suboptimal tax outcomes that cannot be unwound
- HITL required: all estimated tax payments reviewed by Dr. Lewis before remittance; year-end planning actions reviewed by Dr. Lewis and external advisor before execution; Matt Mathison receives a year-end tax summary showing the entity's projected tax position and any material planning actions; entity structure changes (e.g., converting LLC to S-Corp) require Matt Mathison approval and legal review; K-1 distributions to LPs are coordinated per exec-lp-reporting obligations

## System Dependencies
- **Reads from:** QuickBooks (taxable income; deductible expenses; asset additions); fin-financial-model (year-end income projections for planning purposes); payroll provider (W-2 and 1099 data); external tax advisor (prior year tax returns; safe harbor base); exec-capital-allocation (capital expenditures with tax implications)
- **Writes to:** Tax payment records (SharePoint → Finance → Taxes → [Entity] → [YYYY]); exec-action-tracker (tax filing deadlines; estimated payment due dates); exec-cfo-oversight (tax payments are a cash flow item in the monthly summary); fin-cash-flow-planner (estimated tax payments are a recurring outflow in the 13-week forecast)
- **HITL Required:** All estimated tax payments reviewed by Dr. Lewis before payment; year-end planning actions reviewed with external advisor; Matt Mathison receives year-end tax summary; entity structure decisions require Matt Mathison approval; K-1 preparation coordinated with LP reporting obligations (exec-lp-reporting); all tax return filings and extensions reviewed by external advisor before submission

## Test Cases
1. **Golden path:** Q3 September 15 estimated tax planning; Allevio YTD taxable income: $285K (ahead of plan; Q3 new employer group activations are stronger than expected); prior year tax: $340K (safe harbor payment = 25% × $340K = $85K per quarter); Q1 paid: $85K ✅; Q2 paid: $85K ✅; Q3 payment due: $85K — Dr. Lewis schedules ACH payment for September 12 (3 days before due; confirmed with entity Controller). Year-end projection: $410K taxable income (full-year estimate at current trajectory). Year-end planning note: "Consider accelerating the clinical tech equipment purchase ($32K) from Q1 next year into December this year — Section 179 deduction would reduce current-year taxable income by $32K; saves approximately $7K in taxes at estimated effective rate. Discuss with advisor in October." Dr. Lewis flags for October advisor call.
2. **Edge case:** HIVE has a large year-end IDC (intangible drilling cost) from Q4 well development that wasn't in the tax plan → Dr. Lewis: "HIVE's Q4 well development generates ~$180K in IDC. This is deductible in the year incurred (2026) rather than capitalized and depreciated over the well life — that's a significant year-end deduction opportunity. I'm flagging this to the tax advisor today to confirm: (1) the IDC deduction treatment is correct for this well; (2) whether we have any passive activity limitation issues; (3) how this flows through to Matt Mathison's personal tax position via the K-1. The deduction reduces the 2026 K-1 income by ~$180K — worth understanding the impact before year-end."
3. **Adversarial:** Entity CEO wants to delay estimated tax payment until "after the quarter closes" → Dr. Lewis: "The estimated tax due date is set by the IRS — it's April 15, not 'after we close Q1.' If we miss the April 15 payment, we accrue an underpayment penalty at approximately 8% annually on the underpaid amount. For a $85K payment, that's roughly $6,800/year in penalties for something we can avoid entirely by paying on time. The payment doesn't require the books to be closed — it's based on the safe harbor amount (prior year tax ÷ 4), which I already know. The payment is scheduled for April 12. If you have a specific cash concern about that timing, tell me and I'll look at the cash position. But 'after we close' is not a reason to miss a tax deadline."

## Audit Log
All estimated tax payment records retained. Payment confirmation (bank statement; IRS confirmation) retained. Year-end planning action documentation retained. Tax return copies retained 7 years. Extension filings retained. K-1 distribution records retained.

## Deprecation
The tax planning function is permanent. Retire the Dr. Lewis coordination role when each entity has a dedicated finance function that manages tax compliance directly with the external advisor — with Dr. Lewis providing the portfolio-level tax position summary to Matt Mathison and coordinating the annual K-1 distribution to LPs.
