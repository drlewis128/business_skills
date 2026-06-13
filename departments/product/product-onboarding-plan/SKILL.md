---
name: product-onboarding-plan
description: "Build a 30/60/90-day onboarding plan for a new product manager. Use when the user says 'onboard a PM', 'PM onboarding plan', 'new product manager', 'PM first 90 days', 'what should a new PM do', 'ramp up a PM', 'PM onboarding', or 'product manager first week'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--name <PM name>] [--product <assignment>] [--company <entity>]"
---

# Product Onboarding Plan

Build a structured 30/60/90-day onboarding plan for a new product manager joining MBL or a portfolio company. A PM who is given no structure in the first 90 days will fill the vacuum by doing whatever feels most urgent — usually managing meetings instead of building understanding. A structured onboarding builds the context they need to make good decisions without constant supervision from Dr. Lewis.

## When to Use
- New PM starts at MBL or a portfolio company
- Contractor PM brought on for a specific product
- Internal team member stepping into a PM role for the first time
- Portfolio company is hiring a PM — build the onboarding for them

## Onboarding Philosophy

```
Day 1: Make them feel welcomed and oriented. Not productive yet — oriented.
Week 1: Understand the users and the business. Don't build anything.
Month 1 (First 30 days): Deep listening. Shadow users. Read everything. No roadmap yet.
Month 2 (Days 31-60): First small scope. One focused area. Build trust with engineering.
Month 3 (Days 61-90): Own a full product area. Take the wheel.

Common mistake: new PM shipped code in week 1.
The product they ship on week 1 is based on 5 days of context.
Let them build the context before they make decisions.
```

## Output Format

```markdown
# PM Onboarding Plan — <Name>
**Role:** <Product Manager / Senior PM / Head of Product>
**Product assignment:** <product / feature area>
**Company:** <MBL / Allevio / HIVE / Column6>
**Start date:** <date>
**Plan author:** Dr. John Lewis

---

## Day 1 Checklist

- [ ] Access provisioned: Microsoft 365, Teams, SharePoint, Monday.com, Krista.ai
- [ ] Dr. Lewis 1:1 introductory meeting (1 hour) — context on MBL and the product
- [ ] Read: MBL entity vocabulary and systems map (CLAUDE.md)
- [ ] Read: Product brief / roadmap current state
- [ ] Calendar blocked for week 1 shadowing sessions
- [ ] Buddy assigned: <name>

---

## Week 1: Orientation

**Goals:** Meet the team, understand the user, don't build anything

| Day | Activity | Output |
|-----|---------|--------|
| Mon | 1:1 with Dr. Lewis (context); org chart review | Orient |
| Tue | Shadow 2 user sessions / watch session recordings | Notes: 3 insights |
| Wed | Read all existing research: user interviews, feedback synthesis | Notes: 3 insights |
| Thu | 1:1 with each engineering team member (30 min each) | Notes per person |
| Fri | Week 1 reflection: what do I know, what don't I know? Share with Dr. Lewis | 1-page doc |

---

## Month 1 (Days 1-30): Listen, Learn, Map

**Milestone: First 30-day review with Dr. Lewis**
**Success criteria:**
- [ ] Can articulate the product's North Star metric
- [ ] Has conducted 5+ user interviews independently
- [ ] Has mapped the full current user journey
- [ ] Has met all key stakeholders
- [ ] Has identified the 3 biggest user pain points

**Key activities:**

| Activity | Goal | By day |
|---------|------|--------|
| 5 user interviews | Understand what users actually do | Day 20 |
| User journey mapping | Document current state | Day 15 |
| Analytics access + first review | Know the baseline metrics | Day 7 |
| Stakeholder interviews (Matt, portfolio leads) | Understand business goals | Day 21 |
| Product history read: past specs, decisions | Understand why things are the way they are | Day 25 |
| First weekly OKR tracking update | Be part of the reporting cadence | Day 7 |

**What not to do in Month 1:**
- ❌ Propose roadmap changes
- ❌ Write new PRDs
- ❌ Criticize past decisions publicly
- ❌ Promise features to stakeholders

---

## Month 2 (Days 31-60): First Contribution

**Milestone: 60-day review with Dr. Lewis**
**Success criteria:**
- [ ] Has shipped one small, well-defined improvement
- [ ] Has written and received feedback on a feature spec
- [ ] Owns and runs one recurring meeting (grooming, review, etc.)
- [ ] Has built a working relationship with engineering lead

**Key activities:**

| Activity | Goal | By day |
|---------|------|--------|
| Write first spec (small feature) | Practice; Dr. Lewis feedback | Day 40 |
| Ship first feature (with engineering) | Prove execution | Day 60 |
| Run first grooming session | Own a process | Day 45 |
| Deliver first product update to Matt Mathison | Stakeholder communication | Day 55 |
| Propose first experiment | Hypothesis-driven improvement | Day 50 |

---

## Month 3 (Days 61-90): Full Ownership

**Milestone: 90-day review with Dr. Lewis**
**Success criteria:**
- [ ] Owns the product backlog independently
- [ ] Has set quarterly OKRs with engineering
- [ ] Is the primary contact for product questions from stakeholders
- [ ] Has run a complete sprint cycle independently

**Key activities:**

| Activity | Goal | By day |
|---------|------|--------|
| Draft quarterly OKRs | Own the roadmap direction | Day 70 |
| Run quarterly roadmap review | Full ownership | Day 80 |
| Complete activation flow audit | Find improvement opportunity | Day 75 |
| Present 90-day summary to Dr. Lewis + Matt Mathison | Demonstrate readiness | Day 90 |

---

## 90-Day Review Framework

Dr. Lewis assesses on:
1. **Product intuition:** Are their priorities right? Do they understand the user?
2. **Execution:** Did they ship? Were specs clear? Did engineering trust them?
3. **Stakeholder management:** Did Matt and portfolio leads feel informed?
4. **Independence:** Are they asking the right questions without prompting?

**Outcome:** Full ownership hand-off / Extended supervised period / Role change
```

## Output Contract
- Day 1 checklist always complete — missing access on day 1 is a failure of preparation
- Month 1 is always listening-first — no roadmap changes in month 1, no exceptions
- 30/60/90 milestones always have specific, binary success criteria — "doing well" is not a milestone
- 90-day review always results in an explicit ownership decision — leave no ambiguity about the role
- HITL required: Dr. Lewis approves onboarding plan; 30/60/90-day reviews conducted by Dr. Lewis; Matt Mathison informed of 90-day outcome for portfolio company PMs

## System Dependencies
- **Reads from:** Existing product documentation, roadmap, research archives (SharePoint)
- **Writes to:** Onboarding plan (SharePoint/Hiring); Monday.com task tracking
- **HITL Required:** Dr. Lewis designs and reviews plan; conducts 30/60/90-day reviews; Matt Mathison briefed on 90-day outcome

## Test Cases
1. **Golden path:** PM onboarding at MBL for Meeting Intelligence → Day 1: all access provisioned; Week 1: shadow 2 user sessions, read existing research; Month 1: 5 user interviews, journey map, stakeholder meetings; Month 2: first spec (action item tagging), shipping with engineering; Month 3: owns backlog, OKRs set, running sprint planning independently; 90-day review: full ownership handed off
2. **Edge case:** PM starts during a launch sprint — there's no time for them to just listen → compress Month 1 to 2 weeks if truly unavoidable; but still do it; a PM in a launch without context makes bad last-minute decisions; pair them with Dr. Lewis for the launch; give them a defined role (user comms, tracking) not decision-making
3. **Adversarial:** New PM ignores the "don't propose roadmap changes in Month 1" guideline — they come in with a complete roadmap in week 2 → this is a signal: either they're not listening (cultural fit issue) or they're feeling anxious and trying to demonstrate value; address it directly in the week 2 1:1; explain the why; if it continues, it's a fit issue

## Audit Log
Onboarding plans retained per PM hire. 30/60/90 review outcomes documented. Role transitions documented.

## Deprecation
Retire when MBL has a dedicated People/HR function with a standardized new hire onboarding program that covers the PM role.
