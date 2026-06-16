---
name: hr-onboarding-plan
description: "Build a 90-day onboarding plan for an HR team member. Use when the user says 'onboard an HR person', 'HR team onboarding', 'onboarding plan for HR coordinator', 'onboarding plan for HR generalist', 'onboarding plan for HR manager', '90-day HR onboarding', 'new HR hire onboarding', 'HR staff onboarding plan', 'ramp a new HR hire', or 'plan for a new HR team member'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <coordinator|generalist|manager>] [--name <employee name>] [--start-date <date>]"
---

# HR Onboarding Plan

Build a 90-day onboarding plan for new HR team members at MBL portfolio companies — the structured learning, relationship-building, and contribution path for HR coordinators, generalists, and managers joining the team. HR onboarding is a specific case: an HR person who doesn't understand the company's systems, culture, and compliance requirements from the start will make the HR function worse, not better. The first 90 days are the foundation for everything that follows.

## When to Use
- A new HR staff member is joining a portfolio company
- Dr. Lewis is bringing on HR support (coordinator or generalist) for a growing portfolio company
- A new HR manager is being installed at an entity as part of a scale-up plan
- The onboarding plan from hr-onboarding-coordinator needs to be extended for an HR-specific role

## HR Onboarding Framework

```
Three phases — different focus in each:

Phase 1 — Learn (Days 1-30):
  Goal: Understand the business, the people, and the HR function as it exists
  Principle: Listen first; don't improve anything yet
  Focus: Systems access, document review, relationship-building, shadowing
  First impression: How the HR function performs in the first 30 days forms lasting perceptions
  
Phase 2 — Build Context (Days 31-60):
  Goal: Understand the specific HR problems and opportunities at this company
  Principle: Ask good questions; identify the 2-3 most important things to fix
  Focus: Deeper relationship-building with managers; first independent tasks with Dr. Lewis oversight
  
Phase 3 — Contribute (Days 61-90):
  Goal: Begin adding value independently on defined scope
  Principle: Execute within scope; escalate outside scope; no unilateral decisions
  Focus: Taking ownership of specific HR processes; completing first deliverable

Role-specific expectations by Day 90:
  HR Coordinator: Operating all administrative HR processes independently (I-9, onboarding logistics,
    benefits enrollment, timekeeping support); zero compliance errors; escalation reflex in place
  HR Generalist: Running recruiting pipeline, onboarding, and basic ER intake under Dr. Lewis 
    direction; compliance calendar owned; can identify when to escalate vs. handle
  HR Manager: Owns HR function for the entity day-to-day; Dr. Lewis consultation on complex 
    decisions; management relationship established; first HR ops review completed
```

## Output Format

```markdown
# HR 90-Day Onboarding Plan — <Employee Name>
**Role:** [HR Coordinator / HR Generalist / HR Manager]
**Company:** <Entity> | **Start date:** [Date]
**Supervisor / Mentor:** Dr. John Lewis
**Plan created:** [Date]

---

## Before Day 1 (Dr. Lewis responsible)

- [ ] System access provisioned: Microsoft 365 (Outlook, Teams, SharePoint), HRIS (if any), payroll portal, E-Verify, benefits portal
- [ ] HR file access configured: SharePoint/HR/<Company>/ — appropriate permissions for role
- [ ] Welcome email sent with Day 1 schedule, parking/access, who to ask for
- [ ] HR Coordinator/Manager buddy assigned (if team size allows)
- [ ] HR policy set prepared for Day 1 acknowledgment
- [ ] I-9 initiated: Section 1 sent; Section 2 scheduled for Day 1

---

## Phase 1: Learn (Days 1-30)

**Goal:** Know the company, the people, and the HR function before changing anything.

### Week 1 — Foundation

Day 1:
- [ ] Welcome meeting with Dr. Lewis (30 min): role overview, expectations, communication norms
- [ ] I-9 Section 2 completed
- [ ] HR policy acknowledgments signed
- [ ] Systems walkthrough (HR file structure, email, Teams)
- [ ] Meet immediate manager and key colleagues

Days 2-5:
- [ ] Read all current HR policies for this entity
- [ ] Review employee roster — know every employee's name, role, and department
- [ ] Review last 3 months of HR activity: recent hires, separations, open reqs
- [ ] Shadow Dr. Lewis on 2-3 HR interactions (call, meeting) — observe only
- [ ] Review I-9 binder — confirm structure and any gaps

End of Week 1 check-in (Dr. Lewis):
- "What's clearer than when you started?"
- "What's confusing or concerning?"
- "What do you need from me to be effective?"

### Weeks 2-4 — Context Building

- [ ] 1:1 meeting with each department manager (20-30 min each) — "Tell me about your team and the people challenges you're dealing with"
- [ ] Review open recruiting reqs — understand each role, hiring manager, and status
- [ ] Review payroll process — shadow one payroll run
- [ ] Review benefits administration — understand current elections and open items
- [ ] Review compliance calendar — understand what's coming due in next 90 days
- [ ] Complete any mandatory HR training assigned

Day 30 check-in (Dr. Lewis):
- OKR: "What are the top 3 HR priorities at this company right now, from what you've learned?"
- "Which manager relationship is most important to build first, and why?"
- "Where do you see gaps in the HR function?"
- "What's one thing you could take off my plate by Day 60?"

---

## Phase 2: Build Context (Days 31-60)

**Goal:** Take first independent tasks; build manager relationships; identify the priority improvements.

Role-specific deliverables:

HR Coordinator:
  - [ ] Own the new hire onboarding logistics process (end-to-end) by Day 45
  - [ ] Own benefits enrollment administration by Day 50
  - [ ] Run I-9 process independently for next new hire under Dr. Lewis oversight

HR Generalist:
  - [ ] Take over recruiting coordination for 1 open req by Day 45
  - [ ] Write first job description under Dr. Lewis review
  - [ ] Handle first routine HR question from a manager independently (with Dr. Lewis review before responding)
  - [ ] Update compliance calendar for next 90 days

HR Manager:
  - [ ] Conduct HR audit of all current employees (I-9, documentation, benefits elections)
  - [ ] First HR metrics report drafted (with Dr. Lewis review)
  - [ ] Deliver first manager briefing to CEO on HR status
  - [ ] Identify top 3 HR priorities for next quarter

Day 60 check-in (Dr. Lewis):
- "What's working well in your first tasks?"
- "Where are you still uncertain — where are you waiting for my input before acting?"
- "Name one thing you've changed or improved in the first 60 days."
- "What does the next 30 days need to look like for this to be a successful 90-day ramp?"

---

## Phase 3: Contribute (Days 61-90)

**Goal:** Operating independently within defined scope; Dr. Lewis in a review/consultation role.

Role-specific deliverables:

HR Coordinator:
  - [ ] Operating all administrative HR processes independently
  - [ ] Proactively surfacing compliance issues before they become problems
  - [ ] First payroll support completed (coordination, not approval)

HR Generalist:
  - [ ] Recruiting pipeline fully owned for 2+ open reqs
  - [ ] ER intake process: first complaint received and routed correctly (with Dr. Lewis)
  - [ ] Compliance calendar owned and current
  - [ ] First draft HR metrics for the quarter prepared

HR Manager:
  - [ ] First full HR ops review for the entity (quarterly)
  - [ ] Proposed Q+1 HR OKRs for Dr. Lewis review
  - [ ] HR function assessment: what processes need investment, what's working
  - [ ] Meeting cadence with Dr. Lewis established (bi-weekly recommended)

---

## Day 90 Review (Dr. Lewis conducts)

**Format:** 45-minute structured conversation

Questions:
1. "Rate your own performance in the first 90 days on a 1-5 scale. What drove that rating?"
2. "What's your most significant contribution so far?"
3. "Where have you struggled most — technically or relationally?"
4. "What do you need from Dr. Lewis to be more effective?"
5. "What is the most important HR problem at [Company] right now?"

**Dr. Lewis assessment:**
- Is this person operating within their scope appropriately?
- Have they built the right manager relationships?
- Do they know when to escalate vs. handle?
- Are they adding value or creating HR risk?

**Outcome:** 
- Confirmed in role: extend to full performance management cycle (annual review)
- Performance concern identified: discuss specific gaps; 30-day improvement plan with check-in
- Not working: engage hr-pip-manager or termination process (rare at 90 days but possible)
```

## Output Contract
- Scope is explicit from Day 1 — an HR person who makes decisions outside their authorized scope creates risk (legal, employee relations, compliance); the plan explicitly states what the new HR person can decide independently, what they must consult Dr. Lewis on, and what requires Dr. Lewis direct handling; this is not bureaucracy — it's protection for both the employee and the company during the learning period
- "Listen only" is enforced in Phase 1 — an HR person who improves processes before understanding them often improves the wrong things; the 30-day listening rule means no process changes, no policy recommendations, and no HR "fixes" until Phase 1 is complete; the Day 30 check-in converts their observations into data rather than premature action
- Manager relationships are built intentionally — the 1:1 meetings with every manager in Week 2-4 are not optional; the HR function's effectiveness at a portfolio company is built on the relationship between HR and the people managers; a manager who trusts HR brings problems early; a manager who doesn't trust HR hides problems until they become crises
- Day 90 review is honest — the 90-day review for an HR hire has the same integrity standard as any other; if the person isn't working out at 90 days, the conversation happens at 90 days rather than tolerating a weak HR function for another 6 months
- HITL required: Dr. Lewis creates and owns the onboarding plan; Dr. Lewis conducts all check-ins (Day 1 welcome, Day 5, Day 30, Day 60, Day 90); scope boundaries enforced by Dr. Lewis; Day 90 outcome (confirmed / concern / termination) requires Dr. Lewis decision; any HR hire performing below standard triggers immediate Dr. Lewis consultation with Matt Mathison

## System Dependencies
- **Reads from:** New employee profile, company org chart, current HR policies, compliance calendar, open HR issues list
- **Writes to:** Onboarding plan (SharePoint/HR/<Company>/Onboarding/HR Roles/); check-in notes; Day 90 review documentation
- **HITL Required:** Dr. Lewis creates plan and conducts all check-ins; scope decisions by Dr. Lewis; Day 90 outcome requires Dr. Lewis; below-standard performance flagged to Matt Mathison

## Test Cases
1. **Golden path:** Allevio brings on an HR Coordinator (first dedicated HR staff) → Dr. Lewis builds plan: Pre-Day 1 access includes E-Verify (AZ mandatory), SharePoint HR folder (limited access — personnel files readable, ER files blocked), benefits portal, payroll view-only; Week 1: read all Allevio HR policies, review all 42 employee I-9s with Dr. Lewis, meet each of 5 department managers; Day 30 check-in: "Top 3 HR priorities from what you've learned: 1) Two I-9s have outdated addresses that should be corrected; 2) Three employees haven't acknowledged the updated Code of Conduct from March; 3) Benefits enrollment is confusing — three employees don't know what they elected"; Phase 2: take over new hire onboarding logistics; Phase 3: operating independently; Day 90: confirmed — I-9 corrections done, Code of Conduct acknowledgment at 100%, onboarding run independently for 2 new hires without error; Dr. Lewis notes: "Proactively flagged an I-9 reverification date 8 weeks out — exactly the early warning the function needed"
2. **Edge case:** New HR Generalist discovers a significant ER issue (an employee reports harassment) during her second week → Day 14 is still Phase 1; she receives the report and immediately contacts Dr. Lewis — this is the correct response; the report is handled by Dr. Lewis directly; the new hire observes (with employee permission) as a learning experience but does not conduct the intake or investigation; this is explicitly within the scope boundaries: ER complaints at any severity route to Dr. Lewis for the first 90 days; after Day 90 she can handle 🟢-level ER intake under Dr. Lewis review
3. **Adversarial:** A portfolio company CEO says "skip the 90-day plan — just have her start doing HR" → An HR person who starts without structured onboarding makes avoidable errors: missing an I-9, miscommunicating a policy, handling an ER complaint incorrectly; respond: "The 30-day learning phase is not delay — it's the foundation that makes the next 2 years more effective. An I-9 error that would have been caught by a proper system review costs $300-$2,700 per instance. The plan takes 3 hours of her time in Week 1 and 30 minutes of mine. I'll run it in parallel with her getting started — she'll be productive on Day 1 and compliant from the start."

## Audit Log
All HR onboarding plans retained by employee and start date. Check-in notes retained. Day 90 review documentation retained. Performance concerns and outcomes documented.

## Deprecation
Retire when portfolio companies have dedicated HR leaders who own their own team's onboarding process with Dr. Lewis in a final-approval oversight role, and a structured HR competency framework that guides development beyond the 90-day window.
