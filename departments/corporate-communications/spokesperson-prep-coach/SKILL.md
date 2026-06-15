---
name: spokesperson-prep-coach
description: "Prepare an executive for a media interview. Use when the user says 'media interview prep', 'prep for a journalist interview', 'spokesperson training', 'how to handle press questions', 'practice media interview', 'executive media prep', 'how do I handle tough reporter questions', 'interview coaching', or 'prepare for the press'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--exec <name>] [--outlet <publication>] [--journalist <name>] [--topic <interview topic>]"
---

# Spokesperson Prep Coach

Prepare an executive for a media interview — developing core messages, anticipating hard questions, and practicing bridging techniques. An unprepared spokesperson can turn a neutral interview into a reputational problem. A well-prepped one turns a 20-minute interview into months of positive positioning.

## When to Use
- Matt Mathison or a portfolio company CEO has a scheduled media interview
- An executive is about to appear on a podcast, panel, or TV segment
- A journalist has requested an on-record conversation on a sensitive topic
- A portfolio company is announcing a major news event and needs exec prep
- Any spokesperson is appearing on-record for the first time

## Bridging Technique (Core Media Training)

```
The Bridge is the most important media skill:

ABC Bridging:
  A — Acknowledge the question (don't ignore it; don't repeat it)
  B — Bridge to your message ("What's most important to understand is...")
  C — Communicate your message

Bridge phrases:
  "That's an important question, and what I'd emphasize is..."
  "Before I answer that, let me give you some context..."
  "The real issue here is..."
  "What matters most to our [patients / investors / customers] is..."
  "Let me put that in perspective..."

What to NEVER do:
  - Say "no comment" (it signals guilt; use "I can't speak to that specifically, but what I can tell you is...")
  - Repeat the negative framing of a question ("I'd push back on the idea that we..."  NOT "So are we cutting jobs? Well...")
  - Answer a hypothetical ("I won't speculate on hypotheticals")
  - Lie or mislead — ever
```

## Output Format

```markdown
# Media Interview Prep — <Executive Name>
**Interview:** <Journalist name>, <Publication>
**Date/time:** <date>
**Topic:** <Interview subject>
**Format:** On the record / Background / Off the record [confirm before starting]
**Duration:** <N> minutes
**Prepared by:** Dr. John Lewis | **Reviewed:** Matt Mathison (if required)

---

## Core Messages (3 maximum — memorize these)

1. **[Message 1 headline]**: [1-2 sentence version the exec says in the interview]
2. **[Message 2 headline]**: [1-2 sentence version]
3. **[Message 3 headline]**: [1-2 sentence version]

*Everything in this interview comes back to one of these three messages.*

---

## Expected Questions & Prepared Answers

### Softballs (will likely be asked)
| Question | Prepared answer | Message it supports |
|---------|-----------------|-------------------|
| "Tell me about [Company] — what do you do?" | [2-3 sentence answer] | Message 1 |
| "What's your role and background?" | [2-3 sentence answer] | — |
| "What's your vision for [Company]?" | [2-3 sentence answer] | Message 2 |

### Hard Questions (may be asked)
| Hard question | Bridge strategy | Answer |
|--------------|----------------|--------|
| [Difficult question about a known weakness/issue] | Acknowledge + bridge | [Prepared answer that bridges to a core message] |
| [Question about competitor or market challenge] | Reframe to opportunity | [Prepared answer] |
| [Sensitive financial/operational question] | "What I can share is..." | [What is publicly shareable; what is not] |

### Landmines (must not touch)
| Topic | Why it's off limits | What to say instead |
|-------|-------------------|-------------------|
| [Litigation / regulatory issue] | Legal risk | "I can't speak to ongoing legal matters; what I can tell you is [bridge]" |
| [Competitor-specific attacks] | Never attack competitors on record | Bridge to differentiation instead |
| [Specific financial figures not public] | Confidential | "We don't break that out publicly, but [bridge to publicly shareable]" |

---

## Practice Q&A (run these verbally before the interview)

Run each of these out loud — the exec answers, Dr. Lewis gives feedback on bridging:

1. "Why should I care about [Company]?"
2. [Hard question 1 from above]
3. [Hard question 2 from above]
4. "What keeps you up at night?"
5. "What would you say to critics who say [negative framing]?"
6. "Where do you see [Company] in 3 years?"

---

## Pre-Interview Checklist

- [ ] Confirmed format: on the record, background, or off the record
- [ ] Confirmed duration and location (phone / video / in-person)
- [ ] Reviewed journalist's recent stories on this topic — know their angle
- [ ] 3 core messages memorized
- [ ] Hard questions practiced out loud
- [ ] Any exhibit/visual materials cleared and sent in advance
- [ ] Confirmed what topics are off-limits with legal/Matt Mathison
- [ ] Post-interview debrief scheduled (15 min immediately after)

---

## Post-Interview Debrief (15 min immediately after)

Questions to answer immediately after:
- What went well? What would you change?
- Did any question catch you off guard? Add to landmines list.
- What is the journalist likely to use as the lead?
- Any follow-up promised? (Data, quote, contact) — assign and deadline.
- Any concern about what was said? Flag to Dr. Lewis / Matt Mathison immediately.
```

## Output Contract
- 3 core messages maximum — executives who go into a media interview with 8 messages communicate zero; 3 messages communicated well beats 8 communicated poorly every time
- Bridging technique always included — the bridge is the fundamental media skill; the prep is incomplete without it
- Hard questions always included — if the hard questions aren't anticipated, they will be answered poorly under pressure; there are no interview prep packages that skip the hard questions
- Landmines always documented — what cannot be said is as important as what should be said; legal/regulatory topics require explicit pre-clearance
- Post-interview debrief always scheduled — the debrief captures what the journalist is likely to use and catches any problems before publication
- HITL required: Dr. Lewis prepares the briefing; Matt Mathison reviews for fund-level interviews; legal must clear any interview where litigation, regulatory, or compliance topics may arise; no spokesperson goes on record without a completed prep session

## System Dependencies
- **Reads from:** Company background, recent media coverage, journalist research, legal/compliance restrictions
- **Writes to:** Interview prep (SharePoint/Comms/Media/Interview Prep); post-interview debrief notes; media log
- **HITL Required:** Dr. Lewis leads prep; Matt Mathison reviews for material interviews; legal clears sensitive topics; post-interview debrief with Dr. Lewis

## Test Cases
1. **Golden path:** Matt Mathison interview with Arizona Business Journal on MBL's investment thesis → 3 core messages drafted (MBL thesis, Western US focus, portfolio performance); 6 softballs + 4 hard questions prepped; landmines: specific portfolio company valuations, any LP names; practice Q&A run the morning of; debrief held immediately after; no issues; journalist's lead quote is the message 1 statement
2. **Edge case:** Journalist asks a question about a topic not covered in prep ("I didn't expect them to ask about [X]") → this happens; if the question is a landmine, bridge away; if it's genuinely new territory, it's okay to say "That's not something I've thought about in those terms — let me come back to you on that specifically" and follow up; never ad-lib on unfamiliar or sensitive topics
3. **Adversarial:** Journalist circles back to a landmine topic three different ways in the interview → do not give in to persistence; use the bridge each time: "As I said, I'm not able to speak to [X specifically]; what I can tell you is [message]"; a good journalist will probe; a prepped spokesperson has the same answer every time regardless of how the question is framed

## Audit Log
All interview prep sessions documented. Post-interview debrief notes retained. Media appearance log maintained. Any coverage resulting from interview logged.

## Deprecation
Retire when portfolio companies hire VP Communications or engage PR agencies with dedicated media training professionals.
