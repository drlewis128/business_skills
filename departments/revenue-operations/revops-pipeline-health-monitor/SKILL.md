---
name: revops-pipeline-health-monitor
description: "Monitor pipeline health and trigger alerts for MBL Partners portfolio entities. Use when the user says 'pipeline health', 'pipeline monitor', 'pipeline alerts', 'pipeline warning', 'pipeline at risk', 'monitor deals', 'deal alerts', 'pipeline risk', 'pipeline flag', 'pipeline status', 'pipeline check', 'is the pipeline healthy', 'what deals need attention', 'pipeline dashboard', 'pipeline early warning', 'pipeline risk report', 'pipeline oversight', 'stale deal alerts', 'coverage ratio warning', 'pipeline red flags', 'pipeline watch list', 'pipeline monitoring', 'pipeline governance', 'pipeline at risk report', 'deal health check', or 'which deals are at risk'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|all>] [--action <check|alert|report>] [--threshold <coverage|stale|age>]"
---

# RevOps Pipeline Health Monitor

Monitor pipeline health across MBL Partners portfolio entities — running structured checks against coverage ratios, deal age, activity levels, and stage progression to surface at-risk deals and coverage gaps before they cause forecast misses. Pipeline health monitoring is proactive governance; catching a stale Stage 6 deal on Day 7 is a coaching conversation; catching it on Day 30 is a lost deal.

## When to Use
- Weekly automated or manual pipeline health check
- Before submitting the monthly forecast (verify pipeline quality first)
- When entity CEO is concerned about pipeline risk
- Setting up a pipeline monitoring routine for a new entity

## Pipeline Health Monitor Framework

```
HEALTH CHECK DIMENSIONS:

  1. COVERAGE RATIO HEALTH:
    Allevio: Stage 3+ value / monthly revenue target
    Green: ≥3.0× | Yellow: 2.5-2.99× | Red: <2.5×
    Alert: Yellow → entity sales lead; Red → entity CEO + Dr. Lewis same day
    
  2. STAGE DISTRIBUTION HEALTH:
    Healthy distribution: ≥30% of pipeline value in Stages 3-4 (early-stage pipeline feeding late-stage)
    Warning: <20% in Stages 3-4 → coverage for next period is thin
    Critical: <10% in Stages 3-4 → next quarter's pipeline is at risk; entity CEO alerted
    
  3. DEAL AGE FLAGS:
    Stage 4-6 deals >7 days no activity → review flag
    Stage 4-6 deals >14 days no activity → escalate to entity sales lead
    Stage 7 deals >3 days no activity → entity CEO same day
    Any deal >3× benchmark total age → close as lost or get explicit explanation
    
  4. DATA QUALITY HEALTH:
    Deals missing expected close date → ghost deal; fix or close
    Deals missing deal value → incomplete data; fix within 24 hours
    Deals missing contact association → data quality failure; fix immediately
    Closed Lost without reason code → mandatory; enforce before month-end
    
  5. ACTIVITY HEALTH:
    Total pipeline activity per entity per week (minimum viable): 
      Allevio: ≥8 activities logged (calls, emails, meetings)
      Column6: ≥6 activities logged
    Below minimum → sales activity is insufficient; entity CEO conversation needed
    
WEEKLY HEALTH CHECK PROCESS:
  Run every Monday before 9am:
    Step 1: Pull GoHighLevel pipeline snapshot for each entity
    Step 2: Calculate coverage ratio for current and next period
    Step 3: Flag all deals meeting any alert criteria above
    Step 4: Generate health report and distribute (see output format)
    Step 5: Alert entity CEO/sales lead on any Red or critical items immediately
    Step 6: Log health check results for trend tracking
    
HEALTH SCORE (COMPOSITE):
  Calculate weekly: 0-100 points
    Coverage ratio ≥3× target: 25 pts (partial credit at 2.5-3×: 15 pts)
    Stage distribution ≥30% early-stage: 25 pts
    No stale deals: 25 pts (deduct 5 per stale deal; 0 pts if ≥5 stale)
    Data quality 100%: 25 pts (deduct 5 per data gap)
  Scores: 90-100 = Healthy | 70-89 = Watch | <70 = At Risk
```

## Output Format

```markdown
# Pipeline Health Report — [Entity] — Week of [Date]
**Health Score:** [X]/100 — [Healthy / Watch / At Risk]

---

## Coverage Ratio: [X.X×] — [🟢/🟡/🔴]
[Comment if not green]

## Stage Distribution: [X]% early-stage — [🟢/🟡/🔴]
[Comment if not green]

## Stale Deal Alerts ([N] flagged)

| Deal | Stage | Days since activity | Owner | Action |
|------|-------|-------------------|-------|--------|
| [Deal name] | Stage 5 | 11 days | [Rep] | Call by [date] |

## Data Quality ([N] issues)
[List any ghost deals / missing values / missing reason codes]

## Activity Level: [N] activities this week — [🟢/🟡/🔴]

## Escalations Required
- [Deal / issue — who is being alerted — channel]
```

## Output Contract
- The weekly health check is a governance routine, not an optional report — skipping the weekly pipeline health check in favor of "we know our deals" is the pattern that leads to a quarter-end surprise; Dr. Lewis requires a documented health check result every week for every active entity pipeline; the discipline of checking creates the discipline of maintaining; a pipeline that is checked weekly is a pipeline that is updated weekly; a pipeline that is updated weekly is a pipeline that can be forecasted accurately
- Health score trending matters — a single week of 72 (Watch) is a data point; three consecutive weeks of declining scores (88 → 79 → 67) is a signal that the pipeline is deteriorating systematically and requires entity CEO intervention before the next forecast cycle; Dr. Lewis tracks the weekly health score as a time series and includes the trend in the monthly pipeline review
- HITL required: Red coverage ratio → entity CEO + Dr. Lewis same day; Stage 7 stale →  entity CEO same day; health score <70 for 2+ consecutive weeks → entity CEO + Dr. Lewis pipeline review; any GoHighLevel data configuration change affecting health checks → Dr. Lewis approves

## System Dependencies
- **Reads from:** GoHighLevel (pipeline snapshot; deal stages; activity logs; close dates; deal values; contact associations); revops-pipeline-manager (stage definitions; coverage benchmarks); revops-forecast-builder (coverage ratio relative to forecast need)
- **Writes to:** Weekly pipeline health reports (SharePoint → [Entity] → Sales → Pipeline → Health); health score time series (Monday.com or SharePoint tracking); entity CEO escalation messages; Dr. Lewis weekly portfolio health summary
- **HITL Required:** Red coverage → entity CEO + Dr. Lewis; Stage 7 stale → entity CEO; health <70 2+ weeks → entity CEO + Dr. Lewis; GHL configuration changes → Dr. Lewis

## Test Cases
1. **Golden path:** Monday morning Allevio pipeline health check. Coverage ratio: 3.2× (🟢). Stage distribution: 34% in Stages 3-4 (🟢). Stale deals: 1 (Stage 4, 9 days no activity — sales lead alerted; scheduled call today). Data quality: 1 missing close date (Stage 2 deal — fixed in GHL by EOD). Activity last week: 11 activities (🟢). Health score: 90/100 (Healthy). No escalations. Health report sent to entity sales lead by 9am.
2. **Edge case:** Entity has 0 pipeline activity for 2 weeks (sales rep was traveling to a conference) → Dr. Lewis: "The pipeline health check shows zero GoHighLevel activity logged for 14 days. Conference travel is a legitimate reason for lower activity, but it doesn't mean deals don't need follow-up. The health check doesn't grade intent — it grades outcomes. I'm flagging the stale deals (3 at Stage 5 with no activity, each >14 days now) to the entity CEO. The rep needs to log all follow-up from the conference trip retroactively and execute callbacks on the 3 stale Stage 5 deals this week. I'll re-check health next Monday."
3. **Adversarial:** Entity CEO asks to turn off the pipeline health check because "the sales team feels micromanaged" → Dr. Lewis: "I hear the concern, and I want to address it directly with the team. The health check is not about micromanaging individual reps — it's about me having visibility into portfolio-level pipeline risk. A deal that goes stale for 14 days in Stage 5 is not a rep management issue; it's a forecast risk issue that Matt Mathison and I need to see. What I can adjust: the health check report goes to me and entity CEO only — not directly to reps. The entity CEO surfaces specific stale deals in their own sales review. The health check is non-negotiable; the distribution and tone of follow-up is negotiable."

## Audit Log
Weekly health check records retained for 12 months. Health score time series retained permanently. Red/critical escalation records. Entity CEO alert logs. GoHighLevel snapshot records (date-stamped). Configuration change records (Dr. Lewis approval).

## Deprecation
Coverage thresholds reviewed when entity revenue targets or close rates change significantly. Stale deal thresholds reviewed when entity sales cycle benchmarks change. Health score calculation reviewed annually. Alert routing reviewed when entity leadership structure changes.
