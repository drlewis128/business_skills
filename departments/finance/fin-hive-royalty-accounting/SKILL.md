---
name: fin-hive-royalty-accounting
description: "Manage HIVE Partners royalty accounting and Covercy reconciliation. Use when the user says 'HIVE royalties', 'royalty accounting', 'royalty reconciliation', 'Covercy', 'Covercy reconciliation', 'royalty distribution', 'royalty payment', 'royalty statement', 'mineral royalties', 'oil and gas royalties', 'royalty revenue', 'landowner royalties', 'royalty check', 'royalty income', 'royalty tracking', 'royalty audit', 'royalty dispute', 'HIVE revenue', 'HIVE accounting', 'HIVE financials', 'Uinta Basin royalties', 'severance tax', 'Utah severance tax', 'production accounting', 'BOE production', 'oil production', 'gas production', 'royalty fraction', 'net revenue interest', 'NRI', 'royalty interest', 'RI', 'royalty check reconciliation', or 'check the Covercy statement'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <reconcile|audit|report|dispute|project>] [--focus <covercy|revenue|severance-tax|wti-sensitivity|production>] [--property <all|specific>]"
---

# Fin HIVE Royalty Accounting

Manage HIVE Partners royalty accounting and Covercy reconciliation — ensuring that every royalty payment HIVE receives is accurately recorded, fully reconciled to the Covercy distribution statements, and correctly reported in the financial statements. HIVE's revenue is royalty income: distributions from oil and gas production on leased mineral acreage, paid by the operators who produce the resource, managed through Covercy's royalty payment platform. Royalty accounting is simpler than operational accounting (no COGS; no inventory) but requires meticulous reconciliation because errors compound with each distribution period and because the Uinta Basin market has multiple operators with different statement formats and payment timing.

## When to Use
- Monthly: reconcile Covercy royalty distributions to QuickBooks
- Quarterly: full royalty revenue analysis (production × price × royalty fraction)
- A Covercy distribution is late or doesn't match the expected amount
- A royalty dispute arises with an operator
- Matt Mathison asks about HIVE's financial performance

## HIVE Royalty Accounting Framework

```
HIVE ROYALTY STRUCTURE:

  ROYALTY INCOME:
    HIVE holds royalty interests in mineral acreage in the Uinta Basin, Utah
    When an operator produces oil or gas from leased acreage, HIVE receives a royalty payment
    Royalty fraction: specified in each lease (e.g., 1/8 = 12.5% of production revenue)
    Net Revenue Interest (NRI): HIVE's share after deductions (production costs; taxes allocated to HIVE)
    
    Revenue calculation per property:
      Production volume (BOE) × WTI price × royalty fraction × (1 - lease deductions) = royalty revenue
      
  COVERCY PLATFORM:
    Covercy is the royalty distribution management platform
    Operators submit production and payment data to Covercy
    Covercy aggregates and distributes royalty payments to HIVE
    
    Distribution schedule:
      Typical: monthly distributions (some operators: bimonthly)
      Lag: production typically paid 30-60 days after production date
        (March production → April-May distribution)
      Format: Covercy statement shows production month; BOE; price; royalty fraction; taxes; net payment

MONTHLY RECONCILIATION PROCESS:

  STEP 1 — COVERCY STATEMENT REVIEW (by the 10th):
    □ Receive Covercy statement for prior month's distributions
    □ Review each line item: property; production month; BOE; price; royalty fraction; deductions; net
    □ Compare to prior period: any properties with zero production? (Expected vs. unexpected)
    □ Compare BOE production to prior quarter's trend (material changes require explanation)
    □ Flag: any property where WTI price applied differs from the published WTI for that production month
    
  STEP 2 — BANK RECONCILIATION (by the 10th):
    □ Confirm Covercy distribution received in HIVE's bank account
    □ Amount received matches Covercy net distribution statement to the penny
    □ Timing: distribution received within expected window (if late >5 days: investigate)
    □ Any discrepancy: investigate before posting to QuickBooks
    
  STEP 3 — QUICKBOOKS ENTRY (by the 12th):
    □ Post royalty income to the correct revenue account (by property if multiple properties)
    □ Post Utah severance tax expense (deducted from distribution; separate expense line)
    □ Post any other lease deductions per the Covercy statement
    □ Net royalty income = gross distribution - severance tax - other deductions
    □ Ensure the income recognition period matches the production month (not the distribution month)
      (Revenue is recognized in the month the production occurred, not when HIVE receives payment)
    
  STEP 4 — RECONCILIATION SIGN-OFF (by the 15th):
    □ Covercy statement total = bank deposit amount
    □ QuickBooks royalty income = Covercy net distribution
    □ QuickBooks severance tax = Covercy severance tax deduction
    □ Any unexplained variance: resolve before sign-off
    □ Dr. Lewis sign-off confirms reconciliation is complete

UTAH SEVERANCE TAX:

  Utah imposes a severance tax on oil and gas production:
    Oil: 3-5% of the gross value of production (rate varies by production level and year)
    Gas: similar rate structure
    
  For HIVE:
    The operator typically withholds severance tax from the royalty payment (shown as deduction on Covercy statement)
    QuickBooks: debit Severance Tax Expense; credit Royalties Payable (when received net of tax)
    Tax reporting: Utah state tax return includes the severance tax paid
    Deductibility: severance tax is deductible for federal income tax purposes

WTI SENSITIVITY ANALYSIS (quarterly):

  HIVE's royalty income is directly correlated to WTI price:
    Current WTI: $[X]/bbl
    Budget assumption: $[X]/bbl
    Variance: $[+/-X]/bbl
    
  Sensitivity: for every $1 change in WTI:
    Annual royalty revenue impact: $[X] (calculated from HIVE's production volume)
    EBITDA impact: approximately the same (royalties are primarily revenue; minimal COGS)
    
  Scenarios:
    WTI $50: royalty revenue $[X]; EBITDA $[X]; capex trigger activates (no new leases)
    WTI $60: royalty revenue $[X]; EBITDA $[X]; neutral
    WTI $70: royalty revenue $[X]; EBITDA $[X]; above plan; accelerate acreage expansion
    WTI $80: royalty revenue $[X]; EBITDA $[X]; strong year; evaluate distribution to MBL

ROYALTY DISPUTE PROTOCOL:

  If HIVE disputes an operator's royalty payment:
    1. Document the discrepancy: what was expected vs. what was paid
    2. Pull the relevant lease agreement: verify the royalty fraction and deduction terms
    3. Contact the operator's landman or royalty department
    4. Request a detailed production and revenue statement for the disputed period
    5. If unresolved in 30 days: Dr. Lewis escalates to HIVE CEO + legal counsel
    6. Matt Mathison notification: any dispute >$10K or unresolved >60 days
```

## Output Format

```markdown
# HIVE Royalty Accounting — [Month Year]
**Prepared by:** Dr. Lewis | **Distribution:** Dr. Lewis + Matt Mathison (quarterly)

---

## Monthly Royalty Summary

| Property | Production month | BOE | WTI price | Royalty fraction | Gross royalty | Severance tax | Net distribution |
|---------|----------------|-----|-----------|-----------------|-------------|-------------|----------------|
| [Property A] | [Month] | [N] | $[X]/bbl | [%] | $[X] | $[X] | $[X] |
| **Total** | — | **[N]** | **$[Wtd avg]** | — | **$[X]** | **$[X]** | **$[X]** |

---

## Reconciliation Status

| Step | Status | Notes |
|------|--------|-------|
| Covercy statement received | ✅ [Date] | |
| Bank deposit confirmed | ✅ $[X] on [Date] | |
| Covercy = bank amount | ✅ Matches / ❌ Discrepancy: $[X] | |
| QuickBooks entry posted | ✅ [Date] | |
| Dr. Lewis sign-off | ✅ [Date] | |

---

## WTI vs. Budget

| | Actual | Budget | Variance | Revenue impact |
|-|--------|--------|---------|--------------|
| WTI price | $[X] | $[X] | $[+/-X] | $[+/-X] annualized |

---

## Disputes (if any)

| Property | Amount | Issue | Status | Dr. Lewis action |
|---------|--------|-------|--------|-----------------|
| [Property] | $[X] | [Description] | [Day N of resolution] | [Action] |
```

## Output Contract
- Covercy reconciles to the penny — a $50 discrepancy between the Covercy statement and the bank deposit is investigated before QuickBooks is updated; royalty accounting errors are not "rounding issues"; they are either bank processing differences (timing; transfer fees), operator reporting errors, or Covercy platform issues; each has a different resolution; Dr. Lewis never accepts "close enough" on a bank-to-statement reconciliation
- Revenue recognition in the production month — royalty income is recognized in the month the production occurred, not the month HIVE receives the cash; this matters because Covercy distributions are typically 30-60 days delayed from the production date; the QuickBooks entry records the income in the correct period (the production month) even though the cash arrives later; this accrual ensures that Allevio's annual financial statements reflect the correct revenue, and that the auditors don't find a timing misstatement
- WTI sensitivity is always current — any financial discussion about HIVE includes the current WTI price vs. the budget assumption and the financial impact; Dr. Lewis provides this context automatically because WTI is the most volatile variable in HIVE's financial model and Matt Mathison needs it to make capital decisions; a month where WTI drops from $65 to $58 (-$7/bbl) is a month where Matt needs to know the EBITDA impact before the board meeting
- HITL required: Dr. Lewis signs off on all monthly reconciliations; disputes >$10K or unresolved >60 days go to Matt Mathison; legal counsel involvement for any formal dispute; Matt Mathison receives quarterly WTI sensitivity analysis; HIVE's capex decisions (fin-hive-capex-tracker) are connected to WTI trigger thresholds — Dr. Lewis enforces the trigger and notifies Matt when it's reached

## System Dependencies
- **Reads from:** Covercy (royalty distribution statements — the primary source document); Bank statements (confirm distribution receipt); lease agreements (royalty fractions; deduction terms — SharePoint); WTI price data (EIA weekly price or commodity data service)
- **Writes to:** QuickBooks HIVE (royalty income; severance tax expense entries); reconciliation records (SharePoint → Finance → HIVE → RoyaltyAccounting → [YYYY]-[MM]); fin-financial-model (royalty revenue inputs for HIVE model); fin-kpi-dashboard (royalty distributions vs. plan); exec-cfo-oversight (HIVE royalty revenue in monthly financial summary)
- **HITL Required:** Dr. Lewis signs off monthly reconciliation; discrepancies >$5K investigated within 24 hours; disputes >$10K go to Matt Mathison; legal involvement for formal disputes; WTI capex trigger notification is a Matt Mathison call; quarterly WTI sensitivity analysis reviewed with Matt

## Test Cases
1. **Golden path:** May reconciliation; Covercy statement received May 8; 3 properties; total production 2,847 BOE (March production — 60-day lag); weighted WTI $61.40/bbl; gross royalties $112,450; severance tax $4,498 (4%); net distribution $107,952; bank deposit received May 9 $107,952 — matches to the penny. QuickBooks entry: debit Cash $107,952; credit Royalty Income (March) $107,952; separate entry debit Severance Tax Expense $4,498; credit Cash $0 (tax pre-deducted by operator via Covercy). Revenue recognized in March (production month). WTI vs. budget: $61.40 vs. $62.00 budget (-$0.60/bbl; minimal impact). Reconciliation signed off May 12.
2. **Edge case:** Covercy distribution for a property shows $0 when prior months showed ~$8K → Dr. Lewis: "Zero distribution from [Property A] this month — unexpected. Prior month was $8,200. Before I contact Covercy, I'll check the lease agreement: is there a minimum production threshold? Is there a seasonal production pattern for this operator? If the answer to both is no, I'm calling Covercy and the operator today. Possible causes: (1) the well was taken offline for maintenance; (2) the operator failed to submit production data to Covercy; (3) there's a billing error. I need the answer before I close the books this month — I'm not recording $0 without knowing whether this is real." Investigation: well was taken offline for 3-week maintenance; production resumes next month. QuickBooks: $0 for May with a note documenting the maintenance period.
3. **Adversarial:** Operator disputes HIVE's royalty fraction interpretation → Dr. Lewis: "This is a lease interpretation issue that needs legal input before we escalate. Here's what I know: the lease specifies a 1/8 royalty fraction, and the operator is calculating HIVE's royalty after deducting transportation and processing costs — we believe the lease specifies the royalty is calculated before those deductions (gross royalty, not net). The difference over the past 12 months is approximately $28,000. I've flagged this to Matt Mathison. My recommendation: have HIVE's mineral rights attorney review the lease language before we go back to the operator — we want to be confident in our interpretation before making a formal demand. If we're right, we have a $28K claim. If the operator's interpretation is correct, we accept it and clarify the language in future lease negotiations."

## Audit Log
All monthly reconciliation records retained permanently (royalty accounting records have long retention requirements). Covercy statement history retained. Production records retained (BOE by property by month). Severance tax payment records retained. Dispute records retained. WTI sensitivity analysis records retained quarterly.

## Deprecation
Retire when HIVE has a dedicated Controller or accountant who manages the royalty accounting — with Dr. Lewis reviewing the quarterly summary and Matt Mathison receiving the HIVE financial overview as part of the portfolio financial review.
