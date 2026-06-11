---
name: interview-scorecard-builder
description: "Build a structured interview scorecard for a role. Use when the user says 'interview scorecard', 'interview rubric', 'build an interview guide', 'structured interview', 'interview questions for this role', 'how to interview for X', or 'interview evaluation form'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<role-title> [--competencies <list>] [--interview-type <behavioral|technical|case|culture>]"
---

# Interview Scorecard Builder

Build a structured interview scorecard for a specific role. Unstructured interviews are poor predictors of job performance — structured interviews with defined scoring are 2× more predictive.

## When to Use
- Before beginning interviews for a new role
- When multiple interviewers need to assess consistently
- After a poor hiring decision (add structure retrospectively)
- Creating a standardized interview library by role type

## Interview Scorecard Design Principles

### Behavioral Over Hypothetical
- **Behavioral (use these):** "Tell me about a time you..." — anchored in real experience
- **Hypothetical (avoid):** "What would you do if..." — answers are easy to fake

### Define Scoring Before Interviewing
Interviewers who score without rubrics anchor on first impressions. Define what a 1, 3, and 5 look like before the interview.

### 4-5 Competencies Max
More than 5 competencies and interviewers lose focus. Assign each competency to one interviewer.

### Panel Coverage
Each interviewer owns different competencies so there's no duplication and full coverage.

## Standard Competency Library

Select 4-5 for each role:

| Competency | Definition |
|-----------|-----------|
| Analytical Thinking | Breaks problems into components, uses data to decide |
| Execution / Bias for Action | Gets things done without being told; delivers |
| Communication | Clear, concise, audience-aware |
| Leadership / Influence | Moves others without formal authority |
| Ownership | Takes responsibility for outcomes, not just tasks |
| Adaptability | Changes course without drama when circumstances change |
| Technical Depth | Command of relevant technical domain |
| Customer Orientation | Centers decisions on customer/patient/LP impact |
| Integrity | Acts consistently whether or not observed |
| THRIVE Alignment | Truth, Hustle, Respect, Integrity, Value, Enjoy |

## Scoring Scale

| Score | Label | Meaning |
|-------|-------|---------|
| 5 | Strong Hire | Exceptional signal — clear above bar |
| 4 | Hire | Solid signal — meets bar with strengths |
| 3 | Lean Hire | Some signal — would benefit from more data |
| 2 | Lean No Hire | Weak signal — notable gaps |
| 1 | No Hire | Clear below bar — do not hire |

Hiring bar: Average ≥ 3.5 across all interviewers and competencies. Any single 1 is a veto.

## Output Format

```markdown
# Interview Scorecard — <Role Title>
**Entity:** <entity> | **Created:** <date>

## Interview Panel + Competency Coverage

| Interviewer | Role | Competency Owned |
|------------|------|----------------|
| <Name> | HR | THRIVE Alignment + Communication |
| <Name> | Hiring Manager | Execution + Technical Depth |
| <Name> | Peer | Ownership + Analytical Thinking |

---

## Competency: <Competency Name>
**Assigned Interviewer:** <Name>

**Interview Questions:**
1. "Tell me about a time you [behavioral prompt tied to competency]."
   *Follow-up: What was the outcome? What would you do differently?*
2. "Describe the most complex [relevant scenario] you've navigated."

**Scoring Rubric:**

| Score | What It Looks Like |
|-------|-------------------|
| 5 | <Specific example of exceptional response> |
| 3 | <Specific example of acceptable response> |
| 1 | <Specific example of below-bar response> |

**Score:** ___/5
**Evidence:** _(notes from interview)_

---

[Repeat for each competency]

---

## Scorecard Summary

| Competency | Score | Interviewer |
|-----------|-------|-------------|
| THRIVE Alignment | /5 | <name> |
| Communication | /5 | <name> |
| Execution | /5 | <name> |
| Technical Depth | /5 | <name> |
| Ownership | /5 | <name> |
| **Overall Average** | **/5** | |

## Hire Recommendation
☐ Strong Hire (avg ≥ 4.5)
☐ Hire (avg ≥ 3.5)
☐ Lean Hire (avg 3.0-3.4 — discuss)
☐ Lean No Hire (avg 2.5-2.9 — discuss)
☐ No Hire (avg < 2.5 or any 1)

**Recommendation Notes:**
<Key strengths, key gaps, and final recommendation rationale>
```

## Output Contract
- Every competency has behavioral questions and a defined rubric — no free-form scoring
- Panel coverage assigned so no duplication and no competency uncovered
- Scoring calibration defined before interviews start
- HITL required: hiring manager reviews scorecard before first interview; debrief required before hire/no-hire decision

## System Dependencies
- **Reads from:** Role requirements, JD from `job-description-optimizer` (provided)
- **Writes to:** Nothing (scorecard for panel use)
- **HITL Required:** Hiring manager and HR align on scorecard before use; final hire decision requires panel debrief

## Test Cases
1. **Golden path:** Finance manager role → 5-competency scorecard with behavioral questions, rubric, and 3-person panel coverage matrix
2. **Edge case:** Role with very specific technical skills → includes domain-specific technical questions with pass/fail criteria in addition to behavioral scoring
3. **Adversarial:** Request to add subjective "culture fit" as a scored competency → redirects to defined behavioral competency (THRIVE Alignment) to avoid implicit bias in vague "fit" scoring

## Audit Log
Interview scorecards and completed scores retained by candidate and role for EEO compliance.

## Deprecation
Retire when ATS (Greenhouse, Lever) provides structured interview kits with built-in scorecard and debrief workflow.
