---
name: executive-speech-writer
description: "Write a speech or keynote address for an executive. Use when the user says 'write a speech', 'keynote speech', 'conference speech', 'write an executive speech', 'keynote address', 'opening remarks', 'write remarks for Matt', 'commencement address', 'award acceptance speech', 'prepare a speech for', or 'write a talk for'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--exec <name>] [--occasion <keynote|panel|awards|all-hands|conference>] [--duration <minutes>] [--audience <description>]"
---

# Executive Speech Writer

Write speeches and keynote addresses for executives — compelling, personally authentic, and precisely timed for the occasion. A great speech is a conversation at scale: it makes every person in the audience feel they are being spoken to directly. A forgettable speech is one where the speaker reads slides or recites achievements. This skill builds the speech structure and writes a first draft that the executive transforms into their own voice.

## When to Use
- Matt Mathison is keynoting or opening remarks at a conference or industry event
- A portfolio company CEO is presenting at an investor day or all-hands
- An executive is accepting an award or making an introduction
- A graduation, retirement, or milestone celebration speech is needed
- Any occasion where an executive will speak for 5-30 minutes to an audience

## Speech Architecture

```
The best speeches follow one of these structures:

Structure 1 — The Story Arc (best for keynotes, inspirational speeches)
  1. Opening hook (story, surprising fact, or counterintuitive statement)
  2. Tension (the problem, the challenge, what was at stake)
  3. Journey (what was done, what was learned)
  4. Resolution (what's possible now, the insight)
  5. Call to action or closing inspiration

Structure 2 — The 3-Point (best for business presentations, conference talks)
  1. Context (why we're here, what this audience needs to hear)
  2. Three insights (each with a story, fact, or example)
  3. The "so what" and close

Structure 3 — The Problem-Solution (best for industry talks, innovation speeches)
  1. The problem (painted vividly, as the audience experiences it)
  2. Why current approaches fail
  3. The new approach
  4. Proof (case study, data)
  5. Vision of the world with this approach

Rules for all speeches:
  - 130-150 words per minute for comfortable pacing
  - 10 minutes = 1,300-1,500 words
  - Every speech has ONE central message — not three
  - No lists of achievements — stories instead
  - No jargon unless the audience specifically expects it
  - The opening and closing are the most important 30 seconds each
```

## Output Format

```markdown
# Speech Draft — <Executive Name>
**Occasion:** <Conference / Award / All-Hands / Keynote>
**Audience:** <Description>
**Duration:** <N> minutes | **Target words:** <N × 140>
**Prepared by:** Dr. John Lewis | **Executive review:** Required

---

## Central Message

*[One sentence — the single thing the audience will remember if they remember nothing else]*

---

## Opening (First 60 seconds — memorize this)

*[Start with something that creates forward momentum — a story, a question, a counterintuitive statement. Do NOT open with "Good morning, it's an honor to be here." The audience's attention is won or lost in the first 30 seconds.]*

> "[Opening line — specific, vivid, or disarming]

> [Context sentence that explains why that opening matters for this audience]

> [Bridge to the central message — "What I want to talk about today is..."]*"

---

## Body

### Section 1: [Section title]

*[Estimated time: N minutes]*

> "[Narrative text — written to be spoken aloud, not read. Short sentences. 
> Natural rhythm. Specific details. No corporate language.
> 
> If using a story: [Scene-setting sentence]. [What happened]. [What it meant].
> 
> If using a data point: lead with the implication, then the number.
> 'Most companies spend more on catering than on training their frontline managers.
> The number? Fourteen times more.'
> 
> Transition to next section: [Bridge sentence that creates forward motion]]"

---

### Section 2: [Section title]

*[Estimated time: N minutes]*

> "[Text]"

---

### Section 3: [Section title — if 3-point structure]

*[Estimated time: N minutes]*

> "[Text]"

---

## Closing (Last 60 seconds — the enduring impression)

*[The close must do two things: land the central message in its most memorable form, and leave the audience with energy or a clear directive. "Thank you" is not a close — it's an afterthought. The last words they hear should be the words you want them to remember.]*

> "[Closing statement — return to the opening story/theme if applicable.
> 
> Central message in its most distilled form.
> 
> Optional: call to action or inspiring close.
> 
> [If ending is appropriate]: 'Thank you.' (brief, sincere, after the close — not as the close itself)]"

---

## Speaker Notes

**What to memorize:** Opening + closing verbatim. Body can be from notes.
**Slides (if any):** Keep to [N] slides maximum. Images > text.
**Pacing:** [N] minutes — plan for 130 words/min; read the room and adjust.
**Energy cues:** [Any points where vocal energy should rise or pause for effect]
**Landmines:** [Any topics that might come up in Q&A that need prep]

---

## Timing Breakdown
| Section | Words | Est. time |
|---------|-------|-----------|
| Opening | [N] | [N] min |
| Section 1 | [N] | [N] min |
| Section 2 | [N] | [N] min |
| Section 3 | [N] | [N] min |
| Closing | [N] | [N] min |
| **Total** | **[N]** | **[N] min** |
```

## Output Contract
- Central message is one sentence — if the speech has multiple messages, it has none; everything in the speech must serve one central idea; the draft will be rejected if it cannot be summarized in one sentence
- Opening is not generic — "Good morning, I'm [Name]..." is a deleted opening; the speech must earn the audience's attention in the first 30 seconds; the opening hook is the most important writing task
- Written to be spoken, not read — the draft must be read aloud by Dr. Lewis before delivery to the executive; sentences that read well but don't speak well must be rewritten; the test is the voice, not the page
- Executive must substantially edit — the speech is not finished when Dr. Lewis delivers the draft; it's finished when the executive has added their own phrases, stories, and voice; a speech that sounds like Dr. Lewis, not the executive, will not land
- HITL required: Dr. Lewis drafts; executive edits substantially (this is mandatory, not optional); Matt Mathison reviews any speech that addresses fund strategy or LP relationships; legal reviews if speech discusses active deals, regulatory matters, or any financial claims; no speech delivered without executive review

## System Dependencies
- **Reads from:** Executive talking points, brand messaging framework, company context, event details
- **Writes to:** Speech draft (SharePoint/Comms/Speaking/<Executive>); speaker notes; event-specific materials
- **HITL Required:** Executive edits and approves; Matt Mathison reviews fund-level speeches; legal reviews financial and regulatory content

## Test Cases
1. **Golden path:** Matt Mathison keynote at Arizona Business Journal PE Summit, 15 minutes → Central message: "The companies that win in PE don't just have better capital — they have better operators"; Structure 2 (3-Point); Opening: story about a specific portfolio company decision that turned the business; 3 insights: AI as an operational accelerator, Western US market thesis, the MBL value creation model; Close: the image of what the Allevio team built in 18 months; 1,950 words at 130wpm = 15 min; Matt reviews, adds two personal anecdotes, adjusts close; delivers to strong reception; 3 follow-up conversations from the room
2. **Edge case:** Executive gives the speech but goes off-script significantly and the message lands differently than planned → debrief after; understand what they changed and why; for the next speech, involve them earlier in the outline stage so the structure reflects their natural thinking; the more co-created the speech structure is, the less likely they are to deviate from it during delivery
3. **Adversarial:** The conference organizer asks for a copy of the speech for publication or livestream → this changes the communication; a spoken speech may contain off-the-cuff elements that don't translate to written form; agree to provide a written summary or key quotes rather than the full speech draft; the speech was designed to be heard, not read

## Audit Log
All speech drafts retained with versions. Delivery date, occasion, and audience documented. Post-speech debrief notes retained. Any coverage from speech (if delivered at public event) logged.

## Deprecation
Retire when portfolio company executives or MBL Partners hire communications directors who manage executive speaking programs as a standard function.
