---
name: meet-commitment-tracker
description: "track commitments meeting, commitment vs action item, personal commitment tracker, commitment capture meeting, who committed to what meeting, commitment due date tracking, open commitment dashboard, overdue commitment alert, commitment completion rate, matt mathison commitment tracker, his commitments others commitments to him, commitment tracking integrity thrive, commitment keeper meeting intelligence, commitment log mbl, commitment reliability entity, commitment follow up, commitment history meeting, track pledges meeting, commitment accountability mbl, commitment reporting entities"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[person name, entity, or 'Matt Mathison' to query open commitments]"
---

# Meeting Commitment Tracker

This skill captures, tracks, and reports on personal commitments made across all MBL meetings — distinguishing genuine personal pledges from assigned tasks, surfacing overdue commitments before they become trust issues, and maintaining a commitment completion rate by entity and by person. Commitment-keeping is an expression of the THRIVE value of Integrity; this skill makes that value measurable.

## When to Use

- A new commitment is identified in a meeting transcript and needs to be logged
- Matt Mathison needs to know his open commitments before an upcoming meeting with the relevant parties
- An entity or person's commitment completion rate needs to be reviewed for a quarterly assessment
- An overdue commitment alert needs to be surfaced before the next meeting where that commitment will likely be raised

## Commitment Tracker Framework

```
COMMITMENT DEFINITION AND CAPTURE
─────────────────────────────
COMMITMENT (this skill) vs. ACTION ITEM (meet-action-item-extractor):
  COMMITMENT = Personal pledge — "I commit to...", "You have my word...", "I'll personally 
               make sure...", "Count on me for...", "I'll get that to you by..."
               → Carries reputational and relational weight beyond a task assignment
  ACTION ITEM = Assigned task — "Can you handle X?", "[Name] will do Y by Z"
               → Operational accountability, tracked in Monday.com

Why the distinction matters:
  - Commitments broken by Matt Mathison affect LP trust, entity CEO trust, and partner relationships
  - Commitments broken by external parties signal relationship risk before it becomes a problem
  - High commitment completion rates = organizational integrity (THRIVE: "I" = Integrity)
  - Low completion rates = a leadership or cultural signal that requires intervention

COMMITMENT CAPTURE FIELDS
─────────────────────────────
  Commitment ID:      [ENTITY]-CMT-[YYYYMMDD]-[nn]
  Who Committed:      Full name + role
  Commitment Level:   Internal (MBL staff) | External (vendor, LP, partner, prospect)
  Committed To:       Full name + role of recipient
  Commitment Text:    Verbatim or near-verbatim quote from transcript
  Meeting:            Meeting name + Transcript ID
  Date Made:          YYYY-MM-DD
  Due Date:           Explicit | Inferred | Open-ended
  Due Confidence:     Stated | Inferred — [basis]
  Status:             Open | Complete | Overdue | Withdrawn | Disputed
  Completion Date:    [date or blank]
  Evidence of Completion: [meeting reference | email | document | not verified]
  Matt Mathison:      Committer: [Y/N] | Recipient: [Y/N]
  THRIVE Link:        Integrity — commitment-keeping as organizational value

MATT MATHISON COMMITMENT TRACKING (DUAL TRACKING)
─────────────────────────────
Track TWO directions for Matt Mathison:

Direction 1 — HIS COMMITMENTS (Matt committed to others):
  - Any personal pledge Matt made in a meeting
  - Due dates tracked; overdue flagged 48 hours before due (not on due date — prevention)
  - Pre-meeting briefing: "You committed to [X] to [party] by [date] — this may come up"
  - Monthly commitment completion report: his rate + any overdue items

Direction 2 — OTHERS' COMMITMENTS TO HIM (parties committed to Matt):
  - External parties, entity CEOs, or team members who committed to Matt personally
  - Track status; flag when overdue — Matt may need to follow up
  - Pattern: if same party misses commitments to Matt repeatedly → relationship risk flag

OVERDUE COMMITMENT ALERTS
─────────────────────────────
Alert timing:
  48 hours before due: "Upcoming commitment reminder" → Dr. Lewis (for Matt's commitments)
  Day of due (if not complete): "Commitment due today" → Dr. Lewis
  24 hours overdue: "Overdue commitment" → Dr. Lewis + entity owner
  72 hours overdue: "ESCALATED — overdue commitment" → Dr. Lewis priority alert

External party commitments:
  24 hours overdue: Prepare commitment confirmation follow-up email (pending Dr. Lewis review)
  5 days overdue: Escalation note to Dr. Lewis for relationship assessment

COMMITMENT COMPLETION RATE REPORTING
─────────────────────────────
Metrics tracked (per entity, per person, per quarter):
  - Total commitments made: [n]
  - Completed on time: [n] → On-time rate: [n%]
  - Completed late: [n] → Late rate: [n%]
  - Outstanding (overdue): [n]
  - Withdrawn (commitment formally rescinded): [n]

Benchmark:
  ≥90% on-time: INTEGRITY GREEN — commitment culture is healthy
  75–89%: INTEGRITY YELLOW — pattern of late completions; coach and monitor
  <75%: INTEGRITY RED — systemic commitment failure; escalate to entity CEO or Matt

THRIVE INTEGRITY LINK
─────────────────────────────
Commitment-keeping is the behavioral expression of THRIVE "I" (Integrity).
  - High completion rates = Integrity lived in practice
  - Repeated overdue commitments from same person = Integrity misalignment signal
  - Matt Mathison's own completion rate is the organizational standard — it sets the tone
  - Report framing: always lead with the THRIVE connection when presenting to entity leaders
```

## Output Format

```markdown
## Commitment Tracker — [Person or Entity] | [Date Range]

**Open Commitments:** [n] | **Overdue:** [n] | **Completed this period:** [n]
**On-Time Rate:** [n%] — [🟢 INTEGRITY GREEN | 🟡 INTEGRITY YELLOW | 🔴 INTEGRITY RED]

---

### MATT MATHISON — OPEN COMMITMENTS (His Pledges)
| ID | Committed To | Commitment | Due | Status | Days Until/Since Due |
|----|-------------|-----------|-----|--------|----------------------|
| [ID] | [name] | [text] | [date] | [Open/⚠️ Overdue] | [n] |

### COMMITMENTS TO MATT MATHISON (Others' Pledges)
| ID | From | Commitment | Due | Status | Action Needed? |
|----|------|-----------|-----|--------|----------------|
| [ID] | [name] | [text] | [date] | [Open/⚠️ Overdue] | [Yes/No] |

---

### ENTITY COMMITMENT DASHBOARD

| Entity | Open | Overdue | On-Time Rate | THRIVE Status |
|--------|------|---------|-------------|---------------|
| MBL HoldCo | [n] | [n] | [n%] | [🟢/🟡/🔴] |
| Allevio | [n] | [n] | [n%] | [🟢/🟡/🔴] |
| HIVE | [n] | [n] | [n%] | [🟢/🟡/🔴] |
| Column6 | [n] | [n] | [n%] | [🟢/🟡/🔴] |

---

### OVERDUE COMMITMENT DETAILS
| ID | Who | To Whom | Commitment | Due | Days Overdue | Recommended Action |
|----|-----|---------|-----------|-----|-------------|-------------------|
| [ID] | [name] | [name] | [text] | [date] | [n] | [action] |

---

### QUARTERLY COMPLETION REPORT
*(Generated quarterly or on request)*
- Matt Mathison on-time rate: [n%]
- Top commitment-keeper: [name] [n%]
- Most improvement needed: [name] [n%]
- THRIVE Integrity alignment: [overall assessment]
```

## Output Contract

- **Commitments made by Matt Mathison must receive 48-hour advance alerts — not day-of alerts — because prevention of a missed commitment is worth infinitely more than a post-mortem.** Matt Mathison's commitments to LPs, entity CEOs, partners, and vendors carry relationship weight that goes beyond any single deliverable. A missed commitment without prior warning is a surprise that damages trust. A 48-hour alert gives Matt and Dr. Lewis time to either complete the commitment, renegotiate the timeline with the recipient, or proactively set expectations — all of which preserve the relationship. Day-of alerts are damage control; 48-hour alerts are damage prevention.

- **Commitment completion rate must be linked explicitly to THRIVE Integrity in every report presented to entity leadership — the metric is not merely operational, it is cultural.** MBL's THRIVE framework is the cultural operating system of the portfolio. When a commitment completion rate report is presented without the Integrity connection, it reads as an operational efficiency metric and gets treated accordingly — noted but not acted on. When the same data is framed as "our Allevio team's Integrity score is 71% — below the 75% threshold where we take action," it becomes a values conversation that entity leadership feels accountable to. The framing is not cosmetic — it changes how the data lands.

- **External party commitments must be tracked separately from internal commitments and must generate a follow-up email draft when they become overdue — never silently aged.** A vendor or LP who makes a commitment in a meeting and then misses it without follow-up has learned that commitments to MBL carry no consequence. That signal compounds: each silent overdue commitment teaches the external party that accountability is optional. The commitment tracker exists to ensure that MBL enforces a consistent standard of follow-through from all parties — internal and external — and that Dr. Lewis has a prepared communication ready when any overdue commitment needs to be addressed.

## System Dependencies

### Reads from
- Processed transcript output (commitment capture — verbatim quotes, speaker, date)
- Action item registry (deduplication — ensure items are classified correctly as commitment vs. task)
- Microsoft Outlook calendar (upcoming meetings where open commitments may be raised)
- Attendee profiler (recipient identification and relationship context)

### Writes to
- Commitment registry: `/Meeting Intelligence/Commitments/[Entity]/`
- Dr. Lewis alert queue (48-hour advance alerts, overdue alerts, escalations)
- Follow-up email draft queue (external party overdue commitments)
- Weekly summary input (Matt Mathison open commitments section, if any)
- Quarterly THRIVE Integrity report (entity-level commitment rates)

### HITL Required
- Any commitment made by Matt Mathison — Dr. Lewis reviews before logging and before any alerts are sent to Matt
- External party follow-up drafts — Dr. Lewis reviews wording before send
- Any commitment marked Disputed — Dr. Lewis arbitrates using transcript evidence
- Quarterly Integrity rate reports before distribution to entity CEOs

## Test Cases

1. **Golden path:** In a HIVE Partners LP call, the LP general counsel says: "You have our word — we'll have the updated subscription agreement to you by the 30th." The commitment tracker captures this as an external commitment (LP → MBL, Commitment ID HIVE-CMT-20260622-01, due June 30). On June 28 (48 hours before due), Dr. Lewis receives a reminder: "Upcoming external commitment from [LP GC]: subscription agreement due June 30. No receipt confirmed yet." The LP delivers on June 29. Dr. Lewis marks the commitment COMPLETE with evidence note. On-time rate for this LP: 100%.

2. **Edge case:** A commitment is captured from a meeting transcript: "Matt said he'd think about the restructuring proposal and get back to them." The commitment tracker cannot confirm a specific due date. It logs the commitment with Due Confidence = OPEN-ENDED and flags for Dr. Lewis HITL: "Ambiguous commitment by Matt Mathison — no due date stated. Please confirm due date or reclassify as 'to be determined.'" The commitment is not counted as overdue until a due date is established.

3. **Adversarial case:** An entity CEO has missed commitments to Matt Mathison in three consecutive meetings over six weeks (HIVE-CMT-20260510-02, HIVE-CMT-20260524-01, HIVE-CMT-20260607-03). The commitment tracker detects the pattern: 3 consecutive misses from the same person to the same recipient. It fires a pattern alert to Dr. Lewis: "COMMITMENT PATTERN ALERT — [Name] has missed 3 consecutive commitments to Matt Mathison over 6 weeks. On-time rate for this individual: 40%. This is an INTEGRITY RED signal. Recommend Dr. Lewis brief Matt Mathison before the next interaction." Dr. Lewis decides whether and how to address it.

## Audit Log

Every commitment capture, status update, and alert fired is logged to the commitment audit trail with: Commitment ID, entity, who committed, who received, commitment text, due date, status change timestamps, alert timestamps, and completion evidence. Pattern alert events are logged with the full commitment history that triggered the detection. External party follow-up communications are logged with draft content and Dr. Lewis review status. All commitment logs are retained for 3 years; Matt Mathison commitment records for 5 years.

## Deprecation

This skill should be reviewed if the action item registry and commitment tracker are merged into a unified accountability platform that handles both assigned tasks and personal pledges with a single tracking interface. In that scenario, the distinction between commitment and action item must be preserved as a data field in the unified system — the behavioral and relational significance of a personal commitment must not be collapsed into a routine task. Deprecation requires Dr. Lewis to confirm that the THRIVE Integrity reporting and the Matt Mathison dual-tracking (his commitments + commitments to him) are fully supported in the replacement system before this skill is retired.
