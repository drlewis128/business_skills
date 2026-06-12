---
name: audit-response-manager
description: "Manage regulatory audit and examination responses. Use when the user says 'audit response', 'regulatory audit', 'we got audited', 'OCR audit', 'IRS audit', 'external audit', 'audit findings', 'corrective action plan', 'audit request', 'document request', 'regulatory examination', or 'respond to audit'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--auditor <OCR|IRS|OSHA|SOC2|external>] [--phase <opening|response|findings|CAP>]"
---

# Audit Response Manager

Manage regulatory audit and examination responses for MBL portfolio companies. An audit or regulatory examination is not an emergency — it's a managed process. Organizations that respond to audits with organized documentation, clear communication, and well-structured corrective action plans come out better than those that treat audits as crises. This skill manages the audit response lifecycle: preparation, document production, findings response, and corrective action plans.

## When to Use
- Regulatory audit notification received (HHS OCR, IRS, OSHA, etc.)
- SOC 2 Type II audit fieldwork
- Customer security questionnaire that triggers an informal "audit"
- Audit findings received — building a corrective action plan
- Post-audit tracking of corrective action implementation

## CRITICAL: First 24 Hours After Audit Notification

```
IMMEDIATELY upon receiving audit/examination notice:
  ✅ Notify Dr. Lewis and Matt Mathison
  ✅ Do NOT produce any documents without understanding the scope
  ✅ Engage outside counsel (if regulatory audit — OCR, IRS, OSHA)
  ✅ Trigger legal hold on all documents related to the audit scope
  ✅ Identify the lead internal respondent (Dr. Lewis for compliance audits)
  ✅ Acknowledge the notice within the required timeframe (typically 5-10 business days)
  ✅ Request extension if needed — most agencies will grant reasonable extensions

COMMUNICATIONS RULE:
  All communications with the auditor go through Dr. Lewis + outside counsel
  No employee should independently communicate with auditors without authorization
```

## Audit Types and Response Approach

| Audit Type | Agency | Trigger | Response Team | Counsel Required? |
|-----------|-------|---------|-------------|-----------------|
| HIPAA OCR Audit | HHS OCR | Complaint, breach, random audit | Dr. Lewis + Allevio Compliance + outside counsel | ✅ Yes |
| IRS Audit | IRS | Random selection, reporting inconsistency | CFO + outside tax counsel | ✅ Yes |
| OSHA Inspection | OSHA | Complaint, programmed inspection | HR + Safety + outside counsel | ✅ Yes (if complex) |
| SOC 2 Audit | CPA firm (third-party auditor) | SOC 2 Type I/II engagement | Dr. Lewis + IT | ❌ Legal counsel optional |
| Customer Security Audit | Customer's security team | Vendor qualification | IT + Dr. Lewis | ❌ Usually not needed |
| DOL Wage & Hour Investigation | DOL | Complaint, random audit | HR + CFO + outside employment counsel | ✅ Yes |

## Output Format

```markdown
# Audit Response Plan — <Entity>
**Date:** <date> | **Entity:** <name>
**Auditor:** <agency/firm> | **Audit type:** <type>
**Audit notice date:** <date> | **Response deadline:** <date>
**Lead respondent:** Dr. John Lewis
**Outside counsel:** <firm + partner, if engaged>

---

## Audit Overview

**Scope:** <describe what the auditor is reviewing>
**Period under review:** <dates>
**Documents requested:** <list from initial request>

---

## Document Production Plan

| Requested Document | Location | Responsible | Status | Produced? | Date |
|------------------|---------|-----------|--------|---------|------|
| HIPAA Security Risk Analysis (last 2 years) | SharePoint/Compliance | Allevio Compliance Officer | ✅ Ready | Pending | |
| Workforce training records | LMS export | HR | ✅ Ready | Pending | |
| Business Associate Agreement list | Legal Drive | Dr. Lewis | 🟡 2 BAAs missing — remediate first | | |
| Audit log samples (last 12 months) | Azure Sentinel | IT | 🟡 Need to extract | | |
| Security policy — current version | SharePoint | IT | ✅ Ready | | |
| Incident response log | IT ticketing | IT | ✅ | | |

**Documents with gaps — remediation before production:**
- BAA for IT MSP: execute this week before audit production
- Audit logs: IT to extract and format for production

---

## Communication Log

| Date | Type | Party | Summary | Action Required |
|------|------|-------|---------|---------------|
| <date> | Received | HHS OCR | Initial audit notice — HIPAA Security Rule focus | Acknowledge within 10 business days |
| <date> | Sent | HHS OCR | Acknowledgment letter; requested 30-day extension for document collection | Awaiting OCR confirmation |
| <date> | Call | HHS OCR + outside counsel | Scope clarification — OCR confirmed 2-year lookback | Document scope in file |

---

## Findings Response — Corrective Action Plan

(Complete after audit findings are received)

| Finding | Severity | Requirement | Our Response | Corrective Action | Owner | Due | Status |
|---------|---------|-----------|------------|-----------------|-------|-----|--------|
| Missing BAA for IT vendor | High | §164.308(b)(1) | Acknowledged; BAA now executed | Execute BAA ✅ Already done | Dr. Lewis | Done | ✅ |
| Audit log retention at 90 days (should be 6 years) | High | §164.312(b) | Acknowledged; Microsoft Sentinel configured | Extend retention to 6 years | IT | 60 days | 🟡 In progress |
| 3 workforce members without HIPAA training completion | Medium | §164.308(a)(5) | Acknowledged; training completed | Training now 100% ✅ | HR | Done | ✅ |

---

## Audit Response Timeline

| Milestone | Date | Status |
|---------|------|--------|
| Audit notice received | <date> | ✅ |
| Outside counsel engaged | <date> | ✅ |
| Legal hold triggered | <date> | ✅ |
| Extension requested and granted | <date> | ✅ |
| Document production complete | <date> | 🟡 In progress |
| Audit fieldwork / review | <date> | 📅 |
| Preliminary findings received | <date> | 📅 |
| CAP submitted | <date> | 📅 |
| CAP implementation complete | <date> | 📅 |
| Audit closed | <date> | 📅 |
```

## Output Contract
- Outside counsel engaged immediately for regulatory audits — communicating with regulators without counsel is a significant risk
- Legal hold triggered for every audit — document destruction during an audit is obstruction
- Document production always reviewed before submission — never produce documents without understanding what's being provided
- Corrective action plan always specific, owned, and dated — vague CAPs are rejected by regulators
- HITL required: Dr. Lewis leads all audit responses; outside counsel manages regulatory communication; Matt Mathison briefed on all significant audit findings; Allevio Compliance Officer owns HIPAA audit documentation; no documents produced to regulators without Dr. Lewis + outside counsel review

## System Dependencies
- **Reads from:** Compliance documentation, policies, training records, audit logs, BAA inventory (provided by entity teams)
- **Writes to:** Audit response plan, document production log, corrective action plan (for outside counsel and regulatory authority)
- **HITL Required:** Dr. Lewis leads; outside counsel communicates with regulators; Matt Mathison approves CAP; all regulatory submissions reviewed by Legal before production

## Test Cases
1. **Golden path:** HHS OCR HIPAA Security Rule audit notice received → legal hold triggered, Dr. Lewis notified, outside counsel engaged, 30-day extension requested, documents assembled (risk analysis current, training at 100%, BAAs inventoried — 2 gaps remediated before production), production complete, 3 minor findings in CAP, all resolved within 60 days, audit closed
2. **Edge case:** Auditor requests documents outside the stated scope → do NOT automatically produce; consult with outside counsel on whether to comply, object, or negotiate scope; regulators sometimes test the limits of initial document requests
3. **Adversarial:** Employee receives a direct call from an IRS auditor and provides information → immediately notify Dr. Lewis and outside counsel; determine what was said; if material disclosures were made, outside counsel assesses impact and contacts IRS directly; implement clear communication protocol — all auditor communications through designated lead

## Audit Log
All audit responses retained: notice, extension requests, communications, document production, findings, CAP, closure. Retained for 6 years (HIPAA) or applicable period.

## Deprecation
Retire when entity deploys a GRC platform with integrated audit management, evidence collection, and corrective action tracking (ServiceNow GRC, MetricStream).
