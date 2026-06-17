---
name: fpa-synergy-model-builder
description: "Quantify and track M&A synergies for post-acquisition integration. Use when the user says 'synergy model', 'synergies', 'quantify synergies', 'synergy analysis', 'cost synergies', 'revenue synergies', 'integration savings', 'M&A synergies', 'combined company savings', 'post-merger savings', 'synergy tracking', 'realize synergies', 'synergy realization', 'integration model', 'combined P&L', 'pro forma', 'synergy identification', 'merger savings', 'acquisition synergies', or 'synergy case'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--acquirer <company name>] [--target <company name>] [--synergy-type <cost|revenue|both>] [--timeline <months>] [--action <identify|model|track>]"
---

# Synergy Model Builder

Quantify and track M&A synergies for acquisitions made by MBL portfolio companies — building the financial case for synergy realization, stress-testing synergy assumptions, and tracking actual synergy capture against the deal model. Synergies are the incremental value created by combining two businesses beyond what either could achieve independently. In PE, synergy modeling is always accompanied by healthy skepticism: deal-makers are optimistic; Dr. Lewis is conservative; synergies that look large on paper often prove smaller in execution; Dr. Lewis risk-adjusts every synergy and never includes more than 50% of identified synergies in the base case return model.

## When to Use
- M&A diligence — quantify synergies before finalizing the purchase price
- Investment committee — present the synergy case alongside the standalone return model
- Post-close integration planning — build the synergy realization roadmap
- Monthly tracking — are synergies being captured on schedule?
- Matt Mathison asks "how much is the synergy case worth?"

## Synergy Model Framework

```
TYPES OF SYNERGIES:

  COST SYNERGIES (more reliable; quantifiable; faster to realize):
    Category 1 — Overhead elimination:
      Back-office consolidation: Eliminate duplicate accounting, HR, legal, admin
      Insurance: Combine policies; larger combined premium = better rates
      Technology/software: Consolidate duplicate SaaS subscriptions
      Office space: If target is local, merge locations
      Calculation: Identify specific line items; confirm with integration team
      
    Category 2 — Purchasing power:
      Negotiate better rates with shared vendors (medical supplies, benefits, staffing, etc.)
      Allevio example: Combine clinical supply purchasing with scale discount
      HIVE example: Combine LOE service contracts under HIVE umbrella
      Calculation: Current combined spend × discount % achievable at combined scale
      
    Category 3 — Operational efficiency:
      Shared billing/RCM team (Allevio: Marshall Medical Billing already in place)
      Shared clinical protocols / staffing optimization
      Shared management bandwidth (CFO, COO functions)
      Calculation: FTE savings × fully-loaded cost; be conservative — people don't disappear easily
      
  REVENUE SYNERGIES (less reliable; take longer; higher risk):
    Cross-sell to combined customer base:
      Allevio: New clinic in Scottsdale can offer existing employer groups expanded geographic coverage
      Column6: Add target's advertiser relationships to Column6 inventory; sell Column6 inventory to target's clients
      Calculation: (Incremental revenue from cross-sell) × gross margin % − cost of selling
      
    Pricing power:
      Combined market share may support improved rates from payers/employers
      Calculation: Incremental PMPM rate × combined member count
      
    Market access:
      Target may have contracts/markets/relationships the acquirer couldn't access independently
      Calculation: Revenue from markets accessible only via acquisition × margin
      
  SYNERGY RISK-ADJUSTMENT METHODOLOGY:
    Step 1 — Identify all potential synergies (management team + Dr. Lewis)
    Step 2 — Classify each: Cost (higher confidence) or Revenue (lower confidence)
    Step 3 — Assign a probability to each synergy:
      Cost synergy, overhead elimination: 85-95% probability (contracts can be cancelled; staff can be consolidated)
      Cost synergy, purchasing power: 60-80% (depends on vendor negotiation)
      Revenue synergy, cross-sell: 40-60% (customers must buy; execution risk)
      Revenue synergy, pricing power: 20-40% (market-dependent; hardest to control)
    Step 4 — Calculate expected value: Synergy amount × probability = Risk-adjusted synergy
    Step 5 — Total risk-adjusted synergies → this is what goes in the base case
    Step 6 — Show full (unadjusted) synergies separately as "synergy upside" for investment committee
    Step 7 — Timeline: When will each synergy be fully realized?
      Quick wins (0-6 months post-close): Insurance consolidation, software cancellation, duplicate vendor elimination
      Medium-term (6-18 months): Staff consolidation, billing integration, purchasing renegotiation
      Long-term (18+ months): Revenue synergies, market expansion, pricing power
      
  ONE-TIME INTEGRATION COSTS (offset against synergies):
    Severance: [N] FTE × average annual comp × severance rate
    System integration: IT costs to merge billing, accounting, scheduling
    Legal/professional: Transaction advisory, integration consulting
    Moving/transition: Physical consolidation costs
    RULE: Integration costs reduce net synergy value; Dr. Lewis nets them against the synergy benefits
    Integration costs are typically $0.5-1.0× of Year 1 synergies for small deals
    
  SYNERGY REALIZATION TRACKING (post-close):
    Monthly variance: Synergy plan vs. actual synergy captured
    By category: Which synergies are ahead/behind?
    Root cause for gaps: Why is a specific synergy delayed?
    Revised synergy forecast: Will we capture the full synergy or a lesser amount?
    Matt Mathison monthly update: Red/Yellow/Green status for each major synergy bucket
```

## Output Format

```markdown
# Synergy Analysis — [Acquirer] + [Target]
**Deal close date:** [Date or "Pre-close"] | **Integration period:** [N] months
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Synergy Summary

| Category | Gross Synergy | Probability | Risk-Adjusted | Timeline |
|----------|--------------|------------|--------------|---------|
| Overhead elimination | $[X]K | 90% | $[X]K | 0-6 months |
| Insurance consolidation | $[X]K | 90% | $[X]K | 3-6 months |
| Duplicate software | $[X]K | 95% | $[X]K | 1-3 months |
| Purchasing power | $[X]K | 70% | $[X]K | 6-12 months |
| Staff efficiency | $[X]K | 75% | $[X]K | 6-18 months |
| Cross-sell revenue | $[X]K | 50% | $[X]K | 12-24 months |
| **Total cost synergies** | **$[X]K** | — | **$[X]K** | |
| **Total revenue synergies** | **$[X]K** | — | **$[X]K** | |
| **TOTAL SYNERGIES** | **$[X]K gross** | — | **$[X]K risk-adj** | |

---

## Integration Costs (Offset Against Synergies)

| Cost Item | Amount | Timing |
|-----------|--------|--------|
| Severance ([N] FTE) | $[X]K | Month 1-3 |
| System integration | $[X]K | Month 3-9 |
| Professional fees | $[X]K | Month 1-6 |
| **Total integration costs** | **$[X]K** | |

**Net risk-adjusted synergies:** $[X]K gross − $[X]K integration costs = **$[X]K net**
**Synergy value (at [X]× exit multiple):** $[X]K × [X]× = **$[X]M additional exit value**

---

## Synergy Realization Timeline

| Quarter | Synergy Target | Synergies Realized | vs. Plan | Status |
|---------|--------------|-------------------|---------|--------|
| Q1 post-close | $[X]K | $[X]K | [+/−$X]K | ✅ / ⚠️ / 🔴 |
| Q2 post-close | $[X]K | $[X]K | [+/−$X]K | — |
| [Full run-rate by] | $[X]K/year | — | — | — |
```

## Output Contract
- The synergy case is supplemental, not primary — the deal must work on a standalone basis before synergies are considered; if the acquisition doesn't meet the 20% IRR threshold without any synergies, the synergy case is not a remedy — it's a hope; Dr. Lewis builds the standalone return model first, then adds the synergy case as an overlay; Matt Mathison evaluates both; the investment is judged on the standalone case with synergies as upside, not the other way around
- Risk-adjust every synergy — the practice of presenting gross synergies (before probability weighting) inflates the apparent value of the deal; Dr. Lewis presents risk-adjusted synergies in the base case; the gross synergies are disclosed separately as the "synergy ceiling" if everything goes right; if the deal model only works at 100% synergy capture, it requires too much execution risk to justify
- Track synergies monthly after close — the purpose of the synergy model is not just to win investment committee approval; it is to create accountability for capturing the synergies that justified the acquisition price; after close, Dr. Lewis tracks actual synergy realization vs. the plan monthly; synergies that are delayed or reduced are flagged immediately (not at the end of the integration period when it's too late to course-correct); Matt Mathison receives a monthly synergy realization update for the first 18 months post-close
- HITL required: Dr. Lewis builds the synergy model; CEO of the acquiring company (and the target company, post-close) provides the operational inputs (who can be consolidated, which vendor contracts can be renegotiated, which customers could cross-sell); Matt Mathison reviews the synergy case before LOI; integration plan decisions (who stays, who goes, what gets consolidated) are made by the CEO with Matt Mathison's awareness and approval on any decision affecting >$25K of annual cost; Dr. Lewis tracks but the CEO executes

## System Dependencies
- **Reads from:** Target company financials (from data room — cost structure detail for synergy identification); acquiring company QuickBooks (current cost structure — to identify what overlaps); fpa-ma-financial-support (standalone deal model — synergies overlay on top); fpa-headcount-cost-modeler (for FTE synergy calculations including fully-loaded cost); vendor contracts and pricing (current rates — to identify purchasing synergy potential); fpa-irr-model-builder (to calculate value of synergies in exit return impact)
- **Writes to:** Synergy model (SharePoint/Finance/MBL/MA/<Target>/SynergyModel_[Date].xlsx); investment committee memo (synergy section); post-close integration plan (synergy realization milestones); monthly synergy tracker (SharePoint/Finance/MBL/MA/<Target>/SynergyTracking/[YYYY-MM].xlsx); Matt Mathison monthly update (synergy realization status)
- **HITL Required:** Dr. Lewis builds; CEO provides operational inputs; Matt Mathison approves before LOI and capital deployment; post-close: CEO executes integration decisions; any staff reduction decisions require CEO + Dr. Lewis authorization; severance decisions >$25K require Matt Mathison approval; Dr. Lewis does not execute integration actions — he models and tracks; the CEO executes

## Test Cases
1. **Golden path:** Allevio acquires a Scottsdale primary care clinic (80 patients, $420K revenue, $130K EBITDA, $1.2M purchase price) → Dr. Lewis identifies synergies: Insurance consolidation ($22K gross, 95% probability, $21K risk-adjusted, Month 3-6); duplicate billing software ($8K gross, 95%, $7.6K, Month 1-3); Allevio billing platform absorbs clinic billing ($15K gross savings vs. standalone billing cost, 85%, $12.75K, Month 6-12); purchasing: share medical supply account ($6K gross, 65%, $3.9K, Month 6-12); cross-sell: existing Allevio employer groups gain Scottsdale coverage → potential +15 members × $87 PMPM × 12 = $15.7K new revenue × 35% EBITDA margin = $5.5K EBITDA, 50% probability = $2.75K risk-adjusted; integration costs: professional fees $12K, software migration $5K, total $17K; net risk-adjusted synergies: $48K − $17K = $31K/year at run-rate; at 8.5× exit multiple: +$263K exit value; return impact: standalone IRR 21%; with synergies IRR 24%; Matt Mathison investment committee presentation includes both numbers; synergy case is real but the standalone case already works
2. **Edge case:** Revenue synergy cross-sell identified as $120K annually (Column6 acquiring a smaller CTV operator and cross-selling to their advertiser relationships) → Dr. Lewis applies the probability framework: cross-sell revenue synergy = 40-60% probability; Dr. Lewis uses 45%; risk-adjusted: $120K × 45% = $54K; integration costs to harmonize the two ad stacks: $35K; net risk-adjusted revenue synergy: $54K − $35K = $19K; Dr. Lewis flags to Matt Mathison: "The $120K revenue synergy looks attractive but I'm giving it only 45% probability — we're selling to the target's existing clients who chose the target for specific reasons; they may not buy Column6's inventory even with the relationship. I've risk-adjusted to $54K and netted the stack integration costs to $19K net synergy. Don't pay a premium for these synergies — they're real but not certain enough to justify a higher entry multiple." Matt Mathison agrees; synergy case does not inflate the purchase price
3. **Adversarial:** The target company's investment banker presents a synergy analysis showing $850K of synergies on a $5M deal (17% of EV) — claiming large cost savings and revenue synergies → Dr. Lewis reviews: Cost synergies: the banker identifies $400K of "corporate overhead elimination" — but the target is a 12-person company with no standalone corporate overhead; the $400K is the target's entire G&A — you can't eliminate 100% of G&A and still have a functioning business; Revenue synergies: $450K of cross-sell assuming 100% of the target's existing customers adopt the acquirer's full product line within 12 months — wildly optimistic; Dr. Lewis recommendation: "The banker's synergy analysis is not credible — it assumes eliminating costs that are necessary to run the business and 100% cross-sell adoption in 12 months. My risk-adjusted synergy analysis shows $85K net — not $850K. The banker is presenting synergies to justify the asking price. I recommend we model this deal on the $85K synergy case and a standalone return. If it doesn't work at $85K net synergies, we should not buy at the asking price." Matt Mathison walks away from the deal at the seller's asking price; re-engages only if the seller adjusts pricing

## Audit Log
All synergy models retained by deal and date. Investment committee synergy memos retained permanently. Post-close synergy tracking records retained (monthly for 18 months, then quarterly for 3 years). Integration cost records retained. Realized vs. modeled synergy final assessment at 24 months post-close retained permanently.

## Deprecation
Retire when MBL Partners has a dedicated M&A integration manager who owns synergy tracking — with Dr. Lewis maintaining the financial model and Matt Mathison receiving the quarterly synergy realization report.
