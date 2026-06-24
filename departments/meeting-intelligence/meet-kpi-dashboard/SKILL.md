---
name: meet-kpi-dashboard
description: "meeting intelligence KPI dashboard, transcripts received per week KPI, action items extracted per meeting KPI, prep sheets delivered on time KPI, action item closure rate KPI, summary quality score KPI, PHI incidents caught before distribution KPI, Matt Mathison rating weekly summaries KPI, pipeline uptime KPI, entity level KPI breakdown, weekly KPI snapshot Dr. Lewis, monthly KPI trend Matt Mathison, KPI threshold alerts meeting intelligence, meeting intelligence program metrics, MBL meeting intelligence dashboard, meeting intelligence performance metrics"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date or 'monthly' for trend report]"
---

# Meeting Intelligence KPI Dashboard

This skill builds and maintains the Meeting Intelligence program KPI dashboard, tracking eight core metrics weekly for Dr. Lewis and monthly for Matt Mathison. When any KPI crosses a threshold alert, Dr. Lewis is notified immediately with a root cause assessment and recommended corrective action before the issue compounds.

## When to Use

- Weekly KPI snapshot is due for Dr. Lewis (every Monday morning alongside the Matt briefing)
- A KPI threshold alert fires during the week and Dr. Lewis needs an immediate status report
- Monthly KPI trend report is due for Matt Mathison (first Monday of each month)
- The quarterly OKR review requires KPI trend data as supporting evidence

## KPI Dashboard Framework

```
MEETING INTELLIGENCE KPI DASHBOARD
====================================
Report Type: [WEEKLY SNAPSHOT / MONTHLY TREND / THRESHOLD ALERT]
Period: [date range]
Generated: [timestamp]
Reviewed by: Dr. John Lewis

KPI 1: TRANSCRIPTS RECEIVED PER WEEK
  Definition: Count of meeting transcripts received from Krista.ai per 7-day period
  Target: ≥[N] transcripts/week (baseline established from historical volume; set with Dr. Lewis)
  Alert threshold: <70% of target for 2 consecutive weeks
  Current: [N] transcripts this week
  4-week trend: [W-3: N] [W-2: N] [W-1: N] [This week: N]
  Status: ON TARGET / BELOW TARGET / THRESHOLD ALERT

KPI 2: ACTION ITEMS EXTRACTED PER MEETING
  Definition: Average number of discrete action items extracted per processed meeting
  Target: ≥2.0 action items per meeting (meetings with no action items are a quality signal)
  Alert threshold: average drops below 1.5 for 2 consecutive weeks
  Current: [N] action items / [N] meetings = [ratio] avg
  4-week trend: [trend values]
  Meetings with zero action items this week: [N] — [list if >0]
  Status: ON TARGET / BELOW TARGET / THRESHOLD ALERT

KPI 3: PREP SHEETS DELIVERED ON TIME
  Definition: % of pre-meeting prep sheets delivered ≥24 hours before meeting start
  Target: ≥95% on-time delivery
  Alert threshold: <85% in any single week
  Current: [N] prep sheets due | [N] on time | [%]
  4-week trend: [trend values]
  Late deliveries this week: [N] — [reasons]
  Status: ON TARGET / BELOW TARGET / THRESHOLD ALERT

KPI 4: ACTION ITEM CLOSURE RATE (30-DAY ROLLING)
  Definition: % of meeting-generated action items closed by their due date; rolling 30 days
  Target: ≥80% overall; ≥70% for each entity individually
  Alert threshold: overall <70%; or any entity <60%
  Current (30-day rolling):
    Overall: [%]
    MBL: [%] | Allevio: [%] | HIVE: [%] | Column6: [%]
  4-week trend: [weekly closure rates]
  Status: ON TARGET / BELOW TARGET / THRESHOLD ALERT

KPI 5: AVERAGE SUMMARY QUALITY SCORE
  Definition: Average score from quality review checklist (checks passed / 9) per week
  Target: ≥8/9 (≥89%)
  Alert threshold: average drops below 7/9 in any week; or any PHI check fails
  Current week: [N] summaries reviewed | avg score [N]/9
  4-week trend: [trend values]
  This week's most common failure: [check name if any failures]
  Status: ON TARGET / BELOW TARGET / THRESHOLD ALERT

KPI 6: PHI INCIDENTS CAUGHT PRE-DISTRIBUTION
  Definition: Count of PHI detection events, and whether all were caught before distribution
  Target: 100% pre-distribution catch rate; zero PHI distributions
  Alert threshold: any PHI event that reached distribution = IMMEDIATE CRITICAL ALERT
  This week: [N PHI events detected] | [N caught pre-distribution] | [N reached distribution]
  Year-to-date: [N total PHI events] | [N pre-distribution catches] | [N distributions — must be 0]
  Status: CLEAN / PHI DETECTED (PRE-DIST) / CRITICAL — PHI DISTRIBUTED

KPI 7: MATT MATHISON WEEKLY SUMMARY RATING
  Definition: Matt's rating of the weekly briefing quality (collected quarterly via survey;
  proxy used weekly = no negative feedback received = 5/5 proxy)
  Target: ≥4/5 (quarterly survey); no negative feedback in between surveys
  Current quarter survey result: [N/5] (survey date: [date])
  Feedback received since last survey: [NONE / summary of feedback]
  Status: ON TARGET / FEEDBACK PENDING RESOLUTION

KPI 8: PIPELINE UPTIME
  Definition: % of weeks in which the full pipeline (transcript receipt → summary delivery)
  completed within SLA (transcript ≤4hrs; summary by Monday 9am MST)
  Target: ≥95% uptime (no more than 1 missed SLA per 20 weeks)
  YTD uptime: [%] | Missed SLAs YTD: [N] — [brief descriptions]
  This week: [FULL SLA MET / SLA MISSED — [which component; reason; resolution]]
  Status: ON TARGET / BELOW TARGET / THRESHOLD ALERT

ENTITY-LEVEL BREAKDOWN
  | KPI | MBL | Allevio | HIVE | Column6 |
  |-----|-----|---------|------|---------|
  | Transcripts/wk | ... | ... | ... | ... |
  | Action items/mtg | ... | ... | ... | ... |
  | Closure rate | ... | ... | ... | ... |
  | Quality score | ... | ... | ... | ... |

THRESHOLD ALERTS ACTIVE THIS WEEK
  [List any active threshold alerts with: KPI; current value; threshold; recommended action]
  [NONE if all KPIs on target]

DR. LEWIS WEEKLY KPI SUMMARY
  - KPIs on target: [N]/8
  - KPIs with active alerts: [N] — [list]
  - Recommended actions: [top 1-2 priority actions this week]
  - Program health: GREEN (≥7/8) / YELLOW (5-6/8) / RED (<5/8)
```

## Output Format

```markdown
## Meeting Intelligence KPI Dashboard — Week of [DATE]

**Program Health:** GREEN / YELLOW / RED | **KPIs On Target:** [N]/8

| KPI | Target | Current | Status |
|-----|--------|---------|--------|
| Transcripts/week | ≥[N] | [N] | ✓ / ⚠ |
| Action items/meeting | ≥2.0 | [N] | ✓ / ⚠ |
| Prep sheets on-time | ≥95% | [%] | ✓ / ⚠ |
| Closure rate | ≥80% | [%] | ✓ / ⚠ |
| Quality score | ≥8/9 | [N]/9 | ✓ / ⚠ |
| PHI guard | 100% | [status] | ✓ / ⚠ |
| Matt rating | ≥4/5 | [N/5] | ✓ / ⚠ |
| Pipeline uptime | ≥95% | [%] | ✓ / ⚠ |

**Active Alerts:** [NONE / list]

**Dr. Lewis Actions This Week:**
1. [action if any]
```

## Output Contract

- **Threshold alerts generate immediate notifications, not weekly summaries.** When any KPI crosses its alert threshold during the week, Dr. Lewis receives a standalone notification within 2 hours of the threshold crossing — not aggregated into the next weekly snapshot. The notification includes the KPI, the current value, the threshold, the likely root cause based on available pipeline data, and a recommended corrective action. Threshold breaches are not held until the next scheduled report cycle because some breaches (especially KPI 6: PHI) require same-day response.

- **"Green" program health does not mean the program is thriving — it means it is meeting baseline.** A dashboard showing 7/8 KPIs on target is not a signal to relax oversight; it is evidence that the program is functioning as designed. Dr. Lewis uses the weekly KPI snapshot to identify early-stage degradation trends (e.g., quality score declining from 8.7 to 8.2 to 7.9 over three weeks) that are not yet threshold alerts but indicate a direction that requires attention before it becomes one. Trend analysis is as important as current-week status.

- **The Matt Mathison rating KPI is the only metric that cannot be generated internally.** All other KPIs are measured from pipeline data that Dr. Lewis controls and can observe. Matt's satisfaction is an external signal — and the quarterly survey is the only valid measurement. In between surveys, Dr. Lewis tracks any unsolicited feedback Matt provides (positive or negative) as a qualitative proxy, but the dashboard makes clear that the formal rating requires the quarterly survey. Extrapolating a satisfaction score from absence of complaints is not a valid measurement approach and is not done.

## System Dependencies

### Reads from
- Krista.ai transcript delivery logs (KPI 1)
- Action item extraction records (KPI 2)
- Prep sheet delivery log (KPI 3)
- Monday.com action item data (KPI 4)
- Quality review logs (KPI 5)
- HIPAA incident register (KPI 6)
- Matt Mathison satisfaction survey records (KPI 7)
- Pipeline health logs (KPI 8)

### Writes to
- SharePoint: /Meeting Intelligence/KPI-Dashboard/[date]-kpi-snapshot.md (weekly)
- SharePoint: /Meeting Intelligence/KPI-Dashboard/[month]-kpi-trend.md (monthly)
- Dr. Lewis threshold alert queue (immediate, when triggered)
- Monthly Matt Mathison KPI trend section (embedded in monthly briefing)

### HITL Required
- Dr. Lewis: reviews weekly KPI snapshot; acts on threshold alerts; administers Matt satisfaction survey
- Matt Mathison: receives monthly KPI trend summary (not weekly snapshot — that is Dr. Lewis's operational tool)

## Test Cases

1. **Golden path:** Week with all 8 KPIs on target — GREEN dashboard, no alerts, Dr. Lewis reviews in 5 minutes and confirms no action required, snapshot archived.
2. **Edge case:** KPI 1 (transcripts/week) drops 40% below target because Krista.ai had a 2-day recording outage. This triggers a threshold alert for KPI 1. The alert must correctly identify the root cause as a Krista.ai infrastructure issue (not a drop in MBL meeting volume) and recommend the corrective action as Krista.ai support escalation rather than an internal process fix.
3. **Adversarial:** All KPIs appear on target in the weekly snapshot, but a manual check reveals that 3 meetings from the prior week have not yet been processed — they are simply not counted in the metrics yet. Dashboard must flag the unprocessed meetings as a data completeness gap that makes the "transcripts/week" KPI an undercount, with a note that final KPI values for the prior week may shift once processing completes.

## Audit Log

Every weekly KPI snapshot and monthly trend report is archived in SharePoint with the source data references for each KPI, the generation timestamp, and Dr. Lewis review notation. Threshold alert events are logged separately with the alert timestamp, Dr. Lewis notification timestamp, and resolution date. KPI dashboard archives are retained for 2 years.

## Deprecation

This skill is deprecated when MBL implements a meeting analytics or business intelligence platform that provides real-time KPI dashboarding with the same eight KPIs, entity-level breakdowns, threshold alerting, and Matt Mathison monthly trend reporting this skill provides. Deprecation requires a 4-week parallel run confirming data accuracy and Dr. Lewis approval that the new dashboard meets the alert response time requirements.
