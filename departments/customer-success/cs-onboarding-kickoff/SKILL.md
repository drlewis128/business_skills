---
name: cs-onboarding-kickoff
description: "Plan and run a customer onboarding kickoff meeting. Use when the user says 'onboarding kickoff', 'kickoff meeting', 'new customer kickoff', 'plan the kickoff', 'kickoff agenda', 'first customer meeting', or 'onboard a new client'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--week <1|2>] [--csm <name>]"
---

# CS Onboarding Kickoff

Plan and run a new customer onboarding kickoff meeting. The kickoff is the first impression after signature — it sets the tone, builds trust, and aligns everyone on what success looks like. A great kickoff accelerates time-to-value; a bad one creates confusion that follows the engagement for months.

## When to Use
- Within 10 business days of contract signature
- When building a standard kickoff agenda template for the CS team
- Re-kickoff for a renewal or major expansion (reset the relationship)

## Kickoff Objectives
1. Build relationships — names, faces, roles on both sides
2. Align on goals — what does the customer need to achieve, and by when?
3. Agree on the process — how we'll work together, communication cadence, escalation path
4. Set expectations — timeline, milestones, what we need from them
5. Create excitement — reinforce that they made the right decision

## Pre-Kickoff Checklist (CSM Preparation)
- [ ] Review the sales-to-ops handoff document (especially commitments made)
- [ ] Know the customer's top 3 goals (from discovery and handoff)
- [ ] Know who the champion and economic buyer are
- [ ] Confirm all access and accounts are provisioned
- [ ] Prepare a brief "what we'll accomplish together" slide or summary
- [ ] Confirm meeting link, calendar invites, and attendees
- [ ] Set the kickoff agenda 24 hours in advance

## Output Format

```markdown
# Customer Onboarding Kickoff — <Account>
**Entity:** <MBL entity> | **Date:** <date> | **CSM:** <name>
**Customer contacts:** <names and titles> | **Duration:** 60 minutes

---

## Agenda (60 Minutes)

| Time | Topic | Owner | Purpose |
|------|-------|-------|---------|
| 0:00–0:10 | Welcome and introductions | CSM | Names, faces, roles — make it human |
| 0:10–0:20 | Why you're here (your goals) | CSM + Customer | Confirm what success looks like; use their words |
| 0:20–0:30 | How we work together | CSM | Communication cadence, escalation path, support process |
| 0:30–0:45 | Implementation plan and milestones | CSM | What happens, when, and who does what |
| 0:45–0:55 | Q&A and open issues | Both | Surface concerns early |
| 0:55–1:00 | Next steps and homework | CSM | Close with a clear action list |

---

## Success Goals (Pre-Confirmed from Handoff)

Customer stated goals (from discovery / sales handoff):
1. **Goal 1:** <Their primary goal — use their exact language>
2. **Goal 2:** <Secondary goal>
3. **Goal 3:** <Third goal if stated>

**How we'll measure success:**
- [Metric 1 — specific, measurable]
- [Metric 2]

**Target timeline:** <When do they need to see results?>

---

## Implementation Plan Overview

| Milestone | Target Date | Who Owns | Status |
|-----------|------------|---------|--------|
| Access provisioned | <date> | CSM | ✅ Done / ❌ Pending |
| Configuration complete | <date> | CSM + Customer | |
| User training delivered | <date> | CSM | |
| First live use case | <date> | Customer (with CSM support) | |
| 30-day check-in | <date> | CSM | |

---

## How We Work Together

**Your CSM:** <name> | <email> | <phone>
**Support:** <support email / portal>
**Escalation path:** CSM → CS Manager → Dr. Lewis (for urgent escalations)
**Communication cadence:** [Weekly check-in call / Bi-weekly / Monthly depending on tier]
**Standard response time:** [24 hours for email / same day for urgent]

---

## What We Need from You (Customer Homework)

| Item | Owner (Customer) | Due Date |
|------|-----------------|---------|
| [Admin access provisioned] | [IT contact] | <date> |
| [Training attendees confirmed] | [Champion] | <date> |
| [Data or integration requirements] | [Technical contact] | <date> |

---

## Post-Kickoff Next Steps

**CSM:**
- [ ] Send this summary within 24 hours
- [ ] Update CRM to onboarding stage
- [ ] Schedule first check-in call: <date>

**Customer:**
- [ ] [Specific action] by <date>
- [ ] [Specific action] by <date>
```

## Output Contract
- Agenda always includes success goal confirmation — CSM must validate goals from handoff in the meeting
- Customer homework always explicit — onboarding stalls when customers don't know what they need to do
- Post-kickoff next steps always sent within 24 hours — no kickoff without a same-day or next-day follow-up
- HITL required for kickoffs on strategic accounts (> $100K ACV) — Dr. Lewis joins or reviews agenda

## System Dependencies
- **Reads from:** Sales-to-ops handoff document, contract (from `sales-to-ops-handoff`)
- **Writes to:** Nothing (agenda and summary for HITL review and customer distribution)
- **HITL Required:** Dr. Lewis reviews kickoff plan for strategic accounts; CSM sends summary after kickoff

## Test Cases
1. **Golden path:** New healthcare customer (Allevio) → 60-min agenda, 3 confirmed goals from handoff, 5-milestone implementation plan, customer homework with IT admin access due in 3 days
2. **Edge case:** Customer misses kickoff → flag, reschedule within 3 business days, assess whether relationship has a champion who can drive internal participation
3. **Adversarial:** Rep made undocumented commitments during the sale that surface in the kickoff → immediately flag to manager and Dr. Lewis, do not commit to delivering commitments outside the contract, use deal desk process to evaluate

## Audit Log
Kickoff meetings retained by account and date. Implementation milestones tracked against plan.

## Deprecation
Retire when CS platform (Gainsight, Totango) provides automated kickoff templates with milestone tracking and customer action item management.
