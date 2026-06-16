---
name: hr-pip-manager
description: "Build and manage a Performance Improvement Plan. Use when the user says 'performance improvement plan', 'PIP', 'employee on a PIP', 'put someone on a PIP', 'formal warning', 'improvement plan', 'employee performance issues', 'document performance issues', 'performance counseling', 'final warning', 'managing out an employee', or 'employee not performing'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--role <title>] [--duration <30|60|90>] [--issue <performance|behavior|both>]"
---

# HR Performance Improvement Plan (PIP) Manager

Build and manage a Performance Improvement Plan for an underperforming employee at an MBL portfolio company. A PIP is a formal, documented process that gives an employee a clear path to meet expectations — and creates the documented record needed if the outcome is separation. A well-run PIP is honest about the problem, specific about what must improve, gives a realistic timeline, and provides genuine support. A PIP that is written as a formality before firing someone is both dishonest and legally riskier than a well-documented genuine improvement process.

## When to Use
- An employee's performance or behavior is consistently below expectations after informal coaching
- A 90-day or annual review produced a "Below Expectations" rating with no improvement
- A specific performance incident (financial error, compliance failure, customer complaint) requires formal documentation
- A manager has had repeated informal conversations with no improvement and needs to escalate
- Matt Mathison is aware of an underperforming employee and needs documentation of the process

## PIP Framework

```
When a PIP is appropriate:
  - Informal coaching has occurred (at least 2 documented conversations)
  - The performance problem is specific and observable (not personality-based)
  - The employee has the capacity to improve if they apply themselves
  - The role still exists and is still needed

When a PIP is NOT appropriate:
  - A decision to separate has already been made — a PIP used as a paper trail for a
    predetermined termination is dishonest and can create legal exposure
  - The performance issue is actually a conduct/integrity violation — those require
    immediate action, not a 60-day improvement process
  - The role is being eliminated — that's a layoff, not a PIP

PIP duration:
  30 days: Severe/urgent issue; specific measurable goals
  60 days: Standard improvement timeline for most performance issues
  90 days: Complex role, reasonable timeline for learning/improvement

PIP outcomes (only two):
  1. Employee meets all goals → PIP closes; note in file; move forward
  2. Employee does not meet goals → separation, with documentation in place

Legal note: Dr. Lewis reviews PIP before delivery. Employment attorney involved 
if: prior HR complaint, protected class concern, or >$25K severance likely.
```

## Output Format

```markdown
# Performance Improvement Plan — <Employee Name>
**Company:** <Entity> | **Role:** [Title] | **Department:** [Dept]
**PIP period:** [Start date] to [End date — typically 30, 60, or 90 days]
**Manager:** [Name] | **HR:** Dr. John Lewis
**Issue type:** [Performance / Conduct / Both]

---

## Background

**Prior coaching conversations:**

| Date | Topic | Outcome / Employee response |
|------|-------|---------------------------|
| [Date] | [What was discussed] | [What the employee said/committed to] |
| [Date] | | |

**Performance review rating (if applicable):** [Rating] — [Date]

**Summary of the problem:**
[2-4 sentences. What specifically is the problem? What has been documented? What has not improved? Be factual and specific — avoid adjectives like "unprofessional" or "poor attitude" without specific behavioral examples.]

---

## Performance Requirements

The following specific, measurable performance requirements must be met during the PIP period:

| Requirement | Current state | Required state | How measured | Deadline |
|------------|-------------|--------------|-------------|---------|
| [e.g., Monthly close completed by Day 7] | [Close averaging Day 14] | [Close by Day 7 for 2 consecutive months] | [Close date log] | [End of PIP] |
| [e.g., Zero unreconciled items >$500 at month-end] | [2-3 per month average] | [Zero per month] | [Reconciliation completion report] | [End of PIP] |
| [Requirement 3 — specific and measurable] | | | | |
| [Requirement 4] | | | | |

**Important:** All requirements must be met to successfully complete the PIP. Meeting some requirements but not others is not a successful outcome.

---

## Company Support During PIP

The company commits to providing the following support during the PIP period:

| Support | Owner | Frequency |
|---------|-------|----------|
| Weekly 1:1 check-in with manager — dedicated to PIP progress | [Manager] | Weekly |
| Dr. Lewis available for questions or concerns | Dr. Lewis | On request |
| [Specific training or resource — if applicable] | [Owner] | [Frequency] |
| [Tool, access, or process improvement the company will provide] | | |

---

## Check-In Schedule

| Date | Milestone | Assessment |
|------|---------|-----------|
| [Week 2] | Mid-point check-in | On track / Behind / Exceeding |
| [Week 4] | [If 60-day PIP: mid-point formal review] | |
| [End of PIP] | Final evaluation | Met all requirements / Did not meet requirements |

---

## Consequences

If all requirements are met by [End date]:
- PIP period closes.
- A brief note is added to the employee's file confirming successful completion.
- Regular performance management cycle resumes.

If requirements are not met by [End date]:
- Employment will be terminated, effective [End date or as determined at that time].
- This PIP is the final step in the progressive discipline process.

**The employee understands that this is a formal performance improvement process and that failure to meet the stated requirements will result in termination.**

---

## Acknowledgment

I have received, read, and understood this Performance Improvement Plan. I understand what is expected of me and the consequences if I do not meet those expectations.

Employee signature: _________________________ Date: _____________
Manager signature: _________________________ Date: _____________
Dr. John Lewis: _________________________ Date: _____________

*(Signature does not indicate agreement, only receipt and understanding.)*

---

## PIP Outcome Record (completed at end of PIP period)

**PIP period:** [Start] to [End]

| Requirement | Met? | Evidence |
|------------|------|---------|
| [Requirement 1] | ✅ Met / 🔴 Not met | [Specific evidence] |
| [Requirement 2] | | |
| [Requirement 3] | | |

**Overall PIP outcome:** ✅ Successfully completed — PIP closed / 🔴 Requirements not met — Separation proceeding

**Final decision approved by:** Dr. Lewis [non-executive] / Matt Mathison [executive] | **Date:** [Date]
```

## Output Contract
- Informal coaching must precede the PIP — a PIP issued to an employee who has received no prior feedback is both unfair and legally risky; the PIP background section must document at least 2 prior conversations with dates; if those conversations weren't documented at the time, Dr. Lewis documents them retroactively with the manager's input before issuing the PIP
- Requirements are specific and measurable — a PIP that says "improve communication" will always fail because neither party can objectively assess whether it was met; every PIP requirement must be specific (what), measurable (how assessed), and time-bound (by when); a requirement the employee can clearly pass or clearly fail is a good requirement
- Only two PIP outcomes — the PIP either succeeds (all goals met) or fails (separation); there is no "partial success" outcome; an employee who met 3 of 4 requirements but not the most important one has not successfully completed the PIP; the manager and Dr. Lewis agree in advance on what "met" means for each requirement so there is no ambiguity at the end
- PIP is not a predetermined termination — a PIP issued as paperwork for a decision already made is dishonest, damages trust with the entire team when it becomes known, and creates legal exposure (courts look unfavorably on PIPs with no genuine improvement opportunity); if the decision to separate is already made, the company should proceed directly to separation with appropriate documentation, not use a PIP as a delay
- HITL required: Dr. Lewis drafts and reviews all PIPs; manager delivers with Dr. Lewis present; Matt Mathison notified of any PIP for director and above; employment attorney involved if protected class concern, prior HR complaint, or >$25K severance likely at outcome; separation at end of PIP requires Dr. Lewis recommendation and Matt Mathison approval

## System Dependencies
- **Reads from:** Performance review records, coaching conversation notes, attendance/disciplinary records, prior 90-day review, performance metrics for the role
- **Writes to:** PIP document (SharePoint/HR/<Company>/Employees/<Name>/Performance/); PIP outcome record; separation documentation (if applicable); Matt Mathison brief
- **HITL Required:** Dr. Lewis drafts and is present for delivery; Matt Mathison notified for director and above; legal review for high-risk situations; separation at PIP end requires Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio bookkeeper — PIP for close delays → Prior coaching: 2 conversations (March 15: "close is averaging Day 14, target is Day 7"; April 20: "same issue; provided checklist; employee said 'I'll get it right'"); PIP issued May 1: Requirements: (1) Close by Day 7 for May and June, (2) All bank reconciliations complete by Day 5 for May and June, (3) Zero unreconciled items >$500 at month-end for May and June; Support: weekly 1:1, Dr. Lewis available; May outcome: Close Day 9 (not met), recs Day 4 (met), zero unreconciled (met); June outcome: Close Day 6 (met), recs Day 5 (met), one $800 unreconciled item cleared Day 3 (not met — end of month had outstanding item); Final: Requirement 3 not met in June; employment terminated June 30; separation documentation retained
2. **Edge case:** Midway through a PIP, the employee discloses a personal medical situation (family crisis) that is affecting their performance → the company has an obligation to consider whether an accommodation is appropriate; consult Dr. Lewis immediately; options: extend the PIP timeline (if the situation is temporary and documented), discuss FMLA eligibility (if applicable — company size matters), or maintain the timeline if the personal situation is unrelated to the performance issue; do not terminate during an active FMLA leave; document the conversation and the decision made; involve employment attorney if FMLA is in play
3. **Adversarial:** A manager wants to issue a PIP immediately after one performance incident with no prior coaching → slow this down: "A PIP after a single incident without prior coaching creates two problems: it's unfair to the employee (first formal notice is the nuclear option), and it weakens our legal position if the outcome is termination. Let's start with a documented coaching conversation: specific about what happened, what's expected going forward, and the consequences of continued issues. If the problem continues after one or two documented conversations, then we escalate to a PIP. That path is both fairer and stronger."

## Audit Log
All PIPs retained by employee and date. Prior coaching conversations documented. Check-in meeting notes retained. Outcome records retained. Separation decisions and approvals retained. Legal review involvement documented. All documents retained permanently for former employees.

## Deprecation
Retire when portfolio companies have dedicated HR managers with formal progressive discipline frameworks, manager training on documentation practices, and legal counsel relationships that support employment decisions without Dr. Lewis's direct involvement in each PIP process.
