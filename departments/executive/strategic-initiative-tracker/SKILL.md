---
name: strategic-initiative-tracker
description: "Track and report on strategic initiatives across MBL and portfolio companies. Use when the user says 'strategic initiative', 'initiative tracker', 'how are our initiatives going', 'initiative status', 'strategic project update', 'what are we working on strategically', or 'initiative roadmap'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--quarter <Q1|Q2|Q3|Q4>] [--status <all|at-risk|blocked>]"
---

# Strategic Initiative Tracker

Track strategic initiatives across MBL and portfolio entities — status, owners, milestones, and blockers. Feeds the weekly operating review and board reporting.

## When to Use
- Weekly operating review (update initiative status)
- Quarterly planning (set new initiatives and retire completed ones)
- Board meeting preparation (strategic section)
- When a new initiative is launched (add to tracker)
- When an initiative is at risk (escalate to Matt)

## Initiative Record Format

Each initiative has:
- **Name**: Short kebab-case identifier
- **Entity**: MBL / Allevio / HIVE / Column6
- **Owner**: Named individual (not "team")
- **Strategic goal**: Which OKR or annual priority this serves
- **Start / Target date**
- **Current status**: On Track / At Risk / Blocked / Complete / Parked
- **% Complete** (milestone-based, not time-based)
- **This week's update**: What moved forward
- **Next milestone**: What's due next and when
- **Blocker**: If blocked, what and who needs to resolve it

## Initiative Status Thresholds

| Status | Meaning | Action |
|--------|---------|--------|
| ✅ On Track | Milestones on schedule | Continue |
| 🟡 At Risk | Behind on 1+ milestone | Owner presents recovery plan in WOR |
| 🔴 Blocked | Cannot advance without a decision or resource | Escalate to Matt in WOR |
| ✅ Complete | All milestones achieved, outcome delivered | Archive, capture lessons |
| 🅿️ Parked | Paused intentionally | Document reason, review quarterly |

## Output Format

```markdown
# Strategic Initiative Tracker — <Entity/Portfolio> — <Period>

## Summary
| Status | Count |
|--------|-------|
| ✅ On Track | <N> |
| 🟡 At Risk | <N> |
| 🔴 Blocked | <N> |
| ✅ Complete | <N> |
| 🅿️ Parked | <N> |

## Active Initiatives

### <Initiative Name>
**Entity:** | **Owner:** | **Goal:** | **Target:** <date>
**Status:** 🟡 At Risk | **Complete:** 60%
**This week:** <what moved>
**Next:** <milestone + due date>
**Blocker:** <if any — escalation needed>

---

## Escalations Required from Matt
1. <Initiative> — <blocker> — decision needed by <date>

## Initiatives Completed This Period
- <name>: Outcome: <result>

## Initiatives Recommended for Parking
- <name>: Reason: <why pause>
```

## Output Contract
- Every initiative has a named human owner — not "team" or "department"
- Blocked initiatives always surface in an escalation section
- No initiative silently disappears — parked initiatives require documentation
- HITL required before any initiative is officially cancelled or descoped

## System Dependencies
- **Reads from:** Initiative registry (Monday.com or provided), OKR tracker, weekly owner updates
- **Writes to:** Monday.com initiative board (with HITL)
- **HITL Required:** Before cancelling, descoping, or transferring ownership of any initiative

## Test Cases
1. **Golden path:** 8 initiatives, 6 on track, 2 at-risk → clean tracker with at-risk escalations and recovery plan requests
2. **Edge case:** Initiative with no update submitted this week → flags as "no update received" — does not carry forward last week's status as current
3. **Adversarial:** All 10 initiatives show "On Track" without evidence → flags as unlikely pattern, requests specific milestone evidence before publishing

## Audit Log
Weekly initiative status snapshots retained. Milestone history tracked for retrospective analysis.

## Deprecation
Retire when Monday.com strategic initiative boards with automated status reporting replace manual tracking.
