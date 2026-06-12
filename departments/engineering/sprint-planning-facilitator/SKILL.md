---
name: sprint-planning-facilitator
description: "Facilitate sprint planning and produce sprint artifacts. Use when the user says 'sprint planning', 'plan the sprint', 'sprint kickoff', 'what goes in this sprint', 'sprint backlog', 'story points', 'sprint capacity', 'sprint goals', 'two-week sprint', or 'sprint prep'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--team <name>] [--sprint <number>] [--velocity <points>] [--duration <weeks>]"
---

# Sprint Planning Facilitator

Facilitate sprint planning for engineering teams. Sprint planning converts roadmap items into a committed 2-week (or defined-length) sprint backlog, sets a sprint goal, and ensures the team has clear acceptance criteria before work begins. Poor sprint planning is the most common cause of sprint failure — unclear goals, over-commitment, and missing acceptance criteria all stem from a rushed or skipped planning session.

## When to Use
- Start of every sprint (every 2 weeks by default)
- After a major scope change that invalidates the current sprint
- When a new team member joins and needs to understand the planning process
- Retrospective identified planning as a recurring failure point

## Sprint Planning Framework

```
Step 1 — Velocity check (5 min)
  Review last 3 sprints: planned vs. completed story points
  Compute reliable velocity: average of last 3 (exclude outliers)
  Adjust for known capacity changes (PTO, hiring, incidents)

Step 2 — Sprint goal (10 min)
  Single sentence: "This sprint we will [deliverable] so that [business outcome]."
  Must be measurable: done/not done, not "we worked on it"
  Must be achievable within the sprint — no "pending review" items

Step 3 — Backlog selection (30-45 min)
  Pull from H1 roadmap items — roadmap drives backlog, not reverse
  Size each item (1, 2, 3, 5, 8, 13 story points — no 0s, no >13)
  Total must be ≤ reliable velocity (conservative beats overcommit)
  Each item must have acceptance criteria before it's in the sprint

Step 4 — Dependency and risk check (10 min)
  Any items blocked by external teams or decisions?
  Any items with unclear requirements (= hidden risk)?
  Flag — either resolve or don't commit

Step 5 — Sprint board setup (5 min)
  Load committed items into Monday.com
  Assign owners (not "team" — one person owns each item)
  Set "In Sprint" status; link to sprint goal
```

## Velocity Reference Table

| Last 3 Sprint Points | Reliable Velocity | Max Commit |
|-------------------|-----------------|-----------|
| 30, 28, 32 | 30 | 28 (−10% buffer) |
| 20, 15, 18 | 18 | 16 |
| 40, 38, 42 | 40 | 36 |

## Output Format

```markdown
# Sprint <N> Plan — <Team Name>
**Dates:** <start> → <end> | **Date prepared:** <date>
**Facilitated by:** Dr. John Lewis

---

## Sprint Goal

"This sprint we will <deliverable> so that <business outcome>."

**Done criteria:** [Sprint goal is met when: specific, binary check]

---

## Capacity

| Factor | Value |
|--------|-------|
| Team size | <N> engineers |
| Sprint days | <N> days |
| Capacity reduction (PTO/meetings) | <N> days |
| Reliable velocity (3-sprint avg) | <N> points |
| **Committed points** | **<N> points** |

---

## Sprint Backlog

| # | Item | Size | Owner | Acceptance Criteria | Dependencies |
|---|------|------|-------|-------------------|-------------|
| 1 | [Item] | 3 | [Name] | [What "done" looks like — testable] | None |
| 2 | [Item] | 5 | [Name] | [Criteria] | Requires #1 merged |
| 3 | [Item] | 8 | [Name] | [Criteria] | None |
| | **Total** | **16** | | | |

---

## Carry-Over from Last Sprint

| Item | Reason Not Completed | Decision |
|------|-------------------|---------|
| [Item] | Blocked by external API | Re-commit this sprint |
| [Item] | Underestimated | Break into smaller items |

---

## Blocked / Deferred

| Item | Blocker | Owner of Unblock | Target Sprint |
|------|---------|----------------|--------------|
| [Item] | Waiting on vendor API docs | Dr. Lewis → vendor | Sprint <N+1> |

---

## Sprint Risks

| Risk | Probability | Impact | Mitigation |
|------|-----------|--------|-----------|
| [Risk] | Medium | Delays sprint goal | [Plan] |

---

## Monday.com Sprint Board
Sprint items loaded to: [Board link]
Sprint goal set as board description.
Daily standup: <time> | Retro: <end date> at <time>
```

## Output Contract
- Sprint goal always written before backlog is selected — goal drives backlog selection, not reverse
- Acceptance criteria always written before items are committed — "we'll define it during the sprint" = hidden risk
- Committed points always ≤ reliable velocity — no aspirational commits
- Carry-over always documented — pretending carry-over didn't happen hides team health problems
- HITL required: Dr. Lewis reviews sprint plan before kickoff; team confirms acceptance criteria; Matt Mathison notified if sprint goal changes mid-sprint

## System Dependencies
- **Reads from:** Engineering roadmap (SharePoint), Monday.com backlog, last 3 sprint retrospective notes
- **Writes to:** Monday.com sprint board; sprint plan document (SharePoint)
- **HITL Required:** Dr. Lewis reviews; team confirms items and estimates; Monday.com updated before sprint begins

## Test Cases
1. **Golden path:** Sprint 12 for MBL Engineering → velocity 28 pts (last 3: 25, 30, 29); sprint goal: "Complete Krista.ai webhook integration so meeting intelligence can push to Monday.com automatically"; backlog: 5 items totaling 26 pts; all acceptance criteria written; no blocked items; board loaded
2. **Edge case:** Engineer out sick mid-sprint, 3 items now at risk → immediate triage: which items can be completed, which should be deferred?; notify Dr. Lewis within 24 hours; adjust sprint goal if sprint goal is at risk; document in retrospective
3. **Adversarial:** Product manager wants to add a new feature mid-sprint after planning is locked → mid-sprint adds must go through scope change process: what comes out if this goes in?; never add without removing; document the trade-off; Dr. Lewis approves; update Monday.com

## Audit Log
Sprint plans retained. Velocity history maintained. Scope change decisions documented.

## Deprecation
Retire when engineering team adopts a dedicated agile tooling platform that automates sprint planning workflows with AI assist.
