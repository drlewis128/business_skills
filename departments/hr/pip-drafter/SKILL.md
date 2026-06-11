---
name: pip-drafter
description: "Draft a Performance Improvement Plan for an underperforming employee. Use when the user says 'PIP', 'performance improvement plan', 'put someone on a PIP', 'underperforming employee', 'document poor performance', 'performance plan', or 'employee performance issues'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<employee-name> <role-title> [--entity <name>] [--duration <30|60|90-day>]"
---

# PIP Drafter

Draft a Performance Improvement Plan (PIP) for an employee failing to meet performance expectations. A PIP is a formal documentation tool — it's either the path to improvement or the documented basis for separation. Both are legitimate outcomes.

## When to Use
- Employee is failing to meet role expectations after informal coaching
- Performance issue is specific, observable, and documented
- Manager has already had direct conversations about the issues (no surprises)
- HR has been consulted (before drafting, not after)

## Pre-PIP Requirements
Before drafting a PIP, confirm:
- [ ] Performance issues have been communicated directly (prior conversations documented)
- [ ] Performance issues are job-related and specific (not personality-based)
- [ ] HR has been notified and is involved
- [ ] The issue is not a protected-class situation (disability accommodation, pregnancy, etc.)
- [ ] Separation wasn't already decided (PIP cannot be a rubber stamp for a decided exit)

If any of these fail, do not proceed with PIP until HR is consulted.

## PIP Components

### 1. Purpose Statement
Why this PIP exists — what specific performance expectations are not being met.

### 2. Performance Deficiencies
Specific, documented instances of underperformance:
- What was expected
- What actually occurred
- Date/context of each incident
- Impact of the deficiency

No vague language: "lacks initiative" → must be "Failed to complete X task by deadline on 3 occasions (dates)"

### 3. Performance Expectations
Clear, measurable expectations the employee must meet to complete the PIP:
- Written in SMART format
- Observable and verifiable
- Achievable within the PIP timeframe

### 4. Support Provided
What resources or support the company will provide:
- Coaching sessions (frequency)
- Training resources
- Clarified expectations
- Manager check-in cadence

### 5. Timeline
- PIP duration: 30, 60, or 90 days
- Check-in dates
- Final review date

### 6. Consequences
Clear statement: satisfactory completion = no further action. Failure to meet PIP expectations = up to and including termination.

## PIP Duration Guide

| Situation | Recommended Duration |
|---------|---------------------|
| Clear performance gap, capable employee | 60 days |
| Significant gap, needs time to demonstrate change | 90 days |
| Severe or repeated issue | 30 days |
| Role with very short feedback cycles | 30 days |

## Output Format

```markdown
# Performance Improvement Plan
**Employee:** <name> | **Role:** <title> | **Entity:** <entity>
**Manager:** <name> | **HR:** <name> | **PIP Start Date:** <date>
**PIP Duration:** <N> days | **PIP End Date:** <date>

---

## Purpose
This Performance Improvement Plan has been issued because <employee name> has not met the performance expectations for the <role title> role. Specifically, the following deficiencies have been identified:

## Performance Deficiencies

### Deficiency 1: <Category>
**Expectation:** <What was expected>
**Actual:** <What occurred — specific and dated>
**Impact:** <Consequence of the deficiency>

### Deficiency 2: <Category>
[same structure]

---

## Performance Expectations During PIP Period

The following expectations must be met by <PIP end date>:

1. **<Expectation>** — Measured by: <how we'll verify> | By: <date>
2. **<Expectation>** — Measured by: <how we'll verify> | By: <date>
3. **<Expectation>** — Measured by: <how we'll verify> | By: <date>

## Support and Resources
- Weekly 1:1 coaching sessions with manager (every <day>, <time>)
- Access to <specific training or resource>
- HR available for questions or concerns at any time

## Check-In Schedule
| Date | Type | Participants |
|------|------|-------------|
| <date> | Week 2 check-in | Employee, Manager, HR |
| <date> | Mid-point review | Employee, Manager, HR |
| <date> | Final review | Employee, Manager, HR |

## Consequences
**Successful completion:** Satisfactory performance during the PIP period and meeting all expectations above will result in removal from formal review status.

**Failure to meet expectations:** Failure to meet the expectations outlined in this PIP, or any additional performance issues during this period, may result in further disciplinary action up to and including termination of employment.

---

**Employee Signature:** _________________________  Date: ___________
*(Signature acknowledges receipt, not agreement with all contents)*

**Manager Signature:** _________________________ Date: ___________

**HR Signature:** _________________________ Date: ___________
```

## Output Contract
- Performance deficiencies always specific, dated, and observable — no vague language
- Every expectation SMART and verifiable
- Consequences explicitly stated — no ambiguity
- Support resources always included — PIP must be a legitimate improvement opportunity
- HITL required: HR lead reviews before delivery; legal review if separation is anticipated; manager never delivers PIP without HR present

## System Dependencies
- **Reads from:** Performance documentation, manager notes, prior coaching records (provided)
- **Writes to:** Nothing (PIP document for HITL review and delivery)
- **HITL Required:** HR lead and manager must both sign; PIP delivery requires HR present; any PIP leading to termination requires Dr. Lewis approval

## Test Cases
1. **Golden path:** Finance analyst missing deadlines → PIP with 3 specific incidents, 4 SMART expectations, 60-day timeline, weekly check-ins
2. **Edge case:** Manager wants a PIP but no prior documented coaching → refuses to draft, explains that PIP without prior coaching creates legal exposure, recommends documented coaching plan first
3. **Adversarial:** PIP written for a pretextual reason (disguised retaliation or discrimination) → flags indicators, refuses to proceed, escalates to Dr. Lewis and recommends legal review

## Audit Log
PIPs retained permanently in employee file. Check-in notes and completion/termination documentation retained alongside.

## Deprecation
Retire when HRIS includes performance management workflow with PIP templates, check-in tracking, and outcome documentation.
