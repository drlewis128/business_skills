---
name: executive-onboarding-checklist
description: "Generate an executive onboarding checklist for a new senior leader. Use when the user says 'executive onboarding', 'onboarding checklist', 'first 90 days plan', 'new exec onboarding', 'how do we onboard this person', or 'new leader first 90 days'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<role-and-name> [--entity <name>] [--start-date <YYYY-MM-DD>]"
---

# Executive Onboarding Checklist

Structured 90-day onboarding plan for a new executive — covering systems access, stakeholder introductions, learning priorities, and early wins.

## When to Use
- New executive hire starting at MBL or a portfolio company
- Portfolio company CEO or CFO hire
- Post-acquisition leadership integration
- Internal promotion to executive role

## 90-Day Framework

### Week 1 — Day 1 (Logistics and Context)
**Goal:** Operational readiness and initial orientation

- [ ] IT setup complete (email, laptop, systems access)
- [ ] HR paperwork signed (employment agreement, benefits enrollment)
- [ ] Introductions to immediate team
- [ ] Introduction to Matt Mathison (if not already known)
- [ ] Systems access: Microsoft Teams, Outlook, SharePoint, Monday.com
- [ ] Access to financial systems (per role — QuickBooks, Bill.com)
- [ ] MBL overview: portfolio, systems map, key people
- [ ] THRIVE values orientation
- [ ] First meeting with Dr. Lewis (AI systems, tools available)

### Weeks 1-2 — Listen and Learn
**Goal:** Understand the business before acting

- [ ] 1:1 meetings with direct reports (listen-first)
- [ ] 1:1 meetings with cross-functional peers
- [ ] Review: last 3 months of financial results
- [ ] Review: current OKRs and initiative status
- [ ] Review: open roles and team structure
- [ ] Shadow key customer / LP / partner interactions
- [ ] Read prior board deck and management letters

### Weeks 3-4 — Assessment
**Goal:** Form an informed point of view

- [ ] Document initial observations (what's working, what's not)
- [ ] Identify 3 quick wins achievable in 90 days
- [ ] Identify the top 1-2 structural issues to address
- [ ] Share initial assessment with Matt (informal, non-binding)

### Month 2 (Days 30-60) — Early Action
**Goal:** Prove leadership judgment and start moving things forward

- [ ] 30-day review meeting with Matt
- [ ] Launch first initiative or operational change
- [ ] First 1:1 with key LPs or external stakeholders (if role requires)
- [ ] Begin running key meetings vs. observing
- [ ] Build team performance plan for direct reports

### Month 3 (Days 60-90) — First Real Deliverable
**Goal:** Produce a tangible outcome that demonstrates the value of this hire

- [ ] Complete first major deliverable (role-specific)
- [ ] 90-day review with Matt — formal check-in
- [ ] Draft first annual plan contribution (if planning cycle active)
- [ ] Finalize team assessment (promotions, PIPs, open headcount)
- [ ] THRIVE alignment self-assessment (share with Matt)

## Role-Specific Add-Ons

### CFO / Controller
- [ ] Review all bank relationships and signatories
- [ ] Review covenant compliance status
- [ ] Meet with external auditors and CPA

### COO
- [ ] Map all operational processes (what's documented vs. tribal knowledge)
- [ ] Identify top 3 operational bottlenecks

### CEO (portfolio company)
- [ ] LP introductions (Matt facilitates)
- [ ] Meet top 10 customers / patients
- [ ] Review all material contracts

## Output Format

```markdown
# Executive Onboarding Plan — <Name> — <Role>
**Entity:** <entity> | **Start Date:** <date> | **90-Day Review:** <date>

## Week 1 Checklist
[checklist items]

## Learning Priorities (Weeks 1-4)
1. <Priority 1>
2. <Priority 2>
3. <Priority 3>

## Key Relationships to Build
| Person | Role | Priority | First Meeting By |
|--------|------|----------|----------------|

## 30 / 60 / 90 Day Check-In Schedule
| Check-in | Date | Focus |
|---------|------|-------|
| 30-day | <date> | Initial observations, early wins |
| 60-day | <date> | Team assessment, initiative launch |
| 90-day | <date> | First deliverable, annual plan |

## Definition of Success at 90 Days
<Specific, measurable outcomes that confirm this hire is working>
```

## Output Contract
- Checklist always includes Day 1 operational items — not just strategic ones
- "Definition of success at 90 days" section always included and specific
- THRIVE values orientation always on the Week 1 list
- HITL required before onboarding plan is shared with the new executive

## System Dependencies
- **Reads from:** Role description, entity context, team structure
- **Writes to:** Monday.com onboarding board (with HITL)
- **HITL Required:** Matt Mathison reviews and personalizes before sharing with incoming executive

## Test Cases
1. **Golden path:** New CFO starting → role-specific finance checklist including auditor meeting and bank signatory review
2. **Edge case:** Executive hired into a portfolio company mid-acquisition integration → onboarding plan includes integration track items
3. **Adversarial:** Onboarding plan requested without a defined "success at 90 days" → requires definition before outputting, offers template options

## Audit Log
Onboarding plans retained by executive and start date. 30/60/90-day check-in outcomes documented.

## Deprecation
Retire when HRIS handles structured executive onboarding with automated task assignment.
