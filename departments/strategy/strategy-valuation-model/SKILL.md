---
name: strategy-valuation-model
description: "Build acquisition and portfolio company valuations — EBITDA multiples, DCF, and comparable transactions. Use when the user says 'valuation', 'value this company', 'what is it worth', 'acquisition valuation', 'valuation model', 'how much should we pay', 'company value', 'valuation analysis', 'EBITDA multiple', 'comparable transactions', 'comps', 'business valuation', 'enterprise value', 'equity value', 'fair value', 'price this deal', or 'what is our portfolio company worth'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--purpose <acquisition|portfolio-review|exit|lp-reporting>] [--method <multiple|dcf|comps|all>]"
---

# Valuation Model

Build acquisition and portfolio company valuations for MBL Partners — delivering investment-grade valuation analysis that supports acquisition pricing decisions, portfolio mark-to-market, exit planning, and LP reporting. At PE portfolio scale, valuation is a discipline, not an exercise: the purpose of a valuation is to determine whether a transaction price creates or destroys value relative to the return threshold, and whether the current portfolio is on track to deliver the committed return. Valuation that isn't grounded in real transaction comparables and conservative assumptions is financial fiction.

## When to Use
- Acquiring a new company — what is the right entry price?
- Annual portfolio mark-to-market for LP reporting
- Exit planning — what will the buyer pay?
- Evaluating a strategic decision's impact on portfolio company value
- Matt Mathison asks "what is [Company] worth today?"

## Valuation Framework

```
MBL primary valuation method: EV/EBITDA multiple

  Enterprise Value (EV) = EBITDA × Applicable Multiple
  Equity Value = EV − Net Debt (Debt − Cash)
  
  EBITDA used in MBL valuation:
    LTM (Last Twelve Months): Default for acquisition pricing and current value
    NTM (Next Twelve Months): Used for growth companies or when LTM is depressed by one-time items
    Normalized EBITDA: LTM adjusted for non-recurring items (owner compensation addbacks, one-time expenses, non-recurring revenue)
    
  MBL sector multiples (PE buyer, not strategic buyer — lower than strategic):
    Healthcare services (MSO, physician practice): 5-8× EBITDA
      Premium drivers: Recurring revenue, high retention, strong payer mix
      Discount drivers: Customer concentration, key person risk, unresolved compliance
    Oil & gas E&P (Uinta Basin): 3-5× EBITDA (asset value also considered)
      Premium drivers: Low LOE, high production efficiency, proved reserves quality
      Discount drivers: High decline rate, commodity price exposure, permit uncertainty
    CTV/Ad tech: 5-12× EBITDA (or 1-4× revenue for pre-profit platforms)
      Premium drivers: Recurring advertiser relationships, proprietary technology
      Discount drivers: Customer concentration, commoditizing market, high churn
      
  Comparable transaction method (comps):
    Source: PitchBook, CapIQ, GF Data (lower middle market), broker deal reports
    Select comparables: Same sector; similar size ($1M-$20M EBITDA for MBL targets); recent (<3 years)
    Apply comparable range with discount for size (smaller companies trade at lower multiples)
    
  DCF (used as sanity check, not primary):
    Discount rate: WACC for target sector (healthcare 12-15%; O&G 15-18%; media 12-15%)
    Terminal value: Gordon Growth or exit multiple
    Use case: Long-horizon assets (HIVE proved reserves); growth companies
    Limitation: Highly sensitive to assumptions; DCF is a model of the analyst's assumptions, not the market
    
  Valuation triangle (three methods should converge):
    1. EV/EBITDA multiple (primary)
    2. Comparable transactions (validation)
    3. DCF (sanity check)
    If all three converge → high confidence; if they diverge → understand why before proceeding
    
  Return check (always run):
    At the proposed entry price, what is the IRR at the target exit multiple and hold period?
    MBL threshold: ≥20% IRR at 5-year hold; ≥2.5× MOIC
    If IRR < 20%, the price is too high OR the value creation assumption needs to be documented
```

## Output Format

```markdown
# Valuation Analysis — [Company Name]
**Date:** [Date] | **Analyst:** Dr. John Lewis | **Purpose:** [Acquisition / Portfolio mark / Exit / LP reporting]
**EBITDA reference:** $[X] LTM / $[X] Normalized | **Reference date:** [Date]

---

## Valuation Summary

| Method | Enterprise Value | Notes |
|--------|----------------|-------|
| EV/EBITDA — base ([X]×) | $[X]M | [X]× × $[X]M normalized EBITDA |
| EV/EBITDA — low ([X]×) | $[X]M | Discount for [concentration / compliance / key person] |
| EV/EBITDA — high ([X]×) | $[X]M | Premium for [recurring revenue / growth rate] |
| Comparable transactions | $[X]M | [N] comps; [X]-[X]× range; see table below |
| DCF (sanity check) | $[X]M | [X]% WACC; [X]× terminal multiple |
| **Indicated range** | **$[X]M — $[X]M** | **Midpoint: $[X]M** |

**Equity Value (from EV):** EV $[X]M − Net Debt $[X]M = **Equity Value $[X]M**

---

## Multiple Justification

**Sector benchmark:** [Healthcare MSO / O&G Uinta / CTV Ad tech] trades at [X]-[X]× EBITDA for PE buyers
**Applied multiple: [X]×**

| Multiple driver | Direction | Rationale |
|---------------|-----------|---------|
| Revenue recurring/contracted | +0.5× | [X]% of revenue is contracted with payers >12 months |
| Growth rate ([X]%) | +0.25× | Above sector average of [X]% |
| Customer concentration ([X]% top customer) | -0.5× | Above 25% threshold |
| Compliance/regulatory clean | +0.25× | OIG clear; HIPAA current |
| Key person dependency | -0.25× | Owner is primary physician relationship holder |
| Size discount | -0.5× | <$500K EBITDA; small companies trade at discount |
| **Applied multiple** | **[X]×** | |

---

## Comparable Transactions

| Transaction | Date | EBITDA multiple | Notes |
|------------|------|----------------|-------|
| [Comp 1 — sector, size] | [Year] | [X]× | [Brief note] |
| [Comp 2] | | | |
| [Comp 3] | | | |
| **Range** | | **[X]-[X]×** | |
| **Applied vs. comps** | | **[X]× — [at/below/above] midpoint** | [Reason] |

---

## Return Analysis

**Entry price (midpoint):** $[X]M | **Structure:** [All cash / Earnout / Rollover]
**Hold period:** [N] years | **Exit target:** [X]-[X]× EBITDA in [Year]

| Scenario | Exit EBITDA | Exit multiple | Exit EV | Entry equity | MOIC | IRR |
|---------|------------|--------------|---------|-------------|------|-----|
| Base | $[X]M | [X]× | $[X]M | $[X]M | [X]× | [X]% |
| Downside | $[X]M | [X]× | $[X]M | | [X]× | [X]% |
| Upside | $[X]M | [X]× | $[X]M | | [X]× | [X]% |

**MBL threshold check (≥20% IRR / ≥2.5× MOIC):** 🟢 Passes / 🟡 Borderline / 🔴 Fails
**Maximum price to maintain ≥20% IRR at base case:** $[X]M — **[Walk/Negotiate above this price]**

---

## Matt Mathison Brief

[Company] valuation [Date]: Indicated EV $[X]M-$[X]M (midpoint $[X]M) at [X]× normalized EBITDA of $[X]M. [Seller ask / Current carrying value: $[X]M — [X]× — [above/at/below] range]. IRR at ask: [X]% — [above/below] MBL threshold. Maximum price: $[X]M. Recommendation: [Proceed at ask / Counter at $X / Walk at >$X / Mark at $X for LP reporting].
```

## Output Contract
- Normalized EBITDA is the only honest EBITDA — reported EBITDA from a small business owner-operated company is almost always overstated relative to what a buyer will operate the business for; Dr. Lewis normalizes EBITDA for above-market owner compensation, personal expenses, non-recurring revenue, and one-time costs before applying any multiple; if the seller represents EBITDA at $200K but normalized EBITDA (after removing $40K in personal expenses and $15K owner salary addback above market) is $145K, the valuation is based on $145K; the difference at 7× EBITDA is $385K — material
- The return check is non-negotiable — every acquisition valuation includes the IRR and MOIC calculation at the proposed entry price and target exit assumptions; if the math doesn't work at the proposed price, Dr. Lewis presents it directly: "at $1.1M entry with 7.6× current EBITDA and $180K exit EBITDA at 7× in 5 years, the IRR is 22% — above threshold; at $1.4M, IRR drops to 14% — below threshold; maximum price is $1.15M"; Matt Mathison makes the final call but gets the return math, not just the multiple
- Comparable transactions ground the multiple — stating "healthcare MSO companies trade at 6-8×" without actual comparable transaction data is an assertion, not evidence; Dr. Lewis sources comparable transaction data from available databases (GF Data, CapIQ, broker deal reports) and applies the most relevant comparables; if comparables are unavailable for the specific subsector, Dr. Lewis discloses the limitation and applies a conservative discount for the uncertainty
- HITL required: Dr. Lewis builds the valuation; CEO reviews for operational assumption accuracy (particularly exit EBITDA assumptions); Matt Mathison approves the valuation for acquisition pricing and LP reporting; the maximum price (to maintain IRR threshold) is presented to Matt Mathison before any counter-proposal or LOI; LP reporting valuations are Matt Mathison's decision

## System Dependencies
- **Reads from:** Financial statements (QuickBooks), QoE findings (strategy-due-diligence-coordinator), comparable transaction data (GF Data, CapIQ, broker reports), market conditions (strategy-market-analyzer), investment thesis (strategy-investment-thesis)
- **Writes to:** Valuation analysis (SharePoint/Strategy/<Company>/Valuation/); LOI terms (strategy-loi-builder); exit plan (strategy-exit-planner); LP reporting inputs (strategy-lp-reporting); portfolio mark (annual LP report)
- **HITL Required:** Dr. Lewis builds; CEO reviews operational assumptions; Matt Mathison approves acquisition pricing valuations; Matt Mathison approves LP reporting marks; no offer at entry price without Matt Mathison sign-off on the return math

## Test Cases
1. **Golden path:** Scottsdale PT Group acquisition valuation → LTM EBITDA: $145K reported; normalized: $115K (after $30K addback QoE); sector: healthcare services (PT group, Medicare-heavy); comp multiple range from 3 GF Data transactions (PT practices, $100K-$200K EBITDA, 2023-2025): 5.8×, 6.2×, 7.1× — midpoint 6.4×; multiple adjustments: Medicare-heavy (+0 — neutral; Medicare is predictable), payer concentration 2 payers = 62% (-0.5×), key person dependency (-0.25×), OIG clean (+0.25×); applied multiple: 5.9× (below comp midpoint due to concentration); EV: 5.9× × $115K = $679K; seller asks $1.1M (based on reported $145K — 7.6×); gap: seller is pricing on reported EBITDA at elevated multiple; Dr. Lewis recommends counter: $750K cash + $100K earnout if Year 1 revenue ≥ $840K (adjusts for normalized EBITDA with earnout for upside); at $750K entry + $100K earnout: base IRR 23%; Matt Mathison approves counter
2. **Edge case:** Annual LP mark-to-market for Allevio → LTM EBITDA: $380K; normalized: $380K (no addbacks — owner is employed full-time CEO at market rate); sector: healthcare MSO; market conditions: M&A multiples compressed from 2022 peak (7-9×) to 2026 range (6-7.5×); applied multiple: 6.5× (mid-range; Allevio has low payer concentration and clean compliance); EV: 6.5× × $380K = $2.47M; equity value: $2.47M − $0 debt = $2.47M; entry carrying value: $1.8M; current mark: $2.47M (37% appreciation); MOIC: 1.37× at 3.5-year hold; IRR: 9.3% — below 20% threshold; note: thesis assumes exit at 7-8× post value creation; need 2 more years of VCP execution to hit target exit EBITDA of $520K at 7-8× ($3.6-4.2M exit value); Matt Mathison briefed: currently tracking below IRR target but within expected range for this stage of the hold
3. **Adversarial:** The seller's broker presents a "valuation" at 9.5× EBITDA based on "strategic buyer multiples" → Strategic buyers (hospital systems, national MSOs) pay premium multiples because they capture synergies that financial buyers don't; MBL is a financial buyer; strategic buyer multiples are not the right reference point for a financial buyer transaction; Dr. Lewis explains: at 9.5× normalized EBITDA ($115K), entry price = $1.09M; at base case 5-year exit assumptions, IRR = 8.3% — below MBL threshold; the seller may find a strategic buyer who will pay 9.5×, in which case MBL should wish them well and pass; MBL's maximum offer is governed by the return threshold, not the seller's broker's comparable set; Dr. Lewis presents this clearly to Matt Mathison who decides whether to walk or make a final below-threshold offer if there are strategic reasons to own the asset

## Audit Log
All valuation models retained permanently (PE portfolio history). LP mark-to-market valuations retained annually. Comparable transaction data retained with each valuation. Matt Mathison approval records retained. Acquisition entry valuation vs. exit valuation bridge retained (investment performance tracking).

## Deprecation
Retire when MBL develops a CFO or portfolio finance function capable of building investment-grade valuations — with Dr. Lewis reviewing the methodology for thesis alignment and Matt Mathison receiving the same return analysis regardless of who builds the model.
