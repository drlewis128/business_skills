---
name: thrive-execution-standards
description: "execution standards, hustle standards, commitment keeping rate, what done means, deadline protocol, escalation before miss, self-initiation expectation, output vs activity, execution review, Matt Mathison execution standard, 95 percent delivery, done not almost done, MBL execution, execution culture, performance standards, commitment standard, delivery standard, on-time delivery, execution expectations, ops meeting execution review, execution accountability, execution norms, define done, output culture, activity vs outcome"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [output: standards-doc | review | gap-analysis]"
---

# THRIVE Execution Standards

Execution is THRIVE's Hustle pillar made concrete. This skill defines, documents, and enforces MBL's execution expectations — including what "done" means, how deadlines are treated, when and how to escalate before a miss, and how to distinguish output (what matters) from activity (what doesn't).

## When to Use

- An entity CEO needs to set or reset execution expectations with their team
- An ops meeting reveals a pattern of "almost done," scope-creep, or deadline drift
- A new manager or key hire needs to understand MBL's delivery standard from day one
- Dr. Lewis or Matt Mathison requests an execution standards review for a specific entity

## Execution Standards Framework

```
THRIVE EXECUTION STANDARDS FRAMEWORK
======================================

SECTION 1 — THE MBL EXECUTION STANDARD
  Baseline expectation: 95% commitment-keeping rate — no rounding down
  "Almost done" is not done — done means the deliverable is received and usable
  Deadlines are commitments; commitments are promises; broken promises are tracked
  Matt Mathison standard: "Tell me you can't hit it before the deadline, not after"
  Dr. Lewis standard: every deliverable has a clear owner, format, and due date

SECTION 2 — DEFINING "DONE"
  Done = the output is complete, reviewed by the owner, and delivered to the recipient
  Done ≠ "in progress," "nearly finished," "waiting on one thing," "sent for review"
  Definition of done is set at commitment-making time — not at delivery time
  Any ambiguity about what done looks like = commitment cannot be made
  Entity-specific done definitions:
    Allevio:  Care plan complete + member notified + documentation logged
    HIVE:     Report submitted + confirmed received by LP or operator
    Column6:  Campaign live + pacing confirmed + client notified
    MBL:      Deliverable submitted + acknowledged by recipient (not just sent)

SECTION 3 — DEADLINE PROTOCOL
  Deadlines are set with: specific date, specific time, specific format, specific recipient
  Ambiguous deadlines ("end of week," "soon," "ASAP") are not deadlines — renegotiate
  Owner is responsible for managing their own dependencies — not waiting to be unblocked
  If a dependency creates risk: owner escalates ≥48 hours before the deadline
  Deadline extension requires: reason + new date + approval from recipient (not just notice)

SECTION 4 — ESCALATION BEFORE THE MISS (NOT AFTER)
  The MBL rule: escalate when you know you're at risk — not when you've already missed
  Escalation is not failure — it is execution intelligence
  Waiting until after a miss = THRIVE Hustle violation, not just a performance issue
  How to escalate: "I committed to X by [date]. I'm at risk because [reason]. My new estimate is [date]. Do you want me to adjust scope or get help?"
  Escalation chain: task owner → manager → entity CEO → Dr. Lewis

SECTION 5 — SELF-INITIATION EXPECTATION
  MBL does not manage people to their full job description — they own it
  Self-initiation = identifying and starting needed work without being assigned
  Minimum expectation: every individual surfaces ≥1 self-initiated improvement per quarter
  Managers: ≥2 self-initiated strategic items per month
  Entity CEOs: self-initiation is the default operating mode, not the exception

SECTION 6 — OUTPUT VS. ACTIVITY DISTINCTION
  Output: a deliverable that creates value for a client, LP, patient, or team
  Activity: time spent on work (meetings, research, planning, coordination)
  MBL rewards output; activity without output is a Hustle failure
  Activity reporting ("I was in meetings all day") is not an execution report
  Ops review format: results delivered, not hours worked

SECTION 7 — EXECUTION REVIEW IN OPS MEETINGS
  Every ops meeting opens with: "What did we commit to? What did we deliver?"
  Undelivered commitments: reason + new date + owner — in that order
  Pattern of misses (≥2 in a row from same person): triggers 1:1 coaching
  Pattern of misses (team-wide): triggers entity CEO + Dr. Lewis root-cause review
  Matt Mathison expectation: ops deck shows delivery rate every week — no exception
```

## Output Format

```markdown
## THRIVE Execution Standards Review — [Entity] — [Date]

### Current Delivery Rate: [X%] (Standard: ≥95%)
### Execution Health: [MEETS STANDARD | BELOW STANDARD | CRITICAL]

### "Done" Definition Gaps
- [Deliverable or role where done is ambiguous or inconsistently applied]

### Deadline Protocol Violations (Last 30 Days)
| Owner | Commitment | Due Date | Status | Escalated Before Miss? |
|-------|-----------|----------|--------|----------------------|
| [name] | [item] | [date] | [missed/late] | [Yes/No] |

### Output vs. Activity Ratio Assessment
- High-output roles: [names]
- Activity-heavy, low-output roles: [names + pattern]

### Recommended Standards Resets
1. [Specific standard to re-communicate and enforce]
2. [Specific standard to re-communicate and enforce]
3. [Specific standard to re-communicate and enforce]

### Escalation: [None | Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **The 95% commitment-keeping rate is the floor, not the average.** Setting it as a target implies that missing 5% of commitments is an acceptable operating state. It is not. The 95% floor means that every miss is investigated, not normalized. The standard is stated this way because MBL's value to LPs, clients, and patients depends on organizations that do what they say — and doing what you say 19 times out of 20 is not a rounding error; it is 1 in 20 failures that compounds across a portfolio.

- **Escalation before the miss is a Hustle signal, not a failure signal.** The distinction matters because organizations that penalize early escalation train people to hide problems until they explode. MBL explicitly reframes early escalation as execution intelligence — the skill enforces this framing in every output so managers internalize that they should celebrate early escalation, not tolerate it as bad news.

- **Activity is not reported as a proxy for output in any MBL execution review.** This rule exists because activity reporting is the primary mechanism by which underperformance hides in organizations. A person who attends 30 meetings a week and delivers nothing is not executing — they are occupying space. Enforcing the output-only reporting standard in ops meetings removes the hiding place and creates clarity about who is creating value and who is not.

## System Dependencies

### Reads from
- Monday.com: task completion timestamps, commitment history, owner fields
- Krista.ai: ops meeting transcripts, action item lists, delivery confirmations
- Entity CEO calendar: ops review cadence confirmation

### Writes to
- Monday.com: execution standards action items, coaching tasks
- Krista.ai: delivery rate summary for weekly entity CEO briefing
- Matt Mathison ops deck: entity delivery rate input (weekly)

### HITL Required
- Entity CEO approves execution standards document before team distribution
- Dr. Lewis approves CRITICAL designation before it reaches Matt Mathison
- Matt Mathison reviews any entity at CRITICAL for >2 consecutive weeks

## Test Cases

1. **Golden path:** MBL HoldCo ops meeting reveals that three managers have a combined delivery rate of 88% over the last month. Skill generates an execution standards review, identifies two "done" definition gaps, flags that zero of four missed commitments were escalated before the miss, and produces a standards reset memo with specific re-communication actions for the entity CEO.

2. **Edge case:** HIVE's BOE production fell to 91% of plan due to a weather-related operational delay — a legitimate external cause. Skill flags the miss, verifies the external cause against field logs, adjusts the execution health rating to BELOW STANDARD (not CRITICAL), and notes the cause as non-recurring in the ops deck to prevent it from distorting the baseline.

3. **Adversarial:** A manager reports activity metrics (hours worked, meetings attended, calls made) in place of output metrics during the ops review. Skill flags the substitution, generates a redirect prompt asking for delivery data only, and logs the pattern for the entity CEO — noting that this is the second consecutive week of activity-only reporting, which triggers a coaching conversation.

## Audit Log

All execution standards reviews, delivery rate calculations, escalation events, and CRITICAL designations are logged with entity, date, reviewer, data source, and outcome. Missed commitment patterns are retained for 12 months to support performance reviews, PIP documentation, and entity CEO evaluations. Dr. Lewis reviews aggregate execution data monthly as part of portfolio ops oversight.

## Deprecation

This skill is deprecated when execution tracking is fully integrated into Monday.com dashboards and surfaced automatically in Krista.ai weekly briefings without manual invocation. Any deprecation requires Dr. Lewis confirmation that the automated system enforces all seven sections of this framework — including the self-initiation expectation and output vs. activity distinction.
