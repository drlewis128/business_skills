---
name: pe-financial-diligence
description: "Execute financial due diligence and quality of earnings analysis for MBL Partners acquisitions. Use when the user says 'financial due diligence', 'financial diligence', 'quality of earnings', 'QoE', 'Q of E', 'QoE report', 'EBITDA quality', 'EBITDA normalization', 'normalized EBITDA', 'adjusted EBITDA', 'EBITDA adjustments', 'one-time items', 'non-recurring items', 'owner add-backs', 'add-back analysis', 'addbacks', 'revenue quality', 'revenue recognition', 'revenue analysis', 'revenue audit', 'revenue validation', 'customer concentration analysis', 'accounts receivable analysis', 'AR aging diligence', 'working capital analysis', 'working capital normalization', 'working capital target', 'balance sheet review', 'debt and debt-like items', 'cash and cash-like items', 'hidden liabilities', 'off-balance sheet liabilities', 'contingent liabilities', 'financial statement review', 'tax DD', 'tax diligence', 'deferred revenue', 'revenue backlog', 'pipeline analysis', 'financial model validation', or 'financial DD finding'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--action <analyze|report|adjust|validate>] [--focus <qoe|working-capital|debt|revenue|balance-sheet>] [--period <ttm|fy|quarter>]"
---

# PE Financial Diligence

Execute financial due diligence and quality of earnings (QoE) analysis for MBL Partners acquisitions — validating the accuracy and sustainability of the company's reported financial performance, identifying EBITDA adjustments, normalizing working capital, surfacing debt/debt-like items, and producing a defensible QoE output that supports the purchase price negotiation. Financial diligence is MBL's primary protection against overpaying for a business: the EBITDA on which MBL's offer is based must be the sustainable, repeatable EBITDA of the business — not the seller's adjusted number that includes heroic add-backs; the working capital peg must reflect true normalized WC — not a favorable timing manipulation; and all debt and debt-like items must be identified so they are deducted from the equity price at closing.

## When to Use
- LOI signed and financial DD is initiated
- QoE report is being reviewed from an external advisor
- Working capital peg is being negotiated
- A specific financial finding needs to be analyzed

## Financial Diligence Framework

```
QUALITY OF EARNINGS (QoE) ANALYSIS:

  PURPOSE: Determine the TRUE, sustainable EBITDA of the business
  
  STEP 1 — REPORTED EBITDA STARTING POINT:
    Pull 3 years of financial statements (audited if available; management if not)
    Trailing 12 months (TTM) EBITDA = the basis for the purchase price
    
  STEP 2 — REVENUE QUALITY ANALYSIS:
    Revenue by customer (identify concentration — any customer >20% of revenue?)
    Revenue by type (recurring vs. project vs. one-time)
    Revenue by contract (term; cancellation provisions; auto-renewal?)
    Revenue recognition policy (accrual basis? any deferred revenue issues?)
    Revenue trend by quarter (seasonal? declining? accelerating?)
    Red flags: one very large Q4 (year-end push); declining renewal rates; 
    billing before delivery; recognizing signed but undelivered contracts
    
  STEP 3 — EBITDA NORMALIZATION:
    
    STANDARD ADD-BACKS (increase EBITDA; seller-favorable):
      Owner compensation above market rate (excess salary of owner-operator)
      Personal expenses run through the business (car; personal travel; memberships)
      One-time professional fees (legal; accounting for unusual events)
      Non-recurring events (write-offs; settlements; extraordinary expenses)
      
    STANDARD DEDUCTIONS (decrease EBITDA; buyer-favorable — often missed by seller):
      Below-market owner salary if owner is critical and will be replaced by a market-rate employee
      Missing costs for functions the owner performed personally (e.g., owner did all sales → 
        add cost of a VP Sales they didn't pay for)
      Below-market rent from a related party landlord (add market rent differential)
      Deferred maintenance or capex that is necessary but hasn't been spent
      Pro forma costs for future hires or systems the business needs to scale
      
    RESULT: Normalized EBITDA = typically LOWER than seller's stated adjusted EBITDA
    
  STEP 4 — WORKING CAPITAL ANALYSIS:
    Current assets: AR; inventory; prepaid
    Current liabilities: AP; accrued liabilities; deferred revenue; current portion of debt
    Normalized WC = trailing 12-month average (or per seasonal analysis)
    WC peg: the "normal" WC level the business should have at closing
    WC adjustment at closing: if actual WC > peg → seller pays buyer; if < peg → buyer pays seller
    
  STEP 5 — DEBT AND DEBT-LIKE ITEMS (deducted from EV to arrive at equity price):
    Bank debt: term loans; revolving credit; notes payable
    Debt-like items: deferred revenue (obligation to deliver service); accrued vacation; 
      customer deposits; capital lease obligations; deferred compensation; earn-out obligations
    Hidden liabilities: contingent liabilities (litigation; tax; environmental)
    
  STEP 6 — CASH AND CASH-LIKE ITEMS (added to EV to arrive at equity price):
    Excess cash: cash above normalized WC requirement
    Cash-like: readily convertible short-term instruments
    Restricted cash (e.g., for regulatory requirements): not included

SECTOR-SPECIFIC FINANCIAL DILIGENCE:

  HEALTHCARE / ALLEVIO:
    Revenue recognition: payer mix; contract terms with employers; PMPM vs. fee-for-service
    Collections: AdvancedMD or similar system — clean claim rate; DSO; AR aging
    Claim ratio: PMPM expenses vs. PMPM revenue (if risk-bearing contract)
    Capitation adjustments: any retroactive contract adjustments from payers?
    Revenue withhold: any withheld revenue from payers pending quality metrics?
    
  ENERGY / HIVE:
    Revenue: royalty payments from operators — match to Covercy or production statements
    Verify: production volumes × commodity price × royalty rate = revenue (reconcile to the penny)
    Depletion: accounting for resource depletion (depletion expense affects EBITDA optics)
    WTI price assumption: what price was used in the seller's projections vs. current price?
    
  CTV / COLUMN6:
    Revenue: verify campaign delivery rates (were billed impressions actually delivered?)
    Make-good: any unrecorded make-good obligations from under-delivered campaigns?
    IO (Insertion Order): review outstanding IOs for potential revenue and make-good exposure
    DSP costs: are DSP costs fully loaded in the reported cost structure?
```

## Output Format

```markdown
# Financial Diligence Summary — [Company Name] — [Date]
**Prepared by:** Dr. Lewis | **QoE Advisor:** [Firm (if external)] | **For:** Matt Mathison

---

## EBITDA Bridge (Reported → Normalized)

| Item | Amount | Direction | Notes |
|------|--------|-----------|-------|
| Reported EBITDA (TTM) | $[X] | | Starting point |
| Owner salary add-back | +$[X] | ↑ | Above-market salary normalized |
| Personal expenses | +$[X] | ↑ | Auto; club memberships |
| One-time legal fees | +$[X] | ↑ | Settlement costs; non-recurring |
| Missing VP Sales cost | -$[X] | ↓ | Owner did sales; need hire |
| Below-market rent add | -$[X] | ↓ | Related-party lease; add market rate |
| **Normalized EBITDA** | **$[X]** | | [X%] variance from reported |

---

## Working Capital Analysis

| Component | Average (TTM) | Normalized peg | Notes |
|-----------|--------------|---------------|-------|
| Accounts receivable | $[X] | $[X] | DSO: [N] days |
| Accounts payable | ($[X]) | ($[X]) | DPO: [N] days |
| Accrued liabilities | ($[X]) | ($[X]) | |
| **Net working capital peg** | | **$[X]** | |

---

## Debt and Debt-Like Items

| Item | Amount | Notes |
|------|--------|-------|
| Bank debt | $[X] | |
| Deferred revenue | $[X] | Obligation to deliver service |
| Accrued vacation | $[X] | |
| **Total debt + debt-like** | **$[X]** | Deducted from EV at closing |

---

## Revised Deal Economics (based on normalized EBITDA)

| | Seller's basis | MBL normalized | Change |
|-|---------------|----------------|-------|
| EBITDA | $[X] | $[X] | -$[X] |
| EV (at [X]x multiple) | $[X] | $[X] | -$[X] |
```

## Output Contract
- Seller's add-backs are scrutinized, not accepted — sellers and their accountants add back every possible item to maximize EBITDA and thus the purchase price; Dr. Lewis evaluates every add-back against the question: "Is this truly non-recurring, or is it a recurring cost that was unusually low this year?"; personal expenses are added back only if they were genuinely personal; professional fees are added back only if the underlying event was truly one-time; the QoE firm is engaged to provide independent validation of add-back legitimacy; Dr. Lewis does not accept seller-favorable add-backs without independent support
- Missing costs are found, named, and deducted — the most common EBITDA inflation in LMM deals is not fraudulent add-backs; it is the absence of costs that the owner-operator provided personally (sales; customer relationships; admin functions) and that a professional management team will require; if the company's CEO is also the head of sales and earned a $180K salary covering both roles, the replacement cost of a dedicated VP Sales is a missing cost that must be deducted from EBITDA before applying a multiple; Dr. Lewis identifies all functions the owner performs and costs out the market-rate replacement for each
- Working capital peg is set from TTM averages, not favorable periods — sellers will argue for a WC peg based on the period when WC was lowest (minimizing the buyer's adjustment at closing); Dr. Lewis uses the 12-month trailing average, adjusted for seasonality; any attempt to set the WC peg based on a favorable quarter or period is flagged and countered with the normalized calculation
- HITL required: any EBITDA adjustment >15% of stated EBITDA → Matt Mathison immediately; missing costs that change the thesis economics → Matt immediately; any revenue recognition issue (possible misrepresentation) → Matt + fund counsel; debt/debt-like items that were not disclosed → Matt immediately; QoE firm engagement → Dr. Lewis scope and fee approval; final QoE report → Matt Mathison review before PA negotiation begins

## System Dependencies
- **Reads from:** Company financial statements (data room); pe-diligence-coordinator (overall DD tracker); QoE advisor (if external); sector-specific data (AdvancedMD for Allevio; Covercy for HIVE; DSP reports for Column6); pe-deal-thesis-builder (EBITDA assumptions to validate)
- **Writes to:** Financial DD report (SharePoint → Deals → [Company] → DD → Financial); EBITDA bridge (per output format); WC peg recommendation; debt/debt-like schedule; Matt Mathison briefings (material findings); pe-diligence-coordinator (financial DD status); pe-loi-manager (price adjustment input if normalized EBITDA differs materially)
- **HITL Required:** EBITDA adjustment >15% → Matt immediately; missing costs that change thesis → Matt immediately; revenue recognition issues → Matt + counsel; undisclosed debt → Matt immediately; QoE firm engagement → Dr. Lewis approves; final QoE → Matt before PA negotiation

## Test Cases
1. **Golden path:** Seller states EBITDA of $1.4M. QoE process: (1) Owner salary $320K — market rate is $220K; add-back $100K. (2) Personal expenses $45K — add-back. (3) One-time legal settlement $80K — add-back. (4) Owner doing all outbound sales (no VP Sales) — deduct market VP Sales cost of $95K. (5) Rent from owner's LLC at $24K/year vs. market $48K — deduct $24K. Normalized EBITDA: $1.4M + $100K + $45K + $80K - $95K - $24K = $1.506M. Minor positive adjustment. Thesis intact.
2. **Edge case:** Revenue trend shows Q4 is consistently 60% of annual revenue (extreme seasonality) → Dr. Lewis: "This business has extreme Q4 concentration — 60% of revenue in the last quarter. The QoE needs to assess: (1) Is Q4 truly Q4 recognition or is revenue being pulled from Q1 to hit year-end numbers? (2) Is this a structural seasonal pattern or a recent development? (3) What is the WC requirement peak? I'm requesting a monthly revenue schedule for 3 years and an explanation of the Q4 driver. This affects both the revenue quality assessment and the WC peg timing."
3. **Adversarial:** Seller's accountant argues that $200K in 'consulting fees' paid to the owner's spouse should be added back as non-market compensation → Dr. Lewis: "I'm reviewing the basis for this add-back. For a $200K consulting fee add-back to be legitimate, I need: (1) Evidence of what services were provided; (2) Evidence that those services would not be required from a market-rate provider going forward; (3) A 1099 showing the payments were properly reported as income. If the owner's spouse provided real services that will no longer be needed post-close (and won't be performed by a hired employee), then it's a legitimate add-back. If the spouse provided services that MBL will need to hire for post-close, it's a missing cost. I'll resolve this with specific documentation from the company within 5 business days."

## Audit Log
All financial diligence work papers retained (with data room source references). EBITDA bridge retained with add-back support documentation. QoE firm engagement and reports retained. WC peg analysis retained. Debt/debt-like schedule retained. Matt Mathison briefing records retained (with findings and dates).

## Deprecation
Financial diligence is active during the fund's investment period. QoE standards and add-back analysis criteria are reviewed after each deal for lessons learned.
