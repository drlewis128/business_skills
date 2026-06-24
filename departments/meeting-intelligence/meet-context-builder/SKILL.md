---
name: meet-context-builder
description: "build meeting context, prior meeting history retrieval, open commitments prior meetings, decision history context, entity status context meeting, relationship history attendees, context brief for prep sheet, what was discussed last time meeting, prior meeting context mbl, meeting history lookup attendees, context for prep sheet builder, decision thread context, entity kpi context meeting, relationship context history, meeting background builder, prior interactions context, open items context meeting, historical meeting context, context brief meeting intelligence, meeting context document"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[meeting name, attendee names, and entity for context retrieval]"
---

# Meeting Context Builder

This skill retrieves and synthesizes historical meeting context — prior meeting history, open commitments, decision threads, and entity status — into a structured context brief that feeds the prep sheet pipeline. Where meet-pre-meeting-researcher goes broad (including market data), this skill goes deep on the internal history: the decisions that led to this meeting, the commitments that preceded it, and the relationship thread that gives the current conversation its meaning.

## When to Use

- A prep sheet is being assembled and the internal historical context layer needs to be built
- Matt Mathison is meeting with a group he has met with before and needs to know "what happened last time"
- A decision being made in an upcoming meeting builds on or potentially reverses prior decisions
- The relationship history between MBL and a specific counterparty needs to be reconstructed for context

## Context Builder Framework

```
MODULE 1 — PRIOR MEETING HISTORY RETRIEVAL
─────────────────────────────
Query transcript registry with filters:
  - Attendee overlap: any meeting with ≥50% of the current attendee list
  - Entity match: same primary entity
  - Lookback window: 180 days (default); extend to 365 days for annual relationships

Output per prior meeting:
  - Date + Meeting name + Transcript ID
  - Was Matt Mathison present? [Yes/No]
  - Primary topics covered (topic segment labels)
  - Key decisions made (from decision registry — linked by meeting ID)
  - Key action items created (from action item registry — linked by meeting ID)
  - Sentiment label from sentiment analyzer

Surface: most recent 3 meetings as "last time" context; full history as supporting data

MODULE 2 — OPEN COMMITMENTS FROM PRIOR MEETINGS
─────────────────────────────
Query scope:
  - Action item registry: filter by attendee names + entity, status = Open or Overdue
  - Commitment tracker: filter by same parties, status = Open or Overdue

Flag each open item:
  - Was this committed to by Matt Mathison? → HIGH priority flag
  - Was this committed to by the counterparty? → Confirmation candidate
  - How many meetings has this been open? → Re-commit count
  - Is this overdue? → Escalation flag

MODULE 3 — DECISION HISTORY CONTEXT
─────────────────────────────
Query decision registry:
  - Filter by entity + topic keywords inferred from meeting name and agenda
  - Lookback: 90 days for operational decisions; 365 days for strategic decisions
  - Flag deferred decisions scheduled for this meeting

For each relevant decision:
  - State the decision plainly
  - Note who made it and when
  - Note the outcome status (In Progress / Completed / Reversed)
  - Identify if this meeting's agenda items build on or challenge that decision

MODULE 4 — ENTITY STATUS CONTEXT
─────────────────────────────
Current entity status snapshot:
  - THRIVE baseline score if available from most recent entity review
  - KPI health: traffic-light summary (Green/Yellow/Red per metric category)
  - Open issues: any active escalations, personnel changes, or operational disruptions
  - Financial context: burn rate, revenue, capex status — relevant if financial topics are on agenda
  - Last entity review date: flag if >45 days since last structured entity review

MODULE 5 — RELATIONSHIP HISTORY
─────────────────────────────
For each key attendee:
  - How long have they been engaged with MBL?
  - Relationship health trend (from sentiment analyzer — last 4 meetings)
  - Known friction points or sensitivity topics
  - Any prior conflict or difficult interaction that may affect this meeting?
  - Matt Mathison's personal relationship history with this person (from transcript patterns)

For external relationships:
  - Commercial status (vendor, partner, LP, prospect) + contract/agreement age
  - Any open disputes, renegotiations, or performance issues
  - Most recent CRM activity from GHL

CONTEXT BRIEF FORMAT
─────────────────────────────
Structured output formatted for handoff to meet-prep-sheet-builder:
  Section 1: Prior Meeting Summary (last 3 meetings — 3 bullets)
  Section 2: Open Commitments Table (overdue flagged prominently)
  Section 3: Decision Thread (relevant prior decisions)
  Section 4: Entity Status Snapshot (4 lines)
  Section 5: Relationship Notes (1–2 sentences per key attendee)
```

## Output Format

```markdown
## Context Brief — [Meeting Name] | [DATE]

**Built for:** meet-prep-sheet-builder
**Context depth:** [180-day | 365-day] lookback
**Meetings found:** [n] prior meetings with this group

---

### PRIOR MEETING HISTORY (Last 3)

| Date | Meeting | Matt Present? | Primary Topics | Sentiment |
|------|---------|--------------|----------------|-----------|
| [date] | [name] | [Yes/No] | [topics] | [label] |
| [date] | [name] | [Yes/No] | [topics] | [label] |
| [date] | [name] | [Yes/No] | [topics] | [label] |

**Full history:** [n] meetings since [date] | [Transcript IDs on file]

---

### OPEN COMMITMENTS (These Parties)

| Who Committed | To Whom | Commitment | Due | Status | Re-commits |
|---------------|---------|-----------|-----|--------|------------|
| ⚠️  Matt Mathison | [party] | [text] | [date] | OVERDUE | [n] |
| [name] | MBL | [text] | [date] | Open | [n] |

---

### DECISION THREAD (Relevant Prior Decisions)

| Decision | Date | Maker | Status | Relevant Because |
|----------|------|-------|--------|-----------------|
| [text] | [date] | [name] | [status] | [1 sentence] |

---

### ENTITY STATUS SNAPSHOT
- **KPI Health:** [Green/Yellow/Red overview]
- **Open Issues:** [escalations or flags]
- **Financial Context:** [if relevant]
- **Last Review:** [date — flag if >45 days]

---

### RELATIONSHIP NOTES
- **[Name]:** [1–2 sentences on history, health, sensitivities]
- **[Name]:** [1–2 sentences on history, health, sensitivities]

---

**Context Confidence:** [HIGH | MEDIUM — limited history | LOW — new relationship]
```

## Output Contract

- **Open commitments made by Matt Mathison must always be prominently flagged — they are the single most important piece of prior context in any meeting.** If Matt Mathison walks into a meeting having forgotten that he committed to provide something, approve something, or decide something in a prior session, the meeting will either be derailed by the omission or will cause the counterparty to lose confidence in his follow-through. The commitment is not merely an action item — it is a trust signal. The context brief exists in large part to ensure Matt Mathison never faces that situation.

- **Decision threads must be surfaced in enough depth that the current meeting's agenda can be understood in terms of the decisions that preceded it — context without continuity is noise.** A decision made today may only make sense if you know that three months ago the group agreed on a different approach and then reversed it. The "relevant because" field on every prior decision exists to force the builder to answer: "why does Matt need to know about this decision right now?" If the answer is "it's just background," the decision should not be in the brief.

- **Entity status context must flag if the last structured entity review was more than 45 days ago — stale entity baselines degrade the quality of every prep sheet produced using them.** The 45-day threshold is not arbitrary — it reflects the pace at which entity-level conditions (financial health, operational issues, personnel changes) materially shift in a PE portfolio context. A 90-day-old entity baseline presented as current context may misrepresent the entity's situation, leading Matt Mathison to ask the wrong questions or miss the right ones. The staleness flag prompts Dr. Lewis to either refresh the baseline or note the limitation explicitly in the prep sheet.

## System Dependencies

### Reads from
- Transcript registry (prior meetings with attendee overlap)
- Action item registry (open items by attendee and entity)
- Commitment tracker (open commitments by party)
- Decision registry (prior decisions by entity and topic keywords)
- Sentiment analyzer history (relationship health per attendee, per meeting)
- GHL CRM (external relationship commercial status)
- Entity THRIVE/KPI baseline (from most recent entity review)

### Writes to
- Meet-prep-sheet-builder input queue (context brief section)
- Meet-pre-meeting-researcher input (informs and supplements researcher output)

### HITL Required
- Any meeting where Matt Mathison has an overdue commitment to the attendee group
- Any context brief where the entity status is >45 days old (staleness flag)
- Any prior conflict or difficult interaction identified in the relationship history
- New relationships with no prior context (LOW confidence flag)

## Test Cases

1. **Golden path:** Matt Mathison is meeting with the Allevio CEO (quarterly review). The context builder finds 6 prior meetings with the Allevio CEO in the past 180 days. Matt has 2 open commitments from prior sessions (one overdue — headcount approval). The decision thread surfaces 3 relevant decisions (Q2 budget, IT vendor, HR policy). Entity status is current (reviewed 18 days ago — Green KPIs overall, one Yellow on claims ratio). Relationship health is Positive-Stable. Full context brief delivered to prep sheet builder with HIGH confidence.

2. **Edge case:** The meeting is with a new HIVE LP joining the LP group for the first time. No transcript history. No commitment history. No prior decisions involving this specific LP. The context builder returns a LOW confidence brief with: entity status snapshot (HIVE overall KPI health), HIVE LP group history (prior LP calls even though this individual wasn't present), and a flag for Dr. Lewis: "New LP — no direct history. Dr. Lewis to supplement with any personal context." The brief is honest about its limits rather than fabricating context.

3. **Adversarial case:** A context query for an upcoming meeting retrieves prior meeting history that includes an Allevio meeting where a PHI-adjacent discussion occurred (transcript in restricted folder, HIPAA HOLD). The context builder detects that one of the retrieved transcripts is in restricted status, excludes it from the context brief, and notes: "1 prior meeting excluded — HIPAA-restricted transcript. Context coverage for [date] is unavailable." The restricted transcript is not surfaced, summarized, or referenced in any form in the context brief.

## Audit Log

Every context brief run logs the meeting name, attendee list queried, number of prior meetings found, transcript IDs included and excluded (with exclusion reasons), number of open commitments surfaced, Matt Mathison commitment flag status, entity status age and staleness flag, and handoff status to meet-prep-sheet-builder. Logs are stored in the MBL AI audit trail with a 2-year retention minimum.

## Deprecation

This skill should be reviewed if the prep sheet builder is enhanced to incorporate history retrieval directly, making a separate context-building step redundant. It should also be reviewed if the meeting intelligence platform moves to a real-time context surface (delivered in a live briefing tool rather than a pre-built document). Any deprecation requires Dr. Lewis to confirm that the Matt Mathison commitment flag logic is preserved in the replacement workflow before this skill is retired.
