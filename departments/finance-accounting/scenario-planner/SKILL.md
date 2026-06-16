---
name: scenario-planner
description: "Build financial scenarios for planning decisions. Use when the user says 'scenario analysis', 'scenario planning', 'what if analysis', 'financial scenarios', 'base bear bull', 'model the scenarios', 'downside case', 'upside case', 'stress test the financials', 'sensitivity analysis', 'model different scenarios', or 'what happens if'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--decision <hire|expand|acquisition|pricing|investment>] [--scenarios 3]"
---

# Scenario Planner

Build financial scenarios to support high-stakes business decisions — modeling base, bear, and bull cases across key financial variables to tell management what the business looks like under different conditions. Scenario planning is not about predicting the future; it's about understanding the range of outcomes so decisions are made with clear visibility into upside, downside, and the assumptions that drive each.

## When to Use
- A significant business decision is being made (major hire, market expansion, pricing change, acquisition)
- Matt Mathison asks "what does this look like if [scenario X] plays out?"
- The annual budget contains assumptions that management believes could swing materially
- A portfolio company is evaluating a significant capital allocation decision
- A board member asks "what's our downside?" or "what's the upside if we hit plan?"

## Scenario Design Framework

```
Three-scenario standard:

Base Case: Most likely outcome given current trajectory and reasonable assumptions.
  → This is what management is committing to manage toward.
  → Probability: 50-60%

Bear Case: Downside scenario — what happens if key assumptions fail?
  → Used for: cash planning, covenant analysis, stress-testing the business.
  → Should be uncomfortable but plausible — not catastrophic but not optimistic.
  → Probability: 20-30%

Bull Case: Upside scenario — what happens if key assumptions outperform?
  → Used for: capacity planning, investment sizing, bonus potential.
  → Should require something to go right that isn't currently in the plan.
  → Probability: 10-20%

Key principle: Scenarios must be internally consistent.
A bear case with lower revenue AND lower expenses is not a bear case —
if revenue falls, costs rarely fall proportionally. Model the linkages.
```

## Output Format

```markdown
# Scenario Analysis — <Company Name>
**Decision / Question:** [What decision is this analysis supporting?]
**Date:** <Date> | **Prepared by:** Dr. John Lewis
**Planning horizon:** [12 months / 24 months / through [Event/Date]]

---

## Scenario Summary

| | Bear Case | Base Case | Bull Case |
|---|---|---|---|
| **Probability** | [20-30%] | [50-60%] | [10-20%] |
| **Key assumption** | [What's different from base] | [What management is planning] | [What has to go right] |
| **Revenue** | **$[X]** | **$[X]** | **$[X]** |
| **EBITDA** | **$[X] ([X%])** | **$[X] ([X%])** | **$[X] ([X%])** |
| **Year-end Cash** | **$[X]** | **$[X]** | **$[X]** |
| **Net Income** | $[X] | $[X] | $[X] |
| **Break-even question** | [Can the business survive?] | [On plan] | [What does management do with the upside?] |

---

## Scenario Assumptions

| Assumption | Bear Case | Base Case | Bull Case | Source |
|-----------|----------|----------|----------|--------|
| [Volume — e.g., practices / clients] | [N] | [N] | [N] | [Pipeline / historical / CEO estimate] |
| [Price / rate] | $[X] | $[X] | $[X] | [Contract terms / market rate] |
| [New business additions per quarter] | [N] | [N] | [N] | [Pipeline certainty] |
| [Churn / attrition] | [X%] | [X%] | [X%] | |
| [Key cost — e.g., LOE, headcount] | $[X] | $[X] | $[X] | |
| [Market factor — e.g., oil price, interest rate] | $[X]/unit | $[X]/unit | $[X]/unit | [Futures / analyst consensus] |

---

## Detailed P&L by Scenario

| Line | Bear | Base | Bull |
|------|------|------|------|
| Revenue | $[X] | $[X] | $[X] |
| COGS | ($[X]) | ($[X]) | ($[X]) |
| **Gross Profit** | **$[X]** | **$[X]** | **$[X]** |
| **Gross Margin %** | **[X%]** | **[X%]** | **[X%]** |
| Salaries & Benefits | ($[X]) | ($[X]) | ($[X]) |
| [Other key OpEx lines] | | | |
| **Total OpEx** | **($[X])** | **($[X])** | **($[X])** |
| **EBITDA** | **$[X]** | **$[X]** | **$[X]** |
| **EBITDA Margin %** | **[X%]** | **[X%]** | **[X%]** |
| **Net Income** | **$[X]** | **$[X]** | **$[X]** |

---

## Cash Implications

| | Bear | Base | Bull |
|---|---|---|---|
| Operating cash flow | $[X] | $[X] | $[X] |
| CapEx | ($[X]) | ($[X]) | ($[X]) |
| Debt service | ($[X]) | ($[X]) | ($[X]) |
| **Ending cash** | **$[X]** | **$[X]** | **$[X]** |
| vs. Reserve ($[X]) | 🔴/🟡/🟢 | 🟢 | 🟢 |
| **Months of runway** | **[N] months** | **[N] months** | **[N] months** |

---

## Sensitivity Analysis (What Drives the Most Risk?)

*How much does EBITDA change for a 1-unit change in each key driver?*

| Driver | Unit change | EBITDA impact | Rank |
|--------|------------|--------------|------|
| [Volume — practices/clients] | +/− 1 unit | +/− $[X]/year | #[N] |
| [Price — per unit] | +/− $1 | +/− $[X]/year | #[N] |
| [Key cost driver] | +/− $1K | +/− $[X]/year | #[N] |
| [Market driver — e.g., oil price] | +/− $1/BBL | +/− $[X]/year | #[N] |

**Most sensitive lever:** [The driver where a small change has the largest impact — management should monitor this most closely]

---

## Decision Framework

**The question this analysis is answering:** [Specific decision]

| Scenario | Decision implication |
|---------|-------------------|
| Bear case | [Should we still proceed? What changes?] |
| Base case | [Expected outcome if decision is made] |
| Bull case | [Best case if decision is made] |

**Recommendation:** [Should the decision proceed? Under what conditions? With what guardrails?]
**Go / No-go criteria:** [What leading indicators will tell management early whether we're in base, bear, or bull case?]

---

## Matt Mathison Summary

Scenario analysis for [decision] — [Entity]: Base case EBITDA $[X], year-end cash $[X]. Bear case (probability [X%]): EBITDA $[X], cash $[X] — [above / below] reserve. Most important risk: [1 sentence]. Most important upside: [1 sentence]. **Recommendation: [Proceed / Proceed with conditions / Do not proceed]. Decision needed by [date].**
```

## Output Contract
- All three scenarios must have different assumptions, not just different numbers — "bear case = 10% below base" is not a scenario; scenarios must identify which specific assumptions change and why; if the bear case assumption doesn't have a plausible narrative (what would have to happen for this to occur?), it's not useful
- Bear case must be survivable (or explicitly flagged if it's not) — the purpose of the bear case is to ensure management has a plan for the downside; if the bear case results in the business running out of cash, that is critical information that must be front-and-center; it is not a reason to avoid the analysis
- Sensitivity table always included — every scenario analysis should identify which assumption is the most powerful; this tells management where to focus their monitoring attention; the top sensitivity driver should be the KPI most closely tracked
- Decision framework always included — a scenario analysis without a decision recommendation is an academic exercise; every scenario analysis must answer "given these scenarios, what should management do?"
- HITL required: Dr. Lewis builds scenarios and recommendation; CEO or relevant department head validates assumptions; Matt Mathison reviews before any major decision is made using the analysis; any scenario-supported decision involving capital allocation >$25K requires Matt Mathison explicit approval

## System Dependencies
- **Reads from:** Annual budget, rolling forecast, QuickBooks (actuals), pipeline data, operational metrics, market data (oil prices, interest rates where relevant)
- **Writes to:** Scenario analysis model (SharePoint/Finance/Scenarios/); decision support document; Matt Mathison brief
- **HITL Required:** Dr. Lewis builds; CEO validates assumptions; Matt Mathison approves major decisions; capital decisions >$25K require Matt Mathison approval

## Test Cases
1. **Golden path:** HIVE Partners — scenario analysis for Q3 workover program (cost: $180K, expected production increase 28 BBL/day, 3-month payback at current prices) → Base (WTI $70, post-workover 168 BBL/day): annual net operating income +$94K, payback 23 months on investment basis; Bear (WTI $58, workover produces only 15 BBL/day increase): annual NOI +$38K, payback >54 months; Bull (WTI $78, workover produces 35 BBL/day increase): annual NOI +$118K, payback 18 months; Sensitivity: $1/BBL oil price movement = $61K/year NOI impact (ranked #1); Recommendation: Proceed with the workover — even in the bear case, the investment has a positive NPV at a 5-year horizon; however, hedge 70% of production through Q1 2027 to floor the downside; Matt Mathison approved workover and hedging strategy
2. **Edge case:** The CEO wants a scenario analysis but only wants to see the bull case — "I don't want to depress the team" → the bear case is not negotiable; it is the most important scenario for financial planning because it identifies when the business might run out of cash or require external capital; respond: "The bear case is the scenario we plan around financially. We don't have to share it with the full team — it's a management planning tool. But I need to present all three scenarios to you and Matt Mathison before a decision of this size." Decline to prepare a scenario analysis without the bear case
3. **Adversarial:** After scenario analysis shows the bear case results in the business missing cash reserve, the CEO asks to adjust the bear case assumptions to "more realistic" levels (i.e., making it less pessimistic until the analysis shows acceptable results) → do not adjust bear case assumptions because the decision-maker is uncomfortable with them; the bear case must reflect a plausible adverse outcome, not a sanitized version designed to justify a predetermined decision; document the original bear case and note: "CEO requested adjusted bear case assumptions. Original analysis is retained in SharePoint. Revised assumptions are noted here: [list changes]. The original assumptions represent [describe the scenario they represent]."

## Audit Log
All scenario analyses retained by entity, date, and decision. Original and CEO-adjusted versions retained when applicable. Decision outcomes tracked vs. scenario (what actually happened). Matt Mathison reviews and decisions documented. Sensitivity assumptions retained for each analysis.

## Deprecation
Retire when portfolio companies have dedicated FP&A capabilities with financial modeling software (e.g., Quantrix, Mosaic, Runway.com) that enables scenario modeling without Dr. Lewis's direct involvement.
