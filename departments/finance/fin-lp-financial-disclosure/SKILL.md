---
name: fin-lp-financial-disclosure
description: "Manage LP financial disclosures and reporting for MBL Partners. Use when the user says 'LP financial disclosure', 'LP financials', 'LP reporting', 'LP financial report', 'LP quarterly report', 'LP annual report', 'capital account', 'LP capital account', 'LP return', 'LP distribution', 'distribution to LPs', 'LP statement', 'capital account statement', 'fund financials', 'fund performance', 'portfolio valuation', 'FMV', 'fair market value', 'LP transparency', 'LP communication financials', 'LP disclosure obligations', 'ILPA reporting', 'fiduciary financial disclosure', 'LP financial update', 'K-1 to LPs', 'K-1 preparation', 'LP tax reporting', 'LP capital call', 'capital call', or 'distribution waterfall'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <quarterly|annual>] [--action <prepare|review|approve|distribute>] [--focus <performance|valuation|distributions|capital-accounts|k1>] [--lp-tier <tier1|tier2|tier3|all>]"
---

# Fin LP Financial Disclosure

Manage LP financial disclosures and reporting for MBL Partners — producing the quarterly and annual financial communications that fulfill MBL's fiduciary obligations to its limited partners, provide transparent reporting on portfolio performance, and maintain the LP trust that is foundational to MBL's ability to raise future capital. LP financial disclosure is the most consequential financial communication MBL produces: it is reviewed by professional investors, it affects LP capital decisions, and it creates legal liability if materially inaccurate. Every word is reviewed by Matt Mathison before it goes to LPs.

## When to Use
- Quarterly (Q1: May 15; Q2: August 15; Q3: November 15; Q4/Annual: March 15)
- Annual K-1 preparation (March 15 or September 15 with extension)
- A distribution is planned (per distribution waterfall; Matt Mathison approval)
- An LP makes a request for financial information outside the regular cycle
- A material event occurs that requires LP notification before the next quarterly report

## LP Financial Disclosure Framework

```
QUARTERLY LP FINANCIAL REPORT (due 45 days after quarter-end):

  COVER SUMMARY (1 page):
    Period: [Quarter] | Date prepared: [Date] | Confidential
    
    Portfolio Performance Summary:
      Total portfolio revenue: [Q actual vs. prior quarter vs. prior year]
      Total portfolio EBITDA: [same]
      Total portfolio cash: [current]
      Combined GP GRR: [weighted; performance signal]
      
    Key developments this quarter:
      Strategic (new initiatives; key wins)
      Operational (performance highlights; challenges)
      Portfolio (any new acquisitions; exits; capital events)
      
  ENTITY PERFORMANCE (1 section per entity):
    Format: consistent across all entities and all quarters for comparability
    
    Operating metrics (entity-specific north star):
      Allevio: employer group count; GRR; claim ratio; EBITDA margin
      HIVE: leased acreage; landowner GRR; royalties distributed; WTI sensitivity
      Column6: agency NRR; VCR; EBITDA margin
      
    Financial summary:
      Revenue (Q actual; prior Q; YTD; full-year budget)
      EBITDA (same)
      Cash position (current; minimum reserve; runway)
      
  CAPITAL ACCOUNT STATEMENTS (per LP):
    Beginning capital account balance
    + Capital contributions this quarter (if any)
    + Share of net income/(loss) this quarter
    - Distributions this quarter (if any)
    = Ending capital account balance
    
    IRR calculation: from initial contribution to current value (annualized)
    MOIC: current value / invested capital (mark-to-market if applicable)
    
  PORTFOLIO VALUATION (quarterly; annual audited):
    FMV methodology: consistent with prior quarters
    For each entity:
      Valuation method: EV/EBITDA multiple (primary); DCF (secondary)
      Comparable transaction multiples: from recent M&A activity
      Current period EBITDA (trailing 12 months)
      Applied multiple: [N]x
      Enterprise value (EV): [N]x × EBITDA
      Debt: [outstanding debt at entity level]
      Equity value: EV - Debt
      MBL ownership %: [%]
      MBL attributed value: Equity value × MBL ownership %
    
    FMV PRINCIPLES:
      □ Conservative — do not inflate to attract future capital; understate rather than overstate
      □ Consistent — apply the same methodology quarter-over-quarter
      □ Documented — every valuation assumption is documented with a source
      □ Annual audit: the annual financial statements include audited valuations
      □ Material change: any quarter where FMV changes >15% from prior quarter requires
        a written explanation of the driver (performance change; market multiple change)

DISTRIBUTION WATERFALL (when applicable):

  Distributions require Matt Mathison approval — always
  
  Distribution waterfall structure (per LPA — Limited Partnership Agreement):
    1. Return of LP capital (all invested capital returned first)
    2. Preferred return (typically 8% annually; compounded)
    3. GP catch-up (GP receives [%]% of distributions until matching LP preferred)
    4. Carried interest split (remaining: 80% to LPs; 20% to GP — verify in LPA)
    
  Distribution memo (prepared before each distribution):
    Distribution amount and date
    Calculation of each LP's share
    Total distributed to date (cumulative)
    Remaining preferred return obligation (if any)
    Effect on capital accounts
    Tax withholding if applicable

MATERIAL EVENT DISCLOSURE:

  LP notification required within 5 business days (not held for quarterly report):
    - Sale of a portfolio entity (or signing of a definitive agreement)
    - Acquisition of a new portfolio entity
    - A legal action or regulatory matter involving MBL or any entity
    - Cash shortfall that affects LP return timeline or projected distributions
    - Loss of a key person at the entity CEO level
    - Any event that a reasonable LP would want to know about before the quarterly report
```

## Output Format

```markdown
# MBL Partners — Limited Partner Quarterly Report
**Period:** Q[N] [Year] | **Date:** [Date] | **Confidential — LP Distribution Only**

---

## Executive Summary

[2-3 paragraph narrative: what happened; what the key financial results were; what to expect in the coming quarter]

---

## Portfolio Financial Summary

| Entity | Revenue | EBITDA | EBITDA Margin | North Star KPI |
|--------|---------|--------|--------------|---------------|
| Allevio | $X | $X | X% | GRR X% |
| HIVE | $X | $X | X% | Landowner GRR X% |
| Column6 | $X | $X | X% | Agency NRR X% |
| **Total** | **$X** | **$X** | **X%** | — |

---

## Portfolio Valuation

| Entity | LTM EBITDA | Multiple | EV | Equity Value | MBL Share |
|--------|-----------|---------|-----|-------------|---------|
| Allevio | $X | [N]x | $X | $X | $X |
| HIVE | $X | [N]x | $X | $X | $X |
| Column6 | $X | [N]x | $X | $X | $X |
| **Total MBL Portfolio Value** | — | — | — | — | **$X** |

---

## Capital Account Summary (Per LP — individual statements distributed separately)

[See attached individual capital account statements]

---

## Forward-Looking Note

[Non-committal; factual; forward-looking risks and opportunities]
```

## Output Contract
- Every word reviewed by Matt Mathison — the LP quarterly report is Matt Mathison's representation to investors; Dr. Lewis prepares the draft; Matt reviews every sentence; no LP financial report is distributed without Matt's explicit approval and signature; this is not a delegation opportunity — the LP report reflects the Managing Partner's view of portfolio performance and the Managing Partner must own it
- Conservative FMV — when applying valuation multiples, Dr. Lewis defaults to the lower end of the comparable range, not the midpoint; LPs who receive an inflated quarterly valuation and then see a markdown in the next quarter lose confidence in the reporting; LPs who receive a conservative valuation and see it confirmed or exceeded upon exit have greater trust in the fund management; the FMV methodology is documented, consistent, and conservative
- Material events are not held for the quarterly report — an LP who invests millions of dollars deserves to know about a material event (entity sale; regulatory action; major customer loss) within 5 business days, not 45 days after quarter-end when the quarterly report arrives; Dr. Lewis identifies any material event and coordinates with Matt Mathison on the LP notification; the notification is Matt Mathison's decision and Matt Mathison's communication
- HITL required: Matt Mathison reviews and approves every LP report before distribution; individual capital account statements reviewed by Dr. Lewis for mathematical accuracy; distribution decisions are Matt Mathison decisions (never made without explicit approval); material event notifications require Matt Mathison; K-1 preparation is coordinated with the external tax advisor; LP report distribution list is controlled by Dr. Lewis (only named LPs receive their statements); any LP request for additional financial information outside the quarterly report is routed through Matt Mathison

## System Dependencies
- **Reads from:** QuickBooks (all entities — quarterly financials); fin-financial-model (valuation model; projected performance); fin-entity-consolidation (portfolio-level consolidated financials); exec-capital-allocation (capital account movements; distributions); fin-investor-returns-model (IRR and MOIC calculations per LP); external tax advisor (K-1 preparation); LPA (Limited Partnership Agreement — distribution waterfall; LP rights)
- **Writes to:** LP quarterly reports (SharePoint → LPReporting → [YYYY]-Q[N]); LP capital account statements (individual; secure distribution); exec-lp-reporting (financial section of the broader LP communication); exec-action-tracker (LP report preparation milestones); fin-audit-readiness (annual audited financials are distributed to LPs)
- **HITL Required:** Matt Mathison approves every LP report; distribution decisions require Matt Mathison explicit approval; material event LP notifications require Matt Mathison; external tax advisor prepares K-1s; distribution list controlled by Dr. Lewis; individual LP data requests routed through Matt Mathison

## Test Cases
1. **Golden path:** Q2 LP report preparation; Allevio: GRR 93% (strong); EBITDA $287K (8.9% margin; above plan); HIVE: Landowner GRR 87% (on target); royalties $145K (WTI at $61 — slightly below $62 plan but within range); Column6: Agency NRR 101% (expansion); EBITDA $92K (14.2%). Portfolio valuation: Allevio 7.2× LTM EBITDA (conservative — range is 7-9×); HIVE 4.5× (range 4-6×); Column6 8.5× (range 7-12× — applying 8.5× as conservative given early stage). FMV basis: comparable healthcare MSO transactions (Allevio); Uinta Basin oil and gas transactions (HIVE); CTV/digital media transactions (Column6). Matt reviews: "Good quarter. The Allevio multiple is conservative — I'm comfortable with that approach. Add one sentence about the HIVE WTI exposure in the forward-looking note." Added. Report distributed August 12 (3 days before deadline).
2. **Edge case:** An LP calls Matt Mathison asking for additional detail on the Allevio valuation methodology → Dr. Lewis: "I'm preparing a supplemental valuation memo for the LP's request. It will detail: (1) the EBITDA multiple range for comparable healthcare MSO transactions (with sources); (2) why we applied 7.2× vs. the midpoint of the range; (3) the sensitivity analysis — what does the Allevio valuation look like at 6.5× and 8×? I'll have the draft to you by end of tomorrow. You decide whether to send it directly to the LP or have a call to walk through it. I'd recommend the call — the follow-up questions will be easier to handle in conversation." Matt: "Call is right. Set it up."
3. **Adversarial:** Entity CEO asks to review the LP report before it goes to Matt Mathison → Dr. Lewis: "The entity-specific sections of the LP report will be shared with you before the report is finalized — you'll see your entity's performance section and can flag any factual errors. But the full LP report (including all entity financials; portfolio valuation; capital account summary) is not shared with entity CEOs before Matt Mathison's review. The LP report is a fund-level document that includes information about all portfolio entities; entity CEOs have visibility into their own entity, not the others. Matt's review comes first; then the approved report goes to LPs. This is a governance boundary, not a trust issue."

## Audit Log
All LP quarterly reports retained permanently. Distribution records (who received what; when; how). Matt Mathison approval records. Material event notification records. Capital account statement records. Distribution decision records (including distribution waterfall calculations). Individual LP data request records.

## Deprecation
The LP financial disclosure function is permanent to MBL's fund management obligations. The mechanism may evolve (from manual preparation to automated reporting), but the obligation and the Matt Mathison review requirement do not retire.
