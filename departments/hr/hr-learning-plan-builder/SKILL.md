---
name: hr-learning-plan-builder
description: "Build an individual employee learning and development plan. Use when the user says 'learning plan', 'development plan', 'individual development plan', 'IDP', 'career development plan', 'employee learning plan', 'build a development plan for', 'professional development plan', 'growth plan for an employee', 'learning and development for', 'career growth plan', or 'develop this employee'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--role <title>] [--horizon <6mo|12mo|24mo>]"
---

# HR Learning Plan Builder

Build an individual learning and development plan (IDP) for an MBL portfolio company employee — a structured plan that connects where they are now to where they want to go, with specific learning actions and timelines. A good development plan is co-authored with the employee (not assigned to them), realistic about what's available, and tied to the business's needs as much as the individual's goals. An IDP that sits in a file and is never revisited is paperwork; one that is actively tracked and updated every quarter is a retention tool.

## When to Use
- Annual performance review cycle — development plans set for the coming year
- A high-potential employee needs a structured growth path to stay engaged
- An employee has expressed interest in advancement and needs a roadmap
- A new manager needs development support to succeed in their first leadership role
- A role is changing significantly and the incumbent needs to develop new capabilities
- Matt Mathison asks "how are we developing [key employee]?"

## Learning Plan Framework

```
Three types of development:

1. PERFORMANCE IMPROVEMENT (fix a gap):
   Current role has a specific gap that is affecting performance
   Example: Controller needs to improve financial reporting quality
   Approach: Targeted training + coaching + supervised practice
   Timeline: 30-90 days

2. ROLE EXPANSION (grow in current role):
   Performing well in current role; ready to take on more scope
   Example: Senior coordinator ready for team lead responsibilities
   Approach: Stretch assignments + mentorship + skill development
   Timeline: 6-12 months

3. CAREER ADVANCEMENT (grow to next level):
   Strong performer interested in moving to the next level or a different role
   Example: Staff accountant wants to become a controller in 3 years
   Approach: Longer-term skill building + exposure + credentialing
   Timeline: 12-24 months

70-20-10 development model:
  70% of development happens through on-the-job experience (stretch assignments, new projects)
  20% through social learning (mentors, coaching, peer learning)
  10% through formal training (courses, certifications, workshops)
  Development plans that are only 10% (courses) miss the 90% where real learning happens
```

## Output Format

```markdown
# Individual Development Plan — <Employee Name>
**Company:** <Entity> | **Role:** [Current title]
**Development horizon:** [6 months / 12 months / 24 months]
**Career aspiration:** [Where does this person want to be in [X] years?]
**Plan prepared:** [Date] | **Plan owner:** [Employee Name — they own this]
**Manager:** [Name] | **HR support:** Dr. John Lewis
**Review cadence:** [Quarterly check-in — next: Date]

---

## Current State Assessment

| Dimension | Current capability | Development needed | Priority |
|---------|-----------------|------------------|---------|
| [Core skill 1 — e.g., Financial reporting] | [Rating or narrative] | [Specific gap] | High / Medium / Low |
| [Core skill 2] | | | |
| [Core skill 3] | | | |
| [Leadership / Soft skill] | | | |
| [Career goal skill] | | | |

**Current strengths (keep building on these):**
1. [Specific strength]
2. [Specific strength]

**Primary development focus for this plan:**
[1-2 sentence statement of what this plan is primarily trying to build — be specific enough that the employee could recite it]

---

## Development Goals

### Goal 1: [Short title]
**What:** [Specific skill or capability to develop]
**Why it matters:** [How does this development connect to their career goal or current role effectiveness?]
**Success indicator:** [How will we know they've developed this capability? What changes?]

**70% — On-the-job experience:**
- [ ] [Specific stretch assignment or project] — by [Date]
- [ ] [Regular practice opportunity — e.g., "present at the monthly team meeting"] — [Frequency]

**20% — Social learning:**
- [ ] [Mentor or coach conversation] — [Frequency / who]
- [ ] [Peer learning — observe someone who does this well] — by [Date]

**10% — Formal training:**
- [ ] [Specific course, workshop, or certification] — [Cost: $X / Provider] — by [Date]

**Manager role:** [What does the manager commit to doing to support this goal?]

---

### Goal 2: [Short title]
[Same structure]

---

### Goal 3: [Career advancement goal — if applicable]
[Longer horizon; specific steps toward next level or next role]

---

## Quarterly Progress Tracker

**Q[N] Check-in — [Date]:**

| Goal | Progress | What's working | What's blocked | Adjustment |
|------|---------|---------------|--------------|-----------|
| Goal 1 | [X% / On track / Stalled] | | | |
| Goal 2 | | | | |
| Goal 3 | | | | |

**Employee reflection:** [What have you learned this quarter? What surprised you?]
**Manager reflection:** [What have you observed? What more can you do to support?]
**Plan adjustment needed?** [Yes — specific change / No — continue as planned]

---

## Support and Resources

| Resource | Description | Cost | Timing |
|---------|------------|------|--------|
| [Training course] | [Details] | $[X] | [Date] |
| [Conference / event] | | $[X] | |
| [Mentorship] | | No cost | Ongoing |
| [Dedicated project time] | Manager commitment to protect [X hrs/week] for development | No cost | Ongoing |

**Total development investment:** $[X]/year
**Approval status:** ✅ Approved by Dr. Lewis / [Matt Mathison for >$1K]

---

## Employee Commitment

"I own this development plan. I will bring my goals to our quarterly check-ins, track my progress, and ask for support when I need it."

Employee acknowledgment: _________________________ Date: _____________
```

## Output Contract
- Employee owns the plan — the IDP is the employee's document, not the company's; it is co-authored with the manager and Dr. Lewis, but the employee is the primary owner; plans assigned to employees without their input are compliance artifacts that won't be acted on; plans co-created by employees who see value in them become active tools
- 70-20-10 distribution always applied — a development plan that consists entirely of online courses is a check-the-box plan; real development happens through experience and social learning; every goal in the IDP must include an on-the-job component (stretch assignment, new project, practice opportunity) and a social learning component (mentor, coaching, peer observation); formal training is supporting, not primary
- Quarterly check-in is on the calendar — a plan reviewed annually is not a plan; the quarterly check-in is scheduled at plan creation and is a standard 30-minute agenda item in the manager-employee 1:1; plans that are never revisited are paperwork
- Career aspiration drives the long horizon — the most motivating development plans connect to where the employee wants to go in 2-5 years; a controller who wants to be a CFO has a different plan than a controller who wants to be the best controller they can be for the long term; both are valid; the plan should match the aspiration
- HITL required: Dr. Lewis supports plan design; manager commits to development support actions; any training cost >$1K requires Dr. Lewis approval; training >$5K requires Matt Mathison approval; plans for high-potential employees shared with Matt Mathison for visibility and retention awareness

## System Dependencies
- **Reads from:** Performance review development goals, 90-day review development areas, career conversations, training needs assessment, available training programs
- **Writes to:** Individual development plan (SharePoint/HR/<Company>/Employees/<Name>/Development/); quarterly check-in notes; training budget; Matt Mathison talent brief (for high-potential employees)
- **HITL Required:** Dr. Lewis designs; manager commits to on-the-job support; training >$1K requires Dr. Lewis approval; >$5K requires Matt Mathison; high-potential IDPs shared with Matt Mathison

## Test Cases
1. **Golden path:** Allevio senior coordinator — 12-month IDP → Career aspiration: "I want to move into a regional operations manager role in 2-3 years"; Current state: strong at practice coordination, weak on financial analysis and team leadership; Goal 1 (Financial analysis): 70% — lead the monthly LOE variance review for 2 practices; 20% — monthly 30-min coffee with controller to understand financial reporting; 10% — QuickBooks reports training ($120); manager commits to include her in the monthly finance review starting Q1; Goal 2 (Team leadership): 70% — lead onboarding of Practice 13 as project lead; 20% — bi-weekly check-in with current regional ops manager (informational mentorship); 10% — read "The First-Time Manager" and discuss with manager; manager commits to step back on Practice 13 and let her lead with guidance; quarterly check-in scheduled; total cost: $120; approved by Dr. Lewis; Matt Mathison notified (high-potential flag)
2. **Edge case:** An employee's development goal is to eventually move to a different company in a different industry → this is their career aspiration and it should not be invalidated; a development plan that serves the employee's long-term goals, even if those goals lead them elsewhere eventually, builds loyalty in the near term; respond: "I appreciate you being honest about your longer-term direction. Here's what I'd suggest: the skills you're building here — [specific skills] — are genuinely valuable wherever you go next, and we need those skills right now. Let's build a plan that serves both: you develop the skills that advance your career, and we get the benefit of those skills while you're here. That's a fair deal, and I'd rather have you fully engaged for 3 years than checked-out for 1 year."
3. **Adversarial:** A manager doesn't want to create IDPs because "we can't make promises we can't keep about career advancement" → the IDP doesn't promise career advancement; it commits to development support; address this: "You're right that we can't guarantee a promotion — and the IDP doesn't do that. What it says is: 'Here's how we'll support your development this year, regardless of what the org chart looks like.' Employees who feel invested in stay longer and perform better even when advancement isn't immediately available. The risk of doing nothing is higher — employees without development conversations are more likely to find their growth somewhere else."

## Audit Log
All IDPs retained by employee and date. Quarterly check-in notes retained. Training approvals and completions retained. High-potential flags and Matt Mathison notifications retained. Plan adjustments documented with reasons.

## Deprecation
Retire when portfolio companies have HRIS-integrated learning management with individual development plan templates, automated quarterly check-in reminders, and manager training on development conversations that don't require Dr. Lewis to design each IDP from scratch.
