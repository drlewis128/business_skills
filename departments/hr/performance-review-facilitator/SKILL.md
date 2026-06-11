---
name: performance-review-facilitator
description: "Facilitate a structured performance review for an employee. Use when the user says 'performance review', 'annual review', 'performance evaluation', 'write a performance review', 'employee evaluation', 'mid-year review', or 'review this employee'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<employee-name> [--period <annual|mid-year|90-day>] [--entity <name>] [--role <title>]"
---

# Performance Review Facilitator

Structure and facilitate a performance review conversation for a manager and employee. Good performance reviews drive development and retention; bad ones create resentment and legal liability.

## When to Use
- Annual performance review cycle
- 90-day new hire review
- Mid-year check-in (calibration review)
- Before a compensation decision (merit increase requires documented performance basis)
- When an employee is underperforming (also see `pip-drafter`)

## Performance Review Principles

### Behavior and Impact, Not Personality
Review what the employee did and the impact — not their personality. "Delivered X, which resulted in Y" not "She's a hard worker."

### No Surprises
A performance review should never be the first time an employee hears about a concern. Ongoing feedback throughout the year means the review is a formalized summary, not a revelation.

### Rating Calibration
If using ratings, calibrate across managers before communicating to employees. Uncalibrated ratings create internal equity issues.

### Documentation = Protection
Performance reviews are legal documents. Accurate documentation of both strong and poor performance protects the company and the employee.

## Rating Scale

| Rating | Label | Description |
|--------|-------|-------------|
| 5 | Exceptional | Consistently exceeds all goals; raises the bar for the team |
| 4 | Exceeds Expectations | Meets all goals and exceeds several; high performer |
| 3 | Meets Expectations | Meets all goals; solid, reliable contributor |
| 2 | Partially Meets | Meets some goals; gaps exist; improvement needed |
| 1 | Does Not Meet | Significant underperformance; PIP may be required |

## Review Structure

### Section 1: Goal Assessment
For each goal set at the beginning of the period:
- What was the goal?
- Was it achieved? (Yes / Partially / No)
- Evidence of outcome (what happened?)
- Manager and employee perspectives

### Section 2: Competency Assessment
5 competencies relevant to the role:
- Rate 1-5 with specific behavioral evidence
- No ratings without evidence

### Section 3: Key Contributions
Top 2-3 accomplishments from the period (regardless of goals).

### Section 4: Development Areas
Top 1-2 areas for growth. Frame as investment in the employee, not a criticism list.

### Section 5: Career Development
Where does the employee want to go? What does the manager see as the path?

### Section 6: Goals for Next Period
SMART goals: Specific, Measurable, Achievable, Relevant, Time-bound.

## Output Format

```markdown
# Performance Review — <Employee Name>
**Role:** <role> | **Entity:** <entity> | **Period:** <period>
**Manager:** <name> | **Review Date:** <date>

## Overall Rating: <N>/5 — <Label>

---

## Goal Assessment

### Goal 1: <Goal Description>
**Achievement:** ✅ Met / ⚠️ Partially / ❌ Not Met
**Evidence:** <what happened, with specifics>
**Rating:** <N>/5

### Goal 2: <Goal Description>
[same structure]

---

## Competency Assessment

| Competency | Rating | Evidence |
|-----------|--------|---------|
| Execution | 4/5 | Led month-end close for 3 entities with 0 errors in <period> |
| Communication | 3/5 | Clear in 1:1s; written reports need more structure |
| Ownership | 4/5 | Flagged billing discrepancy proactively — caught $40K error |
| Analytical Thinking | 3/5 | Good on known frameworks; developing on novel problems |
| THRIVE Alignment | 5/5 | Consistently demonstrates truth and hustle values |

---

## Key Contributions
1. <Accomplishment with impact>
2. <Accomplishment with impact>

## Development Areas
1. <Area> — Suggested approach: <specific development action>

## Career Development Discussion
**Employee's stated goals:** <what they said they want>
**Manager's perspective:** <what you see and recommend>

## Goals — Next Period
1. <Goal — SMART format — by <date>>
2. <Goal>
3. <Goal>

---

**Employee Acknowledgment:** _________________________ Date: ___________
**Manager Signature:** _________________________ Date: ___________
```

## Output Contract
- Every rating supported by specific behavioral evidence — no unsupported ratings
- Development areas always framed as investment, not punishment
- Goals for next period always documented — no review ends without next-period goals
- HITL required: manager and HR calibrate rating before delivery; employee signature required for file

## System Dependencies
- **Reads from:** Goal documentation, manager notes (provided)
- **Writes to:** Nothing (review document for HITL delivery)
- **HITL Required:** HR reviews all reviews before manager delivery; any "1" rating requires HR involvement before communication

## Test Cases
1. **Golden path:** Annual review for finance analyst → structured 5-section review with goal assessment, 3 SMART next-period goals, and development area with specific action
2. **Edge case:** Employee with no documented goals at start of period → flags gap, recommends assessing competencies and impact as primary basis, establish goals immediately for next period
3. **Adversarial:** Manager submits review with only positive ratings but wants to put employee on PIP → flags inconsistency, requires accurate performance documentation before PIP can be initiated

## Audit Log
Signed performance reviews retained in employee file permanently. Rating distribution reported to HR leadership for calibration analysis.

## Deprecation
Retire when HRIS includes performance review workflow with goal setting, rating calibration, and e-signature.
