---
name: executive-hiring-scorecard
description: "Build and score an executive hiring scorecard for a senior role. Use when the user says 'hiring scorecard', 'executive evaluation', 'rate this candidate', 'interview scorecard', 'how do we evaluate executives', 'candidate assessment', or 'score this candidate'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<role-description> [--candidate <name>] [--level <c-suite|vp|director>]"
---

# Executive Hiring Scorecard

Build a structured scorecard for evaluating executive candidates. Reduces bias, creates consistency across interviewers, and surfaces the critical factors that predict performance in a specific role.

## When to Use
- Before launching an executive search (define the scorecard first)
- During interview process (score each interviewer's input)
- After final interview rounds (aggregate scores for decision)
- When making a promotion decision for an internal candidate
- THRIVE-aligned culture assessment for any hire

## Scorecard Structure

### Dimension 1: Functional Competency
Does this person have the technical skills and knowledge the role requires?

Evidence to seek:
- Specific examples of similar work at comparable scale
- Results they owned vs. contributed to
- Areas where they lack experience relevant to this role

### Dimension 2: Strategic Thinking
Can they see around corners, connect dots across the business, and make good decisions with incomplete information?

Evidence to seek:
- How did they handle an ambiguous problem?
- Can they articulate a 3-year vision for their function?
- Do they ask insightful questions about our business?

### Dimension 3: Leadership and People
Can they attract, develop, and retain talent? Do people follow them?

Evidence to seek:
- Team performance under their leadership
- Who they've developed and promoted
- How they handle underperformers
- Reference checks (critical for executive hires)

### Dimension 4: Execution and Accountability
Do they get things done? Do they own outcomes, not just activities?

Evidence to seek:
- Specific results with hard numbers
- How they handle missed targets
- Their approach to competing priorities

### Dimension 5: THRIVE Alignment
Does this person embody the values we operate by?

| Value | Candidate Evidence |
|-------|-------------------|
| T — Truth | Do they give honest assessments even when uncomfortable? |
| H — Hustle | Is there urgency and execution discipline in their track record? |
| R — Respect | How do they talk about past colleagues, employers, subordinates? |
| I — Integrity | Would their prior decisions hold up to scrutiny? |
| V — Value | Do they have a track record of creating real business value? |
| E — Enjoy | Do they seem energized by this kind of work? |

### Dimension 6: MBL Fit
Do they understand and fit the MBL portfolio context (PE-backed, cross-entity, AI-forward)?

## Scoring

| Score | Meaning |
|-------|---------|
| 5 | Outstanding — clear top-performer evidence |
| 4 | Strong — above expectations for role |
| 3 | Acceptable — meets requirements |
| 2 | Concern — gaps that need mitigation |
| 1 | Disqualifying — cannot succeed in role |

A score of 2 or below on THRIVE is a kill criterion regardless of functional score.

## Output Format

```markdown
# Executive Hiring Scorecard — <Role>
**Candidate:** <name> | **Interviewer:** <name> | **Date:** <date>
**Interview Format:** <panel / 1:1 / reference>

## Scorecard

| Dimension | Score (1-5) | Key Evidence | Concerns |
|-----------|------------|-------------|---------|
| Functional Competency | | | |
| Strategic Thinking | | | |
| Leadership & People | | | |
| Execution & Accountability | | | |
| THRIVE Alignment | | | |
| MBL Fit | | | |
| **Overall Average** | **X.X** | | |

## Recommended Decision
✅ Proceed / ⚠️ Proceed with conditions / ❌ Do not advance — reason: <reason>

## Top 3 Strengths Observed
1. <Specific evidence-based strength>
2. <Strength>
3. <Strength>

## Top 3 Risks
1. <Risk>
2. <Risk>
3. <Risk>

## Reference Check Priority Areas
Based on this interview, focus reference checks on: <specific areas>
```

## Output Contract
- THRIVE score below 2 is an automatic kill — documented in the verdict
- Evidence section must contain specific examples, not impressions
- Reference check priorities always provided for advancing candidates
- CONFIDENTIAL — candidate assessments visible to hiring team only

## System Dependencies
- **Reads from:** Role description, interview notes or transcript (provided)
- **Writes to:** Nothing (outputs scorecard for hiring committee)
- **HITL Required:** Matt Mathison makes final executive offer decision

## Test Cases
1. **Golden path:** Strong candidate across all dimensions → clean scorecard with evidence, ✅ Proceed recommendation
2. **Edge case:** Functional A-player with clear THRIVE misalignment (talks poorly about prior employer) → flags THRIVE concern, recommends ❌ Do not advance regardless of functional score
3. **Adversarial:** Hiring manager wants to advance a candidate they personally like despite low scorecard → outputs objective score, flags gap between subjective preference and data, defers to Matt's decision

## Audit Log
Scorecards retained by role and candidate. Aggregate interviewer scores compiled before decision meeting.

## Deprecation
Retire when ATS (Applicant Tracking System) has structured scorecard functionality integrated into interview workflow.
