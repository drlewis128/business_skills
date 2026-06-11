---
name: success-plan-builder
description: "Build a customer success plan for an account. Use when the user says 'success plan', 'customer success plan', 'build a plan for this customer', 'joint success plan', 'what's the plan for this account', 'create a success roadmap', or 'plan for the customer'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--horizon <90days|6months|annual>]"
---

# Success Plan Builder

Build a structured customer success plan for an account. A success plan is the agreement between the CS team and the customer on what success looks like and how to get there. Without it, both sides are guessing — and churn happens in the gap between expectations and reality.

## When to Use
- During onboarding (first 30 days)
- At the start of a new contract year (annual reset)
- Before a QBR where you need to show progress
- Account health is declining and you need to re-anchor to goals
- A new stakeholder joins the customer team and needs alignment

## Success Plan Components

### 1. Business Goals (Customer's Outcomes)
What is the customer trying to achieve in their business? Not what they want from your product — what do they need to accomplish as a business?

### 2. Success Metrics (How We Measure)
For each goal: what is the specific, measurable indicator of success? What data will you track? What is the baseline and what is the target?

### 3. Key Milestones (The Plan)
What are the specific milestones that will get them from baseline to target, and by when?

### 4. Roles and Responsibilities
Who owns what — on the customer side and on the CS team?

### 5. Risks and Mitigations
What could prevent success? What are we doing proactively to address each risk?

### 6. Cadence and Communication
How often will you meet? What's the agenda structure? When is the QBR?

## Output Format

```markdown
# Customer Success Plan — <Account>
**Entity:** <MBL entity> | **CSM:** <name> | **Plan period:** <date range>
**Last updated:** <date> | **Review cadence:** <monthly/quarterly>

---

## Customer Business Goals

| # | Goal | Context / Why It Matters |
|---|------|------------------------|
| 1 | <Goal in customer's words> | <Business context — what happens if not achieved> |
| 2 | <Goal> | <Context> |
| 3 | <Goal> | <Context> |

---

## Success Metrics

| Goal | Metric | Baseline | Target | Measurement Method | Due Date |
|------|--------|---------|--------|-------------------|---------|
| Goal 1 | <Specific metric> | <Current state> | <Target> | <How we track it> | <Date> |
| Goal 2 | | | | | |

---

## Milestone Roadmap

| Milestone | Description | Target Date | Owner | Status |
|-----------|------------|------------|-------|--------|
| M1: <Name> | <What needs to happen> | <date> | CSM + <customer role> | Not started |
| M2: <Name> | | <date> | | |
| M3: <Name> | | <date> | | |

---

## Roles and Responsibilities

| Activity | Customer Owner | CSM / MBL Owner | Frequency |
|---------|--------------|----------------|---------|
| Weekly sync | <contact> | CSM | Weekly |
| Data/reporting input | <technical contact> | CSM | Monthly |
| Executive review | Champion/Exec | Dr. Lewis / CSM | Quarterly |
| Issue escalation | Champion | CSM → Manager | As needed |

---

## Risks and Mitigations

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| Champion departure | Medium | High | Executive sponsor engaged; backup relationship building |
| Low user adoption | High | High | Training delivered, adoption tracking, nudge campaigns |
| IT integration delays | Low | Medium | Dependencies confirmed in week 1; IT contact named |

---

## Communication Cadence

| Meeting | Frequency | Attendees | Agenda Focus |
|---------|----------|----------|-------------|
| Weekly sync | Weekly | CSM + Champion | Progress, blockers, next steps |
| QBR | Quarterly | CSM + Executive + CS Manager | ROI review, plan update, roadmap |
| Executive check-in | Bi-annual | Dr. Lewis + Customer exec | Strategic relationship, expansion |

---

## Plan Signatures (Mutual Commitment)

MBL / <Entity>: _________________ Date: _______
Customer: _________________ Date: _______

*Note: Formal signature optional; verbal commitment at kickoff is sufficient for v1.*
```

## Output Contract
- Business goals always stated in customer language — not product feature language
- Success metrics always measurable with a defined baseline — "improve efficiency" is not a metric
- Milestones always owned and dated — plan without ownership is a wish list
- Risks always identified with mitigations — no plan ignores known risks
- HITL required before plan is shared with customer: CSM manager reviews; Dr. Lewis reviews for strategic accounts

## System Dependencies
- **Reads from:** Kickoff notes, handoff document, customer goals (provided)
- **Writes to:** Nothing (plan for HITL review and mutual customer agreement)
- **HITL Required:** CSM manager reviews all success plans before customer sharing; Dr. Lewis reviews for strategic accounts > $100K

## Test Cases
1. **Golden path:** Healthcare MSO customer, 3 goals around billing efficiency → 3 measurable metrics with baselines, 4 milestones over 90 days, clear CSM and customer ownership, 2 risk mitigations
2. **Edge case:** Customer can't articulate their goals → builds success plan around industry benchmarks and product outcomes, schedules a goal-setting session within 2 weeks to validate and update
3. **Adversarial:** Request to include goals that are outside what the contract delivers → flags scope boundary, builds plan around contracted deliverables, recommends expansion conversation for out-of-scope goals

## Audit Log
Success plans retained by account and plan period. Goal achievement tracked quarterly against plan.

## Deprecation
Retire when CS platform provides integrated success plans with automated milestone tracking and real-time progress dashboards.
