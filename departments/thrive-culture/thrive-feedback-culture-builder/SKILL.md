---
name: thrive-feedback-culture-builder
description: "build feedback culture, truth-first feedback, COIN feedback model, feedback frequency standards, psychological safety for feedback, manager modeling feedback, 360 feedback cadence, feedback is a gift culture, specific vs vague feedback, entity CEO feedback norms, THRIVE feedback, MBL feedback standards, feedback training, feedback workshop, improve feedback quality, team feedback, peer feedback, upward feedback, downward feedback, feedback loop, continuous feedback, performance feedback, real-time feedback, feedback culture assessment"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [focus: frequency | quality | 360 | manager-modeling]"
---

# THRIVE Feedback Culture Builder

Building a truth-first feedback culture is the operational expression of THRIVE's Truth pillar. This skill helps MBL entities establish feedback norms, cadences, and language standards that make honest, timely, and specific feedback the default — not the exception.

## When to Use

- A manager or entity CEO asks how to improve the quality or frequency of feedback on their team
- A team is avoiding hard truths, giving vague feedback, or defaulting to silence during reviews
- An entity is rolling out or refreshing 360 feedback as part of a quarterly or annual cycle
- Dr. Lewis or Callie is building out THRIVE playbook content for manager development

## Feedback Culture Framework

```
THRIVE FEEDBACK CULTURE FRAMEWORK
==================================

SECTION 1 — THRIVE TRUTH ANCHOR
  Truth = the obligation to say what is real, not what is comfortable
  Feedback is the primary mechanism for making Truth operational
  Silence is not kindness — it is a Truth violation
  Entity default: feedback is expected, not exceptional

SECTION 2 — COIN FEEDBACK MODEL
  C — Context:   When / where the behavior occurred (specific, recent)
  O — Observation: What you actually saw or heard (not interpreted)
  I — Impact:    The real consequence on the team, client, or outcome
  N — Next:      What you want to see going forward (clear, actionable)
  Rule: every feedback exchange must include all four elements
  Vague feedback ("good job," "be more proactive") = COIN failure

SECTION 3 — FEEDBACK FREQUENCY STANDARDS
  Micro feedback:   Real-time or within 24 hours of the event
  Manager 1:1:      Weekly — at least one COIN item per session
  Formal review:    Quarterly — structured COIN documentation required
  360 cycle:        Semi-annual — peers, direct reports, upward all included
  Entity floor:     No team member should go >2 weeks without direct feedback

SECTION 4 — MANAGER MODELING REQUIREMENTS
  Managers must give feedback before asking for it
  Manager behavior is the culture — teams mirror what leaders do
  Entity CEOs model feedback with their direct reports on camera/in-meetings
  Matt Mathison standard: directness + specificity + care = the bar
  Dr. Lewis expectation: feedback is logged; vague feedback is flagged

SECTION 5 — 360 FEEDBACK CADENCE
  Participants: self, manager, peers (2-3), direct reports (if applicable)
  Timing: Q2 (June) and Q4 (December) aligned to performance cycle
  Format: COIN-structured written responses + numeric pillar rating (1-5)
  Owner: entity CEO coordinates; Dr. Lewis reviews aggregate trends
  Allevio: include clinical peer feedback on patient care accuracy
  HIVE: include field safety feedback from crew leads
  Column6: include client-facing peer feedback on account delivery

SECTION 6 — FEEDBACK DELIVERY RESPECT RULES
  Feedback is about behavior and outcomes — never personality or identity
  Disagreement with feedback = open dialogue; not defensive shutdown
  Positive feedback is not filler — it reinforces THRIVE behaviors explicitly
  Private by default; public only for recognition, never for correction
  HR escalation trigger: feedback that becomes personal, harassing, or retaliatory

SECTION 7 — CULTURE HEALTH SIGNALS
  Green:  Managers give unsolicited specific feedback weekly
  Yellow: Feedback is reactive only; surfaces during reviews not real-time
  Red:    Silence culture; criticism avoided; hard truths go unspoken
  Escalation: Yellow → Callie coaching; Red → entity CEO + Dr. Lewis review
```

## Output Format

```markdown
## THRIVE Feedback Culture Report — [Entity] — [Date]

### Culture Health Signal: [GREEN | YELLOW | RED]

### Feedback Frequency Assessment
- Micro feedback cadence: [status]
- Manager 1:1 COIN compliance: [%]
- 360 completion rate: [%]

### Top Feedback Gaps
1. [Gap with COIN element missing]
2. [Gap with frequency or specificity issue]
3. [Gap with manager modeling behavior]

### Recommended Actions
| Action | Owner | Timeline |
|--------|-------|----------|
| [action] | [person] | [date] |

### Escalation Status: [None | Callie | Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **Every feedback recommendation must be COIN-anchored.** Telling a manager to "give more feedback" without the COIN structure produces the same vague behavior the skill is designed to fix. The framework gives managers language and sequence so feedback is actionable the first time — reducing revision loops and increasing psychological safety for the recipient.

- **Frequency floors are non-negotiable minimums, not aspirational targets.** The two-week rule exists because research and MBL operational experience both show that feedback delayed beyond two weeks loses its connection to the triggering event — the recipient cannot course-correct on behavior they can no longer clearly recall. Frequency standards are set at the floor, not the ceiling.

- **The culture health signal must be reported with evidence, not intuition.** Assigning a RED/YELLOW/GREEN label without citing specific indicators (manager 1:1 data, 360 completion rates, HR complaint patterns) makes the assessment unfalsifiable and unusable for accountability. Entity CEOs need concrete signals to defend or challenge the rating in ops reviews.

## System Dependencies

### Reads from
- Monday.com: 1:1 meeting cadence logs, sprint retrospective notes
- Krista.ai: meeting transcripts for feedback language pattern analysis
- HR system: 360 completion rates, performance review timestamps, HR complaint log

### Writes to
- Monday.com: feedback culture action items, manager COIN coaching tasks
- Krista.ai: feedback culture report for entity CEO weekly summary
- Dr. Lewis review queue: RED-signal entity alerts

### HITL Required
- Dr. Lewis approves all RED-signal culture assessments before entity CEO delivery
- Entity CEO approves 360 participant lists and timing before launch
- Matt Mathison notified when entity sustains RED signal for >4 weeks

## Test Cases

1. **Golden path:** Column6 entity CEO requests a feedback culture assessment. Skill runs COIN compliance check, finds 1:1 cadence at 80%, 360 completion at 75%, and identifies vague positive feedback as the top gap. Outputs YELLOW signal with three targeted COIN coaching actions assigned to the two managers with lowest specificity scores.

2. **Edge case:** HIVE field team has no formal 360 process and crew leads are uncomfortable with structured feedback due to field culture norms. Skill adapts frequency standards to field context, recommends informal COIN micro-feedback training for crew leads, and flags that the 360 cadence should be introduced in Q4 after foundational norms are set — not forced immediately.

3. **Adversarial:** A manager submits a 360 response that contains personal attacks on a direct report framed as "feedback." Skill flags the response as a Respect + Integrity violation, removes it from the 360 dataset, triggers HR escalation, and notifies entity CEO and Dr. Lewis. The feedback is not delivered to the recipient.

## Audit Log

All feedback culture assessments, COIN compliance reports, 360 launch events, and escalation decisions are logged with timestamp, entity, assessor identity, and action taken. Logs are retained for 24 months to support trend analysis, entity performance reviews, and any HR or legal investigation that references the feedback record. Dr. Lewis reviews aggregate audit trends quarterly.

## Deprecation

This skill is reviewed semi-annually by Dr. Lewis and Callie. It is deprecated when the COIN model is replaced by a successor framework adopted across MBL entities, or when the 360 cadence is fully automated within Krista.ai with native COIN scoring. Deprecation requires sign-off from both Dr. Lewis and Matt Mathison.
