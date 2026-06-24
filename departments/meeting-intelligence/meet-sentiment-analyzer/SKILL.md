---
name: meet-sentiment-analyzer
description: "analyze meeting sentiment, meeting tone analysis, speaker dynamics meeting, meeting sentiment signals, positive meeting tone, concerned meeting tone, resistant meeting tone, confused attendees meeting, speaker balance analysis, topic sentiment meeting, risk signals meeting sentiment, matt mathison sentiment briefing, entity health meeting sentiment, meeting sentiment trends, meeting tone tracker, meeting dynamics analysis, tension signals meeting, unusual caution meeting, resistance meeting transcript, meeting health proxy sentiment"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[processed transcript ID or transcript text for sentiment analysis]"
---

# Meeting Sentiment Analyzer

This skill reads processed meeting transcripts through a behavioral lens to surface tone, speaker dynamics, and emotional signals that raw action items and decisions cannot capture. It gives Dr. Lewis and Matt Mathison a ground-truth view of organizational health, team alignment, and relationship risk — the signals that live between the lines of what was officially said.

## When to Use

- A processed transcript needs sentiment analysis before the weekly summary is built
- An entity meeting transcript shows unusual patterns that warrant a health flag
- Matt Mathison wants a briefing on how a particular team or relationship is trending emotionally
- A recurring meeting has shown declining engagement or increasing tension across multiple weeks

## Sentiment Analyzer Framework

```
SENTIMENT DIMENSIONS
─────────────────────────────
Analyze each transcript across five dimensions:

1. MEETING-LEVEL SENTIMENT
   Positive:      Forward momentum, agreement, confidence, humor in context
   Constructive:  Healthy challenge, probing questions, productive friction
   Concerned:     Worry signals, hedging language, repeated qualifiers, "I hope that..."
   Resistant:     Pushback, deflection, repeated objections, silence after proposals
   Confused:      Clarification loops, repeated questions, "I'm not sure I follow..."

2. SPEAKER BALANCE
   Balanced:      All voices represented; no single person dominates >40% of utterances
   Dominated:     One speaker >50% of utterances — flag who and whether appropriate to role
   Silent Parties: Named attendees with <5% utterance share — were they engaged or checked out?
   Matt Mathison: If present, is he driving or listening? Listening = good; steamrolling = risk

3. TOPIC-LEVEL SENTIMENT
   For each major topic segment:
   - Overall sentiment: [Positive | Constructive | Concerned | Resistant | Confused]
   - Hotspots: Segments where sentiment shifted abruptly — what triggered the shift?
   - Resolution: Did sentiment improve by end of topic, or remain unresolved?

4. RISK SIGNALS (Escalation Triggers)
   UNEXPECTED RESISTANCE:  Strong pushback on a topic that was expected to be routine
   UNUSUAL CAUTION:        Leaders hedging more than normal — "I'd need to think about that..."
   TENSION BETWEEN PARTIES: Direct friction, interruptions, short responses between specific people
   DISENGAGEMENT SIGNALS:  Sudden brevity, monosyllabic responses, absence of follow-up questions
   MISSING VOICE:          Key decision maker present but silent on a critical agenda item

5. RELATIONSHIP HEALTH PROXY
   For external meetings (vendors, partners, LPs, prospects):
   - Tone toward MBL: Collaborative | Transactional | Guarded | Strained
   - Commitment confidence: Do their verbal commitments sound firm or reluctant?
   - Energy level: Are they engaged or going through motions?

ENTITY HEALTH BASELINE
─────────────────────────────
- Maintain rolling 4-week sentiment baseline per entity
- Flag if current meeting sentiment is >1 standard deviation from 4-week average
- Persistent "Concerned" or "Resistant" tone across 2+ consecutive meetings → ALERT
- Improving trend from prior week → positive signal worth noting in weekly summary

MATT MATHISON SENTIMENT BRIEFING RULES
─────────────────────────────
- Include in weekly summary ONLY if: risk signal detected, trend is worsening, or notable positive
- Do NOT include routine "team seemed positive" reporting — only signal deviations
- Frame all sentiment findings as observations, not diagnoses: "X was notably quiet on Y topic"
- Never speculate on internal emotional states: report behavior, not inferred motivation
```

## Output Format

```markdown
## Sentiment Analysis — [Entity] | [Meeting Name] | [DATE]

**Transcript ID:** [ID]
**Overall Meeting Sentiment:** [Positive | Constructive | Concerned | Resistant | Mixed]
**Risk Signals Detected:** [None | n signals — see below]

---

### SPEAKER BALANCE
| Speaker | Utterance Share | Balance Assessment |
|---------|----------------|-------------------|
| [Name] | [n%] | [Appropriate/Dominant/Silent] |

**Dynamic Note:** [1-sentence observation on meeting dynamic — who drove, who was quiet]

---

### TOPIC-LEVEL SENTIMENT
| Topic Segment | Sentiment | Hotspot | Resolved? |
|---------------|-----------|---------|-----------|
| [Topic] | [sentiment] | [trigger if any] | [Yes/No/Partial] |

---

### RISK SIGNALS
| Signal Type | Description | Speaker(s) Involved | Severity |
|-------------|-------------|---------------------|----------|
| [Type] | [what was observed] | [names] | [Low/Medium/High] |

---

### RELATIONSHIP HEALTH (External Meetings Only)
- Tone toward MBL: [Collaborative | Transactional | Guarded | Strained]
- Commitment confidence: [Firm | Reluctant | Unclear]

---

### 4-WEEK TREND
- Prior 3 meetings: [sentiment labels]
- This meeting: [label]
- Trend direction: [Improving | Stable | Declining]
- Alert threshold: [NOT TRIGGERED | TRIGGERED — persistent [sentiment] for [n] meetings]

---

**Weekly Summary Flag:** [INCLUDE — [reason] | DO NOT INCLUDE — routine]
```

## Output Contract

- **Sentiment findings must be reported as observable behaviors, never as inferred mental states or character judgments.** "The HIVE CFO was notably quiet during the budget discussion and provided only one-word responses to direct questions" is an observation. "The HIVE CFO seems disengaged or unhappy" is an inference. Matt Mathison acts on observations — he cannot act on speculation, and speculation creates interpersonal risk if a sentiment report is ever shared or referenced. The behavioral anchor is non-negotiable.

- **Risk signals must be escalated to Dr. Lewis immediately when severity is rated High — they do not wait for the weekly summary cycle.** A high-severity risk signal (unexpected resistance from a key LP, unusual caution from an entity CEO on a financial topic, tension between Matt Mathison and an external counterparty) may require intervention within hours, not days. The weekly summary is a trailing indicator. High-severity sentiment flags are an early warning system and must be treated with the same urgency as a pipeline health alert.

- **The 4-week sentiment baseline must be maintained per entity, and trend deviations must be flagged even when the current meeting's individual sentiment appears acceptable.** A single concerned meeting is noise. Three consecutive concerned meetings at an entity is a pattern — and patterns require attention before they become crises. The baseline exists to prevent recency bias: without it, a momentarily positive meeting can mask a deteriorating trend that becomes visible only in retrospect. Matt Mathison needs trend data, not just point-in-time snapshots.

## System Dependencies

### Reads from
- Processed transcript output from meet-transcript-processor (utterances by speaker and topic)
- 4-week sentiment history per entity (from SharePoint sentiment log)
- MBL staff directory (speaker role context for balance assessment)
- Prior sentiment reports (for trend comparison)

### Writes to
- Sentiment log: `/Meeting Intelligence/Sentiment/[Entity]/[Year]/[Month]/`
- Weekly summary input queue (risk signals and trend flags)
- Alert queue (High-severity signals → immediate escalation to Dr. Lewis)

### HITL Required
- Any High-severity risk signal — Dr. Lewis decides whether to escalate to Matt Mathison
- Any sentiment finding that involves a direct tension signal between Matt Mathison and another party
- First 3 meetings with any new external relationship (baseline not yet established)

## Test Cases

1. **Golden path:** A standard MBL HoldCo weekly sync shows balanced speaker participation (Matt 35%, Dr. Lewis 25%, two others at 20% each), positive sentiment on three of four topics, one constructive challenge on a budget item that resolved by end of segment, and no risk signals. The 4-week trend is stable-positive. The sentiment output flags "DO NOT INCLUDE in weekly summary — routine" and logs to the sentiment history without escalation.

2. **Edge case:** An Allevio ops meeting has one attendee labeled UNKNOWN_1 whose utterances need sentiment analysis. The skill analyzes the content but flags the speaker balance section as INCOMPLETE — UNKNOWN speaker — and notes that the utterance share for UNKNOWN_1 accounts for 22% of the meeting. Dr. Lewis is prompted to resolve the speaker identity before the sentiment report is finalized.

3. **Adversarial case:** A HIVE LP update call shows the LP's tone shifting from Collaborative to Guarded mid-meeting, coinciding with a discussion of Q2 production numbers. The LP provides short, non-committal responses to three direct questions about LP satisfaction and future commitment. The skill classifies this as a High-severity risk signal (relationship health = Guarded + commitment confidence = Unclear) and fires an immediate alert to Dr. Lewis — not waiting for Friday's weekly summary. Dr. Lewis receives the alert with the flagged segment quotes and decides whether to loop in Matt Mathison.

## Audit Log

Every sentiment analysis run logs the transcript ID, entity, overall meeting sentiment classification, number of risk signals detected, severity levels, 4-week trend direction, whether the weekly summary flag was set to include or exclude, and whether any immediate alerts were escalated. High-severity alerts are logged with additional detail including the flagged speaker, topic, and verbatim trigger quotes. Logs are stored in the MBL AI audit trail with a 3-year retention minimum.

## Deprecation

This skill should be reviewed if the MBL meeting intelligence platform evolves to incorporate real-time sentiment analysis during meetings (rather than post-hoc transcript analysis), or if Krista.ai introduces native sentiment tracking in its transcript output. In either case, the 4-week baseline and HITL escalation logic should be preserved in the replacement system before this skill is retired.
