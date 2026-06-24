---
name: ai-meeting-transcription-ops
description: "Manage meeting transcription operations for MBL Partners AI workflows. Use when the user says 'meeting transcription', 'transcribe the meeting', 'meeting recording', 'Teams recording', 'Zoom recording', 'meeting audio', 'transcription quality', 'bad transcription', 'transcription error', 'Krista transcription', 'transcription setup', 'transcription pipeline', 'meeting capture', 'meeting record', 'record this meeting', 'how do we get transcripts', 'transcription not working', 'transcription failed', 'missing transcript', 'transcript quality', 'transcript accuracy', 'transcription service', 'transcription vendor', 'meeting transcript file', 'where are the transcripts', 'transcript storage', 'transcript archive', 'transcript access', 'who can see the transcripts', 'transcript permissions', 'delete transcript', 'transcript retention', or 'transcription compliance'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--platform <teams|zoom>] [--meeting <name|date>] [--action <setup|troubleshoot|retrieve|archive|audit>]"
---

# AI Meeting Transcription Ops

Manage meeting transcription operations for MBL Partners AI workflows — setting up, monitoring, troubleshooting, and auditing the transcription pipeline (Teams recordings → Krista.ai transcription → meeting summary workflow). Transcription is the raw material for Meeting Intelligence; when transcription fails, the entire downstream workflow fails.

## When to Use
- Setting up transcription for a new meeting type or participant group
- Troubleshooting a missing or poor-quality transcript
- Auditing transcript storage and access permissions
- Reviewing transcription compliance (consent; retention; access)

## Meeting Transcription Operations Framework

```
MBL TRANSCRIPTION PIPELINE:
  Source: Microsoft Teams (primary) → recording auto-saved to Teams channel or OneDrive
  Transcription: Krista.ai receives Teams recording → processes through transcription model → outputs text
  Quality threshold: >90% word accuracy required for Meeting Intelligence workflow
  Fallback: if transcript quality <90% → Dr. Lewis notified → manual review + correction option
  
TEAMS RECORDING SETUP:
  Auto-recording: enabled for meetings tagged as "MBL Executive" (Matt Mathison as organizer or required attendee)
  Manual recording: Dr. Lewis starts recording for any untagged meeting needed for intelligence
  Recording storage: Teams → Meeting Recordings → SharePoint → [Entity] → [YYYY-MM] folder
  Consent: MBL internal meetings (all participants are employees or consultants) → consent covered by employment/engagement agreement
  External participants: recording consent statement required in calendar invite; Dr. Lewis includes standard language
  
TRANSCRIPT STORAGE AND ACCESS:
  Storage: SharePoint → MBL → Meeting Intelligence → Transcripts → [YYYY-MM] → [Meeting-Date-Title]
  Access: Dr. Lewis (full); Matt Mathison (full); entity CEOs (entity-specific transcripts only)
  LPs and external parties: no transcript access (summaries only, reviewed by Dr. Lewis and Matt Mathison)
  Allevio transcripts: stored in entity-isolated SharePoint folder; HIPAA review before any external sharing
  
TRANSCRIPT RETENTION POLICY:
  Retention period: 24 months from meeting date (then archive or delete per MBL retention policy)
  Deletion: entity CEO requests deletion → Dr. Lewis verifies → deleted from SharePoint + Krista logs
  Legal hold: if a transcript is relevant to litigation or investigation → do not delete; flag for legal counsel
  Allevio: any transcript containing potential PHI → legal counsel advises on retention
  
QUALITY INDICATORS:
  Good quality: [Speaker Name]: clear sentences; punctuation auto-inserted; names recognizable
  Poor quality indicators: [inaudible] appearing frequently; speaker confusion (names swapped); run-on sentences
  Root causes of poor quality: background noise; poor microphone; overlapping speech; non-English speakers; technical terms unfamiliar to transcription model
  Remediation: Teams audio settings; meeting host guidance; custom vocabulary training for Krista transcription
  
HIPAA COMPLIANCE FOR TRANSCRIPTION:
  Allevio meeting transcripts: may contain employer names (not PHI); must NOT contain individual member names or health data
  If Allevio transcript contains PHI: flagged during Krista quality check → Dr. Lewis reviews before any downstream processing
  Transcripts NOT to be processed through any external AI tool without BAA
  Krista.ai: BAA in place; authorized for Allevio meeting transcription with employer-aggregate context
```

## Output Format

```markdown
# Transcription Operations Status — [Date]
**Checked by:** Dr. Lewis | **Meetings covered:** [N] | **Period:** [Month/Quarter]

---

## Transcription Pipeline Status
| Component | Status | Notes |
|-----------|--------|-------|
| Teams auto-recording | 🟢 Active | Matt Mathison meetings: auto |
| Krista transcription | 🟢 Active | Quality avg: [X]% |
| SharePoint storage | 🟢 Active | [N] transcripts stored |
| Consent compliance | ✅ Current | External consent template in use |

---

## Quality Summary
- Transcripts this month: [N]
- Quality ≥90%: [N] ([X]%)
- Below threshold (manual review): [N]

## Issues
- [Missing transcript: June 15 meeting — Teams recording not started; no intelligence produced]
- [Quality flag: June 8 — background noise; Dr. Lewis manually corrected action items]
```

## Output Contract
- Transcription consent is a proactive operation, not an afterthought — Dr. Lewis builds consent language into every calendar invite that includes external participants (LPs; acquisition targets; employers; vendors); the consent language is standard: "Please note this meeting will be recorded for business purposes. If you have any concerns about recording, please notify the meeting host before the call begins."; internal MBL meetings (all employees and contractors) → consent covered by employment/engagement terms; Dr. Lewis does not wait for consent questions to arise; the consent language is always in the invite before the meeting happens
- Transcript quality failures are operational failures, not technology failures — when a transcript quality is below threshold, Dr. Lewis investigates root cause before assuming Krista has a problem; most transcript quality failures trace to: meeting host not muting background noise (2-minute fix); overlapping speech without "raise hand" protocol (meeting facilitation issue); Teams audio settings on the host's device (AV settings fix); Dr. Lewis documents the root cause and provides the meeting host with guidance; only when root cause is confirmed to be a Krista transcription model issue does Dr. Lewis escalate to the Krista.ai team
- HITL required: transcript storage → Dr. Lewis manages access permissions; entity CEO can request entity-specific transcript access; external participants cannot access transcripts; Allevio transcripts → PHI review before any downstream use; deletion requests → Dr. Lewis verifies; legal hold → legal counsel decision; any transcript containing PHI → workflow suspended pending Dr. Lewis review; Matt Mathison has access to all transcripts (as Managing Partner)

## System Dependencies
- **Reads from:** Microsoft Teams (recordings; calendar; participants); Krista.ai (transcription processing; quality scores; output transcripts); SharePoint (transcript storage; access logs); meeting calendar invites (consent compliance; participant list)
- **Writes to:** SharePoint transcript archive (SharePoint → MBL → Meeting Intelligence → Transcripts); Krista.ai processing queue; transcription quality log; consent compliance records; deletion records; legal hold records
- **HITL Required:** Access permissions → Dr. Lewis manages; Allevio PHI flag → Dr. Lewis reviews before downstream; deletion → Dr. Lewis verifies; legal hold → legal counsel; quality escalation → Dr. Lewis before Krista.ai team; consent issues → Dr. Lewis resolves before meeting

## Test Cases
1. **Golden path:** Weekly Matt Mathison portfolio review (Teams; auto-recorded). Teams recording automatically saved to SharePoint. Krista.ai picks up recording within 15 minutes → transcription complete in 25 minutes → quality score: 96% → passed to Meeting Intelligence workflow. Transcript stored: SharePoint → MBL → Meeting Intelligence → Transcripts → 2026-06 → 2026-06-22-Portfolio-Review. Meeting Intelligence workflow produces BLUF-first summary. Dr. Lewis reviews. Approved for distribution. Full pipeline working end-to-end.
2. **Edge case:** LP joined a Teams meeting for the HIVE quarterly review; Dr. Lewis forgot to include recording consent language in the invite → Dr. Lewis: "Before I process this transcript through the Meeting Intelligence workflow, I need to address the consent gap. I'll contact the LP by email: 'Our June 22 HIVE quarterly review was recorded per our standard business practice. If you have any concerns about the recording, please reply to this email and I'll address them.' If the LP raises no concerns within 48 hours, I'll proceed with internal processing. I'll never distribute the transcript to the LP. I'll add the standard consent language to the HIVE quarterly review template immediately to prevent this recurrence."
3. **Adversarial:** Entity CEO asks for the raw transcript of a meeting between Matt Mathison and a potential M&A acquisition target → Dr. Lewis: "Raw transcripts of M&A meetings are confidential and access is restricted to Dr. Lewis and Matt Mathison. The acquisition target may have disclosed non-public financial information in that call; the LP-level and entity CEO-level access restriction on M&A transcripts is intentional. If you need specific information from that conversation, I can check with Matt Mathison and, with his approval, provide a summary of the relevant portions. I can't provide the full raw transcript without Matt's authorization."

## Audit Log
Transcription pipeline status records (monthly). Transcript quality scores (all meetings; all months). Consent compliance records (external participant meetings). Access permission records. Deletion records (reason; date; authorized by). Legal hold records. HIPAA review records (Allevio transcripts). PHI flag records. Quality failure root cause records.

## Deprecation
Retention policy reviewed annually (or when legal requirements change). Consent language reviewed when meeting platform changes or legal requirements change. Allevio HIPAA compliance reviewed annually. Quality thresholds reviewed when Krista.ai platform upgrades transcription model. Pipeline reviewed when Teams recording features change (Microsoft platform updates).
