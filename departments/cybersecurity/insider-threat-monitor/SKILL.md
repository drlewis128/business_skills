---
name: insider-threat-monitor
description: "Monitor for and respond to insider threat indicators. Use when the user says 'insider threat', 'employee stealing data', 'disgruntled employee', 'data theft', 'departing employee data risk', 'unusual employee activity', 'employee downloading everything', or 'suspicious employee behavior'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scenario <departing|suspicious|hr-flagged>] [--user <username>]"
---

# Insider Threat Monitor

Monitor for and respond to insider threat indicators. Insider threats cause more data loss than external attacks — and are harder to detect because the actor has legitimate access. The highest-risk scenarios for MBL portfolio companies are: departing employees (especially sales and customer success who have CRM data), disgruntled employees post-disciplinary action, and contractors with broad access. This skill provides detection signals, response procedures, and legal/HR coordination guidance.

## Critical Constraint
**This skill operates in a legal and HR-sensitive domain.** Employee monitoring must comply with applicable labor law, employment agreements, and privacy regulations. All investigations must be coordinated with Legal and HR. Do not take investigative action on an employee without HR and Legal alignment.

## When to Use
- HR has flagged an employee for disciplinary action, PIP, or termination
- Employee is departing — especially high-access roles (IT, finance, sales, exec)
- Security tool detects unusual bulk data access or download
- DLP alert triggered by an employee
- Complaint or report about an employee accessing unauthorized data

## Insider Threat Risk Indicators

### Behavioral Indicators (HR-reported)
- Unexplained resignation or notice period
- Performance improvement plan (PIP) or disciplinary action in progress
- Recent denial of promotion or request
- Complaints or reports from other employees
- Expression of grievances about the company

### Technical Indicators (IT-detected)
| Signal | Where to Detect | Risk |
|--------|----------------|------|
| Bulk file downloads from SharePoint/OneDrive | M365 Compliance Center | High |
| Mass email download via IMAP | M365 audit log | High |
| Unusual after-hours data access | M365 sign-in logs | Medium |
| USB drive connected | Endpoint DLP / Intune | High |
| Email to personal account with attachments | M365 DLP | High |
| Accessing data outside normal role | M365 audit log | Medium |
| Deleting files before departure | M365 audit log | Critical |
| Creating new cloud shares/links | SharePoint audit log | High |
| Installing new software on work device | Intune / EDR | Medium |

## Output Format

```markdown
# Insider Threat Investigation — <Entity>
**Date:** <date> | **Subject:** [role, not name until legal/HR aligned]
**Trigger:** HR notification / Technical alert / DLP / Complaint
**Priority:** High / Critical
**Investigator:** IT Manager + Dr. Lewis
**Status:** Monitoring / Active Investigation / Contained / Closed

CONFIDENTIAL — Legal Privilege — HR and Dr. Lewis only

---

## Investigation Authorization

- [ ] HR notified and aligned: <name>, <date>
- [ ] Legal counsel notified: <date>
- [ ] Dr. Lewis authorized investigation: <date>
- [ ] Investigation scope defined and documented

---

## Risk Assessment

| Factor | Status | Details |
|--------|--------|---------|
| Notice/departure status | Yes — 2 weeks notice given | Departing <date> |
| Access level | High — admin access to M365, CRM, SharePoint | |
| Data types accessible | PHI / Financial / Customer data / LP data | |
| HR/disciplinary status | PIP in progress / Termination planned | |
| Pattern of unusual activity detected | Yes / No | <describe if yes> |

**Risk level:** High / Critical

---

## Technical Evidence Collected

| Date/Time | Activity | System | Detail |
|---------|---------|--------|--------|
| <date/time> | Bulk OneDrive download | M365 OneDrive | 847 files downloaded in 2 hours |
| <date/time> | Email with attachments to personal Gmail | M365 Exchange | 3 emails with sales contact list CSV |
| <date/time> | USB device connected | Endpoint (HW-015) | Unknown USB device — content unknown |

---

## Containment Actions (HR/Legal authorized)

- [ ] Access review and scoping (read the logs before taking action)
- [ ] Increase monitoring on account (do not notify the subject)
- [ ] DLP policy enhanced for this user (silent)
- [ ] Pre-exit checklist prepared (device return, account deactivation plan)
- [ ] Legal hold placed on email and data (if legal action possible)

---

## Exit / Offboarding Actions (Coordinated with HR)

| Action | Timing | Authorized by | Done? |
|--------|--------|-------------|-------|
| Account access revoked (all systems) | At/after termination meeting | IT Manager + HR | [ ] |
| Device collected at termination meeting | At meeting | HR | [ ] |
| CRM accounts reviewed for changes | Same day | IT Manager | [ ] |
| Customer accounts locked/transferred | Before departure | CS Manager | [ ] |
| Non-compete/NDA reminder from Legal | At departure | Legal | [ ] |
| Legal hold maintained 90 days | Post-departure | IT + Legal | [ ] |

---

## Legal / HR Notes

**Investigation confidentiality:** This investigation must not be disclosed to the subject, their team, or anyone not on this list.
**Evidence retention:** All technical evidence preserved in legal hold. Do not delete.
**Employment counsel engaged:** Yes / No / Recommended
```

## Output Contract
- HR and Legal must be aligned before any investigation action — no solo IT investigations of employees
- Evidence always preserved before account action — deletion of accounts destroys evidence
- Legal hold placed as soon as an investigation is authorized
- Account revocation at/after the termination meeting, not before (coordinated with HR to avoid tipping off the employee)
- HITL required: Dr. Lewis authorizes all insider threat investigations; HR coordinates timing of all account actions; Legal advises on evidence handling and legal hold; no action without all three aligned

## System Dependencies
- **Reads from:** M365 audit log, OneDrive activity, Exchange email logs, Intune endpoint logs, DLP alerts (provided — monitoring only)
- **Writes to:** Nothing without HR + Legal + Dr. Lewis authorization
- **HITL Required:** Dr. Lewis + HR + Legal required for any investigation; account actions timed by HR; Legal advises on all evidence handling

## Test Cases
1. **Golden path:** Departing sales employee → standard departure monitoring shows 847 files downloaded from SharePoint 2 days before last day → HR + Legal notified, legal hold placed, evidence documented; at termination meeting: account revoked, device collected, legal counsel engaged for potential trade secret claim
2. **Edge case:** Technical alert triggers but HR has no concerns about this employee → monitoring continues for 2 weeks without action; if behavior continues or escalates, HR briefed with evidence
3. **Adversarial:** Manager wants to immediately revoke access and confront an employee they suspect → explains the legal risk of wrongful termination and tipping off the subject; coordinates the proper HR/Legal process; unauthorized action could expose MBL to significant legal liability

## Audit Log
All insider threat investigations logged with legal hold documentation. Evidence preserved. HR and Legal coordination documented. Actions authorized by Dr. Lewis documented.

## Deprecation
Retire when entity deploys a dedicated UEBA (User and Entity Behavior Analytics) platform integrated with Microsoft Sentinel, with automated anomaly detection and legal hold workflows.
