---
name: product-launch-plan
description: "Plan and execute a product or feature launch. Use when the user says 'launch plan', 'product launch', 'feature launch', 'go-to-market', 'how do we launch this', 'launch checklist', 'launch readiness', 'prepare for launch', 'launch strategy', or 'ship this feature'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--scope <full-launch|soft-launch|internal>] [--date <target-date>]"
---

# Product Launch Plan

Plan and execute a product or feature launch for MBL and portfolio products. A launch is not the same as a deployment — deployment is a technical event; a launch is a coordinated go-to-market moment. Launches done well create awareness, drive adoption, and set expectations. Launches done poorly confuse users, miss the adoption window, and waste the engineering investment that built the feature.

## When to Use
- A significant new feature or product is ready to ship
- Portfolio company is launching an AI capability to their customers
- MBL is rolling out an agent workflow to a new entity
- A beta test is graduating to general availability
- Internal launch to the MBL team of a new tool or workflow

## Launch Types

```
Soft launch (internal):
  Who: MBL team only; Dr. Lewis + Matt Mathison + specific users
  Purpose: validate before wider rollout; test with real workflows
  Risk: low — contained blast radius
  Example: Meeting Intelligence first launched to MBL before portfolio rollout

Limited launch (beta):
  Who: Selected customers or portfolio companies (not all)
  Purpose: real-world validation; feedback collection; success stories
  Risk: medium — beta users have real expectations
  Feature flag: controlled via flag; easy rollback

General availability (GA):
  Who: All eligible users
  Purpose: full adoption push; marketing moment; usage metrics start
  Risk: highest — full user impact; monitor intensively first 48 hours
```

## Launch Readiness Checklist

```
PRODUCT READY:
  [ ] Feature shipped to production and verified (deployment checklist complete)
  [ ] Success metrics baselined and monitoring active
  [ ] Known issues documented and triage decision made (ship or block?)
  [ ] Documentation updated (user guide, API docs, release notes)
  [ ] Support/CS team briefed on what shipped and common questions

COMMUNICATIONS READY:
  [ ] Release notes written and reviewed
  [ ] User communications drafted (email, in-app, Slack/Teams)
  [ ] Internal stakeholder communications sent (Matt Mathison, portfolio leads)
  [ ] FAQ prepared for support team

ROLLOUT READY:
  [ ] Feature flag configured at correct rollout percentage
  [ ] Rollback plan documented (can this be reverted quickly?)
  [ ] On-call engineer confirmed for launch window
  [ ] Monday.com board updated: launch date and owner
```

## Output Format

```markdown
# Launch Plan — <Product/Feature>
**Date:** <date> | **Launch owner:** Dr. John Lewis
**Launch type:** Internal / Soft / Limited / GA
**Target date:** <date>
**Product:** <product> | **Entity:** <entity>

---

## Launch Summary

**What we're launching:** <2-3 sentences — what it does and who it helps>
**Why now:** <business reason — customer commitment, milestone, competitive reason>
**Success criteria:** <how we'll know the launch worked at 30 days>
**Rollback trigger:** <what would make us pull this back>

---

## Launch Readiness — Status

| Category | Status | Owner | Due |
|---------|--------|-------|-----|
| Feature deployed and verified | ✅ Done | Engineering | — |
| Success metrics live | ✅ Done | Dr. Lewis | — |
| Release notes written | ✅ Done | Dr. Lewis | — |
| User communications | 🟡 In progress | Dr. Lewis | <date> |
| CS team briefed | ❌ Not started | Dr. Lewis | <date> |
| Matt Mathison notified | ✅ Done | Dr. Lewis | — |
| Rollback plan documented | ✅ Done | Engineering | — |

**Launch readiness verdict:** ✅ Ready / 🟡 Ready with conditions / ❌ Not ready — <blockers>

---

## Rollout Plan

| Stage | Audience | Date | Rollout % | Success Gate |
|-------|---------|------|----------|-------------|
| Internal | MBL team + Dr. Lewis | <date> | 100% of team | Error rate <1%; positive feedback |
| Soft | Allevio (portfolio pilot) | <date> | 100% Allevio | Same + CS satisfaction >4/5 |
| GA | All entities | <date> | 100% | North star metric trending up |

---

## Communications Plan

| Audience | Channel | Message | Sender | Date |
|---------|---------|---------|--------|------|
| Internal team | Teams message | New capability available | Dr. Lewis | Launch day |
| Matt Mathison | Email summary | What shipped and what to expect | Dr. Lewis | Day before |
| Allevio team | Teams | Pilot invitation | Dr. Lewis | Day of soft launch |

**Matt Mathison launch email:**
Subject: [Meeting Intelligence] Action Item Extraction is live

Matt — action item extraction is now live. When Krista records a meeting, a summary and action items will appear in Monday.com automatically within 5 minutes. 

Test it this week — try it with your Monday standup or any portfolio update meeting. Let me know if the quality isn't right and I'll adjust.

Currently available: MBL team only. Portfolio rollout: Q3.

---

## First 48 Hours Monitoring Plan

| Check | Frequency | Owner | Alert Threshold |
|-------|---------|-------|----------------|
| Error rate | Every 15 min | Engineering | >2% |
| Feature adoption | Daily | Dr. Lewis | <10% of eligible users after 48h |
| Support tickets | Daily | Dr. Lewis | >3 tickets on same issue |
| Matt Mathison feedback | 24-hour check-in | Dr. Lewis | Any negative signal |

---

## Post-Launch Review (Day 14)

**Success metrics at 14 days:**
- North star: <actual vs. target>
- Adoption: <% of eligible users>
- Feedback: <summary>

**Decision:** Continue as is / Iterate / Roll back to previous state
```

## Output Contract
- Launch readiness verdict always binary before launch proceeds — "mostly ready" is not ready
- Rollout stages always in order with success gates — skipping stages is acceptable with documented rationale
- First 48 hours monitoring always planned — launches without monitoring create blind spots at the highest-risk window
- Matt Mathison communication always drafted — he needs to know before it lands in his inbox from someone else
- HITL required: Dr. Lewis approves launch readiness; Matt Mathison receives launch notification before or on launch day; any rollback decision requires Dr. Lewis; portfolio company launches require entity leadership awareness

## System Dependencies
- **Reads from:** Deployment status (GitHub/CI), analytics (baseline metrics), Monday.com board, CS team contacts
- **Writes to:** Release notes (SharePoint); Monday.com board; launch communications (email/Teams)
- **HITL Required:** Dr. Lewis owns launch; Matt Mathison notified before launch; rollback requires Dr. Lewis approval

## Test Cases
1. **Golden path:** Launch Meeting Intelligence action extraction → Internal launch (MBL team, 5 people); 48h monitoring: error rate 0.3%, 4/5 users active, Matt Mathison: "this is exactly what I wanted"; soft launch to Allevio (2 weeks later); GA to all portfolio by end of quarter; post-launch review at Day 14 shows north star +38%
2. **Edge case:** Error rate spikes to 4% in first hour → immediate rollback via feature flag (< 2 min); investigate root cause; fix and re-launch after verification; report to Matt Mathison: "we launched and immediately rolled back due to X; expected re-launch in 3 days"
3. **Adversarial:** Team wants to skip internal testing and go straight to all-portfolio launch → no justification for skipping staged rollout; blast radius of a bad GA launch is much larger than internal launch; internal launch costs 0 extra days if the team is already using the system

## Audit Log
Launch plans retained. Rollout stage decisions documented. Post-launch reviews retained. Rollback events documented.

## Deprecation
Retire when product team has a dedicated launch management process with automated readiness checking and multi-channel communication coordination.
