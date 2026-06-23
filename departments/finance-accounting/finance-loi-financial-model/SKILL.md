---
name: finance-loi-financial-model
description: "Build LOI-stage financial models for MBL Partners acquisition targets. Use when the user says 'LOI', 'letter of intent', 'LOI model', 'LOI financial model', 'preliminary financial model', 'pre-LOI model', 'acquisition target model', 'target financials', 'deal model', 'initial deal model', 'quick deal model', 'back of envelope acquisition', 'initial valuation', 'preliminary valuation', 'valuation range', 'acquisition price range', 'offer price', 'bid price', 'EBITDA valuation', 'revenue multiple', 'EV/EBITDA', 'enterprise value', 'preliminary enterprise value', 'deal size estimate', 'what should we offer', 'term sheet valuation', 'deal terms financial impact', 'working capital target', 'working capital peg', 'LOI working capital', 'deal structure financial model', 'equity vs. debt financing model', 'acquisition structure', or 'preliminary deal economics'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--target <name>] [--revenue <annual>] [--ebitda <annual>] [--action <build|structure|present>]"
---

# Finance LOI Financial Model

Build LOI-stage financial models for MBL Partners acquisition targets — generating rapid preliminary valuations using available information (management-provided revenue and EBITDA; comparable transaction multiples; initial deal structure assumptions) to establish an offer price range before letters of intent are exchanged. LOI models are directional; they establish negotiating parameters, not final enterprise values.

## When to Use
- MBL or a portfolio company is pursuing an acquisition and needs a LOI price range
- Matt Mathison is asking "what's this worth?" before a formal diligence process
- Structuring a deal offer (equity; seller note; earnout)
- Evaluating deal structure impact on effective purchase price

## LOI Financial Model Framework

```
LOI MODEL INPUTS (AVAILABLE PRE-DILIGENCE):
  Target name and business description
  Revenue (trailing twelve months; management-provided; to be verified in DD)
  EBITDA (TTM; management-provided; management may present adjusted EBITDA — treat skeptically)
  Revenue growth rate (management projection; apply haircut until verified)
  Industry and comparable transaction multiples
  Proposed deal structure (all cash; seller note; earnout)
  
LOI VALUATION APPROACH:
  Primary: comparable transaction multiples (EV/EBITDA; EV/Revenue)
    Healthcare MSO (Allevio comparable): EV/EBITDA 8-12×; EV/Revenue 1.5-3.0×
    CTV/Digital Media (Column6 comparable): EV/EBITDA 6-10×; EV/Revenue 1.0-2.5×
    O&G working interest (HIVE comparable): EV/BOE reserve; PV10 discount
    SaaS/Technology: EV/ARR 3-8× (depending on growth rate)
    Professional services: EV/EBITDA 4-7×
  Secondary: discounted cash flow (simplified; based on management projections; haircut growth)
  Sanity check: historical acquisition context from comparable deals
  
LOI MODEL OUTPUTS:
  EV range: low/base/high (reflecting multiple range and EBITDA uncertainty)
  Equity value: EV minus assumed net debt at close
  Price per unit/share: if applicable
  Effective price under deal structures:
    All cash: face value = effective value
    Seller note (e.g., 30% seller-financed): reduces cash at close; Dr. Lewis calculates NPV of note payments
    Earnout: reduces base price; requires meeting performance targets; Dr. Lewis models probability-weighted value
  Implied multiples at offered price: "at $X offer, we're paying Y× EBITDA"
  
WORKING CAPITAL ADJUSTMENT:
  LOI should specify working capital target (peg) and adjustment mechanism
  Dr. Lewis models: "target closing working capital of $X; +/- adjustment at close for difference"
  A $200K working capital shortfall at close can reduce effective price by $200K
  
DEAL STRUCTURE ANALYSIS:
  Earnout terms: what performance metrics? over what period? what's the max payout?
  Dr. Lewis models earnout probability: "if target achieves [metric], MBL pays additional $[X]; probability: X%"
  Weighted earnout value: adds to effective price; reduces MBL's exposure if targets not met
```

## Output Format

```markdown
# LOI Financial Model — [Target Name]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **For:** Matt Mathison review | **Confidential**

---

## Target Overview
[Business description; revenue; EBITDA (management-stated); industry]

---

## Valuation Range

| Scenario | EBITDA Multiple | Enterprise Value | Equity Value (est.) |
|---------|----------------|-----------------|-------------------|
| Low | X× | $X | $X |
| Base | X× | $X | $X |
| High | X× | $X | $X |

*Based on management-stated EBITDA of $X. Subject to DD verification.*

---

## Deal Structure Scenarios

| Structure | Cash at Close | Seller Note | Earnout | Total EV | Notes |
|-----------|-------------|------------|---------|---------|-------|
| All cash | $X | — | — | $X | Cleanest; highest risk |
| Seller note (20%) | $X | $X | — | $X | Reduced cash; seller aligned |
| Hybrid + earnout | $X | $X | up to $X | $X | Best downside protection |

---

## Recommendation
**Offer range: $X–$X (base case $X) using [structure].**
[2-sentence rationale]
```

## Output Contract
- LOI models are necessarily imprecise and should be presented that way — at the LOI stage, EBITDA is management-reported and not verified; growth projections are aspirational; there may be hidden liabilities Dr. Lewis hasn't seen yet; the LOI model establishes a range, not a precise value, and the range should be wide enough to reflect that uncertainty without being so wide it's useless for negotiation; Dr. Lewis presents the model with explicit uncertainty caveats: "based on management-stated EBITDA of $X — the actual number after due diligence could be materially different; we recommend structuring the LOI to include a working capital adjustment and potential earnout to protect against EBITDA misrepresentation"
- Deal structure is as important as the headline price — a $5M all-cash offer is worth $5M to the seller on day one and $5M in risk to MBL; a $4M at close + $1M earnout is worth $4-5M to the seller depending on performance and worth $4M in worst case to MBL; Dr. Lewis models all structures and presents the risk-adjusted comparison to Matt Mathison; earnouts and seller notes are MBL's primary risk-management tools in early-stage acquisitions; Dr. Lewis recommends structure based on the quality of the target's EBITDA (recurring vs. one-time) and the confidence in management projections
- HITL required: all LOI models → Matt Mathison reviews before any offer is communicated to seller; offer price range → Matt Mathison approves before LOI is sent; deal structure → Matt Mathison + Dr. Lewis decide; legal counsel reviews LOI document (deal terms; reps and warranties); working capital peg → Matt Mathison approves; earnout structure → Matt Mathison approves; Dr. Lewis is the modeler and analyst — Matt Mathison is the decision-maker and negotiator; Dr. Lewis does not communicate offers to sellers

## System Dependencies
- **Reads from:** Target management materials (CIM; financial statements; projections — management-provided); comparable transaction data (industry reports; M&A databases; MBL prior deals); finance-deal-valuation (detailed valuation → this skill for LOI-stage summary); Matt Mathison acquisition criteria and portfolio strategy (from CLAUDE.md context)
- **Writes to:** LOI financial model (SharePoint → M&A → [Target] → LOI Stage → Financial Model); Matt Mathison deal review package; legal counsel inputs (financial terms for LOI document); deal decision log; finance-due-diligence-financial (model inputs after LOI signing; DD verification)
- **HITL Required:** Matt Mathison reviews before offer communicated; offer price → Matt Mathison approves; deal structure → Matt Mathison + Dr. Lewis; legal counsel reviews LOI; working capital peg → Matt Mathison; earnout → Matt Mathison; seller communication → Matt Mathison only

## Test Cases
1. **Golden path:** MBL evaluating acquisition of a Phoenix-area MSO with 120 enrolled employers. Management-stated revenue: $1.8M TTM; management-stated EBITDA: $380K (management-adjusted; removing $120K one-time costs). Healthcare MSO comparable multiples: 8-12× EBITDA. Dr. Lewis applies haircut to management EBITDA ($380K → $300K verified-conservative estimate until DD). Valuation range: Low: 8× × $300K = $2.4M; Base: 10× × $300K = $3.0M; High: 12× × $350K = $4.2M. Dr. Lewis recommendation: "Offer $2.6-2.8M base case with 20% seller note ($2.1M cash + $520K seller note at 6% over 36 months) + $400K earnout on 90-day gross retention ≥91%. Effective value $3.0-3.2M if earnout achieved. Downside protection: $2.1M cash only if seller note and earnout not met." Matt Mathison reviews, approves offer range, authorizes LOI at $2.6M structure.
2. **Edge case:** Target CEO presents $800K EBITDA but Dr. Lewis notes the income statement includes $350K in "owner add-backs" (owner's salary not being replaced, personal expenses run through the business, non-recurring deal costs) → Dr. Lewis: "The $800K adjusted EBITDA includes $350K in add-backs. Before I can model a reliable valuation range, I need to understand which add-backs are legitimate and which are not: (1) Owner's salary not being replaced — only valid if MBL's management team is absorbing those duties without additional compensation; if we need to hire someone at $200K, the add-back is reduced by $200K; (2) Personal expenses — typically legitimate if documented and one-time; (3) Deal costs — typically legitimate. My conservative EBITDA estimate for LOI modeling: $800K - $350K add-backs + $200K replacement management cost = $650K verified EBITDA. Modeling on $650K rather than $800K. At 8-10×: LOI range $5.2M–$6.5M — significantly different from the seller's implied $6.4M–$9.6M. Matt Mathison needs to see both numbers."
3. **Adversarial:** Sell-side broker tells Dr. Lewis "we have another offer at 12× EBITDA — you need to move immediately without a model" → Dr. Lewis: "I understand there's competitive pressure on this deal. The fastest path to Matt Mathison approving an offer is a clean model, not a promise to figure it out later. I can have a LOI financial model ready in 4 hours with the data the CIM provides. What I won't do is recommend an offer price to Matt Mathison without that model — he doesn't make acquisition offers based on seller urgency; he makes them based on financial analysis. If the seller closes this deal with another buyer while we complete a 4-hour model, that's information about the deal process, not a reason to skip our diligence. I'll have the model to Matt Mathison by [time] today."

## Audit Log
LOI financial model records (all targets; permanent — including targets not pursued). Matt Mathison review and approval records. Deal structure analysis records. Offer price range authorization records. Comparable transaction data sources. EBITDA haircut rationale records. Earnout structure records. Working capital peg records. Seller communication authorization records (Matt Mathison only).

## Deprecation
Comparable transaction multiples updated annually (market conditions change). Deal structure toolbox reviewed when MBL's acquisition strategy changes. Working capital methodology reviewed when deal complexity increases. Earnout modeling updated when MBL's earnout performance track record develops. EBITDA haircut methodology reviewed after each acquisition's DD outcome.
