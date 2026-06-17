---
name: fpa-long-range-planner
description: "Build 3-5 year long-range financial plans for portfolio companies. Use when the user says 'long-range plan', 'LRP', '3-year plan', '5-year plan', '3 to 5 year plan', 'long-term plan', 'strategic financial plan', 'multi-year plan', 'multi-year forecast', '5-year model', '3-year model', 'long-term financial projection', 'where will we be in 5 years', 'plan for the next 5 years', 'long-term outlook', 'long-range financial model', 'strategic plan financials', 'long horizon forecast', 'exit horizon model', or '5-year financial projection'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--years <3|5>] [--purpose <exit|lp|strategy|investor>] [--action <build|update|present>]"
---

# Long-Range Planner

Build 3-5 year long-range financial plans for MBL portfolio companies — projecting where each business will be at exit, what value it will have created, and whether the investment thesis is on track. The long-range plan bridges between the annual budget (one-year precision) and the exit model (terminal value): it shows the growth trajectory, margin expansion path, and working capital requirements over the full investment horizon. Matt Mathison uses the long-range plan to make hold/exit decisions, set LP expectations, and prioritize capital allocation across the portfolio.

## When to Use
- Exit planning — the long-range plan is the core of the exit valuation narrative
- LP annual meeting — show the multi-year trajectory and investment thesis validation
- Annual strategic planning — update the long-range plan alongside the annual budget
- A portfolio company has underperformed the original underwriting — rebuild the long-range plan with revised assumptions
- A major strategic decision (add-on acquisition, market expansion) — model the multi-year impact

## Long-Range Plan Framework

```
Long-range plan structure (5 years standard; 3 years if exit is within 3 years):

  REVENUE MODEL (build from business drivers, not percentages):
  
    ALLEVIO — Member growth model:
      Starting point: Current member count and PMPM rate by employer group
      Year 1: Member add assumptions (conservative, based on identified pipeline)
      Year 2-5: Member growth rate assumptions (5-15% annual growth depending on market capacity)
      PMPM rate: Annual rate increases (CPI-linked + negotiation improvement; 2-5%/year)
      Churn: 5-10% annual member churn built in (groups that don't renew)
      Revenue = (Beginning members × months × PMPM) + (New member adds × avg months × PMPM) − Churn
      Exit member count: At end of Year 5 (or exit year)
      
    HIVE PARTNERS — Production/WTI model:
      Starting point: Current BOE/day production rate
      Production decline: Natural decline curve ~10-12%/year for existing wells
      New well additions: Only model new wells if they are funded and planned
      WTI price assumption: Use long-term forward curve (typically $65-70/bbl for planning)
      LOE trend: Assume slight improvement through operational optimization
      Revenue = Production (BOE) × (WTI − Differential) − LOE − Production taxes
      
    COLUMN6 — Campaign/Revenue model:
      Starting point: LTM revenue by segment (CTV vs. digital)
      Revenue growth: 15-25%/year if strong execution; 10-15% conservative
      Segment mix: CTV expected to grow as a % of total (higher CPM, better economics)
      Average campaign value: Modest growth as relationships deepen and upsell occurs
      Revenue = Campaigns × Average campaign value, with CTV/digital mix assumption
      
  EBITDA MARGIN EXPANSION MODEL:
    Year 1: Current EBITDA margin (matches the budget)
    Year 2-5: Margin expansion assumptions (operating leverage as revenue grows)
    Drivers of margin expansion:
      G&A leverage: Fixed G&A stays roughly flat as revenue grows (reduces as % of revenue)
      COGS efficiency: Billing fee renegotiation; LOE optimization; media buy cost leverage
      Revenue mix: Higher-margin segments (Allevio: PMPM > fee-for-service; Column6: CTV > digital)
    Validate: Does the margin path match the cost structure analysis (fpa-cost-structure-analyzer)?
    
  WORKING CAPITAL AND CASH FLOW:
    AR growth: Revenue growth × DSO assumption = AR balance growth
    CapEx requirements: Annual planned CapEx (maintenance + growth)
    Debt schedule: LOC paydown or payoff; any refinancing assumptions
    Free cash flow = EBITDA − CapEx − Change in working capital − Debt service
    Cumulative free cash flow: How much cash will the business generate over the hold period?
    
  EXIT SCENARIO:
    Exit year: Year 3, 4, or 5 (model all three as scenarios)
    Exit EBITDA: From the long-range plan
    Exit multiple: Based on comparable company transactions and current market
      Healthcare MSO (Allevio): 7-10× EV/EBITDA (healthcare services premium)
      O&G (HIVE): 4-6× EV/EBITDA (commodity exposure discounts multiple)
      CTV/Media (Column6): 6-9× EV/EBITDA (growth premium vs. legacy media)
    Exit EV = Exit EBITDA × Exit multiple
    Exit equity = Exit EV − Remaining debt
    MOIC and IRR (from fpa-irr-model-builder)
    
  KEY LONG-RANGE PLAN ASSUMPTIONS TO DOCUMENT:
    Revenue growth rate (Year 2-5): [X]%/year — basis for the assumption
    EBITDA margin target at exit: [X]% — what drives the expansion from current [X]%?
    Exit multiple assumed: [X.X]× — comparable transactions; market cycle sensitivity
    Debt paydown: When is the company expected to be debt-free?
    Key risks to the plan: 2-3 specific risks that could prevent achieving the plan
```

## Output Format

```markdown
# Long-Range Plan — [Entity] | [Year Range]
**Investment horizon:** [Entry date] → [Target exit: Year N/YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Matt Mathison reviewed:** ✅

---

## Revenue and EBITDA Summary

| | [Y1] | [Y2] | [Y3] | [Y4] | [Y5] |
|--|------|------|------|------|------|
| Revenue | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |
| Revenue growth | — | [X]% | [X]% | [X]% | [X]% |
| EBITDA | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |
| EBITDA margin | [X]% | [X]% | [X]% | [X]% | [X]% |
| Free cash flow | $[X]M | $[X]M | $[X]M | $[X]M | $[X]M |

---

## Key Assumptions

| Driver | Y1 | Y3 | Y5 | Basis |
|--------|----|----|----|----|
| [Allevio members] | [N] | [N] | [N] | [+100-150/yr based on pipeline capacity] |
| [PMPM rate] | $[X] | $[X] | $[X] | [2-3% annual increase on renewals] |
| [HIVE BOE/day] | [N] | [N] | [N] | [−10%/yr natural decline; no new wells modeled] |
| [Column6 revenue growth] | [X]% | [X]% | [X]% | [Conservative industry growth + mix to CTV] |
| [EBITDA margin] | [X]% | [X]% | [X]% | [G&A leverage; COGS efficiency] |

---

## Exit Value Scenarios (Year 3 and Year 5)

| Scenario | Exit Year | Exit EBITDA | Exit Multiple | Exit EV | Exit Equity | MOIC | IRR |
|---------|-----------|------------|--------------|---------|------------|------|-----|
| Bear | Y3 | $[X]M | [X.X]× | $[X]M | $[X]M | [X.X]× | [X]% |
| Base | Y4 | $[X]M | [X.X]× | $[X]M | $[X]M | [X.X]× | [X]% |
| Bull | Y5 | $[X]M | [X.X]× | $[X]M | $[X]M | [X.X]× | [X]% |

---

## Plan vs. Original Underwriting

| Metric | Original Underwriting | Current LRP (Base) | On Track? |
|--------|----------------------|--------------------|----------|
| Revenue at exit | $[X]M | $[X]M | ✅/⚠️/🔴 |
| EBITDA at exit | $[X]M | $[X]M | ✅/⚠️/🔴 |
| Exit multiple expected | [X.X]× | [X.X]× | ✅/⚠️/🔴 |
| Target IRR | [X]% | [X]% | ✅/⚠️/🔴 |

---

## Key Risks to the Plan

1. **[WTI price below $58/bbl for an extended period]** — Impact: HIVE EBITDA significantly below plan; exit multiple contracts; MOIC at risk. Mitigation: [LOC headroom; stress protocol active]
2. **[Allevio payer mix shift]** — Impact: Lower PMPM rates if employer-direct contracts are replaced by lower-rate payer contracts. Mitigation: [Focus on employer-direct contracts; Marshall Medical payer credentialing maintained]
3. **[CTV market saturation]** — Impact: Column6 CPM compression; margin pressure. Mitigation: [Diversification into sports streaming; direct advertiser relationships]
```

## Output Contract
- The long-range plan is a framework, not a prediction — a 5-year financial plan for a PE portfolio company will not be accurate; the purpose is to provide a structured framework for thinking about the investment trajectory, not to predict the future precisely; Dr. Lewis presents the long-range plan as a "directional plan based on current assumptions" — the specific Year 3 EBITDA number should be understood as a scenario, not a forecast; the most important output is the exit value range (Base case MOIC and IRR) and the key risks that could prevent achieving the plan
- Update annually and when key assumptions change — the long-range plan is not a static document; it is updated in two circumstances: (1) annually during the budget cycle (when the Y1 actuals are locked and the remaining years are re-projected based on actual trajectory), and (2) when a key assumption changes materially (WTI moves significantly, Allevio loses or gains major employer groups, Column6 signs a transformative partnership); Dr. Lewis maintains a "plan vs. original underwriting" comparison in every updated LRP so Matt Mathison can see how the investment is tracking
- Validate against comparable transactions — the exit multiple assumption is the most influential variable in the exit valuation; Dr. Lewis validates the exit multiple assumption against recent comparable company transactions in each sector (healthcare MSO, O&G, CTV/media) at least annually; if comparable transaction multiples have contracted materially (e.g., healthcare MSO multiples compressing from 9× to 7× due to market conditions), the long-range plan multiple is revised accordingly and Matt Mathison is informed; a plan that uses an outdated multiple assumption is not useful for exit planning
- HITL required: Dr. Lewis builds the long-range plan; CEO reviews the entity-level plan assumptions (the CEO knows the business and can validate the growth assumptions); Matt Mathison reviews the full plan including the exit scenario and comparable transaction multiples; any long-range plan that shows a projected IRR below 20% triggers a strategic discussion with Matt Mathison about the hold/exit decision; the long-range plan is reviewed at the annual LP meeting and at every board meeting where an exit is being discussed

## System Dependencies
- **Reads from:** Annual budget (Y1 starting point); fpa-financial-model-builder (base model for LRP); fpa-rolling-forecast-updater (current trajectory vs. Y1 plan); fpa-irr-model-builder (returns model — LRP feeds the exit scenarios); unit economics (fpa-unit-economics-modeler — validates growth assumptions); cost structure (fpa-cost-structure-analyzer — validates margin expansion assumptions); comparable transaction multiples (industry research, investment banking reports); LP report (for comparison against LP-facing disclosures)
- **Writes to:** Long-range plan model (SharePoint/Finance/<Company>/LRP/[CompanyName]_LRP_[Year].xlsx); board quarterly package (LRP summary and exit scenario section); LP annual meeting materials; exit preparation data room; investment thesis validation memo; Matt Mathison portfolio review (updated annually)
- **HITL Required:** Dr. Lewis builds; CEO validates entity-level growth assumptions; Matt Mathison reviews and approves before LP or board use; any revision that reduces projected IRR below 20% triggers an immediate Matt Mathison discussion; exit multiple changes reviewed and approved by Matt Mathison; no LRP distributed to external parties without Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio 5-year LRP for Year 3 exit planning → Entry EBITDA $540K; current (Y1) EBITDA $820K (52% above entry); LRP builds: Y1 $820K; Y2 $980K (+20% with +150 members, +3% PMPM); Y3 $1.18M (+20%, +200 members, EBITDA margin expanding from 30% to 34% as G&A is leveraged); Y4 $1.38M; Y5 $1.56M; exit scenarios: Y3 ($1.18M EBITDA × 8.0× = $9.44M EV − $0.7M debt = $8.74M equity; MOIC 3.6×, IRR 26%); Y4 (MOIC 3.8×, IRR 22%); Y5 (MOIC 4.1×, IRR 18%); Matt Mathison reviews: "Y3 exit at 3.6× MOIC and 26% IRR is excellent — and the IRR advantage of Y3 over Y5 (26% vs. 18%) supports a 2027 exit. Let's start positioning for a Y3 exit process." Dr. Lewis initiates exit preparation planning (fpa-exit-value-model)
2. **Edge case:** HIVE LRP shows IRR below 20% at the current WTI environment → At $58/bbl current WTI: Y3 EBITDA $200K; Y5 EBITDA $180K (production decline without new wells); exit multiple 4.5×; Y3 exit equity: $200K × 4.5 = $900K EV − $400K debt = $500K equity; MOIC 1.0×; IRR negative (below $500K invested); even at WTI recovery to $67/bbl: Y3 EBITDA $310K; exit equity $995K; MOIC 2.0×; IRR 14% (below 20% threshold); Dr. Lewis flags immediately: "HIVE's LRP does not meet the 20% IRR threshold even at WTI recovery to $67. The investment needs either a WTI recovery to $75+ (which the LRP doesn't assume) or a strategic event (sale of the acreage position to a larger O&G operator who can realize synergies). Recommend we initiate a strategic alternatives review for HIVE." Matt Mathison receives this analysis and makes the hold/exit decision
3. **Adversarial:** CEO asks to model an aggressive 35% annual revenue growth rate for Column6 in the LRP to "show what's possible" → Dr. Lewis declines to use 35% in the base plan: "35% is an aspiration — I'd model it as the Bull case. My concern: if we present a LRP to the board or LPs based on 35% growth and the company delivers 15-20% (which is strong for this market), the comparison to a 35% model makes good performance look like underperformance. Let me use 20% as the Base (well above industry average, achievable with strong execution), 30% as the Bull, and 12% as the Bear. I'll note that 20% growth has never been achieved in consecutive years by a CTV player without a major new platform partnership. You can tell the board about the 35% potential verbally — that's your story to tell. The plan numbers should be defensible." Dr. Lewis builds the Base at 20%; CEO takes the Bull scenario to the board presentation as the opportunity

## Audit Log
All long-range plan versions retained (with date and author). Annual updates documented with changes to prior-year LRP. "Plan vs. original underwriting" comparison retained permanently for each investment. Exit multiple assumption sources documented annually. Matt Mathison approval records retained. Any LRP presentations to LPs or board retained permanently.

## Deprecation
Retire when MBL Partners has a dedicated investment professional managing the portfolio strategic planning function — with Dr. Lewis contributing the financial model and Matt Mathison owning the strategic framing and LP communication.
