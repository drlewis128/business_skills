---
name: hr-interview-guide
description: "Build a structured interview guide for a role. Use when the user says 'interview guide', 'interview questions', 'structured interview', 'interview scorecard', 'interview process', 'how to interview for this role', 'interview framework', 'behavioral interview', 'interview rubric', 'competency interview', or 'build an interview for'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <title>] [--round <1|2|3|all>] [--focus <technical|behavioral|executive>]"
---

# HR Interview Guide

Build a structured interview guide for a specific role — the question bank, scoring rubric, and process that ensures every candidate is evaluated consistently and fairly. Structured interviews outperform unstructured interviews in predicting job performance because every candidate answers the same questions, which makes comparisons meaningful. "I liked them" is not a hiring criterion; "They scored 8/10 on the integrity behavioral question with a specific example from a high-stakes situation" is.

## When to Use
- A new role needs an interview process built before screening starts
- A team is interviewing candidates but has no consistent questions across interviewers
- An interview process has been producing bad hires — structured assessment needed
- Matt Mathison asks for a hiring process for a role at a portfolio company
- Multiple interviewers need to divide the evaluation (different areas, same rubric)

## Structured Interview Framework

```
Interview structure by round:

Round 1 — Phone Screen (30 min, Dr. Lewis):
  Purpose: Qualify fit, compensation, and availability — not deep assessment
  Questions: 5-6 quick qualifiers
  Decision: Advance / Pass — binary, no maybe

Round 2 — Structured Interview (60-90 min, hiring manager + one other):
  Purpose: Assess core competencies and job-specific skills
  Questions: 6-8 behavioral questions; 2-3 technical or situational questions
  Format: STAR method (Situation, Task, Action, Result)
  Scoring: 1-5 on each question, averaged to dimension score
  Decision: Advance to finalist / Pass

Round 3 — Final (45-60 min, executive or Dr. Lewis):
  Purpose: Culture fit, values, strategic judgment
  Questions: 3-4 deeper questions on judgment, integrity, and career direction
  Decision: Hire / Pass — references already checked before this round

THRIVE evaluation note:
  Every interview process must include at least one Integrity question.
  Financial roles: explicit "have you been asked to do something financially questionable?"
  All roles: "tell me about a time you delivered bad news" or "made a mistake and had to own it"
```

## Output Format

```markdown
# Interview Guide — <Role Title>
**Company:** <Entity> | **Role level:** [Entry / Mid / Senior / Executive]
**Interview owner:** Dr. John Lewis

---

## Round 1: Phone Screen — Dr. Lewis (30 min)

**Purpose:** Qualify compensation alignment, availability, and basic interest level. 
Not deep assessment — advance or pass in this call.

| Question | What you're listening for |
|---------|--------------------------|
| "Walk me through your background in 2 minutes — what brought you to this kind of role?" | Can they communicate clearly? Does their background match what we need? |
| "What's your current compensation, and what are you targeting?" | Aligned with our $[X]-$[X] range? |
| "What's your availability? When could you start?" | Realistic start date aligned with our need? |
| "What interests you about this role specifically?" | Do they know what we do? Generic answer = low interest |
| "Is there anything in the role description that concerns you or gives you pause?" | Proactive flag detector — integrity signal |

**Phone screen decision criteria:**
- ✅ Advance: Compensation aligned ± 10%, background relevant, start date realistic, genuine interest
- ❌ Pass: Compensation misaligned, background not relevant, unavailable within our window, clearly not interested in this specific role

---

## Round 2: Structured Interview (60-90 min)

**Core competencies to assess for this role:**
1. [Role-specific competency 1 — e.g., "Close ownership and accuracy" for Controller]
2. [Role-specific competency 2 — e.g., "Proactive communication"]
3. [Role-specific competency 3 — e.g., "Execution under pressure"]
4. [Values alignment — THRIVE: Integrity and Truth-first always here]
5. [Role-specific competency 4 — e.g., "Technical proficiency"]

### Behavioral Questions (STAR method — Situation, Task, Action, Result)

**Competency 1: [Competency name]**
> Question: "[Behavioral question]"
> Follow-up: "What would you do differently now?"
> Scoring: 1 (no clear example) — 3 (clear example, adequate) — 5 (specific, strong outcome, self-aware)

**Competency 2: [Competency name]**
> Question: "[Behavioral question]"
> Follow-up: "[Clarifying follow-up]"
> Scoring: 1 — 3 — 5

**Competency 3: [Competency name]**
> Question: "[Behavioral question]"
> Follow-up: "[Clarifying follow-up]"
> Scoring: 1 — 3 — 5

**INTEGRITY (always present — no exceptions):**
> Question: "Tell me about a time you were in a situation where you knew the right thing to do but it would create conflict or cost you something. What did you do?"
> OR for Finance roles: "Have you ever been asked to do something financially that you weren't comfortable with? What happened?"
> Red flag: Vague answer, deflects, blames others, or has no example
> Green flag: Specific situation, chose integrity over convenience, owns the outcome
> Scoring: 1 (no example / vague) — 3 (example but low stakes) — 5 (high stakes, chose integrity, clear consequence they accepted)

**Truth-first:**
> Question: "Tell me about a time you delivered news to leadership that was significantly worse than expected. How did you approach it?"
> Red flag: "I softened it" or "I waited until I had a solution"
> Green flag: "I told them immediately, clearly, and with a path forward — even before I had all the answers"

### Technical / Situational Questions

> Question: "[Specific to the role — e.g., for Controller: 'Walk me through your close process. What day do you target? What's your biggest close risk?' / for PM: 'Walk me through how you decide what goes into a sprint']"
> What you're testing: [Specific knowledge or judgment being assessed]

> Question: "[Second technical/situational question]"
> What you're testing: [Specific]

### Candidate Questions

Reserve 10-15 minutes for candidate questions. What they ask reveals:
- Whether they've done their homework (good: specific questions about the business)
- What they care about (compensation first = red flag; role scope/impact first = green flag)
- Engagement level (no questions = disengaged or intimidated)

---

## Round 2 Scorecard

| Competency | Weight | Score (1-5) | Weighted score |
|-----------|--------|------------|---------------|
| [Competency 1] | [30%] | /5 | |
| [Competency 2] | [20%] | /5 | |
| [Competency 3] | [20%] | /5 | |
| Integrity / THRIVE | [20%] | /5 | ⚠️ Hard filter — 1 or 2 = do not advance |
| Technical | [10%] | /5 | |
| **Total** | **100%** | | **/5.0** |

**Advance threshold:** ≥3.5 weighted average, with Integrity ≥3
**Automatic pass:** Integrity score ≤2, regardless of total

---

## Round 3: Final Interview (45-60 min)

**Purpose:** Values alignment, strategic judgment, long-term fit. References checked before this round.

| Question | What you're assessing |
|---------|----------------------|
| "What do you want to be true about your work 3 years from now that isn't true today?" | Self-awareness, ambition, realistic growth expectations |
| "Tell me about a time you were wrong about something important. How did you find out, and what did you do?" | Intellectual honesty, coachability |
| "What do you think will be hardest about this role for you specifically?" | Self-awareness, candor — good candidates identify real gaps, not fake weaknesses |
| "What would you do in your first 30 days to understand this business quickly?" | Preparation, curiosity, proactive nature |

**Final round decision:** Hire / Pass — document the specific reasoning.

---

## Debrief Protocol (after each round)

Run a 15-minute debrief with all interviewers immediately after:
1. Each interviewer shares their score independently (before discussion to prevent anchoring)
2. Compare scores — discuss gaps
3. Identify the #1 strength and #1 concern
4. Make the advance/pass decision before the next candidate is screened

**Document the decision:** "We are advancing [Name] because [specific]. We are passing on [Name] because [specific, not 'not the right fit']."
```

## Output Contract
- Every round uses consistent questions — the value of a structured interview is that every candidate answers the same questions; interviewers who go off-script make candidate comparison impossible; the guide is the script; deviation is flagged and the deviation is documented
- Integrity question is non-negotiable — every interview guide produced by this skill includes an Integrity question with a scoring rubric; a score of ≤2 on Integrity is an automatic pass regardless of total score; this applies to every role at MBL portfolio companies, not just Finance roles
- Scores before discussion — every interviewer completes their scorecard independently before the debrief; social dynamics cause interviewers to defer to the most senior person's opinion if scores are shared before individuals complete their own; this is the primary way structured interviews break down in practice
- Advance/pass decisions are documented with reasons — "not the right fit" is not a documented reason; the documented reason must be specific enough that it could be explained to the candidate if asked; this protects against bias claims and creates a feedback loop for improving the JD
- HITL required: Dr. Lewis runs Round 1 screens and designs the guide; hiring manager runs Round 2; executive roles require Matt Mathison in Round 3; final hire decision for director and above requires Matt Mathison; Integrity score of ≤2 always escalated for a second opinion before passing

## System Dependencies
- **Reads from:** Job description, competency model for role level, THRIVE values, prior scorecard results for the role
- **Writes to:** Interview guide (SharePoint/HR/<Company>/Recruiting/<Role>/); candidate scorecards; debrief notes
- **HITL Required:** Dr. Lewis designs guide; hiring manager conducts Round 2; Matt Mathison participates in Round 3 for executive roles; Integrity pass decisions require second opinion

## Test Cases
1. **Golden path:** Allevio Controller interview guide → Round 1 phone screen: 5 questions, advance decision in call; Round 2 structured: Competency 1 — Close ownership (behavioral: "Walk me through your toughest month-end close — what went wrong and how did you resolve it?"), Competency 2 — Proactive communication (behavioral: "Tell me about a time you identified a financial issue before leadership asked about it"), Integrity — ("Have you ever been asked to do something financially that you weren't comfortable with?"), Technical — ("Walk me through your QuickBooks bank reconciliation process"); Integrity weighted 20%; scoring rubric applied; debrief after each interview with 3 interviewers; Round 3 with Dr. Lewis; hire decision documented with specific strengths and concerns
2. **Edge case:** Two interviewers give very different scores on the same candidate (one: 4.5, other: 2.5) → this is valuable signal, not a problem to resolve by averaging; run the debrief question: "You scored them 4.5 and you scored them 2.5 — walk me through what you each heard"; often the gap is because one interviewer asked a harder follow-up or the candidate gave a different answer; sometimes it reveals that one interviewer was applying a lower standard; document the specific evidence each interviewer cited, not the score; the person with the lower score wins if they have specific evidence
3. **Adversarial:** An interviewer asks a prohibited question in an interview (asking about family status, age, or national origin) → stop the interview and address it immediately if possible; if the interview has concluded, document it and escalate to Dr. Lewis; do not use any information from a prohibited question in the hiring decision; if the interviewer is a CEO or senior leader, Dr. Lewis addresses it directly: "I need to flag that [question] is a prohibited interview question under employment law — we can't factor that answer into our decision, and we should avoid that question in future interviews. I'll send you a reference on prohibited questions."

## Audit Log
All interview guides retained by role and date. Candidate scorecards retained. Debrief notes retained. Advance/pass decisions documented with reasons. Prohibited question incidents documented and escalated. Hire decisions retained with scorecard totals.

## Deprecation
Retire when portfolio companies have HR managers who own interview guide creation with company-specific competency libraries, approved question banks, and structured debrief processes that don't require Dr. Lewis to design each guide from scratch.
