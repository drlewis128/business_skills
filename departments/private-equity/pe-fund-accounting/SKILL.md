---
name: pe-fund-accounting
description: "Manage fund-level accounting and financial reporting for MBL Partners. Use when the user says 'fund accounting', 'fund financials', 'fund financial statements', 'fund books', 'fund ledger', 'fund NAV', 'net asset value', 'fund balance sheet', 'fund income statement', 'management fees', 'management fee calculation', 'management fee waterfall', 'management fee offset', 'portfolio company valuations', 'fund-level valuation', 'FMV', 'fair market value', 'mark-to-market', 'unrealized value', 'realized value', 'fund audit', 'fund tax return', 'K-1', 'K-1 preparation', 'Schedule K-1', 'LP tax documents', 'fund expenses', 'fund budget', 'organizational expenses', 'organization costs', 'fee rebates', 'fee offset', 'carried interest accounting', 'carry accrual', 'GP interest', 'ILPA standards', 'fund reporting standards', 'GAAP fund accounting', 'ASC 820', 'fair value measurement', or 'quarterly fund financial report'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <close|report|value|audit|tax>] [--fund <fund-name>] [--focus <nav|fees|expenses|carry|tax>]"
---

# PE Fund Accounting

Manage fund-level accounting and financial reporting for MBL Partners — computing NAV, calculating management fees, recording portfolio company valuations, preparing fund financial statements, coordinating the annual fund audit, and supporting K-1 preparation for LPs. Fund accounting is distinct from entity-level accounting: the fund's financial statements reflect the fair value of portfolio company investments (not the companies' own GAAP financials); unrealized gains/losses flow through the fund's income statement; management fees and fund expenses are the primary operating costs; and the LP capital accounts are the primary liability. Dr. Lewis manages the mechanics of fund accounting and coordinates with the external fund administrator and auditor; Matt Mathison approves all fund financial reports before they are shared with LPs or auditors.

## When to Use
- Monthly or quarterly fund NAV close
- Management fee calculation and invoicing
- Portfolio company valuation for fund financial statements
- Annual fund audit coordination
- K-1 preparation period (January-March)

## Fund Accounting Framework

```
MBL PARTNERS FUND ACCOUNTING STRUCTURE:

  FUND ENTITY: [MBL Partners Fund I, LP] (or per actual fund name)
  ACCOUNTING BASIS: GAAP (ASC 946 — Investment Companies)
  VALUATION STANDARD: ASC 820 (Fair Value Measurement)
  REPORTING CURRENCY: USD
  FUND FISCAL YEAR: Calendar year (January 1 — December 31)
  
  KEY FUND ACCOUNTS:
    Assets:
      Portfolio company investments (at fair value)
      Cash and cash equivalents (fund-level)
      Receivables (management fee receivable; interest receivable)
      Deferred organization costs (if applicable)
    Liabilities:
      Management fees payable
      Accrued fund expenses (legal; audit; tax)
      Carried interest payable (accrued, not distributed)
    Equity (LP Capital Accounts):
      Contributed capital (per LP)
      Cumulative net income/loss allocation
      Cumulative distributions
      Ending LP capital balance

MANAGEMENT FEE CALCULATION:

  MANAGEMENT FEE RATE: [typically 1.5-2.0% per LPA — verify per fund]
  FEE BASE: Committed capital during investment period; Invested capital post-investment period (verify per LPA)
  FEE FREQUENCY: Semi-annual (advance) or per LPA schedule
  FEE OFFSET: Monitoring fees; transaction fees; board fees received from portfolio companies offset management fees
  
  CALCULATION EXAMPLE:
    Committed capital: $25M × 2.0% = $500K/year ÷ 2 = $250K semi-annual
    Less: fee offsets received (board fees; monitoring fees): $[X]
    Net management fee: $[X]
    
  MANAGEMENT FEE BILLING:
    Invoice to the fund (not to individual LPs — fund pays; fund expenses allocated to LPs pro-rata)
    Record in QuickBooks: Management Fee Expense / Management Fee Payable
    Settled via capital call (per cash management protocol) or fund cash balance

PORTFOLIO COMPANY VALUATION (ASC 820):

  VALUATION HIERARCHY (use highest observable inputs):
    Level 1: Quoted market prices (not applicable for private companies)
    Level 2: Observable inputs (recent arm's-length transactions; comparable public companies)
    Level 3: Unobservable inputs (discounted cash flows; comparable company multiples)
    MBL portfolio companies: primarily Level 3 (private; no market price)
    
  QUARTERLY VALUATION PROCESS:
    Dr. Lewis prepares initial valuation for each portfolio company using current financial data
    Methods: EV/EBITDA multiple of comparable public companies; DCF; recent transaction multiples
    Valuation committee (Matt Mathison + Dr. Lewis): reviews and approves each valuation
    External valuation firm: engaged annually (or per LPA) to provide independent valuation
    Fund auditor: reviews valuation process and inputs as part of annual audit
    
  ENTITY-SPECIFIC VALUATION ANCHORS (as of current period — update with actual data):
    Allevio: EV/Revenue multiple for healthcare MSOs; employer GRR and claim ratio drive value
    HIVE: NAV approach (acreage value per acre × net royalty acreage + PDP value); WTI sensitivity
    Column6: EV/Revenue for CTV/programmatic; agency NRR drives contract value

FUND EXPENSE MANAGEMENT:

  ALLOWABLE FUND EXPENSES (per LPA — verify):
    Legal fees (fund formation; ongoing; transactions)
    Audit and tax fees
    Directors and Officers insurance
    Investment-related due diligence costs
    Portfolio company monitoring costs (if specified)
  
  NOT FUND EXPENSES (typically paid by GP/MBL Partners):
    GP organizational overhead
    Salaries of GP employees
    Office rent and overhead (unless specifically permitted)
    
  MONTHLY EXPENSE REVIEW:
    Dr. Lewis reviews fund invoices before approval
    QuickBooks: fund expense classification and coding
    Fund budget vs. actual: flag any >10% variance in fund expenses to Matt Mathison

ANNUAL AUDIT & TAX:

  AUDIT TIMELINE:
    Year-end close: January 15
    Draft audited financials to Matt Mathison: February 28
    Matt Mathison review: by March 10
    Audited financials to LPs: by March 31 (or per LPA)
    
  K-1 TIMELINE:
    Draft K-1s from fund tax preparer: by February 28
    Dr. Lewis review for accuracy: by March 10
    K-1s to LPs: by March 31 (or April 15 if extended)
```

## Output Format

```markdown
# Fund NAV Report — [Fund Name] — [Quarter/Year]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison

---

## Fund Summary

| | Current Quarter | Prior Quarter | Change |
|-|----------------|--------------|-------|
| Total NAV (gross) | $[X] | $[X] | [+/-$X] |
| LP NAV | $[X] | $[X] | [+/-$X] |
| GP interest (carry accrual) | $[X] | $[X] | [+/-$X] |
| Fund cash | $[X] | $[X] | |

---

## Portfolio Company Valuations

| Company | Cost basis | FMV this quarter | FMV prior quarter | Unrealized G/L | Method |
|---------|-----------|-----------------|------------------|---------------|--------|
| Allevio | $[X] | $[X] | $[X] | $[X] | EV/Rev |
| HIVE | $[X] | $[X] | $[X] | $[X] | NAV |
| Column6 | $[X] | $[X] | $[X] | $[X] | EV/Rev |

---

## Management Fee Summary

| Period | Fee base | Fee rate | Gross fee | Offsets | Net fee |
|--------|---------|---------|----------|---------|--------|
| [H1/H2 YYYY] | $[X] | [X%] | $[X] | ($[X]) | $[X] |
```

## Output Contract
- Every portfolio company valuation is approved by Matt Mathison — fund valuations are the primary output of fund accounting and directly drive the NAV (and thus LP reporting); a valuation that is too high creates an LP expectation mismatch at exit; a valuation that is too low understates fund performance; Dr. Lewis prepares the valuation with documented methodology and presents it to Matt Mathison for review; the valuation committee (Matt + Dr. Lewis) approves each valuation before it goes into the fund financials; external valuation firm engagement is required at minimum annually
- Fund expenses are subject to strict LPA compliance — charging non-allowable expenses to the fund is a fiduciary violation; Dr. Lewis reviews every expense invoice against the LPA's permitted expense list before approving; any expense in a gray area goes to fund counsel for a determination before it is charged to the fund; the fund audit tests expense classification — a material error in expense allocation is an audit finding
- K-1 accuracy is a tax compliance obligation for LPs — LP K-1s govern each LP's tax filing; errors in K-1s (wrong income allocation; wrong basis; wrong distribution amounts) create LP tax problems that the fund must correct; Dr. Lewis reviews K-1 drafts against the LP capital account ledger before they are delivered; any LP that identifies a K-1 error gets a corrected K-1 (K-1 amendment) within 5 business days of the error being confirmed
- HITL required: quarterly NAV → Matt Mathison valuation committee approval; annual audited financials → Matt Mathison review and approval before LP distribution; management fee calculations → Matt awareness (they affect LP returns); K-1 delivery → Dr. Lewis reviews before send; any fund expense >$25K → Dr. Lewis approval; external valuation engagement → Matt Mathison approval; fund audit scope → Matt Mathison + Dr. Lewis agree with auditors

## System Dependencies
- **Reads from:** LPA (fee calculation; expense permissions; audit requirements); QuickBooks (fund GL; expense records; capital account history); portfolio company financial statements (valuation inputs); pe-capital-call-manager (capital contribution records); pe-distribution-manager (distribution history); external valuation firm (independent FMV opinions); fund tax preparer (K-1 inputs)
- **Writes to:** Fund financial statements (QuickBooks; sent to LPs per ops-lp-relations); LP capital accounts (updated monthly); management fee invoices; K-1 drafts (sent to fund tax preparer); NAV reports (SharePoint → Governance → FundAccounting → [YYYY] → Q[N]); Matt Mathison approvals (retained)
- **HITL Required:** Quarterly NAV → Matt valuation committee; audited financials → Matt review before LP distribution; management fees → Matt awareness; K-1s → Dr. Lewis review; fund expense exceptions → Dr. Lewis; external valuation → Matt approval; audit scope → Matt + Dr. Lewis

## Test Cases
1. **Golden path:** Q3 fund close. Dr. Lewis pulls portfolio company financials: Allevio Q3 revenue $7.2M; EBITDA $1.1M; comparable MSO EV/Revenue 2.8x → Allevio FMV $20.2M (cost basis $8M; unrealized gain $12.2M). HIVE: net royalty acreage 2,400 acres × $4,200/acre NAV = $10.1M (cost basis $6M; unrealized gain $4.1M). Column6: revenue $3.8M; EV/Revenue 2.2x for CTV = $8.4M (cost basis $5M; unrealized gain $3.4M). Total fund FMV: $38.7M. LP NAV: $38.7M less carry accrual. Valuation committee (Matt + Dr. Lewis): review methodology; approve valuations. NAV report prepared. Matt approves. Q3 NAV report to LPs via pe-lp-quarterly-report.
2. **Edge case:** The external valuation firm values HIVE at $8.2M vs. Dr. Lewis's internal estimate of $10.1M (22% variance) → Dr. Lewis: "The external valuation for HIVE is materially lower than our internal estimate — $8.2M vs. $10.1M. Key difference: the external firm applied a 15% discount to the royalty NAV for WTI price uncertainty; we didn't discount. I'll get their full methodology and share it with Matt. For the fund financials, we will use the external valuation ($8.2M) — this is GAAP best practice when an independent valuation is available. Matt: this will lower Q3 NAV by $1.9M vs. our internal estimate. I'll note the reason in the NAV report commentary."
3. **Adversarial:** An LP argues the management fee calculation is wrong for the post-investment-period phase (disputing whether the fee base should be committed capital or invested capital) → Dr. Lewis: "This is an LPA interpretation question. I'll pull the exact LPA language on fee base transition and send it to fund counsel for a definitive opinion. Until counsel rules, I won't change the fee calculation or issue a credit. My initial read of the LPA supports our current calculation, but the LP's point about the transition date language is worth clarifying. Expected fund counsel response: 5 business days. Matt Mathison: I'm briefing you — this LP dispute about management fees is the first of this type. Fund counsel's ruling will set the precedent for future periods."

## Audit Log
All fund financial statements retained permanently. Quarterly NAV reports retained. Valuation committee meeting records retained (with methodology documentation). Management fee calculations retained (per period). K-1 delivery records retained. Audit correspondence retained. Fund counsel interpretations retained. External valuation reports retained.

## Deprecation
Fund accounting is a permanent function for the life of each fund. Accounting standards (ASC 820; ASC 946) are monitored for updates; ILPA reporting standards are incorporated as they evolve.
