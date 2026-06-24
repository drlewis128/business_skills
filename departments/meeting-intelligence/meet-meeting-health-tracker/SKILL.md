---
name: meet-meeting-health-tracker
description: "track meeting health, meeting efficiency metrics, meeting kpi dashboard, on-time start rate meetings, action item completion rate, decision rate per meeting, meeting cost tracking, entity meeting health, matt mathison meeting stats, recurring meeting roi, unhealthy meeting patterns, too many attendees meeting, no decisions meeting, agenda drift tracking, weekly meeting health report, meeting health dashboard, meeting performance metrics, meeting quality tracker, meeting effectiveness kpi, meeting health mbl entities"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[entity name and date range, or 'all entities' for weekly health report]"
---

# Meeting Health Tracker

This skill maintains and reports on the operational health of MBL's meeting portfolio by tracking quantitative efficiency metrics across all entities and all meeting types. It produces a weekly meeting health report for Dr. Lewis and flags unhealthy patterns before they compound — turning meeting data into a management signal rather than just a historical record.

## When to Use

- A weekly meeting health report is due for Dr. Lewis (or for the weekly summary appendix)
- An entity's meeting efficiency has shown a concerning trend that needs investigation
- Matt Mathison wants to understand his own meeting portfolio performance stats
- A recurring meeting is under evaluation and its historical efficiency data is needed for the optimization decision

## Meeting Health Tracker Framework

```
CORE HEALTH KPIs
─────────────────────────────
Track the following metrics per entity and per meeting type, weekly:

1. ON-TIME START RATE
   Definition:  % of meetings that started within 5 minutes of scheduled start
   Source:      Krista.ai recording start timestamp vs. calendar invite start time
   Target:      ≥90%
   Red flag:    <70% — systematic lateness indicates meeting culture problem

2. ACTION ITEM COMPLETION RATE
   Definition:  % of action items created in meeting that are marked complete by their due date
   Source:      Action item registry — compare creation date + due date + completion date
   Target:      ≥80% on-time completion
   Red flag:    <60% — systemic execution failure; may indicate overcommitment or unclear ownership

3. DECISION RATE PER MEETING
   Definition:  Average number of decisions logged per meeting-hour
   Source:      Decision registry — decision count / meeting duration in hours
   Target:      ≥1.0 decisions per meeting-hour for DECISION and REVIEW type meetings
   Red flag:    0.0 for 2+ consecutive meetings — meeting produces no decisions

4. MEETING COST (ESTIMATED)
   Definition:  Estimated cost per meeting using standard hourly rates (from meet-meeting-optimizer)
   Source:      Attendee list × duration × rates
   Tracked:     Per meeting, per entity, per week — total and Matt Mathison-specific
   Flag:        Meeting cost > $2,000/hr without corresponding decision output

5. AGENDA ADHERENCE RATE
   Definition:  % of meetings that had a formal agenda attached to the calendar event
   Source:      Outlook calendar event inspection (attachment or description with agenda structure)
   Target:      100%
   Red flag:    <80% — meetings are running without defined outcomes

6. FOLLOW-UP TIMELINESS
   Definition:  % of meetings that received a follow-up email within 2 hours of end
   Source:      Follow-up generator log — send timestamp vs. meeting end timestamp
   Target:      ≥90%
   Red flag:    <70% — meeting outputs are not being captured in the accountability window

UNHEALTHY MEETING PATTERNS
─────────────────────────────
Flag any meeting or entity that shows:
  A. TOO MANY ATTENDEES:   Meeting with >8 attendees that is not All-Hands or Board
  B. NO DECISIONS:          DECISION-type meeting with 0 decisions for 2+ consecutive occurrences
  C. AGENDA DRIFT:          Transcript topic segments exceed stated agenda items by >50%
  D. CHRONIC LATENESS:      Meeting starts late >50% of the time over a 4-week period
  E. ACTION ITEM DECAY:     Entity action item completion rate declining for 3+ consecutive weeks
  F. MATT OVERLOAD:         Matt Mathison attending >20 hours of meetings in a single week

ENTITY-LEVEL HEALTH DASHBOARD
─────────────────────────────
Weekly snapshot per entity:
  - Total meetings held: [n]
  - Total meeting hours: [n hrs]
  - Estimated total cost: $[amount]
  - On-time start rate: [n%]
  - Action item completion rate: [n%]
  - Avg decisions per meeting-hour: [n]
  - Agenda adherence: [n%]
  - Follow-up timeliness: [n%]
  - Patterns flagged: [list or "None"]

MATT MATHISON MEETING PORTFOLIO
─────────────────────────────
Weekly stats for Matt Mathison specifically:
  - Total meetings attended: [n]
  - Total meeting hours: [n hrs]
  - Estimated cost of Matt's time in meetings: $[amount]
  - Meetings where he was the decision maker: [n]
  - Decisions he made: [n]
  - Action items assigned to him: [n] created, [n] completed on time
```

## Output Format

```markdown
# Meeting Health Report — Week of [DATE RANGE]
**Prepared by:** Dr. John Lewis | For: Internal Review
**Scope:** All MBL Entities

---

## EXECUTIVE SUMMARY
- [1–2 sentence overall health statement]
- Patterns flagged this week: [n] | High severity: [n]

---

## ENTITY HEALTH DASHBOARD

| Entity | Meetings | Hours | Cost | On-Time | AI Completion | Decisions/hr | Agenda Adherence |
|--------|---------|-------|------|---------|---------------|-------------|-----------------|
| MBL HoldCo | [n] | [n] | $[k] | [n%] | [n%] | [n] | [n%] |
| Allevio | [n] | [n] | $[k] | [n%] | [n%] | [n] | [n%] |
| HIVE | [n] | [n] | $[k] | [n%] | [n%] | [n] | [n%] |
| Column6 | [n] | [n] | $[k] | [n%] | [n%] | [n] | [n%] |

---

## MATT MATHISON — MEETING PORTFOLIO
- Meetings attended: [n] | Hours: [n] | Est. cost of his time: $[amount]
- Decisions made: [n] | Action items assigned: [n created / n completed on-time]
- ⚠️  OVERLOAD FLAG: [TRIGGERED — [n] hrs | NOT TRIGGERED]

---

## FLAGGED PATTERNS

| Pattern | Entity | Meeting | Severity | Recommended Action |
|---------|--------|---------|----------|-------------------|
| [Pattern A-F] | [entity] | [meeting name] | [High/Medium] | [action] |

---

## TREND (4-WEEK)
- Action item completion: [trend arrow + %]
- On-time start rate: [trend arrow + %]
- Decision rate: [trend arrow + rate]

---
*Next report: [Date] | Archive: SharePoint /Meeting Intelligence/Health Reports/*
```

## Output Contract

- **Every metric must be computed from actual data — estimated or imputed values must be clearly labeled.** When follow-up logs or Krista.ai timestamps are unavailable for a specific meeting, the metric for that meeting must be marked as DATA UNAVAILABLE rather than excluded silently or imputed with an assumption. Presenting a 94% on-time start rate when two meetings had no timestamp data is a false precision that misleads the management signal. Transparency about data gaps preserves the integrity of the health report as a reliable indicator.

- **Matt Mathison overload must be flagged whenever his weekly meeting hours exceed 20 — this is a non-negotiable alert, not a suggestion.** At MBL's scale, Matt Mathison's strategic attention is the primary driver of value creation. More than 20 hours per week in meetings means less than 20 hours for strategic thinking, relationship development, and portfolio direction. The overload flag is not a judgment on his schedule — it is a signal that Dr. Lewis uses to proactively identify which meetings Matt can shed, delegate, or convert to async. The flag must fire reliably to be useful.

- **Flagged patterns must include a specific recommended action, not just an observation.** "Column6 has a low action item completion rate" is a health reading. "Column6 action item completion rate has been below 60% for 3 consecutive weeks — recommend Dr. Lewis review open item ownership with the Column6 ops lead and escalate to Matt if systemic" is a recommendation. The pattern flag exists to trigger action, not to generate data for its own sake. A report full of flags without actions trains the reader to ignore the flags.

## System Dependencies

### Reads from
- Transcript registry (meeting count, duration, on-time start via Krista.ai timestamps)
- Action item registry (completion rate tracking)
- Decision registry (decision count per meeting)
- Outlook calendar (agenda presence check per meeting event)
- Follow-up generator log (follow-up timeliness)
- MBL staff directory (attendee roles for cost calculation)

### Writes to
- Meeting health log: `/Meeting Intelligence/Health Reports/[Year]/Week-[nn]/`
- Alert queue (High-severity patterns → Dr. Lewis immediate notification)
- Weekly summary input queue (health summary for appendix or footnote)

### HITL Required
- Matt Mathison overload flag — Dr. Lewis decides whether and how to raise it with Matt
- High-severity pattern flags before they are included in any communication to entity CEOs
- Any metric where data availability is <70% for the week (data quality threshold)

## Test Cases

1. **Golden path:** A standard week across all four entities: 12 meetings held, 11 had agendas, 10 started on time, 8 of 10 action items due this week were completed, average 1.3 decisions per meeting-hour. Matt Mathison attended 15 hours of meetings (below overload threshold). No patterns flagged. Health report shows all green metrics, a clean Matt portfolio, and a stable 4-week trend. Report is generated, filed to SharePoint, and a one-line summary is added to the weekly meeting intelligence summary appendix.

2. **Edge case:** The Allevio transcript data for the week is partially unavailable — 3 of 5 Allevio meetings have Krista.ai timestamps, but 2 do not. The health report flags Allevio on-time start rate as PARTIAL DATA (3/5 meetings). Action item completion and decision rate are computed only from the 3 available transcripts. The report clearly marks Allevio metrics as PARTIAL and notes the 2 missing transcript sources for Dr. Lewis to investigate.

3. **Adversarial case:** A Column6 recurring meeting has 0 decisions in 6 consecutive meeting occurrences, and the action item completion rate for Column6 has dropped from 82% to 47% over 4 weeks. The tracker fires two High-severity pattern flags: Pattern B (no decisions in DECISION-type meeting) and Pattern E (action item completion rate declining 3+ consecutive weeks). Dr. Lewis receives an immediate alert rather than waiting for the Friday report. The alert recommends either an urgent meeting portfolio review for Column6 or a direct conversation with the Column6 CEO.

## Audit Log

Every health report run logs the reporting week, entities covered, metrics computed, data availability rate per entity, patterns flagged, severity levels, and Dr. Lewis review timestamp. Matt Mathison overload alerts are logged separately with the week's meeting hours total. Logs are stored in the MBL AI audit trail with a 2-year retention minimum.

## Deprecation

This skill should be reviewed if MBL adopts a meeting analytics platform that tracks these KPIs natively with calendar and transcript integration (e.g., Clockwise Analytics, Gong, or a future Krista.ai feature). In that scenario, the metric calculation and dashboard functions may be replaced by platform-native reporting, though the pattern flagging logic and Matt Mathison overload alert should be preserved in any replacement before this skill is retired.
