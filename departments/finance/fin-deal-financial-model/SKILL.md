---
name: fin-deal-financial-model
description: "Build acquisition financial models and purchase price analysis for MBL. Use when the user says 'deal model', 'acquisition model', 'deal financial model', 'acquisition financial model', 'deal economics', 'deal returns', 'deal valuation', 'valuation model', 'LOI economics', 'letter of intent economics', 'purchase price', 'purchase price allocation', 'PPA', 'acquisition valuation', 'acquisition analysis', 'target company financials', 'deal IRR', 'deal MOIC', 'deal returns analysis', 'LBO model', 'leveraged buyout', 'deal leverage', 'acquisition leverage', 'deal debt', 'deal equity', 'equity check', 'investment thesis financials', 'Day 1 financials', 'entry EBITDA', 'entry multiple', 'exit multiple', 'equity value', 'enterprise value', 'EV/EBITDA', 'deal underwrite', 'underwrite the deal', 'model the deal', 'acquisition pro forma', or 'deal pro forma'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--target <company-name>] [--action <build|review|sensitivity|present>] [--focus <entry-valuation|returns|leverage|integration|ppa>] [--stage <loi|diligence|close|day1>]"
---

# Fin Deal Financial Model

Build acquisition financial models and purchase price analysis for MBL — underwriting the deal economics from entry valuation through exit, stress-testing the returns under multiple scenarios, and producing the financial foundation for Matt Mathison's investment decision. MBL competes on speed and structuring: a deal financial model that takes 3 weeks is a competitive disadvantage; one that takes 72 hours and gives Matt a clean decision framework is a differentiator. The model must be rigorous enough for LP disclosure and investor-grade scrutiny, but clear enough that Matt can walk through the key drivers in a 30-minute conversation.

## When to Use
- An acquisition target has been identified (LOI stage)
- Due diligence financials require a financial model
- Matt Mathison needs returns analysis for a capital commitment decision
- Structuring a deal (leverage; earnout; rollover equity)
- Post-LOI: purchase price allocation and Day 1 financial setup

## Deal Financial Model Framework

```
DEAL MODEL COMPONENTS:

  1. ENTRY ASSUMPTIONS:
     Purchase price: $[X]
     Enterprise value (EV): $[X]
     Entry EBITDA (trailing 12-month adjusted): $[X]
     Entry multiple: EV / EBITDA = [X]×
     Net debt at close: $[X] (adjusts enterprise value to equity value)
     Equity value: $[X] (= EV - net debt)
     MBL equity check: $[X] (what MBL invests)
     Seller financing / earnout (if any): $[X] (reduces equity check)
     Leverage (debt): $[X] at [%] interest rate (if applicable)
     
  2. OPERATING MODEL (DRIVER-BASED):
     Revenue: per fin-financial-model drivers (entity-specific: Allevio PMPM; HIVE royalties; Column6 CPM)
     EBITDA margin expansion: from [entry %] to [exit %] over hold period
     Value creation levers: organic growth; margin improvement; adjacency expansion
     
     3 scenarios:
       Base case: management plan; reasonable assumptions
       Bull case: plan × 1.15 (15% upside on EBITDA vs. plan at exit)
       Bear case: plan × 0.85 (15% downside — test whether deal still works)
       
  3. RETURNS ANALYSIS:
     Hold period: [3-5 years] (MBL standard)
     Exit multiple: [X]× EBITDA (vs. entry multiple — expansion or contraction?)
     Exit enterprise value: exit EBITDA × exit multiple
     Exit equity value: exit EV - remaining debt
     
     MOIC: exit equity value / MBL equity check
     IRR: annualized return on MBL equity check over hold period
     
     MBL return targets:
       MOIC ≥2.5× (base case)
       IRR ≥25% (base case)
       Bear case: MOIC ≥1.5× (minimum acceptable — preserve capital)
       
  4. PURCHASE PRICE ALLOCATION (PPA) — POST-LOI:
     Fair value assignment of the purchase price to assets and liabilities:
       Tangible assets: property; equipment; inventory; AR (at fair value)
       Identified intangibles: customer contracts; brand; IP; non-compete agreements
       Goodwill: residual (purchase price - identified fair value of net assets)
       
     For each intangible: estimated useful life and amortization method
     Goodwill: not amortized (tested for impairment annually)
     
     PPA completed within 12 months of close (ASC 805)
     External valuation specialist engaged for significant acquisitions (>$5M)
     
  5. DAY 1 FINANCIAL SETUP:
     Open the entity in QuickBooks (new chart of accounts matching MBL standard)
     Record opening balance sheet per PPA
     Set up management reporting templates
     Establish bank accounts and payment controls (Bill.com)
     Brief Dr. Lewis and Matt Mathison on Day 1 financial state

DEAL STRUCTURING CHECKLIST:

  □ Working capital peg: what is the target net working capital at close?
  □ Working capital adjustment: buyer credit / seller credit based on actual vs. peg
  □ Earnout (if applicable): structure; metrics; payment terms; risk to MBL
  □ Representations and warranties: materiality baskets; caps; escrow
  □ Rollover equity (management): how much management rolls; at what valuation?
  □ Debt structure: senior secured; mezzanine; seller note; interest rate; covenants
  □ LOI price range: what MBL is willing to pay given model outputs and comparable transactions
```

## Output Format

```markdown
# Deal Financial Model — [Target Company]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison — Investment Decision | **Confidential**

---

## Deal Summary

| | Base case | Bull case | Bear case |
|-|----------|----------|----------|
| Entry EV | $[X] | $[X] | $[X] |
| Entry EBITDA | $[X] | — | — |
| Entry multiple | [X]× | — | — |
| Exit EBITDA | $[X] | $[X] | $[X] |
| Exit multiple | [X]× | [X]× | [X]× |
| Exit EV | $[X] | $[X] | $[X] |
| **MOIC** | **[X]×** | **[X]×** | **[X]×** |
| **IRR** | **[%]** | **[%]** | **[%]** |

---

## Revenue and EBITDA Bridge (Base Case)

| Year | Revenue | EBITDA | EBITDA margin | Key drivers |
|------|---------|--------|-------------|------------|
| Entry (T12M adj.) | $[X] | $[X] | [%] | Baseline |
| Y1 | $[X] | $[X] | [%] | [Lever 1] |
| Y2 | $[X] | $[X] | [%] | [Lever 2] |
| Y3 | $[X] | $[X] | [%] | [Lever 3] |

---

## Investment Recommendation

**MOIC [X]× / IRR [%]% at base case — [PROCEED / CONDITIONAL / PASS]**

Critical risks:
1. [Risk 1] — [Mitigation]
2. [Risk 2] — [Mitigation]

Matt Mathison decision required: [date]
```

## Output Contract
- Bear case must still work — a deal that only works in the base case and fails in the bear case is not an acceptable MBL investment; Dr. Lewis stress-tests the bear case first; if the bear case MOIC is below 1.5×, the deal structure needs to change (lower entry price; less leverage; earnout protection) before Matt sees a recommendation; the bear case is the loss prevention analysis; the bull case is the upside framing; the base case is the underwrite
- EBITDA adjustments are transparent — the entry EBITDA used in the model is "adjusted EBITDA" (normalized for non-recurring items; owner compensation above market; one-time expenses); every adjustment is itemized, justified, and defensible; inflated adjusted EBITDA leads to inflated entry multiples and disappointing returns; Dr. Lewis takes a conservative view on adjustments — if there's ambiguity, he assumes the add-back doesn't hold
- Model documentation travels with the deal — every deal model is saved in SharePoint (Finance → Deals → [Target] → DealModel) with version control; the model that supported the LOI is not the same as the model that supported closing; both are retained; the post-close model becomes the operating budget baseline; Dr. Lewis maintains the lineage from LOI model to close model to Year 1 budget so that VCP milestones can be tracked against the original investment thesis
- HITL required: deal financial model is Dr. Lewis's deliverable but every key assumption (entry multiple; hold period; exit multiple assumption) is reviewed with Matt Mathison before the model is used for an LOI; Matt approves all capital deployment decisions above $250K (which all acquisitions will be); deal model is also shown to LPs who are co-investing or as part of the quarterly deployment update; PPA requires external valuation specialist for large acquisitions and is documented for audit; Day 1 financial setup is confirmed by Dr. Lewis before any post-close operations begin

## System Dependencies
- **Reads from:** Target company financial statements (due diligence dataroom); industry comparable transaction databases; fin-financial-model (model format and driver assumptions); exec-capital-deployment-tracker (capital availability for the deal); exec-exit-planning (exit multiple assumptions based on market data)
- **Writes to:** Deal model workbook (SharePoint → Finance → Deals → [Target] → DealModel → [Date].xlsx); investment committee memo (the financial section); QuickBooks (Day 1 opening balance sheet post-close); fin-financial-model (the deal model becomes the entity's operating model post-close); exec-capital-deployment-tracker (capital deployment record for this acquisition)
- **HITL Required:** Key assumptions reviewed with Matt before LOI; Matt approves all capital commitment decisions; LP notification for investments per LPA; external valuation specialist for PPA on significant acquisitions; Day 1 financial setup confirmed by Dr. Lewis before operations begin; auditors review PPA annually

## Test Cases
1. **Golden path:** Target: regional MSO (adjacent to Allevio); trailing 12-month adjusted EBITDA $1.2M; entry price $8.4M (7.0× EBITDA); MBL equity check $5.4M; $3.0M seller note at 5% interest (5-year term). Model assumptions: Year 3 EBITDA $1.85M (margin expansion from 18% to 23% through volume growth and claim ratio improvement); exit multiple 8.0× (in-line with entry; conservative); exit EV $14.8M; remaining seller note $1.5M; exit equity value $13.3M; MOIC 2.46×; IRR 34.5% over 3 years. Bear case: EBITDA $1.45M at exit; 7× exit multiple; EV $10.15M; exit equity $8.65M; MOIC 1.60× — above the 1.5× floor. Presented to Matt: "Base case 2.46× / 34.5% IRR; bear case 1.6× — above our floor. This deal is an underwrite. LOI at $8.0M-$8.5M based on final diligence. Recommend proceeding."
2. **Edge case:** During diligence, discover that $300K of the $1.2M adjusted EBITDA relies on two customer contracts that are up for renewal in 6 months with no current indication of renewal → Dr. Lewis: "This is a material model risk. The $300K at-risk revenue is 25% of the adjusted EBITDA basis. I'm stress-testing: if both contracts don't renew, adjusted EBITDA falls to $900K; entry multiple at $8.4M becomes 9.3× (above market for this sector). At 9.3× entry and $900K EBITDA, the base case MOIC drops to 1.8× and the bear case drops to 1.2× — below our 1.5× floor. Options: (1) require the seller to extend both contracts as a closing condition; (2) reduce the entry price to $6.3M (7.0× on the $900K risk-adjusted EBITDA); (3) structure an earnout of up to $2.1M if the contracts renew. I'm presenting all three to Matt before the LOI negotiation."
3. **Adversarial:** Seller's banker insists on 9.0× EBITDA entry multiple for a business where the comparable transactions average 6.5-7.5× → Dr. Lewis: "I can't make the economics work at 9.0×. Here's the math for Matt: at 9.0× on $1.2M EBITDA, entry price is $10.8M vs. our $8.4M target. Even with a 4-year hold and a 9.0× exit (no multiple compression, which is optimistic), the MOIC drops to 2.1× and IRR to 20% — below our 25% IRR target. At a 7.5× exit (more realistic for this sector), it's 1.8× MOIC and 15% IRR — well below target. The seller's banker is pricing in an optimistic exit that we don't believe is supported by current market data. Our comparable transaction analysis supports 6.5-7.5× for this sector and size. I'll prepare a one-page comparable transaction summary for Matt to use in the negotiation: 'Here are 8 comparable transactions; here's where we believe your business falls on the range, and why.'"

## Audit Log
All deal models retained permanently (per-deal folder in SharePoint). Version history maintained (LOI model; diligence model; close model; Year 1 budget). Investment committee memo financial sections retained. PPA documentation retained. Matt Mathison approval records. LP notification records for co-investments or deployment updates.

## Deprecation
Retire when MBL has a dedicated deal/investment professional or M&A advisor who builds deal models — with Dr. Lewis providing the financial controls and accounting oversight for post-close integration and Matt Mathison retaining investment decision authority.
