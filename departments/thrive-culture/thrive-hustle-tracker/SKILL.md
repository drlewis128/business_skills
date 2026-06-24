---
name: thrive-hustle-tracker
description: "hustle tracker, execution velocity, delivery rate, commitments made vs kept, velocity scoring, self-initiated work tracking, hustle KPIs, sprint output tracking, urgency signals, HIVE production pace, Column6 IO velocity, Allevio care coordination speed, MBL hustle metrics, track hustle, measure hustle, hustle dashboard, team velocity, individual delivery rate, commitment tracking, hustle pillar, THRIVE hustle, execution metrics, output tracking, pace tracking, initiative tracking, throughput tracking"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [period: weekly | monthly | quarterly]"
---

# THRIVE Hustle Tracker

Hustle is the THRIVE pillar that separates intention from execution. This skill measures and visualizes delivery rate, self-initiated output, and velocity signals across MBL entities — providing entity CEOs and Dr. Lewis with an objective, data-backed view of whether teams are executing at MBL standard.

## When to Use

- An entity CEO or Dr. Lewis needs a weekly or monthly view of team execution velocity
- Sprint retrospectives reveal pattern of missed commitments without a structured tracking lens
- A specific role or team is perceived as low-urgency and the data needs to confirm or challenge that perception
- Matt Mathison requests an execution summary for a portfolio ops review

## Hustle Tracker Framework

```
THRIVE HUSTLE TRACKER FRAMEWORK
=================================

SECTION 1 — CORE HUSTLE METRICS DEFINITIONS
  Delivery Rate:       Commitments completed on time / total commitments made (target: ≥95%)
  Velocity Score:      Story points or output units delivered per sprint / period
  Self-Initiation Rate: Tasks created by individual (not assigned) / total tasks worked
  Escalation Lead Time: Hours between when a miss was identified vs. when it was escalated
  Response Time:       Average time from request receipt to first meaningful response

SECTION 2 — ENTITY-SPECIFIC HUSTLE BENCHMARKS
  MBL HoldCo:
    - Commitment delivery rate: ≥95%
    - Self-initiated project proposals per quarter: ≥1 per manager
    - Ops review action item closure rate: ≥90% by next meeting
  Allevio:
    - Care coordination turnaround: <4 hours for non-urgent; <30 min for urgent
    - Authorization processing speed: per payer SLA + 10% buffer
    - Clinical intake velocity: new member onboarding <48 hours from referral
  HIVE Partners:
    - BOE production vs. plan: ≥95% of monthly target
    - Field response time (equipment issue): <2 hours to first response
    - LP reporting delivery: on or before stated date, zero exceptions
  Column6:
    - IO execution velocity: campaign live within agreed start date ±1 business day
    - Client response SLA: <4 hours during business hours
    - Reporting delivery: 100% on-time; no client-triggered chase emails

SECTION 3 — VELOCITY SCORING MODEL
  Score 5 (Exceptional):  >100% delivery rate; proactive delivery before deadline
  Score 4 (Strong):       95-100% delivery; no missed commitments in period
  Score 3 (Acceptable):   85-94% delivery; misses escalated before deadline
  Score 2 (Below Standard): 75-84%; misses not escalated; reactive pattern
  Score 1 (Unacceptable): <75%; pattern of missed commitments without ownership

SECTION 4 — SELF-INITIATION TRACKING
  Self-initiation = work started without being assigned by a manager
  Indicator of ownership culture, not just compliance culture
  Logged from: Monday.com task creator field; Krista.ai meeting action items self-assigned
  Low self-initiation = symptom of disengagement or unclear mandate — investigate root cause
  Entity CEOs expected to self-initiate ≥2 strategic items per month

SECTION 5 — URGENCY SIGNALS (QUALITATIVE OVERLAY)
  Positive urgency signals: early escalation, self-reassignment when blocked, after-hours follow-through on critical items
  Negative urgency signals: waiting to be asked, "I was going to get to that," no escalation before a miss
  Signal source: manager observation, Krista.ai transcript pattern, Monday.com timestamp analysis

SECTION 6 — HUSTLE REVIEW CADENCE
  Weekly: delivery rate snapshot shared in entity ops standup
  Monthly: velocity score + self-initiation rate in entity CEO review
  Quarterly: hustle pillar rating per individual (1-5) as input to performance review
  Matt Mathison summary: monthly entity-level delivery rate in portfolio ops deck
```

## Output Format

```markdown
## THRIVE Hustle Tracker — [Entity] — [Period]

### Entity Delivery Rate: [X%] (Target: ≥95%)
### Velocity Score: [1-5] — [Exceptional | Strong | Acceptable | Below Standard | Unacceptable]

### Individual Delivery Rates
| Name | Role | Commitments Made | On-Time | Rate | Self-Initiated |
|------|------|-----------------|---------|------|---------------|
| [name] | [role] | [#] | [#] | [%] | [#] |

### Hustle Gaps (Score ≤2)
- [Name]: [specific pattern — missed commitments, low self-initiation, late escalation]

### Urgency Signal Summary
- Positive: [examples]
- Negative: [examples]

### Recommended Actions
| Action | Owner | Due |
|--------|-------|-----|
| [action] | [person] | [date] |

### Escalation: [None | Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **Delivery rate is measured on commitments, not effort.** A team member who works hard but consistently delivers at 80% is not meeting MBL's Hustle standard — because output is what clients, LPs, and patients experience, not effort. The tracker surfaces this distinction explicitly so managers cannot substitute activity narratives for delivery data when discussing performance.

- **Self-initiation rate is tracked separately because it measures ownership culture, not just compliance.** A team where everyone only does what they are assigned is a managed team, not a high-performance team. The self-initiation metric gives entity CEOs a leading indicator of whether individuals are operating as owners or as employees — a critical signal for succession planning and role leveling.

- **Entity-specific benchmarks are not interchangeable.** Allevio's care coordination speed is a patient safety metric; HIVE's field response time is a safety and production metric; Column6's IO velocity is a client retention metric. Using a single generic benchmark across entities would produce misleading comparisons. Each entity's Hustle floor is calibrated to the operational consequence of a miss in that business.

## System Dependencies

### Reads from
- Monday.com: task creation timestamps, completion dates, assignee fields, creator fields
- Krista.ai: action items from meeting transcripts, escalation flags
- HIVE Covercy: BOE production actuals vs. plan
- Column6 internal: IO start dates, campaign launch actuals, client SLA log

### Writes to
- Monday.com: hustle gap action items, coaching tasks for entity CEO
- Krista.ai: weekly hustle snapshot for entity CEO briefing
- Portfolio ops deck: monthly entity delivery rate input (Matt Mathison)

### HITL Required
- Entity CEO reviews individual scores at ≤2 before they are shared with the individual
- Dr. Lewis approves entity-level Score 1 designation before it enters the ops deck
- Matt Mathison notified when any entity sustains below-standard velocity for >30 days

## Test Cases

1. **Golden path:** MBL HoldCo requests a monthly hustle report. Skill pulls Monday.com data, calculates delivery rates per person, identifies one manager at 82% with zero self-initiated tasks, outputs Score 2 with a recommended 1:1 coaching conversation, and generates the ops deck input for Matt Mathison.

2. **Edge case:** HIVE's BOE data is delayed from Covercy due to a reporting lag. Skill flags the data gap, estimates velocity from field supervisor log submissions, marks the metric as provisional, and notifies Dr. Lewis to validate before the entity CEO review.

3. **Adversarial:** A manager manipulates Monday.com task completion by marking tasks done before they are actually delivered, inflating the delivery rate. Skill cross-references completion dates against client delivery confirmations and Krista.ai meeting notes — flags a mismatch as a potential Integrity issue and routes to entity CEO + Dr. Lewis for investigation.

## Audit Log

All hustle data pulls, velocity scores, individual delivery rate calculations, and escalation events are logged with data source, timestamp, entity, and the identity of the reviewer who approved Score ≤2 designations. Audit logs are retained for 18 months and reviewed by Dr. Lewis as part of the quarterly performance cycle to detect gaming, data quality issues, or systemic delivery problems across entities.

## Deprecation

This skill is deprecated when hustle tracking is fully automated within Monday.com and surfaced natively in the Krista.ai ops dashboard without manual skill invocation. Deprecation requires Dr. Lewis confirmation that the replacement system covers all five entity-specific benchmark sets and the self-initiation rate metric with equivalent data fidelity.
