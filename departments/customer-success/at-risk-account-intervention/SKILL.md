---
name: at-risk-account-intervention
description: "Build an intervention plan for an at-risk customer account. Use when the user says 'account is at risk', 'save this account', 'intervention plan', 'at-risk customer', 'customer might churn', 'save plan', 'red account', or 'how do we keep this customer'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--risk-driver <adoption|relationship|product|commercial>] [--days-to-renewal <N>]"
---

# At-Risk Account Intervention

Build a structured intervention plan for an at-risk customer account. When a customer is heading toward churn, speed and specificity matter — vague outreach and generic gestures don't save accounts. A well-executed intervention plan identifies the root cause and applies the right play.

## When to Use
- Health score drops to Red (< 50)
- Renewal is < 90 days and health is Yellow or worse
- Champion departs
- Customer has stopped responding
- Customer mentions they are evaluating alternatives
- Escalation that puts the relationship at risk

## Churn Root Cause Framework

Before building the intervention, diagnose why the account is at risk. Intervening without understanding the cause is wasted effort.

### Root Cause Categories

| Category | Symptoms | Intervention |
|---------|---------|-------------|
| **Adoption failure** | Low usage, training incomplete, no power users | Re-onboarding, training, champion activation |
| **Relationship breakdown** | Champion gone, executive disengaged, CSM mismatch | New relationship building, executive sponsor engagement |
| **Product gap** | Customer needs feature we don't have | Product feedback, workaround, roadmap alignment |
| **Commercial dissatisfaction** | Feels overpriced, saw better pricing elsewhere | ROI conversation, retention offer if warranted |
| **Business change** | Org restructure, budget cut, acquisition | Understand the new org, find new champion |
| **Competitive displacement** | Actively evaluating a competitor | Competitive defense play (see `competitive-battlecard`) |

## Intervention Playbook

### Play A: Adoption Recovery
**Use when:** Usage < 40% of contracted capacity, training not complete
**Steps:**
1. Identify the specific adoption gap (which users, which features?)
2. Find an internal champion to sponsor the re-adoption effort
3. Deliver targeted re-onboarding (not the full onboarding — just the gap)
4. Set weekly adoption milestones for 6 weeks
5. Reward early adoption wins publicly within the customer org

### Play B: Relationship Rescue
**Use when:** Champion departed, CSM mismatch, executive disengaged
**Steps:**
1. Map the current stakeholder landscape — who is left?
2. Request a warm intro to the new champion or exec through the departed contact
3. Executive sponsor (Dr. Lewis) makes direct outreach to the customer executive
4. Host a relationship reset meeting — focus on their current needs, not past history
5. Assign a senior CSM or CSM manager as the new day-to-day contact

### Play C: ROI Realignment
**Use when:** Customer questions value, threatens price negotiation, or NPS < 5
**Steps:**
1. Build a full ROI review (see `customer-roi-review`)
2. Present ROI with the customer's data, using their language
3. Connect current value to their original business goals
4. Propose next steps to close value gaps
5. If warranted: discuss retention offer (requires CS Manager + Finance approval)

### Play D: Executive Save
**Use when:** Multiple risk factors, renewal < 60 days, standard plays haven't moved the needle
**Steps:**
1. Internal war room: CS Manager + Dr. Lewis assess the situation
2. Dr. Lewis or Matt Mathison makes direct outreach to the customer's executive
3. Propose a specific, time-bound "commitment conversation": what would it take to keep you?
4. Deliver against that commitment within 30 days
5. Formal save QBR with executives present

## Output Format

```markdown
# At-Risk Account Intervention Plan — <Account>
**Entity:** <MBL entity> | **Date:** <date> | **Intervention owner:** <CSM + Manager>
**Health score:** <N>/100 | **Renewal date:** <date> | **ACV at risk:** $<N>

---

## Risk Assessment

**Primary risk driver:** Adoption / Relationship / Product / Commercial / Business change / Competitive
**Secondary driver:** [If applicable]
**How long has this been developing:** <N> weeks/months
**What we've tried so far:** [Previous attempts and outcomes]

---

## Root Cause Analysis

**What we know:**
- [Specific evidence — not a hypothesis]
- [Data point from usage, support, or relationship]

**What we don't know yet:**
- [What needs investigation]
- [Questions to ask the customer]

---

## Intervention Play

**Selected play:** A — Adoption Recovery / B — Relationship Rescue / C — ROI Realignment / D — Executive Save

**Why this play:**
<Why this root cause calls for this play>

---

## Intervention Action Plan

| Action | Owner | Due Date | Success Signal |
|--------|-------|---------|---------------|
| [Specific action] | CSM | <date> | [How we know it worked] |
| [Action] | CS Manager | <date> | |
| Executive outreach | Dr. Lewis | <date> | Executive responds and engages |

---

## 30-Day Intervention Timeline

**Week 1:** [Specific actions — diagnosis and initial outreach]
**Week 2:** [Re-engagement and value re-establishment]
**Week 3:** [Deliver on commitment or address specific gap]
**Week 4:** [Check-in and assess: is the account recovering?]

---

## Recovery Signals (How We Know It's Working)

- [ ] Customer responds to outreach within 24 hours
- [ ] Usage increases > 20% week-over-week
- [ ] Champion re-engaged or new champion identified
- [ ] NPS increases from < 6 to ≥ 7
- [ ] Customer agrees to renewal conversation

---

## Worst-Case Scenario Planning

**If intervention fails by <date>:**
- Notification: Dr. Lewis briefed immediately
- Options: Negotiate an exit, explore downgrade, or accept churn with dignity
- Process: Conduct `churn-post-mortem` within 30 days

---

## Retention Offer (If Needed — Requires Approval)

**Offer consideration:** Yes / No
**Justification:** <Why a commercial gesture is warranted>
**Proposed offer:** <Specific — discount, credit, extension>
**Approval required:** CS Manager / Dr. Lewis / Matt Mathison
```

## Output Contract
- Root cause always identified before intervention — applying the wrong play wastes time and trust
- Action plan always specific with owner and date — no vague "reach out to them"
- Recovery signals always defined — intervention has an objective measure of success
- Worst-case plan always included — not all accounts can be saved, and graceful exits preserve reputation
- HITL required: Dr. Lewis reviews all at-risk accounts with ACV > $50K; CS Manager owns execution; retention offers require approval

## System Dependencies
- **Reads from:** Health score, usage data, support history, relationship context (provided or from CS platform)
- **Writes to:** Nothing (intervention plan for HITL review and execution)
- **HITL Required:** Dr. Lewis reviews all at-risk accounts > $50K ACV; Play D (Executive Save) requires Dr. Lewis involvement; retention offers require CS Manager + Finance approval

## Test Cases
1. **Golden path:** $85K ACV account with 28% seat activation, champion on maternity leave → Play A + B combo, adoption recovery + new champion identification, executive sponsor outreach from Dr. Lewis, 30-day timeline with weekly milestones
2. **Edge case:** Account at risk < 30 days before renewal → compresses timeline, activates Play D immediately, parallel tracks (exec outreach + retention offer prep + renewal conversation) rather than sequential
3. **Adversarial:** CSM wants to write off the account without attempting intervention → requires structured intervention attempt first, documents the process, recommends graceful exit conversation if intervention fails after 30 days

## Audit Log
Intervention plans retained by account and date. Outcomes (recovered / churned / downgraded) tracked and fed back to churn prevention playbook.

## Deprecation
Retire when CS platform provides automated intervention playbook triggers based on health score changes with built-in action tracking.
