---
name: pe-sensitivity-analyzer
description: "Build and run sensitivity analyses for MBL Partners investment and exit scenarios. Use when the user says 'sensitivity analysis', 'sensitivity', 'scenario analysis', 'scenario modeling', 'base case', 'bull case', 'bear case', 'downside case', 'upside case', 'what if', 'what happens if', 'stress test', 'stress scenario', 'sensitivity table', 'sensitivity model', 'sensitivity chart', 'two-way table', 'scenario table', 'upside downside', 'range of outcomes', 'return range', 'return sensitivity', 'MOIC sensitivity', 'IRR sensitivity', 'exit multiple sensitivity', 'EBITDA sensitivity', 'revenue sensitivity', 'WTI sensitivity', 'commodity sensitivity', 'interest rate sensitivity', 'leverage sensitivity', 'multiple sensitivity', 'growth rate sensitivity', 'margin sensitivity', 'retention sensitivity', 'churn sensitivity', 'hold period sensitivity', 'exit timing sensitivity', 'what is our downside', 'what is our upside', 'probability weighted return', 'expected value', 'risk-adjusted return', or 'return scenario'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|new-deal>] [--type <two-way|scenario|stress>] [--variables <ebitda-growth,exit-multiple>] [--action <build|update|present>] [--purpose <pre-loi|pre-ic|lp-report|exit-planning>]"
---

# PE Sensitivity Analyzer

Build and run sensitivity analyses for MBL Partners investment and exit scenarios — creating two-way sensitivity tables, stress scenarios, and probability-weighted return distributions that translate uncertain assumptions into a range of possible outcomes. Sensitivity analysis is how MBL answers the question: "what is the range of outcomes, and can we live with the downside?" Every investment decision, LOI pricing, and exit timing decision is better when it's grounded in a clear view of the outcomes under different assumptions. Matt Mathison uses sensitivity analysis to make go/no-go decisions and to calibrate the fund's risk appetite; Dr. Lewis builds rigorous sensitivity models that are honest about uncertainty.

## When to Use
- Pre-LOI return analysis (can we make our target return at this price?)
- Investment committee preparation (range of outcomes)
- Exit timing analysis (exit now vs. hold 1-2 more years)
- LP presentation (expected returns under different scenarios)

## Sensitivity Analysis Framework

```
SENSITIVITY TYPES:

  1. TWO-WAY SENSITIVITY TABLE:
     Purpose: show how returns change across two key variables simultaneously
     Most common pairs:
       Revenue/EBITDA growth rate (rows) × Exit multiple (columns) → MOIC/IRR table
       Exit year (rows) × Exit multiple (columns) → MOIC/IRR table
       WTI price (rows) × Royalty acreage (columns) → HIVE MOIC table
       
  2. THREE-SCENARIO ANALYSIS (bull/base/bear):
     Bull case: favorable assumptions (strong growth; multiple expansion; clean exit)
     Base case: most likely assumptions (thesis assumptions)
     Bear case: adverse assumptions (slower growth; multiple compression; difficult exit)
     Probability weights: bull [X%]; base [X%]; bear [X%] (must sum to 100%)
     Expected MOIC: probability-weighted average
     
  3. STRESS SCENARIO:
     Single extreme assumption that tests resilience
     Examples: biggest customer cancels (Allevio); WTI drops to $50 (HIVE); major agency exits (Column6)
     Question: at what point does the investment lose money?

MBL STANDARD SENSITIVITY STRUCTURE (pre-LOI and pre-IC):

  INPUT ASSUMPTIONS:
    Entry EBITDA: [stated / normalized EBITDA]
    Entry price: [EV from LOI]
    Entry multiple implied: [EV / EBITDA]
    Revenue CAGR (hold period): [low / base / high scenarios]
    EBITDA margin improvement: [low / base / high scenarios]
    Hold period: [3 / 4 / 5 years]
    Exit multiple: [range around base case assumption]
    Exit EBITDA: entry EBITDA × (1 + CAGR)^years × (exit margin / entry margin)
    Exit EV: exit EBITDA × exit multiple
    Equity return: exit EV - debt remaining = exit equity; MOIC = exit equity / invested equity
    
  TWO-WAY TABLE OUTPUT FORMAT:
                    Exit Multiple
                    3.0x   4.0x   5.0x   6.0x   7.0x
    EBITDA Growth  
    0%             1.0x   1.4x   1.7x   2.1x   2.4x
    5%             1.2x   1.7x   2.1x   2.5x   2.9x
    10%            1.5x   2.0x   2.5x   3.0x   3.5x
    15%            1.7x   2.4x   3.0x   3.6x   4.2x
    20%            2.0x   2.8x   3.5x   4.2x   4.9x
    (Numbers are indicative — calculate for each specific deal)

ENTITY-SPECIFIC SENSITIVITY VARIABLES:

  ALLEVIO (Healthcare MSO):
    Primary variables: revenue growth (employer group adds); EBITDA margin (claim ratio)
    Exit multiple sensitivity: EV/Revenue 2.0x → 3.5x (based on comparable MSO transactions)
    Key risk variable: employer GRR — show outcomes at 88%, 91%, 95% employer retention
    HIPAA: all sensitivity analyses use aggregate financial data — no PHI
    
  HIVE (Oil & Gas Royalties):
    Primary variable: WTI price ($/bbl) — run at $55, $60, $65, $70, $75, $80
    Secondary variable: production volumes (acreage development pace)
    Exit: show NAV at different WTI price assumptions
    Key risk: WTI below $58 for 2+ weeks triggers development pause
    
  COLUMN6 (CTV/Media):
    Primary variables: agency NRR; revenue growth
    Exit multiple sensitivity: EV/Revenue 1.5x → 3.5x (based on ad-tech comparable transactions)
    Key risk variable: VCR — show outcomes at 88%, 92%, 95% completion rate
    Loss of largest agency: show impact on MOIC if top agency (X% of revenue) churns

RETURN THRESHOLDS (use to color-code sensitivity tables):

  MOIC ≥ 3.0x gross: 🟢 Strong (exceeds target)
  MOIC 2.0-3.0x gross: 🟡 Acceptable (meets target)
  MOIC 1.5-2.0x gross: 🟠 Minimum (below target; need to understand why)
  MOIC < 1.5x gross: 🔴 Poor (below minimum; reconsider the deal or the price)
  MOIC < 1.0x gross: ⚫ Loss (kill the deal or exit immediately)
```

## Output Format

```markdown
# Sensitivity Analysis — [Entity/Deal] — [Date]
**Purpose:** [Pre-LOI / Pre-IC / Exit timing / LP presentation]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Base Case Assumptions

| | Base case | Bull case | Bear case |
|-|----------|----------|----------|
| Entry EBITDA | $[X] | $[X] | $[X] |
| EBITDA growth (CAGR) | [X%] | [X%] | [X%] |
| Exit year | [N] | [N] | [N] |
| Exit multiple | [X.Xx]x | [X.Xx]x | [X.Xx]x |
| **MOIC** | **[X.Xx]x** | **[X.Xx]x** | **[X.Xx]x** |
| **IRR** | **[X%]** | **[X%]** | **[X%]** |

**Probability weights:** Bull [X%] / Base [X%] / Bear [X%]
**Probability-weighted MOIC:** [X.Xx]x

---

## Two-Way Sensitivity: MOIC vs. EBITDA Growth and Exit Multiple

|  | Exit 3.0x | Exit 4.0x | Exit 5.0x | Exit 6.0x |
|--|-----------|-----------|-----------|-----------|
| EBITDA 0% CAGR | [X.Xx]x 🔴 | [X.Xx]x 🟠 | [X.Xx]x 🟡 | [X.Xx]x 🟡 |
| EBITDA 10% CAGR | [X.Xx]x 🟡 | [X.Xx]x 🟡 | [X.Xx]x 🟢 | [X.Xx]x 🟢 |
| EBITDA 20% CAGR | [X.Xx]x 🟡 | [X.Xx]x 🟢 | [X.Xx]x 🟢 | [X.Xx]x 🟢 |

---

## Stress Scenario: [Specific Risk Event]

**Scenario:** [e.g., Largest employer group cancels]
**Financial impact:** Revenue -[X%]; EBITDA falls to $[X]
**MOIC impact:** Base [X.Xx]x → Stress [X.Xx]x
**Loss of capital?** [Yes at exit multiple <[X.Xx]x / No at any reasonable exit multiple]
```

## Output Contract
- Sensitivity tables must include at least one loss scenario — a sensitivity table that shows MOIC ranging from 1.8x (bear) to 4.2x (bull) with no scenario that results in a return below 1.5x is not a complete sensitivity analysis; Dr. Lewis includes the scenario where the investment loses money: "at 0% EBITDA growth and a 3.0x exit multiple, MOIC is 0.8x — a 20% capital loss"; Matt Mathison uses this to decide whether the downside is acceptable, whether the price should be reduced, or whether the deal should not be done
- Probability weights are explicit and conservative — assigning probability weights to bull/base/bear requires judgment; the temptation is to weight the bull case too high (motivated by deal enthusiasm); Dr. Lewis uses conservative weights (typically bull 20% / base 60% / bear 20%) and does not change the weights to produce a more attractive expected MOIC; if Matt Mathison disagrees with the weights, the discussion is documented in the investment thesis
- HIVE sensitivity shows the WTI price range explicitly — for any HIVE deal, the sensitivity table always includes WTI price as a primary variable, with explicit MOIC outcomes at $55, $60, $65, $70, $75, and $80 per barrel; the $58 pause threshold is marked; a deal that loses money at WTI <$65 with high probability is a deal MBL should reconsider in the current energy market
- HITL required: pre-LOI sensitivity analysis → Matt Mathison reviews before LOI submission; pre-IC sensitivity → Matt Mathison uses it to approve or reject the investment; any sensitivity showing the probability-weighted MOIC below 2.0x → Matt flags the deal as below-target before proceeding; exit timing sensitivity → Matt Mathison uses it to decide hold or exit; LP-presented sensitivity → Matt Mathison reviews before LP distribution

## System Dependencies
- **Reads from:** pe-deal-thesis-builder (investment assumptions to stress-test); pe-valuation-model (comparable company multiples for exit assumption); pe-financial-diligence (normalized EBITDA for entry assumptions); pe-irr-tracker (IRR alongside MOIC); WTI price data (HIVE); pe-portfolio-kpi-dashboard (current operational data for hold-period sensitivity)
- **Writes to:** Sensitivity models (SharePoint → Deals → [Company] → Returns or → Portfolio → [Entity] → Sensitivity); pe-deal-thesis-builder (sensitivity section); pe-loi-manager (MOIC at different price points); Matt Mathison briefings (pre-LOI; pre-IC; exit timing); pe-exit-process-manager (exit timing analysis)
- **HITL Required:** Pre-LOI sensitivity → Matt reviews before LOI; pre-IC sensitivity → Matt uses to approve/reject; probability-weighted MOIC <2.0x → Matt flags; exit timing sensitivity → Matt decides; LP-distributed sensitivity → Matt reviews

## Test Cases
1. **Golden path:** Pre-LOI sensitivity for healthcare MSO at $12M EV. Normalized EBITDA: $1.2M. Entry multiple: 10.0x. Revenue growth scenarios: 0%, 10%, 15%, 20% CAGR (4-year hold). Exit multiple range: 8x-12x EBITDA. Base case (15% CAGR; 10x exit): MOIC 2.8x. Bull (20% CAGR; 12x exit): 4.1x. Bear (5% CAGR; 8x exit): 1.7x. Stress (0% growth; 7x exit): 0.9x — below 1.0x. Probability-weighted (20/60/20): 2.7x expected MOIC. Matt reviews: "Bear is acceptable; stress is low probability but notable. Proceed with LOI at $11.5M (reduce price by $500K to improve downside protection)."
2. **Edge case:** The sensitivity analysis shows that 35% of the realistic scenario space results in MOIC below 1.5x → Dr. Lewis: "The sensitivity table shows 35% of realistic scenarios below 1.5x MOIC — that's above my comfort threshold. The weak cells are concentrated in the low-growth, low-multiple quadrant (EBITDA growth <5% and exit multiple <5x EBITDA). The key question: how likely is the low-growth scenario? The commercial DD showed the growth thesis is validated by the sales pipeline — but if the company's growth stalls, there's no multiple expansion story to save the return. My recommendation: reduce the entry price by ~$1.5M to move the 1.5x MOIC floor to a lower growth rate. Matt: your call on whether the current thesis is convincing enough to justify the current price."
3. **Adversarial:** A deal sponsor presents Dr. Lewis with their own sensitivity table showing minimum MOIC of 2.5x under all scenarios → Dr. Lewis: "I'm going to run our own independent sensitivity analysis. A sponsor's sensitivity table is not a neutral document — it's built to make the deal look good. I'll use the same deal economics but apply our own assumptions for EBITDA growth (based on our commercial DD; not their projections) and our own exit multiple range (based on comparable transactions; not optimistic public market comps). If our independent analysis produces a similar range to theirs, that's a good sign. If ours shows a materially worse downside, I'll present both and explain the differences to Matt Mathison."

## Audit Log
All sensitivity models retained (with assumptions; probability weights; output tables; date). Pre-LOI and pre-IC sensitivity models retained permanently. LP-presented sensitivity analyses retained. Exit timing sensitivity records retained. Matt Mathison decision records retained (with sensitivity outputs used as inputs to decision).

## Deprecation
Sensitivity analysis is active during the fund's investment period and at each exit decision. Sensitivity models for specific deals are retained permanently. Scenario assumptions are updated as market conditions change.
