---
name: meeting-effectiveness-analyzer
description: "Analyze meeting effectiveness and identify waste or improvement opportunities. Use when the user says 'meeting effectiveness', 'are our meetings good', 'meeting ROI', 'too many meetings', 'meeting audit', 'reduce meetings', 'meeting culture', or 'are we spending too much time in meetings'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--team <name>] [--period <YYYY-MM>] [--calendar-data]"
---

# Meeting Effectiveness Analyzer

Assess the effectiveness of a team's meeting culture, identify time waste, and recommend specific improvements. Meetings are often the most expensive and least scrutinized operational cost.

## When to Use
- When complaints about "too many meetings" are growing
- Before a headcount add (often meetings are the real constraint)
- Quarterly review of recurring meeting cadences
- When team morale or productivity is declining without obvious cause
- Post-acquisition to harmonize meeting cultures

## Meeting Cost Framework

### Real Cost of a Meeting
```
Meeting cost = (# participants) × (avg hourly loaded cost) × (duration in hours)
```

Example: 10-person meeting @ $100/hr loaded cost, 60 min = **$1,000 per occurrence**
Weekly recurrence: **$52,000/year**

Always calculate and surface this number. Most leaders have never seen it.

## Effectiveness Evaluation Criteria

### Meeting Quality Indicators (Higher = Better)
| Indicator | What to Check |
|-----------|--------------|
| Has stated objective | Is there a clear purpose written in the invite? |
| Ends with action items | Are owners and due dates assigned? |
| Starts/ends on time | Does the meeting respect participants' time? |
| Pre-read distributed | Was an agenda or pre-read sent before? |
| Decisions documented | Are decisions logged after the meeting? |
| Right participants | Is everyone there necessary? |

### Meeting Waste Indicators (Flag These)
| Waste Type | Signal |
|-----------|--------|
| Status update theater | Large meeting just to hear updates (use async instead) |
| Decision-free discussion | 60+ min of talking with no decision or action item |
| Meeting to schedule a meeting | No pre-work done; uses meeting time to figure out the question |
| Recurring meetings on autopilot | No one questions why they exist; low engagement |
| FOMO attendees | People added "just in case" — no active role |
| Calendar arbitrage | Meeting scheduled over core focus hours |

## Meeting Audit Process

### Step 1: Inventory
List all recurring meetings the team attends:
- Name, frequency, duration, participant count
- Stated purpose (from invite or organizer)
- Owner

### Step 2: Score Each Meeting
Score 1-5 on:
- Clarity of purpose (1 = no stated purpose, 5 = clear written objective)
- Outcome consistency (1 = rarely produces decisions, 5 = always produces actions)
- Right participants (1 = many FOMO attendees, 5 = every participant necessary)
- Time appropriateness (1 = could be email, 5 = requires synchronous discussion)

### Step 3: Classify
- **Keep** (score ≥ 4.0): Effective use of synchronous time
- **Fix** (score 2.5-3.9): Has value but format/structure needs improvement
- **Kill** (score < 2.5): Cost exceeds value — eliminate or move to async

## Output Format

```markdown
# Meeting Effectiveness Analysis — <Team>
**Period:** <period> | **Date:** <date>

## Meeting Inventory + Cost

| Meeting | Freq | Participants | Duration | Annual Cost | Score |
|---------|------|-------------|---------|------------|-------|
| Weekly All-Hands | Weekly | 12 | 60 min | $62,400 | 2.8 |
| Monday Standup | Daily | 8 | 15 min | $20,800 | 4.2 |

**Total annual meeting cost:** $XX,XXX

## Verdict

### Kill (immediate action)
- **Weekly All-Hands** — Score 2.8, $62,400/year. Primarily status updates. Replace with async Monday.com dashboard + written summary from `operations-reporting-packager`.

### Fix
- **<Meeting Name>** — Score 3.2. Has value but no action items. Add 5-min recap slot and assign note-taker.

### Keep
- **Monday Standup** — Score 4.2. Efficient blocker surface meeting. Keep as-is.

## Recommendations
1. <Specific action — kill, restructure, or move to async — with owner and deadline>
2. <Next action>

## Time Recovered
Implementing all recommendations recovers approximately <X> hours/person/week.
```

## Output Contract
- Annual cost always calculated and shown
- Every "Kill" recommendation includes alternative (async, dashboard, report)
- Specific dollar savings quantified when recommendations are followed
- HITL required before any recurring meeting is cancelled (org behavior change)

## System Dependencies
- **Reads from:** Calendar data or meeting inventory (provided)
- **Writes to:** Nothing (recommendations for human action)
- **HITL Required:** Team lead reviews and approves any meeting changes before implementation

## Test Cases
1. **Golden path:** 8-person ops team with 12 recurring meetings → full audit with kill/fix/keep verdict and $X recovered
2. **Edge case:** Team with no recurring meetings → assesses ad-hoc meeting patterns and recommends recurring cadences to prevent meeting sprawl
3. **Adversarial:** Request to add more meetings to "improve communication" → flags meeting addition as last resort, recommends async alternatives first

## Audit Log
Meeting audits retained by team and period. Effectiveness scores tracked over time to measure improvement.

## Deprecation
Retire when calendar analytics platform provides automated meeting effectiveness scoring and cost reporting.
