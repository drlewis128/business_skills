---
name: thrive-ethics-reporter
description: "ethics reporter, ethics incidents, integrity incidents, misrepresentation, conflict of interest, policy violation, ethical gray area, ethics incident log, ethics investigation, entity CEO notification, Matt Mathison ethics notification, legal counsel trigger, HIPAA ethics, Allevio ethics, whistleblower channel, annual ethics summary, ethics tracking, ethics reporting, ethics compliance, MBL ethics, portfolio ethics, ethics dashboard, ethics audit, ethics violations, ethics review, report ethics incident, ethics escalation, ethics summary report"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [incident-type: misrepresentation | conflict-of-interest | policy-violation | gray-area | HIPAA] [output: incident-log | investigation | annual-summary]"
---

# THRIVE Ethics Reporter

The THRIVE Ethics Reporter tracks, logs, investigates, and reports ethics and integrity incidents across the MBL portfolio. It is the operational mechanism that ensures Integrity violations are not absorbed quietly — they are documented, investigated, and resolved in a way that protects MBL entities, their stakeholders, and the values that govern all decisions.

## When to Use

- An ethics incident (misrepresentation, conflict of interest, policy violation, or ethical gray area) has been identified or reported at any MBL entity
- An entity CEO or Dr. Lewis needs an ethics incident log for a specific entity or time period
- A whistleblower report has been submitted and requires structured investigation initiation
- Matt Mathison requires an annual ethics summary for portfolio governance or LP reporting

## Ethics Reporter Framework

```
THRIVE ETHICS REPORTER FRAMEWORK
===================================

SECTION 1 — ETHICS INCIDENT TYPE CLASSIFICATION
  MISREPRESENTATION:    Deliberate or material distortion of facts to any stakeholder
  CONFLICT OF INTEREST: Personal financial or relational interest that influences a business decision without disclosure
  POLICY VIOLATION:     Confirmed breach of a documented MBL or entity policy
  ETHICAL GRAY AREA:   Situation where the right action is unclear; no confirmed violation yet
  HIPAA DIMENSION:     Any ethics incident at Allevio involving PHI access, disclosure, or breach risk
  THRIVE INTEGRITY:    Any incident that activates or approaches the Integrity kill criterion

SECTION 2 — INCIDENT LOG STRUCTURE
  Required fields for every logged incident:
    - Incident ID (auto-generated)
    - Entity
    - Date reported
    - Date incident occurred (if known)
    - Type (see Section 1 classification)
    - Reporter identity (or "anonymous" if whistleblower channel)
    - Subject(s) of report (by role at logging stage; name added post-investigation)
    - Summary of alleged incident (behavioral, factual language only)
    - Initial severity assessment: LOW | MODERATE | HIGH | CRITICAL
    - Assigned investigator
    - Status: OPEN | UNDER INVESTIGATION | RESOLVED | CLOSED — NO VIOLATION FOUND

SECTION 3 — INVESTIGATION PROTOCOL
  GRAY AREA / LOW: Entity CEO reviews; no formal investigation unless facts escalate
  MODERATE:        Entity CEO + HR conduct review; findings documented within 10 business days
  HIGH:            Entity CEO + HR + Dr. Lewis; formal investigation; findings within 15 business days
  CRITICAL:        Entity CEO + HR + Dr. Lewis + outside legal counsel (if warranted); Matt Mathison notified same day
  Investigation principles: facts first; no predetermined conclusions; subject informed of report within 48 hours (except when notification would compromise investigation)
  Whistleblower anonymity: maintained throughout investigation unless reporter consents to disclosure

SECTION 4 — NOTIFICATION THRESHOLDS
  Entity CEO notified:       All incidents at MODERATE, HIGH, or CRITICAL upon receipt
  Dr. Lewis notified:        All incidents at HIGH or CRITICAL; any MODERATE involving a manager-level role
  Matt Mathison notified:    CRITICAL incidents (same day); any entity CEO as subject; annual summary
  Legal counsel triggered:   CRITICAL incidents with potential legal exposure; HIPAA breach at Allevio; LP reporting misrepresentation at HIVE; client fraud allegation at Column6
  External regulator:        Only after legal counsel review; never unilaterally by skill

SECTION 5 — HIPAA ETHICS DIMENSION (ALLEVIO)
  Any ethics incident at Allevio involving PHI is simultaneously a potential HIPAA incident
  HIPAA breach: follow HIPAA breach notification rule (60-day clock from discovery)
  PHI access by unauthorized personnel: logged as CRITICAL regardless of apparent intent
  Clinical ethics (care quality, documentation accuracy): entity CEO + CMO + Dr. Lewis
  Allevio ethics incidents are reviewed by Dr. Lewis with HIPAA compliance lens before any external communication

SECTION 6 — WHISTLEBLOWER CHANNEL
  Whistleblower reports accepted: anonymous or named; any entity
  Channel: designated secure email or Krista.ai whistleblower intake (entity CEO does NOT see the intake)
  Intake reviewed by: Dr. Lewis (MBL level); HR (entity level)
  Anti-retaliation: any retaliation against a whistleblower = separate CRITICAL incident automatically
  Response to reporter: acknowledgment within 48 hours (if contact info provided)

SECTION 7 — ANNUAL ETHICS SUMMARY
  Compiled by: Dr. Lewis; reviewed by Matt Mathison
  Content: incident count by type and entity, severity distribution, resolution rates, systemic patterns, remediation actions taken, open items
  Audience: Matt Mathison; entity CEOs (entity-specific section only); available for LP governance review on request
  Timing: annually in Q1 for the prior year
  HIVE LP reporting integrity section: included in annual LP report as governance disclosure
```

## Output Format

```markdown
## THRIVE Ethics Incident Report — [Entity] — [Date]

### Incident ID: [auto]
### Type: [MISREPRESENTATION | CONFLICT OF INTEREST | POLICY VIOLATION | GRAY AREA | HIPAA]
### Severity: [LOW | MODERATE | HIGH | CRITICAL]
### Status: [OPEN | UNDER INVESTIGATION | RESOLVED | CLOSED]

### Incident Summary
[Factual, behavioral description of the alleged incident — 3-5 sentences]

### Notification Log
| Recipient | Notified | Method |
|-----------|---------|--------|
| Entity CEO | [date/time] | [Krista.ai / email] |
| Dr. Lewis | [date/time] | [Krista.ai / email] |
| Matt Mathison | [if CRITICAL — date/time] | |
| Legal Counsel | [if triggered — date/time] | |

### Investigation Plan
- Assigned investigator: [name/role]
- Target completion: [date]
- Subject notified: [Y/N / date]

### Resolution (if complete)
- Finding: [VIOLATION CONFIRMED | NO VIOLATION | INSUFFICIENT EVIDENCE]
- Action taken: [PIP | separation | policy update | training | no action]
- THRIVE kill criterion: [ACTIVATED | NOT ACTIVATED]

### Open Items: [list]
```

## Output Contract

- **Every ethics incident is logged before it is investigated — not after the entity CEO decides it is serious enough.** The logging step creates a record of the organization's awareness and response. An incident that was known but not logged, and later surfaces through litigation or regulatory action, cannot be defended — the absence of a log implies either that the organization did not take it seriously or that it attempted to suppress it. Logging first, with severity assigned provisionally, protects MBL legally and culturally.

- **Whistleblower anonymity is maintained by structural separation, not by trust.** The intake channel is designed so the entity CEO does not see the report until after Dr. Lewis and HR have assessed it — because entity CEOs are frequently the subject or the organizational context of a report. Trust-based anonymity (asking people to keep it confidential after they see it) is not sufficient protection. The structural separation is the policy, and any breach of it is itself a CRITICAL ethics incident.

- **The annual ethics summary is a governance document, not a self-congratulatory one.** It reports incidents that occurred, patterns that were identified, and remediations that were or were not effective. Summaries that show zero incidents in a complex multi-entity portfolio are not credible and should be flagged as potentially indicating underreporting rather than celebrated as a culture win. Dr. Lewis writes the summary with that lens and presents findings to Matt Mathison with honest pattern analysis.

## System Dependencies

### Reads from
- Krista.ai: whistleblower intake, meeting transcripts for pattern analysis
- HR system: prior incident history, policy documentation, PIP and separation records
- Financial systems (QB, Covercy, Column6 billing): for misrepresentation and billing integrity investigations
- M365 email/Teams: communications review for investigation evidence (legal authorization required)

### Writes to
- Ethics incident log (secure, access-controlled): all incident records
- HR system: confirmed violations, remediation actions, THRIVE kill criterion activations
- Krista.ai: entity CEO and Dr. Lewis notifications per threshold
- Annual ethics summary document: Dr. Lewis → Matt Mathison

### HITL Required
- Dr. Lewis reviews all HIGH and CRITICAL incident classifications before investigation launch
- Entity CEO approves investigation assignment (unless they are the subject)
- Matt Mathison reviews annual ethics summary before any LP distribution

## Test Cases

1. **Golden path:** A Column6 employee submits an anonymous report via whistleblower channel alleging that campaign performance data was adjusted before being sent to a client. Dr. Lewis receives the intake, classifies as HIGH (potential client misrepresentation), notifies entity CEO and HR, assigns investigation to HR + entity CEO, and sets a 15-day completion target. Investigation confirms the data was adjusted; employee receives PIP; client is informed with corrected data.

2. **Edge case:** An Allevio care coordinator reports an ethical gray area — a payer's authorization policy appears to be creating medically inappropriate denials, and the care team is being asked to document in a way that may be misleading. Skill classifies as GRAY AREA (no confirmed violation) with HIPAA monitoring flag, escalates to entity CEO + Dr. Lewis for legal review before any documentation guidance is issued to the care team.

3. **Adversarial:** An entity CEO attempts to resolve a MODERATE ethics incident informally ("handled it internally") without logging it in the incident system. A week later, the subject files an HR complaint referencing the same incident. Skill detects the gap (complaint references an event with no incident log entry), flags the absence of the log as a potential Integrity concern about the entity CEO's handling, and routes to Dr. Lewis for review of the entity CEO's actions — separate from the original incident investigation.

## Audit Log

All ethics incidents are logged in a permanent, access-controlled audit trail with full chain of custody: report date, classification date, investigator, notification events, subject notification, investigation findings, remediation actions, and closure date. The audit trail is reviewed by Dr. Lewis quarterly and by Matt Mathison annually. HIPAA-related incidents at Allevio are maintained in a separate HIPAA-compliant log for regulatory retention purposes (6 years minimum).

## Deprecation

This skill is deprecated only if a formal Ethics & Compliance platform (e.g., a dedicated GRC tool) is implemented across all MBL entities and replicates all seven framework sections natively. Partial platform coverage (e.g., incident logging without annual summary or whistleblower intake) does not qualify as deprecation. Any platform transition requires Dr. Lewis and Matt Mathison approval and a parallel-run period of ≥90 days.
