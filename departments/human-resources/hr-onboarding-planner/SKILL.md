---
name: hr-onboarding-planner
description: "Build a 90-day onboarding plan for new hires at MBL Partners portfolio companies. Use when the user says 'onboarding plan', 'new hire plan', '90-day plan', 'new employee plan', 'first 90 days', 'onboard the new hire', 'what do we do when they start', 'new hire checklist', 'new hire roadmap', 'new hire ramp', 'ramp plan', 'ramp the new hire', 'employee ramp', 'first week plan', 'first 30 days', 'first 60 days', 'first 90 days plan', 'getting the new hire up to speed', 'new employee onboarding', 'onboarding timeline', 'Day 1 plan', 'Week 1 plan', 'new hire success', 'set up for success', 'provisioning new hire', 'systems access new hire', or 'new hire orientation plan'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--level <ic|manager|director|vp>] [--start-date <YYYY-MM-DD>]"
---

# HR Onboarding Planner

Build a structured 90-day onboarding plan that ramps a new hire from Day 1 to full productivity — covering systems access, culture orientation, role-specific training, relationship building, and early wins — tailored to entity, role level, and the specific outcomes defined in the role profile. Week 1 is learning only; no deliverables expected in Week 1; the goal in the first 30 days is understanding, not output.

## When to Use
- A hire has accepted an offer and a start date is confirmed
- Day 1 provisioning and orientation needs to be planned
- A 90-day success plan needs to be defined before the hire starts

## 90-Day Onboarding Framework

```
PRE-START (1 week before Day 1):
  Provisioning checklist:
    [ ] Email account created (Microsoft 365)
    [ ] HRIS record created
    [ ] Payroll record created (QuickBooks)
    [ ] Systems access provisioned (role-appropriate — least privilege)
    [ ] Equipment ordered and ready on Day 1
    [ ] Desk / workspace assigned (on-site roles)
    [ ] Monday.com access and board assignment
    [ ] GoHighLevel access (CRM roles only)
    
  Entity-specific pre-start provisioning:
    Allevio: HIPAA training module assigned (must complete by Day 5); 
      PHI system access NOT provisioned until HIPAA training complete
      AdvancedMD access: clinical roles only; provisioned after HIPAA
    HIVE: Covercy access for finance/royalty roles; DOGM reporting access for ops roles
    Column6: DSP/SSP platform access; IO management system; campaign reporting
    
  Buddy assignment: Dr. Lewis assigns a peer buddy for each new hire
  Welcome message: entity CEO sends personal welcome email before Day 1

WEEK 1 — ORIENTATION AND LISTENING:
  Day 1: Welcome meeting (entity CEO or Dr. Lewis); team introductions; office tour
  Day 1: THRIVE values orientation (Dr. Lewis or delegate); MBL mission and portfolio context
  Day 1-2: Systems orientation (email; HRIS; Monday.com; entity-specific tools)
  Day 2: Role clarity meeting with hiring manager: "Here's what your first 30-60-90 days look like"
  Week 1 rule: NO deliverables due; all listening and learning
  
  Allevio Week 1 HIPAA gate:
    HIPAA Privacy and Security training complete by Day 5 (required before PHI access)
    BAA understanding: if role involves PHI vendors, review BAA framework
    
30-DAY CHECK (Day 30):
  Entity CEO + Dr. Lewis review:
    Provisioning complete? Any gaps?
    Role clarity: does the new hire understand their 90-day outcomes?
    Culture signals: THRIVE alignment showing? Any early concerns?
    Relationships: key internal contacts established?
  New hire check-in: "What's one thing you didn't expect? What do you need to be more effective?"
  
60-DAY CHECK (Day 60):
  Hiring manager + Dr. Lewis review:
    Progress toward 90-day outcomes: on track / behind / ahead
    Competency signals: matching what was promised in interviews?
    Any performance concerns: if yes, document and initiate coaching now (not at Day 90)
    
90-DAY REVIEW (Day 90):
  Entity CEO + Dr. Lewis:
    Outcomes delivered vs. 90-day plan (from hr-job-profiler)
    Decision: confirmed hire / extended ramp (with specific plan) / PIP trigger
    Salary confirmation (if merit bump tied to 90-day performance)
    Feedback to hiring manager and new hire

LEVEL-SPECIFIC ONBOARDING ADDITIONS:
  IC: peer buddy; 1:1 with hiring manager weekly; tool mastery in 30 days
  Manager: 1:1 with all direct reports in Week 1-2; skip-level 1:1 with entity CEO in Week 2
  Director+: Dr. Lewis 1:1 in Week 1; stakeholder mapping in first 30 days; 
    30-day listening tour with all key relationships
  VP+: Matt Mathison 1:1 in Week 2; entity board introduction; 60-day strategic assessment
```

## Output Format

```markdown
# 90-Day Onboarding Plan — [Name] | [Role] | [Entity] — Start: [Date]
**Prepared by:** Dr. Lewis | **Hiring manager:** [Name] | **Buddy:** [Name]

---

## Pre-Start Provisioning
- [ ] Email + Microsoft 365 active by [Date]
- [ ] HRIS record created
- [ ] Payroll record created
- [ ] Equipment ready
- [ ] HIPAA training assigned (Allevio: must complete by Day 5 before PHI access)
- [ ] Buddy assigned: [Name]

---

## 30-Day Plan (Weeks 1-4) — Orientation & Learning
**Week 1:** No deliverables. THRIVE orientation. Systems setup. Key introductions.
**Week 2:** Shadow key workflows. Attend relevant team meetings. Role clarity 1:1 with manager.
**Week 3-4:** Begin first independent tasks. Weekly 1:1 with manager (30 min).
**Day 30 check-in:** [Date] — CEO + Dr. Lewis review

---

## 60-Day Plan (Weeks 5-8) — Contribution Begins
**Target outcomes by Day 60:**
1. [Outcome — from role profile]
2. [Outcome]
**Day 60 review:** [Date] — hiring manager + Dr. Lewis

---

## 90-Day Outcomes (from Role Profile)
**90-day success definition:** [from hr-job-profiler]
**Day 90 review:** [Date] — entity CEO + Dr. Lewis
**Decision gate:** Confirmed hire / Extended ramp (with written plan) / PIP trigger
```

## Output Contract
- Week 1 is learning only — a new hire who is given deliverables in Week 1 spends the first week stressed about output instead of building the foundation (relationships, systems knowledge, cultural understanding) that makes them effective for the next 5 years; Dr. Lewis reinforces this with every hiring manager before the hire's start date; the one exception is a role where an urgent business need requires early contribution, in which case Dr. Lewis and the CEO explicitly discuss the tradeoff and the new hire is informed
- Allevio HIPAA access gate is non-negotiable — no PHI system access (AdvancedMD, clinical records systems, member data) until HIPAA training is certified complete; Dr. Lewis confirms HIPAA training completion record before PHI access is provisioned; if HIPAA training is delayed past Day 5, PHI access is delayed accordingly; the entity is liable for PHI access by an untrained employee
- Performance concerns identified at Day 60 are addressed immediately — waiting until Day 90 to raise a performance concern that was visible at Day 60 wastes 30 days and makes the conversation harder; the 60-day check exists specifically to catch early signals; if the hiring manager has concerns at Day 60, Dr. Lewis initiates a coaching conversation immediately with documented expectations; if still unresolved at Day 90, the 90-day review becomes a formal discussion per hr-pip-builder
- HITL required: pre-start provisioning checklist → Dr. Lewis signs off; Allevio HIPAA training gate → Dr. Lewis confirms before PHI access; Day 30 check-in → entity CEO + Dr. Lewis; Day 60 performance concern → Dr. Lewis initiates coaching; Day 90 review → entity CEO + Dr. Lewis; extended ramp or PIP trigger → entity CEO + Dr. Lewis joint decision

## System Dependencies
- **Reads from:** hr-job-profiler (90-day and 12-month outcomes; must-have competencies); hr-offer-builder (confirmed start date; comp; role level); hr-hiring-scorecard (competencies to develop; reference notes)
- **Writes to:** Onboarding plan (SharePoint → HR → Onboarding → [Entity] → [Name]); HRIS new hire record; Monday.com onboarding checklist; Allevio HIPAA training assignment (LMS); payroll system new hire record; 30/60/90 day review calendar invites
- **HITL Required:** Provisioning checklist → Dr. Lewis confirms; HIPAA gate (Allevio) → Dr. Lewis certifies before PHI access; Day 30 check-in → CEO + Dr. Lewis; Day 60 concern → Dr. Lewis coaches immediately; Day 90 review → CEO + Dr. Lewis; extended ramp → CEO + Dr. Lewis joint decision

## Test Cases
1. **Golden path:** Allevio Care Coordinator starts Monday. Pre-start: email active Friday; HIPAA training module assigned; desk ready; buddy (senior CSM) assigned. Day 1: THRIVE orientation with Dr. Lewis; team lunch; systems walkthrough. Day 5: HIPAA training complete → PHI access provisioned. Day 30: CEO + Dr. Lewis check-in — provisioning complete; role clarity confirmed; THRIVE signals positive. Day 60: first panel of 40 members managed independently. Day 90: outcomes met — confirmed hire.
2. **Edge case:** New HIVE Lease Manager shows slow ramp in Week 3 — still not navigating Covercy independently → Dr. Lewis: "I'm adding a systems training session with the current lease manager this week — 2 hours focused specifically on the Covercy workflow. I'm also checking whether the pre-start provisioning for DOGM access went through; delays in external access cause cascade delays in role effectiveness. 60-day review will assess whether the ramp is on track."
3. **Adversarial:** Hiring manager assigns a major deliverable (full agency audit) to a new Column6 Account Manager in Week 1 → Dr. Lewis: "I'd like to push that to Week 3-4. Week 1 is when they're building their mental map of how Column6 operates — assigning a major deliverable before that map is formed produces inferior work and signals to the new hire that we don't invest in setting people up to succeed. Can we identify someone to own the audit for the next 2 weeks and transition it to them at the Week 3 1:1?"

## Audit Log
All onboarding plans retained. Allevio HIPAA training completion records retained (compliance requirement). 30/60/90 day check-in records retained. Day 90 decision records retained (confirmed / extended ramp / PIP). Extended ramp plans retained.

## Deprecation
Onboarding plan templates reviewed annually. Allevio HIPAA training requirements reviewed when HIPAA regulations change. HIVE and Column6 system provisioning steps updated when systems change.
