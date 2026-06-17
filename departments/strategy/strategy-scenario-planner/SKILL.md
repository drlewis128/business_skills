---
name: strategy-scenario-planner
description: "Build scenario plans for strategic decisions under uncertainty. Use when the user says 'scenario planning', 'scenario analysis', 'what if scenarios', 'downside scenario', 'upside scenario', 'base case', 'bear case', 'bull case', 'stress test', 'plan for uncertainty', 'what happens if', 'scenario modeling', 'risk scenarios', 'contingency planning', 'what are the scenarios', or 'plan B'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--decision <description>] [--scenarios <2|3|4>]"
---

# Scenario Planner

Build scenario plans for MBL portfolio companies facing strategic decisions under uncertainty — creating a structured set of futures that captures the realistic range of outcomes so decision-makers can choose strategies that perform well across scenarios rather than optimizing for a single forecast that may not materialize. Scenario planning is not forecasting: it doesn't predict which future will occur; it prepares the organization for the range of futures that could occur. At PE portfolio scale, the key decisions that require scenario planning involve capital commitment, hiring, acquisitions, and exit timing — decisions that are difficult to reverse once made.

## When to Use
- A large capital commitment requires stress-testing the downside
- Exit timing decision — is now the right time or should we hold?
- A significant market uncertainty (WTI price, payer contract renewal, regulatory change) affects the plan
- Matt Mathison asks "what happens if [X]?"
- Annual planning — what are the realistic scenarios for next year?
- Pre-LOI — stress-testing the deal economics under different assumptions

## Scenario Planning Framework

```
Scenario construction:
  Step 1 — Identify the key uncertainty: What is the one variable or event that most changes the outcome?
    Oil & gas: WTI price (HIVE) — too unpredictable to forecast; model as scenarios
    Healthcare: Payer contract renewal (Allevio) — binary event; model both outcomes
    Media: CTV ad market growth rate (Column6) — range is wide; model high/base/low
    M&A: Seller's EBITDA turns out to be overstated in diligence — model the financial impact
    
  Step 2 — Define 2-4 scenarios (not more — more creates analysis paralysis):
    Standard 3-scenario set: Base case / Upside / Downside
    Binary event: 2 scenarios (happens / doesn't happen)
    Range uncertainty: 3-4 scenarios (high / base / base-minus / stress)
    
  Step 3 — Define what changes in each scenario (NOT just the financial output):
    What specifically is different? (WTI at $85 vs. $65 vs. $50)
    What management actions are available in response?
    What is the timeline for the scenario to play out?
    When would we know which scenario is occurring?
    
  Step 4 — Model the financial impact:
    Revenue, EBITDA, cash position under each scenario
    Capital requirements under each scenario (does the downside require additional capital?)
    Exit value under each scenario
    
  Step 5 — Identify the robust strategy:
    Which decisions perform acceptably across ALL scenarios (not just the base case)?
    What are the decision triggers — if [X] happens, we do [Y]?
    What early warning indicators tell us which scenario is unfolding?
    
HIVE scenario example structure:
  Scenario A (Base): WTI $70-75; production at plan; LOE within budget → thesis intact
  Scenario B (Upside): WTI $85+; production at plan; LOE reduced → accelerate distributions
  Scenario C (Downside): WTI $55-60; production at plan; LOE flat → reduce CapEx; preserve cash
  Scenario D (Stress): WTI $45; + production disruption → defer all discretionary CapEx; LP distribution pause
  
Allevio scenario example structure:
  Scenario A (Base): Primary payer renews; 1 new provider; billing improvement on track
  Scenario B (Upside): Primary payer renews with rate increase; 2 new providers; billing improvement ahead
  Scenario C (Downside): Primary payer downgrades rate by 8%; absorb with volume growth
  Scenario D (Stress): Primary payer exits network; company loses 38% revenue → immediate crisis response
```

## Output Format

```markdown
# Scenario Plan — [Entity Name]: [Decision or Uncertainty]
**Date:** [Date] | **Analyst:** Dr. John Lewis | **Decision horizon:** [Q/Year]

---

## Decision Context

**Decision or uncertainty being modeled:** [Specific — not vague]
**Why scenarios rather than a single forecast:** [What makes this uncertain enough to require scenario planning?]
**Key uncertainty driver:** [WTI price / payer contract / market growth rate / acquisition EBITDA quality]
**Decision deadline:** [When must the decision be made?]

---

## Scenarios

### Scenario A — [Name: Base / Upside / High / Likely]
**Probability estimate:** [~X]%
**Key assumption:** [The one thing that makes this scenario different]
**What changes:** [Specific — WTI $70; payer renews; market grows 15%]

| Metric | Scenario A | vs. Current |
|--------|-----------|------------|
| Revenue | $[X]M | +/- [X]% |
| EBITDA | $[X]M / [X]% | |
| Cash position (12mo) | $[X]M | |
| Exit value (estimate) | $[X]M | |

**Management response in this scenario:** [What we do; what we accelerate]
**Early indicator:** [What we see first that tells us this is the scenario: by [Date]]

---

### Scenario B — [Name: Downside / Low / Stress]
**Probability estimate:** [~X]%
**Key assumption:** [What changes]

| Metric | Scenario B | vs. Scenario A |
|--------|-----------|----------------|
| Revenue | $[X]M | -[X]% |
| EBITDA | $[X]M / [X]% | |
| Cash position | $[X]M | |
| Exit value | $[X]M | |

**Management response:** [What we do differently; what we cut; what we accelerate]
**Trigger:** [What event or data point causes us to activate Scenario B response?]
**Early indicator:** [What we see first]

---

### Scenario C — [Name if applicable]
[Same structure]

---

## Scenario Comparison

| Metric | Scenario A | Scenario B | Scenario C | D (Stress) |
|--------|-----------|-----------|-----------|-----------|
| Revenue | $[X]M | $[X]M | $[X]M | $[X]M |
| EBITDA | $[X]M | $[X]M | $[X]M | $[X]M |
| Exit value | $[X]M | $[X]M | $[X]M | $[X]M |
| IRR | [X]% | [X]% | [X]% | [X]% |
| Capital required | $[X] | $[X] | $[X] | $[X] |

---

## Recommended Strategy

**Strategy recommendation:** [Which strategy performs acceptably across all scenarios]
**What we do now (regardless of scenario):** [Actions that make sense in all scenarios]
**Scenario triggers and responses:**
- If [early indicator A] by [date] → activate Scenario B response [specific actions]
- If [early indicator B] → activate Scenario C response

**Matt Mathison decision required:** [What decision needs to be made; which scenarios require his input]

---

## Matt Mathison Scenario Brief

[Entity] scenario plan for [Decision]: [N] scenarios modeled. Base case ([X]% probability): [One sentence]. Downside ([X]% probability): [Impact — specific]. Stress test: [Survivable / Thesis-breaking — specific]. Recommended strategy: [One sentence — what to do now]. Trigger for escalation to Matt Mathison: [Specific event or data point].
```

## Output Contract
- Model realistic scenarios, not best case and disaster — scenarios should span the realistic range of outcomes, not the theoretical extremes; a WTI scenario of $120 and $20 is not useful for a 12-month decision; a WTI scenario of $85, $70, and $55 is realistic and actionable; Dr. Lewis calibrates scenarios to historical volatility and analyst range forecasts, not to extremes that would only occur in conditions that would change everything anyway
- Each scenario must have a trigger and a management response — a scenario without a specified management response is just a financial model; the value of scenario planning is the pre-committed response: "if WTI drops below $60 by September, we stop discretionary CapEx and preserve cash for LP obligations"; pre-committed triggers make the response faster and more decisive when the scenario actually begins unfolding; Dr. Lewis defines the trigger (observable metric at a specific threshold and date) and the response (specific management actions) for every scenario
- Three scenarios maximum in most cases — more than three scenarios overwhelms decision-makers and dilutes focus; if there are four genuinely distinct and important scenarios, use four; if the fourth scenario is just a variant of one of the other three, combine them; the goal is clarity about the realistic range and what to do in each zone, not comprehensiveness
- HITL required: Dr. Lewis builds the scenario model; CEO reviews for operational accuracy (are the management responses actually executable?); Matt Mathison reviews for capital and thesis implications; any scenario where capital requirements increase or exit timing changes materially requires Matt Mathison decision

## System Dependencies
- **Reads from:** Financial model (QuickBooks baseline), VCP (strategy-value-creation-plan), investment thesis (strategy-investment-thesis), market data (strategy-market-analyzer), WTI/market price data (HIVE)
- **Writes to:** Scenario plan document (SharePoint/Strategy/<Company>/Scenarios/); annual strategic plan (strategy-annual-plan-builder); Matt Mathison scenario brief; exit plan update if exit timing affected
- **HITL Required:** Dr. Lewis builds; CEO validates management responses; Matt Mathison reviews capital implications; Matt Mathison for any decision that changes capital commitment or exit timeline

## Test Cases
1. **Golden path:** HIVE Partners Q3 scenario plan for WTI price uncertainty → Scenario A (Base, 55%): WTI $68-72 through Q4; production at 180 BBL/day; LOE $28/BOE; EBITDA $1.2M; response: continue planned completion program; Scenario B (Downside, 30%): WTI $55-62; production at 180 BBL/day; LOE $28/BOE; EBITDA $680K; response: pause discretionary CapEx in October, defer 2 planned completions to Q1 next year; Scenario C (Stress, 15%): WTI below $50 sustained; EBITDA $180K or negative; response: full CapEx halt; Matt Mathison notification within 48 hours; evaluate early LP distribution timing; trigger: WTI below $58 for 10 consecutive trading days = Dr. Lewis activates Scenario C response; early indicator: WTI futures curve; Matt Mathison briefed; decision: approve Scenario B pause trigger
2. **Edge case:** Allevio's primary payer (38% of revenue) sends a 60-day notice of rate renegotiation → This is a binary scenario: payer renews at acceptable terms vs. payer reduces rates or exits network; Scenario A: payer renews at current or +2% rates; no action required; Scenario B: payer reduces rates by 8-12%; EBITDA impact -$68K; response: begin payer diversification (add 2 new payers by Q2); increase patient volume to offset per-visit rate reduction; Scenario C: payer exits network entirely; revenue impact -$380K; immediate crisis response (rc-crisis-communicator); strategic review of exit timeline (may accelerate exit before further deterioration); trigger monitoring: weekly call with practice manager on payer relationship status; Matt Mathison briefed; decision: approve payer diversification initiative as insurance regardless of scenario
3. **Adversarial:** "Just give me the base case — we don't need worst case, that's too pessimistic" → Single-scenario planning is optimism bias in disguise; if the base case doesn't occur — and most base cases don't occur exactly as planned — the organization is unprepared; the cost of building a downside scenario is 2 hours of analysis; the cost of being surprised by the downside without a pre-committed response is orders of magnitude greater; Dr. Lewis presents at minimum a base and a downside; the downside is not pessimism — it is preparation; if the base case occurs, the downside scenario is a document in a folder; if the downside occurs, it's the playbook that preserves value

## Audit Log
Scenario plans retained 3 years. Trigger activation records retained (when a trigger was hit and what response was activated). Matt Mathison briefing records retained. Scenario accuracy post-mortems retained annually.

## Deprecation
Retire when portfolio companies have CFO-level analytical capability — with Dr. Lewis reviewing scenario assumptions for thesis alignment rather than building the models from scratch.
