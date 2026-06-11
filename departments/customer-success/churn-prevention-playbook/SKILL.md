---
name: churn-prevention-playbook
description: "Build a churn prevention playbook for the CS team. Use when the user says 'churn prevention', 'reduce churn', 'stop customers from leaving', 'churn playbook', 'customer retention playbook', 'how do we reduce churn', or 'retention strategy'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--current-churn-rate <X%>] [--target-churn-rate <X%>]"
---

# Churn Prevention Playbook

Build a structured churn prevention playbook for the CS team. Churn is the enemy of compounding growth — every dollar lost to churn requires more than a dollar in new revenue to replace. This playbook identifies the early warning signals, codifies the intervention plays, and gives CSMs a clear path to action before a renewal becomes a crisis.

## When to Use
- Building the CS team's retention framework
- Net Revenue Retention (NRR) is below target
- Multiple customer churns in a short period
- New CSM needs a structured approach to retention
- Annual CS strategy review for Matt Mathison

## Churn Economics (Why This Matters)

```
Net Revenue Retention (NRR) = (Start ARR + Expansions - Downgrades - Churn) / Start ARR × 100

World-class SaaS NRR: > 120%
Healthy: 100–120%
At risk: 90–99%
Declining business: < 90%
```

Every 1% reduction in annual churn rate compounds significantly:
- At $1M ARR and 15% churn: retaining 5% more churn = $50K saved Year 1
- Over 3 years with 20% growth rate: that $50K retained becomes ~$90K incremental ARR

## Churn Signal Library

### High-Urgency Signals (Act within 48 hours)
- Customer sends cancellation notice
- Champion departs the company
- Missed 2+ consecutive check-in calls
- Submitted escalation complaint
- Legal or billing dispute opened

### Medium-Urgency Signals (Act within 5 business days)
- Health score drops below 50 (Red)
- Product usage drops > 30% month-over-month
- NPS drops below 6
- Customer stops responding to CSM outreach
- Invoice overdue > 15 days

### Low-Urgency Signals (Investigate within 2 weeks)
- New stakeholder onboarded without notification
- Feature requests that suggest going to a competitor
- Attendance at competitor webinar or event
- Support ticket volume spike (may indicate frustration)

## Intervention Plays

### Play 1: Re-Engagement (Ghosted Customers)
**Trigger:** No response to 3+ outreach attempts in 2 weeks
**Action sequence:**
1. Alternate contact method (phone if using email, email if using phone)
2. CC the champion's manager with a "checking in" message
3. Internal escalation — CSM Manager contacts their counterpart
4. Executive outreach — Dr. Lewis or Matt Mathison contacts the economic buyer
**Goal:** Force a conversation; even a "we're evaluating" is better than silence

### Play 2: Executive Save (Escalated Churn Risk)
**Trigger:** Red health score + renewal < 90 days + champion disengaged
**Action sequence:**
1. CSM schedules internal save meeting with Manager and Dr. Lewis
2. Executive sponsor contacts their counterpart at the customer
3. Dedicated save QBR scheduled within 2 weeks
4. Retention offer prepared (if commercially justified — requires approval)
**Goal:** Reset the executive relationship; understand the real churn driver

### Play 3: Product Adoption Recovery
**Trigger:** Usage < 30% of contracted capacity for 2+ months
**Action sequence:**
1. Identify the usage gap (which users or features are unused?)
2. Schedule a targeted re-onboarding session
3. Assign a dedicated adoption milestone with the champion
4. Weekly check-in for 6 weeks post-session
**Goal:** Get usage above 50% threshold before renewal window opens

### Play 4: Competitive Displacement Defense
**Trigger:** Customer mentions evaluating or purchasing a competitor
**Action sequence:**
1. Understand the competitive trigger (what problem are they trying to solve?)
2. Build a competitive battlecard response (see `competitive-battlecard`)
3. Schedule executive alignment call
4. Prepare a retention offer or product commitment if warranted
**Goal:** Keep the deal; at minimum, understand why they're looking

## Output Format

```markdown
# Churn Prevention Playbook — <Entity>
**Version:** <N> | **Owner:** <CS Manager / Dr. Lewis> | **Date:** <date>

---

## Churn Prevention Goals

| Metric | Current | Target | Timeline |
|--------|---------|--------|---------|
| Annual churn rate | X% | X% | <year> |
| NRR | X% | X% | <year> |
| % accounts with active success plans | X% | 100% | <quarter> |
| Red health score response time | <N> days | < 3 days | Now |

---

## Churn Signal Monitoring

**How we track:** <Health scoring platform / manual tracking / CRM>
**Review frequency:** Weekly (Red accounts), Monthly (full portfolio)
**Escalation trigger:** Any Red account → CSM Manager within 24 hours

---

## Intervention Plays

### Play 1: Re-Engagement
**Trigger:** [Signals] | **Owner:** CSM | **Timeline:** 48 hours
[Steps as described above]

### Play 2: Executive Save
**Trigger:** [Signals] | **Owner:** CSM Manager + Dr. Lewis | **Timeline:** Immediate
[Steps]

### Play 3: Adoption Recovery
**Trigger:** [Signals] | **Owner:** CSM | **Timeline:** 5 days
[Steps]

### Play 4: Competitive Defense
**Trigger:** [Signals] | **Owner:** CSM + Sales | **Timeline:** 48 hours
[Steps]

---

## Retention Offer Framework (Requires Approval)

| Scenario | Maximum Offer | Approval Required |
|---------|-------------|-----------------|
| Customer asking for price reduction | Up to 10% discount at renewal | CSM Manager |
| Churn risk + long-term commitment | Up to 15% for 2-year lock-in | Dr. Lewis |
| Strategic account save | Custom (executive discretion) | Matt Mathison |

---

## Churn Post-Mortem Process

Every churn triggers a post-mortem within 30 days (see `churn-post-mortem`):
- What were the early signals?
- Did we act in time?
- What would we do differently?
- What playbook change does this inform?
```

## Output Contract
- Churn signals always tiered by urgency — CSMs cannot act on everything; they need prioritization
- Plays always include trigger, owner, and timeline
- Retention offer framework always includes approval chain
- Every churn triggers a post-mortem — learning from churn prevents the next one
- HITL required: Dr. Lewis reviews any retention offer > 10%; Matt Mathison approves strategic account retention deals

## System Dependencies
- **Reads from:** Health scores from `customer-health-scorer`, NPS, usage data (provided or from CS platform)
- **Writes to:** Nothing (playbook for CS team execution)
- **HITL Required:** Dr. Lewis approves all retention offers; CS Manager assigns and oversees all intervention plays; churn post-mortem reviewed by Dr. Lewis

## Test Cases
1. **Golden path:** Entity with 18% churn building a retention playbook → 4 plays, signal library, retention offer framework with approval levels, churn target of 12% over 12 months
2. **Edge case:** No health scoring system in place → builds playbook around manual tracking, provides simple 5-question weekly check-in to replace automated scoring, prioritizes getting a health scoring tool in Phase 2
3. **Adversarial:** CSM wants to make retention promises beyond their authority to keep a customer → refers to retention offer framework, requires approval, explains that unauthorized promises create financial and legal risk

## Audit Log
Churn prevention actions documented by account, play used, and outcome. Playbook updated after each churn post-mortem.

## Deprecation
Retire when CS platform provides automated churn prediction with built-in playbook triggers and intervention tracking.
