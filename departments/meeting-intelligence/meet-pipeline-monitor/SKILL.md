---
name: meet-pipeline-monitor
description: "monitor meeting intelligence pipeline, pipeline health meeting, transcript receipt monitoring, processing latency meeting, distribution on-time rate, pipeline failure modes, missed transcript alert, phi in output alert, matt mathison summary late, pipeline alerting escalation, weekly pipeline health report, meeting intelligence pipeline status, transcript to summary pipeline, pipeline component health, pipeline error detection, krista.ai transcript pipeline, meeting intelligence operations, pipeline monitoring dr lewis, pipeline health metrics, meeting pipeline status"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[date range or 'current week' to check pipeline health]"
---

# Meeting Intelligence Pipeline Monitor

This skill monitors the operational health of the entire MBL meeting intelligence pipeline — from Krista.ai transcript receipt through processing, action item extraction, summary building, and final distribution. It detects failures, latency issues, and quality problems before they reach Matt Mathison, and gives Dr. Lewis a real-time and weekly view of whether the pipeline is performing as designed.

## When to Use

- A pipeline health check is needed before the weekly summary is built and distributed
- A transcript is suspected to be missing or stuck in processing
- Matt Mathison's weekly summary was late and a root cause analysis is needed
- Dr. Lewis wants a weekly pipeline health report summarizing the week's end-to-end performance

## Pipeline Monitor Framework

```
PIPELINE COMPONENT MAP
─────────────────────────────
Component 1: TRANSCRIPT RECEIPT
  Source:    Krista.ai → meet-krista-transcript-receiver
  Health KPI: Transcripts received / meetings held = Receipt Rate
  Target:    ≥95% (some meetings legitimately not recorded)
  Alert:     <80% in any week | Any meeting in calendar with no transcript after 2 hrs

Component 2: TRANSCRIPT PROCESSING
  Source:    meet-transcript-processor
  Health KPI: Processing completion rate; avg processing time
  Target:    ≥95% transcripts processed within 4 hours of receipt
  Alert:     Any transcript PENDING_PROCESSING for >6 hours
             Any transcript stuck in HIPAA_HOLD for >24 hours without Dr. Lewis action

Component 3: ACTION ITEM EXTRACTION
  Source:    meet-action-item-extractor
  Health KPI: % of processed transcripts with extraction run; Monday.com push success rate
  Target:    ≥98% extraction run; ≥95% Monday.com push success
  Alert:     Any failed Monday.com push; extraction not run within 2 hrs of processing

Component 4: DECISION TRACKING
  Source:    meet-decision-tracker
  Health KPI: % of processed transcripts with decision tracking run
  Target:    ≥98%
  Alert:     Any transcript with 0 decisions logged when transcript content suggests decisions

Component 5: SUMMARY BUILDING
  Source:    meet-weekly-summary-builder
  Health KPI: Draft ready by Friday 3PM target
  Target:    100% on-time draft
  Alert:     Draft not ready by Friday 2PM → escalate to Dr. Lewis for same-day recovery

Component 6: DISTRIBUTION
  Source:    meet-krista-output-router
  Health KPI: Summary delivered to Matt by Friday 4PM
  Target:    ≥95% on-time delivery (1 miss per quarter acceptable)
  Alert:     Delivery after 5PM Friday → log as LATE; delivery Monday → log as MISS

FAILURE MODE CATALOG
─────────────────────────────
FAILURE MODE 1 — MISSED TRANSCRIPT:
  Definition:  Calendar event shows meeting occurred; no transcript received from Krista.ai
  Detection:   Compare calendar events to transcript registry daily (2-hour lag)
  Response:    Alert Dr. Lewis → investigate Krista.ai → manual upload if needed
  Impact:      Downstream skills cannot run; meeting content is lost

FAILURE MODE 2 — PHI IN OUTPUT:
  Definition:  PHI-adjacent content detected after processing (downstream of receiver)
  Detection:   Keyword scan on all Allevio outputs before routing
  Response:    HALT routing immediately → alert Dr. Lewis → redact → re-route
  Impact:      Potential HIPAA breach if not caught; all downstream routing halted

FAILURE MODE 3 — LATE SUMMARY DELIVERY:
  Definition:  Weekly summary does not reach Matt Mathison by Friday 4PM
  Detection:   Routing log delivery timestamp vs. target
  Response:    Immediate Dr. Lewis notification; deliver with apology note if Friday 5PM+
  Impact:      Matt Mathison enters weekend without meeting intelligence; trust erosion

FAILURE MODE 4 — MONDAY.COM PUSH FAILURE:
  Definition:  Action item extraction succeeded but Monday.com task creation failed
  Detection:   Routing log push status = FAILED
  Response:    Retry once; if retry fails → alert Dr. Lewis → manual push
  Impact:      Action items not tracked; owners not notified

FAILURE MODE 5 — SPEAKER RESOLUTION FAILURE:
  Definition:  Transcript stuck in HITL for >24 hours due to unresolved speakers
  Detection:   Transcript registry status = AWAITING_HITL for >24 hours
  Response:    Escalate to Dr. Lewis with specific UNKNOWN_[n] utterances for manual ID
  Impact:      Action items and decisions cannot be attributed; downstream outputs degraded

PIPELINE HEALTH SCORING
─────────────────────────────
Weekly pipeline health score (0–100):
  Component 1 (Transcript Receipt):  Weight 20pts — receipt rate × 20
  Component 2 (Processing):          Weight 20pts — processing rate × 20
  Component 3 (Action Items):        Weight 15pts — extraction + push rate × 15
  Component 4 (Decisions):           Weight 15pts — tracking rate × 15
  Component 5 (Summary):             Weight 15pts — on-time draft × 15
  Component 6 (Distribution):        Weight 15pts — on-time delivery × 15

Score interpretation:
  90–100: GREEN — pipeline operating as designed
  75–89:  YELLOW — minor issues; monitor closely
  50–74:  ORANGE — significant issues; Dr. Lewis investigation required
  0–49:   RED — pipeline failure; escalate immediately
```

## Output Format

```markdown
# Pipeline Health Report — Week of [DATE RANGE]
**Prepared by:** Pipeline Monitor | For: Dr. John Lewis
**Overall Health Score:** [n/100] — [🟢 GREEN | 🟡 YELLOW | 🟠 ORANGE | 🔴 RED]

---

## COMPONENT STATUS

| Component | Target | Actual | Status | Failures |
|-----------|--------|--------|--------|----------|
| Transcript Receipt | ≥95% | [n%] | [🟢/🟡/🟠/🔴] | [n] missed |
| Transcript Processing | ≥95% | [n%] | [🟢/🟡/🟠/🔴] | [n] stuck |
| Action Item Extraction | ≥98% | [n%] | [🟢/🟡/🟠/🔴] | [n] failed |
| Decision Tracking | ≥98% | [n%] | [🟢/🟡/🟠/🔴] | [n] missed |
| Summary Building | On-time | [✓/✗] | [🟢/🔴] | [note] |
| Distribution | On-time | [✓/✗] | [🟢/🔴] | [note] |

---

## FAILURES THIS WEEK

| Failure Mode | Count | Severity | Status | Action Taken |
|-------------|-------|----------|--------|-------------|
| Missed Transcript | [n] | [level] | [resolved/open] | [action] |
| PHI in Output | [n] | HIGH | [resolved/open] | [action] |
| Late Summary | [n] | [level] | [resolved/open] | [action] |
| Monday.com Push Fail | [n] | [level] | [resolved/open] | [action] |
| Speaker ID Failure | [n] | [level] | [resolved/open] | [action] |

---

## PIPELINE THROUGHPUT
- Meetings in calendar: [n] | Transcripts received: [n] | Fully processed: [n]
- Action items extracted: [n] | Pushed to Monday.com: [n]
- Decisions logged: [n] | Summary delivered: [✓/✗] | Prep sheets delivered: [n]

---

## OPEN ISSUES (Requiring Dr. Lewis Action)
- [Issue description] — Age: [hours] — Action needed: [specific action]

---
*Next pipeline health check: [Date/Time] | Archive: SharePoint /Meeting Intelligence/Pipeline Health/*
```

## Output Contract

- **PHI-in-output failures must be escalated to Dr. Lewis within 15 minutes of detection — not at the next scheduled health check.** The pipeline monitor does not wait for the weekly report to surface a PHI failure. PHI that has propagated into a downstream skill output requires immediate containment: identifying how far the data traveled, halting any pending routing, and initiating a review of what was distributed (if anything). A PHI breach that is discovered in a Friday health report when it occurred on a Tuesday is a compliance failure in addition to the original breach. The 15-minute escalation is a first-response timeline, not a review timeline.

- **The pipeline health score must be calculated using actual measured rates — not estimated or assumed rates for components where data is unavailable.** When a component's data cannot be measured (e.g., Krista.ai receipt timestamps are missing for one meeting), that component's score contribution must be calculated as 0 (failure) rather than as a clean pass. Substituting assumptions for measurements when data is absent inflates the health score and creates false confidence. Dr. Lewis uses the health score to allocate his attention — a score based on incomplete data misdirects that attention.

- **Open issues requiring Dr. Lewis action must be listed in order of age — the longest-open issue appears first.** Time-aging of unresolved pipeline issues is the primary risk signal in the health report. A speaker resolution issue that has been open for 3 hours is manageable. The same issue open for 36 hours means that a meeting's worth of content has been sitting in limbo for over a day — action items not tracked, decisions not logged, follow-ups not sent. The age-ordered list ensures that Dr. Lewis addresses the oldest issues first, preventing long-running failures from being obscured by newer, more visible ones.

## System Dependencies

### Reads from
- Transcript registry (receipt status, processing status, HIPAA hold status for all meetings)
- Action item extractor log (extraction completion rate, Monday.com push status)
- Decision tracker log (tracking completion rate)
- Weekly summary builder log (draft completion timestamp)
- Routing audit log (distribution timestamp, delivery confirmation)
- Microsoft Outlook calendar (meeting inventory for receipt rate calculation)

### Writes to
- Pipeline health log: `/Meeting Intelligence/Pipeline Health/[Year]/Week-[nn]/`
- Dr. Lewis alert queue (failure modes above threshold → immediate notification)
- Weekly pipeline health report (delivered to Dr. Lewis; summarized in weekly summary if issues exist)

### HITL Required
- Any RED pipeline health score — Dr. Lewis must investigate before next meeting cycle
- Any PHI-in-output failure — Dr. Lewis immediate response required
- Any HIPAA_HOLD lasting >24 hours without action
- Any pattern of 3+ consecutive weeks with YELLOW or worse scores

## Test Cases

1. **Golden path:** A clean week: 11 meetings in calendar, 11 transcripts received (100%), all processed within 3 hours, 38 action items extracted and pushed to Monday.com (98% push success — one Monday.com API timeout recovered on retry), 7 decisions logged, summary delivered Friday 3:57 PM, two prep sheets delivered on time. Pipeline score: 97/100. All components GREEN. Weekly report filed to SharePoint. Dr. Lewis receives a one-line notification: "Pipeline GREEN this week — score 97/100."

2. **Edge case:** A Tuesday Allevio meeting transcript is received but sits in HIPAA_HOLD for 31 hours because Dr. Lewis was traveling and did not see the alert. The monitor detects the 24-hour threshold breach at the 25-hour mark, sends a second escalation to Dr. Lewis with elevated urgency, and flags the downstream impact: "Action items and follow-up for Allevio 2026-06-24 meeting are blocked pending HIPAA clearance. Friday summary Allevio section is at risk." This gives Dr. Lewis maximum time to clear the hold before the Friday deadline.

3. **Adversarial case:** Monday.com experiences an API outage Wednesday afternoon, causing 7 action item push failures across two entities. The monitor detects all 7 failures within 5 minutes of the routing attempts, logs them as PUSH_FAILED, alerts Dr. Lewis, and queues all 7 for retry. When Monday.com recovers 2 hours later, the retry batch pushes all 7 successfully. The health report logs the event as a transient failure (resolved within 4 hours), scores the component at 85% (7 initial failures / 40 total pushes), and marks the week as YELLOW. Dr. Lewis is provided the incident timeline for any follow-up with Monday.com support.

## Audit Log

Every pipeline health check logs the reporting period, component-by-component metrics, health score, failure events detected (with type, detection time, escalation time, and resolution time), and open issues remaining at report close. PHI failure events are logged with an extended record including the specific output type, how far the data traveled before detection, and the containment actions taken. All pipeline health logs are retained for 3 years; PHI failure logs for 7 years.

## Deprecation

This skill should be reviewed if the MBL meeting intelligence pipeline moves to a managed orchestration platform (such as Krista.ai's workflow engine or a dedicated operations platform) that includes native pipeline monitoring, alerting, and health dashboards. In that scenario, this skill's monitoring functions would be replaced by platform-native observability tools, though the PHI failure escalation logic and failure mode catalog should be re-implemented in the replacement platform before this skill is retired.
