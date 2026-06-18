---
name: exec-integration-manager
description: "Plan and manage post-acquisition integration for MBL Partners portfolio companies. Use when the user says 'integration', 'post-acquisition integration', 'integration plan', 'integrate the acquisition', 'integration management', 'Day 1 plan', 'Day 100 plan', 'integration roadmap', 'acquisition integration', 'integration kickoff', 'integration status', 'integration update', 'onboard the acquisition', 'bring them into the portfolio', 'integration workstream', 'systems integration', 'people integration', 'culture integration', 'integration risk', 'integration timeline', 'integration milestone', 'integration tracking', 'what do we do after we close the deal', 'post-close plan', or 'welcome the new team'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <plan|kickoff|status|milestone|risk>] [--phase <Day1|Day30|Day100|Day180>] [--priority <operations|systems|people|culture|reporting>]"
---

# Exec Integration Manager

Plan and manage post-acquisition integration for MBL Partners portfolio companies — creating the structured pathway from deal close to fully integrated portfolio company operating on MBL systems, standards, and THRIVE culture. Integration is where acquisition value is created or destroyed: a well-integrated acquisition achieves its thesis in the expected timeline; a poorly integrated acquisition spends 12-18 months in organizational confusion, key-person departures, and misaligned operating models. The MBL integration framework balances speed (get to operating clarity quickly) with care (don't break what was working).

## When to Use
- A new acquisition closes (Day 1 integration plan activation)
- Integration is in progress and needs status tracking
- An integration is behind schedule and needs course correction
- Matt Mathison wants to understand integration health for a recently acquired entity
- Planning integration for a pending acquisition (pre-close integration readiness)

## Integration Framework

```
INTEGRATION PHILOSOPHY:

  Speed to operating clarity: The new entity needs to know how to operate under MBL
    within 30 days — not what everything means, but how decisions are made and who to call
    
  Preserve what was working: Integration is not standardization; don't impose MBL processes
    where the acquired company's process was better or where the culture was a competitive asset
    
  People first: Key-person retention is the highest priority in the first 90 days;
    integration anxiety is the primary departure trigger; direct communication beats assumptions
    
  THRIVE from Day 1: The new team learns THRIVE values in their first week, not month 6

INTEGRATION PHASES:

  DAY 1 (Closing day):
    □ Welcome communication from Matt Mathison to all employees of the new entity
      (warm, specific, THRIVE-oriented; not a press release)
    □ Leadership introductions: Matt meets with the entity CEO; Dr. Lewis meets with key leaders
    □ "What stays the same" document delivered to all employees: explicitly states what will NOT change
    □ Interim reporting line established (entity CEO → Matt Mathison)
    □ Systems access priority identified (what does the entity need from MBL immediately?)
    □ Legal and compliance basics confirmed (existing contracts, insurance, HR compliance)
    
  DAY 1-30 (Stabilize):
    □ Entity CEO completes listening tour of their own team (what are people worried about?)
    □ Dr. Lewis completes systems assessment: what does the entity use? What needs to integrate?
    □ Matt Mathison conducts first entity CEO 1-on-1 (exec-1-on-1-framework activated)
    □ THRIVE orientation for leadership team (exec-culture-builder — Day 1-30 lever)
    □ Key-person retention: Dr. Lewis identifies 3-5 key people whose departure would most
      affect the entity; Matt Mathison personally contacts each one within 30 days
    □ Operating commitments: entity submits to MBL reporting cadence (metrics; Monday.com;
      exec-action-tracker; monthly exec-kpi-dashboard entity row)
    □ Open issues log created: everything that needs a decision in integration is captured here
    
  DAY 31-100 (Integrate):
    □ Systems integration: entity's systems connected to MBL infrastructure per exec-technology-investment
    □ Financial integration: entity financials flowing to QuickBooks (MBL consolidated view)
    □ Performance management activated: exec-kpi-dashboard entity row live and accurate
    □ Leadership team assessed: exec-succession-planning activated for the new entity
    □ Culture integration: THRIVE values embedded in team rituals; recognition started
    □ Day 100 review: Matt + Dr. Lewis + entity CEO review integration progress and scorecard
    
  DAY 101-180 (Optimize):
    □ Value creation plan activated: exec-value-creation-plan live for the new entity
    □ Capital deployment plan confirmed: exec-capital-allocation updated to include the new entity
    □ Board governance activated: exec-board-governance applied to the new entity
    □ Succession plan completed: exec-succession-planning Day 180 deliverable
    □ Culture assessment: first THRIVE culture assessment for the new entity
    □ Day 180 review: full portfolio integration into the operating rhythm

INTEGRATION RISK MANAGEMENT:

  Highest integration risks (Day 1-30 priority):
    □ Key-person departures (mitigate: personal outreach from Matt Mathison within 30 days)
    □ Customer churn from acquisition uncertainty (mitigate: partner/customer communication plan)
    □ Operational disruption from systems changes (mitigate: stabilize first; integrate second)
    □ Culture clash (mitigate: THRIVE orientation and specific story-based values communication)
    □ Data or financial reporting gaps (mitigate: immediate financial assessment by Dr. Lewis)
    
  Integration health indicators (weekly for first 90 days):
    GREEN: Key people retained; customers not churning; systems connecting on schedule
    YELLOW: 1-2 key people are at risk; 1-2 customers raising concerns; 1 system behind schedule
    RED: Multiple key people departing; customer churn beginning; financial data unreliable
```

## Output Format

```markdown
# Integration Plan — [Entity Name] — Close Date: [Date]
**Managed by:** Dr. Lewis | **Overseen by:** Matt Mathison

---

## Integration Health (if in progress)

| Phase | Status | Key risk | Action |
|-------|--------|---------|--------|
| Day 1 — Stabilize | 🟢/🟡/🔴 | [Top risk] | [Action] |
| Day 30 — Integrate | 🟢/🟡/🔴 | [Top risk] | [Action] |
| Day 100 — Optimize | 🟢/🟡/🔴 | [Top risk] | [Action] |

---

## Day 1 Checklist

- [ ] Matt Mathison welcome communication sent
- [ ] Leadership introductions complete
- [ ] "What stays the same" document delivered
- [ ] Reporting line established
- [ ] Legal/compliance basics confirmed
- [ ] Key-person identification complete

---

## Key Milestones Tracker

| Milestone | Owner | Due | Status |
|-----------|-------|-----|--------|
| THRIVE orientation | Dr. Lewis | Day 14 | 🟢/🟡/🔴 |
| Systems assessment | Dr. Lewis | Day 14 | |
| Entity CEO 1-on-1 activated | Matt Mathison | Day 7 | |
| Key-person outreach | Matt Mathison | Day 30 | |
| exec-kpi-dashboard row live | Dr. Lewis | Day 45 | |
| Value creation plan | Dr. Lewis | Day 100 | |

---

## Open Issues Log

| Issue | Owner | Priority | Status |
|-------|-------|---------|--------|
| [Issue that needs a decision] | [Name] | [P1/P2/P3] | [Status] |
```

## Output Contract
- Day 1 welcome is not negotiable — the first communication from Matt Mathison to the new entity's employees sets the tone for everything that follows; it must be personal, specific, and arrive on closing day (not day 2 or day 5); a generic "we're excited to welcome you to the family" is a missed opportunity; the welcome should reference something specific about what the entity does and why MBL acquired them; Dr. Lewis drafts it; Matt reviews and sends from his own email
- Key-person outreach within 30 days — Matt Mathison personally contacts each identified key person (3-5 people who are most critical to retain) within 30 days of close; Dr. Lewis identifies the list; Matt makes the contact; the message: "I wanted to reach out personally to tell you how important your role is in what we're building together"; this personal contact from the managing partner is a retention signal that an impersonal email from HR cannot replicate
- Stabilize before you integrate — the most common integration mistake is moving too fast on systems and process changes before the people and culture are stable; Dr. Lewis's default is: systems assessment in Day 1-30, integration in Day 31-100; if a system is causing active pain, it gets addressed earlier; if a system is working fine, it gets integrated on the standard timeline regardless of MBL's preference for its own systems
- HITL required: Matt Mathison oversees the integration at the entity CEO level (exec-1-on-1-framework activated from Day 1); Dr. Lewis manages the integration workstreams and milestone tracking; Day 100 and Day 180 reviews are attended by Matt Mathison; any integration decision that affects the entity's operating model or systems requires Matt Mathison approval; key-person retention decisions (compensation adjustments, role changes) require Matt Mathison approval; integration health RED triggers immediate Matt Mathison conversation

## System Dependencies
- **Reads from:** exec-value-creation-plan (integration feeds the VCP for the new entity); exec-technology-investment (systems integration decisions); exec-capital-allocation (capital needs for integration); exec-succession-planning (leadership assessment of the acquired team); exec-culture-builder (THRIVE integration lever); exec-ceo-hiring (if integration reveals a leadership gap requiring a hire)
- **Writes to:** Integration plan and milestone tracker (SharePoint → ExecutiveSupport → Integrations → [Entity] → [YYYY]); exec-action-tracker (all integration milestones logged as action items); exec-portfolio-operations (new entity added to portfolio operations review); exec-kpi-dashboard (new entity row added); Monday.com (integration workstream boards for the new entity); exec-portfolio-review (first entity review at the next quarterly cycle)
- **HITL Required:** Matt Mathison oversees the entity CEO relationship from Day 1; Day 100 and Day 180 reviews attended by Matt; key-person retention decisions require Matt approval; integration health RED triggers immediate Matt notification; all capital decisions for integration require Matt approval per exec-capital-allocation thresholds

## Test Cases
1. **Golden path:** New healthcare technology acquisition closes on a Monday; Dr. Lewis activates the Day 1 checklist; Matt Mathison welcome email is sent by 9 AM closing day: "I'm Matt Mathison, Managing Partner at MBL. Today is a significant day — not just for MBL, but for the team you've built and the customers you serve. I want you to know three things: what we see in your company, what we're NOT going to change, and where we're going together." Dr. Lewis completes systems assessment by Day 14; identifies 4 key people for Matt's personal outreach list; Matt contacts all 4 by Day 22; all 4 confirm they're staying; Day 30: entity CEO submits to the MBL reporting cadence; THRIVE orientation complete; 0 key-person departures; 0 customer churn events. Integration health: GREEN.
2. **Edge case:** A key-person (the entity's top sales leader) is showing departure signals at Day 45 — fielding calls, updating LinkedIn profile → Dr. Lewis flags to Matt immediately: "The sales leader at [entity] appears to be actively job-searching — LinkedIn updated 3 days ago; two colleagues mentioned fielding calls. This person drives approximately 60% of new business revenue. I recommend Matt makes a personal call this week — not to make a counter-offer until we know the situation, but to ask directly: 'How are you doing with the transition? What's most important to you in your role?' This surfaces the real issue. If it's compensation, Dr. Lewis can run the retention offer analysis. If it's role clarity, we fix the role clarity." Matt: "Calling today."
3. **Adversarial:** The acquired entity CEO resists integration requirements ("We did things our own way and it was working fine") → Dr. Lewis: "This is a healthy tension and a common one. What I want to separate is: requirements vs. recommendations. Requirements: THRIVE orientation, exec-kpi-dashboard reporting row, exec-1-on-1-framework with Matt Mathison, and exec-action-tracker for commitments. These are non-negotiable because they're how Matt Mathison maintains visibility and accountability across the portfolio. Everything else — your operating processes, your team structure, your internal meeting cadences — those are yours unless you want our input. What specific requirements are you most concerned about? Let's address the real friction point directly."

## Audit Log
All integration plans retained by entity. Day 1 checklist completion retained. Milestone tracker records retained (milestone; due date; actual completion; owner). Key-person outreach records retained (Matt's contacts; dates; retention outcome). Day 100 and Day 180 review records retained. Integration health status records retained weekly for first 90 days. Open issues log retained.

## Deprecation
Retire when MBL has a dedicated M&A integration function — with Dr. Lewis providing the technology and systems integration inputs and Matt Mathison retaining the entity CEO relationship oversight throughout any integration.
