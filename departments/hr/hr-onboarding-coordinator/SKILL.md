---
name: hr-onboarding-coordinator
description: "Coordinate new employee onboarding. Use when the user says 'onboard a new employee', 'new hire onboarding', 'employee onboarding', 'first day setup', 'new employee first week', 'onboarding checklist', 'get a new hire set up', 'new hire orientation', 'Day 1 for new hire', 'first week plan', or 'welcome a new employee'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--hire <name>] [--role <title>] [--start-date <YYYY-MM-DD>] [--remote <yes|no>]"
---

# HR Onboarding Coordinator

Coordinate new employee onboarding for MBL portfolio companies — from the signed offer through the end of the first week. Onboarding is the company's first impression as an employer. A new hire who arrives and can't access their email, doesn't know who to talk to, and has no structure for their first week will have a poor experience and lose confidence in the organization. A well-run onboarding delivers access on Day 1, context in Week 1, and connection to the team by the end of Month 1.

## When to Use
- A signed offer has been received and the start date is within 3 weeks
- A new employee is starting and Day-1 logistics need to be confirmed
- A new hire is struggling and their onboarding experience needs to be assessed
- Matt Mathison asks whether a new hire is properly set up
- Allevio is onboarding a clinical employee with specific credential and compliance requirements

## Onboarding Framework

```
Three phases of onboarding:

Pre-Start (Day -14 to Day -1):
  Goal: Everything ready before they walk in (or log in)
  Failure mode: New hire arrives to find no laptop, no email, no access
  Owner: Dr. Lewis coordinates; IT executes; HR prepares paperwork

Day 1 (the first impression):
  Goal: New hire feels welcome, productive, and clear on Week 1 priorities
  Failure mode: New hire spends Day 1 filling out paperwork and waiting for access
  Owner: Hiring manager + Dr. Lewis coordinates

Week 1 (context and connection):
  Goal: New hire understands the company, their role, and who they work with
  Failure mode: New hire is left alone to "figure it out"; no structured learning
  Owner: Hiring manager owns; Dr. Lewis checks in Day 5

Role-specific additions:
  Finance hires: see finance-onboarding-plan for detailed 90-day plan
  Allevio clinical hires: add credential verification, HIPAA training, OIG clearance
  Executive hires: Dr. Lewis conducts a 90-day integration check-in
```

## Output Format

```markdown
# New Hire Onboarding — <Name>
**Company:** <Entity> | **Role:** [Title]
**Start date:** [Date] | **Remote/On-site:** [Remote / Hybrid / On-site]
**Hiring manager:** [Name] | **Onboarding coordinator:** Dr. John Lewis

---

## Pre-Start Checklist (Complete by Day -3)

### IT and Access Setup
- [ ] Laptop/equipment ordered and delivered (allow 5-7 business days for shipping)
- [ ] Microsoft 365 account created (email: firstname.lastname@[company].com)
- [ ] Email added to relevant distribution lists and channels
- [ ] [QuickBooks access — Finance roles only]
- [ ] [Bill.com access — Finance roles only]
- [ ] [Role-specific system access — list systems]
- [ ] SharePoint access provisioned (relevant folders for their role)
- [ ] Zoom/Teams account active
- [ ] Password manager invitation sent

### HR and Legal Paperwork
- [ ] Signed offer letter on file ✅
- [ ] Background check cleared ✅
- [ ] I-9 verification scheduled (Day 1 or within 3 days — federal requirement)
- [ ] W-4 (federal withholding) — sent via [DocuSign / HR system]
- [ ] State withholding form (if applicable)
- [ ] Direct deposit form — sent to new hire
- [ ] Employee handbook sent / link provided
- [ ] Benefits enrollment package sent (effective date: [date])

### Allevio Clinical Roles — Additional Pre-Start
- [ ] OIG LEIE exclusion check: ✅ Clear
- [ ] State license verified: ✅ [License # / State]
- [ ] HIPAA training assigned (due: within first 30 days)
- [ ] [DEA verification if prescriber]
- [ ] Credential file initiated

### Day 1 Schedule Prepared
- [ ] Hiring manager calendar blocked for 2-hr Day 1 welcome
- [ ] Team intro meeting scheduled (Week 1)
- [ ] Lunch / welcome planned (on-site) or virtual coffee (remote)
- [ ] First-week priorities documented and ready to share

---

## Day 1 Agenda — [Start Date]

| Time | Activity | Owner |
|------|---------|-------|
| 9:00 AM | Welcome call / in-person welcome — Dr. Lewis + hiring manager | Dr. Lewis |
| 9:30 AM | System access walkthrough — confirm everything works | IT / Dr. Lewis |
| 10:00 AM | I-9 verification | HR / Manager |
| 10:30 AM | Company overview — MBL context, portfolio, THRIVE values | Dr. Lewis / CEO |
| 11:30 AM | Role overview — what does success look like in the first 30/60/90 days? | Hiring manager |
| 12:00 PM | Welcome lunch / virtual coffee | Team |
| 1:00 PM | Department tools walkthrough — [specific to role] | Hiring manager |
| 2:30 PM | Open time — review policies, handbook, benefits enrollment | New hire |
| 4:30 PM | Day 1 check-in — any questions? Access issues? Anything unclear? | Dr. Lewis |

---

## Week 1 Plan

| Day | Focus | Key activities |
|-----|-------|---------------|
| Day 1 | Welcome + Setup | See agenda above |
| Day 2 | Company and Industry Context | Read last 3 management reports; 1-on-1 with CEO/direct leader (30 min) |
| Day 3 | Role Deep Dive | Hiring manager walkthrough of first 30-day priorities; review existing work product |
| Day 4 | Team and Stakeholder Introductions | 3-4 introductory calls with key colleagues / stakeholders |
| Day 5 | Integration and Q&A | Open time + Day 5 check-in with Dr. Lewis (30 min) |

---

## Day 5 Check-In Questions (Dr. Lewis)

1. What was clearer than you expected?
2. What is still confusing or unclear?
3. Do you have everything you need to start your work (access, tools, context)?
4. What would have made your first week better?
5. Anything Dr. Lewis or the team should know?

---

## Benefits Enrollment Tracker

| Benefit | Enrollment deadline | Status | Notes |
|---------|-------------------|--------|-------|
| Health insurance | [Date — typically 30 days from start] | Pending / ✅ Enrolled | |
| Dental / Vision | [Date] | | |
| 401(k) | [Date — often open enrollment or any time] | | |
| Life insurance | [Date] | | |
| [Other] | | | |

---

## 30-Day Check-In (Dr. Lewis + Hiring Manager)

Scheduled: [Date — 30 days from start]

Questions:
- Are they performing at the level expected?
- Are there any early concerns (technical, cultural, communication)?
- Do they have what they need to succeed in their role?
- Is there anything about the role that wasn't as described in the hiring process?

Decision point: Continue as planned / Address specific improvement areas / Escalate early concern to Matt Mathison
```

## Output Contract
- Access on Day 1 — non-negotiable; a new hire who cannot access email, systems, or tools on Day 1 has a bad first impression and loses productive time; the pre-start checklist is completed by Day -3, not Day 1; IT setup is a priority task in the hiring process, not an afterthought
- I-9 verification within 3 days — federal law requires I-9 completion within 3 business days of the start date; this is not optional; for remote employees, virtual I-9 completion procedures apply (authorized remote verification); Allevio employees may have additional credential verification requirements on top of I-9
- Allevio clinical hires have additional requirements — OIG clearance must be documented before start date; HIPAA training must be assigned on Day 1 and completed within 30 days; state license must be verified before the employee provides any patient-related services; credential file must be initiated on Day 1; these are not suggestions — they are regulatory requirements
- Day 5 check-in happens — onboarding quality is assessed at Day 5 with a short conversation; first-week problems (access issues, unclear priorities, cultural mismatch) caught in Day 5 are much easier to address than ones caught at Day 30 or during a performance review
- HITL required: Dr. Lewis coordinates all pre-start logistics; IT executes system access; hiring manager owns Day 1 welcome and Week 1 schedule; Dr. Lewis conducts Day 5 and 30-day check-ins; any early concern from 30-day check-in escalated to Matt Mathison for executive hires; Allevio clinical credential requirements confirmed by Dr. Lewis before start date

## System Dependencies
- **Reads from:** Signed offer letter, background check clearance, I-9 documents (on Day 1), benefits enrollment forms, employee handbook, credential verification (Allevio)
- **Writes to:** Employee file (SharePoint/HR/<Company>/Employees/<Name>/); payroll system (new employee record); Microsoft 365 (new account); benefits carrier (enrollment); credential file (Allevio clinical)
- **HITL Required:** Dr. Lewis coordinates pre-start logistics and Day 5/30 check-ins; IT provisions access; Allevio OIG and license clearance required before start date; any onboarding concern escalated to hiring manager immediately

## Test Cases
1. **Golden path:** Allevio front desk coordinator starts Monday → Day -7: Microsoft 365 account created, laptop shipped; OIG LEIE check ✅, AZ state credential N/A (non-clinical role); I-9 materials sent; HIPAA training link ready; Day -3: laptop confirmed delivered; all access active and tested; I-9 scheduled for Day 1; Day 1: Dr. Lewis welcome call 9 AM; access walkthrough confirms all systems working; I-9 complete by 10 AM; company overview by CEO; team lunch at noon; patient scheduling system walkthrough PM; Day 5 check-in: "Access is good. I'm still learning the scheduling system but the team has been helpful. One thing: I didn't know who to call about a scheduling conflict — could we clarify the escalation path?"; Dr. Lewis: creates escalation guide and sends by EOD; 30-day check-in: strong start, no concerns
2. **Edge case:** A new remote hire's laptop doesn't arrive by Day 1 (shipping delay) → do not cancel or delay the start date; call the new hire Day -1 as soon as the delay is known: "Your laptop is delayed by 2 days. We have two options: use your personal computer temporarily (I can send you a secure setup guide), or push the start date to Wednesday — your preference." Have a plan; don't make the new hire discover the problem at 9 AM on Monday when they have no way to work
3. **Adversarial:** A hiring manager says "just let them figure it out — we're busy" and resists the Day 1 agenda → new hire experience is a management responsibility; respond directly: "I understand you're busy — that's exactly why we have a structure. An unstructured first week costs more than 2 hours of your time: the new hire takes longer to become productive, makes more mistakes because they lack context, and may start questioning whether they made the right choice joining. I can run most of the Day 1 logistics — I need you for the 1-on-1 role conversation (30 min) and the 30-day priority setting. That's it. Is [time] on Monday available?"

## Audit Log
All onboarding checklists retained by employee and start date. I-9 completions documented. Benefits enrollment confirmations retained. Allevio OIG clearances and credential verifications retained permanently. Day 5 and 30-day check-in notes retained. Early concerns and escalations documented.

## Deprecation
Retire when each portfolio company has a dedicated HR manager who owns new hire onboarding with automated access provisioning, standard onboarding workflows in an HRIS, and company-specific Day 1 programs that don't require Dr. Lewis's coordination for each new hire.
