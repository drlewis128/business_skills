---
name: rolling-forecast-updater
description: "Update or build a rolling financial forecast. Use when the user says 'rolling forecast', 'update the forecast', 'revised forecast', 'current forecast', 'forecast update', 'full year forecast', 'best estimate', 'reforecast', 'update the financial model', 'latest estimate', or 'what are we tracking to this year'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly>] [--horizon <12m|FY|18m>]"
---

# Rolling Forecast Updater

Update the rolling financial forecast — a continuously revised financial projection that replaces the static annual budget as the best-current-estimate of where the business will end up. Unlike the annual budget (which is fixed at the beginning of the year), the rolling forecast incorporates actual results and updated assumptions to give management the most accurate forward view at any point in time. At MBL, the rolling forecast is the primary planning tool between budget cycles.

## When to Use
- Monthly or quarterly — after financial close, update the forecast with actual results
- A material business event (new large contract, customer loss, cost surprise) changes the trajectory
- Matt Mathison asks "where are we tracking for the full year?"
- Pre-board meeting — need a current forecast vs. the original budget
- LP reporting — current forecast is part of the narrative

## Rolling Forecast vs. Budget

```
Annual Budget: Fixed plan agreed at the start of the year.
  → Accountability tool: measures whether the team delivered what they planned
  → Set once; doesn't change (amendments require formal approval)

Rolling Forecast: Best current estimate of where the year will end.
  → Decision tool: tells management where the business is actually going
  → Updated monthly or quarterly; always reflects latest information

Use both in parallel:
  Actual vs. Budget = accountability
  Actual vs. Forecast = accuracy of management's current read
  Budget vs. Forecast = how much reality has deviated from the plan
```

## Output Format

```markdown
# Rolling Forecast — <Company Name>
**As of:** <Date> (updated after [Month] close)
**Forecast horizon:** [FY YYYY / Next 12 months / Through Q[N] YYYY]
**Prepared by:** Dr. John Lewis

---

## Forecast vs. Budget Summary

| | Original Budget | Current Forecast | Variance to Budget | Prior Forecast |
|---|---|---|---|---|
| **Revenue** | **$[X]** | **$[X]** | **$[±X] ([±X%])** | **$[X]** |
| [Segment 1] | $[X] | $[X] | $[±X] | $[X] |
| [Segment 2] | $[X] | $[X] | | |
| **Gross Profit** | **$[X]** | **$[X]** | | |
| **Gross Margin %** | **[X%]** | **[X%]** | **[±Xpp]** | |
| **EBITDA** | **$[X]** | **$[X]** | **$[±X] ([±X%])** | **$[X]** |
| **EBITDA Margin %** | **[X%]** | **[X%]** | | |
| **Net Income** | **$[X]** | **$[X]** | | |
| **Year-end Cash** | **$[X]** | **$[X]** | | |

**Forecast change from prior month:** [What changed and why? Revenue revised up/down due to X. Expenses revised up due to Y.]

---

## Month-by-Month View (YTD Actuals + Remaining Months Forecast)

| Month | Revenue | EBITDA | Cash | Status |
|-------|---------|--------|------|--------|
| Jan | $[X] | $[X] | $[X] | ✅ Actual |
| Feb | $[X] | $[X] | $[X] | ✅ Actual |
| Mar | $[X] | $[X] | $[X] | ✅ Actual |
| Apr | $[X] | $[X] | $[X] | ✅ Actual |
| May | $[X] | $[X] | $[X] | ✅ Actual |
| Jun | $[X] | $[X] | $[X] | ✅ Actual |
| **YTD Total** | **$[X]** | **$[X]** | | |
| Jul | $[X] | $[X] | $[X] | 📊 Forecast |
| Aug | $[X] | $[X] | $[X] | 📊 Forecast |
| Sep | $[X] | $[X] | $[X] | 📊 Forecast |
| Oct | $[X] | $[X] | $[X] | 📊 Forecast |
| Nov | $[X] | $[X] | $[X] | 📊 Forecast |
| Dec | $[X] | $[X] | $[X] | 📊 Forecast |
| **Full Year** | **$[X]** | **$[X]** | **$[X]** | |

---

## What Changed from Prior Forecast

| Item | Prior forecast | Current forecast | Change | Reason |
|------|---------------|-----------------|--------|--------|
| [Revenue line or assumption] | $[X] | $[X] | $[±X] | [Specific reason] |
| [Expense line] | $[X] | $[X] | | |
| [Timing change] | [Q/Month] | [Q/Month] | | |

---

## Key Forecast Assumptions (Remaining Months)

| Assumption | Q[N] | Q[N+1] | Note |
|-----------|-------|--------|------|
| [Volume — e.g., active practices] | [N] | [N] | [How this was derived] |
| [Price / rate] | $[X] | $[X] | [Static / escalating — why?] |
| [New business additions] | [N] | [N] | [Based on pipeline; confirmed / estimated] |
| [Churn / attrition] | [N] | [N] | |
| [Key expense assumption] | $[X]/mo | $[X]/mo | |

**Most important assumption to monitor:** [The single assumption that, if wrong, would most significantly change the forecast — with magnitude]

---

## Forecast Scenarios

| | Base Case | Bear Case | Bull Case |
|---|---|---|---|
| **Assumption** | Current plan | [Key negative scenario] | [Key positive scenario] |
| Revenue | $[X] | $[X] (−[X%]) | $[X] (+[X%]) |
| EBITDA | $[X] | $[X] | $[X] |
| Year-end Cash | $[X] | $[X] | $[X] |
| **Probability** | [X%] | [X%] | [X%] |

---

## Matt Mathison Flag

**Forecast vs. budget:** $[X] [above / below] on revenue; $[X] [above / below] on EBITDA.
**Most significant change since last report:** [1 sentence]
**Decision needed:** [Specific — or "No decision needed — Dr. Lewis monitoring"]
**Confidence in forecast:** 🟢 High (±<5%) / 🟡 Medium (±5-10%) / 🔴 Low (±>10%)
```

## Output Contract
- Actuals always locked; only future months are forecast — do not adjust prior period actuals to match a narrative; the forecast updates the outlook for remaining months only; YTD actuals are the starting point, not a variable
- Change explanation always required — a forecast update without an explanation of what changed and why is the same as having no prior forecast; every material change to the forecast (>$10K or >5%) must be explained in the "What Changed" section
- Scenario analysis always included when forecast deviates materially from budget — when the base case is more than 10% from the original budget, the bear case matters for cash planning; the low end of the forecast tells management whether the business can survive the downside
- Confidence rating always present — a forecast with no confidence level is misleading; management needs to know whether the forecast is tight (high confidence, ±3%) or loose (early-stage planning, ±15%); communicate uncertainty explicitly
- HITL required: Dr. Lewis prepares and distributes; portfolio company CEO or CFO confirms operational assumptions; Matt Mathison reviews before board or LP distribution; forecast revisions that indicate full-year EBITDA will miss budget by >15% require Matt Mathison immediate notification

## System Dependencies
- **Reads from:** QuickBooks (actual results), annual budget model, pipeline data (CRM), operational metrics, prior forecast
- **Writes to:** Rolling forecast model (SharePoint/Finance/Forecasts/<Entity>/); management reporting suite; board package
- **HITL Required:** Dr. Lewis updates; CEO confirms assumptions; Matt Mathison reviews; immediate escalation if >15% budget miss anticipated

## Test Cases
1. **Golden path:** Allevio Q2 2026 forecast update → YTD actuals: $1.87M revenue, $487K EBITDA; new forecast: full-year $3.94M revenue (vs. $3.8M budget — +$140K); EBITDA $612K (vs. $580K budget — +$32K); driver: 2 practices onboarded ahead of schedule in Q1, pulling forward revenue; Q3/Q4 assumption: 4 additional practices (confirmed in pipeline); year-end cash: $387K vs. $350K budget; confidence: high (🟢); change from prior: "Revenue revised up $140K — 2 practices started in April vs. planned May/June; expense unchanged"; bear case ($3.72M revenue): 2 pipeline practices don't close; year-end cash $298K — above $200K minimum reserve; Matt Mathison flag: "Tracking above budget; no action needed; will update after Q3 close"
2. **Edge case:** The forecast update shows full-year cash dropping below the minimum reserve in October → escalate immediately to Matt Mathison: "Current forecast shows cash reaching $[X] in October, below our $[X] minimum reserve. The driver is [CapEx timing / seasonality / delayed AR collections]. Options: (1) Delay CapEx by 60 days (+$[X] cash impact), (2) Accelerate AR collections — $[X] in AR >60 days outstanding, (3) Draw on credit facility if available. Request: Matt Mathison decision by [date] on preferred path." Cash going below reserve is a prioritized escalation; do not wait for the monthly report cycle
3. **Adversarial:** A CEO asks to use the rolling forecast (rather than the board-approved budget) as the "target" for compensation purposes, because the forecast is higher than the budget → the budget is the compensation target; the forecast is a management tool for planning, not an upward-ratchet for comp; respond: "Compensation targets are set against the board-approved budget. If the business consistently outperforms, that's valuable information for next year's budget planning and can inform whether the budget was set too conservatively. Replacing the budget with the forecast for comp purposes would eliminate accountability for the original plan."

## Audit Log
All forecast versions retained by entity, period, and update date. Change explanations documented. Matt Mathison reviews dated. Budget-vs.-forecast gap tracked over time. Bear case cash scenarios retained when below reserve.

## Deprecation
Retire when portfolio companies have dedicated FP&A or CFOs who own rolling forecast updates on a standard cadence with board-quality output without Dr. Lewis's involvement.
