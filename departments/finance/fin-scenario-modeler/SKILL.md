---
name: fin-scenario-modeler
description: "Build financial scenario models and stress-tests for MBL portfolio decisions. Use when the user says 'scenario model', 'scenario analysis', 'financial scenario', 'scenario planning', 'base case', 'bull case', 'bear case', 'downside scenario', 'upside scenario', 'stress test', 'sensitivity analysis', 'what if analysis', 'what if', 'what happens if', 'recession scenario', 'downside model', 'risk scenario', 'best case worst case', 'probabilistic model', 'probability weighted', 'Monte Carlo', 'tornado chart', 'key drivers', 'driver sensitivity', 'WTI scenario', 'claim ratio scenario', 'revenue scenario', 'growth scenario', 'headcount scenario', 'capex scenario', 'LP return scenario', 'exit scenario', 'hold period scenario', 'divestiture scenario', 'acquisition scenario', 'portfolio scenario', 'MBL scenario', or 'model the impact of'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|portfolio|all>] [--horizon <1-year|3-year|5-year>] [--scenarios <3|5|custom>] [--driver <revenue|ebitda|wti|claim-ratio|nrr|exit-multiple|custom>] [--action <build|stress-test|present|update>]"
---

# Fin Scenario Modeler

Build financial scenario models and stress-tests for MBL portfolio decisions — constructing structured base/bull/bear scenarios for any significant decision, identifying the key financial drivers that most affect outcomes, and giving Matt Mathison and Dr. Lewis the probabilistic clarity to make better capital allocation, exit timing, and operational decisions. Scenario modeling is not a forecasting exercise (no one knows the future); it is a decision support exercise — the question is always "what is the range of reasonable outcomes, and does our decision still look right across that range?"

## When to Use
- Any capital deployment decision >$100K (acquisition; well development; major vendor)
- Exit timing analysis (hold vs. sell now)
- Annual planning (budget scenario range)
- A key business driver changes materially (WTI drop; GRR deterioration; VCR decline)
- Matt Mathison asks "what happens if..." for any significant financial question

## Scenario Modeling Framework

```
SCENARIO CONSTRUCTION PRINCIPLES:

  ALWAYS 3 SCENARIOS (minimum):
    Bear case: what if the key assumptions are wrong by 15-20%?
    Base case: the management plan / most likely outcome
    Bull case: what if execution is excellent and market tailwinds help?
    
  SCENARIOS ARE DECISIONS, NOT JUST MATH:
    Each scenario must lead to a decision action:
      Bear case: "If this happens, what do we do? (capex pause; cost reduction; distress plan)"
      Base case: "If this happens, we proceed with the current plan."
      Bull case: "If this happens, how do we accelerate? (additional deployment; earlier exit)"

ENTITY-SPECIFIC SCENARIO DRIVERS:

  ALLEVIO:
    Primary driver: Employer group GRR (new groups added; existing groups retained)
    Secondary: PMPM rate trajectory; claim ratio improvement; member growth
    
    Scenario inputs:
      Bear: GRR 87%; claim ratio stuck at 92%; no new groups in next 12 months
      Base: GRR 91%; claim ratio improves to 87%; +2 new groups in 12 months
      Bull: GRR 95%; claim ratio hits 85%; +5 new groups; PMPM rate increase at OE
      
    EBITDA output range: Bear $[X] → Base $[X] → Bull $[X]
    Exit value range (8× EBITDA): Bear $[X]M → Base $[X]M → Bull $[X]M
    
  HIVE PARTNERS:
    Primary driver: WTI price × production volume
    Secondary: royalty fraction; operating costs; lease renewals
    
    Scenario inputs:
      Bear: WTI $50; production flat; capex paused (WTI trigger activated)
      Base: WTI $62; production +5%; 1 new well development
      Bull: WTI $72; production +15% (new well + workover success); acreage expansion
      
    EBITDA output range: Bear $[X] → Base $[X] → Bull $[X]
    Exit value range (12× royalty income): Bear $[X]M → Base $[X]M → Bull $[X]M
    
  COLUMN6/SIPROCAL:
    Primary driver: Agency NRR; VCR performance
    Secondary: CPM trends; gross margin; headcount growth
    
    Scenario inputs:
      Bear: Agency NRR 88%; VCR 89%; CPM headwinds; 2 agency churns
      Base: Agency NRR 95%; VCR 92%; stable CPM; 3 net new agencies
      Bull: Agency NRR 105%; VCR 95%; premium inventory commands +$0.50 CPM; 6 net new agencies
      
    EBITDA output range: Bear $[X] → Base $[X] → Bull $[X]
    Exit value range (8× EBITDA): Bear $[X]M → Base $[X]M → Bull $[X]M

PORTFOLIO-LEVEL SCENARIO:

  Combine entity scenarios for portfolio view:
  
  | Scenario | Allevio EBITDA | HIVE EBITDA | Column6 EBITDA | Portfolio EBITDA | LP MOIC |
  |---------|-------------|-----------|-------------|----------------|---------|
  | Bear (all bear) | $[X] | $[X] | $[X] | $[X] | [X]× |
  | Correlated bear (macro downturn) | $[X] | $[X] | $[X] | $[X] | [X]× |
  | Base (base for all) | $[X] | $[X] | $[X] | $[X] | [X]× |
  | Bull (all bull) | $[X] | $[X] | $[X] | $[X] | [X]× |
  
  Correlated bear: recession scenario (WTI down; healthcare spending conservative; ad spend down 20%)
  
DECISION FRAMING (the most important output):

  After building the scenarios, Dr. Lewis answers:
    1. What is the probability-weighted expected outcome? (rough estimate; not Monte Carlo)
    2. What is the worst reasonable outcome, and can MBL absorb it?
    3. What action does each scenario dictate?
    4. What is the key leading indicator to watch that signals which scenario is materializing?
    
  Matt Mathison doesn't need to understand every assumption in the model.
  He needs to know: the range of outcomes; the worst case; and the decision trigger.
```

## Output Format

```markdown
# Scenario Analysis — [Topic/Decision]
**Prepared by:** Dr. Lewis | **Decision needed:** [Description] | **For:** Matt Mathison

---

## Scenario Summary

| | Bear | Base | Bull |
|-|------|------|------|
| Key assumption | [e.g., WTI $50] | [WTI $62] | [WTI $72] |
| Revenue | $[X] | $[X] | $[X] |
| EBITDA | $[X] | $[X] | $[X] |
| EBITDA margin | [%] | [%] | [%] |
| LP MOIC (if applicable) | [X]× | [X]× | [X]× |

---

## Decision Framework

| Scenario | Probability (rough) | Action |
|---------|--------------------|----|
| Bear | ~[%] | [Action: e.g., capex pause; cost reduction; exit conversation] |
| Base | ~[%] | [Action: continue current plan] |
| Bull | ~[%] | [Action: accelerate deployment; earlier exit] |

---

## Leading Indicators to Watch

| Indicator | Bear signal | Base tracking | Bull signal |
|-----------|------------|--------------|------------|
| [WTI price] | <$58 for 2 weeks | $60-$65 range | >$70 |
| [GRR] | <89% | 91% | >95% |

---

## Matt Mathison Decision Required

**Bottom line:** [One sentence recommendation + the key variable]
**Decision deadline:** [Date]
**If no decision by [date]:** [Default action]
```

## Output Contract
- Scenarios lead to decisions — every scenario model delivered to Matt Mathison ends with a clear recommendation and a decision framework; a scenario model that presents three numbers without a decision implication is incomplete; Dr. Lewis always answers "given these scenarios, here is my recommendation, here is the key variable to watch, and here is what we do if the bear case materializes"; the model is a decision tool, not a data dump
- Bear case cannot be optimistic — the bear case must genuinely stress the model; a bear case that is 95% of the base case is not stress-testing; the bear case assumes that the worst plausible scenario within a 3-year horizon materializes: WTI at $50 (not $58); GRR at 87% (not 90%); agency NRR at 88% (not 93%); the question is "can we survive this?" not "is this likely?"; if the bear case MOIC is still above 1.5×, MBL's investment is resilient; if the bear case produces returns below capital return, the decision needs to change
- Probability weighting is directional, not precise — Dr. Lewis provides rough probability estimates for each scenario (e.g., "Bear: ~20%; Base: ~60%; Bull: ~20%") as a communication tool, not as a precise calculation; these estimates are Dr. Lewis's subjective assessment based on current market conditions and entity performance; they help Matt Mathison weight the scenarios when making a decision; precision is not the goal — directional clarity is
- HITL required: any scenario model informing a capital decision >$250K is reviewed by Matt Mathison before the decision is made; exit timing scenarios reviewed by Matt and legal; scenarios that suggest a bear case requiring distress planning are presented to Matt immediately (not deferred to a scheduled meeting); Matt's decisions on scenario-dependent actions (capex pause; exit acceleration; cost reduction trigger) are made by Matt, not Dr. Lewis; Dr. Lewis presents the scenario and the options; Matt decides

## System Dependencies
- **Reads from:** fin-financial-model (base case assumptions and drivers); fin-kpi-dashboard (current performance vs. targets — actuals feed the scenario starting point); fin-hive-royalty-accounting (WTI sensitivity data); fin-allevio-pmpm and fin-allevio-claim-ratio (Allevio driver data); fin-column6-io-billing (Column6 NRR and revenue data); fin-investor-returns-model (LP return impact of scenarios)
- **Writes to:** Scenario models (SharePoint → Finance → Scenarios → [Topic] → [Date]); Matt Mathison decision briefings; fin-financial-model (updated base case if scenario analysis informs a plan revision); exec-board-reporting (scenario analysis included in quarterly board package for material decisions)
- **HITL Required:** Capital decisions >$250K informed by scenario analysis → Matt Mathison review; exit timing scenarios → Matt + legal; bear case distress scenarios → Matt immediate notification; all decision-framing scenarios reviewed by Matt before the decision is committed; probability estimates are Dr. Lewis's advisory; final decision is Matt's

## Test Cases
1. **Golden path:** Matt asks: "Should we accelerate the Column6 exit to Q4 this year, or wait until Q2 next year?" → Dr. Lewis builds a hold-period scenario: Bear (agency churn of 2 clients in Q3 before exit; NRR drops to 88%): exit EBITDA $320K; exit EV $2.56M (8×); LP net MOIC 1.64× — below 2.0× target. Base (current trajectory continues; NRR 95%): exit EBITDA $408K; exit EV $3.26M; LP net MOIC 2.10×. Bull (2 new agencies before exit; NRR 105%): exit EBITDA $520K; exit EV $4.16M; LP net MOIC 2.68×. Wait 6 months scenario: Base with 6 more months of compounding at 15% EBITDA growth: exit EBITDA $470K; exit EV $3.76M; LP net MOIC 2.42×. Recommendation: "Waiting 6 months improves the base case MOIC from 2.10× to 2.42×. The bear case risk (agency churn) is manageable — we have 2 agency renewals in Q3; if both renew, the bear case doesn't materialize. My recommendation: wait until Q2, execute the 2 agency renewals in Q3, and initiate the sale process in October. If either agency churns in Q3, we immediately revisit the timeline."
2. **Edge case:** WTI drops to $55 for 2 weeks; Matt asks for a HIVE scenario model → Dr. Lewis: "Running the HIVE WTI sensitivity now. Three scenarios: (1) WTI recovers to $62+ within 6 months (base): no capex impact; HIVE EBITDA on plan ($[X]); LP return on track for 1.9× at 5-year exit. (2) WTI stays at $55 for 12 months then recovers (bear): capex paused (trigger activated); HIVE EBITDA drops 13% ($[X]); LP return impact: -$[X]M on FMV; adjusted MOIC 1.62×. (3) WTI stays below $55 for 24+ months (stress scenario): capex frozen; acreage expansion paused; HIVE EBITDA -22%; MOIC 1.40× (below minimum). Decision: I've already activated the capex pause per protocol. The key question for Matt: should we start conversations with HIVE's operators about protecting royalty income (minimum volume commitments) in case of a sustained downturn? And should we accelerate any HIVE exit planning in the 12-month window before LPs start asking questions? I need your call."
3. **Adversarial:** Matt asks Dr. Lewis to build a model showing that Allevio is worth $12M to share with a potential buyer, when the model output actually shows $8.5-9.5M → Dr. Lewis: "I can't build a model designed to reach a predetermined $12M value — that would be misrepresentation to a buyer, which is a legal and THRIVE violation. What I can do: (1) build an honest model showing the $8.5-9.5M range at current performance; (2) build a 'bull case assuming X improvements' model that shows what Allevio could be worth at $12M IF specific milestones are achieved (e.g., claim ratio hits 85%; 4 new employer groups added; OE rate increase secured) — this is a legitimate way to frame the potential upside for a strategic buyer; (3) identify which specific improvements between now and exit would actually move the value toward $12M. A buyer's QoE firm will get to the real EBITDA anyway — starting with an inflated number damages the relationship and can kill the deal. Let me present you the honest range and the upside case, and you decide the negotiation strategy."

## Audit Log
All scenario models retained (with assumptions documented). Decision briefings retained. Matt Mathison approval records for scenario-informed decisions. Bear case documentation retained (including what triggered the stress test). Key leading indicator tracking records retained quarterly.

## Deprecation
Retire when MBL has a dedicated Portfolio Manager or CFO who builds scenario models — with Dr. Lewis providing the financial data and entity context and Matt Mathison retaining all capital allocation and exit timing decisions.
