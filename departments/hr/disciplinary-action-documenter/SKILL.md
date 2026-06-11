---
name: disciplinary-action-documenter
description: "Document a disciplinary action for an employee misconduct or policy violation. Use when the user says 'disciplinary action', 'write-up', 'employee warning', 'document misconduct', 'verbal warning', 'written warning', 'final warning', 'policy violation', or 'employee discipline'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<employee-name> <issue-type> [--level <verbal|written|final|termination>] [--entity <name>]"
---

# Disciplinary Action Documenter

Document a disciplinary action for an employee misconduct or policy violation. Undocumented discipline is unenforceable discipline — and leaves the company exposed if the situation escalates.

## When to Use
- Employee policy violation (attendance, conduct, performance, safety)
- Progressive discipline step (verbal → written → final → termination)
- Documenting a conversation that serves as a verbal warning
- Before initiating a PIP (see `pip-drafter` — disciplinary docs establish the record)
- Any situation where a written record protects the company and the employee

## Progressive Discipline Ladder

| Step | Type | Typical Trigger | Documentation |
|------|------|----------------|--------------|
| 1 | Coaching conversation | First minor issue | Manager notes (informal) |
| 2 | Verbal warning | Repeated minor issue, first moderate issue | Documented verbal warning form |
| 3 | Written warning | Escalation or significant issue | Formal written warning |
| 4 | Final written warning | Last chance before termination | Final warning with clear consequence |
| 5 | Termination | Continued violation after final warning, or gross misconduct | Separation documentation |

**Gross misconduct** (harassment, fraud, theft, workplace violence, policy violation with serious harm) may skip directly to termination. Always involve HR before any termination.

## Pre-Documentation Checklist
- [ ] HR notified and involved
- [ ] Investigation completed (if warranted — did we hear from the employee?)
- [ ] Facts documented (specific behaviors, dates, witnesses if applicable)
- [ ] Prior disciplinary history reviewed
- [ ] Policy being violated is documented and was communicated to employee
- [ ] Is this a protected activity? (Union activity, whistleblowing, FMLA — legal review needed)

## Verbal Warning Format (Step 2)

Even "verbal" warnings must be documented in writing by the manager.

```markdown
# Verbal Warning — Conversation Documentation
**Employee:** <name> | **Date of Conversation:** <date>
**Manager:** <name> | **HR Present:** Yes / No

## Policy Violation / Issue
<Specific description of the conduct or performance issue, with dates and context>

## Company Policy
<The specific policy that was violated — cite the policy name and section>

## Employee Response
<What the employee said — their perspective, acknowledgment, or disagreement>

## Expectations Going Forward
<Specific, measurable expectation — what must change and by when>

## Consequence if Not Addressed
<Clear statement: if this continues, the next step is [written warning / further discipline / termination]>

**Manager Signature:** _________________________ Date: ___________
*(A copy of this documentation will be maintained in HR records)*
```

## Written Warning Format (Step 3-4)

```markdown
# Written Warning
**Employee:** <name> | **Date:** <date>
**Role:** <title> | **Entity:** <entity>
**Manager:** <name> | **HR:** <name>
**Warning Level:** First Written Warning / Final Written Warning

## Description of Conduct / Policy Violation
On <date>, <employee name> <specific description of what occurred>.

This is not the first time this issue has been raised:
- <Prior coaching or verbal warning with date>

## Policy Reference
This conduct is a violation of [Company/Entity] policy: <policy name and section>, which states: "<relevant policy language>"

## Impact
<How this conduct affected the team, company, clients, or operations>

## Employee Statement
<Employee's response or "Employee declined to provide a statement">

## Required Corrective Actions
The following must occur by <date>:
1. <Specific action required>
2. <Specific action required>

## Consequence Statement
This written warning will remain in your personnel file. Failure to correct the above or any further violations of company policy may result in further disciplinary action, up to and including termination of employment.

---
**Employee Signature:** _________________________ Date: ___________
*(Signature acknowledges receipt, not agreement)*

**Manager Signature:** _________________________ Date: ___________
**HR Signature:** _________________________ Date: ___________
```

## Output Contract
- Policy being violated always cited specifically — no vague "professionalism" violations
- Employee response always documented — protects against claims of unfair process
- Consequence statement always explicit — no ambiguity about what happens next
- HITL required: HR reviews all written warnings before delivery; legal review for any final warning or gross misconduct situation

## System Dependencies
- **Reads from:** Incident description, policy reference, prior disciplinary history (provided)
- **Writes to:** Nothing (disciplinary form for HITL review and delivery)
- **HITL Required:** HR lead reviews before all written warnings; Dr. Lewis involved for any final warning or anticipated termination

## Test Cases
1. **Golden path:** Attendance issue (3rd late occurrence) → written warning with specific dates, policy reference, corrective action plan with 30-day review
2. **Edge case:** Conduct issue by a long-tenured, otherwise strong employee → acknowledges tenure, recommends written warning with clear path to resolution, flags that tenure doesn't exempt from policy
3. **Adversarial:** Request to document discipline for protected activity (e.g., employee raised a safety complaint) → flags as potential retaliation risk, refuses to proceed without legal review, escalates to Dr. Lewis

## Audit Log
Disciplinary documents retained permanently in employee file. Escalation and HR notification dates logged.

## Deprecation
Retire when HRIS includes digital disciplinary workflow with approval routing, e-signature, and progressive discipline tracking.
