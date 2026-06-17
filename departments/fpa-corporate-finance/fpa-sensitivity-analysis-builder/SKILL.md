---
name: fpa-sensitivity-analysis-builder
description: "Build sensitivity tables and what-if analyses for financial models. Use when the user says 'sensitivity analysis', 'sensitivity table', 'what-if analysis', 'what if', 'data table', 'tornado chart', 'sensitivity model', 'which variables matter most', 'what moves the needle', 'test the assumptions', 'assumption sensitivity', 'how sensitive is EBITDA to', 'sensitivity to WTI', 'sensitivity to member count', 'sensitivity to CPM', 'financial sensitivity', 'variable sensitivity', 'assumption stress test', 'one-way table', 'two-way table', 'sensitivity grid', or 'model sensitivity'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--variable <name>] [--output <ebitda|cash|irr|moic>] [--range <min:max:step>] [--action <build|present>]"
---

# Sensitivity Analysis Builder

Build sensitivity tables and what-if analyses for MBL portfolio company financial models — quantifying how key outputs (EBITDA, cash, IRR, MOIC) change as input assumptions vary. Sensitivity analysis is the interrogation of a financial model: instead of presenting a single forecast number, it shows the range of outcomes across a range of assumptions, revealing which variables have the most influence on the result. Dr. Lewis uses sensitivity analysis to stress-test every major financial model and to answer Matt Mathison's "what happens if..." questions with precise quantified answers.

## When to Use
- After building any financial model — run sensitivity on the key assumptions before presenting
- Annual budget — sensitivity table accompanies the budget (required per fpa-annual-budget-builder)
- Matt Mathison asks "what happens if WTI drops to $50?" — this is a sensitivity question
- Board presentation — show the range of EBITDA outcomes, not just a single point estimate
- Exit modeling — how sensitive is the exit IRR to the exit multiple assumption?
- Before any major capital decision — show how the investment return varies with key assumptions

## Sensitivity Analysis Framework

```
Types of sensitivity analysis:

  ONE-WAY SENSITIVITY:
    Vary one input across a range; show the output at each level
    Use when: A single variable dominates the outcome (WTI price for HIVE; member count for Allevio)
    Format: Table with input values in rows/columns; output values in cells
    Example: HIVE EBITDA at WTI prices from $45/bbl to $80/bbl in $5 increments
    
  TWO-WAY SENSITIVITY:
    Vary two inputs simultaneously; show the output at each combination
    Use when: Two variables interact to produce the outcome (WTI price AND production volume)
    Format: Grid with Variable 1 as columns and Variable 2 as rows; output in each cell
    Example: HIVE EBITDA with WTI price ($50-$80) × BOE/day production (800-1,200)
    
  TORNADO CHART (RANKING):
    Vary each key input across its Bear/Bull range; rank by EBITDA impact
    Shows which variables have the most influence on the outcome
    Use when: Multiple variables; want to prioritize which risks/opportunities matter most
    The "tornado" shape comes from ranking by bar length (biggest impact at top)
    
  BREAK-EVEN ANALYSIS:
    What value of a key variable produces exactly $0 EBITDA (or meets a specific target)?
    Example: At what WTI price does HIVE EBITDA = $0? (the breakeven price)
    Example: How many members does Allevio need to achieve $500K EBITDA?
    Use when: Defining a specific threshold (stress protocol trigger, EBITDA target)
    
Key variables for each entity:

  ALLEVIO:
    Primary variable: Member count (total enrolled members)
    Secondary variable: PMPM rate (average per member per month)
    Tertiary variable: COGS margin (clinical staff cost as % of revenue)
    One-way table: EBITDA at member counts from 800 to 1,800 (steps of 100)
    Two-way table: EBITDA at member count × PMPM rate ($80-$95)
    Break-even: Minimum members needed to achieve EBITDA >$0; >$500K; >target
    
  HIVE PARTNERS:
    Primary variable: WTI realized price (most sensitive)
    Secondary variable: Average daily production (BOE/day)
    Tertiary variable: LOE per BOE
    One-way table: EBITDA at WTI from $45 to $85 (steps of $5)
    Two-way table: EBITDA at WTI × BOE/day production (800 to 1,200, steps of 100)
    Break-even: WTI price at which HIVE EBITDA = $0; = minimum reserve; = stress protocol trigger
    Key highlight: The $48/bbl WTI stress protocol trigger — always mark this on the sensitivity table
    
  COLUMN6:
    Primary variable: Total campaigns (volume)
    Secondary variable: Average campaign value
    Tertiary variable: Contribution margin % (media buy cost efficiency)
    One-way table: EBITDA at campaign counts from 20 to 80 (steps of 10)
    Two-way table: EBITDA at campaign count × average campaign value ($30K-$80K)
    Break-even: Minimum campaigns needed to cover fixed costs (G&A)
    
Sensitivity table construction rules:
  Center the base case in the table (not at an edge)
  Range should extend to realistic extremes (Bear to Bull)
  Highlight cells using conditional formatting where possible:
    Green: EBITDA >$X (target met); Yellow: EBITDA >$0 but below target; Red: EBITDA <$0
  Mark any regulatory trigger, covenant trigger, or stress protocol trigger explicitly
  Label units clearly: $K or $M; not ambiguous
  
For exit/IRR sensitivity:
  Two-way table: Exit EBITDA × Exit multiple → shows MOIC or IRR at each combination
  One-way table: Exit year × Exit multiple → shows how hold period affects returns
  Break-even: What exit multiple is needed to achieve the target IRR?
```

## Output Format

```markdown
# Sensitivity Analysis — [Entity] | [Model Name]
**Output metric:** [EBITDA / Cash / IRR / MOIC] | **Base case:** $[X]K / [X]%
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## One-Way Sensitivity: [Variable] vs. [Output]

| [Variable] | [Output] | vs. Base | Status |
|-----------|---------|---------|--------|
| $[X] (Bear) | $[X]K | −$[X]K | 🔴 Below target |
| $[X] | $[X]K | −$[X]K | 🟡 |
| **$[X] (Base)** | **$[X]K** | **—** | **✅ Target** |
| $[X] | $[X]K | +$[X]K | ✅ |
| $[X] (Bull) | $[X]K | +$[X]K | ✅ |

**Break-even [Variable]:** $[X] (the level at which [Output] = $[threshold])
**Stress trigger:** $[X] [Variable] → [Action required]

---

## Two-Way Sensitivity: [Variable 1] × [Variable 2] → [Output in $K]

|  | [V1=$X] | [V1=$X] | **[V1=$X Base]** | [V1=$X] | [V1=$X] |
|--|---------|---------|-----------------|---------|---------|
| **[V2=Base]** | $[X]K | $[X]K | **$[X]K** | $[X]K | $[X]K |
| [V2=+10%] | $[X]K | $[X]K | $[X]K | $[X]K | $[X]K |
| [V2=+20%] | $[X]K | $[X]K | $[X]K | $[X]K | $[X]K |

*Color guide: 🔴 <$0 | 🟡 $0-$[target] | ✅ >$[target]*

---

## Tornado Chart (EBITDA Impact by Variable)

| Variable | Bear Case | Bull Case | EBITDA Range | Rank |
|----------|-----------|-----------|-------------|------|
| [WTI price: $50-$80] | −$[X]K | +$[X]K | **$[X]K range** | #1 |
| [BOE/day: 800-1,200] | −$[X]K | +$[X]K | **$[X]K range** | #2 |
| [LOE per BOE: $18-$28] | −$[X]K | +$[X]K | **$[X]K range** | #3 |

*The tornado chart shows which assumptions to monitor most closely — the longer the bar, the more EBITDA is at risk if the assumption is wrong.*

---

## Matt Mathison Summary

**Most sensitive variable:** [WTI price — $1/bbl = $[X]K EBITDA at current production]
**Bear case EBITDA ($[X] [Variable]):** $[X]K — [acceptable / concern / crisis]
**Stress trigger:** [WTI $48/bbl or below → activate stress protocol]
**Key takeaway:** [One sentence on what the sensitivity table implies for the decision]
```

## Output Contract
- Every model has a sensitivity table before it is presented — sensitivity analysis is not optional; presenting a financial model with a single output number and no sensitivity is presenting a false precision; Dr. Lewis does not present financial models to Matt Mathison or the board without at least a one-way sensitivity table on the primary variable; the sensitivity table answers the implicit question every experienced investor has: "that's the base case — what if you're wrong?"; the sensitivity table is the answer to that question before it has to be asked
- The base case is centered in the table — a sensitivity table that shows only downside scenarios (or only upside) is not a sensitivity table — it's advocacy; the base case sits in the middle of the range; the range extends to realistic Bear (not catastrophic) and realistic Bull (not fantasy); a reader who looks at the table should be able to see both the floor and ceiling of outcomes
- The tornado chart reveals what to monitor — the tornado chart is the most actionable output of a sensitivity analysis because it ranks the variables by their EBITDA impact; once the tornado is built, Dr. Lewis knows which two or three variables to track most closely in the monthly financial review; for HIVE, it's WTI and BOE/day; for Allevio, it's member count and PMPM rate; for Column6, it's campaign volume and average campaign value; these become the "vital signs" of each portfolio company — the metrics that, if they move, will have the largest effect on EBITDA
- HITL required: Dr. Lewis builds sensitivity tables; CEO reviews to validate the variable ranges (the CEO knows if a 1,200-member scenario is realistic for Allevio); Matt Mathison reviews the sensitivity analysis as part of the board package and any major capital decision; the stress protocol triggers embedded in the sensitivity tables (WTI $48/bbl) are enforced operationally by the CEO and Dr. Lewis; Matt Mathison is notified when any trigger is crossed

## System Dependencies
- **Reads from:** Financial model (fpa-financial-model-builder — the sensitivity table tests the model's assumptions); rolling forecast (fpa-rolling-forecast-updater — base case is the current forecast); HIVE: WTI forward curve and production data; Allevio: member roster and PMPM contract data; Column6: pipeline and campaign data; stress protocol documentation (for trigger identification); scenario analysis (fpa-scenario-planner — complementary tool; scenarios are specific combinations; sensitivity tables test the full range)
- **Writes to:** Sensitivity tables (embedded in the financial model and board package); annual budget (sensitivity table is a required appendix per fpa-annual-budget-builder); Matt Mathison decision briefs (summarizing the key sensitivity finding); board quarterly package (EBITDA sensitivity section); trigger monitoring dashboards (the vital signs identified by the tornado chart)
- **HITL Required:** Dr. Lewis builds; CEO validates variable ranges; Matt Mathison reviews in board package and for major capital decisions; stress trigger responses authorized by CEO + Dr. Lewis; Matt Mathison notified when any trigger threshold is crossed

## Test Cases
1. **Golden path:** HIVE annual budget sensitivity table → One-way: WTI from $45 to $80 (step $5); Base: $67/bbl WTI, EBITDA $380K; at $50/bbl: EBITDA −$85K (loss); at $48/bbl: trigger = stress protocol; at $55/bbl: EBITDA $118K; at $60/bbl: EBITDA $245K; at $75/bbl: EBITDA $510K; two-way: WTI × BOE/day (800/900/1000/1100 BOE/day); base is $67 × 1,000 BOE; break-even WTI at 1,000 BOE/day = $48.50/bbl; mark the $48/bbl stress protocol trigger clearly; tornado: WTI ($45-$80) = $565K EBITDA range (Rank 1); BOE/day (800-1,200) = $190K range (Rank 2); LOE ($15-$28) = $145K range (Rank 3); Matt Mathison summary: "WTI price is the dominant risk — $1/bbl move = $25K EBITDA. Current WTI $64/bbl is $16 above the stress protocol trigger. If WTI falls to $55, EBITDA is $118K (still positive). Stress protocol activates at $48/bbl. Current monitoring: weekly WTI check."
2. **Edge case:** Allevio board asks "what would it take to reach $1M EBITDA?" → Dr. Lewis runs a break-even analysis: current EBITDA $820K; need $180K more; at $85 PMPM, $180K additional EBITDA requires $180K ÷ (1 − 0.65 variable cost ratio) = $514K additional revenue = 504 member-months at current PMPM = ~42 additional members for the full year; if member adds happen in January (42 × $85 × 12 months = $42,840) — needs to start the year at full run rate; if member adds happen July 1 (42 × $85 × 6 months = $21,420) — won't reach $1M this year; Dr. Lewis presents: "To reach $1M EBITDA in the current year, Allevio needs 42 net new members by January 1. Based on the current pipeline, we're projecting +35 net adds by year-end — slightly below the $1M threshold. The $1M milestone is achievable in Year N+1 with current trajectory." This converts the "reach $1M" goal into an operational target (35 vs. 42 members)
3. **Adversarial:** The CEO presents a sensitivity table in the board deck that only shows revenue upside scenarios (no downside) → Dr. Lewis intercepts before the board meeting: "The sensitivity table shows revenue scenarios from $1.2M to $1.8M — all above current revenue of $1.18M. I need to add the downside: $1.0M and $0.8M scenarios, which show EBITDA of $380K and $130K respectively. The board will ask about the downside even if we don't show it, and having it in the table demonstrates that management has thought through the risks. It also shows the business is resilient — even at $800K revenue, we're still profitable. I recommend adding the full range (Bear: $800K → Bull: $1.8M)." CEO agrees; full sensitivity table included; the downside scenario actually strengthens the presentation by showing the EBITDA floor

## Audit Log
All sensitivity analyses retained by model and date. Base case assumptions documented at time of analysis. Stress protocol trigger documentation retained. Tornado chart rankings retained (for monitoring priority setting). Board presentation sensitivity slides retained. Post-period comparison: did any variable cross the stress trigger? (retained in the operational log)

## Deprecation
Retire when each portfolio company has a CFO or FP&A analyst who builds sensitivity tables as standard model output — with Dr. Lewis reviewing the ranges and triggers before board presentation and Matt Mathison reviewing the trigger definitions annually.
