---
name: pair-programming-guide
description: "Structure and facilitate a pair programming session. Use when the user says 'pair programming', 'pairing session', 'pair on this', 'mob programming', 'driver navigator', 'pair with me', 'code with me', 'want to pair on this feature', or 'pair to work through this problem'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--mode <driver-navigator|mob|async>] [--goal <task description>] [--duration <minutes>]"
---

# Pair Programming Guide

Structure and facilitate pair programming sessions for MBL engineering. Pair programming is underused in small engineering teams because it feels slow — two people on one keyboard. The reality: pairing on the right problems (complex logic, unfamiliar codebases, debugging sessions, design decisions) compresses multi-day problems into hours and transfers knowledge that would take months to document. Use it surgically, not reflexively.

## When to Use
- Debugging a problem that one person has been stuck on for >2 hours
- A new engineer needs to learn a system's patterns
- A complex algorithm or logic-heavy feature needs two perspectives
- Architectural decision that benefits from real-time discussion
- High-stakes code (security, PHI, financial) benefits from second eyes throughout

## When NOT to Pair
- Routine implementation where the approach is clear and established
- Documentation writing
- Tasks that require individual deep focus (research, architecture thinking)
- One person knows significantly less — this is mentoring, not pairing; use a different format

## Pairing Formats

### Driver-Navigator (Classic)
```
Driver:    Types the code; focused on line-by-line implementation
Navigator: Guides direction, spots errors, thinks ahead, references docs

Rules:
  - Switch roles every 20-30 minutes (use a timer)
  - Navigator speaks to intent, not syntax: "try a match on the result" not "type match"
  - Driver doesn't ignore navigator without stating why
  - Both must be engaged — one asleep = not pairing

Best for: Feature implementation, debugging, code review preparation
```

### Ping Pong (TDD variant)
```
Person A: Writes a failing test
Person B: Makes it pass with minimum code; writes next failing test
Person A: Makes it pass; writes next test
Repeat until feature is complete

Best for: Algorithm implementation, test-heavy features, learning TDD discipline
```

### Mob Programming (3+ people)
```
One driver, rest are navigators. Rotate driver every 5-10 minutes.
One navigator speaks at a time (Designated Driver pattern)

Best for: Onboarding new engineers, complex system-wide decisions, knowledge transfer
Risk: Slow; only works with engaged participants; can't have one person carry all the ideas
```

## Session Structure

```
Before (5 min):
  Define the goal: "By the end of this session, we will have..."
  Agree on approach: Don't discover the approach during the session
  Set the timer: Default 90 minutes; schedule a break if longer
  Establish roles: Who drives first?

During:
  Rotate roles on the timer — don't skip rotations
  Call a quick design break if you hit a fork you didn't anticipate
  Keep a running notes list of: decisions made, questions surfaced, follow-up items

After (10 min):
  What did we build/solve?
  What follow-up items need tickets?
  What would have made this session more effective?
  Was pairing the right format for this problem?
```

## Output Format

```markdown
# Pairing Session Plan — <Goal>
**Date:** <date> | **Duration:** <N> minutes
**Format:** Driver-Navigator / Ping-Pong / Mob
**Participants:** <name> + <name>
**Repository/branch:** <repo>:<branch>

---

## Session Goal

**What we're building/solving:** <specific outcome — "implement rate limiting middleware" not "work on auth stuff">
**Done criteria:** <how we'll know the session was successful>

---

## Pre-Session Checklist

- [ ] Both participants have dev environment running
- [ ] Branch created: `<branch-name>`
- [ ] Relevant code read/reviewed before session starts
- [ ] Required documentation or design notes pulled up
- [ ] Timer set: 25 minutes per rotation

---

## Approach Agreement

**Design decision (resolved before we start):** <specific approach — algorithm, library, data structure, API shape>
**Known unknowns (don't let these derail the session):** <list>
**Out of scope for this session:** <what we're NOT solving>

---

## Session Notes

| Time | Event | Notes |
|------|-------|-------|
| 0:00 | Session start | Driver: [name] |
| 0:25 | Rotation | Driver: [name] |
| [continuing] | | |

### Decisions Made
1. [Decision]: <rationale>
2. [Decision]: <rationale>

### Questions Surfaced
1. [Question]: <context — file a ticket if not resolved in session>

---

## Follow-Up Items

| Item | Owner | Target |
|------|-------|--------|
| [Item from session] | [name] | Sprint N |

---

## Session Retrospective

**Goal met:** Yes / Partial / No — <why>
**Effective use of pairing:** Yes / No — <alternative format for next time>
**Improvement for next session:** <one thing>
```

## Output Contract
- Session goal always specific and binary — "done" must be distinguishable from "not done"
- Approach agreement always completed before typing starts — discovering the approach during the session wastes both people's time
- Follow-up items always captured — decisions and questions surfaced during pairing are lost if not written down
- Session retrospective always completed — pairing without reflection doesn't improve over time
- HITL: No specific approval required for pairing sessions themselves; code produced in sessions follows normal review/merge process

## System Dependencies
- **Reads from:** Feature ticket or task description; codebase (both participants)
- **Writes to:** Session notes document (SharePoint/Engineering); follow-up tickets (Monday.com)
- **HITL Required:** Code produced in pairing sessions follows standard PR review process before merging

## Test Cases
1. **Golden path:** Pair on implementing Claude API streaming in OpenFang → Ping-Pong format; 90-minute session; Person A writes failing test for streaming handler; Person B implements; roles switch; 3 rotations; feature complete with tests; 2 follow-up tickets (error handling edge case, prompt caching integration); session retro: pairing was right for this — algorithm was complex enough to benefit from second eyes
2. **Edge case:** One participant is significantly junior and slowing the session → this is mentoring, not pairing; restructure: senior drives more, explains choices aloud; junior navigates with questions, not direction; time-box to 60 minutes; follow up with code review of the result as learning tool
3. **Adversarial:** Pairing session becomes a 3-hour rambling session with no clear goal → 2 hours without a concrete outcome is a failure mode of unstructured pairing; end the session, document what was learned, set a specific goal for the next session; the goal must be defined before the session starts, not during

## Audit Log
Session notes retained. Follow-up tickets linked to session document.

## Deprecation
Retire as a formal process when the engineering team has established pairing culture and structures sessions organically without a guide.
