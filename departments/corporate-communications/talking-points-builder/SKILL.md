---
name: talking-points-builder
description: "Build executive talking points for a speech, interview, or meeting. Use when the user says 'talking points', 'build talking points', 'what should I say', 'key messages for the meeting', 'talking points for the interview', 'what are the key points', 'message guide', 'prepare talking points', 'one-pager talking points', or 'what should Matt say'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--exec <name>] [--occasion <meeting|interview|speech|panel>] [--topic <subject>] [--audience <audience>]"
---

# Talking Points Builder

Build concise, confident executive talking points for any occasion — a press interview, investor meeting, employee town hall, conference panel, or board presentation. Talking points are not a script; they are the anchors an executive returns to regardless of how a conversation evolves. They must be memorable, sequenced logically, and grounded in the messaging framework.

## When to Use
- Matt Mathison or a portfolio company CEO has an upcoming high-stakes conversation
- An executive needs to communicate a specific message (announcement, strategy shift, challenge)
- Preparing for an investor, LP, or board meeting
- Executive is appearing on a panel or keynote stage
- Any situation where "winging it" is not an acceptable risk

## Structure

```
Talking points follow the "rule of three":
  - 3 core messages maximum per occasion
  - Each message has a headline + 1-2 supporting facts
  - Each message is 2-3 sentences when spoken aloud

Why three? The human brain reliably retains three things from a conversation.
More than three = zero retained with certainty.
```

## Output Format

```markdown
# Talking Points — <Executive Name>
**Occasion:** <Interview / Meeting / Speech / Panel / Town Hall>
**Audience:** <Journalists / LPs / Employees / Board / Partners>
**Date:** <date>
**Prepared by:** Dr. John Lewis | **Approved by:** <CEO / Matt Mathison>

---

## Context (30 seconds — use to open or set the frame)

> [1-3 sentences the executive uses to establish context and signal what they're about to say. Not a talking point — the runway before the talking points land.]

---

## Core Talking Points

### TP 1: [Headline — 5-8 words, active, memorable]

**Spoken version (practice this aloud):**
> "[2-3 sentence version that flows naturally in conversation. Include one specific fact or number. End with a 'so what' for the audience.]"

**If pressed deeper on this point:**
> "[1-2 sentence elaboration or proof point if the audience asks 'can you say more about that?']"

**Bridge phrase if conversation strays:**
> "[What the exec says to return to this point if the conversation drifts]"

---

### TP 2: [Headline]

**Spoken version:**
> "[2-3 sentences]"

**If pressed:**
> "[Elaboration]"

**Bridge phrase:**
> "[Return phrase]"

---

### TP 3: [Headline]

**Spoken version:**
> "[2-3 sentences]"

**If pressed:**
> "[Elaboration]"

**Bridge phrase:**
> "[Return phrase]"

---

## Landmines (Do Not Touch)

| Topic | Why off limits | What to say instead |
|-------|---------------|-------------------|
| [Topic 1] | [Legal / strategic / premature] | "[Redirect phrase]" |
| [Topic 2] | [Reason] | "[Redirect]" |

---

## Closing Statement (30-60 seconds)

> "[How the exec closes the conversation. Should reinforce the core message of TP 1. Should end with a clear action or invitation.]"

---

## Quick Reference Card (Print and Carry)

**[Occasion] — [Executive] — [Date]**

1. [TP 1 headline]
2. [TP 2 headline]
3. [TP 3 headline]

Do not say: [Landmine 1] | [Landmine 2]
Close with: [Closing theme in 5 words]
```

## Output Contract
- Three talking points maximum, always — if there are more than three, choose the three most important; the rest become supporting details under the three, never additional top-level points
- Spoken version must be practiced aloud — written talking points that haven't been spoken aloud don't hold up in a real conversation; they use words that read well but don't speak naturally; the verbal test is mandatory
- Landmines always included — what not to say is as important as what to say; the talking points package is incomplete without a landmine list
- Quick reference card always at the end — the exec should be able to carry a 3×5 version mentally into any room; if they can't summarize the three points from memory, the talking points are too complex
- HITL required: Dr. Lewis drafts; the exec reviews and customizes the spoken versions to their natural voice (the talking points must sound like them, not like a document); Matt Mathison reviews for any MBL fund-level occasions; legal reviews if litigation or regulatory topics may arise

## System Dependencies
- **Reads from:** Brand messaging framework, company strategy, recent news, occasion-specific context
- **Writes to:** Talking points (SharePoint/Comms/Talking Points); media prep materials; spokesperson binder
- **HITL Required:** Dr. Lewis drafts; executive reviews and personalizes; Matt Mathison approves for fund-level occasions; legal reviews for sensitive topics

## Test Cases
1. **Golden path:** Matt Mathison talking points for Arizona Business Journal interview on MBL's investment strategy → TP1: "Western US is undercapitalized — and that's the opportunity" (with $X invested in Western US market context); TP2: "We buy businesses where operational improvement is the value creation lever, not financial engineering"; TP3: "AI is already compressing the timeline for our portfolio company improvements — not a future bet, a current advantage"; landmines: specific deal valuations, LP names, any portfolio company under LOI; spoken versions customized by Matt Mathison in prep call; quick reference card memorized; interview goes well — journalist uses TP1 as her lead
2. **Edge case:** Executive goes off-talking-points during the interview and says something that wasn't prepped → debrief immediately after; document what was said; assess whether any follow-up is needed (correction, clarification); update the landmine list based on what prompted the departure; use it to improve the next prep session
3. **Adversarial:** The audience at a panel asks a question that isn't on the talking points list → this will always happen; the bridge technique applies: acknowledge the question, bridge to the nearest talking point or to a general brand message; if the question is genuinely a landmine, use: "That's outside what I'm able to speak to today, but what I can tell you is [bridge to TP]"; practice this response pattern in prep

## Audit Log
Talking points retained by occasion and date. Used versions documented. Post-occasion debrief notes retained (what worked, what was asked off-script).

## Deprecation
Retire when portfolio companies have communications directors who own executive prep as a standard pre-meeting function.
