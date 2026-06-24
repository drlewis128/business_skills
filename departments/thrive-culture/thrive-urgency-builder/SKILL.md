---
name: thrive-urgency-builder
description: "urgency builder, ownership culture, response time, decision speed, escalation speed, ownership vs delegation, not my job THRIVE violation, accountability before authority, entity urgency standards, Allevio patient wait time, HIVE field response, Column6 client response SLA, build urgency culture, team urgency, urgency training, urgency expectations, urgency norms, urgency assessment, urgency gaps, slow response time, build ownership, ownership mindset, MBL urgency standard, hustle urgency, decision urgency, escalation urgency"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [dimension: response-time | decision-speed | escalation | ownership]"
---

# THRIVE Urgency Builder

Urgency is not stress — it is the operating velocity that THRIVE's Hustle pillar demands. This skill helps entity CEOs and managers define, communicate, and enforce urgency standards across MBL entities — calibrated to the specific operational consequences of slow response in each business context.

## When to Use

- A team is moving at a pace inconsistent with the entity's competitive or operational requirements
- "Not my job" thinking is showing up in team behavior, indicating an ownership culture gap
- Response times to clients, LPs, patients, or internal requests are drifting beyond acceptable thresholds
- An entity CEO wants to reset urgency culture after a slow period, leadership change, or integration event

## Urgency Builder Framework

```
THRIVE URGENCY BUILDER FRAMEWORK
==================================

SECTION 1 — URGENCY DEFINED (THREE DIMENSIONS)
  Response Time:   Time from receiving a request to providing a meaningful first response
  Decision Speed:  Time from problem identification to actionable decision by the accountable owner
  Escalation Speed: Time from recognizing a risk or blocker to surfacing it up the chain
  All three must be fast — urgency is not just responsiveness; it is proactive speed across the system

SECTION 2 — OWNERSHIP VS. DELEGATION CULTURE
  Ownership culture:    "I will figure out who needs to know and make it happen"
  Delegation culture:   "That's not my area — someone else will handle it"
  "It's not my job" = THRIVE Hustle violation + potential Respect violation
  Ownership does not require authority — it requires accountability before asking for permission
  Escalate up; never let something fall through a gap because of org chart lines
  MBL standard: if you see it, you own it until you formally hand it off with confirmation

SECTION 3 — ENTITY-SPECIFIC URGENCY STANDARDS
  MBL HoldCo:
    - Internal email/Slack response: <4 hours during business hours
    - Decision turnaround (with full information): <24 hours
    - Escalation to Matt Mathison: same-day for material issues; next-business-day for standard
  Allevio:
    - Patient-facing urgent request: <30 minutes first response
    - Non-urgent care coordination request: <4 hours
    - Member complaint: acknowledged within 1 hour; resolved <48 hours
    - Authorization delay → payer escalation: <24 hours from identification
  HIVE Partners:
    - Field equipment failure: <2 hours to first response; escalation within 4 hours
    - LP question or concern: <24 hours response; same-day for material financial questions
    - WTI price trigger ($58/bbl): decision framework activated within 1 business day
    - Safety incident: immediate escalation; no delay threshold
  Column6:
    - Client message during business hours: <4 hours
    - Campaign performance alert (>15% miss): same-day client notification
    - IO or billing dispute: acknowledged <2 hours; resolved <48 hours
    - Gross margin alert (<35%): same-day entity CEO notification

SECTION 4 — ACCOUNTABILITY BEFORE AUTHORITY
  Do not wait for permission to take action within your domain
  Do not wait for authority you don't have — escalate immediately if action requires it
  The failure mode: "I didn't do anything because I wasn't sure if I was supposed to"
  MBL expectation: act within your domain; escalate at the boundary; never let it sit
  Entity CEOs hold full accountability for their entity — waiting for HoldCo permission is rarely correct

SECTION 5 — URGENCY CULTURE HEALTH SIGNALS
  Green:  Team self-escalates before being asked; response times within standard; no ownership gaps
  Yellow: Reactive urgency only; team responds when pushed but not proactively
  Red:    "Not my job" language active; response times chronic; escalations arrive late
  Red signal = entity CEO + Dr. Lewis 1:1 within 5 business days

SECTION 6 — URGENCY NORMS IN MEETINGS
  Every meeting ends with: owner, action, due date — no exceptions
  Open items from prior meeting reviewed first — not mid-deck
  "I'll look into it" is not an action item — specificity required
  Entity CEO models urgency by closing their own items before the next meeting

SECTION 7 — BUILDING URGENCY IN NEW TEAM MEMBERS
  Urgency standards communicated in offer letter context and onboarding Day 1
  First 30 days: manager reinforces urgency expectations at each 1:1
  First 90 days: urgency self-assessment included in 90-day review
  Urgency norms embedded in role description, not just culture documents
```

## Output Format

```markdown
## THRIVE Urgency Culture Assessment — [Entity] — [Date]

### Urgency Health Signal: [GREEN | YELLOW | RED]

### Response Time Compliance
| Dimension | Standard | Current Average | Status |
|-----------|----------|----------------|--------|
| Internal response | <4h | [X]h | [OK/MISS] |
| Client/LP/Patient response | [entity SLA] | [X]h | [OK/MISS] |
| Escalation speed | Same-day | [X]h avg | [OK/MISS] |

### Ownership Culture Signals
- Positive: [examples of proactive ownership observed]
- Negative: [examples of "not my job" or ownership gaps]

### Urgency Gaps by Role
| Role | Gap Type | Specific Pattern |
|------|----------|-----------------|
| [role] | [response | decision | escalation | ownership] | [pattern] |

### Recommended Actions
1. [Specific urgency standard to reset or communicate]
2. [Coaching action for identified gap]
3. [System or process change to reduce response latency]

### Escalation: [None | Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **Urgency standards are entity-specific because the cost of a miss is entity-specific.** A 4-hour response to an Allevio patient safety concern is clinically unacceptable; the same response time to an internal MBL HoldCo scheduling question is fine. Collapsing urgency into a single standard across entities either creates unnecessary stress in lower-stakes contexts or under-prepares teams for the operational reality of their specific business. Each entity's urgency floor is calibrated to what a miss actually costs.

- **"Not my job" is treated as a THRIVE violation, not a personal preference, because organizations fail at seams.** Every significant operational failure in complex organizations is traceable to a moment where someone saw a problem and decided it was someone else's responsibility. MBL's Hustle + Respect pillars together require that individuals close gaps they identify — or formally hand them off with confirmation. The skill enforces this because the alternative is a culture where problems accumulate at org chart boundaries.

- **Urgency culture assessments must include behavioral evidence, not just response time data.** Time-stamp data shows what happened; behavioral patterns show why. A team with good average response times but persistent "not my job" language is a yellow-signal team building toward a red event. The output contract requires both quantitative SLA compliance and qualitative ownership signal assessment so entity CEOs get the full picture.

## System Dependencies

### Reads from
- Krista.ai: meeting transcripts for ownership language patterns, action item closure rates
- Monday.com: task assignment patterns, open item age, escalation timestamps
- Email/Teams logs (via M365): response time analysis for internal and external communications

### Writes to
- Monday.com: urgency gap action items, onboarding urgency checklist tasks
- Krista.ai: weekly urgency signal for entity CEO briefing
- Entity CEO 1:1 agenda: RED-signal urgency items inserted automatically

### HITL Required
- Entity CEO reviews RED urgency designation before Dr. Lewis is notified
- Dr. Lewis approves entity-wide urgency reset communications before distribution
- Matt Mathison notified when entity RED signal persists >2 weeks

## Test Cases

1. **Golden path:** Allevio entity CEO requests an urgency culture assessment. Skill analyzes care coordination response times, identifies that urgent patient requests average 1.2 hours (vs. 30-minute standard), surfaces two care coordinators with consistent ownership gaps, and generates a reset communication with entity-specific urgency standards for Day 1 onboarding.

2. **Edge case:** HIVE field team has excellent equipment response times but the office team (LP relations, reporting) is consistently slow on LP communications. Skill segments the assessment by sub-team, identifies the office-specific gap, and recommends a targeted urgency reset for the non-field roles without disrupting the field team's already-strong culture.

3. **Adversarial:** A Column6 manager claims all client response times are within SLA, but client emails reviewed via M365 show an average of 7 hours. The manager has been logging responses to internal Slack confirmations (not client-facing responses) as the metric. Skill flags the measurement mismatch, corrects the metric definition, and routes the data discrepancy to the entity CEO as a potential Integrity concern.

## Audit Log

All urgency assessments, SLA compliance calculations, ownership culture findings, and RED/YELLOW designations are logged with data source, timestamp, entity, reviewer, and escalation outcomes. Entity-specific SLA standards used in each assessment are versioned so historical comparisons account for any standard changes over time. Dr. Lewis reviews urgency trends quarterly alongside hustle tracker data.

## Deprecation

This skill is deprecated when entity-specific urgency SLAs are fully embedded in Monday.com automation rules and Krista.ai alert systems — with real-time SLA breach notification to entity CEOs without manual skill invocation. Deprecation requires Dr. Lewis sign-off confirming that the automated system covers ownership culture signals (not just timestamp data).
