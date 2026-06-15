---
name: executive-presentation-outliner
description: "Outline a structured executive presentation or pitch deck. Use when the user says 'outline a presentation', 'presentation outline', 'deck structure', 'slide outline', 'pitch deck outline', 'how should I structure this presentation', or 'build a deck outline'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<presentation-purpose> [--audience <lp|board|ic|client|team>] [--slides <N>] [--time <minutes>]"
---

# Executive Presentation Outliner

Build a structured, storyline-driven outline for any executive presentation. Strong decks have a clear argument — every slide advances it.

## When to Use
- Before building a new presentation (get the structure right before designing)
- When a deck lacks a clear narrative flow
- Board decks, LP pitches, IC memos, client proposals
- Any presentation where clarity matters

## Presentation Architecture

### The Rule
Every slide should answer: **"So what?"** If you can't answer that, the slide shouldn't exist.

### Slide Structure (per slide)
- **Title:** States the conclusion or key point (not just the topic)
- **Body:** Evidence that supports the title claim
- **Takeaway:** What the audience should think/do/decide after this slide

### Deck Structure (overall)
A good presentation follows a logical argument:
1. **Hook:** Why should you care? (opens with what's at stake)
2. **Situation:** Where we are today (facts, context)
3. **Complication:** What's changing or why this matters now
4. **Question:** The one question this presentation answers
5. **Answer:** Your recommendation / main point (say it early)
6. **Support:** Evidence, analysis, proof
7. **Call to action:** What you need from the audience

## Standard Outline Formats

### LP Pitch Deck (10-15 slides)
1. Title (fund name, date, CONFIDENTIAL)
2. Executive Summary (3 bullets — who, what, why)
3. The Market Opportunity (TAM/SAM, thesis)
4. Investment Strategy (what we buy and why)
5. Portfolio Overview (current investments)
6. Portfolio Performance (returns, metrics)
7. Team (who leads this)
8. Track Record (prior deals/outcomes)
9. Investment Process (how we underwrite)
10. Deal Pipeline (what's coming)
11. Terms (fund terms summary)
12. Appendix (supporting data)

### Board Quarterly Deck (12-18 slides)
1. Title + Agenda
2. Prior quarter highlights (3 bullets)
3. Financial Performance — P&L
4. Financial Performance — Balance Sheet / Cash
5. KPI Dashboard
6. Entity / Business Unit Update 1
7. Entity / Business Unit Update 2
8. Strategic Initiative Status
9. Decisions Required from Board
10. Risks and Mitigation
11. Forward Look (next quarter priorities)
12. Appendix

### IC / Deal Memo (10-15 slides)
1. Deal Overview (name, sector, deal size)
2. Company Overview (business model, scale)
3. Investment Thesis (why this, why now, why MBL)
4. Financial Summary (revenue, EBITDA, multiples)
5. Return Analysis (IRR, MOIC, scenarios)
6. Value Creation Plan (levers)
7. Team Assessment
8. Market and Competition
9. Key Risks and Mitigation
10. Transaction Structure
11. Diligence Summary
12. Decision Request

## Output Format

```markdown
# Presentation Outline — <Title>
**Audience:** <audience> | **Slides:** <N> | **Time:** <X> min
**Objective:** <what decision or understanding should the audience leave with>

## Argument Summary (30 seconds version)
<State the deck's core argument in 3 sentences>

## Slide Outline

### Slide 1: <Slide Title (conclusion-first)>
- **Point:** <What should the audience think after this slide>
- **Content:** <What evidence or data supports this>
- **Format:** Chart / Table / Bullets / Image
- **Time:** ~<X> min

### Slide 2: ...
[repeat]

## Transitions
Slide 3 → 4: <why this sequence makes logical sense>

## Decision Moment
Slide <N> is where the ask lands. Everything before builds to this.

## Appendix Items (reference slides, not core narrative)
- <Appendix A>: <topic>
```

## Output Contract
- Every slide title states a conclusion, not just a topic
- Deck structure always includes a clear decision or call-to-action moment
- Time estimate per slide (60-90 seconds per slide is target speaking pace)
- HITL required before any presentation is finalized for LP, board, or IC audience

## System Dependencies
- **Reads from:** Context and purpose provided
- **Writes to:** Nothing (outline draft for review)
- **HITL Required:** Matt Mathison reviews outlines for LP and IC presentations

## Test Cases
1. **Golden path:** LP pitch deck request → 12-slide outline with MECE sections and decision moment on slide 10
2. **Edge case:** 30-minute meeting with only 10 slides → flags pace at 3 min/slide, recommends reducing to 6-7 decision-quality slides
3. **Adversarial:** Request to structure a deck with the conclusion at the end → builds two versions (discovery vs. recommendation), explains when each is appropriate

## Audit Log
Presentation outlines retained by name and date. Final decks linked to their outline origin.

## Deprecation
Retire when AI presentation tools (Canva AI, Pitch, Beautiful.ai) generate storyline-driven outlines from brief inputs.
