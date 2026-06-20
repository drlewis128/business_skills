---
name: pe-valuation-model
description: "Build and maintain valuation models for MBL Partners portfolio companies. Use when the user says 'valuation', 'valuation model', 'fair value', 'FMV', 'fair market value', 'portfolio company valuation', 'how much is worth', 'what is the company worth', 'Allevio valuation', 'HIVE valuation', 'Column6 valuation', 'mark to market', 'mark-to-model', 'unrealized value', 'carrying value', 'valuation methodology', 'DCF', 'discounted cash flow', 'comparable company', 'comparable companies', 'comps', 'comparable transactions', 'precedent transactions', 'exit multiple', 'enterprise value', 'EV', 'revenue multiple', 'EBITDA multiple', 'EV/EBITDA', 'EV/Revenue', 'NAV approach', 'net asset value approach', 'royalty NAV', 'acreage value', 'ASC 820', 'Level 3 valuation', 'valuation inputs', 'valuation assumptions', 'quarterly valuation', 'annual valuation', 'external valuation', 'third-party valuation', 'independent valuation', 'valuation committee', 'valuation review', 'valuation update', or 'book value'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--method <ebitda-multiple|revenue-multiple|dcf|nav>] [--action <build|update|review|present>] [--period <quarterly|annual|exit-prep>]"
---

# PE Valuation Model

Build and maintain valuation models for MBL Partners portfolio companies — selecting the appropriate valuation methodology per entity, building the valuation model with documented assumptions, updating valuations quarterly, running the valuation committee process, and producing ASC 820-compliant fair value measurements for the fund's financial statements. Portfolio company valuations drive two critical outputs: the fund's NAV (which determines TVPI/RVPI for LP reporting) and the carried interest accrual (which determines GP economics); both must reflect the true economic value of each business — not an aspirational value that makes the fund look good, and not a depressed value that unfairly delays carry.

## When to Use
- Quarterly valuation update
- Annual external valuation
- Preparing a valuation for LP report or board presentation
- Exit preparation (pe-exit-value-optimizer)

## Valuation Model Framework

```
VALUATION METHODOLOGY SELECTION (ASC 820 hierarchy):

  ENTITY-SPECIFIC METHODOLOGY:
  
    ALLEVIO (Healthcare MSO):
      Primary method: EV/Revenue multiple from comparable public companies and precedent transactions
      Secondary method: DCF (if forward projections are reliable and significant investment period remains)
      Comparable companies: healthcare MSO; value-based care; employer-sponsored health companies
        Examples (verify current comparables): Alignment Healthcare; Privia Health; Evolent Health;
          Oak Street Health (precedent acquisition by CVS)
      Key multiple drivers:
        Revenue growth rate (higher growth → higher multiple)
        Employer GRR (higher retention → higher multiple; lower churn risk)
        Claim ratio (lower ratio → higher clinical margin → higher value)
      HIPAA: valuation uses aggregate financial metrics — no PHI in model inputs or outputs
      
    HIVE PARTNERS (Oil & Gas Royalties):
      Primary method: NAV (Net Asset Value) approach
        PDP (Proved Developed Producing): production × price deck × royalty rate / discount rate
        PDNP (Proved Developed Non-Producing) and PUD: haircut to PDP value
        Acreage: value per net royalty acre from comparable royalty transactions
      Secondary method: comparable royalty acquisition transactions ($/NRA)
      Key value drivers:
        WTI oil price (primary — use a price deck, not spot price alone)
        Production volumes (verify against operator production statements)
        Net royalty acreage
        Operator quality
      WTI sensitivity: show value at $60, $65, $70, $75, $80/bbl
      
    COLUMN6 / SIPROCAL (CTV/Mobile/Gaming):
      Primary method: EV/Revenue multiple from comparable public companies
      Comparable companies: Digital media; CTV; programmatic advertising; ad-tech
      Key multiple drivers:
        Revenue growth rate
        Agency NRR (higher retention → higher multiple)
        VCR (quality signal → premium multiple vs. low-quality traffic)
        Gross margin % (higher margin → higher multiple)

VALUATION MODEL INPUTS (per entity — update quarterly):

  FINANCIAL INPUTS:
    Revenue (TTM; forward 12 months)
    EBITDA (TTM; forward 12 months)
    Net debt (bank debt + debt-like items − cash)
    
  COMPARABLE COMPANY INPUTS (update quarterly from public filings):
    Comparable company universe: 5-8 companies
    Comparable company multiples: EV/Revenue (TTM and forward); EV/EBITDA (TTM and forward)
    
    ADJUSTMENT FACTORS:
      Size discount: MBL portfolio companies are smaller than public comps → discount of 20-35%
      Illiquidity discount: private company premium for lack of marketability → 15-25%
      Control premium: MBL has control (vs. minority public shares) → premium of 20-30%
      Net discount: typically 10-20% discount to public comp multiples for LMM private companies

VALUATION COMMITTEE PROCESS:

  QUARTERLY:
    Dr. Lewis: prepares valuation model with inputs and output range
    Dr. Lewis presents to valuation committee (Dr. Lewis + Matt Mathison)
    Valuation committee reviews: methodology; inputs; comparable company selection; discounts/premiums
    Valuation committee approves: specific point estimate FMV (or narrow range)
    Approved FMV enters pe-fund-accounting for the quarterly financial statements
    
  ANNUAL:
    External valuation firm: engaged to provide independent FMV opinion
    If external opinion differs by >15% from internal: valuation committee reviews; external opinion typically prevails
    External valuation report retained permanently
    
  DOCUMENTATION:
    Every quarterly valuation: methodology memo; comparable company table; discount/premium rationale
    Valuation committee meeting minutes (who attended; what was approved; key discussion points)
    Retained per ASC 820 documentation requirements (minimum 7 years)
```

## Output Format

```markdown
# Portfolio Company Valuation — [Entity] — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Valuation Committee (Dr. Lewis + Matt Mathison)

---

## Methodology

**Primary method:** [EV/Revenue / EV/EBITDA / NAV]
**Secondary method:** [DCF / Comparable transactions]
**Justification:** [Why this method is appropriate for this business at this stage]

---

## Comparable Company Analysis

| Company | Market cap | EV | Revenue (TTM) | EV/Rev (TTM) | EV/Rev (Fwd) | Notes |
|---------|-----------|-----|--------------|-------------|-------------|-------|
| [Comp 1] | $[X]B | $[X]B | $[X]M | [X.Xx]x | [X.Xx]x | |
| [Comp 2] | $[X]B | $[X]B | $[X]M | [X.Xx]x | [X.Xx]x | |
| **Median** | | | | **[X.Xx]x** | **[X.Xx]x** | |

---

## Valuation Calculation

| | | Amount |
|-|-|-------|
| Revenue (TTM) | | $[X]M |
| Applied EV/Revenue multiple | | [X.Xx]x |
| Gross EV (before discounts) | | $[X]M |
| Size / illiquidity discount | ([X%]) | ($[X]M) |
| **Net enterprise value** | | **$[X]M** |
| Less: net debt | | ($[X]M) |
| **Fair market value (equity)** | | **$[X]M** |

---

## Prior vs. Current Valuation

| | Prior quarter | Current quarter | Change |
|-|--------------|----------------|-------|
| FMV | $[X]M | $[X]M | [+/-$X]M ([+/-X%]) |
| Implied multiple | [X.Xx]x | [X.Xx]x | |
| Primary driver of change | [Business performance / Comp multiple change / Both] |
```

## Output Contract
- Valuation methodology is consistent quarter-to-quarter unless there is a documented reason to change — switching valuation methods to produce a higher number in a given quarter is a GAAP violation and a fiduciary breach; Dr. Lewis uses the same methodology for each entity in every quarter; if a methodology change is appropriate (e.g., the business has matured and DCF is now more reliable), the change is documented in the valuation committee minutes with a clear rationale; the prior quarter's value is also presented under the new methodology for comparability; methodology changes are always disclosed in the LP quarterly report
- Comparable companies are sourced and updated objectively — comparable companies are selected based on business model and financial profile similarity, not on which ones produce the highest multiple; Dr. Lewis uses a pre-defined peer set and updates the multiples from public filings quarterly; any change to the peer set (adding or removing a company) is documented in the valuation committee minutes with a rationale; cherry-picking comparables to inflate value is a valuation practice that will eventually be called out by the fund auditor or external valuation firm
- The external valuation firm opinion is accepted when it differs materially — an external valuation firm is engaged precisely because it provides an independent, unbiased view; if the external firm values HIVE at $8.2M and Dr. Lewis's internal model says $10.1M, the 22% gap is resolved by reviewing the methodology difference and, absent a clear error by the external firm, adopting the external firm's conclusion; pushing back on an unfavorable external valuation because "we think our model is right" undermines the purpose of external validation and creates audit risk
- HITL required: all quarterly valuations → valuation committee (Dr. Lewis + Matt Mathison) must approve before the FMV enters the financial statements; external valuation engagement → Matt Mathison approves firm selection and fee; external valuation that differs materially from internal → Matt Mathison decides which to use; valuation committee minutes → both Dr. Lewis and Matt Mathison sign off; any valuation used in an LP report → Matt Mathison review before distribution

## System Dependencies
- **Reads from:** Entity financial statements (revenue; EBITDA; net debt from QuickBooks); public market data (comparable company multiples from Bloomberg; Capital IQ; or equivalent); pe-portfolio-kpi-dashboard (entity operational metrics that drive value); pe-financial-diligence (original entry valuation model); external valuation firm reports (annual)
- **Writes to:** Quarterly valuation memos (SharePoint → Portfolio → Valuations → [Entity] → Q[N]-[YYYY]); valuation committee minutes; pe-fund-accounting (approved FMV for financial statements and NAV); pe-moic-calculator (FMV input); pe-irr-tracker (FMV input); pe-lp-quarterly-report (FMV for RVPI calculation)
- **HITL Required:** Every quarterly valuation → valuation committee approval; external valuation engagement → Matt approval; material valuation discrepancy with external firm → Matt decision; valuation methodology change → Matt + documented rationale; LP report valuation → Matt review

## Test Cases
1. **Golden path:** Q3 Allevio valuation. Revenue TTM: $7.2M. Comparable company median EV/Revenue (TTM): 2.8x (based on Alignment Healthcare; Privia Health; Evolent Health). Gross EV: $7.2M × 2.8x = $20.2M. Size discount (25%): -$5.0M. Net EV: $15.1M. Net debt: $0 (no entity-level debt). FMV (equity): $15.1M (rounded to $15.0M). Prior quarter FMV: $14.2M. Change: +$800K (+5.6%) — driven by revenue growth ($7.2M vs. $6.8M TTM last quarter). Valuation committee: Dr. Lewis and Matt Mathison review; approve $15.0M. Committee minutes signed.
2. **Edge case:** Publicly traded comparable companies have experienced a sector-wide multiple compression (from 3.0x to 2.2x EV/Revenue) due to interest rate increases → Dr. Lewis: "Healthcare MSO public comparable multiples have compressed from 3.0x to 2.2x EV/Revenue over the past 2 quarters. Applying the current 2.2x to Allevio's revenue: gross EV $15.8M (down from $20.2M at 2.8x). Post-discount FMV: $11.9M (down from $14.2M prior quarter). This is a 16% valuation reduction driven entirely by public market multiple compression — Allevio's underlying business is performing on plan. I'm presenting this to the valuation committee with full documentation. Matt: the LP quarterly report will show an RVPI reduction; I'll include a clear explanation that the change is driven by market multiples, not business performance."
3. **Adversarial:** The entity CEO argues that the comparable companies selected undervalue the business and proposes using a different peer set → Dr. Lewis: "I'll review the CEO's suggested peer set against our selection criteria: business model similarity; revenue scale; geographic market. If the CEO's suggested comparables are legitimate peers that we overlooked, I'll add them and the committee will evaluate the impact on the valuation. If they're higher-multiple companies that are not genuinely comparable, I'll document the CEO's suggestion and the reasons for not using them in the valuation committee minutes. The selection process must be objective — the CEO's view of which comparables are 'appropriate' is informed by their interest in a higher valuation, which is not a reliable guide. I'll present the analysis to the committee with transparency about this discussion."

## Audit Log
All quarterly valuation memos retained permanently (with comparable company data; discount rationale; committee approval). External valuation reports retained permanently. Valuation committee minutes retained permanently. Methodology change documentation retained. LP report disclosures of valuation retained.

## Deprecation
Valuation modeling is active for the hold period of each investment. Valuation methodology is reviewed annually against ASC 820 standards and auditor guidance. Comparable company peer sets are updated quarterly from public market data.
