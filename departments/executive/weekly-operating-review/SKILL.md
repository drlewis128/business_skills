---
name: weekly-operating-review
description: "Structure and summarize the weekly operating review across MBL and portfolio companies. Use when the user says 'weekly operating review', 'WOR', 'weekly ops review', 'Monday review', 'weekly leadership meeting', 'weekly status', or 'what happened this week operationally'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--week <YYYY-Www>] [--entities <list>]"
---

# Weekly Operating Review

Structure the MBL weekly operating review — pulling status from portfolio companies and MBL operations, surfacing blockers, and generating the agenda and summary for Matt Mathison's leadership review.

## When to Use
- Every Monday morning (standing workflow)
- Before the weekly leadership sync
- When Matt needs a compressed view of what happened and what's next

## Review Structure

### Cadence
| Day | Action |
|-----|--------|
| Friday COB | Portfolio companies submit weekly update |
| Monday AM | This skill compiles WOR |
| Monday | Leadership sync (Matt + Dr. Lewis + key leads) |
| Monday EOD | Action items posted to Monday.com |

### Section 1 — Week in Review (Top 5 Developments)
The 5 most significant events, decisions, or changes from the prior week across all entities.

### Section 2 — Entity Status

For each entity: MBL, Allevio, HIVE, Column6

```
Entity: <name>
Status: 🟢 On Track | 🟡 Watch | 🔴 Blocked
Key metric this week: <primary KPI>
Week's highlight: <1 sentence>
Top issue: <1 sentence>
Decision needed: <Yes/No — if yes, state it>
```

### Section 3 — Blockers (Escalated Items)
Items that need Matt's intervention or a cross-entity resource to resolve.

### Section 4 — Action Items
- Carry-forward from last week (unresolved)
- New this week (with owners and deadlines)

### Section 5 — Looking Ahead (Next 2 Weeks)
Key milestones, deadlines, and meetings on the horizon.

## Output Format

```markdown
# MBL Weekly Operating Review — Week of <date>
**Prepared:** <date/time> | **Meeting:** <day, time>

## Week in Review
1. <Development 1>
2. <Development 2>
3. <Development 3>
4. <Development 4>
5. <Development 5>

## Entity Status
[Entity status blocks — one per entity]

## Blockers — Escalated
| Blocker | Entity | Owner | Escalated To | Resolution Path |
|---------|--------|-------|-------------|----------------|

## Action Items
| # | Owner | Item | Due | Status |
|---|-------|------|-----|--------|
| 1 | Matt | <item> | <date> | ⬜ Open |

## Ahead — Next 2 Weeks
- <date>: <event/milestone>
- <date>: <event/milestone>
```

## Output Contract
- Maximum 2 pages (entity status blocks + action items can extend)
- Every blocker must have an owner and resolution path
- Action items must be specific (actionable, named, dated)
- HITL required before distributing to leadership team

## System Dependencies
- **Reads from:** Portfolio company weekly updates, Monday.com boards, prior WOR action items, financial snapshot
- **Writes to:** Monday.com action items (after HITL approval)
- **HITL Required:** Dr. Lewis reviews before sending to Matt; Matt reviews before team distribution

## Test Cases
1. **Golden path:** All 4 entities green, 5 action items carry-forward, 3 new → clean WOR with closed items and forward agenda
2. **Edge case:** One entity misses Friday update → flags as missing data in that entity's block, continues with others
3. **Adversarial:** Two simultaneous blockers requiring Matt's attention → surfaces both as Priority 1 in Section 3, formats as decision brief

## Audit Log
Weekly operating reviews retained in sequential archive. Action item completion tracked week-over-week.

## Deprecation
Retire when Meeting Intelligence System (Phase 2) auto-generates WOR from Krista.ai transcriptions and Monday.com data.
