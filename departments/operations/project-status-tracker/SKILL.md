---
name: project-status-tracker
description: "Track operational project status, milestones, and blockers. Use when the user says 'project status', 'project update', 'where are we on this project', 'project tracker', 'project milestones', 'project blockers', 'project health', or 'what is the status of X'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<project-name-or-id> [--entity <name>] [--action <status|update|risk>]"
---

# Project Status Tracker

Track operational project status against milestones, surface blockers, and generate the status report for stakeholders. For strategic initiatives, use `strategic-initiative-tracker`.

## When to Use
- Weekly project check-in (operational projects)
- When a stakeholder asks "where are we?"
- When a project is behind schedule (root cause and recovery plan)
- Project kick-off (establish baseline milestone plan)
- Project close-out (capture lessons learned)

## Project Health Framework

### Status Definitions
| Status | Meaning | Action |
|--------|---------|--------|
| 🟢 Green | On track — all milestones on schedule | Continue |
| 🟡 Yellow | 1+ milestones at risk — may slip | Owner presents recovery plan |
| 🔴 Red | Behind schedule or blocked — will miss deadline | Escalate immediately |
| ✅ Complete | All milestones delivered | Close project |
| ⏸️ Paused | On hold — documented reason | Review at resumption |

### Milestone Status
For each milestone:
- Name and description
- Target date
- Actual / forecast date
- % complete
- Owner
- Dependencies (what must complete first)
- Blockers (if any)

## Risk Register (per project)

| Risk | Probability | Impact | Score (P×I) | Mitigation |
|------|------------|--------|-------------|-----------|
| Vendor delay | Medium | High | 6 | Parallel vendor sourcing |
| Resource conflict | High | Medium | 6 | Escalate to COO |

## Output Format

```markdown
# Project Status — <Project Name>
**Entity:** <entity> | **Owner:** <name> | **Updated:** <date>
**Overall Status:** 🟢 / 🟡 / 🔴 | **% Complete:** X%
**Target Close:** <date> | **Forecast Close:** <date>

## Milestone Tracker
| Milestone | Target | Forecast | Status | Owner | Blocker |
|-----------|--------|----------|--------|-------|---------|
| M1: Discovery complete | Jun 1 | Jun 1 | ✅ Done | Dr. Lewis | |
| M2: Vendor selection | Jun 15 | Jun 22 | 🟡 Slipping | <name> | 3 bids outstanding |
| M3: Implementation start | Jul 1 | Jul 8 | 🟡 Dependent on M2 | | |
| M4: Go-live | Aug 1 | Aug 15 | 🔴 At risk | | Dependent on M2, M3 |

## Blockers — Escalated
1. Vendor bid process delayed by 1 week — affects M2, M3, M4. Action: <owner> to follow up by <date>.

## Risks
| Risk | Score | Mitigation Status |
|------|-------|------------------|

## This Week's Focus
<What is the team doing this week to advance the project>

## Next Milestone
<M2 — due Jun 22 — vendor selection complete. Deliverable: signed contract>

## Decision Needed
<Any decision from Matt or stakeholders required to unblock progress>
```

## Output Contract
- Overall status always reflects the worst milestone status (one red → overall red)
- Every blocker has an action, an owner, and a deadline
- Forecast close date always updated when any milestone slips
- HITL required before any project scope change or deadline extension is communicated to stakeholders

## System Dependencies
- **Reads from:** Project plan and milestone data (provided), Monday.com project boards
- **Writes to:** Monday.com project items (with HITL)
- **HITL Required:** Project sponsor (Matt or entity lead) approves scope changes and deadline extensions

## Test Cases
1. **Golden path:** Project on schedule, all milestones green → clean status report with next milestone highlighted
2. **Edge case:** Critical path milestone slipping → automatically cascades delay to all dependent milestones, recalculates forecast close
3. **Adversarial:** Project owner marks everything green despite missed milestone → rejects inconsistent data, flags specific milestone as inconsistent with stated completion

## Audit Log
Weekly project status snapshots retained. Milestone date changes logged with reason and approver.

## Deprecation
Retire when Monday.com or project management platform provides automated status reporting from milestone data.
