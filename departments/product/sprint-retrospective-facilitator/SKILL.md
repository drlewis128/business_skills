---
name: sprint-retrospective-facilitator
description: "Facilitate sprint retrospectives that produce actionable improvements. Use when the user says 'retrospective', 'retro', 'sprint retro', 'what went well', 'team retrospective', 'end of sprint reflection', 'how do we improve the sprint', 'retro format', or 'run a retrospective'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--sprint <number>] [--team <name>] [--format <start-stop-continue|4Ls|sailboat>]"
---

# Sprint Retrospective Facilitator

Facilitate sprint retrospectives that actually produce improvements — not just surface-level venting or hollow praise. Retrospectives fail when they generate a list of complaints that nobody acts on, or when they're so sanitized that no real issues are raised. A good retro produces 1-3 specific, owned, time-bound improvements to the team's process. For MBL engineering teams, retros are how the team gets better as a unit.

## When to Use
- End of each sprint — standard retrospective
- After a major launch or incident — focused retrospective
- Team process is noticeably broken — targeted retrospective
- Engineering team has never done retros — first one
- A previous retro produced no real improvements — reset the format

## Retrospective Formats

```
Start-Stop-Continue (default, fast):
  Start: What should we start doing that we're not doing?
  Stop: What should we stop doing that's not helping?
  Continue: What's working well that we should keep?

4Ls (for deeper reflection):
  Liked: What did you appreciate?
  Learned: What did you learn?
  Lacked: What was missing?
  Longed for: What did you wish you had?

Sailboat (for visual teams):
  Wind (propellers): What's helping us move forward?
  Anchor: What's slowing us down?
  Rocks: What risks ahead?
  Island: What's our goal?

Mad-Sad-Glad (emotional safety):
  Mad: What frustrated you?
  Sad: What disappointed you?
  Glad: What made you happy?
```

## Output Format

```markdown
# Sprint Retrospective — Sprint <N> | <Team>
**Date:** <date> | **Facilitator:** Dr. John Lewis
**Sprint:** <N> | **Format:** Start-Stop-Continue
**Attendees:** <list> | **Duration:** 45 min

---

## Pre-Retro: Sprint Review (10 min)

**Sprint goal:** <was the goal met? Y/N>
**Velocity:** <N> points (vs. planned <N>)
**What shipped:** <list of completed items>
**What didn't ship:** <list of incomplete items + reason>

---

## What Went Well (Continue)

*Items submitted before meeting — read and dot-vote*

| Item | Votes | Action |
|------|-------|--------|
| [Positive item] | 5 | Continue doing |
| [Positive item] | 3 | Continue doing |

**Theme:** <What this sprint did well overall>

---

## What Didn't Work (Stop)

| Item | Votes | Root cause | Keep? |
|------|-------|-----------|-------|
| [Issue] | 7 | <why this happened> | Stop |
| [Issue] | 4 | <why this happened> | Stop |

---

## What to Try (Start)

| Item | Votes | Hypothesis | Owner |
|------|-------|-----------|-------|
| [Improvement] | 6 | "If we do X, we expect Y" | <name> |
| [Improvement] | 4 | "If we do X, we expect Y" | <name> |

---

## Improvements for Next Sprint

*Maximum 3 improvements (more than 3 and none get done)*

| # | Improvement | Owner | How we'll know it worked | Next sprint check-in |
|---|------------|-------|------------------------|---------------------|
| 1 | <specific action> | <name> | <success signal> | Sprint N+1 retro |
| 2 | <specific action> | <name> | <success signal> | Sprint N+1 retro |
| 3 | <specific action> | <name> | <success signal> | Sprint N+1 retro |

---

## Retro Health Metrics (track across sprints)

| Metric | Sprint N | Sprint N-1 | Trend |
|--------|---------|-----------|-------|
| % improvements completed from last retro | <N>% | <N>% | ↑ |
| Velocity vs. plan | <N>% | <N>% | → |
| Participation (items submitted per person) | <N> | <N> | → |

---

## Action Items

| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| [Improvement 1 first step] | <name> | By Sprint N+1 | Open |
```

## Output Contract
- Maximum 3 improvements per retro — more than 3 and none get done; this is non-negotiable
- Every improvement has a named owner and a success signal — "improve communication" is not an improvement
- Previous retro's improvements always reviewed at the start — if improvements from last retro were never done, start there
- Retro is timeboxed at 45 minutes — run to time; if you can't fit everything, cut, don't extend
- HITL required: Dr. Lewis facilitates or approves the format; improvements involving process changes that affect external stakeholders require Dr. Lewis sign-off; improvements involving new tools or costs require Dr. Lewis approval

## System Dependencies
- **Reads from:** Sprint board (Monday.com) — what shipped, what didn't; previous retro notes
- **Writes to:** Retro notes (Teams/SharePoint); improvement actions (Monday.com)
- **HITL Required:** Dr. Lewis facilitates or reviews; improvements with budget/tool implications require Dr. Lewis approval

## Test Cases
1. **Golden path:** Sprint 8 retro for Meeting Intelligence team → Velocity: 18/22 points (4 points unfinished — Krista.ai webhook flakiness blocked); Went well: PR review turnaround (continue), daily standups staying under 15 min (continue); Didn't work: unclear requirements on action item tagging feature led to rework (stop: ship unclear specs); Improvements: (1) add acceptance criteria template to all specs (Dr. Lewis, by sprint 9 planning, success: 100% of specs have acceptance criteria), (2) spike stories for any Krista.ai integration work first (engineering lead, ongoing, success: no blocked stories due to Krista.ai uncertainty)
2. **Edge case:** Team has never done a retro and is reluctant to share problems in front of management → use anonymous submission (sticky notes, Google Form, or Miro); Dr. Lewis reviews before the meeting; remove names from issues before discussion; create psychological safety first; over time, as trust builds, move to open discussion
3. **Adversarial:** Retro consistently produces the same complaints with no improvement (same issues sprint after sprint) → stop listing the issue and start asking why it hasn't been fixed; if "poor communication" has been on the retro for 3 sprints, it's not a communication problem — it's a structural or ownership problem that needs to be named and addressed directly, not retro'd again

## Audit Log
Retro notes retained per sprint. Improvements tracked for completion. Sprint-over-sprint trend data maintained.

## Deprecation
Retire when the engineering team runs effective retrospectives independently and the PM owns the facilitation without this skill scaffold.
