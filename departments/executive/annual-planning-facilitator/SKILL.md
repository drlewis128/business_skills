---
name: annual-planning-facilitator
description: "Structure and facilitate the annual strategic planning process. Use when the user says 'annual planning', 'strategic planning', 'planning session', 'annual plan', 'next year planning', 'budget planning kickoff', 'annual goal setting', or 'plan for next year'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--year <YYYY>] [--entity <name>] [--phase <setup|pre-work|session|output>]"
---

# Annual Planning Facilitator

Structure the annual strategic planning process for MBL Partners and portfolio entities — from pre-work through to final plan documents and OKR setting.

## When to Use
- October/November (primary planning window for January fiscal year start)
- Mid-year re-plan (if significant market or business change)
- New entity post-acquisition (first planning cycle)
- When Matt wants to structure a planning session

## Planning Process (6-8 Weeks)

### Week 1-2: Pre-Work
- Prior year OKR completion review
- Financial performance vs. plan
- Market and competitive landscape update
- Team feedback / employee listening
- Leadership 1:1s (what's working, what's broken, what's the opportunity)

### Week 3-4: Strategic Session
Full-day or multi-session working meeting:
1. **Where we've been** — prior year review (30 min)
2. **Where we are** — current state assessment (45 min)
3. **Where we're going** — market opportunity and strategic choices (60 min)
4. **How we'll get there** — key initiatives and OKRs (90 min)
5. **What we need** — resource and budget implications (60 min)
6. **Commitments** — who owns what (30 min)

### Week 5-6: OKR Development
- Draft OKRs per department / entity
- Alignment review (do company OKRs cascade to team OKRs?)
- Resource allocation finalized
- Budget submitted

### Week 7-8: Communication and Launch
- All-hands or leadership communication
- OKRs published to Monday.com
- Annual plan finalized

## Output — Planning Session Agenda

```markdown
# Annual Planning Session — <Entity> — <Year>
**Date:** <date> | **Facilitator:** Dr. Lewis | **Decision Maker:** Matt Mathison
**Duration:** Full day (8:30am – 5:00pm) | **Location:** <location>

## Pre-Read (distributed 1 week prior)
- [ ] Prior year OKR completion summary
- [ ] Financial performance vs. plan
- [ ] Market brief
- [ ] SWOT analysis (draft)

## Session Agenda
| Time | Section | Owner | Format |
|------|---------|-------|--------|
| 8:30 | Prior year review | Dr. Lewis | Presentation |
| 9:30 | Current state | All | Discussion |
| 10:30 | Break | | |
| 10:45 | Strategic choices | Matt | Workshop |
| 12:00 | Lunch | | |
| 1:00 | Key initiatives | Department leads | Working session |
| 2:30 | OKR drafting | All | Workshop |
| 4:00 | Resource and budget | Finance | Review |
| 4:30 | Commitments and next steps | Matt | Decision |
| 5:00 | Close | | |

## Decision Rights (What gets decided in this room)
1. Top 3-5 strategic priorities for the year
2. Resource allocation across priorities
3. OKR framework (company-level)

## What Gets Decided After (follow-up)
- Department OKRs (2 weeks post-session)
- Budget finalization (Finance)
```

## Output Contract
- Pre-work always distributed 1 week before session (not day-of)
- Session agenda always includes decision rights — clear what gets decided vs. discussed
- OKR output always includes company-level and department-level cascade
- HITL required before final plan is distributed to employees

## System Dependencies
- **Reads from:** Prior year OKR data, financial performance, market brief inputs
- **Writes to:** Monday.com OKR boards (post-session, with HITL)
- **HITL Required:** Matt Mathison approves final annual plan before distribution

## Test Cases
1. **Golden path:** October planning kickoff → outputs 8-week process timeline, pre-work list, and session agenda in one pass
2. **Edge case:** Mid-year re-plan (business conditions changed) → adapts to 3-week compressed process, focuses on strategic pivots only
3. **Adversarial:** Planning session with no pre-work done → flags that proceeding without pre-work reduces decision quality, recommends 2-week delay or compressed pre-work sprint

## Audit Log
Annual planning outputs versioned by entity and year. Prior year plans retained for year-over-year comparison.

## Deprecation
Review process annually — adapt to MBL's evolving scale and team structure.
