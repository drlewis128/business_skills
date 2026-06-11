---
name: it-audit-preparer
description: "Prepare for an IT audit. Use when the user says 'IT audit', 'prepare for audit', 'IT audit checklist', 'SOC 2 audit prep', 'audit readiness', 'IT controls audit', 'gather audit evidence', or 'IT compliance audit'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--framework <soc2|hipaa|iso27001|internal>] [--timeline <weeks>]"
---

# IT Audit Preparer

Prepare for an IT audit by assembling evidence, closing control gaps, and ensuring the IT team is ready to respond to auditor requests. Audit preparation that starts 2 weeks before the audit fails. Successful audits are built on year-round control operation, with a structured 8-week prep sprint before the audit window.

## When to Use
- 8-12 weeks before a scheduled audit
- Annual audit preparation (SOC 2, HIPAA, ISO 27001)
- Customer due diligence request (prospect wants evidence of controls)
- Cyber insurance renewal (carriers increasingly require control evidence)
- First audit preparation (building from scratch)

## Audit Prep Timeline

| Weeks Before Audit | Activity |
|------------------|---------|
| **12-8 weeks** | Gap assessment; close critical control gaps |
| **8-6 weeks** | Gather evidence for all controls; assign evidence owners |
| **6-4 weeks** | Internal walkthrough of all controls with IT team; fix gaps found |
| **4-2 weeks** | Assemble evidence package; final gap remediation |
| **2-0 weeks** | Dry run with auditor (if possible); brief all staff on audit conduct |

## Evidence Categories (SOC 2 Example)

| Control Area | Evidence Needed |
|------------|---------------|
| **Access control** | User access lists, MFA reports, provisioning/deprovisioning logs, access review records |
| **Change management** | Change request log, CAB meeting notes, change tickets with approvals |
| **Security monitoring** | Monitoring tool screenshots, alert logs, incident response records |
| **Patch management** | Patch compliance reports (monthly, last 12 months) |
| **Backup and recovery** | Backup completion logs, restore test records |
| **Vendor management** | SOC 2 reports from key vendors, vendor contracts, BAAs |
| **Security awareness** | Training completion records, phishing simulation results |
| **Incident response** | Incident log, post-mortems for any incidents in audit period |

## Output Format

```markdown
# IT Audit Preparation Package — <Entity>
**Framework:** SOC 2 Type 2 / HIPAA / ISO 27001
**Audit date:** <date> | **Prep start:** <date>
**Auditor:** <firm> | **IT contact:** IT Manager + Dr. John Lewis

---

## Control Inventory and Evidence Status

| Control | Owner | Evidence Status | Evidence Location | Gap? |
|---------|-------|----------------|-----------------|------|
| CC6.2 — Access provisioning/deprovisioning | IT Manager | ✅ Ready | IT ticketing system export | No |
| CC6.3 — MFA enforcement | IT Manager | ✅ Ready | Entra ID MFA report | No |
| CC6.6 — Endpoint protection | IT Tech | 🟡 Partial | MDM report (2 months missing) | Yes — fill missing months |
| CC7.2 — Backup verification | IT Engineer | ❌ Missing | Restore test logs not complete | Yes — complete quarterly test |
| CC8 — Change management | IT Manager | 🟡 Partial | Change log exists but incomplete | Yes — backfill missing entries |

---

## Critical Gaps (Must Close Before Audit)

| Gap | Control | Action | Owner | Due |
|-----|---------|--------|-------|-----|
| Missing 2 months of endpoint compliance reports | CC6.6 | Export from MDM retroactively | IT Tech | <date> |
| No backup restore test Q3 | CC7.2 | Run restore test and document | IT Engineer | <date> |
| Change log missing 8 entries | CC8 | Reconstruct from IT records | IT Manager | <date> |

---

## Evidence Package Structure

```
/SOC2-Audit-Evidence-<entity>-<year>/
  ├── Access-Control/
  │   ├── user-access-list-<date>.xlsx
  │   ├── mfa-report-<date>.pdf
  │   ├── access-review-Q1-Q4.pdf
  │   └── provisioning-deprovisioning-log.xlsx
  ├── Change-Management/
  │   └── change-log-<year>.xlsx
  ├── Backup-Recovery/
  │   ├── backup-completion-log-<year>.xlsx
  │   └── restore-test-Q1-Q4.pdf
  ├── Security-Monitoring/
  │   └── monitoring-screenshots-<date>.pdf
  ├── Vendor-Management/
  │   ├── Microsoft-SOC2-report.pdf
  │   └── vendor-contracts/
  └── Training/
      └── security-training-completion-<year>.xlsx
```

---

## Audit Day Preparation

**Staff briefing (1 week before):**
- Auditors will request documentation and may interview IT staff
- Answer questions honestly and specifically — don't guess
- If uncertain, say "I'll need to look that up" rather than guessing
- All requests go through IT Manager first

**Interview prep for IT Manager:**
- Know the controls cold — especially access management and change management
- Be ready to demonstrate controls live (show the MFA enforcement screen)
- Know where all evidence is stored

**IT Manager on-call during audit:** Available for questions within 2 hours
**Dr. Lewis contact:** Available for executive escalations during audit
```

## Output Contract
- Gap remediation always prioritized 8+ weeks before the audit — fixes inside the audit window are suspicious
- Evidence package always organized by control area — auditors should find what they need without help
- All IT staff always briefed before the audit — nobody should be surprised by an auditor question
- HITL required: Dr. Lewis reviews the audit preparation package before submission; IT Manager owns evidence assembly; Legal reviews any contractual evidence (BAAs, vendor contracts)

## System Dependencies
- **Reads from:** All IT systems with audit-relevant data (MDM, ticketing, monitoring, backup platforms) (provided)
- **Writes to:** Evidence package (SharePoint or secure audit folder)
- **HITL Required:** IT Manager assembles evidence; Dr. Lewis reviews and approves package; Legal reviews vendor and contractual evidence

## Test Cases
1. **Golden path:** SOC 2 Type 2 audit in 10 weeks → gap assessment finds 3 control gaps, all closed by week 8, evidence package assembled by week 6, internal dry run week 3, staff briefed week 2, audit completed successfully
2. **Edge case:** 4-week notice before an unplanned audit → triage approach: close only Critical control gaps, prioritize highest-weighted controls (CC6 access control is typically 30% of SOC 2 score), defer medium gaps with documented remediation plan
3. **Adversarial:** Auditor asks for evidence of a control that IT can't find → never fabricate or backfill evidence; document the control gap honestly; provide a remediation timeline; auditors respect transparency more than they penalize honest gaps

## Audit Log
Audit prep packages retained by entity, framework, and audit date. Control gap remediation tracked. Audit outcomes documented.

## Deprecation
Retire when entity deploys a GRC platform (Vanta, Drata, Tugboat Logic) with continuous control monitoring, automated evidence collection, and auditor collaboration tools.
