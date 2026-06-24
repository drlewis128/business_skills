---
name: meet-meeting-summary-archive
description: "archive meeting summaries, archive meeting transcripts, SharePoint meeting intelligence archive structure, meeting intelligence retention policy, transcripts 1 year retention, summaries 3 year retention, decisions indefinite retention, action item history 2 year retention, access control for meeting transcripts, search and retrieve prior meeting decisions, find prior commitment in meeting record, HIPAA compliant Allevio archive, Allevio transcript archive restricted access, archive health checks quarterly, meeting summary retrieval, past meeting intelligence lookup, SharePoint archive for meetings, MBL meeting record archive"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[action: 'archive [summary/transcript]' | 'retrieve [topic/date/entity]' | 'health-check' | 'retention-audit']"
---

# Meeting Summary Archive

This skill manages the archive and retrieval of meeting summaries and transcripts for all MBL entities, enforcing the SharePoint folder structure, retention policy, access controls, and HIPAA-compliant restricted archive for Allevio. It supports search and retrieval of prior decisions and commitments and runs quarterly archive health checks to confirm data integrity and access compliance.

## When to Use

- A completed meeting summary or transcript needs to be archived in SharePoint after processing
- Dr. Lewis or Matt Mathison needs to retrieve a prior meeting decision, commitment, or action item
- A quarterly archive health check is due (every quarter-end)
- An access control audit is needed to confirm who can read which entity's archived transcripts

## Archive Framework

```
MEETING INTELLIGENCE ARCHIVE — MBL PARTNERS
============================================
Action: [ARCHIVE / RETRIEVE / HEALTH-CHECK / RETENTION-AUDIT]

=== ARCHIVE STRUCTURE ===

SharePoint Root: /Meeting Intelligence/

  /MBL/
    /[Year]/
      /[Month]/
        /[YYYY-MM-DD]-[meeting-name]-transcript.txt  (if transcript retained)
        /[YYYY-MM-DD]-[meeting-name]-summary.md
        /[YYYY-MM-DD]-[meeting-name]-action-items.md
  
  /Allevio/          ← RESTRICTED: Dr. Lewis + Allevio CEO only
    /[Year]/
      /[Month]/
        /[YYYY-MM-DD]-[meeting-name]-transcript.txt  (PHI-cleared only)
        /[YYYY-MM-DD]-[meeting-name]-summary.md
        /[YYYY-MM-DD]-[meeting-name]-action-items.md
  
  /HIVE/
    /[Year]/
      /[Month]/
        /[same structure as MBL]
  
  /Column6/
    /[Year]/
      /[Month]/
        /[same structure as MBL]
  
  /Monthly-Reports/
    /[YYYY-MM]-monthly-report.md
    /[YYYY-MM]-matt-monthly-brief.md
  
  /Decision-Log/        ← RETAINED INDEFINITELY
    /MBL-decisions.md   (running log; all MBL decisions appended)
    /Allevio-decisions.md (restricted)
    /HIVE-decisions.md
    /Column6-decisions.md
  
  /Action-Item-History/  ← 2-year retention
    /[Year]/[Month]-action-items-[entity].csv
  
  /OKRs/
    /[YYYY-Q#]-okr-report.md
  
  /KPI-Dashboard/
    /[YYYY-MM]-kpi-snapshot.md
  
  /Pipeline-Health/
    /[YYYY-MM-DD]-pipeline-health.md
  
  /Quality-Reviews/
    /[YYYY-MM-DD]-quality-review-[summary-id].md
  
  /Attribution-Checks/
    /[YYYY-MM-DD]-attribution-[summary-id].md
  
  /Privacy-Checks/
    /[YYYY-MM-DD]-privacy-check-[output-id].md
  
  /HIPAA-Scans/          ← RESTRICTED: Dr. Lewis only
    /[YYYY-MM-DD]-hipaa-scan-[transcript-id].md
    /incident-register.md
  
  /Deal-Intelligence/    ← RESTRICTED: Dr. Lewis + Matt Mathison only
    /[Deal-Code]/
      /Meeting-Intelligence/
        /[YYYY-MM-DD]-meeting-brief.md

=== RETENTION POLICY ===

  | Content Type | Retention Period | Notes |
  |--------------|-----------------|-------|
  | Transcripts (PHI-cleared) | 1 year | Deleted after 1 year unless flagged for legal hold |
  | Meeting summaries | 3 years | All entity summaries |
  | Decision log | Indefinitely | Decisions are organizational records; never auto-deleted |
  | Action item history | 2 years | Monthly CSV exports; supports closure rate trend analysis |
  | Program reports (OKR, KPI, ops review) | 3 years | |
  | Pipeline health reports | 2 years | |
  | Quality review logs | 3 years | |
  | HIPAA scan logs | 6 years | HIPAA requirement |
  | PHI incident records | 6 years | HIPAA requirement |
  | Deal meeting briefs | 5 years post-deal | Or indefinitely if deal is still active |
  | Privacy check logs | 3 years | |

  Deletion protocol:
  - Automated retention labels in SharePoint trigger deletion reminders at retention expiry
  - Dr. Lewis reviews expiry list before deletion is executed (no automatic deletion)
  - Legal hold overrides retention policy for any document subject to litigation or regulatory inquiry

=== ACCESS CONTROL MATRIX ===

  | Folder | Dr. Lewis | Matt Mathison | Jimmy Lindsley | Allevio CEO | HIVE CEO | Column6 CEO | All MBL |
  |--------|-----------|---------------|----------------|-------------|----------|-------------|---------|
  | /MBL/ | R/W | R | R | No | No | No | Read |
  | /Allevio/ | R/W | R | No | R | No | No | No |
  | /HIVE/ | R/W | R | No | No | R | No | No |
  | /Column6/ | R/W | R | No | No | No | R | No |
  | /Decision-Log/MBL | R/W | R | R | No | No | No | No |
  | /Decision-Log/Allevio | R/W | R | No | R | No | No | No |
  | /HIPAA-Scans/ | R/W | No | No | No | No | No | No |
  | /Deal-Intelligence/ | R/W | R | No | No | No | No | No |

=== SEARCH AND RETRIEVAL ===

  When Dr. Lewis or Matt Mathison needs to find a prior decision or commitment:
  
  Step 1 — Identify search parameters:
    - Entity: [MBL / Allevio / HIVE / Column6 / Any]
    - Date range: [from] to [to]
    - Topic or keyword: [decision topic / person name / action item description]
    - Content type: [decision / action item / transcript / summary]
  
  Step 2 — Search path:
    Primary: Decision-Log for the entity (running log; fastest search)
    Secondary: Monthly summaries (entity + year + month folder)
    Tertiary: Action-Item-History CSV (for specific action item lookups)
    Last resort: Raw transcript search (slowest; only when decision log and summaries insufficient)
  
  Step 3 — Return format:
    - Finding: [exact text of decision or commitment]
    - Source: [document name + SharePoint path]
    - Date: [meeting date]
    - Attribution: [who decided or committed]
    - Context: [1-2 sentences of surrounding context from the source document]

=== QUARTERLY ARCHIVE HEALTH CHECK ===

  Run at end of each quarter:
  [ ] Folder structure intact (no missing entity folders; no rogue folders created)
  [ ] Retention labels applied to all documents
  [ ] Documents past retention date: [N] — Dr. Lewis reviews before deletion
  [ ] Access control audit:
      - Pull current permissions for all restricted folders
      - Confirm no unauthorized users have been added
      - Confirm entity CEOs only access their entity's folder
      - Confirm /HIPAA-Scans/ is Dr. Lewis only
      - Confirm /Deal-Intelligence/ is Dr. Lewis + Matt Mathison only
  [ ] Decision logs current (no gaps in the monthly appends)
  [ ] HIPAA scan logs complete for all Allevio transcripts processed this quarter
  [ ] Storage consumption: [current storage used; projected growth]
  [ ] Any SharePoint platform changes that affect archive integrity: [YES/NO]
  Health check result: HEALTHY / ISSUES FOUND — [list]
```

## Output Format

```markdown
## Archive Action — [ACTION TYPE] — [DATE]

**Action:** [ARCHIVE / RETRIEVE / HEALTH-CHECK / RETENTION-AUDIT]
**Entity:** [entity]
**Executed by:** Dr. John Lewis

**[If ARCHIVE:]**
Document archived: [path]
Retention label applied: [retention period]
Access control: [who has access]

**[If RETRIEVE:]**
Search parameters: [entity; date range; topic]
Result: FOUND / NOT FOUND
Finding: [exact text if found]
Source: [SharePoint path + meeting date]
Attribution: [who decided/committed]

**[If HEALTH-CHECK:]**
Folders: INTACT / ISSUES — [list]
Access control: COMPLIANT / VIOLATIONS — [list]
Retention: [N documents past expiry — pending Dr. Lewis review]
Result: HEALTHY / ISSUES FOUND

**[If RETENTION-AUDIT:]**
Documents past retention: [N]
Documents approaching retention (within 30 days): [N]
Recommended deletions: [list — Dr. Lewis approves before execution]
Legal holds active: [N]
```

## Output Contract

- **The Decision Log is the most important archive component and is retained indefinitely.** Decisions made in meetings shape organizational direction, financial commitments, and strategic choices — they are organizational records, not administrative documents. While transcripts expire after 1 year and summaries expire after 3 years, the decision log for each entity is never automatically deleted. Dr. Lewis appends decisions from each week's meeting intelligence to the running decision log, which becomes the authoritative record of what MBL's leadership team decided and when. Retrieval of prior decisions always starts with the decision log.

- **No document is deleted without Dr. Lewis review, even after the retention period expires.** Retention labels trigger deletion reminders — not automatic deletion. Dr. Lewis reviews every document approaching expiry to confirm: (1) no active legal hold; (2) no ongoing deal or regulatory matter that makes the document relevant; (3) the content has been superseded by a newer document rather than remaining the only record of a decision or commitment. This manual gate prevents the accidental loss of organizational knowledge that retention automation can cause when applied without human judgment.

- **The Allevio archive is operationally isolated from all other entity archives.** The SharePoint permission architecture ensures that the Allevio folder — including all transcripts, summaries, decision logs, and HIPAA scan records — is inaccessible to HIVE, Column6, or general MBL users. This isolation is not just a security control; it is a HIPAA compliance requirement. Cross-entity data leakage through the archive (e.g., an Allevio summary accidentally accessible to HIVE's operations team) is a HIPAA compliance event. The quarterly access control audit specifically checks Allevio folder permissions first.

## System Dependencies

### Reads from
- Meeting intelligence output files (summaries, briefs, action item reports) for archiving
- SharePoint permission reports (for access control audits)
- Retention label configuration (SharePoint compliance center)
- HIPAA scan logs (for Allevio archive completeness verification)

### Writes to
- SharePoint: all folders per the archive structure above
- Decision logs (appended weekly after meeting intelligence cycle)
- Action item history CSVs (exported monthly from Monday.com)
- Quarterly health check report: SharePoint /Meeting Intelligence/Archive-Health/[YYYY-Q#]-health.md

### HITL Required
- Dr. Lewis: owns all archive operations; executes quarterly health checks; approves all document deletions; manages access control matrix
- Matt Mathison: not involved in archive operations; retrieval requests are fulfilled by Dr. Lewis on his behalf
- Entity CEOs: notified if their entity's archive has access control violations or data integrity issues

## Test Cases

1. **Golden path:** Weekly archive run — 4 entity summaries archived in correct entity/year/month folders, 3 decisions appended to respective decision logs, action items added to monthly CSV, retention labels confirmed applied — archive health log updated, no issues.
2. **Edge case:** A search request for "the decision about Allevio's billing system in Q4 2025" returns no result in the Decision Log. Archive must search the monthly summaries (secondary path), then the transcript archive (tertiary path), and if still not found, return "NOT FOUND in archive — this decision predates the archive period or was not captured in meeting intelligence." The retrieval must not fabricate or infer a decision that is not in the archive.
3. **Adversarial:** During a quarterly health check, the access control audit reveals that a new MBL staff member was granted blanket SharePoint access during IT onboarding, which inadvertently gave them read access to the Allevio restricted folder. Health check must flag this as a HIPAA access violation, notify Dr. Lewis immediately (not in the next quarterly report), trigger removal of the unauthorized access within 24 hours, assess whether the staff member accessed any Allevio documents during the access window, and document the event in the HIPAA incident register.

## Audit Log

The archive itself is the primary audit trail — every document stored includes its generation timestamp, the processing workflow that produced it, and the Dr. Lewis approval date where applicable. The quarterly health check is a meta-audit of the archive's integrity and is itself archived in /Archive-Health/. Access control violations are logged in a separate incident record. All archive health check records are retained for 3 years.

## Deprecation

This skill is deprecated when SharePoint's native records management, retention automation, and access control audit tools are configured with the same entity-specific folder structure, retention policies, HIPAA isolation controls, and decision log management this skill provides — and those configurations are validated against the same quarterly health check criteria. Dr. Lewis approves deprecation after a full year of automated archive operations without a data integrity or access control incident.
