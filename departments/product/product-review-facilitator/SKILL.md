---
name: product-review-facilitator
description: "Facilitate structured product review meetings. Use when the user says 'product review', 'weekly product meeting', 'product review meeting', 'run a product review', 'product check-in', 'product status meeting', 'monthly product review', or 'how to run a product meeting'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--cadence <weekly|monthly|quarterly>] [--audience <team|leadership|portfolio>]"
---

# Product Review Facilitator

Facilitate structured product review meetings that produce decisions, not just status updates. Product reviews fail when they're status theater — everyone shares what they did without making any decisions. A good product review exits with clear decisions, prioritized risks, and next actions. For MBL, product reviews happen at two levels: weekly operational reviews (Dr. Lewis + engineering) and monthly strategic reviews (Dr. Lewis + Matt Mathison).

## When to Use
- Setting up a recurring product review cadence
- A product review is generating status updates but no decisions — needs restructuring
- Preparing for a leadership product review with Matt Mathison
- Portfolio company — help them run better product reviews
- First review of a newly launched product

## Review Types

```
Weekly operational review (Dr. Lewis + engineering, 30 min):
  - Metrics: did the NSM move this week?
  - Experiment status: what's running, what completed?
  - Sprint: are we on track for the sprint goal?
  - Blockers: what needs Dr. Lewis to unblock?
  - Risk: any new risks?

Monthly strategic review (Dr. Lewis + Matt Mathison, 45 min):
  - OKR progress: are we on track for the quarter?
  - Product health: full dashboard review
  - Key decisions: what needs Matt's alignment?
  - Portfolio: implications for Allevio, HIVE, Column6?
  - Next month: what's the plan?

Quarterly product review (Dr. Lewis + Matt Mathison + portfolio leads, 60-90 min):
  - OKR grades for last quarter
  - OKR proposals for next quarter
  - Portfolio rollout progress
  - Investment decisions: where to double down?
```

## Output Format

```markdown
# Product Review — <Product> | <Cadence>
**Date:** <date> | **Facilitator:** Dr. John Lewis
**Attendees:** <list>
**Duration:** <N> minutes

---

## Pre-Read (sent 24 hours before)

Attendees should review before the meeting:
- [ ] Product health dashboard: [link]
- [ ] OKR current status: [link]
- [ ] Experiment log: [link]

---

## Agenda

| # | Topic | Time | Owner | Type |
|---|-------|------|-------|------|
| 1 | Metrics pulse | 5 min | Dr. Lewis | Information |
| 2 | Experiment updates | 10 min | Dr. Lewis | Decision |
| 3 | Sprint status / blockers | 10 min | Engineering | Decision |
| 4 | Risk review | 5 min | Dr. Lewis | Information |
| 5 | Next week priorities | 5 min | Dr. Lewis | Alignment |
| 6 | Open items | 5 min | All | Discussion |

---

## Meeting Notes

### 1. Metrics Pulse (5 min)

**NSM this week:** <N> (target: <N>) — 🟢 / 🟡 / 🔴
**Notable movement:** <What moved up or down meaningfully>
**No decisions needed** — information only

---

### 2. Experiment Updates (10 min)

**Completing this week:**
- [Experiment name]: Variant [won/lost] by [N]% (p=[significance])
  **Decision needed:** Ship variant / Revert to control / Extend to more data
  **Decision:** <Outcome — name of decision maker>

**Running:**
- [Experiment name]: <N> days in, <N> users; projected decision date: <date>

---

### 3. Sprint Status / Blockers (10 min)

**Sprint goal:** <goal statement>
**On track:** Yes / At risk / No — [explanation if not yes]

**Blockers for Dr. Lewis:**
1. [Blocker]: Action — <what Dr. Lewis will do>, by <date>
2. [Blocker]: Decision — <options, recommended option>
   **Decision:** <outcome>

---

### 4. Risk Review (5 min)

**New risks this week:**
- [Risk] — Score: <N>, Owner: <name>, Mitigation: <action>

**Risk escalations (any risk that changed status):**
- [Risk]: was 🟡 Medium → now 🔴 High — [explanation + action]

---

### 5. Next Week Priorities (5 min)

| Priority | Owner | By when |
|---------|-------|---------|
| 1. [Task] | <name> | <date> |
| 2. [Task] | <name> | <date> |
| 3. [Task] | <name> | <date> |

---

## Decisions Made

| Decision | Made by | Notes |
|---------|---------|-------|
| [Decision text] | Dr. Lewis | [any context] |
| [Decision text] | Dr. Lewis | [any context] |

---

## Actions

| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| [Action] | <name> | <date> | Open |
| [Action] | <name> | <date> | Open |

---

## Next Review

**Date:** <date> | **Pre-read will be sent:** <date-1 day>
```

## Output Contract
- Every agenda item labeled as Information / Decision / Alignment — meetings that mix these without labeling are inefficient
- Decisions always named with the decision maker — "we discussed and it felt like X" is not a decision
- Actions always have a named owner and due date — shared ownership means no ownership
- Pre-read always sent 24 hours before — attendees who haven't read the dashboard shouldn't burn meeting time on it
- HITL required: Dr. Lewis facilitates all product reviews; decisions involving Matt Mathison require his presence or async approval; portfolio-affecting decisions require Matt Mathison alignment before implementation

## System Dependencies
- **Reads from:** Product health dashboard, OKR tracker, experiment log, sprint board (Monday.com)
- **Writes to:** Meeting notes (Teams/SharePoint); action items (Monday.com); decision log
- **HITL Required:** Dr. Lewis chairs meeting; decisions shared with Matt Mathison same-day summary; Matt Mathison chairs monthly strategic review

## Test Cases
1. **Golden path:** Weekly Meeting Intelligence operational review → NSM at 18/20 target (yellow); Experiment: action item format variant won +12% (ship decision: Dr. Lewis says ship); Blocker: integration with Krista.ai returning null for 15% of meetings (Dr. Lewis to investigate Krista.ai webhook by Wednesday); Next week: deploy format change, investigate Krista null rate, run new experiment on summary timing; 3 decisions, 3 actions, all owned; notes sent to team within 1 hour of meeting
2. **Edge case:** Key attendee can't make the meeting — decision can't wait → document the decision as provisional; send async to the absent attendee with a 24-hour window to object; if no objection, confirm; if objection, expedite a follow-up; never let "they weren't there" block a decision indefinitely
3. **Adversarial:** Product review has become a 90-minute status report where everyone updates their section → cap the meeting at 45 minutes; if it goes over, cut topics not shorten time; send a pre-read and assume it was read; if people haven't read the pre-read, establish a cultural norm that the meeting starts by asking "who hasn't read the pre-read?" — that creates the accountability

## Audit Log
Meeting notes retained in Teams/SharePoint. Decision log maintained per product. Action item completion tracked in Monday.com.

## Deprecation
Retire when the product review cadence is running effectively on its own and the PM owns facilitation without this skill scaffold.
