---
name: meet-pipeline-health-report
description: "meeting intelligence pipeline health report, Krista AI receipt status, transcript processing status, action item extraction status, summary build status, distribution status, pipeline SLA compliance, transcript received 4 hours after meeting, summary delivered Monday 9am, prep sheet 24 hours before meeting, pipeline error log, pipeline reliability metrics, pipeline improvement recommendations, meeting intelligence pipeline status, Dr. Lewis pipeline report, pipeline component status meeting intelligence, meeting intelligence system health, pipeline failure root cause, pipeline uptime report"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date, e.g. 2026-06-28]"
---

# Meeting Intelligence Pipeline Health Report

This skill builds the weekly pipeline health report for Dr. John Lewis, checking each component of the Meeting Intelligence pipeline — from Krista.ai transcript receipt through action item extraction, summary build, and distribution — against defined SLAs. Every failure is logged with root cause and resolution, and reliability metrics track whether the pipeline is improving or degrading over time.

## When to Use

- Weekly pipeline health cycle runs (Monday morning, alongside KPI snapshot)
- A pipeline component fails during the week and Dr. Lewis needs an immediate diagnostic
- Monthly program ops review requires a pipeline reliability section as input
- A new Krista.ai integration change or pipeline update needs a health validation after deployment

## Pipeline Health Framework

```
MEETING INTELLIGENCE PIPELINE HEALTH REPORT — WEEK ENDING [DATE]
=================================================================

PIPELINE OVERVIEW
  Overall pipeline status: HEALTHY / DEGRADED / FAILURE
  Weeks since last pipeline failure: [N]
  SLA compliance this week: [N]/[N possible SLA obligations met] ([%])

COMPONENT 1: KRISTA.AI TRANSCRIPT RECEIPT
  SLA: Transcript available in pipeline ≤4 hours after meeting end
  This week:
    - Meetings that should have generated transcripts: [N]
    - Transcripts received: [N]
    - Missing transcripts: [N] — [list with meeting name, date, suspected reason]
    - Average receipt time: [N hours]
    - P95 receipt time (slowest 5%): [N hours]
    - SLA compliance: [N]/[N] ([%])
  Issues this week:
    - [Issue description | Root cause | Resolution | Status: RESOLVED/OPEN]
  Status: HEALTHY / DEGRADED / FAILURE

COMPONENT 2: TRANSCRIPT PROCESSING (PHI SCAN + TAGGING + PARSING)
  SLA: Processing complete ≤1 hour after transcript receipt
  This week:
    - Transcripts received: [N]
    - Processed successfully: [N]
    - Processing failures: [N] — [list with transcript ID, error type, resolution]
    - Average processing time: [N minutes]
    - PHI scans run: [N] | PHI events detected: [N] (see HIPAA incident register)
  Issues this week:
    - [Issue | Root cause | Resolution | Status]
  Status: HEALTHY / DEGRADED / FAILURE

COMPONENT 3: ACTION ITEM EXTRACTION
  SLA: Action items extracted and pushed to Monday.com within 2 hours of processing
  This week:
    - Transcripts processed: [N]
    - Action items extracted: [N total] ([avg N per meeting])
    - Monday.com push success: [N] | Monday.com push failures: [N]
    - Zero-action-item meetings: [N] — [list — verify these meetings genuinely had no action items]
    - Extraction accuracy (spot-check): [% if spot-check run this week / N/A]
  Issues this week:
    - [Issue | Root cause | Resolution | Status]
  Status: HEALTHY / DEGRADED / FAILURE

COMPONENT 4: SUMMARY BUILD
  SLA: Weekly summary drafted and ready for Dr. Lewis review by Sunday 6pm MST
  This week:
    - Summary types built: [MBL Weekly / Allevio Ops / HIVE Ops / Column6 Ops]
    - Summaries completed by Sunday 6pm: [N]/[N]
    - Late summaries: [N] — [reason]
    - Quality review passed on first submission: [N]/[N]
    - Quality revisions required: [N] — [most common issue]
  Issues this week:
    - [Issue | Root cause | Resolution | Status]
  Status: HEALTHY / DEGRADED / FAILURE

COMPONENT 5: DISTRIBUTION
  SLA: Matt Mathison weekly brief delivered by Monday 9am MST;
       entity CEO briefs delivered by Monday 11am MST;
       prep sheets delivered ≥24 hours before meeting
  This week:
    - Matt Mathison brief: [delivered at HH:MM MST / LATE — reason]
    - Jimmy Lindsley CC: [delivered at HH:MM MST / LATE — reason]
    - Entity CEO briefs: MBL [time] | Allevio [time] | HIVE [time] | Column6 [time]
    - Prep sheets due: [N] | On time: [N] | Late: [N] — [reasons]
    - Delivery failures (bounced / undelivered): [N] — [list]
  Issues this week:
    - [Issue | Root cause | Resolution | Status]
  Status: HEALTHY / DEGRADED / FAILURE

ERROR LOG — FULL WEEK
  | # | Date/Time | Component | Error Description | Root Cause | Resolution | Status |
  |---|-----------|-----------|-------------------|------------|------------|--------|
  | 1 | ...       | ...       | ...               | ...        | ...        | ...    |
  Total errors this week: [N]
  Errors resolved: [N] | Open errors: [N]
  Errors recurring from prior weeks: [N] — [indicate if systemic]

RELIABILITY METRICS
  | Metric | This Week | 4-Week Avg | 12-Week Avg | Trend |
  |--------|-----------|------------|-------------|-------|
  | Transcript receipt rate | [%] | [%] | [%] | ↑/↓/stable |
  | Processing success rate | [%] | [%] | [%] | ↑/↓/stable |
  | Action item extraction rate | [%] | [%] | [%] | ↑/↓/stable |
  | Summary on-time rate | [%] | [%] | [%] | ↑/↓/stable |
  | Distribution SLA compliance | [%] | [%] | [%] | ↑/↓/stable |
  | Overall pipeline uptime | [%] | [%] | [%] | ↑/↓/stable |

PIPELINE IMPROVEMENT RECOMMENDATIONS
  Based on this week's issues and reliability trends:
  1. [Specific recommendation | Priority: HIGH/MEDIUM/LOW | Effort: HIGH/MEDIUM/LOW]
  2. [Recommendation | Priority | Effort]
  3. [Recommendation | Priority | Effort]
  Recommended focus for next week: [top 1 improvement]
```

## Output Format

```markdown
## Pipeline Health Report — Week Ending [DATE]

**Overall Status:** HEALTHY / DEGRADED / FAILURE
**SLA Compliance:** [N]/[N] obligations ([%])
**Errors This Week:** [N total] | [N resolved] | [N open]

**Component Status:**
| Component | Status | SLA | Actual | Issues |
|-----------|--------|-----|--------|--------|
| Krista.ai Receipt | ✓/⚠ | ≤4 hrs | [N hrs avg] | [N] |
| Processing | ✓/⚠ | ≤1 hr | [N min avg] | [N] |
| Action Item Extraction | ✓/⚠ | ≤2 hrs | [N hrs avg] | [N] |
| Summary Build | ✓/⚠ | By Sun 6pm | [status] | [N] |
| Distribution | ✓/⚠ | Mon 9am | [status] | [N] |

**Open Errors:** [list if any]

**Top Recommendation:** [#1 improvement action for next week]
```

## Output Contract

- **Open errors carry forward until resolved, regardless of age.** An error that was first logged two weeks ago and is still unresolved appears in this week's error log with its full history (date first seen, prior resolution attempts, current status). There is no "error aging out" of the log. This prevents the organizational habit of treating unresolved technical issues as background noise — every open error is a live risk to the pipeline's ability to deliver Matt Mathison's briefing on time, and it stays visible until it is definitively closed.

- **Krista.ai receipt failures and processing failures are reported to Dr. Lewis with the meeting name, not just a transcript ID.** When a meeting fails to generate a transcript or fails to process, the pipeline health report identifies the specific meeting by name and date so that Dr. Lewis can assess whether the gap is consequential (e.g., a key MBL leadership meeting with no transcript) or lower priority (e.g., a routine internal call). Not all transcript gaps are equal — the health report provides enough context for Dr. Lewis to triage rather than treating all failures as equally urgent.

- **Pipeline improvement recommendations are prioritized by impact on Matt Mathison's briefing quality, not by technical elegance.** A recommendation that reduces average processing time from 45 minutes to 30 minutes has lower priority than a recommendation that prevents the Monday morning distribution SLA from being missed. Dr. Lewis uses the pipeline health report to make weekly investment decisions about where to spend improvement effort, and those decisions are informed by which pipeline weaknesses most directly threaten the outputs Matt Mathison depends on.

## System Dependencies

### Reads from
- Krista.ai delivery logs (transcript receipt timestamps and statuses)
- Pipeline processing logs (PHI scan results, parsing outcomes, timing data)
- Monday.com push logs (action item extraction and delivery confirmation)
- Summary build logs (draft completion timestamps, quality review outcomes)
- Distribution logs (email delivery receipts; delivery timestamps)

### Writes to
- SharePoint: /Meeting Intelligence/Pipeline-Health/[date]-pipeline-health.md
- Dr. Lewis notification queue (immediate alerts for FAILURE status components)
- Monthly program ops review (pipeline section input)

### HITL Required
- Dr. Lewis: receives and reviews every weekly health report; owns all open error resolution
- Krista.ai team (external): engaged by Dr. Lewis for Krista.ai component failures
- Matt Mathison: notified only if a pipeline failure will cause a distribution SLA miss before it happens (proactive notification, not post-miss explanation)

## Test Cases

1. **Golden path:** Clean week — all 5 components HEALTHY, 0 errors, 100% SLA compliance, Matt's brief delivered Monday 8:52am MST — health report confirms HEALTHY, no recommendations elevated above LOW priority.
2. **Edge case:** Krista.ai processes a meeting transcript 5.5 hours after the meeting ended (SLA breach), but the summary still reaches Matt Mathison on time because the delay occurred early in the week. Health report correctly logs the Krista.ai SLA breach and counts it as a failed obligation in the compliance rate, even though the end-to-end distribution SLA was met — the component SLA and the end-to-end SLA are tracked separately.
3. **Adversarial:** The distribution system fails silently — the Matt Mathison email appears to send with no error, but it bounces due to an email server issue. Dr. Lewis does not discover this until Matt asks on Tuesday why he didn't receive his Monday briefing. Health report for the following week must treat this as a FAILURE event, log it with root cause (silent bounce with no delivery confirmation check), and include a specific recommendation to implement delivery receipt confirmation for all Matt Mathison communications.

## Audit Log

Every weekly pipeline health report is archived in SharePoint with component statuses, full error log, SLA compliance data, reliability metrics, and improvement recommendations. Error logs reference specific transcript IDs, meeting names, and timestamps for traceability. Reports are retained for 2 years. Dr. Lewis reviews archived pipeline health reports quarterly as part of the trend analysis for the program ops review.

## Deprecation

This skill is deprecated when the Meeting Intelligence pipeline is sufficiently automated and monitored that pipeline health reporting is generated natively by the pipeline's monitoring infrastructure — with the same component-level granularity, SLA tracking, error logging, and Dr. Lewis alert routing this skill provides. Deprecation requires a 4-week parallel validation confirming the automated monitoring detects and surfaces the same issues this skill would catch. Dr. Lewis approves.
