---
name: sales-pipeline-manager
description: "Manage the sales pipeline and deal tracking for MBL portfolio companies. Use when the user says 'pipeline', 'sales pipeline', 'deal pipeline', 'pipeline review', 'pipeline health', 'deals in the pipeline', 'pipeline status', 'stage the deal', 'move it forward', 'pipeline management', 'pipeline metrics', 'pipeline review meeting', 'where are we in the pipeline', 'CRM pipeline', 'pipeline coverage', 'pipeline velocity', 'funnel', 'sales funnel', 'opportunity management', 'deal tracker', or 'pipeline report'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <review|update|forecast|clean>] [--period <weekly|monthly|quarterly>]"
---

# Sales Pipeline Manager

Manage the sales pipeline and opportunity tracking for MBL portfolio companies — maintaining deal visibility, identifying blockers, and forecasting revenue with discipline. A pipeline that is not actively managed becomes a fiction: deals that have gone cold stay marked as active, stages are skipped, and the forecast becomes unreliable. Dr. Lewis reviews pipeline health monthly for each portfolio company and ensures the CEO is making resourcing and revenue decisions from accurate data.

## When to Use
- Weekly or monthly pipeline review meeting
- Forecast call preparation
- Quarterly revenue planning
- Identifying stalled deals and re-engagement actions
- CRM hygiene and stage discipline enforcement

## Pipeline Management Framework

```
PIPELINE STAGE DEFINITIONS (standard; adapt per entity):

  ALLEVIO (Employer Group Sales):
    Stage 1 — Prospect: Employer group identified; no contact made
    Stage 2 — Qualified Lead: Contact made; confirmed decision-maker engaged; problem confirmed
    Stage 3 — Discovery: Full needs assessment completed; PMPM model presented; budget confirmed
    Stage 4 — Proposal: Formal proposal submitted; pricing at $85/member PMPM (or customized)
    Stage 5 — Negotiation: Terms under discussion; in-house counsel or broker review in progress
    Stage 6 — Contract Sent: Contract (MSA + SOW) sent for signature
    Stage 7 — Closed Won: Contract signed; implementation begins
    Stage 8 — Closed Lost: Opportunity lost; reason documented
    
  HIVE PARTNERS (Mineral Lease / LP Acquisition):
    Stage 1 — Target Identified: Landowner or royalty owner identified; no contact
    Stage 2 — Initial Contact: Letter or call made; landowner responsive
    Stage 3 — Interest Confirmed: Landowner open to discussion; terms exploratory
    Stage 4 — LOI Sent: Letter of intent delivered; timeline to close defined
    Stage 5 — Negotiation: Mineral rights acquisition terms under discussion
    Stage 6 — Signed: Lease executed; development rights secured
    Stage 7 — Closed Lost: Landowner declined or went with another operator
    
  COLUMN6 (CTV / Programmatic Advertising):
    Stage 1 — Prospect: Agency or brand identified; no contact
    Stage 2 — Meeting Set: Meeting or demo scheduled
    Stage 3 — Demo Delivered: Inventory demo; audience targeting demo; pricing presented
    Stage 4 — RFP In: Formal RFP received from agency; Column6 is responding
    Stage 5 — Proposal Submitted: IO (insertion order) or campaign proposal submitted; CPM $18-45
    Stage 6 — Negotiation: Terms (CPM; flight dates; targeting parameters) under discussion
    Stage 7 — IO Signed: Insertion order signed; campaign scheduled
    Stage 8 — Closed Lost: Agency awarded to competitor; reason documented

PIPELINE HEALTH METRICS:

  Coverage ratio: Total pipeline value ÷ Quota target
    Minimum healthy coverage: 3× quota (if at 2× or below → alert; insufficient pipeline)
    
  Weighted pipeline: Each deal weighted by close probability by stage
    Stage 3: 25% probability weight
    Stage 4: 50% probability weight
    Stage 5: 75% probability weight
    Stage 6+: 90%+ probability weight
    
  Pipeline velocity: Average days in each stage
    If deals are stalling in a specific stage → identify the blocker pattern
    
  Win rate: Closed Won ÷ (Closed Won + Closed Lost) by lead source
    Target: >30% win rate on qualified opportunities (adjust by entity/market)
    
  Average deal size: Revenue per closed deal
    Allevio: $25K-$150K annual revenue per employer group (PMPM × member count)
    Column6: $25K-$500K per IO (varies by agency and campaign size)
    
PIPELINE REVIEW AGENDA (weekly):
  □ New deals added this week (source; stage; estimated value; next action + owner + date)
  □ Deals advancing (stage change; what happened?)
  □ Deals at risk (no activity in >14 days; stage unchanged >30 days)
  □ Deals closed this week (won or lost; reason)
  □ Next 30-day forecast (what is likely to close; confidence level)
  
STALE DEAL PROTOCOL:
  Definition: No logged CRM activity in >14 days
  Action: Sales rep provides an update within 24 hours of the flag
  If no path forward: Move to Closed Lost with a reason code (don't leave stale deals in the pipeline)
  Reason codes: Lost to competitor; budget frozen; decision delayed; no budget; champion left; no longer a fit
```

## Output Format

```markdown
# Pipeline Review — [Entity] | [Date]
**Prepared by:** [Sales Lead / Dr. Lewis] | **Period:** [Week/Month/Quarter]
**Total pipeline value:** $[X]K | **Weighted pipeline:** $[X]K | **Coverage ratio:** [X]×

---

## Pipeline by Stage

| Stage | # Deals | Value | Avg Days in Stage | 30-Day Close? |
|-------|---------|-------|------------------|--------------|
| Qualified Lead | [N] | $[X]K | [X] days | — |
| Discovery | [N] | $[X]K | [X] days | — |
| Proposal | [N] | $[X]K | [X] days | [N] deals |
| Negotiation | [N] | $[X]K | [X] days | [N] deals |
| Contract Sent | [N] | $[X]K | [X] days | [N] deals |
| **Total active** | **[N]** | **$[X]K** | | |

---

## At-Risk Deals (>14 days no activity)

| Deal | Stage | Days stale | Owner | Next action |
|------|-------|-----------|-------|------------|
| [Employer Group A] | Proposal | 18 days | [Rep] | Call decision-maker this week |

---

## 30-Day Forecast

| Deal | Stage | Expected value | Close probability | Est. close date |
|------|-------|--------------|-----------------|----------------|
| [Employer Group B] | Contract Sent | $[X]K | 90% | [Date] |

**30-day forecast total:** $[X]K | **Confidence:** High / Medium / Low

---

## Action Items

| Action | Owner | Due |
|--------|-------|-----|
| Follow up on [Deal A] — proposal went silent | [Rep] | [Date] |
| Move [Deal B] to Closed Lost — no budget this year | [Rep] | This week |
```

## Output Contract
- Pipeline accuracy requires honest stage assignment — a deal in "Negotiation" where the prospect hasn't returned a call in 3 weeks is not in Negotiation; it is stalled or lost; Dr. Lewis enforces stage discipline: a deal moves to the next stage only when the specific criteria for that stage are met, not when the rep is optimistic; the forecasting value of a pipeline depends entirely on the discipline of stage assignment; a pipeline with artificially inflated stages produces forecasts that are systematically optimistic and resourcing decisions that are wrong
- Coverage ratio is the leading indicator — a coverage ratio of 3× means the pipeline has three times the quota in qualified opportunities; this is the minimum to expect quota attainment given normal close rates and slippage; a coverage ratio below 2× is a crisis signal: the company will not hit its revenue target unless new deals are added immediately; Dr. Lewis monitors coverage ratio monthly and alerts the CEO when it falls below 3×
- Closed Lost reasons are as valuable as wins — if 70% of Closed Lost deals are "lost to competitor X" on price, that is strategic intelligence about positioning and pricing; if 70% are "budget frozen," that is an economic signal about the buyer's budget cycle; Dr. Lewis tracks and analyzes Close Lost reasons quarterly and presents the pattern analysis to the CEO and Matt Mathison
- HITL required: Sales reps manage individual deals; CEO reviews pipeline in weekly or bi-weekly sales meeting; Dr. Lewis reviews monthly pipeline health against quota and coverage; Matt Mathison receives the quarterly revenue summary (via fpa-management-report-builder); Dr. Lewis does not manage individual deals — the CEO and sales reps do; Dr. Lewis tracks the aggregate health metrics and escalates when coverage falls below threshold

## System Dependencies
- **Reads from:** CRM (GoHighLevel for MBL/North Vista; Allevio/HIVE/Column6 may use their own CRM); deal notes and activity logs; quota targets (fpa-annual-budget-builder — sales targets by entity); historical win/loss data; competitive intelligence (sales-competitive-intel)
- **Writes to:** Pipeline review memo (weekly/monthly); 30-day forecast (for fpa-cash-flow-model input); win/loss analysis (sales-win-loss-analyzer); Matt Mathison revenue summary (quarterly); CRM data quality flags (sales-crm-hygiene-manager); stale deal list (for CEO follow-up)
- **HITL Required:** Sales reps update CRM and own deal execution; CEO leads pipeline reviews and makes resource decisions; Dr. Lewis reviews aggregate health and escalates; Matt Mathison is informed if quarterly revenue forecast is materially below plan; Dr. Lewis does not close deals — the CEO and sales reps do; Dr. Lewis does not enter deal data into CRM — sales reps own their CRM records

## Test Cases
1. **Golden path:** Monthly Allevio pipeline review — 12 active deals; total pipeline $1.8M; quota $500K this quarter; coverage ratio 3.6× ✅; 3 deals in Contract Sent stage ($280K combined); 1 deal expected to close this month ($95K — Group B, 8 employer members at $85/member PMPM × 12 months); win rate this quarter: 35% (above 30% target); 1 stale deal (Group E — no activity in 16 days; rep followed up same day; deal moved back to active with a meeting scheduled); forecast: $95K high confidence + $75K medium confidence = $170K this month; on track for quarterly target
2. **Edge case:** HIVE pipeline shows 8 active mineral lease negotiations but the last 3 target landowners haven't responded in 3+ weeks each → Dr. Lewis flags: "Three active deals have gone silent for 21+ days. In mineral rights acquisition, silence typically means one of: (1) the landowner is considering competing offers; (2) the landowner has decided not to sell but hasn't told us; (3) there's a family member dispute holding up the decision. CEO action needed: Re-engage all 3 this week with a value-focused message (not a price message — price wars on mineral rights hurt margins). If no response within 2 weeks, move to Closed Lost with reason 'unresponsive/timing' and recycle to the prospect list in 90 days." CEO follows up; 2 deals re-engage; 1 is moved to Closed Lost
3. **Adversarial:** Column6's CEO asks Dr. Lewis to project Q4 revenue at $1.2M based on the pipeline — Dr. Lewis reviews: Total pipeline $2.8M; coverage 2.3× (below 3× threshold); 60% of the pipeline is in Stage 2-3 (Demo Delivered / RFP stage) with long expected close timelines; weighted pipeline at realistic close rates: $890K; "I can't support a $1.2M Q4 projection from this pipeline — the coverage ratio is below threshold and most deals are too early in the funnel to close this quarter. My best estimate of Q4 revenue based on the current pipeline is $650-850K. To hit $1.2M, we need to add $350K+ of new business to the pipeline immediately, or accelerate existing deals that have been stalled. I'd rather give you an honest projection now than a $400K miss at year-end."

## Audit Log
Pipeline review memos retained by entity and period. Win/loss reasons retained by deal (CRM records). Coverage ratio history retained by quarter. Quarterly forecast accuracy records (forecast vs. actual — to calibrate the model). Matt Mathison quarterly revenue summaries retained.

## Deprecation
Retire when each portfolio company has a dedicated VP of Sales who manages the pipeline — with Dr. Lewis reviewing monthly pipeline health and Matt Mathison receiving quarterly revenue performance vs. target.
