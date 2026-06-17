---
name: fpa-scenario-planner
description: "Build base/bear/bull scenario models for business decisions and planning. Use when the user says 'scenario analysis', 'scenario planning', 'what if analysis', 'what-if model', 'sensitivity analysis', 'downside scenario', 'bear case', 'bull case', 'base case', 'scenario model', 'stress test', 'stress testing', 'model the scenarios', 'plan for downside', 'test assumptions', 'scenario comparison', 'what happens if', 'best case worst case', 'plan for multiple outcomes', or 'scenario modeling'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--decision <topic>] [--scenarios <N>] [--horizon <years>] [--action <build|present|update>]"
---

# Scenario Planner

Build scenario models for MBL portfolio company decisions — quantifying the financial impact of different outcomes so decisions can be made with eyes open to the full range of possibilities. Scenario planning is distinct from forecasting: a forecast predicts the most likely outcome; scenarios model the range of possible outcomes. The Bear case shows what the business can survive; the Bull case shows what's achievable with strong execution; the Base case is the most likely outcome given current information. Dr. Lewis builds scenarios before major decisions (hiring plans, CapEx, acquisitions, debt draws) and whenever Matt Mathison asks "what happens if...?"

## When to Use
- Before any major capital decision (CapEx >$25K, new hire above plan, acquisition)
- When a key business variable is highly uncertain (WTI price, new customer contract timing, regulatory outcome)
- Annual budget process — scenarios accompany every budget
- Board and LP presentations — investors expect to see range of outcomes
- Matt Mathison asks for a stress test on any financial projection

## Scenario Planning Framework

```
Scenario construction method:

  Step 1 — IDENTIFY THE KEY VARIABLES:
    What are the 2-3 variables that have the most impact on the outcome?
    For Allevio: member count (most important), PMPM rate (secondary), COGS margin (tertiary)
    For HIVE: WTI realized price (most important), production rate (secondary), LOE (tertiary)
    For Column6: campaign count × average campaign value (most important), direct cost margin (secondary)
    
    RULES FOR CHOOSING KEY VARIABLES:
    Not everything is a key variable — choose variables that are (1) uncertain AND (2) high-impact
    A variable that's uncertain but has low financial impact is not worth scenario-modeling
    A variable that's certain (contractual, regulatory) is not a scenario variable — it's a fact
    
  Step 2 — DEFINE THE SCENARIO ASSUMPTIONS:
    Base case: Most likely outcome — current trajectory with no major surprises
      Use the current rolling forecast as the starting point
      Apply no heroic assumptions and no catastrophic assumptions
    Bear case: Realistic downside — not worst-case catastrophe, but a genuine business challenge
      The Bear case should be survivable (the business stays solvent and operational)
      Example: Allevio Bear = member adds flat (no new groups); HIVE Bear = WTI $50/bbl
      The Bear case is what we're protecting against with our capital allocation decisions
    Bull case: Achievable upside — what happens with strong execution and favorable conditions
      The Bull case should be achievable (not fantasy)
      Example: Allevio Bull = +250 net member adds; HIVE Bull = WTI $80/bbl + new well
      The Bull case informs opportunity sizing and guides where to invest
      
  Step 3 — BUILD THE FINANCIAL OUTPUT FOR EACH SCENARIO:
    Use the financial model (fpa-financial-model-builder) as the base
    Toggle each scenario assumption and record the EBITDA, cash, and key ratio output
    Key outputs to capture for each scenario:
      Revenue
      EBITDA
      EBITDA margin
      Cash balance (ending period)
      LOC headroom (current facility limit − outstanding balance)
      Covenant compliance (will DSCR or leverage covenant be at risk?)
    
  Step 4 — CALCULATE THE DECISION IMPACT:
    For a specific decision (e.g., hire 2 additional FTEs):
      Add decision cost to each scenario
      Show EBITDA and cash impact in each scenario after the decision
      Answer: In the Bear case, can the business afford this decision?
    
  Step 5 — IDENTIFY TRIGGER POINTS:
    At what point does the scenario change from bearable to a crisis?
    Allevio: If we lose more than [N] members, the LOC is required
    HIVE: If WTI drops below $48/bbl, the stress protocol activates (discretionary CapEx pause)
    Column6: If campaigns fall below $[X]K/quarter, G&A needs to be reduced
    Trigger points tell management WHEN to act, not just how bad things could get
    
  Step 6 — PRESENT THE DECISION FRAMEWORK:
    For any major decision: recommend based on Bear case outcome
    If the Bear case still produces positive EBITDA and cash > minimum reserve: proceed
    If the Bear case produces a cash crisis: do not proceed without a contingency plan
    If the Base case is strongly positive but the Bear case is borderline: proceed with triggers
      Document the trigger that would cause a course correction
```

## Output Format

```markdown
# Scenario Analysis — [Entity / Decision Topic]
**Decision or planning horizon:** [Description] | **Horizon:** [Period]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Scenario Assumptions

| Variable | Bear Case | Base Case | Bull Case |
|----------|-----------|-----------|-----------|
| [Key variable 1] | [Assumption] | [Assumption] | [Assumption] |
| [Key variable 2] | [Assumption] | [Assumption] | [Assumption] |
| [Key variable 3] | [Assumption] | [Assumption] | [Assumption] |

---

## Financial Outcomes by Scenario

| Metric | Bear | Base | Bull |
|--------|------|------|------|
| Revenue | $[X]K | $[X]K | $[X]K |
| EBITDA | $[X]K | $[X]K | $[X]K |
| EBITDA Margin | [X]% | [X]% | [X]% |
| Ending Cash | $[X]K | $[X]K | $[X]K |
| LOC Headroom | $[X]K | $[X]K | $[X]K |
| Covenant risk | ⚠️/✅ | ✅ | ✅ |

---

## Decision Impact (if applicable): [Decision Name]

| Impact | Bear | Base | Bull |
|--------|------|------|------|
| Decision cost | ($[X]K) | ($[X]K) | ($[X]K) |
| EBITDA post-decision | $[X]K | $[X]K | $[X]K |
| Cash post-decision | $[X]K | $[X]K | $[X]K |
| Recommendation | ⚠️ Proceed with trigger / ✅ Proceed / ❌ Do not proceed |

---

## Trigger Points

| Trigger | Threshold | Action Required |
|---------|-----------|----------------|
| [WTI price] | <$48/bbl | Activate HIVE stress protocol — pause discretionary CapEx |
| [Allevio members] | <[N] | Alert CEO + Matt Mathison — review hiring plan |
| [Cash balance] | <$[X]K | LOC draw authorization — CEO + Dr. Lewis |
| [DSCR] | <1.25× | Proactive bank disclosure — Dr. Lewis + Matt Mathison |

---

## Recommendation

**Decision:** [Proceed / Do not proceed / Conditional proceed with trigger]
**Basis:** [Bear case outcome — X; acceptable/unacceptable because Y]
**If conditional:** [Specific trigger that changes the recommendation]
**Matt Mathison review:** [Required / FYI / Already briefed]
```

## Output Contract
- Scenarios are inputs to decisions, not predictions — a scenario analysis that concludes "therefore our most likely outcome is X" has confused scenarios with forecasts; scenarios answer the question "if Y happens, what is the financial impact?" not "what will happen?"; Dr. Lewis is explicit with the CEO and Matt Mathison that the Bear case is not a prediction of what will happen — it is a model of what the business looks like if the downside materializes; this distinction prevents people from dismissing the Bear case as "too pessimistic" and ignoring the risk
- The Bear case must be survivable — if the Bear case produces business failure (cash runs out, covenant is violated with no cure, payroll cannot be funded), the Bear case is not a planning input — it's a warning that the current business model has insufficient resilience; when the Bear case produces a genuine survival risk, Dr. Lewis does not bury this in a footnote; he leads with it: "The Bear case for this decision produces a cash deficit of $45K in Q3 — this requires either an LOC draw or a hire pause; before approving the decision, we need to decide which lever to pull if the Bear case materializes"; Matt Mathison gets this framing before the decision is made, not after
- Trigger points are the operational output — the scenarios are interesting, but the trigger points are what management actually uses in day-to-day decision-making; after the scenario analysis, Dr. Lewis works with the CEO to define the specific observable metrics and thresholds that would trigger a course correction; "WTI below $48/bbl = pause all discretionary CapEx" is a trigger point; "HIVE revenue underperforms" is not; trigger points are built into the monitoring cadence so management acts before a crisis rather than reacting to one
- HITL required: Dr. Lewis builds scenarios; CEO reviews; Matt Mathison reviews for all major capital decisions (CapEx >$25K, new hires above plan, acquisition evaluation); scenario outputs shared with Matt Mathison in the format above, not as a raw model dump; any decision where the Bear case shows a covenant risk requires Matt Mathison approval before proceeding

## System Dependencies
- **Reads from:** Financial model (fpa-financial-model-builder); rolling forecast (fpa-rolling-forecast-updater); HIVE: WTI forward curve (market data) and Covercy production data; Allevio: member roster and pipeline; Column6: sales pipeline (CRM); bank covenant terms (credit agreement); current cash position (QuickBooks)
- **Writes to:** Scenario model (SharePoint/Finance/<Company>/Scenarios/[Topic]_[Date].xlsx); decision memos (for major capital decisions); board package risk section; Matt Mathison decision brief; annual budget (scenarios accompany the budget as an appendix); trigger point register
- **HITL Required:** Dr. Lewis builds; CEO reviews; Matt Mathison reviews for major capital decisions; Board reviews scenarios in quarterly board package; no major capital decision made without a scenario analysis reviewed by Dr. Lewis and Matt Mathison

## Test Cases
1. **Golden path:** Allevio hiring scenario — CEO proposes hiring a 4th clinician at $85K salary (fully-loaded $110K) → Dr. Lewis builds the scenario: key variable = Allevio member count (hiring is only justified if member count supports it); Bear case: member count stays flat at 1,150; Base case: +150 members over 12 months; Bull case: +300 members over 12 months; at Bear (flat members), EBITDA with new hire = $640K ($110K cost, no offsetting revenue); at Base, EBITDA = $780K; at Bull, EBITDA = $940K; Dr. Lewis presents trigger framework: "At Bear (flat members), the hire reduces EBITDA by $110K without offsetting revenue — we'd be carrying excess capacity. Recommend: approve the hire only if Allevio has [N] signed employer groups in the pipeline with expected starts within 90 days. Trigger to reverse: if after 90 days we have not added [N] members, revisit the hire." CEO agrees to the conditional approach; Matt Mathison notified as FYI (below $25K threshold but above plan)
2. **Edge case:** Three simultaneous scenario variables all move to Bear at the same time → "Triple Bear" scenario: WTI drops to $50, Allevio loses its largest group, Column6 campaign volume drops 30%; Dr. Lewis builds the combined scenario: combined EBITDA = −$140K for the year (a loss); cash deficit by Q3 = $65K; Dr. Lewis presents to Matt Mathison: "Triple Bear produces a loss of $140K. This is a tail risk — all three portfolio companies simultaneously underperforming. Cash deficit of $65K is covered by the LOC ($200K facility). The LOC draw triggers covenant reporting. Recommend: (1) ensure LOC is clean and available (currently $0 drawn); (2) set up monthly monitoring of all three trigger metrics; (3) no distributions until Triple Bear risk is clearly passed." Matt Mathison agrees; trigger metrics set up in the monthly reporting dashboard
3. **Adversarial:** Matt Mathison says "just show me the base case — we don't need to worry about scenarios for this one" → Dr. Lewis responds: "Happy to lead with the Base case. I'll include the Bear case as a single row in the summary table so you have the context without the full narrative. The reason I include it: [specific reason — e.g., 'the decision commits us to $45K of fixed costs; the Bear case shows whether we can carry that if the campaign revenue doesn't come through']. If you want to cut the Bear case entirely from the board materials I can do that and keep it internal." Dr. Lewis never suppresses the Bear case analysis from his own internal work; he may adjust what goes in the board package at Matt Mathison's direction, but the internal analysis always includes the Bear case

## Audit Log
All scenario analyses retained by topic and date. Decision outcomes tracked against scenarios (did the Bear/Base/Bull materialize?). Trigger activations logged. Matt Mathison review records retained. Board presentation scenario slides retained. Annual review of scenario modeling accuracy.

## Deprecation
Retire when each portfolio company has a CFO or FP&A director who builds scenarios for major decisions — with Dr. Lewis reviewing the scenarios before board presentation and Matt Mathison approving all major capital decisions based on scenario outcomes.
