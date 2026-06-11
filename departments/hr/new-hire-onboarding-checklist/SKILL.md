---
name: new-hire-onboarding-checklist
description: "Run the employee onboarding checklist for a new team member joining MBL or a portfolio company. Use when the user says 'new hire onboarding', 'employee onboarding', 'onboard this employee', 'first day checklist', 'new employee setup', or 'start someone at the company'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<employee-name> <role-title> [--entity <name>] [--start-date <YYYY-MM-DD>] [--remote <yes|no>]"
---

# New Hire Onboarding Checklist

Run the complete employee onboarding checklist for a new team member. The first 90 days determine whether a new hire will succeed — a structured onboarding process reduces time-to-productivity by 50% and cuts early turnover by 82%.

## When to Use
- Any new employee joining MBL or a portfolio company
- Converting a contractor to FTE (partial onboarding applies)
- Rehiring a former employee (confirm which steps to repeat)

## Onboarding Phases

### Pre-Start (Before Day 1)

**HR / Compliance**
- [ ] Offer letter signed and filed
- [ ] Background check cleared
- [ ] I-9 authorization packet sent (employee must complete Section 1 by Day 1)
- [ ] W-4 and state tax forms sent
- [ ] Direct deposit form sent
- [ ] Benefits enrollment packet sent (coverage starts Day 1 for most plans — enroll within 30 days)
- [ ] Employee handbook sent for review and acknowledgment signature

**IT Setup (Complete Before Day 1)**
- [ ] Email address created (<first.last@entity.com>)
- [ ] Microsoft 365 account provisioned
- [ ] Device ordered / prepared (laptop, peripherals)
- [ ] Access granted: Microsoft Teams, SharePoint
- [ ] Software licenses provisioned (role-specific)
- [ ] Password manager / SSO setup

**Manager Prep**
- [ ] 30/60/90-day success plan drafted (what does good look like?)
- [ ] First week schedule blocked (who they meet, what they learn)
- [ ] Buddy / peer assigned
- [ ] Desk or remote workspace confirmed

### Day 1

- [ ] Welcome call / in-person meeting with manager
- [ ] IT equipment working and accounts accessible
- [ ] I-9 Section 2 completed (employer must complete within 3 business days of start)
- [ ] Benefits enrollment confirmed (or deadline explained)
- [ ] Office tour / team introduction (or virtual equivalent)
- [ ] Mission, THRIVE values, and team context shared
- [ ] First-week schedule reviewed

### First Week

- [ ] 1:1 with direct manager (Day 1 and Day 5)
- [ ] Meetings with key stakeholders (per manager's list)
- [ ] Access to all required systems confirmed
- [ ] Core tools orientation (Monday.com, Krista.ai if applicable)
- [ ] First meaningful task assigned

### 30-Day Check-In
- [ ] Manager 30-day review (how is it going, what's unclear, what needs adjusting)
- [ ] Employee: any access gaps, tool issues, relationship gaps?
- [ ] Benefits enrollment confirmed (deadline is typically 30 days)
- [ ] 60-90 day goals clarified

### 90-Day Completion
- [ ] 90-day success plan reviewed against actuals
- [ ] Performance expectations formalized
- [ ] Initial feedback shared both ways
- [ ] Probationary period complete (if applicable per entity policy)

## Output Format

```markdown
# Employee Onboarding — <Employee Name>
**Role:** <role> | **Entity:** <entity> | **Start Date:** <date>
**Manager:** <name> | **HR Owner:** <name>

## Onboarding Status

**Overall:** <N>/<total> tasks complete | Phase: <current phase>

## Pre-Start (Day -N to Day 0)

### HR / Compliance
- [x] Offer letter signed (filed <date>)
- [x] Background check cleared (<date>)
- [ ] I-9 packet sent — ⚠️ PENDING (must be done before Day 1)
- [ ] W-4 sent — PENDING

### IT Setup
- [x] Email created: <email>
- [ ] Device ordered — PENDING (ETA <date>)

### Manager Prep
- [x] 30/60/90-day plan drafted
- [ ] Buddy assigned — PENDING

## Blockers (Requires Action Before Start Date)
1. Device not yet ordered — IT to order by <date>
2. I-9 packet not sent — HR to send by <date>

## Day 1 Schedule
<First-day agenda>

## 30-Day Milestones
<What success looks like at 30 days>
```

## Output Contract
- I-9 compliance always tracked — legal requirement
- IT setup always completed before Day 1 — not an optional pre-start item
- Every blocker flagged with specific owner and deadline
- HITL required before any onboarding communication goes to the new hire

## System Dependencies
- **Reads from:** Employee data, role details (provided), IT provisioning status
- **Writes to:** Nothing (checklist for HR/manager action)
- **HITL Required:** HR lead owns process; manager approves 30/60/90 plan before sharing with employee

## Test Cases
1. **Golden path:** New FTE starting in 10 days → complete pre-start checklist with IT blockers flagged, Day 1 schedule drafted
2. **Edge case:** Remote employee onboarding → device shipping confirmation required, all sessions virtual, additional emphasis on written communication and async tool setup
3. **Adversarial:** Start date pushed up with only 2 days notice → flags what cannot be completed in time (I-9 requires Day 1, not pre-start), recommends delay or risk documentation

## Audit Log
Onboarding checklists retained by employee and start date. I-9 completion dates logged separately for compliance audits.

## Deprecation
Retire when HRIS provides automated onboarding workflow with task assignment, deadline tracking, and compliance alerting.
