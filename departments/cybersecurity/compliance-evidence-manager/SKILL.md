---
name: compliance-evidence-manager
description: "Collect and manage compliance evidence for audits. Use when the user says 'compliance evidence', 'audit evidence', 'SOC 2 evidence', 'HIPAA evidence', 'gather evidence for audit', 'compliance documentation', 'audit prep', 'evidence collection', or 'what do we need for the audit'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--framework <SOC2|HIPAA|both>] [--phase <collect|organize|review>]"
---

# Compliance Evidence Manager

Collect and manage compliance evidence for audits. Compliance is not just about having the right controls — it's about proving you have them. An auditor cannot take your word for it. This skill manages the evidence collection process for SOC 2 and HIPAA audits: what's needed, where it comes from, how to organize it, and how to fill gaps.

## When to Use
- 90 days before a SOC 2 audit
- Ongoing HIPAA compliance documentation
- Responding to an auditor's evidence request
- Building a compliance evidence library from scratch
- After a control change — update evidence package

## Evidence Requirements by Framework

### SOC 2 Trust Services Criteria (Security — CC series)

| Control Area | Evidence Required | Where to Get It |
|------------|----------------|----------------|
| CC6.1 — Logical access controls | Screenshot of Entra ID MFA policy, RBAC roles | M365 Admin Center |
| CC6.2 — New account provisioning | IT onboarding checklist + sample provisioning tickets | IT ticketing system |
| CC6.3 — Role changes and removal | Access change log, termination checklist | IT ticketing + HR |
| CC7.1 — System monitoring | SIEM alert configuration, Defender for Cloud | M365 Defender / Sentinel |
| CC7.2 — Security events monitored | Sample alert triage reports from the period | Alert log |
| CC7.3 — Incident response | IRP document + sample incident reports | IT documentation |
| CC8.1 — Change management | Change tickets + approval records | IT ticketing system |
| CC9.1 — Risk assessment | Annual risk assessment documentation | Dr. Lewis / IT |
| A1.1 — Availability — backups | Backup completion logs + restore test results | Backup system |

### HIPAA Security Rule Evidence (Allevio)

| HIPAA Section | Evidence Required | Where to Get It |
|-------------|----------------|----------------|
| §164.308(a)(1) — Risk analysis | Annual security risk assessment | IT/Security |
| §164.308(a)(3) — Workforce training | Training completion records, HIPAA training content | LMS / HR |
| §164.308(a)(5) — Security awareness | Security awareness training documentation | LMS |
| §164.308(a)(6) — Incident response | IRP + all incident reports for the period | IT documentation |
| §164.308(a)(7) — Contingency plan | BCP/DR plan + backup restore test results | IT documentation |
| §164.310(b) — Workstation use | Workstation use policy | Policy documentation |
| §164.312(a)(1) — Access control | Access control policy + Entra ID access logs | Policy + M365 |
| §164.312(b) — Audit controls | Audit log configuration + sample logs | M365 audit log |
| §164.312(d) — Authentication | MFA policy + coverage report | Entra ID |

## Output Format

```markdown
# Compliance Evidence Package — <Entity>
**Audit type:** SOC 2 / HIPAA / Both
**Audit period:** <start> to <end>
**Prepared by:** Dr. John Lewis / IT Manager
**Date:** <date>

---

## Evidence Collection Status

### SOC 2 — Security (CC Controls)

| Control | Evidence Item | Source | Status | Location |
|---------|-------------|--------|--------|---------|
| CC6.1 | Entra ID MFA policy screenshot | M365 Admin | ✅ Collected | /evidence/cc6.1_mfa_policy.png |
| CC6.1 | RBAC role assignments | Entra ID export | ✅ Collected | /evidence/cc6.1_rbac.csv |
| CC6.2 | IT onboarding checklist | IT documentation | ✅ Collected | /evidence/cc6.2_onboarding.pdf |
| CC6.2 | Sample account provisioning tickets (3) | Jira/IT ticketing | 🟡 In progress | |
| CC6.3 | Access change log (full period) | M365 audit log | ✅ Collected | /evidence/cc6.3_access_changes.csv |
| CC6.3 | Termination checklist (sample 3) | IT/HR | ❌ Not started | |
| CC7.1 | SIEM/Defender configuration screenshot | M365 Defender | ✅ Collected | /evidence/cc7.1_defender.png |
| CC7.2 | Alert triage reports (3 samples) | Alert log | 🟡 In progress | |
| CC7.3 | Incident response plan (signed) | IT documentation | ✅ Collected | /evidence/cc7.3_irp.pdf |
| CC8.1 | Change tickets + approvals (sample 5) | IT ticketing | ❌ Not started | |
| CC9.1 | Annual risk assessment | Dr. Lewis | 🟡 Draft | |
| A1.1 | Backup logs (90 days) | Backup system | ✅ Collected | /evidence/a1.1_backup_logs.csv |
| A1.1 | Backup restore test result | IT documentation | ✅ Collected | /evidence/a1.1_restore_test.pdf |

**SOC 2 evidence: 8/13 collected** — Target: all items by <audit date -14 days>

---

### HIPAA — Allevio Security Rule

| Section | Evidence Item | Source | Status | Notes |
|---------|-------------|--------|--------|-------|
| §164.308(a)(1) | Annual risk assessment | IT/Security | 🟡 Draft | Due <date> |
| §164.308(a)(3) | HIPAA training completion records | LMS | ✅ Collected | 94% completion — 3 overdue noted |
| §164.308(a)(6) | IRP + incident reports (period) | IT | ✅ Collected | 3 incidents documented |
| §164.308(a)(7) | BCP/DR plan + restore test | IT | ✅ Collected | |
| §164.312(a)(1) | Access control policy | Policy docs | ✅ Collected | |
| §164.312(b) | Audit log configuration + samples | M365 | 🟡 Partial | Retention gap — 90 days only |
| §164.312(d) | MFA coverage report | Entra ID | ✅ Collected | 97% — note 2 users pending |

---

## Evidence Gaps — Action Required

| Gap | Framework | Risk | Action | Owner | Due |
|-----|---------|------|--------|-------|-----|
| Termination checklists — 3 samples not pulled | SOC 2 CC6.3 | Audit finding | Pull from HR records for 3 recent terminations | IT Manager | <date -14 days> |
| Change management tickets — 5 samples not pulled | SOC 2 CC8.1 | Audit finding | Pull from IT ticketing system | IT Manager | <date -14 days> |
| M365 audit log retention only 90 days | HIPAA §164.312(b) | HIPAA gap — 6 year required | Document as known gap + remediation plan | IT Manager | Before audit |
| Annual risk assessment not finalized | HIPAA §164.308(a)(1) | HIPAA requirement | Complete and sign before audit | Dr. Lewis | <date -30 days> |

---

## Evidence Organization

**File structure:**
```
/compliance/evidence/<year>/
  /soc2/
    cc6.1_mfa_policy.png
    cc6.1_rbac.csv
    cc6.2_onboarding.pdf
    [etc.]
  /hipaa/
    risk_assessment.pdf
    training_completion.csv
    [etc.]
```
```

## Output Contract
- Evidence status always tracked against a specific audit date with days remaining
- Gaps always include risk (audit finding vs. regulatory issue) and a remediation action
- Known compliance gaps always disclosed with a remediation plan — undisclosed gaps discovered by auditor are worse
- HIPAA retention gap always flagged separately — 6-year requirement vs. 90-day M365 native retention
- HITL required: Dr. Lewis finalizes annual risk assessment; IT Manager collects technical evidence; Allevio compliance officer reviews HIPAA evidence package; Legal advises on any disclosure of known gaps to auditors

## System Dependencies
- **Reads from:** M365 Admin Center, Entra ID, M365 audit log, IT ticketing system, LMS, backup system (provided)
- **Writes to:** Compliance evidence package (organized file structure)
- **HITL Required:** Dr. Lewis reviews and approves evidence package; Allevio compliance officer reviews HIPAA evidence; Legal advises on gap disclosure; auditor receives only approved package

## Test Cases
1. **Golden path:** SOC 2 audit 90 days out → evidence tracker shows 8/13 items collected, 2 gaps (change tickets, termination checklists), both assigned to IT Manager due 14 days before audit, risk assessment draft in review by Dr. Lewis, all evidence collected and submitted on time
2. **Edge case:** Auditor asks for evidence of a control that doesn't formally exist yet (e.g., formal change management process) → documents the actual process used (even if informal), with examples; prepares remediation plan to formalize the process; honest documentation of an informal process is better than fabricating evidence
3. **Adversarial:** IT Manager wants to retroactively create process documentation to cover a gap → explains that fabricating evidence is audit fraud and a serious legal risk; the correct approach is to document the gap, provide evidence of what actually happened, and include a remediation timeline

## Audit Log
Evidence packages retained by audit, entity, and year. Evidence collection status documented. Auditor correspondence retained.

## Deprecation
Retire manual evidence collection when a GRC platform (Drata, Vanta, Secureframe) is deployed with automated control testing and continuous evidence collection.
