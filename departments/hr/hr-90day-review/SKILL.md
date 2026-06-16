---
name: hr-90day-review
description: "Conduct a 90-day new hire review. Use when the user says '90 day review', '90-day check-in', 'probationary review', 'new hire review', '3-month review', 'first review for new employee', 'how is the new hire doing', 'new employee performance review', '90-day performance', 'new hire check-in', or 'probation period review'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--role <title>] [--hire-date <YYYY-MM-DD>]"
---

# HR 90-Day Review

Conduct a structured 90-day review for a new employee — the first formal checkpoint that assesses whether the hire is working and the employee is on a clear path to success. The 90-day review is not a performance evaluation against a full annual standard; it's a mutual calibration: is the employee doing what was expected? Is the company giving them what they need to succeed? Is the role a fit? It's also the right time to make a hard decision if the fit isn't there — before the employee is 12 months in and deeply integrated.

## When to Use
- An employee is approaching 90 days from their start date
- A new hire is showing early concerns and a formal checkpoint is needed
- A hiring manager asks "should we keep this person?" at the 90-day mark
- Dr. Lewis wants a consistent format for all 90-day reviews across portfolio companies
- Matt Mathison asks about the performance of an executive hire at the 90-day point

## 90-Day Review Framework

```
90-Day Review has three goals:

1. ASSESS PERFORMANCE:
   Is the employee performing at the expected level for someone 90 days in?
   Not: Are they performing at full standard? (Too soon.)
   Yes: Are they on a trajectory to perform at full standard? Is the slope right?

2. IDENTIFY GAPS AND SUPPORT:
   What support or resources does the employee need to close gaps?
   What is the company not providing that they need?
   This is a two-way assessment — not just the employee's performance.

3. MAKE THE CONTINUE/ADDRESS DECISION:
   Strong: Confirm path, set next goals
   Developing: Specific improvement plan with timeline
   Concern: Document and begin structured improvement process
   Exit: If clearly not working, address now — not at 6 months

Grading note:
   A new hire who scores "meeting expectations" at 90 days is doing well.
   Fully mastering a role in 90 days is exceptional; don't grade against a 12-month standard.
   The most important question: "Is the trajectory right?" not "Are they there yet?"
```

## Output Format

```markdown
# 90-Day Review — <Employee Name>
**Company:** <Entity> | **Role:** [Title]
**Start date:** [Date] | **Review date:** [Date — should be Day 85-95]
**Reviewers:** [Hiring manager + Dr. John Lewis] | **For:** Matt Mathison (if executive hire)

---

## Performance Scorecard

Score each dimension: 1 (below expectations) — 3 (meeting expectations) — 5 (exceeding expectations)

| Dimension | Score (1-5) | Evidence / Notes |
|---------|------------|-----------------|
| **Technical proficiency** — Can they do the core technical work of this role? | /5 | [Specific examples] |
| **Execution and reliability** — Do they deliver what they commit to, on time? | /5 | [Specific examples] |
| **Communication** — Do they communicate proactively? Do they surface problems early? | /5 | [Specific examples] |
| **Learning velocity** — Are they learning fast enough? Asking the right questions? | /5 | |
| **THRIVE alignment** — Do they demonstrate Truth, Hustle, Respect, Integrity? | /5 | [Specific examples — any integrity flags?] |
| **Relationship building** — Are they integrating with the team? | /5 | |
| **Role-specific criteria** — [e.g., "Close speed" for Finance; "Patient communication" for Allevio clinical] | /5 | |

**Total: [X]/35 | Average: [X]/5**

| Average score | Interpretation |
|-------------|---------------|
| 4.5-5.0 | Exceptional start — accelerate their development |
| 3.5-4.4 | Strong start — on track for success |
| 2.5-3.4 | Meeting expectations — continue with focus areas |
| 1.5-2.4 | Below expectations — structured improvement plan needed |
| <1.5 | Not working — serious discussion required |

---

## Strengths (Top 2-3)

1. **[Specific strength]:** [Concrete example that demonstrates this strength]
2. **[Specific strength]:** [Concrete example]
3. **[Specific strength]:** [Concrete example]

---

## Development Areas (Top 2-3 — specific and actionable)

1. **[Specific gap]:** [Concrete example] → **Action:** [What the employee will do to address this, by when]
2. **[Specific gap]:** [Concrete example] → **Action:** [Specific improvement action]
3. **[Specific gap]:** [Concrete example] → **Action:** [Specific improvement action]

---

## Company Obligations Assessment (Is the company doing its part?)

| Obligation | Status | Notes |
|-----------|--------|-------|
| Clear role expectations communicated | ✅ / ⚠️ / 🔴 | |
| Adequate tools and access provided | ✅ / ⚠️ / 🔴 | |
| Sufficient onboarding and context provided | ✅ / ⚠️ / 🔴 | |
| Regular feedback and direction provided | ✅ / ⚠️ / 🔴 | |
| Team integration supported | ✅ / ⚠️ / 🔴 | |

**If any item is ⚠️ or 🔴:** The company has a remediation obligation before holding the employee to a higher standard.

---

## Employee Self-Assessment

(To be completed by the employee before the review meeting)

1. What have you accomplished in your first 90 days that you're proud of?
2. What has been harder than you expected?
3. What support would help you most in the next 90 days?
4. Is the role what you expected based on the hiring process?
5. What do you want to learn or develop in the next 6 months?

---

## 90-Day Decision

**Overall assessment:** ✅ Strong — continue / ✅ On track — continue with focus areas / ⚠️ Below expectations — improvement plan / 🔴 Not working — serious conversation required

**Next 90-day goals (set collaboratively):**
1. [Specific measurable goal — e.g., "Close in 7 days for 3 consecutive months"]
2. [Specific measurable goal]
3. [Specific measurable goal]

**Review frequency:** [Monthly check-in / Quarterly performance review / Bi-weekly (if improvement plan)]

**Matt Mathison notification:** [✅ Required — executive hire or "not working" decision / ❌ Not required — Dr. Lewis will handle]

---

## If "Not Working" — Path Forward

**Option 1: Structured Performance Improvement Plan (PIP)**
- Specific goals, timeline (typically 30-60 days), support provided
- If goals met: continue; if not: separation
- Requires: documentation, clear communication, legal review if termination is likely

**Option 2: Role Adjustment**
- The person may be right but in the wrong role
- Explore: Is there a different role they'd be better suited for?
- Only if the company has the role and it makes business sense

**Option 3: Separation**
- At 90 days, with documented performance concerns, clean separation is usually possible
- Requires Dr. Lewis recommendation and Matt Mathison approval
- Severance: Matt Mathison decision; not automatic at 90 days
```

## Output Contract
- Self-assessment precedes the review conversation — the employee completes their self-assessment before the meeting; this gives them agency, often surfaces concerns the manager didn't know about, and creates a richer conversation than a one-way evaluation; the manager reads the self-assessment before the meeting, not during
- Two-way assessment required — the review includes an explicit assessment of whether the company has upheld its obligations (clear expectations, adequate tools, sufficient onboarding); a new hire who is underperforming because they were given no onboarding and unclear expectations is not a performance problem — it's a management problem; the review surfaces both
- Specific examples only — "communication is good" is not useful feedback; "you flagged the AR aging issue before being asked, which prevented a client escalation" is; every score on the scorecard must have a specific supporting example; if a reviewer can't cite an example, the score is an impression, not an assessment
- "Not working" decision made at 90 days, not 12 months — the most expensive mistake in HR is waiting 12 months to acknowledge a hire that isn't working at month 3; at 90 days, the pattern is visible and action can be taken with minimal legal and financial cost; the 90-day review is specifically designed to create the decision point
- HITL required: Dr. Lewis coordinates the review; hiring manager assesses performance dimensions with specific examples; Matt Mathison receives review for executive hires; "not working" or PIP decisions require Dr. Lewis approval for non-executive and Matt Mathison approval for executive; any separation decision requires Dr. Lewis recommendation and Matt Mathison sign-off

## System Dependencies
- **Reads from:** Job description, 90-day onboarding plan (if applicable), Day 5 and 30-day check-in notes, manager feedback, employee self-assessment
- **Writes to:** 90-day review document (SharePoint/HR/<Company>/Employees/<Name>/Performance/); PIP if initiated; Matt Mathison brief (executive hires)
- **HITL Required:** Hiring manager provides assessment; Dr. Lewis conducts review and makes recommendation; Matt Mathison receives executive reviews; "not working" or PIP decisions require Matt Mathison for executive hires; separation requires Dr. Lewis recommendation and Matt Mathison approval

## Test Cases
1. **Golden path:** HIVE operations coordinator — 90-day review → Self-assessment: "Proud of: Built the LOE tracking spreadsheet from scratch. Harder than expected: The pace of vendor calls. Support needed: 1-on-1 time with the field supervisor." Manager assessment: Technical: 4/5 (strong — built good systems), Execution: 4/5 (reliable), Communication: 3/5 (developing — doesn't always flag issues proactively), Learning velocity: 5/5 (impressive), THRIVE: 5/5, Relationships: 4/5; Total: 25/35, avg 3.6; Overall: Strong start; Focus area: proactive communication — set expectation "surface problems before they become surprises"; Company obligations: all met; Next 90 goals: (1) own the vendor call process independently, (2) deliver LOE variance report by 5th of each month, (3) propose one process improvement; Matt Mathison notification: not required
2. **Edge case:** A new hire's 90-day review reveals they've been misrepresenting their QuickBooks proficiency — they said they were expert-level but are actually basic → this is both a performance issue and an integrity issue; assess both: "During the review, we identified that the QB proficiency claimed in hiring isn't reflected in the work. This matters for two reasons: (1) it affects the role fit, and (2) it raises an integrity question about what was represented during hiring. I want to understand what happened before recommending a path." Have a direct conversation with the employee; if they acknowledge the gap honestly and demonstrate learning velocity, the integrity concern may resolve; if they minimize or deflect, the integrity concern becomes the primary issue.
3. **Adversarial:** A hiring manager says "I don't want to do the 90-day review — they're doing fine" → "fine" without documentation creates risk; respond: "I understand you're happy with them, and that's great news. The 90-day review takes 30 minutes and creates the documented baseline we need for future performance discussions. It also protects you — if something changes in month 6, you'll want to have a 90-day record showing they were performing well. More importantly, it's a chance to tell them what's going well, which builds retention. Let me run the logistics and send you the format — you just need to show up for the conversation."

## Audit Log
All 90-day reviews retained by employee and date. Self-assessments retained. Manager assessments retained with supporting examples. Company obligation assessments retained. Next-90-day goals retained. PIP initiation and outcomes retained. Separation decisions retained. Matt Mathison notifications retained.

## Deprecation
Retire when each portfolio company has a dedicated HR manager with an HRIS-integrated performance management cycle that includes automated 90-day review reminders, templates, and documentation workflows that don't require Dr. Lewis to coordinate individually.
