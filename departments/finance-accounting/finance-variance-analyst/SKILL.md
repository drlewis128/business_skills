---
name: finance-variance-analyst
description: "Analyze and explain budget vs. actual financial variances for MBL Partners portfolio entities. Use when the user says 'variance analysis', 'budget variance', 'variance report', 'why is revenue off', 'why are expenses over', 'why are we over budget', 'why are we under budget', 'variance explanation', 'variance investigation', 'what caused the variance', 'explain the variance', 'revenue variance', 'expense variance', 'cost variance', 'favorable variance', 'unfavorable variance', 'budget vs. actual', 'budget vs actual', 'actuals vs budget', 'plan vs actual', 'actual vs plan', 'budget deviation', 'spending variance', 'P&L variance', 'financial variance', 'explain the miss', 'explain the overrun', 'reforecast trigger', 'why did we miss the plan', 'financial investigation', 'expense overrun', or 'revenue shortfall'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--period <monthly|quarterly>] [--line-item <revenue|cogs|opex|ebitda|specific>] [--threshold <5|10|15>]"
---

# Finance Variance Analyst

Analyze and explain budget vs. actual financial variances for MBL Partners portfolio entities — identifying where P&L performance deviated from plan, diagnosing root cause (volume vs. price vs. mix vs. timing), determining whether the variance is structural or one-time, and recommending whether a reforecast is triggered. Variance analysis is how an organization learns from its financial performance rather than just reporting it.

## When to Use
- Monthly financial close: any line item >10% from plan
- Quarterly P&L review: full variance analysis by line
- Investigating a significant revenue shortfall or cost overrun
- Determining whether to trigger a reforecast

## Variance Analysis Framework

```
VARIANCE TYPES:

  REVENUE VARIANCE:
    Price variance: fewer clients paying than expected (volume), OR clients paying less (price)
    Volume variance: fewer units (employers/IOs/BOE) than planned
    Mix variance: different entity types than planned (e.g., more small employers vs. large)
    Timing variance: revenue recognized in different period (IO signed but not yet delivered)
    
    Diagnosis: compare actual enrolled employers × actual PMPM vs. budget enrolled × budget PMPM
    
  COST VARIANCE:
    Price variance: costs higher or lower per unit than budgeted
    Volume variance: more or fewer units than expected (clinical visits; media impressions)
    Efficiency variance: same volume; different cost (better or worse supplier pricing)
    Unplanned variance: expense that wasn't in the budget at all
    
  VARIANCE THRESHOLD FOR ACTION:
    >5% favorable OR unfavorable: note in monthly P&L
    >10%: entity CEO explains within 48 hours; explanation logged
    >15%: Dr. Lewis investigation; reforecast consideration
    >25%: Dr. Lewis + Matt Mathison notified; reforecast triggered
    
VARIANCE DIAGNOSIS PROCESS:
  Step 1: identify which line item is off and by how much ($) and how much (%)
  Step 2: determine direction (favorable = actual better than plan; unfavorable = worse)
  Step 3: categorize: volume / price / mix / timing / unplanned
  Step 4: entity CEO provides operational context ("we closed 2 fewer employers than planned")
  Step 5: determine: one-time vs. structural? (one-time: no action needed; structural: reforecast)
  Step 6: recommendation: adjust forecast? adjust plan? change strategy?
  
REFORECAST TRIGGER CRITERIA:
  Revenue variance >15% for 2 consecutive months → reforecast (finance-reforecast-manager)
  Expense overrun >20% for 2 consecutive months → reforecast
  New material fact that invalidates the plan (significant client loss; key hire; market change)
  Matt Mathison or entity CEO requests reforecast
  
ENTITY-SPECIFIC VARIANCE CONSIDERATIONS:
  ALLEVIO:
    Revenue variance: check enrolled employers vs. plan; check PMPM vs. plan
    Cost variance: clinical delivery cost is variable (utilization-driven) — a favorable cost variance 
      may indicate low utilization (good short-term; potentially concerning for client value)
    HIPAA: variance analysis uses aggregate employer enrollment — no individual member utilization
    
  COLUMN6:
    Revenue variance: often timing-driven (IO delivery delay vs. IO signing)
    Distinguish: "IO signed but not recognized" (timing) vs. "IO not signed" (volume problem)
    Cost variance: media cost can spike if premium inventory was needed
    
  HIVE:
    Revenue variance: decompose into WTI price variance + production volume variance
    WTI price variance: ($actual WTI - $planned WTI) × BOE produced
    Volume variance: ($planned WTI) × (actual BOE - planned BOE)
    LOE variance: field cost control issue vs. unplanned workover vs. well problem
```

## Output Format

```markdown
# Variance Analysis — [Entity] — [Period]
**Prepared by:** Dr. Lewis | **Lines with >10% variance only unless specified**

---

## Variance Summary

| Line Item | Budget | Actual | Variance $ | Variance % | Type | One-time? | Status |
|----------|--------|--------|-----------|-----------|------|-----------|--------|
| Revenue | $X | $X | -$X | -X% | Volume | No (structural) | ⚠️ |
| Clinical COGS | $X | $X | +$X | +X% | Price | Yes (unusual case) | ✅ |
| Sales & Mktg | $X | $X | -$X | -X% | Timing | Yes (event postponed) | ✅ |

---

## Root Cause Analysis

**Revenue shortfall ($X / -X%):**
[2-3 sentences: what happened; why; whether structural or one-time]

**Reforecast triggered?** [Yes — see finance-reforecast-manager / No — one-time variance]

---

## Recommended Actions
1. [Action — owner — timeline]
```

## Output Contract
- The most important question in variance analysis is "one-time or structural?" — a $12K revenue shortfall because one employer's January enrollment was delayed by 2 weeks is a timing variance; it reverses in February; no action needed; a $12K revenue shortfall because 2 employers churned unexpectedly is structural; the ARR is gone; the plan is now wrong; a reforecast is triggered; entity CEO and Dr. Lewis need to understand why the churn happened and whether more is coming; Dr. Lewis makes this determination within 48 hours of receiving the variance data, not at the end of the quarter
- Volume and price variance are very different root causes requiring different responses — if Allevio is $8K short on revenue because 3 fewer employers enrolled than planned, that's a volume problem (pipeline, marketing, or sales process); if Allevio is $8K short because PMPM is $4 lower than planned (perhaps because they competed on price to close a deal), that's a price problem (pricing discipline, discount authority, value articulation); mixing these two up leads to the wrong intervention — fixing the sales process when the real problem is pricing leaves the price problem unaddressed; Dr. Lewis explicitly separates volume and price in every revenue variance analysis
- HITL required: variance >10% → entity CEO 48-hour explanation; variance >15% → Dr. Lewis investigation; variance >25% → Dr. Lewis + Matt Mathison notification; reforecast triggered → entity CEO + Dr. Lewis + Matt Mathison (if >20% revenue reforecast); HIVE production variance → Dr. Lewis + entity CEO (operational issue?); structural expense variance → entity CEO approves cost reduction plan; Allevio variance analysis → aggregate only; HIPAA compliant

## System Dependencies
- **Reads from:** QuickBooks (budget vs. actual by line item); finance-entity-pl-reporter (monthly P&L actuals); annual budget (plan data); entity CEO operational context (volume, pricing, timing explanations); Covercy (HIVE production actuals for price/volume decomposition)
- **Writes to:** Variance analysis reports (SharePoint → [Entity] → Finance → Variance → [YYYY-MM]); reforecast triggers (finance-reforecast-manager); entity CEO variance explanation records; Dr. Lewis financial investigation log; Matt Mathison escalation records (>25% variance)
- **HITL Required:** >10% → entity CEO; >15% → Dr. Lewis; >25% → Dr. Lewis + Matt Mathison; reforecast → entity CEO + Dr. Lewis + Matt Mathison; structural expense → entity CEO cost plan; Allevio HIPAA aggregate; HIVE production → Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** Allevio June 2026 variance analysis. Revenue: $94K actual vs. $90K plan (+$4K / +4.4% favorable ✅). Root cause: 2 new employers signed 2 weeks earlier than planned (timing favorable). One-time: partially — the 2 employers are now in the run rate permanently (structural favorable). COGS: $54K actual vs. $52K plan (+$2K / +3.8% unfavorable). Root cause: 1 employer with higher-than-average utilization in first month (new enrollment surge — typical and one-time). Sales & Marketing: $22K actual vs. $24K plan (-$2K / -8.3% favorable). Root cause: event postponed to Q4 (timing — will reverse). No reforecast triggered. No escalations. All variances explained and logged.
2. **Edge case:** HIVE shows -$18K revenue variance in October (WTI was $59.50/bbl vs. $67/bbl plan). Dr. Lewis decomposes: price variance = ($59.50 - $67) × 4,200 BOE = -$31,500 (price impact); volume variance = ($67) × (4,200 - 4,350 BOE) = -$10,050 (volume impact). Total = -$41,550... but actual variance is only -$18K → check: royalty income was +$23K favorable this month. Net: -$18K total variance. WTI is at $59.50/bbl — above $58 trigger but narrowing. Note in portfolio dashboard: "HIVE WTI realized $59.50/bbl this month — $1.50 above $58 acquisition pause trigger. If WTI stays below $62/bbl next month, we begin formal trigger monitoring. Matt Mathison notified."
3. **Adversarial:** Entity CEO provides a variance explanation that Dr. Lewis believes is inaccurate ("the revenue shortfall was because of a competitor campaign") when GoHighLevel shows 3 deals lost to budget constraints → Dr. Lewis: "I hear the competitor narrative, and I want to check: I pulled the closed-lost records for the 3 deals that didn't close this month, and all 3 have 'budget constraint' as the primary loss reason in GoHighLevel. That's a different root cause than a competitor campaign. A competitor campaign loss means our positioning or product needs to improve. A budget constraint loss means either (a) we're targeting employers who can't afford us, (b) we're not building the ROI case effectively enough, or (c) the timing is wrong and we should nurture these leads rather than disqualify them. Which of these resonates with what you saw in the actual conversations? I want to log the right root cause so we fix the right problem."

## Audit Log
Monthly variance analysis reports. Entity CEO explanation records (>10% variances). Dr. Lewis investigation logs (>15% variances). Matt Mathison notification records (>25% variances). Reforecast trigger records. HIVE WTI price/volume decomposition records. Structural vs. one-time determinations. Allevio aggregate confirmation records.

## Deprecation
Threshold percentages reviewed annually or when entity scale changes. HIVE decomposition methodology reviewed when production model changes. Reforecast trigger criteria reviewed when budget process matures. Entity-specific considerations reviewed when business model changes. Reporting cadence reviewed when monthly close process matures.
