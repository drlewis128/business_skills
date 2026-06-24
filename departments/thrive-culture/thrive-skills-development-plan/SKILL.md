---
name: thrive-skills-development-plan
description: "thrive aligned development plan, build skills through thrive lens, thrive skills gap analysis, performance gap versus values gap, thrive learning objectives, development plan thrive pillar connection, callie skill development coordination, fitz testing development plan, portfolio learning investment tracking, skill development budget, roi of skill development value pillar, thrive employee growth plan, thrive career development, learning plan thrive values, thrive skills investment, employee development thrive connection, skills gap thrive analysis, learning method thrive, development plan success metric, thrive value pillar roi"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "<entity> <employee-name> <role> <development-focus>"
---

# THRIVE Skills Development Plan

A skills gap and a values gap look identical in a performance conversation and require entirely different interventions — this skill forces that diagnostic before a development plan is written. THRIVE-aligned development plans connect learning objectives to specific values pillars, ensuring that growth investments reinforce the culture as well as the capability.

## When to Use

- A manager needs to build a development plan for an employee with identified skill gaps
- A THRIVE assessment reveals a behavioral gap that may trace to a missing capability rather than a values failure
- Callie is designing a new playbook skill and needs the development plan template for coordination
- Dr. Lewis is reviewing portfolio-wide learning investment and needs entity-level development plan data

## THRIVE Skills Development Framework

```
THRIVE SKILLS DEVELOPMENT PLAN — [ENTITY] | [EMPLOYEE] | [ROLE] | [DATE]
═══════════════════════════════════════════════════════════════════════════════════

STEP 1 — DIAGNOSTIC: SKILLS GAP OR VALUES GAP?
─────────────────────────────────────────────────────
Before writing a development plan, answer these questions:

  SKILLS GAP (correct path = Development Plan):
    □ Does the employee understand what the expectation is?
    □ Have they been given the tools, training, and time to meet it?
    □ Is the gap in capability, not willingness?
    → If yes to all three: this is a Skills Gap. Proceed to Step 2.

  VALUES GAP (correct path = PIP or Separation; NOT a development plan):
    □ Does the employee know the expectation but choose not to meet it?
    □ Is the gap rooted in attitude, Integrity, or Respect failure?
    □ Has coaching been given and ignored?
    → If yes to any: this is a Values Gap. Route to thrive-pip-builder or HR.

  MIXED (Skills + Values): Treat Values component first. Only proceed with
  development plan once Values alignment is confirmed.

STEP 2 — THRIVE PILLAR MAPPING
─────────────────────────────────────────────────────
Map the skill gap to its primary THRIVE pillar:

  TRUTH     — Communication, transparency, reporting accuracy, data honesty
  HUSTLE    — Execution speed, follow-through, ownership, accountability
  RESPECT   — Stakeholder management, collaboration, client communication
  INTEGRITY — Process compliance, ethics, governance, HIPAA/CCPA, financial accuracy
  VALUE     — Output quality, ROI thinking, impact measurement, prioritization
  ENJOY     — Sustainability, team contribution, creative problem-solving

  Primary Pillar: ________________________
  Secondary Pillar (if applicable): ______

STEP 3 — DEVELOPMENT PLAN STRUCTURE
─────────────────────────────────────────────────────
For each development objective, complete this block:

  SKILL TO DEVELOP: _________________________________
  THRIVE PILLAR:    _________________________________
  CURRENT STATE:    _________________________________  (observable behavior)
  TARGET STATE:     _________________________________  (observable behavior)
  LEARNING METHOD:
    □ Formal training / course (name: _____________; cost: $______)
    □ Mentorship / shadowing (person: _____________; frequency: _____)
    □ Stretch assignment (project: _____________; timeline: ________)
    □ Reading / self-study (resource: ____________; by: ___________)
    □ External workshop / certification (name: ___; cost: $_______)
  TIMELINE:         _________________________________
  SUCCESS METRIC:   _________________________________  (how we'll know it worked)
  REVIEW DATE:      _________________________________

  (Repeat block for each development objective — limit 3 active objectives)

STEP 4 — CALLIE COORDINATION
─────────────────────────────────────────────────────
If the development gap maps to a missing THRIVE skill (playbook or training):
  □ Callie notified of gap (skill name or description)
  □ Callie assesses if existing skill covers the need or new skill required
  □ If new skill needed: added to Callie's development backlog
  □ Fitz Bowen pilots new skill before wide deployment

STEP 5 — BUDGET AND ROI
─────────────────────────────────────────────────────
THRIVE VALUE PILLAR CONNECTION: All skill investment must clear this bar:
  □ Is this the right learning intervention for the identified gap?
  □ Is the expected behavior change worth the investment?
  □ What is the cost of NOT developing this skill?

  Total investment (direct):    $__________
  Estimated value of gap close: $__________  (or qualitative: retention, quality, speed)
  ROI narrative: _________________________________________

PORTFOLIO TRACKING (Dr. Lewis — Quarterly Roll-Up)
─────────────────────────────────────────────────────
  Entity: _________________ | Quarter: _______
  Active development plans:  _____ (count)
  Total learning investment: $_______
  Plans completed on timeline: _____%
  Skills gaps with no playbook coverage → Callie backlog: _____ items
```

## Output Format

```markdown
## THRIVE Skills Development Plan
**Employee:** [Name] | **Entity:** [Entity] | **Role:** [Role] | **Date:** [Date]

### Diagnostic Verdict
**Gap Type:** [Skills Gap / Values Gap / Mixed]
**Routed to:** [Development Plan / PIP / HR]

### Development Objectives

#### Objective 1
| Field | Detail |
|-------|--------|
| Skill | |
| THRIVE Pillar | |
| Current State | |
| Target State | |
| Learning Method | |
| Timeline | |
| Success Metric | |
| Review Date | |

### Budget Summary
- Total Investment: $[amount]
- Value of Gap Close: [$ or qualitative]
- ROI Narrative: [2-3 sentences]

### Callie Coordination
- [ ] Gap reported to Callie: [date]
- [ ] Existing skill covers need: [Yes / No — skill name]
- [ ] New skill added to backlog: [Yes / No]
```

## Output Contract

- The diagnostic step (skills vs. values gap) is mandatory and must be documented before any development plan section is populated — routing a values problem to a training intervention is one of the most common and costly management errors in culture-building, and this framework exists specifically to prevent that routing failure.

- Every development objective must name a THRIVE pillar explicitly — development plans that are pillar-agnostic create the impression that skill growth is separate from culture, which undermines the core argument that THRIVE is an operating system, not a values statement on a wall.

- The ROI narrative is required and must answer the cost-of-inaction question — the Value pillar demands that investment decisions be made with expected return logic, and a development plan without this section cannot be approved at the portfolio level because Dr. Lewis cannot aggregate learning investment ROI without it.

## System Dependencies

### Reads from
- THRIVE assessment history for the employee (behavioral baseline)
- Entity THRIVE playbook (Callie maintains; skill inventory reference)
- Portfolio learning investment log (Dr. Lewis; quarterly)

### Writes to
- Manager's development plan record (stored in HR system or Monday.com)
- Callie's skill development backlog (when a gap exposes a missing playbook)
- Dr. Lewis portfolio learning investment tracker (quarterly roll-up input)

### HITL Required
- Manager and employee both sign off on development plan objectives before activation
- Dr. Lewis reviews all development plans for Director+ employees
- Callie must confirm or deny whether a reported skill gap is covered by an existing playbook before a new one is commissioned

## Test Cases

1. **Golden path:** Allevio billing coordinator is consistently late on AR submissions. Manager uses diagnostic: employee knows the expectation, has been trained, understands the tool — but is overwhelmed and not prioritizing correctly. Verdict: Skills Gap (prioritization / Value pillar). Development plan built: stretch assignment managing a mini AR sprint with a senior mentor. 60-day success metric defined. Callie confirms no existing skill covers prioritization training for clinical billing — added to backlog.

2. **Edge case:** HIVE field tech shows consistent Hustle gap — work left incomplete at shift end. Diagnostic is ambiguous: partially a skills gap (time management) and partially an attitude pattern. Manager routes the Values component to a coaching conversation first. Once Values alignment is confirmed in writing, a development plan is built for task management skills with a 30-day review. Mixed verdict documented clearly.

3. **Adversarial:** Manager submits a development plan for an employee with a documented Integrity failure (expense report falsification). Plan proposes "ethics training." Skill rejects the routing — Integrity failures are Values Gaps and are not resolved through training plans. Output redirects manager to HR and thrive-pip-builder. Dr. Lewis notified that the routing error occurred.

## Audit Log

All development plans are timestamped at creation, updated at each review date, and retained for the duration of employment plus two years. Diagnostic verdicts (skills vs. values gap) are logged as a structured field — not buried in notes — so that Dr. Lewis can audit routing accuracy at the portfolio level. Callie's backlog additions from development plan gaps are tracked with the originating entity and date.

## Deprecation

This skill is reviewed annually by Callie and Dr. Lewis during the THRIVE culture ops review. It is deprecated if MBL adopts a formal learning management system that supersedes this protocol, or if the diagnostic framework is materially revised based on Fitz Bowen's testing feedback. The skills-vs-values-gap diagnostic is considered a core artifact and must be preserved in any successor skill.
