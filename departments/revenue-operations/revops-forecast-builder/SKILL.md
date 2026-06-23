---
name: revops-forecast-builder
description: "Build and manage revenue forecasts for MBL Partners portfolio entities. Use when the user says 'revenue forecast', 'sales forecast', 'forecast', 'revenue projection', 'revenue estimate', 'what will we close', 'how much will we make', 'quarterly forecast', 'monthly forecast', 'annual forecast', 'forecast accuracy', 'forecast vs. actual', 'commit forecast', 'upside forecast', 'pipeline forecast', 'forecasting model', 'forecast call', 'forecast review', 'forecast cadence', 'forecast methodology', 'bottom-up forecast', 'top-down forecast', 'forecast by rep', 'forecast by entity', 'revenue outlook', 'revenue estimate', 'how are we tracking against target', 'are we going to hit our number', or 'what is our revenue outlook'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--period <monthly|quarterly|annual>] [--action <build|update|review|present>]"
---

# RevOps Forecast Builder

Build and maintain revenue forecasts for MBL Partners portfolio entities — producing accurate, methodology-grounded forecasts that give Dr. Lewis and entity CEOs reliable visibility into revenue attainment and enable proactive responses to gaps. Forecasts that are consistently wrong (too optimistic or too pessimistic) erode leadership trust and lead to bad resource decisions.

## When to Use
- Building the monthly or quarterly revenue forecast for an entity
- Updating a forecast mid-period based on pipeline changes
- Presenting the forecast to entity CEO or Dr. Lewis
- Analyzing forecast accuracy over time

## Forecast Framework

```
FORECAST METHODOLOGY:

  THREE-SCENARIO MODEL:
    Commit: deals management is highly confident will close this period (Stage 7 + high-confidence Stage 6)
    Upside: deals that could close with positive developments (Stage 5-6 at entity CEO discretion)
    Downside: risk case — what we close if several deals slip or fall out
    Rule: Commit must be achievable without heroics; Upside is aspirational; Downside is survivable
    
  BOTTOM-UP CONSTRUCTION:
    Step 1: Pull all open deals from GoHighLevel (Stage 5+) with expected close dates in the period
    Step 2: Assign scenario (Commit / Upside) per deal with justification
    Step 3: Add renewal revenue (Allevio: GRR-based; Column6: IO renewal; HIVE: lease renewal)
    Step 4: Add expected expansion revenue from existing accounts (NRR contribution above GRR)
    Step 5: Sum by scenario; compare to target; calculate gap or surplus
    
  ENTITY-SPECIFIC CONSIDERATIONS:
    Allevio:
      Base revenue = existing employer PMPM × enrolled employees (high predictability — renewing contracts)
      New revenue = new employer contracts in Stage 7 (near certain) + Stage 6 (partial credit)
      GRR target ≥91% — base revenue is highly stable; forecast volatility is primarily in new sales
      Renewal risk: any employer in renewal negotiation → flag in forecast
      
    Column6:
      Revenue tied to campaign delivery and IO (insertion order) dates — IO-based, not subscription
      A signed IO is revenue (with make-good risk); unsigned IO is pipeline
      Campaign slippage (IO pushed to next quarter) is the primary forecast variance driver
      Seasonality: Q4 is typically highest (holiday advertising); Q1 lowest
      
    HIVE:
      Revenue = production (BOE/month) × realized WTI price (less royalty deduction)
      Not pipeline-driven — forecast is based on production projections and WTI spot price
      WTI sensitivity: every $5/bbl move in WTI ≈ ±[X]% HIVE revenue impact
      Annual forecast more stable than monthly; monthly variance is normal
      
  FORECAST ACCURACY TRACKING:
    Compare forecast to actual each period; track accuracy by scenario category
    Target: Commit forecast within ±10% of actual; total forecast within ±15%
    Consistently >20% variance → methodology review; entity CEO debrief on what we missed
    
  FORECAST CADENCE:
    Monthly: entity sales lead builds by the 25th for the following month; Dr. Lewis reviews
    Quarterly: Dr. Lewis consolidates entity forecasts for Matt Mathison portfolio summary
    Annual: OKR-tied forecast set in December; updated quarterly
```

## Output Format

```markdown
# Revenue Forecast — [Entity] — [Period]
**Built by:** [Sales Lead / RevOps] | **Reviewed by:** Dr. Lewis | **Date:**

---

## Forecast Summary

| Scenario | Amount | vs. Target | Confidence |
|----------|--------|-----------|-----------|
| Commit | $X | [X]% of target | High |
| Upside | $X | [X]% of target | Medium |
| Downside | $X | [X]% of target | Risk |
| **Target** | $X | 100% | |

---

## Commit Detail (Stage 7 + High-Confidence Stage 6)

| Deal / Account | Type | Amount | Close date | Notes |
|---------------|------|--------|-----------|-------|
| [Employer name / Agency] | New / Renewal | $X | [Date] | |

---

## Upside Detail

| Deal | Amount | Close date | Condition to close |
|------|--------|-----------|-------------------|

---

## Risk Items
[Any deals at risk of slipping; renewal risk; campaign push risk]

---

## Gap to Target
[If Commit < target: gap = $X; actions to close the gap; entity CEO aware?]
```

## Output Contract
- Commit is a commitment, not a hope — a forecast where every Stage 5 deal is in "Commit" because the sales team doesn't want to present a gap is a forecast that management cannot rely on; Dr. Lewis requires Commit to represent only what management is confident will close in the period without requiring extraordinary outcomes; if Commit is consistently below target, the right response is to have a frank conversation about pipeline coverage — not to inflate Commit; a forecast that is consistently accurate (even when it shows gaps) is more valuable than a forecast that consistently over-promises
- Forecast gaps are communicated early, not at period end — if the monthly forecast shows that Commit is $80K against a $150K target, Dr. Lewis communicates this gap to the entity CEO by the 25th of the prior month, not on the last day of the quarter; early visibility enables action (accelerate a Stage 6 deal; pull an Upside deal forward; adjust expectations with Matt Mathison); late visibility enables only post-mortems; the cadence of the forecast process exists precisely to surface gaps while there is still time to act
- HIVE revenue is forecast differently than Allevio and Column6 — HIVE's revenue is not pipeline-driven; it is production-driven; a HIVE "forecast" is primarily a production estimate (BOE/month per well/operator) multiplied by an expected WTI price range; Dr. Lewis uses WTI futures (current month's CME settle price) as the base case and presents a sensitivity table showing HIVE revenue at $55, $60, $65, $70/bbl; this is not a guess — it is a structured sensitivity that allows Matt Mathison to see HIVE revenue implications of WTI moves in real time
- HITL required: monthly forecast → Dr. Lewis reviews before entity CEO presentation; gap to target >15% of revenue → entity CEO aware and action plan required; quarterly portfolio forecast → Dr. Lewis builds and presents to Matt Mathison; annual forecast assumptions → entity CEO + Dr. Lewis agree; HIVE WTI sensitivity → Dr. Lewis validates assumptions with production data; any forecast presented to Matt Mathison or LPs → Matt Mathison reviews

## System Dependencies
- **Reads from:** GoHighLevel (pipeline data; deal stages; expected close dates); revops-pipeline-manager (stage data; coverage ratio); cs-renewal-coordinator (renewal risk; GRR inputs); fin-cash-flow-planner (forecast inputs to cash flow model); fpa-rolling-forecast-updater (forecast feeds into FP&A model)
- **Writes to:** Revenue forecast (SharePoint → [Entity] → Sales → Forecasting → [Period]); entity CEO forecast presentation; Dr. Lewis portfolio forecast summary; Matt Mathison quarterly portfolio forecast; GoHighLevel (expected close date updates triggered by forecast review)
- **HITL Required:** Monthly forecast → Dr. Lewis reviews; gap >15% → entity CEO action plan; quarterly portfolio → Dr. Lewis → Matt Mathison; annual assumptions → entity CEO + Dr. Lewis; HIVE WTI sensitivity → Dr. Lewis validates; LP/board forecast → Matt Mathison reviews

## Test Cases
1. **Golden path:** Allevio Q3 monthly forecast (July). Base revenue (existing employers): $142K (GRR-protected; 12 active employers). New pipeline: Stage 7 employer ($18K — Commit); Stage 6 employer with verbal interest ($24K — Upside); Stage 5 employer ($15K — too early for Commit or Upside). July forecast: Commit = $160K; Upside = $184K; Q3 target = $165K. Gap: Commit is $5K below target; Upside covers. Actions: accelerate Stage 5 employer with demo follow-up this week; if Stage 6 does not move by July 15, close as "push to August" and flag Q3 target at risk. Entity CEO briefed July 25. Forecast updated July 30 (Stage 7 closed; $160K confirmed).
2. **Edge case:** Column6 forecast shows $280K Commit but $100K of that is a single IO with an agency that has historically pushed campaigns → Dr. Lewis: "I'm adjusting the Column6 forecast to reflect concentration risk. A single IO representing 36% of Commit from an agency with a push history is not a high-confidence Commit item — it's an Upside. My adjusted Commit: $180K. I'm flagging this to Column6 CEO with a recommendation to call the agency AMs this week to confirm the campaign timeline. If they confirm, I'll move it back to Commit. If they push, we need $100K of coverage we currently don't have. This conversation needs to happen now, not on July 31."
3. **Adversarial:** Sales rep submits a forecast that includes a deal as "Commit" with a note "the prospect said they'd sign next week" — but the deal has been "signing next week" for 6 weeks → Dr. Lewis: "This deal does not qualify as Commit. A deal that has been 'signing next week' for 6 weeks has a pattern that tells us what we need to know. I'm moving it to Upside with a note: 'requires contract signature by [specific date] to qualify as Commit.' What specific actions have been taken in the last 6 weeks to move this to close? I'd like the entity CEO to make a direct call to the economic buyer this week — not the champion, the economic buyer — to understand the actual decision timeline. Whatever the actual timeline is, that's what goes in the forecast."

## Audit Log
Monthly forecast records retained permanently. Forecast vs. actual tracking (every period). Coverage ratio at time of forecast. Dr. Lewis review records. Entity CEO presentation records. Matt Mathison portfolio forecast records. Forecast methodology change records.

## Deprecation
Forecast scenarios reviewed when entity growth stage changes. HIVE WTI sensitivity assumptions reviewed when production model changes. Methodology reviewed when entity close rates or deal cycle change significantly. Forecast cadence reviewed when entity reporting needs change.
