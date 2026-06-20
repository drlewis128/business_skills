---
name: pe-exit-financial-prep
description: "Prepare financial materials for MBL Partners portfolio company exits. Use when the user says 'exit financials', 'exit financial prep', 'financial prep for exit', 'financial model for exit', 'exit model', 'EBITDA bridge exit', 'exit EBITDA bridge', 'normalized EBITDA exit', 'clean EBITDA exit', 'EBITDA for sale', 'management accounts exit', 'financial package exit', 'data room financials', 'sell-side financial model', 'three statement model exit', 'P&L for exit', 'balance sheet exit', 'cash flow exit', 'debt schedule exit', 'net debt at close', 'working capital at close', 'working capital peg', 'WC peg', 'working capital adjustment', 'NWC peg', 'closing cash', 'closing debt', 'purchase price adjustment', 'locked box', 'closing accounts', 'trailing twelve months', 'TTM financials', 'LTM financials', 'financial package for buyer', 'QoE prep', 'quality of earnings prep', 'sell-side QoE', 'financial story for buyers', 'financial narrative exit', 'revenue bridge exit', 'gross margin bridge exit', or 'EBITDA waterfall exit'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--action <build|review|package|update>] [--focus <ebitda|wc|debt|model|package>] [--purpose <data-room|cim|qoe-prep|banker-review>]"
---

# PE Exit Financial Prep

Prepare financial materials for MBL Partners portfolio company exits — building the normalized EBITDA bridge, net debt and working capital analysis, TTM/LTM financial summary, and sell-side financial package that will be the foundation of the CIM, data room, and buy-side QoE review. Financial preparation for exit is the translation of the investment narrative into numbers that buyers can trust. A well-prepared exit financial package does two things: it shows a clean, defensible EBITDA that withstands buy-side scrutiny, and it pre-empts the questions that buy-side QoE teams always ask. Every dollar of EBITDA that gets stripped out in the buy-side QoE is a dollar reduction in the implied exit value; Dr. Lewis builds financial packages that hold up under adversarial review.

## When to Use
- Beginning exit preparation (12+ months before go-to-market)
- Preparing the CIM financial section
- Building the data room financial package
- Pre-empting buy-side QoE questions

## Exit Financial Preparation Framework

```
EXIT FINANCIAL PACKAGE COMPONENTS:

  1. NORMALIZED EBITDA BRIDGE:
     Starting point: GAAP EBITDA (from QuickBooks / audited financials)
     Add-backs (must be specific; documented; defensible):
       + Owner/non-recurring compensation (owner salary above market rate)
       + One-time professional fees (legal; consulting; non-recurring)
       + Acquisition costs (M&A fees; integration costs)
       + COVID/one-time disruption impacts (if documented)
       - Missing costs (functions owner performed that buyer must hire: CEO salary, if founder performs this)
       - Public company costs (if applicable)
       Normalized EBITDA = GAAP EBITDA ± add-backs
       
     DOCUMENTATION FOR EACH ADD-BACK (required):
       Description: what it is and why it's non-recurring
       Amount: exact dollar figure
       Source: QuickBooks GL line; invoice; contract
       Buyer scrutiny level: LOW (obvious; documented) / MEDIUM (judgment call) / HIGH (likely challenged)
       
     ADD-BACKS TO AVOID (high risk of QoE reversal):
       Recurring expenses labeled "one-time"
       Revenue recognized early without customer acceptance
       Cost deferrals (pushing expenses out of the measurement period)
       Management estimates not tied to external data

  2. NET WORKING CAPITAL ANALYSIS:
     Net Working Capital (NWC) = Current Assets - Current Liabilities
     Typical NWC components:
       Current Assets: Accounts Receivable + Inventory + Prepaid Expenses
       Current Liabilities: Accounts Payable + Accrued Liabilities + Deferred Revenue
     
     NWC PEG:
       Definition: the "normal" NWC required to run the business (the target at close)
       Basis: trailing 12-month average NWC (or last 8 quarters if highly seasonal)
       Method: calculate monthly NWC for each of the last 12 months; average
       If closing NWC > NWC peg: seller receives the excess
       If closing NWC < NWC peg: buyer receives a price adjustment (or seller contributes)
       Dispute risk: the NWC peg is one of the most contested post-close items; establish it
       clearly in the LOI and document the methodology in the purchase agreement
       
  3. NET DEBT ANALYSIS:
     Net Debt at close = Financial Debt - Cash
     Financial Debt includes:
       Term loans; revolving credit balances; seller notes; capital leases (if any)
       Deferred compensation liabilities; earnout obligations
       Any items the buyer argues are "debt-like" (pension obligations; environmental liability)
     Cash:
       Minimum cash at close (required to operate) is excluded from buyer's benefit
       Excess cash above minimum is credited to seller (reduces debt-like items)
     Net Debt directly reduces the equity check: Equity Value = Enterprise Value - Net Debt

  4. TTM/LTM FINANCIAL SUMMARY:
     Construct from: [most recent audited year-end] + [months since year-end] - [same months prior year]
     Formula: TTM = Last full audited year + YTD current year - YTD prior year
     Lines: Revenue; Gross Profit; EBITDA (GAAP); Adjustments; Normalized EBITDA
     Include monthly detail for the last 24 months (seasonality visibility for buyers)

ENTITY-SPECIFIC FINANCIAL PREP:

  ALLEVIO (Healthcare MSO):
    Key financial metric: EBITDA per employer group (shows unit economics)
    Revenue recognition: confirm PMPM revenue recognized per period; not lumped
    Medical claims: actuarial reserve adequacy (buyer will scrutinize)
    HIPAA: all financial data is aggregate/de-identified — no individual member financials
    
  HIVE (Oil & Gas Royalties):
    Revenue: distinguish royalty income (recurring) vs. bonus/mineral rights income (non-recurring)
    WTI-linked revenue: show WTI price assumption behind each period's revenue
    Depletion accounting: correct treatment of oil and gas depletion (DD&A)
    
  COLUMN6 (CTV/Media):
    Revenue: separate managed service (higher margin) from programmatic (lower margin)
    Campaign timing: campaigns that cross period ends; recognition consistency
    Agency rebates/commissions: how treated; consistent methodology year-over-year
```

## Output Format

```markdown
# Exit Financial Package — [Entity] — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison / [Banker]

---

## Normalized EBITDA Bridge

| Item | Amount | Documentation | Buyer scrutiny |
|------|--------|--------------|----------------|
| GAAP EBITDA (TTM ending [Date]) | $[X] | Audited / QuickBooks | — |
| + Owner comp above market | $[X] | Employment agreement; market comp data | LOW |
| + Non-recurring legal (re: [matter]) | $[X] | Invoice; legal engagement letter | MEDIUM |
| + One-time [other] | $[X] | [Documentation] | LOW |
| **Normalized EBITDA** | **$[X]** | — | — |

---

## Net Working Capital Analysis

**NWC peg (12-month average):** $[X]
**Estimated closing NWC:** $[X]
**Adjustment at close:** Seller receives $[X] excess / Buyer receives $[X] shortfall

---

## Net Debt at Close (estimated)

| Item | Amount |
|------|--------|
| Term loan outstanding | $[X] |
| Revolver balance | $[X] |
| Capital leases | $[X] |
| Total debt | $[X] |
| Less: cash (excess of minimum) | ($[X]) |
| **Net Debt** | **$[X]** |

---

## Implied Equity Value at [Exit EV]

| | Amount |
|-|--------|
| Enterprise Value | $[X]M |
| Less: Net Debt | ($[X]M) |
| Plus: NWC adjustment | $[X]M |
| **Equity Value to MBL** | **$[X]M** |
```

## Output Contract
- Every add-back has documentation before the CIM is distributed — add-backs in the CIM that cannot be supported by primary documentation (invoices; board resolutions; GL printouts; employment agreements) are stripped out by buy-side QoE firms and produce a credibility problem; Dr. Lewis collects supporting documentation for every add-back before it appears in the CIM; "documented add-back" means a physical document that shows the exact dollar amount, the nature of the item, and why it is non-recurring; an add-back without documentation is not included in the CIM — it is disclosed as "subject to documentation" only if Dr. Lewis believes it is valid and documentation can be obtained
- The NWC peg methodology is disclosed to the buyer before the LOI — the NWC peg is established from a clear, disclosed methodology (trailing 12-month average); if the methodology is different (e.g., trailing 8-quarter average to adjust for seasonality), the methodology is disclosed and the buyer is given the monthly detail to verify it; a NWC peg that appears to have been calculated to favor the seller produces post-close disputes and destroys trust; Dr. Lewis uses the most defensible methodology and agrees on it with the buyer before closing
- Net debt items include items the buyer may try to characterize as debt-like — buyers are incentivized to argue that items are "debt-like" (which reduces the equity check they must write); Dr. Lewis prepares a clear definition of what is and is not debt for the purchase agreement; common items that become disputes: accrued vacation; deferred compensation; customer deposits; environmental remediation reserves; Dr. Lewis resolves these definitions in the LOI or purchase agreement and does not leave them to the closing statement
- HITL required: normalized EBITDA finalized → Matt Mathison reviews and approves (this is the number the business will be sold on); CIM financial section → Matt Mathison approves before banker distributes; NWC peg methodology → Matt Mathison approves before LOI; data room financial package → Matt Mathison approves before data room goes live; any post-LOI financial restatement → Matt Mathison briefing immediately; closing statement → sell-side counsel reviews; any disputed item at closing → Matt Mathison decides whether to concede or dispute

## System Dependencies
- **Reads from:** Entity financial systems (QuickBooks; AdvancedMD aggregate; Covercy); pe-financial-diligence (normalized EBITDA methodology from entry DD — now inverted for exit); pe-fund-accounting (FMV; investment cost basis); pe-exit-readiness-assessor (financial readiness gap analysis); audited financial statements; entity CFO (management accounts; GL detail)
- **Writes to:** Exit financial model (SharePoint → Portfolio → [Entity] → Exit → Financials); CIM financial section; data room financial package (VDR); Matt Mathison exit briefings; banker engagement materials; pe-moic-calculator (equity value for MOIC update)
- **HITL Required:** Normalized EBITDA → Matt approves; CIM financials → Matt approves; NWC peg → Matt approves before LOI; data room financial package → Matt approves; post-LOI financial restatement → Matt briefing; closing statement → sell-side counsel; disputed items at closing → Matt decides

## Test Cases
1. **Golden path:** Allevio exit. TTM GAAP EBITDA: $1.2M. Add-backs: founder salary above market ($180K); one-time legal cost related to a resolved employment dispute ($65K, invoice available). Normalized EBITDA: $1.445M. NWC peg: $480K (12-month average). Estimated closing NWC: $520K → $40K excess to seller. Net debt: $350K revolver; $0 term loan; $50K capital lease. Total net debt: $400K; less: excess cash $50K = $350K net debt. Exit EV at 12x Normalized EBITDA: $17.3M. Equity to MBL: $17.3M − $350K + $40K = $17.0M equity check. MOIC: $17.0M / $4.5M invested equity = 3.78x.
2. **Edge case:** Buy-side QoE challenges the founder salary add-back ($180K), arguing the business needs a professional CEO at market rate ($250K) → this would increase normalized expenses by $70K and reduce EBITDA by $70K → equity value impact at 12x: -$840K. Dr. Lewis response: "The $180K add-back reflects the difference between the founder's total comp ($350K/year) and the market rate for a CEO of this size/complexity ($250K for a professional CEO). We agree a buyer will need a CEO; we've priced in a $250K CEO cost. The founder is taking $100K above that market rate. The $180K add-back assumes: (1) buyer retains a $250K CEO — they need one anyway; (2) founder comp above the $250K market rate is $100K; (3) plus $80K in one-time termination payment that appeared in this period. We'll defend $180K as disclosed." (Prepare a one-page add-back defense memo for each HIGH-scrutiny item.)
3. **Adversarial:** The entity CFO inflates the TTM by pulling forward revenue from Q1 of the next fiscal year into Q4 of the exit period to improve the TTM EBITDA → Dr. Lewis identifies it: "The Q4 revenue includes approximately $120K of services not yet delivered as of the period end date — this appears to be revenue recognized before it was earned. Buy-side QoE will find this on Day 1 when they reconcile revenue to customer delivery records. I'm not putting this in the CIM as-is. Options: (1) Restate the TTM with proper recognition; (2) Disclose the item as a known adjustment. Matt Mathison briefing required — this needs to be corrected before the CIM is drafted."

## Audit Log
All exit financial models retained (with version history; Matt Mathison approval; dates). Add-back documentation retained (per item; source documents; scrutiny classification). NWC peg calculations retained (with monthly detail; methodology). Net debt analysis retained. Closing statement retained permanently. Post-close adjustment records retained (if any). Buy-side QoE response records retained.

## Deprecation
Exit financial preparation is activated when a banker is engaged and runs through closing. Financial models are retained permanently. The normalized EBITDA methodology is reviewed after each exit for lessons learned.
