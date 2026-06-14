---
name: data-incident-responder
description: "Respond to data incidents — wrong data, pipeline failures, data loss. Use when the user says 'data is wrong', 'pipeline failed', 'the dashboard is wrong', 'bad data', 'data incident', 'data outage', 'fix the data problem', 'data is missing', 'wrong numbers', 'data breach', or 'data emergency'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--severity <P0|P1|P2|P3>] [--system <pipeline|dashboard|quality|security>]"
---

# Data Incident Responder

Respond to data incidents systematically: wrong data in reports, pipeline failures, data loss, or data security issues. Data incidents have different consequences depending on whether they're caught before or after they affect decisions. A data error that Matt Mathison acts on is significantly worse than one caught in QA. Fast, structured response minimizes impact. For MBL, data incidents also have compliance dimensions — HIPAA breaches from the Allevio data stream require a mandatory response protocol.

## When to Use
- A pipeline failed and data is stale or missing
- A dashboard is showing wrong numbers
- Data that shouldn't be accessible was accessed
- HIPAA: PHI may have been exposed or accessed without authorization
- A user reports "the numbers don't look right"
- Dr. Lewis spots an anomaly that suggests a data quality issue

## Severity Classification

```
P0 — Critical (respond immediately; 24/7):
  - Financial data that has already been acted on is wrong
  - HIPAA breach: PHI potentially exposed or accessed without authorization
  - Data used in an LP report (HIVE) is wrong after distribution
  - Complete data blackout: all dashboards dark, no data available
  Response: Within 1 hour; Matt Mathison notified immediately

P1 — High (respond same day; business hours):
  - Management reporting data is wrong (discovered before being acted on)
  - Pipeline failure affecting >1 dashboard
  - Data fresher than 26 hours SLA is failing; team is operating without current data
  Response: Within 4 hours; Dr. Lewis + Matt Mathison notified

P2 — Medium (respond within 24 hours):
  - Individual dashboard showing stale data (< 48 hours old)
  - Data quality issue that affects < 1 report
  - Pipeline failure that doesn't affect any stakeholder-facing reports
  Response: Dr. Lewis addresses next business day

P3 — Low (respond within 1 week):
  - Minor data quality issue; no immediate stakeholder impact
  - Missing optional field; doesn't affect any calculations
  Response: Added to backlog; addressed in next sprint
```

## Incident Response Process

```
Step 1 — Detect and classify (< 30 minutes)
  How was it detected? (Anomaly alert, stakeholder report, Dr. Lewis self-identified)
  What data is affected?
  What downstream impact exists? (Who has seen this data? Was it acted on?)
  Classify severity

Step 2 — Contain (P0/P1 — immediate)
  If wrong data is in a live dashboard: take the metric offline or add "Data Quality Notice"
  If pipeline is down: identify the last clean data; document lag
  If HIPAA breach: notify Allevio privacy officer immediately; document discovery time

Step 3 — Investigate
  Trace the data lineage backward: where did the wrong data originate?
  Check pipeline logs: when did the failure occur?
  Check source system: is the issue in the source or the transformation?

Step 4 — Remediate
  Fix the root cause (not just the symptom)
  Re-run pipeline or re-calculate the metric
  Validate the corrected data against a known-good source

Step 5 — Communicate
  Notify all stakeholders who saw or used the wrong data
  Provide the corrected data and context
  Document what happened and what the correct data is

Step 6 — Post-incident review (within 72 hours)
  Root cause analysis
  Prevention measures
  Update monitoring/alerting to catch this earlier next time
```

## Output Format

```markdown
# Data Incident Report — INC-<N>
**Date detected:** <datetime> | **Detected by:** Dr. Lewis / [stakeholder name]
**Severity:** P0 / P1 / P2 / P3
**Status:** Investigating / Contained / Resolved

---

## Incident Summary

**What happened:** <1-2 sentences describing the incident>
**Systems affected:** <pipeline / dashboard / data domain>
**Data affected:** <which metrics / tables / date ranges>
**Stakeholders impacted:** <who saw or acted on the wrong data>
**HIPAA flag:** Yes (PHI potentially involved — see HIPAA section) / No

---

## Timeline

| Time | Event | Action |
|------|-------|--------|
| <datetime> | Incident detected | Triaged to P<N> |
| <datetime> | Root cause identified | [Root cause] |
| <datetime> | Containment applied | [Dashboard taken offline / notice added] |
| <datetime> | Fix deployed | [What was fixed] |
| <datetime> | Data validated | Confirmed correct |
| <datetime> | Stakeholders notified | [Who, how, what they were told] |
| <datetime> | Incident closed | |

---

## Root Cause Analysis

**Root cause:** <Technical explanation of what caused the incident>
**Contributing factors:** <What allowed this to happen (missing monitoring, process gap, etc.)>
**Data affected scope:** Records from <date> to <date>; affecting <N> users; <N> dashboards

---

## HIPAA Section (if PHI involved)

**PHI involved:** Yes / No
**Nature of potential exposure:** <What PHI data may have been involved>
**Unauthorized access:** Confirmed / Possible / Ruled out
**Discovery to notification timeline:** <N> hours (requirement: notify within 72 hours of discovery)
**Allevio privacy officer notified:** Yes — <datetime> | No (explain why not applicable)
**Breach notification required:** Legal determination by <date>
**Notification sent to:** [Affected individuals if required]

---

## Remediation

**Fix applied:** <Specific technical fix>
**Validation:** <How the corrected data was verified>
**Data corrected in:** <Specific system/table/metric>
**Retroactive correction:** <Were previously wrong values corrected? How?>

---

## Stakeholder Communication

**Communication sent to:** <List of people notified>
**Communication content:**

---
To: [Stakeholder]
Subject: Data Correction Notice — [Metric/Dashboard]

[Stakeholder name],

We identified an issue with [metric/dashboard] that showed [wrong value] for [date range].

The correct value is [corrected value].

[Brief explanation of what happened]

This has been corrected as of [datetime]. No further action is needed on your part.

I apologize for any inconvenience this caused.

Dr. John Lewis
---

---

## Prevention Measures

| Measure | Owner | Implementation | By when |
|---------|-------|--------------|---------|
| [New monitoring alert] | Dr. Lewis | Add threshold alert for this condition | 1 week |
| [Process change] | Dr. Lewis | [What process changes prevents recurrence] | 2 weeks |
| [dbt test added] | Dr. Lewis | Add data quality test to catch this in pipeline | 1 week |
```

## Output Contract
- Severity classified immediately upon detection — classification determines response urgency
- HIPAA section always completed if Allevio data is involved — even potential PHI exposure requires immediate notation
- Stakeholder communication always sent when wrong data was visible — never assume they didn't notice
- Prevention measures always included — an incident without prevention measures is likely to recur
- HITL required: Dr. Lewis responds to all P0/P1 incidents; P0 incidents require immediate Matt Mathison notification; HIPAA incidents require Allevio privacy officer notification within 72 hours of discovery; post-incident review completed by Dr. Lewis within 72 hours of resolution

## System Dependencies
- **Reads from:** Pipeline logs, BigQuery data, data catalog, source systems
- **Writes to:** Incident log (SharePoint/Data/Incidents); stakeholder communication (Outlook); HIPAA breach log (separate, secure)
- **HITL Required:** Dr. Lewis owns incident response; P0 → Matt Mathison immediately; HIPAA → Allevio privacy officer immediately; post-incident review by Dr. Lewis

## Test Cases
1. **Golden path:** P1 incident — GoHighLevel pipeline failure → Detection: anomaly alert at 6am (pipeline not completed); Severity: P1 (CRM data stale 26h, affects pipeline dashboard); Containment: add "Data as of [date]" notice to CRM dashboard; Root cause: GoHighLevel rate limit change; Fix: increase backoff delay; Validation: pipeline ran successfully with new config; Matt Mathison notified at 9am with context; correction notice to stakeholders by 10am; prevention: add rate limit monitoring alert; post-incident review within 48h
2. **Edge case:** HIPAA potential breach — Allevio meeting summary accidentally included in MBL-wide summary report → immediately classify as P0; Allevio privacy officer notified within 1 hour of discovery; remove the affected summary from the report immediately; investigate whether PHI was included (names? patient context?); if PHI confirmed, begin 72-hour breach notification countdown; Dr. Lewis and Matt Mathison notified; legal engaged
3. **Adversarial:** Team wants to fix the wrong data quietly without telling stakeholders who saw it → this is an Integrity failure (I in THRIVE); stakeholders who made decisions based on wrong data deserve to know; not notifying them doesn't undo the wrong decision — it just removes their ability to correct it; transparency is always the right call; document, communicate, and improve

## Audit Log
All incidents logged permanently. HIPAA incidents maintained in a separate, secure log per HIPAA requirements. Post-incident reviews retained. Prevention measure completion tracked.

## Deprecation
Retire when MBL has a dedicated data engineering function with automated incident detection, escalation, and structured response playbooks embedded in the team's operating model.
