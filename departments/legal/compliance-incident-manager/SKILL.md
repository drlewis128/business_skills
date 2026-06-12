---
name: compliance-incident-manager
description: "Manage compliance incidents and violations. Use when the user says 'compliance incident', 'compliance violation', 'policy violation', 'employee violated policy', 'compliance breach', 'regulatory violation', 'non-compliance', 'compliance failure', 'ethics violation', 'compliance issue', or 'we have a compliance problem'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <HIPAA|employment|financial|regulatory|policy>] [--severity <P1|P2|P3>] [--mode <intake|investigate|report>]"
---

# Compliance Incident Manager

Manage compliance incidents and policy violations for MBL portfolio companies. A compliance incident is any event that involves a violation of law, regulation, or company policy. Effective compliance incident management requires rapid identification, assessment, containment, investigation, and remediation — and the decision of whether to self-report to a regulatory authority. This skill manages the compliance incident lifecycle.

## When to Use
- A compliance violation or potential violation is discovered
- A regulatory complaint or inquiry is received
- An employee violates a material policy (HIPAA, anti-corruption, financial controls)
- An internal audit or whistleblower report reveals a compliance problem
- Post-incident review and root cause analysis

## Incident Severity Levels

```
P1 — CRITICAL (respond same day)
  - Active HIPAA breach (PHI disclosed without authorization)
  - Active financial fraud (unauthorized transfer, theft)
  - Regulatory violation with mandatory reporting deadline
  - Criminal conduct by any employee
  - Retaliation against a whistleblower reporter
  → Notify: Dr. Lewis + Matt Mathison immediately; engage outside counsel same day

P2 — HIGH (respond within 48 hours)
  - Potential HIPAA violation (PHI accessed without authorization — not yet confirmed as breach)
  - Policy violation by management-level employee
  - Significant financial control failure
  - AKS/Stark violation concern (Allevio)
  → Notify: Dr. Lewis within 24 hours; assess outside counsel need within 48 hours

P3 — MEDIUM/LOW (respond within 5 business days)
  - Employee policy violation (acceptable use, gifts policy)
  - Minor data handling error (not PHI, not reportable)
  - Procedural non-compliance (missed deadline, incomplete documentation)
  → Notify: HR manager + Dr. Lewis; standard investigation timeline
```

## Output Format

```markdown
# Compliance Incident Report — <Incident ID>
**Incident ID:** CI-<year>-<###>
**Date discovered:** <date> | **Date reported:** <date>
**Entity:** <name> | **Severity:** P1 / P2 / P3
**Type:** HIPAA / Financial / Employment / Regulatory / Policy
**Reported by:** <name/anonymous> | **Lead investigator:** Dr. John Lewis

---

## Incident Overview

**Summary:** <factual description — 2-4 sentences>
**Discovery method:** Audit / Whistleblower / Self-reported / System alert / Third party
**Period of occurrence:** <date range if known>
**Employees involved:** <roles only — not names in public document>

---

## Initial Assessment

| Question | Answer |
|---------|--------|
| Is this a HIPAA breach? | Yes / No / Under investigation |
| Mandatory reporting required? | Yes / No / Assess (HIPAA: 60 days; GDPR: 72 hours; SEC: varies) |
| Is this ongoing? | Yes / No — contained |
| External parties affected? | Yes (patients, employees, customers) / No |
| Financial loss? | Yes $<amount> / No |
| Outside counsel needed? | Yes / No |

---

## Immediate Containment Actions

| Action | Owner | Status | Completed |
|--------|-------|--------|---------|
| Stop the ongoing violation | <role> | ✅ | <date> |
| Trigger legal hold | Dr. Lewis | ✅ | <date> |
| Preserve evidence | IT | ✅ | |
| Notify affected parties (if required) | Legal | 📅 | Within required timeframe |
| Report to regulatory authority (if required) | Dr. Lewis + Outside Counsel | 📅 | |

---

## Investigation Log

| Date | Activity | Finding | Notes |
|------|---------|---------|-------|
| <date> | Initial interview — involved employee | <summary> | |
| <date> | Document review | <summary> | |
| <date> | IT forensics review | <summary> | |

---

## Root Cause Analysis

**What happened:** <factual description>
**Why it happened:**
- Immediate cause: <direct cause>
- Root cause: <underlying cause — training gap, control failure, policy gap>

**Contributing factors:**
- <factor 1>
- <factor 2>

---

## Corrective Action Plan

| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| Disciplinary action per sanction policy | HR + Dr. Lewis | <date> | |
| Training — address root cause | HR | 30 days | |
| Control enhancement | IT | 60 days | |
| Policy update (if gap identified) | Dr. Lewis | 30 days | |

---

## Regulatory Notification Status (If Required)

| Authority | Notification Required? | Deadline | Status |
|---------|-------------------|---------|----|
| HHS OCR (HIPAA) | Yes / No | Within 60 days | |
| GDPR Supervisory Authority | Yes / No | Within 72 hours | |
| Law enforcement | Yes / No | As appropriate | |
| Affected individuals | Yes / No | Within 60 days | |

---

## Incident Closure

**Investigation finding:** Substantiated / Unsubstantiated / Inconclusive
**Sanctions applied:** <yes/no — per sanction policy>
**Corrective actions complete:** ✅ / 🟡 In progress
**Regulatory notifications complete:** ✅ / N/A
**Date closed:** <date>
**Closed by:** Dr. John Lewis
```

## Output Contract
- HIPAA breach notification deadlines always tracked — 60 days from discovery is an absolute deadline, not a target
- Containment before investigation — stop the bleeding before analyzing the wound
- Root cause always identified — incidents without root cause analysis create repeat incidents
- Corrective actions always specific, owned, and dated — vague corrective actions are not corrective
- HITL required: Dr. Lewis leads all compliance incidents; Matt Mathison notified for P1/P2 incidents; outside counsel engaged for P1 incidents and regulatory notifications; Allevio Compliance Officer for HIPAA incidents; HR for employment-related sanctions

## System Dependencies
- **Reads from:** Employee records, system access logs, HIPAA breach log, financial records (provided by entity teams)
- **Writes to:** Compliance incident report (retained in confidential Legal files)
- **HITL Required:** Dr. Lewis leads; outside counsel for P1 and regulatory notifications; Matt Mathison for P1/material P2; HR for sanctions; Allevio Compliance Officer for HIPAA

## Test Cases
1. **Golden path:** Allevio employee emails patient appointment list to personal Gmail account (P1 — HIPAA breach risk) → containment: IT immediately revoke Gmail attachment, M365 audit log pulled; assessment: 120 patient records, names and appointment dates (limited PHI), employee's own Gmail; 4-factor analysis: low acquisition risk (own account, immediate deletion confirmed); determination: low probability breach — no notification required but documented; employee receives HIPAA sanction per policy; training conducted; IT blocks personal email forwarding
2. **Edge case:** Anonymous whistleblower report alleges a manager has been approving expense reports for personal expenses (P2 financial) → investigation: pull 12 months of manager's expense reports, interview 2-3 non-involved employees about policy, review receipts; if substantiated: disciplinary action (up to termination), recover amounts, strengthen expense approval controls
3. **Adversarial:** Senior leader says "this isn't really a compliance issue, let's handle it internally and quietly" → if the incident is a regulatory violation (HIPAA, FCPA, financial fraud), it must be managed per the compliance incident process regardless of seniority of the involved parties; "handling it quietly" without documentation or outside counsel is itself a compliance risk; escalate to Dr. Lewis and engage outside counsel

## Audit Log
All compliance incidents retained with ID, dates, findings, and closure. HIPAA incidents retained for 6 years. Regulatory notifications retained. Corrective action completion tracked.

## Deprecation
Retire when entity deploys a GRC platform with integrated incident management, investigation workflows, and regulatory notification tracking.
