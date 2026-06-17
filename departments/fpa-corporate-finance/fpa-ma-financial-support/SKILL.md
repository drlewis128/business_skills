---
name: fpa-ma-financial-support
description: "Provide financial modeling and analysis support for M&A transactions. Use when the user says 'M&A model', 'acquisition model', 'deal model', 'buy-side analysis', 'acquisition financial support', 'M&A analysis', 'deal financial analysis', 'target company model', 'acquisition target', 'accretion dilution', 'purchase price analysis', 'deal structuring', 'acquisition valuation', 'due diligence financial model', 'deal economics', 'M&A due diligence', 'add-on acquisition', 'tuck-in acquisition', 'acquisition support', or 'deal diligence model'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--target <company name>] [--deal-type <add-on|platform>] [--entity <acquiring company>] [--purpose <screening|diligence|closing>] [--action <model|review|present>]"
---

# M&A Financial Support

Provide financial modeling and analytical support for M&A transactions at MBL Partners — building the financial case for acquisitions, screening potential add-ons, and preparing the investment committee for capital deployment decisions. M&A financial support covers three phases: (1) screening — quick financial assessment of whether a target is worth pursuing; (2) diligence — detailed financial model and return analysis once a letter of intent is issued; and (3) closing — purchase price allocation and integration baseline once the deal closes. Dr. Lewis handles the financial modeling; outside counsel and investment bankers handle the legal and process work; Matt Mathison makes all final capital deployment decisions.

## When to Use
- MBL or a portfolio company CEO brings a potential acquisition target
- Matt Mathison asks "does this deal make sense financially?"
- A term sheet or LOI is being prepared — return model needed
- Due diligence process — financial data from the target needs to be normalized and modeled
- Morgan Sills (Allevio) sends an M&A pipeline update — financial screening needed
- Post-close — purchase price allocation and integration financial model

## M&A Financial Support Framework

```
PHASE 1 — SCREENING (before LOI):

  Goal: 30-minute financial assessment — "Is this worth pursuing?"
  Inputs needed: Revenue (LTM), EBITDA (LTM), asking price or EV range
  
  Quick screening criteria:
    Entry multiple: Is the EV/EBITDA multiple within our target range?
      Target: <7× for healthcare services; <5× for O&G; <8× for media/tech
      If above: Is there a path to growth that justifies the premium?
    Revenue quality: Is revenue recurring? Contractual? Single-customer concentration?
      Red flags: >25% from one customer; non-recurring revenue with no pipeline; billing irregularities
    EBITDA quality: Is EBITDA clean? Are there obvious adjustments needed?
      Red flags: Large add-backs (>30% of EBITDA); declining margins; EBITDA only with aggressive accounting
    Strategic fit: Does this complement an existing portfolio company?
      Allevio add-on: Geographic expansion, specialty service, or member growth
      HIVE add-on: Acreage consolidation, infrastructure improvement
      Column6 add-on: Inventory, advertiser relationships, technology capability
    Go/no-go: If entry multiple is reasonable AND revenue quality is acceptable AND strategic fit exists → proceed to LOI
    
  Quick model output (1 page):
    EV: $[X]M | Equity invested: $[X]M | Exit multiple assumed: [X]× | Hold period: [N] years
    Base case IRR: [X]% | Base case MOIC: [X.X]× | Bear case (50% of base): IRR [X]% MOIC [X.X]×
    Recommendation: Pursue / Pass / Request more info
    
PHASE 2 — DILIGENCE (LOI issued through close):

  Goal: Build a full financial model that defines the purchase price range and deal structure
  
  Financial normalization:
    1. Obtain 3 years of historical financials (P&L, Balance Sheet, Cash Flow)
    2. Reconstruct "normalized" EBITDA — remove all non-recurring, non-arm's-length, or one-time items
    3. Identify the seller's add-backs (normalize compensation to market, remove personal expenses, etc.)
    4. Apply the defensibility test to each add-back (same standard as the exit model)
    5. Calculate LTM EBITDA (trailing 12 months from latest available financials)
    
  Purchase price range modeling:
    Low (bear): Normalized EBITDA × minimum sector multiple (Dr. Lewis would pay this)
    Base: Normalized EBITDA × midpoint sector multiple (expected clearing price)
    High (max): Normalized EBITDA × maximum Dr. Lewis would justify given growth prospect
    Walk-away price: The price above which the deal does not meet our IRR threshold
    
  Return model (MOIC / IRR):
    Entry: Equity invested = EV − debt assumed − cash received + transaction costs
    Hold: EBITDA growth assumptions (revenue drivers × margin assumptions)
    Exit: Exit multiple × Exit EBITDA = Exit EV → Equity Value at exit → MOIC and IRR
    Financing: If leveraged, model debt service and amortization; free cash flow to equity
    
  Working capital peg:
    Typical deal: Seller delivers the business with a "normal" level of working capital
    Working capital peg = average NWC over last 12 months (or last 12 quarters)
    If closing NWC is above peg: Buyer benefits (seller leaves money in business)
    If closing NWC is below peg: Buyer collects the shortfall from seller
    Dr. Lewis models the NWC peg and negotiates it in the purchase agreement
    
  Synergy estimation (see fpa-synergy-model-builder for detailed methodology):
    Cost synergies: Eliminate duplicate back-office (accounting, HR, insurance); combine purchasing
    Revenue synergies: Cross-sell, geographic expansion, pricing power
    Synergies modeled separately from base case; shown as "with synergies" vs. "without synergies"
    Synergies are risk-adjusted; Dr. Lewis never assumes >50% of identified synergies in the base case
    
PHASE 3 — POST-CLOSE:

  Purchase price allocation (PPA):
    Required for GAAP reporting — allocates the purchase price to tangible and intangible assets
    Typically involves CPA or valuation expert; Dr. Lewis provides the financial model as input
    Key intangible assets: Customer relationships, trade names, non-competes
    
  Integration baseline:
    Establish the combined company financial model (acquisition + acquirer)
    Define the integration milestones and financial targets (Year 1, Year 2, Year 3)
    Track actual vs. integration model in the monthly close (fpa-variance-analyzer)
    Integration period = 12-18 months from close for most add-ons
```

## Output Format

```markdown
# M&A Financial Analysis — [Target Company] | [Phase: Screening/Diligence/Post-close]
**Acquirer:** [MBL / Allevio / HIVE / Column6] | **Date:** [Date] | **Prepared by:** Dr. Lewis
**Purpose:** [Investment Committee / Matt Mathison decision / LOI Support]

---

## Screening Summary

| Metric | Value | vs. Threshold | Status |
|--------|-------|--------------|--------|
| LTM Revenue | $[X]M | — | — |
| LTM EBITDA (Management) | $[X]K | — | — |
| Asking EV | $[X]M | — | — |
| Entry EV/EBITDA multiple | [X.X]× | <[X]× target | ✅ / ⚠️ / ❌ |
| Revenue concentration | [X]% top customer | <25% | ✅ / ❌ |
| Strategic fit | [Description] | — | ✅ / ⚠️ |

**Recommendation:** PURSUE / PASS / REQUEST MORE INFO — [one sentence rationale]

---

## Return Model (Base Case)

| Item | Assumption | Amount |
|------|-----------|--------|
| Normalized LTM EBITDA | $[X]K (after $[X]K add-backs) | — |
| Entry EV | [X.X]× EBITDA | $[X]M |
| Equity invested | EV − debt + transaction costs | $[X]M |
| EBITDA at exit (Year [N]) | [X]% CAGR growth | $[X]K |
| Exit EV | [X.X]× exit EBITDA | $[X]M |
| Equity at exit | EV − remaining debt | $[X]M |
| **MOIC** | — | **[X.X]×** |
| **Gross IRR** | — | **[X]%** |

---

## Purchase Price Range

| Scenario | Multiple | EV | Equity | MOIC | IRR |
|----------|---------|-----|-------|------|-----|
| Low (Bear) | [X]× | $[X]M | $[X]M | [X.X]× | [X]% |
| **Base** | **[X]×** | **$[X]M** | **$[X]M** | **[X.X]×** | **[X]%** |
| High (max justified) | [X]× | $[X]M | $[X]M | [X.X]× | [X]% |
| Walk-away | [X]× | $[X]M | — | <20% IRR | — |

---

## Key Diligence Items (before closing)

- [ ] [Revenue concentration confirmed — customer contracts reviewed]
- [ ] [EBITDA add-backs verified against invoices]
- [ ] [Working capital peg calculated and agreed]
- [ ] [Regulatory/licensing review (HIPAA for Allevio; permits for HIVE)]
- [ ] [Management retention plan confirmed]
```

## Output Contract
- The entry multiple is the most important number in the screening — entry multiple determines whether the deal can ever generate an acceptable return; if a target is priced at 12× EBITDA in a sector where comparable exits happen at 8×, the deal requires 50% EBITDA growth just to break even on multiple compression; Dr. Lewis screens for entry multiple before any other analysis; a deal that fails the entry multiple screen does not get a full model — it gets a "pass" recommendation with the entry multiple math shown; this prevents burning diligence time on deals that can't pencil
- Normalize the EBITDA, don't accept the seller's number — the seller presents a normalized EBITDA designed to maximize the purchase price; Dr. Lewis starts with the GAAP financials and builds his own normalized EBITDA from the bottom up; he tests every add-back against the defensibility standard (can this be shown to a buyer's due diligence team and held?); the Dr. Lewis normalized EBITDA may be lower than the seller's number — and that's the correct number to pay on; paying on an inflated EBITDA means paying on a fiction
- Walk-away price is set before the first offer — before negotiating, Dr. Lewis calculates the maximum purchase price at which the deal still meets the 20% IRR threshold; this is the walk-away price; any negotiation that crosses the walk-away price requires Matt Mathison approval to proceed; a deal that doesn't pencil at our IRR threshold is not a deal — it doesn't matter how good the business is
- HITL required: Dr. Lewis builds the financial model; Matt Mathison reviews and approves the investment thesis before an LOI is issued; outside counsel reviews the purchase agreement before signing; Dr. Lewis does not negotiate purchase price without Matt Mathison involvement; Matt Mathison approves all capital deployment for acquisitions; Dr. Lewis does not discuss deal terms with the seller without Matt Mathison authorization

## System Dependencies
- **Reads from:** Target's historical financials (3 years P&L, balance sheet, cash flow — from data room or direct from seller); QuickBooks of the acquiring portfolio company (for integration baseline); fpa-financial-model-builder (to build the diligence model); fpa-irr-model-builder (for return calculations); fpa-synergy-model-builder (for synergy analysis); fpa-working-capital-analyzer (for NWC peg calculation); industry comparable transaction data (for entry multiple benchmarking); fpa-exit-value-model (for exit multiple assumptions)
- **Writes to:** M&A financial model (SharePoint/Finance/MBL/MA/<Target>/FinancialModel_[Date].xlsx); investment committee memo (SharePoint/Finance/MBL/MA/<Target>/IC_Memo_[Date].pdf); Matt Mathison decision brief; LOI financial terms support; post-close integration baseline model; NWC peg documentation (for purchase agreement)
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves investment thesis before LOI; outside counsel reviews purchase agreement; Matt Mathison approves all capital deployment; Dr. Lewis is not authorized to make offers, accept terms, or discuss deal economics with sellers without Matt Mathison on the call or explicit pre-authorization; Morgan Sills M&A pipeline items for Allevio routed through Dr. Lewis to Matt Mathison (Matt Mathison makes the decision, not Allevio CEO)

## Test Cases
1. **Golden path:** Morgan Sills sends an Allevio M&A pipeline update — a primary care clinic in Scottsdale, 450 patients, revenue $520K, EBITDA $155K, asking $1.6M → Dr. Lewis runs the screening: Entry multiple $1.6M ÷ $155K = 10.3× — above the 8× threshold for healthcare; is the premium justified? Revenue = 450 patients × $85 PMPM × 12 = $459K estimated PMPM contract value; existing revenue of $520K suggests some fee-for-service alongside PMPM (quality mix); customer concentration: need to confirm no employer group >50% of revenue; strategic fit: geographic expansion into Scottsdale fills the eastern Valley gap in the Allevio network; Dr. Lewis returns to Morgan Sills: "At 10.3× entry EBITDA, this is above our threshold. We'd need to see a credible path to 12-15% EBITDA growth to justify the premium. Please get us 3 years of P&L and details on the employer group contracts before we can model the base case return. Matt Mathison will not issue an LOI until we can show a 20%+ IRR." Dr. Lewis requests the financial data; does not pursue until data received
2. **Edge case:** HIVE CEO brings a potential acreage acquisition — 150 BOE/day, asking $2.2M → Dr. Lewis models the screening: at current HIVE operations $67/bbl WTI, 150 BOE/day × 365 days × ($67 − $18 LOE − $5 taxes) = $2.4M revenue × ~35% EBITDA margin = $840K incremental EBITDA; entry EV $2.2M ÷ $840K EBITDA = 2.6× — well below the 5× sector benchmark; this looks cheap; why? Dr. Lewis investigates: the acreage has an aging well infrastructure requiring $800K in near-term capital; total effective entry investment = $2.2M + $800K = $3.0M; at $840K EBITDA: $3.0M ÷ $840K = 3.6× — still reasonable; Dr. Lewis models the return: equity $2.2M entry + $800K CapEx; 5× exit × $840K EBITDA = $4.2M exit EV; MOIC 1.4× in Year 2 (too low) or 2.1× in Year 4 (acceptable) if production holds; recommends to Matt Mathison: "Interesting at $2.2M but the CapEx requirement is material. IRR is 18% in Year 4 — just below our 20% threshold. Recommend we try to negotiate price down $200-300K to push the IRR above threshold, or confirm with HIVE's operations that the CapEx estimate is conservative."
3. **Adversarial:** A target company presents an "adjusted EBITDA" that adds back $280K of "growth investments" to a GAAP EBITDA of $120K — claiming "real EBITDA" of $400K and asking 8× ($3.2M) → Dr. Lewis deconstructs the add-back: the $280K of "growth investments" includes $95K of marketing (ongoing business expense, not one-time); $110K of product development (ongoing); $75K of a "strategic consulting contract" that looks like recurring advisory; Dr. Lewis's normalized EBITDA: $120K GAAP + $0 defensible add-backs = $120K; entry EV at $3.2M ÷ $120K = 26.7× — a non-starter; Dr. Lewis to Matt Mathison: "The seller is marketing this at 8× 'adjusted EBITDA' but the adjustments don't pass the defensibility test — they're ongoing operating expenses dressed up as investments. The real entry multiple on GAAP EBITDA is 26.7×. This deal is priced for a strategic acquirer with significant synergies. Not a fit for MBL at this price. Recommend: pass." Pass recommendation delivered; no further time spent on the deal

## Audit Log
All M&A screening memos retained by target and date. All investment committee memos retained permanently. LOI financial terms retained. Full diligence financial models retained permanently (including pre-close versions). NWC peg calculations and purchase agreement financial terms retained permanently. Post-close integration baseline models retained. Actual vs. integration model tracking retained for 3 years post-close.

## Deprecation
Retire when MBL Partners has a dedicated M&A associate or investment banker on retainer who builds the financial models — with Dr. Lewis reviewing and Matt Mathison approving all capital deployment decisions.
