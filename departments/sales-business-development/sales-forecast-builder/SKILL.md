---
name: sales-forecast-builder
description: "Build and maintain sales forecasts for MBL portfolio companies. Use when the user says 'sales forecast', 'revenue forecast', 'forecast', 'build a forecast', 'sales projection', 'revenue projection', 'what will we close', 'forecasting', 'commit forecast', 'best case forecast', 'worst case forecast', 'forecast accuracy', 'forecast methodology', 'weekly forecast', 'monthly forecast', 'quarterly forecast', 'annual forecast', 'forward revenue', 'deal probability', 'revenue visibility', or 'close rate model'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly|annual>] [--scenario <commit|upside|downside>] [--action <build|update|review>]"
---

# Sales Forecast Builder

Build and maintain sales revenue forecasts for MBL portfolio companies — producing commit, upside, and downside scenarios that connect the sales pipeline to the financial model. A forecast that is consistently optimistic trains the CEO to discount it; a forecast that is consistently pessimistic trains management to ignore it. Dr. Lewis builds forecasts that are calibrated, documented, and useful — translating pipeline activity into actionable revenue visibility.

## When to Use
- Monthly forecast update (for the fpa-cash-flow-model input)
- Quarterly forecast for Matt Mathison's portfolio review
- Annual revenue planning
- When the CEO asks "what are we going to close this quarter?"
- After a significant pipeline change (large deal won or lost)

## Sales Forecast Framework

```
FORECAST METHODOLOGY:

  Three-scenario model (standard for all portfolio company forecasting):
  
    COMMIT (high confidence — 85%+):
      Deals that are highly likely to close in the period
      Criteria: Contract sent / final negotiation; next action is counterparty's signature
      Probability weight: 85-95%
      Allevio: Group with signed LOI; attorney review complete; contract counter-marked
      Column6: IO in legal review; campaign creative approved; flight date confirmed
      
    UPSIDE (medium confidence — 50-80%):
      Deals that could close in the period with favorable execution
      Criteria: Proposal submitted; champion is engaged; decision expected in window
      Probability weight: 40-60%
      Allevio: Group in proposal stage; benefits administrator engaged; no competing bids known
      Column6: RFP submitted; strong relationship with agency buyer; typical timeline aligns to period
      
    DOWNSIDE (conservative base — what happens if nothing new closes beyond commit):
      Only the commit deals, with a haircut for slippage
      Typically: Commit total × 80% (accounts for deals that slip to the next period)
      Use for: Cash flow stress testing; downside planning
      
  FORMULA:
    Commit forecast = Σ (Commit deals × 90% close probability) + Σ (Prior period carryover × 70%)
    Upside forecast = Commit forecast + Σ (Upside deals × 50% close probability)
    Downside forecast = Commit forecast × 80% (slippage haircut)

FORECAST INPUTS (pull from CRM):
  For each deal:
    Opportunity name; account name; deal value (ACV); current stage; close date (rep's estimate);
    probability override (rep's input); last activity date; next action + date; blockers (if any)

CALIBRATION — HOW TO MAKE FORECASTS ACCURATE OVER TIME:
  Track every forecast vs. actual at month-end
  Key metrics:
    Forecast accuracy: Actual ÷ Commit forecast (target: 90-110%; consistent overs/unders = bias)
    Slippage rate: Deals committed in period X that closed in period X+1 or later
      If slippage rate >25%: Reps are forecasting close dates too optimistically; adjust methodology
    Surprise deals: Deals not in the forecast that closed unexpectedly (upside)
      If surprise rate >15%: Reps are sandbagging; pipeline is undercounting real opportunities
  Review calibration quarterly and adjust weights

REVENUE RECOGNITION vs. BOOKINGS:
  Bookings: When the contract is signed (or IO is signed)
    Allevio: Bookings = ACV of new employer group contract (PMPM × member count × 12)
    Column6: Bookings = IO value (total campaign spend committed)
  Revenue: When earned (per GAAP/ASC 606)
    Allevio: Revenue recognized monthly (ratable; PMPM as services are delivered)
    Column6: Revenue recognized as impressions are delivered (weekly/monthly settlement)
    HIVE: Revenue = royalty received from production (60-day lag from production month)
  IMPORTANT: Forecast bookings AND revenue; they are different metrics
    CEO cares about bookings (commercial success)
    CFO/Dr. Lewis cares about revenue timing (cash flow impact)
    
ENTITY-SPECIFIC FORECAST NOTES:
  ALLEVIO:
    Seasonal pattern: Employer group open enrollment (November-January) drives the signing cycle
      → Most new contracts signed Q4 (November-December); implement January 1
    Implementation lag: 30-60 days from contract to first PMPM payment
    Revenue ramp: New groups take 2-3 months to reach steady-state membership
    Renewal forecast: Must separately track renewal pipeline (existing contracts expiring)
      Renewal win rate >90% target; below 85% is a retention alert
      
  COLUMN6:
    Seasonal pattern: TV upfront season (April-May) drives annual commitments
      Scatter market (quarterly/monthly buys) is the remainder of the pipeline
    Campaign duration: Average 4-8 weeks; repeat rate (same agency) is the best leading indicator
    IO vs. programmatic: IO deals are booked and forecasted; programmatic revenue is modeled as a rate
    
  HIVE:
    Revenue is production-based (not sales-based)
    Sales forecast = mineral lease acquisition forecast (timing of new lease signatures)
    Revenue forecast = well production model (fpa-hive-production-model — separate from sales forecast)
```

## Output Format

```markdown
# Sales Forecast — [Entity] | [Period]
**Prepared by:** Dr. Lewis | **Date:** [Date]
**Quota:** $[X]K | **Commit forecast:** $[X]K | **Upside forecast:** $[X]K | **Downside:** $[X]K

---

## Commit Deals (85%+ close probability)

| Deal | Stage | ACV | Close date | Probability | Commit |
|------|-------|-----|-----------|------------|--------|
| [Employer Group A] | Contract Sent | $[X]K | [Date] | 90% | $[X]K |
| [Employer Group B] | Negotiation | $[X]K | [Date] | 85% | $[X]K |
| **Commit total** | | **$[X]K** | | | **$[X]K** |

---

## Upside Deals (50-80% close probability)

| Deal | Stage | ACV | Close date | Probability | Upside contrib. |
|------|-------|-----|-----------|------------|----------------|
| [Group C] | Proposal | $[X]K | [Date] | 55% | $[X]K |
| **Upside total** | | **$[X]K** | | | **$[X]K** |

---

## Forecast Summary

| Scenario | Amount | vs. Quota | Confidence |
|---------|--------|----------|-----------|
| Commit | $[X]K | [X]% of quota | High |
| Upside | $[X]K | [X]% of quota | Medium |
| Downside | $[X]K | [X]% of quota | Conservative |

---

## Prior Period Forecast Accuracy

**Last period commit:** $[X]K | **Actual:** $[X]K | **Accuracy:** [X]%
**Slippage from prior period:** $[X]K ([N] deals)
```

## Output Contract
- Commit means commit — a deal in the commit forecast must have a clear path to signature within the forecast period; a rep who consistently puts deals in commit that close two periods later is producing forecasts that are systematically overoptimistic; Dr. Lewis enforces commit criteria: commit deals must have a signed contract en route or a specific, imminent decision event; if the rep says "I think they'll sign soon," that is an upside deal, not a commit
- Bookings and revenue timing are different financial questions — a $120K annual contract signed December 15 generates $10K of December revenue and $110K of revenue in the following year; the CEO is celebrating a $120K booking; the cash flow model needs to know it's $10K this month; Dr. Lewis separates the bookings forecast (commercial success measure) from the revenue timing forecast (financial planning input) and feeds the correct number to the appropriate model
- Forecast accuracy is the metric that matters most — a forecast that is consistently 20% high is not useful; the CEO either discounts it (losing the benefit of forecasting) or makes resourcing decisions based on revenue that doesn't arrive; Dr. Lewis tracks forecast accuracy at every period close and recalibrates the methodology when consistent bias is detected; if commit is consistently 115% of actual, the commit criteria are too loose; if commit is consistently 80% of actual, the slippage haircut needs to increase
- HITL required: Sales reps provide deal-level inputs (stage; close date; probability override); CEO reviews and approves the commit/upside/downside totals before the forecast is finalized; Dr. Lewis presents the forecast and flags any discrepancy between the rep's probability and the stage-based probability; Matt Mathison receives the quarterly sales forecast as part of the portfolio performance report; Dr. Lewis does not override rep probability estimates without discussing with the CEO

## System Dependencies
- **Reads from:** CRM (deal stage; value; close date; last activity date; rep's probability — GoHighLevel or entity CRM); sales-pipeline-manager (pipeline health and coverage ratio); quota targets (fpa-annual-budget-builder); prior period forecast vs. actual history (for calibration); seasonal patterns (entity-specific — Allevio open enrollment; Column6 upfront season)
- **Writes to:** Monthly sales forecast (SharePoint/Sales/<Company>/Forecasts/[YYYY-MM]_Forecast.xlsx); fpa-cash-flow-model input (bookings timing → revenue timing → cash flow); Matt Mathison quarterly portfolio revenue forecast; forecast accuracy tracker (historical record — forecast vs. actual every month); annual revenue plan contribution (fpa-annual-budget-builder)
- **HITL Required:** Sales reps provide deal inputs; CEO validates and approves the forecast totals; Dr. Lewis produces and presents; Matt Mathison receives quarterly; Dr. Lewis does not finalize the quarterly forecast without CEO sign-off on the commit list; Dr. Lewis does not include a deal in commit without confirming with the responsible sales rep or CEO that the close criteria are met

## Test Cases
1. **Golden path:** Allevio Q4 2027 forecast → Dr. Lewis pulls the pipeline: 8 active deals; 2 in Contract Sent ($95K + $72K = $167K — commit at 90%); 3 in Proposal ($48K + $65K + $38K = $151K — upside at 50%); 1 in Discovery ($85K — upside at 25%); Quota: $200K; Commit: $167K × 90% = $150K; Upside: $75K (50% of $151K); Downside: $150K × 80% = $120K; Commit/quota: 75% — below target; CEO flags that a 5th deal (Group F — $120K; early negotiation) is likely to accelerate due to a broker relationship; Dr. Lewis adds as a second-tier upside deal (35% probability; $42K upside contribution); Total upside now $117K; Upside scenario $267K (133% of quota); Forecast delivered to CEO; CEO approves; Matt Mathison receives the Q4 Allevio forecast in the portfolio performance packet
2. **Edge case:** Column6's forecast shows 3 IO deals totaling $450K in commit for Q3 — but Dr. Lewis reviews the activity logs and sees that none of the 3 agencies have had an email or call in >10 days → Dr. Lewis flags: "Three deals totaling $450K are in commit status but show no CRM activity in 10+ days. Commit deals should have active, current engagement. Before I include these in the commit forecast, I need: (1) confirmation from the sales team that each agency is still on track; (2) last conversation summary — what did they say and when is the decision? If these are real commits, activity logging should reflect it. If they've gone quiet, they need to move to upside until re-engaged." CEO calls each agency; 2 confirm on track (re-logged in CRM); 1 has delayed (budget moved to Q4 — moved to upside); commit revised to $300K; more accurate forecast
3. **Adversarial:** Allevio's CEO wants to present a $500K Q3 sales forecast to Matt Mathison for a board update, but the pipeline only supports $280K in upside → Dr. Lewis: "I can't support a $500K forecast from the current pipeline. The total pipeline value is $610K, but most deals are in early stages with low close probability. Commit forecast: $150K. Upside with optimistic assumptions: $280K. To justify a $500K forecast, we would need to: (1) add $220K of new deals that are currently not in the pipeline, or (2) significantly accelerate the probability assumptions on deals in Proposal stage. I'll help you build the narrative around what would have to be true for $500K to happen — but I won't put $500K in the forecast without the pipeline to support it. Matt Mathison has seen enough portfolios to know when a forecast isn't grounded." CEO agrees; $280K upside is presented with a clear description of the path to $500K for the quarter

## Audit Log
All monthly and quarterly forecasts retained by entity and period. Forecast accuracy records retained (forecast vs. actual every period). CEO approval records retained. Matt Mathison quarterly forecast submissions retained. Forecast methodology documentation retained and updated when calibration changes.

## Deprecation
Retire when each portfolio company has a VP of Sales who owns the forecast — with Dr. Lewis reviewing the forecast methodology and Matt Mathison receiving the quarterly portfolio revenue performance summary.
