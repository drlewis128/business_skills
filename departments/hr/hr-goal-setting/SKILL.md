---
name: hr-goal-setting
description: "Set individual goals and OKRs for employees. Use when the user says 'set employee goals', 'individual OKRs', 'employee objectives', 'set goals for the team', 'annual goal setting', 'individual performance goals', 'SMART goals for employees', 'employee goal setting', 'set performance targets', 'goals for this year', 'individual development goals', or 'write OKRs for an employee'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--role <title>] [--period <annual|quarterly>] [--year <YYYY>]"
---

# HR Goal Setting

Set individual goals and OKRs for MBL portfolio company employees — the specific, measurable commitments that connect each person's work to what the business needs. Good goals make performance reviews straightforward (either the goal was met or it wasn't), give employees clarity about what success looks like, and create the alignment between company priorities and individual work. Goals that are too vague ("improve communication") produce subjective reviews; goals that are too narrow ("send 3 emails per week") miss the point entirely.

## When to Use
- Beginning of the year — setting annual individual goals aligned to company OKRs
- Beginning of each quarter — setting or revising quarterly goals
- After a performance review — revising goals based on new priorities or role changes
- A new hire's 90-day review — establishing the first formal goals
- A manager asks for help translating company priorities into individual goals

## Goal Setting Framework

```
Cascading goal structure:

Company OKRs (Matt Mathison sets)
     ↓
Department OKRs (Dr. Lewis / CEO sets)
     ↓
Individual goals (manager + employee set collaboratively)

Individual goals should answer:
"If [Employee] does their best work this year, what will be different 
by December 31 that wasn't true on January 1?"

Goal quality test (SMARTER):
  S — Specific: what exactly will happen?
  M — Measurable: how will we know if it happened?
  A — Achievable: is it realistic in the time given?
  R — Relevant: does it connect to what the business needs?
  T — Time-bound: when is it due?
  E — Exciting: does the employee actually care about it? (intrinsic motivation matters)
  R — Reviewable: can we check in on progress mid-period?

Goal count:
  Individual employees: 3-5 goals max
  More than 5 = nothing is a priority
  Fewer than 3 = not enough structure
```

## Output Format

```markdown
# Individual Goals — <Employee Name> — [Year / Q[N]]
**Company:** <Entity> | **Role:** [Title]
**Set date:** [Date] | **Review date:** [Date — end of period]
**Manager:** [Name] | **HR:** Dr. John Lewis

---

## Goal Summary

| Goal | Category | Weight | Target | Mid-point check |
|------|---------|--------|--------|----------------|
| [Goal 1 — short label] | [Results / Growth / THRIVE] | [%] | [Target] | [Date] |
| [Goal 2] | | [%] | | |
| [Goal 3] | | [%] | | |
| [Goal 4] | | [%] | | |
| **Total** | | **100%** | | |

---

## Goal 1: [Short Goal Title]

**Full goal statement:** [Employee Name] will [specific action] resulting in [specific outcome] by [specific date].

**Why this goal matters:** [1 sentence — how does this connect to company priorities?]

**How measured:** [Specific metric, artifact, or observable outcome — not "manager judgment"]

**Milestones:**
- [Month X]: [Intermediate milestone]
- [Month Y]: [Intermediate milestone]
- [End date]: [Final target achieved]

**Resources needed:** [Tools, access, budget, time, or support required — what the company owes this employee to enable this goal]

**Current baseline:** [Where things stand today — the starting point this goal builds from]

---

## Goal 2: [Short Goal Title]
[Same structure]

---

## Goal 3: [Short Goal Title — often a Development goal]
[Same structure]

---

## Development Goal (always present — at least 1)

**Development area:** [Skill or competency to build — tied to career growth or role improvement]

**Why:** [Why this development area matters for this person's role and trajectory]

**Approach:** [Course / project / mentorship / on-the-job practice — specific]

**How measured:** [How will we assess whether development occurred?]

**By:** [Date]

---

## How Goals Were Set (process matters)

- [ ] Employee proposed initial goal draft (bottom-up input)
- [ ] Manager reviewed and adjusted for company alignment
- [ ] Goals discussed in 1:1 — employee understands and agrees
- [ ] Employee believes goals are achievable (or stretch is explicitly discussed)
- [ ] Mid-point check-in date is on the calendar

---

## Mid-Year / Quarterly Check-In Template

**Date:** [Date] | **With:** Manager + Employee

| Goal | Progress (%) | Status | Notes |
|------|------------|--------|-------|
| [Goal 1] | [X%] | 🟢 On track / 🟡 At risk / 🔴 Behind | |
| [Goal 2] | [X%] | | |
| [Goal 3] | [X%] | | |

**Adjustments needed?** [Any goals that should be revised due to business changes / new priorities / blocking obstacles]

**Development progress:** [1 sentence on development goal progress]

---

## Year-End Goal Assessment

| Goal | Target | Actual | Met? | Grade |
|------|--------|--------|------|-------|
| [Goal 1] | [Target] | [What happened] | ✅ / ⚠️ Partial / 🔴 No | [A / B / C / F] |
| [Goal 2] | | | | |
| [Goal 3] | | | | |
| Development | | | | |

**Year-end performance rating input:** Goals met → Rating anchored at 3+ (Meets Expectations) minimum; goals not met → Rating anchored at 2 (Developing) or below.
```

## Output Contract
- Employee input always before manager input — goals set without employee input are compliance exercises, not commitments; the employee should draft their own proposed goals first (or at minimum contribute to the goal-setting conversation before the goals are finalized); goals an employee co-authored are more motivating than goals handed to them
- Development goal always present — every individual goal set must include at least one development goal; performance-only goals treat the employee as a production unit; development goals treat them as a person with a career; development is also a retention mechanism — employees who are growing stay longer
- Goals are connected to company priorities — a goal that has no connection to what the business actually needs is "busy work dressed up as an OKR"; every goal should have a documented link to a company OKR, department priority, or customer outcome; the "why this goal matters" section makes this explicit
- Mid-point check-in is mandatory — goals set in January and reviewed in December with no check-in in between are not managed goals; they're wishful thinking; the mid-year or quarterly check-in is scheduled at goal-setting time, not arranged when convenient; blocked goals are surfaced at mid-point, not year-end
- HITL required: Employee drafts proposed goals; manager reviews and aligns with company priorities; Dr. Lewis reviews for executive employees and for consistency across teams; Matt Mathison reviews goals for direct reports and senior leaders; any goal requiring significant resources or budget requires Dr. Lewis or Matt Mathison approval

## System Dependencies
- **Reads from:** Company OKRs, department OKRs, prior year performance review, job description, employee career conversations
- **Writes to:** Individual goal document (SharePoint/HR/<Company>/Employees/<Name>/Goals/); mid-year check-in notes; year-end assessment (input to performance review)
- **HITL Required:** Employee co-authors; manager aligns; Dr. Lewis reviews executive goals; Matt Mathison reviews senior leader goals; resource-requiring goals require approval

## Test Cases
1. **Golden path:** Allevio operations coordinator annual goals → Company OKR: onboard 4 new practices in 2027; Individual goals: Goal 1 (Results, 40%): "Complete onboarding of Practice 13 and Practice 14 by June 30, 2027 — measured by signed onboarding completion checklist for each practice"; Goal 2 (Results, 30%): "Achieve LOE variance <3% for all 12 active practices for full year 2027 — measured by monthly LOE variance report"; Goal 3 (Competency, 20%): "Proactively surface one potential issue per month to manager before it becomes a problem — measured by 'issues flagged before asked' count in weekly 1:1 notes"; Goal 4 (Development, 10%): "Complete HIPAA refresher training and pass assessment by March 31, 2027"; mid-year check-in scheduled June 15; goals co-authored with employee in December 2026 1:1
2. **Edge case:** A manager wants to set a goal that is essentially "don't do what you did last year" (e.g., "Don't miss another close deadline") → this is a remediation expectation, not a goal; reframe: "Don't miss deadlines" is a baseline, not a goal; the goal is the positive version: "Complete the monthly close by Day 7 for all 12 months of 2027 — measured by close date log"; remediation expectations belong in a PIP or prior performance conversation; annual goals should be about what the employee will achieve, not about stopping past failures
3. **Adversarial:** An employee says "I don't want to commit to goals because if I miss them it'll be held against me" → this is actually a trust and culture issue; the goal-setting process is not a trap; respond: "Goals are a tool for clarity and support — not a gotcha. If you miss a goal because something changed (business priorities shifted, a project was blocked, the situation changed), we update the goal or weight the assessment accordingly. What I need from you is honest goals that represent what you can actually achieve with the right support, not a lowball list you're certain to hit. Let's set goals together and build in a mid-year check-in to adjust if circumstances change."

## Audit Log
All individual goals retained by employee and date. Mid-year check-in notes retained. Year-end assessments retained. Goal adjustments documented with reasons. Development goal completion retained.

## Deprecation
Retire when portfolio companies have HRIS-integrated goal management with cascading OKR functionality, manager training on effective goal-setting practices, and automated mid-year check-in reminders that don't require Dr. Lewis to coordinate the goal-setting process for each employee.
