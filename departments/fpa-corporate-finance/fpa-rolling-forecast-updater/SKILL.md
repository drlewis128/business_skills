---
name: fpa-rolling-forecast-updater
description: "Update the monthly rolling forecast — locking actuals and re-projecting future periods. Use when the user says 'rolling forecast', 'update the forecast', 'reforecast', 're-forecast', 'forecast update', 'monthly forecast', 'lock actuals', 'update projections', 'forecast vs actual', 'forecast revision', 'forecast accuracy', 'latest estimate', 'LE', 'current forecast', 'updated outlook', 'forecast the year', 'project the year', 'forecast through year-end', or 'full-year forecast'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--as-of <YYYY-MM>] [--horizon <months>] [--action <update|review|present>]"
---

# Rolling Forecast Updater

Maintain the monthly rolling forecast for MBL portfolio companies — updating actuals from the close, revising future period projections based on current information, and delivering an accurate full-year outlook to the CEO and Matt Mathison. A rolling forecast that is updated monthly is more valuable than an annual budget that becomes stale by February; it gives management an accurate current view of where the year will land so decisions (hiring, CapEx, distributions) can be made on real information, not December assumptions. Dr. Lewis updates the rolling forecast within 3 days of each month-end close.

## When to Use
- Monthly — within 3 business days of each month-end close (standard cadence)
- After a significant business event that changes the trajectory (new large contract, unexpected customer loss)
- Matt Mathison or CEO requests a full-year outlook update
- Before a board meeting — ensure the most current forecast is in the board package

## Rolling Forecast Framework

```
Rolling forecast structure:

  FORMAT: 12-month rolling horizon (or through year-end if shorter)
  FREQUENCY: Monthly update, within 3 business days of close
  LOCKED PERIODS: Actuals from prior months are locked (no changes)
  OPEN PERIODS: Future months are revised based on current intelligence
  
  The forecast has 4 columns for each period:
  (1) Annual Budget (original — never changes)
  (2) Prior Month Forecast (what we said last month)
  (3) Actual (for closed months) or Revised Forecast (for open months)
  (4) Variance to Budget (column 3 − column 1)
  
Monthly update process (within 3 business days of close):

  Step 1 — LOCK ACTUALS:
    Pull the just-closed month's actuals from QuickBooks
    Confirm actuals match the reviewed financial statements (fin-ops-financial-statement-preparer)
    Lock the closed month column — actuals never get revised once locked
    
  Step 2 — REVIEW CURRENT-QUARTER PERFORMANCE:
    How did the closed month compare to the prior forecast?
    Was the variance timing (will it reverse next month?) or structural (permanent change)?
    Timing: A delayed invoice will arrive next month — no forecast change needed
    Structural: Lost a customer → reduce all future months for that customer's contribution
    
  Step 3 — REVISE OPEN PERIODS:
    For each open month:
      Revenue: Is there new information that changes the top-line outlook?
        Allevio: Any new employer group contracts signed? Any member attrition?
        HIVE: Updated production data; WTI price move? Has the WTI assumption changed?
        Column6: Pipeline update from sales team; any campaigns in danger of not closing?
      Expenses: Any changes to the hiring plan? Any unexpected costs?
      One-time items: Any non-recurring items to add or remove from future periods?
    
  Step 4 — ROLL THE HORIZON:
    When a month becomes an actual, add a new forecast month at the end (maintain the rolling window)
    This keeps the forecast horizon constant
    
  Step 5 — CALCULATE FULL-YEAR ESTIMATE:
    Full-year estimate = Sum(actuals YTD) + Sum(revised forecast remaining months)
    Compare full-year estimate to original budget: How much above or below?
    Calculate the gap to budget: What would need to happen to close the gap?
    
  Step 6 — FLAG MATERIAL CHANGES:
    If full-year EBITDA forecast changes by >$20K vs. the prior month's forecast:
      → Prepare a one-paragraph explanation for CEO and Matt Mathison
      → Identify the specific driver of the change (not "revenue is softer")
    If full-year EBITDA is trending below budget by >15%:
      → Escalate to CEO and Matt Mathison with a gap-closure recommendation
    If full-year EBITDA is trending above budget by >20%:
      → Flag to Matt Mathison (positive news but may signal distribution opportunity or reinvestment)
      
  Forecast accuracy tracking:
    Each month, compare the prior month's forecast for the just-closed month to the actual
    Forecast accuracy = 1 − |Actual − Prior Forecast| ÷ Actual
    Target: >90% forecast accuracy at the revenue line for the next-month forecast
    Target: >85% forecast accuracy for the full-year EBITDA forecast
    Chronic overforecasting or underforecasting signals a bias in the assumptions — investigate and correct
```

## Output Format

```markdown
# Rolling Forecast Update — [Entity] As of [Month YYYY]
**Updated:** [Date] | **Prepared by:** Dr. Lewis | **Lock date:** [Close date]
**Forecast horizon:** [Current Month+1] through [Month+12]

---

## Full-Year Outlook

| Metric | Original Budget | Last Month Forecast | Current Forecast | Variance to Budget |
|--------|---------------|--------------------|-----------------|--------------------|
| Revenue | $[X]K | $[X]K | $[X]K | +/−$[X]K ([X]%) |
| Gross Profit | $[X]K | $[X]K | $[X]K | +/−$[X]K |
| EBITDA | $[X]K | $[X]K | $[X]K | +/−$[X]K ([X]%) |
| EBITDA Margin | [X]% | [X]% | [X]% | [X] bps |

---

## Month-by-Month View (Actuals + Forecast)

| Month | Revenue | EBITDA | Type | vs. Budget |
|-------|---------|--------|------|-----------|
| Jan [YY] | $[X]K | $[X]K | ✅ Actual | +$[X]K |
| Feb [YY] | $[X]K | $[X]K | ✅ Actual | −$[X]K |
| [Current] | $[X]K | $[X]K | ✅ Actual | +$[X]K |
| [+1] | $[X]K | $[X]K | 🔮 Forecast | — |
| [+2] | $[X]K | $[X]K | 🔮 Forecast | — |
| ... | | | | |
| **Full Year** | **$[X]K** | **$[X]K** | | **+/−$[X]K** |

---

## Key Changes This Month

| Driver | Prior Forecast | Current Forecast | Change | Explanation |
|--------|---------------|-----------------|--------|-------------|
| Allevio new members | +[N] adds H2 | +[N] adds H2 | −[N] | [Employer Group X deferred to Q1 next year — Dr. Lewis confirmed] |
| HIVE WTI assumption | $[X]/bbl | $[X]/bbl | −$[X] | [WTI has moved from $67 to $64 — updated to forward curve] |
| Column6 Q4 campaigns | [N] | [N] | 0 | [Pipeline holding; no changes] |

---

## Matt Mathison Flag (if full-year EBITDA changes >$20K)

**[Entity] forecast update:** Full-year EBITDA revised from $[X]K to $[X]K (−$[X]K vs. prior forecast). Driver: [one sentence]. Gap-to-budget: $[X]K below. [Gap closure plan / No action required — timing].
```

## Output Contract
- Lock actuals — never revise them — the moment a period is closed with reviewed financials, those actuals are locked; the rolling forecast's integrity depends on the actuals being the ground truth; a forecast that goes back and revises closed-period actuals (to make the variance look better or worse) is not a forecast — it's a narrative tool; Dr. Lewis locks the actuals column when the financial statements are finalized and builds all forward revisions only in the open periods
- Forecast accuracy is tracked and used to improve the model — a forecast that is consistently 30% above actuals is not a forecast; it's wishful thinking in a spreadsheet; Dr. Lewis tracks forecast accuracy monthly (prior-month forecast vs. actual) and uses the pattern to identify systematic biases; if the Column6 revenue forecast consistently overestimates by 15%, Dr. Lewis applies a 15% haircut to the sales pipeline-to-close rate assumption; a well-calibrated forecast has <10% miss rate on the next-month revenue line
- Material changes trigger a narrative, not just an update — when the full-year EBITDA forecast moves by more than $20K vs. the prior month, Dr. Lewis writes a one-paragraph explanation of the specific driver; "revenue softness" or "costs came in higher" are not explanations; "Allevio's projected H2 member additions have been revised down by 35 members because Employer Group X decided to defer their contract start from July to Q1 2027, reducing full-year PMPM revenue by $26K" is an explanation; Matt Mathison reads the explanation, not the model; the model is the backup
- HITL required: Dr. Lewis prepares the rolling forecast update within 3 business days of each close; CEO receives the forecast update monthly; Matt Mathison receives the update when full-year EBITDA changes >$20K vs. the prior forecast or when full-year EBITDA is trending >15% below budget; distribution decisions, hiring decisions, and CapEx decisions based on the forecast require Dr. Lewis and Matt Mathison alignment before action

## System Dependencies
- **Reads from:** QuickBooks actuals (just-closed month); prior month rolling forecast; sales pipeline (CRM — Column6); Allevio member roster (new contracts, attrition); HIVE production data (Covercy); WTI price (market data); headcount plan (any hiring decisions since last update); CapEx plan (any approved CapEx since last update)
- **Writes to:** Rolling forecast model (SharePoint/Finance/<Company>/ForecastModel/); CEO monthly financial package (forecast section); Matt Mathison update (when material change); forecast accuracy tracker; QuickBooks full-year projection (for cash planning); planning calendar (update timestamp)
- **HITL Required:** Dr. Lewis updates; CEO receives monthly; Matt Mathison notified for material changes (>$20K EBITDA revision); any forecast-driven decisions (hiring pause, distribution) require Dr. Lewis + Matt Mathison alignment before action

## Test Cases
1. **Golden path:** June close, HIVE rolling forecast update → Dr. Lewis locks June actuals (HIVE revenue $182K, EBITDA $48K — slightly below budget due to WTI differential widening); updates WTI assumption from $67/bbl to $64/bbl (3-month forward curve moved); revised full-year HIVE EBITDA: $310K (was $340K forecast last month, budget was $380K); gap to budget: −$70K; Dr. Lewis prepares the Matt Mathison flag: "HIVE full-year EBITDA revised to $310K (−$30K vs. prior forecast, −$70K vs. budget). Driver: WTI differential has widened; our realized price is $6/bbl below WTI vs. $4/bbl assumed in budget. No operational changes recommended at this WTI level. Monitoring. Stress protocol triggers at $48/bbl WTI." Matt Mathison receives the flag within 3 days of the close; no action required at $64/bbl; noted
2. **Edge case:** A major new Allevio employer group signs a contract mid-month — how does this affect the forecast? → Dr. Lewis receives the signed contract from the Allevio CEO; confirms: start date August 1; member count 200; PMPM rate $87; adds the new group to all months August through December (200 × $87 × 5 months = $87K additional revenue); adjusts COGS for the additional clinical capacity needed (partial FTE, estimated $18K); net EBITDA impact: +$69K; full-year EBITDA revised from $780K to $849K (+$69K); Dr. Lewis flags Matt Mathison: "POSITIVE UPDATE: Allevio has signed [Employer Group X] — 200 members at $87 PMPM starting August 1. Full-year EBITDA revised from $780K to $849K. This exceeds the budget of $780K by $69K. Recommend holding the additional margin rather than accelerating hiring — we'll review in the September board call." Matt Mathison agrees; forecast updated; CEO notified
3. **Adversarial:** The Column6 sales director says "trust me, we have $800K of campaigns that will close in Q4" → Dr. Lewis applies the historical pipeline-to-close rate for new campaigns: at the Q3 review stage (prospect stage), the close rate is ~40%; Dr. Lewis applies 40% to the $800K = $320K probable revenue for Q4; the other $480K stays as "upside scenario" in the sensitivity table; Dr. Lewis explains to the sales director: "I'm forecasting $320K from the Q4 pipeline based on our historical 40% close rate. If you're seeing stronger conviction on specific deals, share the specific accounts and their stage — I can apply a higher close rate to deals with signed proposals or verbal commitments." Dr. Lewis does not take the sales director's optimistic view at face value; the forecast is conservative by design, with upside in the sensitivity table, not in the base forecast

## Audit Log
All rolling forecast versions retained by month (with timestamps). Actual lock dates recorded. Forecast accuracy data retained (prior forecast vs. actual by month). Material change notifications to Matt Mathison retained. CEO delivery timestamps retained. Full-year EBITDA trend chart maintained (monthly history).

## Deprecation
Retire when each portfolio company has a CFO or FP&A analyst managing the rolling forecast — with Dr. Lewis reviewing the full-year outlook monthly and Matt Mathison receiving the monthly portfolio brief.
