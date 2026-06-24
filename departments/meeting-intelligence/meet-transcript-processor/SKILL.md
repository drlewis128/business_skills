---
name: meet-transcript-processor
description: "process meeting transcript, clean krista transcript, parse transcript speakers, segment transcript topics, extract key moments from transcript, identify decisions in transcript, flag action items in transcript, tag entities in transcript, hipaa check transcript, phi scan transcript, structure raw transcript, transcript ingestion, transcript cleanup, speaker identification meeting, topic segmentation transcript, transcript storage, meeting transcript pipeline, allevio transcript hipaa, transcript format normalization, meeting intelligence transcript"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[transcript file path or transcript text from Krista.ai]"
---

# Meeting Transcript Processor

This skill receives raw meeting transcripts from Krista.ai and transforms them into structured, clean data ready for downstream meeting intelligence tasks. It normalizes speaker labels, segments content by topic, extracts key moments, and enforces HIPAA compliance checks before any transcript is stored or routed forward.

## When to Use

- A new transcript arrives from Krista.ai and needs to be structured before summary or action item extraction
- A raw transcript contains speaker artifacts, crosstalk markers, or timestamp inconsistencies that must be resolved
- An Allevio meeting transcript requires PHI scanning before any downstream processing
- You need to confirm entity tagging (MBL HoldCo, Allevio, HIVE, Column6) on an incoming transcript before routing

## Transcript Processor Framework

```
INBOUND TRANSCRIPT HANDLING
─────────────────────────────
SOURCE:         Krista.ai recording → auto-transcript
EXPECTED FORMAT: [SPEAKER_LABEL | HH:MM:SS | utterance text]
FALLBACK FORMAT: Unstructured text block with speaker prefixes

STEP 1 — ARTIFACT CLEANING
─────────────────────────────
- Strip filler tokens: [inaudible], [crosstalk], [laughter], [pause]
- Normalize timestamps to HH:MM:SS
- Merge split utterances from same speaker with gap < 3 seconds
- Remove duplicate lines from Krista.ai double-capture artifact
- Flag any utterances with >30% inaudible content for HITL review

STEP 2 — SPEAKER IDENTIFICATION
─────────────────────────────
- Map speaker labels to full names using attendee roster
- Resolve ambiguous labels (e.g., "Speaker 2") via voice signature metadata if available
- Flag unresolved speakers as UNKNOWN_[n] — require HITL resolution before storage
- Cross-reference MBL entity roles: who is Matt Mathison, who is entity CEO, who is external

STEP 3 — TOPIC SEGMENTATION
─────────────────────────────
- Identify topic transitions via semantic shift + speaker cues ("moving on," "next item")
- Assign segment header labels: [TOPIC: text]
- Minimum segment length: 3 utterances
- Maximum segment length: 25 minutes equivalent
- Tag each segment with entity context if meeting covers multiple entities

STEP 4 — KEY MOMENT EXTRACTION
─────────────────────────────
DECISIONS:     Phrases signaling closure — "we're going with," "decision is," "agreed," "approved"
ACTION ITEMS:  Ownership phrases — "[name] will," "I'll take that," "action on [name]"
COMMITMENTS:   Personal pledges — "I commit to," "I'll have that by," "count on me for"
ESCALATIONS:   Risk signals — "this is a problem," "we need to flag this," "Matt needs to know"
QUESTIONS:     Unresolved items — ended with "?" and no clear resolution in segment

STEP 5 — HIPAA COMPLIANCE CHECK (ALLEVIO MEETINGS ONLY)
─────────────────────────────
TRIGGER:        Entity tag = Allevio OR attendee list includes clinical staff
PHI CATEGORIES: Patient names, DOB, MRN, diagnosis codes, treatment details, insurance IDs
ACTION ON FLAG: STOP processing → alert Dr. Lewis immediately → do NOT route downstream
SAFE TO STORE:  Business operations, financial metrics, member counts (de-identified), claims ratios

STEP 6 — ENTITY TAGGING AND STORAGE
─────────────────────────────
- Tag transcript with: entity, meeting date, attendees, duration, meeting type
- Generate transcript ID: [ENTITY]-[YYYYMMDD]-[HH:MM]
- Store to SharePoint: /Meeting Intelligence/Transcripts/[Entity]/[Year]/[Month]/
- Update transcript registry with ID, path, processing status
```

## Output Format

```markdown
## Processed Transcript — [ENTITY] | [DATE] | [MEETING NAME]

**Transcript ID:** [ID]
**Duration:** [HH:MM:SS]
**Attendees:** [Name (Role), ...]
**Entity:** [MBL HoldCo | Allevio | HIVE | Column6]
**HIPAA Flag:** [CLEAR | FLAGGED — HOLD FOR DR. LEWIS REVIEW]

---

### TOPIC SEGMENTS

#### [HH:MM:SS] TOPIC: [Topic Label]
[cleaned utterances with SPEAKER: text format]

---

### KEY MOMENTS EXTRACTED

**Decisions:**
- [HH:MM:SS] [Speaker]: [decision text]

**Action Items:**
- [HH:MM:SS] [Owner]: [action text] — Due: [inferred deadline or TBD]

**Commitments:**
- [HH:MM:SS] [Speaker]: [commitment text]

**Escalations:**
- [HH:MM:SS] [Speaker]: [escalation signal text]

**Unresolved Questions:**
- [HH:MM:SS] [Speaker]: [question text]

---

**Processing Status:** COMPLETE | PENDING HITL | HIPAA HOLD
```

## Output Contract

- **Every transcript must pass the HIPAA check before any field is populated downstream.** Allevio meeting transcripts carry inherent PHI risk because clinical and operational staff are often on the same call. Routing a PHI-containing transcript to Monday.com, email, or SharePoint without Dr. Lewis review would constitute a HIPAA breach, exposing MBL and Allevio to regulatory and legal liability. The HIPAA check is a hard gate — not a warning — and must halt processing completely on any flag.

- **Speaker identification must achieve 100% named resolution or flag UNKNOWN speakers for HITL before storage.** Action items and commitments are only operationally useful when they carry a named owner. An action item attributed to UNKNOWN_2 cannot be pushed to Monday.com, cannot be tracked for completion, and cannot be presented to Matt Mathison without ambiguity. Unresolved speakers must be escalated to Dr. Lewis, who has context on attendee rosters that the system may lack.

- **Transcript IDs must be assigned using the [ENTITY]-[YYYYMMDD]-[HH:MM] format and written to the transcript registry immediately upon processing completion.** The registry is the single source of truth for which meetings have been processed, which are pending, and which are in a HIPAA hold state. Downstream skills — including meet-weekly-summary-builder and meet-action-item-extractor — query the registry to know what inputs are available. A missing registry entry means a meeting will be silently dropped from the weekly summary.

## System Dependencies

### Reads from
- Krista.ai transcript output (raw text or JSON via Krista integration)
- Meeting attendee roster (from Microsoft Outlook calendar event)
- MBL entity staff directory (for speaker-to-role mapping)
- SharePoint transcript registry (to check for duplicate ingest)

### Writes to
- SharePoint: `/Meeting Intelligence/Transcripts/[Entity]/[Year]/[Month]/`
- Transcript registry (meeting ID, processing status, HIPAA flag state)
- Processing queue (hands off to meet-action-item-extractor, meet-decision-tracker)

### HITL Required
- Any UNKNOWN_[n] speaker that cannot be resolved automatically
- Any HIPAA flag — must stop and alert Dr. Lewis before proceeding
- Utterances where >30% of content is marked inaudible
- Any transcript where duration recorded by Krista.ai differs from calendar event by >10 minutes

## Test Cases

1. **Golden path:** A 45-minute MBL HoldCo weekly sync transcript arrives from Krista.ai with clean speaker labels, no PHI, and three clear action item signals. The processor cleans artifacts, maps all speakers to named roles, segments into four topics, extracts three action items and one decision, passes HIPAA check (entity = MBL HoldCo, no trigger), assigns transcript ID MBL-20260622-09:00, stores to SharePoint, and routes to the action item extractor and decision tracker.

2. **Edge case:** An Allevio operations meeting transcript arrives where two speakers are labeled identically ("Speaker 1" appears for both the CFO and an unknown attendee). The processor flags both as UNKNOWN and halts downstream routing until Dr. Lewis resolves which utterances belong to which person. The HIPAA check is triggered because entity = Allevio, but no PHI terms are detected — status is set to PENDING HITL (speaker resolution), not HIPAA HOLD.

3. **Adversarial case:** An Allevio clinical-operations joint call transcript contains a segment where a clinical manager references a member by name and diagnosis during a utilization review discussion. The HIPAA check flags patient name + diagnosis code. Processing halts immediately. Dr. Lewis receives an alert with the flagged segment highlighted. The transcript is stored in a restricted SharePoint folder inaccessible to the standard meeting intelligence pipeline. No downstream skill receives any data from this transcript until Dr. Lewis authorizes a redacted version.

## Audit Log

Every execution of this skill logs the transcript ID, entity, processing timestamp, HIPAA flag outcome, speaker resolution status, number of key moments extracted, and the SharePoint storage path to the MBL AI audit trail. Logs are retained for a minimum of 7 years in compliance with HIPAA business associate requirements applicable to Allevio-adjacent processing. PHI flag events are logged separately with elevated retention and access control, visible only to Dr. Lewis and authorized compliance reviewers.

## Deprecation

This skill should be reviewed for deprecation or replacement when Krista.ai releases a native structured transcript API that delivers pre-segmented, speaker-resolved output — at that point, steps 1 and 2 of the framework may be redundant. It should also be re-evaluated if the MBL AI Orchestration Project moves to a different transcription platform in a future phase. Deprecation requires Dr. Lewis sign-off and a validated handoff to any replacement ingest skill before this skill is retired.
