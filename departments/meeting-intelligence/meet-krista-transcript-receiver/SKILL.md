---
name: meet-krista-transcript-receiver
description: "receive krista transcript, krista.ai transcript inbound, handle transcript from krista, transcript ingest mbl, entity tagging transcript inbound, speaker reconciliation transcript, hipaa flag trigger transcript, allevio transcript hipaa check, transcript storage standard, processing queue routing transcript, krista transcript format, inbound transcript handling, transcript error handling, missing transcript krista, partial transcript handling, speaker identification failure, transcript receipt pipeline, krista integration transcript, transcript routing processor, krista output handler"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[Krista.ai transcript payload or webhook event ID]"
---

# Krista Transcript Receiver

This skill is the entry point for all meeting transcripts arriving from Krista.ai — the first gate in the MBL meeting intelligence pipeline. It validates, tags, and routes every inbound transcript before any downstream processing begins, ensuring that nothing enters the pipeline without proper entity classification, speaker validation, and HIPAA screening initiation.

## When to Use

- Krista.ai delivers a new transcript via webhook or API call following a recorded meeting
- A transcript needs to be manually ingested (e.g., a meeting recorded outside normal Krista workflow)
- An inbound transcript needs to be re-processed due to an earlier error or partial delivery
- A transcript is received and its entity or meeting identity is ambiguous and requires classification

## Krista Transcript Receiver Framework

```
INBOUND TRANSCRIPT FORMAT (Krista.ai Standard)
─────────────────────────────
Expected payload fields:
  meeting_id:       Krista.ai internal meeting identifier
  recording_date:   ISO 8601 datetime (UTC)
  duration_seconds: Recording length
  participants:     Array of [{speaker_label, name (if resolved), email}]
  transcript_text:  Full transcript (speaker: timestamp: utterance format)
  confidence_score: Krista.ai transcription confidence (0.0–1.0)
  meeting_title:    From calendar event (may be blank)
  calendar_event_id: Outlook calendar event ID (linked if available)

VALIDATION GATES
─────────────────────────────
Gate 1 — FORMAT VALIDATION:
  ✓ meeting_id present and unique (check against registry)
  ✓ recording_date parseable
  ✓ transcript_text non-empty (minimum 500 characters for a meaningful meeting)
  ✓ confidence_score ≥ 0.70 (below threshold → flag for manual review)
  → FAIL: log error, alert Dr. Lewis, do not proceed

Gate 2 — DUPLICATE CHECK:
  ✓ meeting_id not already in transcript registry
  ✓ recording_date + participants not matching an existing registry entry
  → DUPLICATE: log and discard; alert Dr. Lewis if unexpected duplicate

Gate 3 — COMPLETENESS CHECK:
  ✓ Duration matches calendar event duration within ±10 min
  ✓ Participant count matches calendar event attendee count ±20%
  → PARTIAL TRANSCRIPT: flag as PARTIAL, proceed with warning notation

ENTITY TAGGING
─────────────────────────────
Determine entity from:
  Priority 1: Calendar event title (explicit entity name or code)
  Priority 2: Attendee email domains (allevio.com, hivepartners.com, column6.com, mblpartners.com)
  Priority 3: Meeting title keyword match (HIVE, Allevio, Column6, MBL)
  Priority 4: Dr. Lewis HITL — cannot auto-tag

Entity assignment rules:
  - If multiple entities present: tag as CROSS-ENTITY, flag for Dr. Lewis
  - If no entity determinable: tag as UNCLASSIFIED, HITL required before routing
  - MBL HoldCo: any meeting without a portfolio company tag that has mblpartners.com participants

SPEAKER RECONCILIATION
─────────────────────────────
Map Krista.ai speaker labels to named individuals:
  Method 1: Krista.ai resolved names (if available in payload)
  Method 2: Match speaker email to MBL staff directory
  Method 3: Match against attendee profiler database
  Method 4: Cross-reference calendar event attendees by email
  Method 5: HITL — flag as UNKNOWN_[n] if all methods fail

Threshold for proceeding: ≥80% of utterance-weighted speaker volume must be identified
Below threshold: HOLD for HITL before routing to transcript processor

HIPAA TRIGGER LOGIC
─────────────────────────────
Trigger HIPAA check if ANY of:
  - Entity tag = Allevio
  - Any participant email domain = allevio.com
  - Meeting title contains: clinical, utilization, member, patient, care, health plan, enrollment
  - Transcript text contains HIPAA keyword density ≥3 triggers per 1,000 words

On HIPAA trigger:
  - Set transcript status = HIPAA_SCREENING_REQUIRED
  - Alert Dr. Lewis immediately with trigger reason
  - Do NOT route to transcript processor until Dr. Lewis clears

ROUTING TO PROCESSING QUEUE
─────────────────────────────
On successful validation and entity tagging:
  - Assign MBL Transcript ID: [ENTITY]-[YYYYMMDD]-[HHMM]
  - Set status: QUEUED_FOR_PROCESSING
  - Write to transcript registry
  - Push to meet-transcript-processor queue
  - Notify Dr. Lewis: "Transcript received and queued: [ID]"

ERROR HANDLING
─────────────────────────────
MISSING TRANSCRIPT:     Meeting was in calendar but no Krista.ai payload received
  → Alert Dr. Lewis after 2 hours past meeting end
  → Check Krista.ai dashboard for recording status
  → Log: TRANSCRIPT_MISSING for that calendar event

PARTIAL TRANSCRIPT:     Recording starts late or ends early
  → Proceed with PARTIAL flag; note missing segment in registry
  → Dr. Lewis determines if partial is sufficient or if re-recording needed

SPEAKER_ID_FAILURE:     <80% of speaker volume identified after all methods
  → HOLD status; Dr. Lewis HITL for manual speaker assignment
  → Do not advance to transcript processor until resolved

LOW CONFIDENCE:         Krista.ai confidence < 0.70
  → Flag as LOW_QUALITY; Dr. Lewis decides: accept with flag, re-transcribe, or discard
```

## Output Format

```markdown
## Transcript Receipt Log — [MBL Transcript ID]

**Received:** [Timestamp]
**Krista.ai Meeting ID:** [ID]
**MBL Transcript ID:** [ENTITY]-[YYYYMMDD]-[HHMM]
**Entity:** [entity | UNCLASSIFIED — HITL Required]
**Meeting Title:** [title or "Not provided"]
**Duration:** [HH:MM:SS] | Calendar expected: [HH:MM:SS] | Match: [✓ | ⚠️  PARTIAL]

---

### VALIDATION RESULTS
- Format: [PASS | FAIL — reason]
- Duplicate: [CLEAR | DUPLICATE — [existing ID]]
- Completeness: [COMPLETE | PARTIAL — [missing segment description]]
- Confidence: [n.nn — PASS | LOW — Dr. Lewis review required]

### SPEAKER RECONCILIATION
| Speaker Label | Resolved Name | Method | Status |
|---------------|---------------|--------|--------|
| Speaker 1 | [Name] | [method] | RESOLVED |
| Speaker 2 | UNKNOWN_1 | — | HITL REQUIRED |

**Utterance-weighted resolution: [n%]** — [THRESHOLD MET | BELOW THRESHOLD — HOLD]

### HIPAA STATUS
**HIPAA Trigger:** [NOT TRIGGERED | TRIGGERED — reason]
**Status:** [CLEAR TO ROUTE | HIPAA_SCREENING_REQUIRED — Dr. Lewis alerted]

### ROUTING STATUS
**Processing Queue:** [QUEUED | HOLD — reason]
**Next Skill:** [meet-transcript-processor | BLOCKED]
**Dr. Lewis Notification:** [SENT | NOT REQUIRED]
```

## Output Contract

- **The HIPAA trigger must fire before any routing decision is made — the transcript content must never be forwarded to any downstream skill while the HIPAA check is in a triggered but unresolved state.** The receiver is the first and most important HIPAA gate in the entire pipeline. If an Allevio transcript reaches the transcript processor, the action item extractor, or any other downstream skill before PHI is identified and isolated, the contaminated data may propagate through multiple systems simultaneously. A PHI breach in a downstream skill is harder to contain than one caught at the receiver. The receiver's HIPAA trigger is a hard stop — not a soft flag.

- **Speaker reconciliation must reach ≥80% utterance-weighted resolution before the transcript is routed — utterance-weighted, not speaker-count-weighted.** A meeting with 5 speakers where 4 are identified but the fifth accounts for 40% of all utterances has a 60% resolution rate, not 80%. Routing such a transcript would result in 40% of the meeting's content being attributed to UNKNOWN_1 — making action items, decisions, and sentiment analysis from that speaker unreliable or unusable. The utterance-weighting requirement ensures that the identified speakers cover the majority of what was said, not just the majority of who spoke.

- **Missing transcripts must be flagged after 2 hours past meeting end — not the next day, not the next Monday.** The meeting intelligence pipeline depends on prompt transcript receipt to maintain its delivery timelines: action item extraction, follow-up generation, and weekly summary building all have time-sensitive outputs. A transcript that is quietly missing for 24 hours creates a cascade of delays. The 2-hour alert gives Dr. Lewis time to investigate the Krista.ai recording status and take corrective action (manual upload, Krista support escalation) before the meeting's outputs are lost entirely.

## System Dependencies

### Reads from
- Krista.ai API / webhook (inbound transcript payload)
- Microsoft Outlook calendar (calendar event validation — attendees, duration, title)
- MBL transcript registry (duplicate check, MISSING transcript detection)
- MBL staff directory (speaker email → name resolution)
- Attendee profiler database (secondary speaker identification)

### Writes to
- MBL transcript registry (new entry with status, entity, speaker resolution)
- meet-transcript-processor queue (QUEUED_FOR_PROCESSING transcripts)
- HIPAA alert queue (Dr. Lewis notification on trigger)
- Dr. Lewis notification (all receipt outcomes — queued, held, errored)

### HITL Required
- Any UNCLASSIFIED entity tag
- Any HIPAA trigger — must be cleared by Dr. Lewis before routing
- Any speaker resolution below 80% utterance-weighted threshold
- Any LOW_QUALITY confidence score (Dr. Lewis decides accept/discard)
- Any MISSING transcript alert (Dr. Lewis investigates Krista.ai status)

## Test Cases

1. **Golden path:** Krista.ai delivers a transcript payload 8 minutes after an MBL HoldCo weekly sync ends. All five participants are email-resolved from the staff directory (100% speaker resolution), duration matches calendar event within 3 minutes, confidence score is 0.91, and no HIPAA triggers fire. The receiver assigns ID MBL-20260622-09:00, writes to the registry, queues for the transcript processor, and notifies Dr. Lewis: "Transcript received and queued: MBL-20260622-09:00." Total processing time: 45 seconds.

2. **Edge case:** A HIVE Partners call transcript arrives 3 hours after meeting end (delayed Krista.ai delivery). The missing transcript alert already fired at the 2-hour mark and Dr. Lewis is aware. The receiver detects the delayed arrival, checks that no duplicate exists in the registry, proceeds with validation, resolves 4 of 5 speakers (one external LP not in the directory — UNKNOWN_1, utterance share 8%), clears the 80% threshold (92% resolved by utterance weight), assigns the transcript ID, and queues for processing. Dr. Lewis is notified of the late arrival and the one unresolved speaker.

3. **Adversarial case:** A transcript arrives with Krista.ai meeting ID that already exists in the registry (duplicate delivery — common with certain Krista.ai webhook configurations). The receiver detects the duplicate, discards the inbound payload, and logs: "DUPLICATE DISCARDED — [meeting ID] already in registry as [MBL Transcript ID]. No action taken." Dr. Lewis is notified of the duplicate event. The existing processed transcript is unaffected.

## Audit Log

Every transcript receipt event logs the Krista.ai meeting ID, MBL Transcript ID assigned, receipt timestamp, entity assignment, HIPAA trigger status, speaker resolution rate, confidence score, validation outcomes (pass/fail per gate), routing decision, and Dr. Lewis notification sent. HIPAA trigger events are logged with elevated retention (7 years) consistent with HIPAA business associate requirements. All other receipt logs are retained for 3 years.

## Deprecation

This skill should be reviewed if Krista.ai releases a direct integration with the MBL meeting intelligence platform that handles entity tagging, speaker resolution, and HIPAA screening natively before delivering processed output. In that scenario, the receiver's validation and routing functions may be replaced, though the HIPAA gate and Dr. Lewis notification logic should be preserved in any replacement integration before this skill is retired.
