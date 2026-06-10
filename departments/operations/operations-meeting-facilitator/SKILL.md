---
name: operations-meeting-facilitator
description: "Structure and facilitate an operational team meeting for maximum effectiveness. Use when the user says 'facilitate this meeting', 'meeting agenda', 'ops meeting', 'team meeting prep', 'standup agenda', 'weekly team meeting', 'meeting structure', or 'how should we run this meeting'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<meeting-type> [--duration <minutes>] [--participants <N>] [--frequency <daily|weekly|monthly>]"
---

# Operations Meeting Facilitator

Design and facilitate structured operational team meetings. Good meeting design is one of the highest-leverage investments in team productivity.

## When to Use
- Setting up a recurring team meeting for the first time
- When an existing meeting "isn't working" (too long, no outcomes)
- Before a high-stakes operational review
- When facilitating a cross-department coordination meeting

## Meeting Type Blueprints

### Daily Standup (15 min)
**Purpose:** Synchronize the team, surface blockers
**Agenda:**
1. What did you complete yesterday? (2 min each)
2. What are you doing today? (1 min each)
3. Any blockers? (Raised, addressed offline — not in standup)

**Ground rules:** Standing. No laptops. Start on time. End on time.
**Output:** Blockers list for async follow-up

### Weekly Team Meeting (45-60 min)
**Purpose:** Review progress, decide on priorities, unblock
**Agenda:**
1. Metrics review (10 min) — How are we tracking vs. targets?
2. Priority review (15 min) — What's #1 this week?
3. Blockers and decisions (15 min) — What can't we move without a decision?
4. Cross-team dependencies (10 min) — What do we need from others?
5. Action items recap (5 min)

**Ground rules:** Pre-read sent 24 hours in advance. Decisions are documented.

### Monthly Operations Review (90 min)
**Purpose:** Performance assessment, initiatives update, strategic alignment
**Agenda:**
1. Prior month metrics vs. goals (20 min)
2. Initiative status and blockers (25 min)
3. Resource and capacity (15 min)
4. Next month priorities (20 min)
5. Decisions and action items (10 min)

### Retrospective (60 min)
**Purpose:** Process improvement — what to keep, change, or try
**Agenda:**
1. What went well? (15 min — don't skip this)
2. What could be better? (20 min)
3. What's one thing we'll do differently? (10 min — must be specific and owned)
4. Action items from retrospective (10 min)
5. Recognition (5 min — who did something great?)

## Meeting Effectiveness Rules
1. **Every meeting has an owner** — one person is accountable for outcomes
2. **Every meeting ends with action items** — who does what by when
3. **Decisions are logged** — not just discussed
4. **Pre-reads when possible** — keeps meeting time for decisions, not information
5. **Parking lot** — off-topic items captured for later, not derailing the meeting
6. **End 5 minutes early** — always (courtesy and transition time)

## Output Format

```markdown
# Meeting Facilitation Guide — <Meeting Name>
**Type:** <type> | **Duration:** <X> min | **Frequency:** <cadence>
**Facilitator:** <name> | **Note-taker:** <name>

## Agenda

| Time | Item | Facilitator | Format |
|------|------|------------|--------|
| 0:00 | Welcome + objectives | Facilitator | 2 min |
| 0:02 | Metrics review | Team | 10 min discussion |
| 0:12 | Priority items | Owner | 15 min |
| 0:27 | Blockers + decisions | All | 15 min |
| 0:42 | Action item recap | Note-taker | 5 min |
| 0:47 | Close | Facilitator | 3 min |

## Pre-Meeting Prep
- Pre-read distributed: <24 hours before>
- Pre-read content: <metrics, status updates, decisions needed>
- Room/platform setup: <Zoom link, whiteboard, etc.>

## Facilitation Notes
- Decision needed on: <specific decisions to reach in this meeting>
- Parking lot: <where to capture off-topic items>
- Timekeeping: <who watches the clock>

## Post-Meeting Outputs
- Action items documented with: owner, action, due date
- Decisions logged in: `executive-decision-log` (if significant)
- Summary sent to: <distribution list> within <24 hours>
```

## Output Contract
- Every meeting design includes action item capture format
- Decision items explicitly listed before the meeting (not discovered during)
- Meeting always ends 5 minutes early (buffer built into agenda)
- HITL required before any major meeting format change is communicated to participants

## System Dependencies
- **Reads from:** Meeting context and objectives provided
- **Writes to:** Meeting summary / action items (via `meeting-intelligence-summarizer`)
- **HITL Required:** Meeting owner reviews and approves agenda before distribution

## Test Cases
1. **Golden path:** Weekly ops team meeting request → 60-min structured agenda with pre-read list and action item template
2. **Edge case:** 15-person meeting with 5 agenda items → flags scope risk (too many items, too many people), recommends splitting into smaller focused sessions
3. **Adversarial:** Meeting designed with no action items → flags as no-outcome meeting, recommends adding decision/action framework

## Audit Log
Meeting agendas and action item outputs retained by meeting name and date.

## Deprecation
Retire when team collaboration platform generates AI-facilitated meeting structures natively.
