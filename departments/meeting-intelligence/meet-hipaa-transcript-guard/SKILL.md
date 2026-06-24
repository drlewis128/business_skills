---
name: meet-hipaa-transcript-guard
description: "flag PHI in meeting transcripts, handle PHI in Allevio meetings, PHI detection in transcripts, HIPAA meeting transcript protection, member names in meeting transcripts, SSN in meeting transcripts, diagnoses in meeting transcripts, claims data in meetings, eligibility details in meetings, PHI found protocol, remove PHI from meeting outputs, Dr. Lewis PHI notification, HIPAA breach assessment from meetings, PHI in Teams meetings, PHI in Zoom meetings, Krista AI recording PHI, clinical meeting transcript sensitivity, Allevio HIPAA transcript guard, meeting transcript PHI removal, HIPAA compliance for recorded meetings"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[Allevio transcript ID or transcript text to scan]"
---

# HIPAA Transcript Guard

This skill is the primary HIPAA protection layer for Allevio meeting transcripts processed by Krista.ai, detecting and handling individually identifiable health information (PHI) before any transcript content flows into meeting intelligence outputs. Clinical meeting transcripts receive heightened scanning, and any PHI detection immediately triggers a breach assessment protocol that begins with Dr. Lewis and escalates to the Allevio entity CEO.

## When to Use

- Any Allevio-tagged meeting transcript is received from Krista.ai and must be scanned before processing
- A clinical or billing meeting at Allevio is recorded and transcribed — these receive mandatory pre-processing PHI scanning
- Dr. Lewis needs to assess whether a prior transcript that was already processed may have contained PHI that slipped through
- A PHI detection event triggers the breach assessment protocol and requires step-by-step guidance

## HIPAA Transcript Guard Framework

```
HIPAA TRANSCRIPT GUARD — ALLEVIO — [TRANSCRIPT ID / MEETING DATE]
==================================================================

TRANSCRIPT METADATA
  - Meeting name: [name]
  - Meeting date and time: [datetime]
  - Recorded via: [Krista.ai / Teams / Zoom + Krista.ai integration]
  - Participants (by role — do NOT include names in this metadata section if PHI risk exists)
  - Meeting type: [Clinical Ops / Billing / Compliance / Employer Relations / Leadership]
  - Sensitivity level: [STANDARD / ELEVATED (clinical or billing) / CRITICAL (patient-facing adjacent)]

PHI DEFINITION IN MEETING CONTEXT
  The following constitute PHI when found in meeting transcripts:
  - Individual member names (first name alone is PHI if tied to health context)
  - Social Security Numbers (full or partial)
  - Member ID numbers tied to specific individuals
  - Dates of birth combined with any health reference
  - Specific diagnoses, conditions, or treatment mentions tied to named individuals
  - Claims data (claim amounts, claim IDs) tied to named individuals
  - Eligibility status for a specific named member
  - Prescription or medication information tied to named individuals
  - Geographic data smaller than state when combined with health reference
  - Biometric identifiers

PHI DETECTION SCAN
  PASS 1 — EXPLICIT PHI PATTERNS
  - Direct name + health context combinations: [FOUND / NOT FOUND]
  - SSN patterns (xxx-xx-xxxx): [FOUND / NOT FOUND]
  - Claim ID patterns: [FOUND / NOT FOUND]
  - Diagnosis code mentions (ICD-10, CPT): [FOUND / NOT FOUND]
  - Date of birth patterns with health reference: [FOUND / NOT FOUND]

  PASS 2 — CONTEXTUAL PHI PATTERNS (higher false-positive tolerance)
  - First names in clinical context (flag for review even without surname): [FOUND / NOT FOUND]
  - Member ID numbers without explicit name (still PHI if linked): [FOUND / NOT FOUND]
  - "The patient" / "the member" / "that case" with specific identifiers following: [FOUND / NOT FOUND]
  - Any reference to a specific individual's health journey: [FOUND / NOT FOUND]

  PASS 3 — CLINICAL MEETING ELEVATED SCAN
  (Applied to all clinical ops and billing meeting types)
  - Case review language ("the case from last Tuesday," "the complaint we got"): [FOUND / NOT FOUND]
  - Quality incident language with individual references: [FOUND / NOT FOUND]
  - Any language that could identify a specific member even without name: [FOUND / NOT FOUND]

PHI DETECTION RESULT
  - Total PHI instances found: [N]
  - Severity levels: HIGH [N] / MEDIUM [N] / LOW (contextual, needs review) [N]
  - Locations in transcript: [list with line numbers or timestamps]
  - Content of PHI found: [exact text — THIS SECTION IS RESTRICTED TO DR. LEWIS ONLY]

PHI FOUND PROTOCOL (if any PHI detected)
  Step 1: HALT all transcript processing immediately
  Step 2: Quarantine transcript from standard processing pipeline
  Step 3: Notify Dr. John Lewis within 15 minutes of detection
    - Notification includes: transcript ID; meeting date; PHI type; severity; exact location
    - Notification channel: [Dr. Lewis priority notification — not standard email]
  Step 4: Remove PHI from all pipeline outputs
    - Redact or remove identified PHI from transcript before any further processing
    - Document what was removed and why
  Step 5: Assess breach status
    - Was the transcript already partially processed? Were any outputs already generated or distributed?
    - If YES: escalate to HIPAA breach assessment immediately
    - If NO: redact and resume with clean transcript
  Step 6: Allevio entity CEO notification (if breach assessment triggered)
    - CEO notified within 4 hours of breach assessment initiation
    - Notification includes: what was found; what was exposed; what has been done
  Step 7: Document in HIPAA incident register

NO PHI FOUND PROTOCOL
  - Transcript cleared for processing
  - CLEAR status logged with transcript ID and scan timestamp
  - Processing pipeline resumes
  - Log retained in HIPAA compliance record

BREACH ASSESSMENT TRIGGER
  A breach assessment is required if ANY of the following are true:
  - PHI was found in a transcript that has already been processed into any output
  - PHI-containing transcript content was included in any email, document, or Monday.com card
  - PHI was transmitted to any system that does not have a HIPAA BAA with MBL/Allevio
  - Dr. Lewis cannot confirm that the PHI was contained to the transcript and never propagated
```

## Output Format

```markdown
## HIPAA Transcript Guard — [Transcript ID] — [DATE]

**Meeting:** [name] | **Type:** [type] | **Sensitivity:** [level]

**Scan Result:** CLEAR ✓ / PHI DETECTED ⛔

**If CLEAR:**
Transcript cleared for processing. Scan logged. Pipeline resumes.
Log ID: [ID] | Scan timestamp: [datetime]

**If PHI DETECTED:**
**STATUS: HALT — DO NOT PROCESS OR DISTRIBUTE**
- PHI type: [type]
- Severity: HIGH / MEDIUM / LOW
- Instances found: [N]
- Dr. Lewis notified: [datetime]
- Protocol steps initiated: [list completed steps]
- Breach assessment required: YES / NO
- Allevio CEO notified: YES / PENDING / NOT REQUIRED
```

## Output Contract

- **The 15-minute notification window to Dr. Lewis is a hard SLA, not a target.** When PHI is detected in any Allevio transcript, Dr. Lewis receives a notification within 15 minutes — not in the next pipeline cycle, not in the next daily summary, not after the transcript is fully reviewed. The notification is immediate and specific: it includes the transcript ID, the meeting name and date, the type of PHI found, and the exact location in the transcript. Speed matters because the longer PHI remains in an uncontrolled state within the pipeline, the greater the potential scope of a breach.

- **Clinical and billing meetings receive elevated scanning regardless of whether PHI is expected.** The assumption that a billing or clinical ops meeting "probably doesn't have PHI" is not operationally valid — these meetings routinely discuss specific cases, member complaints, claim disputes, and quality incidents using language that can identify individuals even without using their full name. The elevated scan protocol (Pass 3) applies to all meetings tagged as clinical, billing, or compliance at Allevio, with no exceptions based on expected meeting content.

- **Breach assessment is triggered by propagation, not just detection.** Finding PHI in a transcript that was received 5 minutes ago and immediately quarantined is a detection event that may not constitute a breach. Finding PHI in a transcript that was processed 24 hours ago and whose outputs were distributed to three recipients is a breach event requiring HIPAA incident response. The distinction drives the escalation path — detection without propagation is handled by Dr. Lewis and the Allevio CEO internally; propagation triggers the full HIPAA breach notification protocol including assessment of whether member notification is required.

## System Dependencies

### Reads from
- Krista.ai transcript delivery (Allevio-tagged meetings; raw transcript before pipeline processing)
- PHI pattern library (maintained by Dr. Lewis; updated as Allevio's clinical language evolves)
- Processing pipeline state (to determine if any outputs were generated before PHI detection)

### Writes to
- HIPAA incident register: SharePoint /Compliance/HIPAA/Incidents/ (restricted to Dr. Lewis + Allevio CEO)
- Transcript quarantine log: flags transcript as quarantined in Krista.ai processing queue
- Dr. Lewis priority notification (immediate; PHI detection events)
- CLEAR processing log: SharePoint /Meeting Intelligence/HIPAA-Scans/[date]-scan-log.md

### HITL Required
- Dr. Lewis: receives all PHI detection notifications; reviews breach assessment; approves redaction approach before processing resumes
- Allevio entity CEO: notified of breach assessment events; involved in breach response decisions
- Matt Mathison: notified only if breach assessment determines member notification may be required (HIPAA breach response level)

## Test Cases

1. **Golden path:** Allevio clinical ops meeting transcript received — Pass 1, Pass 2, and Pass 3 scans find no PHI — CLEAR status logged, pipeline resumes, scan record retained for 6 years.
2. **Edge case:** A transcript contains the phrase "the Johnson Group member who called last week" — "Johnson Group" is an employer client name (not PHI), but "the member" reference in a clinical context with a specific time reference is flagged as contextual PHI risk. Guard issues a MEDIUM flag requiring Dr. Lewis to review whether this reference could identify a specific individual, rather than auto-clearing or auto-halting.
3. **Adversarial:** A well-intentioned Allevio staff member uses a meeting to share a quality improvement example: "Like what happened with Maria last month — her claim was denied and then we fixed it." The guard must catch "Maria" in a claims context as a HIGH-severity PHI detection, halt processing, notify Dr. Lewis within 15 minutes, and initiate breach assessment because the claim context directly links an identifiable name to a health/billing event — regardless of the benign intent of the speaker.

## Audit Log

Every transcript scan — CLEAR or PHI DETECTED — is logged in the HIPAA compliance record with the transcript ID, scan date, scan type (Pass 1/2/3), result, and (for PHI events) the full incident record including Dr. Lewis notification timestamp, breach assessment outcome, and resolution. HIPAA scan logs are retained for 6 years per HIPAA data retention requirements, separate from the standard 1-year transcript retention policy.

## Deprecation

This skill is not deprecated while Allevio remains a HIPAA-covered entity and Krista.ai transcribes Allevio meetings. Even if automated PHI detection tools are adopted, this skill's protocol documentation (PHI definitions, detection passes, breach assessment triggers, escalation chain) governs their configuration and SLA requirements. The protocol is reviewed annually by Dr. Lewis and the Allevio entity CEO for accuracy and completeness. Full deprecation requires explicit sign-off from both Dr. Lewis and the Allevio entity CEO.
