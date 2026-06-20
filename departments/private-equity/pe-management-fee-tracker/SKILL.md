---
name: pe-management-fee-tracker
description: "Track and calculate MBL Partners fund management fees and offsets. Use when the user says 'management fee', 'management fees', 'management fee calculation', 'fee calculation', 'fee tracker', 'fee reconciliation', 'fee schedule', 'fee basis', 'committed capital fee', 'invested capital fee', 'management fee rate', 'fee period', 'fee payment', 'management fee invoice', 'management fee notice', 'management fee offset', 'fee offset', 'transaction fee offset', 'monitoring fee offset', 'fee credit', 'management company', 'GP management company', 'fee step-down', 'post-investment period fee', 'management fee reduction', 'fee waiver', 'fee disclosure', 'fee LP disclosure', 'ILPA fee disclosure', 'fee template', 'ILPA fee template', 'fee transparency', 'expenses fund', 'fund expenses', 'fund expense allocation', 'organizational expense', 'operating expense fund', 'fund admin fee', 'fund administrator fee', 'audit fee fund', 'legal fee fund', 'compliance fee fund', 'expense cap', 'expense limitation', or 'fee and expense policy'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--period <YYYY-Q1|YYYY-Q2|YYYY-Q3|YYYY-Q4|YYYY-H1|YYYY-H2>] [--action <calculate|reconcile|invoice|disclose|report>] [--type <management-fee|expense|offset|all>]"
---

# PE Management Fee Tracker

Track and calculate MBL Partners fund management fees, expense allocations, and fee offsets — ensuring management fees are calculated correctly per the LPA, disclosed transparently to LPs, and offset properly by any transaction, monitoring, or other fees received by the GP from portfolio companies. Management fee transparency is both a legal obligation (LPA governs fee terms exactly) and a trust obligation (LPs who believe GP fees are being calculated incorrectly or that fee income is not being offset properly lose trust in the GP's integrity); the management fee calculation is not a judgment call — it is a formula in the LPA that is applied exactly; any deviation requires an LP consent.

## When to Use
- Semi-annual management fee calculation (fees are typically paid semi-annually)
- Annual fee disclosure to LPs (ILPA standard)
- Calculating whether a transaction fee must be offset against management fees
- LP asks about fee calculation or transparency

## Management Fee Tracking Framework

```
MANAGEMENT FEE CALCULATION:

  STANDARD MBL MANAGEMENT FEE STRUCTURE (per LPA — verify each term against actual LPA):
    Rate: [1.5% - 2.0%] of [committed capital / invested capital] per year
    Payment: semi-annually (typically June 30 and December 31)
    Basis during investment period: committed capital (total LP commitments; not just called capital)
    Basis after investment period: invested capital (cost of remaining portfolio investments)
    
  CALCULATION FORMULA:
    Investment Period (through [LPA-defined end]):
      Annual fee = Total committed capital × management fee rate
      Semi-annual fee = Annual fee / 2
      
    Post-Investment Period:
      Annual fee = Sum of acquisition costs (cost basis) of remaining portfolio companies
      Semi-annual fee = Annual fee / 2
      Note: basis reduces as exits occur; fee declines naturally over fund life
      
  STEP-DOWN (if LPA provides):
    Some LPAs include a management fee step-down after a specified year
    (e.g., rate drops from 2.0% to 1.5% in Year 6+)
    Verify LPA for any step-down provisions and apply them automatically

MANAGEMENT FEE OFFSETS:

  OFFSET POLICY (per LPA):
    Any fee received by the GP (or management company) from a portfolio company must be
    offset against LP management fees; typical offset rate: 50-100% (verify in LPA)
    
  TYPES OF OFFSETTABLE FEES:
    Transaction fees: fees charged to portfolio companies at acquisition or exit
    Monitoring fees: annual fees charged to portfolio companies for ongoing advisory services
    Board fees: any director fees received by GP employees for portfolio company board service
    Consulting fees: any fees for services provided to portfolio companies
    
  OFFSET CALCULATION:
    Fees received by GP in the period × offset percentage (per LPA) = credit against next fee payment
    If fees received > management fee due: carry forward excess credit to next period
    
  ILPA STANDARD:
    Fee and expense report: ILPA recommends annual disclosure using the ILPA Fee Reporting Template
    Contents: management fees paid; fees offset; net management fee; all fund expenses; carry accrued
    Timing: annual disclosure; typically distributed with Q4 quarterly report or annual report

FUND EXPENSE ALLOCATION:

  EXPENSES CHARGEABLE TO THE FUND (per LPA; verify each category):
    Fund organization expenses: capped at $[X] (typical LPA cap; verify actual)
    Legal fees: deal-related; ongoing fund legal; LP communications legal
    Audit fees: annual fund audit
    Fund administrator fees: fund accounting; capital account maintenance
    Tax preparation fees: K-1 preparation; fund tax return
    DD costs: due diligence expenses for investments made (not for declined deals)
    
  EXPENSES NOT CHARGEABLE TO THE FUND:
    GP overhead: MBL Partners operating costs (office; staff; partners' salaries — covered by mgmt fee)
    Due diligence costs for deals that were not made (typically)
    GP entertainment; travel not directly deal-related
    Any expense not specifically authorized in the LPA
    
  EXPENSE TRACKING:
    QuickBooks maintains fund expense ledger
    Each expense coded to fund vs. management company account
    Any ambiguous allocation → legal counsel review; Dr. Lewis decides; documented
```

## Output Format

```markdown
# Management Fee Calculation — [Period] — [YYYY]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison + Fund Administrator

---

## Management Fee

| Item | Amount |
|------|--------|
| Fee basis (committed / invested capital) | $[X]M |
| Management fee rate | [X.X%] |
| Annual fee | $[X] |
| Semi-annual fee (this period) | $[X] |
| Fee offsets (transaction / monitoring fees received) | ($[X]) |
| **Net management fee due** | **$[X]** |

**Payment due date:** [Date]
**Invoice to:** [LP wire accounts — from pe-capital-call-manager mechanism]

---

## Fee Offset Detail

| Fee type | Entity | Amount received | Offset % | Credit |
|---------|--------|----------------|---------|--------|
| Transaction fee — [deal name] | [Entity] | $[X] | [X%] | ($[X]) |
| Monitoring fee — [Entity] | [Entity] | $[X] | [X%] | ($[X]) |
| **Total offset** | | | | **($[X])** |

---

## ILPA Fee Disclosure (Annual)

| Item | YTD | Inception-to-date |
|------|-----|------------------|
| Gross management fees | $[X] | $[X] |
| Fee offsets | ($[X]) | ($[X]) |
| **Net management fees** | **$[X]** | **$[X]** |
| Fund expenses | $[X] | $[X] |
| Carried interest accrued | $[X] | $[X] |
```

## Output Contract
- The management fee calculation is executed exactly per the LPA formula — management fees are not a judgment call; the LPA specifies the rate; the basis (committed or invested); the payment dates; the offset percentage; and any step-downs; Dr. Lewis reads the actual LPA language (not a summary) to calculate the fee for each period; if the LPA is ambiguous about any term, legal counsel provides a written interpretation before the fee is calculated; the fund administrator independently calculates the management fee and the two calculations are reconciled before the invoice is issued to LPs; any discrepancy between Dr. Lewis's calculation and the fund administrator's calculation is resolved before the fee is collected
- Fee offsets are applied promptly and completely — a GP that receives transaction or monitoring fees from portfolio companies and fails to offset them against LP management fees (as required by the LPA) is misappropriating LP capital; Dr. Lewis logs every fee payment received by the GP from any portfolio company immediately and calculates the required offset at the next management fee payment date; LPs receive an ILPA-format fee and expense disclosure annually that shows gross fees; offsets; net fees; and all fund expenses; no fee received by the GP is unlogged or unoffset if the LPA requires it
- Fund expenses are charged only if authorized by the LPA — a fund expense that is not authorized in the LPA is a mischarge that must be returned to the fund (it is not the GP's money to keep); Dr. Lewis reviews each fund expense against the LPA expense policy before recording it as a fund charge; any expense category not clearly authorized → legal counsel review; if determined to be a management company expense, it is re-allocated; the LPA is the authoritative document — not "we've always done it this way" or "other PE funds charge this"
- HITL required: management fee calculation → fund administrator independently validates before invoice is issued; fee invoice to LPs → Matt Mathison approves; fee offsets → Dr. Lewis calculates and logs; annual ILPA fee disclosure → Matt Mathison reviews before distribution to LPs; any fee that is not in the LPA but has historically been charged → legal counsel review; management company expense vs. fund expense ambiguity → Dr. Lewis decides with legal guidance; LP fee dispute → Matt Mathison briefing + legal counsel

## System Dependencies
- **Reads from:** LPA (fee rate; basis; payment dates; offset provisions; expense authorization); pe-fund-accounting (fee payment history; expense ledger; capital commitment records); pe-capital-call-manager (wire mechanism for fee collection); pe-lp-admin (LP register for fee allocation per LP; capital account); fund administrator (independent fee calculation for reconciliation); QuickBooks (management company and fund expense ledger)
- **Writes to:** Management fee invoices (per period); fee payment records (fund administrator and QuickBooks); ILPA fee and expense disclosure (annual); LP quarterly report financial detail section; Matt Mathison fee confirmation; fee offset log
- **HITL Required:** Fee calculation → fund administrator validates; fee invoice → Matt approves; offsets → Dr. Lewis logs; ILPA disclosure → Matt reviews; unauthorized fee category → legal counsel; LP fee dispute → Matt + legal

## Test Cases
1. **Golden path:** Semi-annual management fee calculation (H1 [YYYY]). LPA: 1.75% per year of committed capital during investment period; 50% offset of transaction fees. Committed capital: $18.5M. Annual fee: $323,750. Semi-annual fee: $161,875. Transaction fee received from Allevio acquisition in H1: $75,000 (at close, as monitoring fee commencement). Offset: $75,000 × 50% = $37,500. Net H1 management fee: $161,875 - $37,500 = $124,375. Fund administrator confirms same calculation. Dr. Lewis issues management fee invoice to LPs. Matt Mathison approves. Wires collected on [date].
2. **Edge case:** LPA investment period ends mid-year — fee basis switches from committed capital to invested capital → Dr. Lewis: "Investment period ended [date] per LPA. For the pre-investment-period portion of this semi-annual period ([X] days), fee is calculated on committed capital ($18.5M × 1.75% × [X/182] = $[X]). For the post-investment-period portion ([Y] days), fee is calculated on invested capital ($12.2M remaining cost basis × 1.75% × [Y/182] = $[Y]). Total semi-annual fee: $[X+Y]. I'm verifying the investment period end date with legal counsel before issuing the invoice — this is the first period where the basis switches and I want to confirm the exact date."
3. **Adversarial:** An LP challenges the fee calculation, arguing that a $50K deal sourcing fee received by the GP from an acquisition should have been offset at 100% (not the 50% specified in the LPA) → Dr. Lewis: "The LPA in Section [X.X] specifies the offset rate as 50% for all transaction fees. I'll pull the exact language for the LP. If the LP believes the LPA language supports a 100% offset, I'll have legal counsel review the interpretation and provide a written opinion — that's the authoritative source. If legal counsel agrees with the LP's interpretation, we'll apply the correct rate, recalculate, and credit the difference. If legal counsel confirms 50%, I'll share the legal opinion with the LP. Matt Mathison: I'm flagging this LP fee dispute for your awareness before I respond."

## Audit Log
All management fee calculations retained permanently (with LPA section cited; fund administrator reconciliation; Matt Mathison approval; invoice date). Fee offset log retained (every fee received by GP from portfolio companies; offset applied; period). ILPA fee and expense disclosures retained. LP fee dispute records retained. Fund expense allocation records retained (with LPA authorization cite).

## Deprecation
Management fee tracking is an ongoing function for the life of each fund. The fee schedule and offset tracking are updated if the LPA is amended (with LP consent). The ILPA fee disclosure format is updated when ILPA issues new templates.
