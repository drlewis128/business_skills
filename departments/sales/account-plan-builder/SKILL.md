---
name: account-plan-builder
description: "Build an account plan for a strategic customer or prospect. Use when the user says 'account plan', 'strategic account plan', 'key account plan', 'build an account strategy', 'plan for account X', 'account growth plan', or 'how do we grow this account'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--type <prospect|customer>] [--goal <new-logo|expansion|retention>]"
---

# Account Plan Builder

Build a structured account plan for a strategic prospect or existing customer. An account plan turns a relationship into a strategy — it defines what you know, what you want to achieve, who you need to know, and what you'll do to get there.

## When to Use
- A high-value prospect needs a coordinated pursuit approach (not just individual rep effort)
- An existing customer is up for renewal and expansion
- An account has gone quiet and needs a re-engagement strategy
- Quarterly business review (QBR) prep for a strategic customer
- When two or more portfolio entities have relationships with the same account

## Account Plan Components

### 1. Account Snapshot
- Company overview (industry, size, revenue, structure)
- Relationship history (how long have we known them? Past deals?)
- Current status (prospect / active customer / churned / at-risk)
- Strategic importance (Tier 1 = must win/retain; Tier 2 = important; Tier 3 = standard)

### 2. Business Intelligence
- What is their business trying to accomplish this year?
- What are their top 3 strategic priorities?
- What challenges are they facing that we can solve?
- What does success look like for them?

### 3. Stakeholder Map
- Who are all the people involved in decisions at this account?
- What does each person care about?
- Who is our champion? Who is a detractor?
- Who don't we have relationships with yet (and need to)?

### 4. Revenue Picture
- Current annual spend with us (if customer)
- White space: what other products/services could they buy?
- Expansion opportunity estimate
- Renewal date and risk level

### 5. Competitive Situation
- Who else are they working with?
- Where are we vulnerable?
- Where do we have the advantage?

### 6. Account Goals (12 months)
- Specific, measurable goals for this account
- Example: "Expand from $80K to $150K ACV by Q4 2026"

### 7. Action Plan
- What will we do, by when, to achieve the account goals?
- Who owns each action?

## Output Format

```markdown
# Account Plan — <Account Name>
**Entity:** <MBL Entity> | **Account Owner:** <rep> | **Date:** <date> | **Review Cycle:** Quarterly

---

## Account Snapshot

**Company:** <name> | **Industry:** <industry> | **Size:** <employees / revenue>
**Current status:** Prospect / Active customer / At-risk
**Tier:** 1 (Strategic) / 2 (Important) / 3 (Standard)
**Relationship since:** <date or "New prospect">

---

## Business Intelligence

**Their top 3 priorities this year:**
1. <Priority>
2. <Priority>
3. <Priority>

**Challenges we can solve:**
- <Challenge and how we address it>
- <Challenge and how we address it>

**What success looks like for them:**
<1-2 sentences on their definition of a win with us>

---

## Stakeholder Map

| Name | Title | Role in Decision | Relationship | What They Care About |
|------|-------|-----------------|-------------|---------------------|
| <Name> | <Title> | Economic Buyer | 🟢 Strong | ROI, budget |
| <Name> | <Title> | Champion | 🟢 Strong | Operational improvement |
| <Name> | <Title> | Influencer | 🟡 Neutral | Technical fit |
| <Name> | <Title> | Gatekeeper | 🔴 Unknown | Compliance, risk |

**Gaps (people we need to reach):**
- <Role/person not yet engaged>

---

## Revenue Picture

| Category | Amount |
|---------|--------|
| Current ACV | $<N> |
| Renewal date | <date> |
| Renewal risk | Low / Medium / High |
| Expansion opportunity | $<N> (from: <products/services>) |
| Target ACV in 12 months | $<N> |

---

## Competitive Situation

**Incumbent vendors:** <list>
**Our position:** Strong / Neutral / At-risk
**Key competitive risks:** <what a competitor could offer that would displace us>
**Our advantage:** <where we have clear superiority>

---

## Account Goals (Next 12 Months)

1. **[Goal]** — Success metric: [how we measure it] | Owner: <name>
2. **[Goal]** — Success metric: [metric] | Owner: <name>

---

## 90-Day Action Plan

| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| <Action> | <name> | <date> | Not started |
| <Action> | <name> | <date> | In progress |

---

## Risks and Mitigations

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| <Risk> | Medium | High | <Action> |

```

## Output Contract
- Stakeholder map always includes relationship status — not just names
- Revenue picture always shows expansion opportunity separately from renewal
- 90-day actions always owned and dated — not a wish list
- HITL required: Dr. Lewis reviews all Tier 1 account plans; Matt Mathison approves strategic account pursuit investments

## System Dependencies
- **Reads from:** CRM account data, previous deal history, stakeholder notes (provided or from GoHighLevel)
- **Writes to:** Nothing (plan for HITL review and rep execution)
- **HITL Required:** Dr. Lewis reviews Tier 1 account plans quarterly; account owner updates and reviews monthly

## Test Cases
1. **Golden path:** Existing Allevio customer with $80K ACV → stakeholder map with 4 contacts, $70K expansion opportunity in RCM services, 3 specific 90-day actions, renewal 8 months out (low risk)
2. **Edge case:** New prospect with no relationship history → builds plan from public information and ICP data, flags all stakeholder relationship statuses as Unknown, prioritizes first-touch actions
3. **Adversarial:** Request to classify a low-value account as Tier 1 to justify disproportionate rep investment → recommends Tier 2, explains tiering criteria, surfaces opportunity cost of over-investing in lower-value accounts

## Audit Log
Account plans retained by account and quarter. Plan updates tracked with date and owner.

## Deprecation
Retire when CRM (GoHighLevel or Salesforce) provides integrated account planning with automated stakeholder mapping and revenue tracking.
