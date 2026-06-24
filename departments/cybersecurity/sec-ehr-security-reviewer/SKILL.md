---
name: sec-ehr-security-reviewer
description: "Review and manage security of Electronic Health Records (EHR) and clinical systems at Allevio. Use when the user says 'EHR security', 'EHR', 'electronic health record', 'EHR system', 'clinical system security', 'AdvancedMD security', 'AdvancedMD', 'practice management system', 'clinical data security', 'patient data security', 'health records', 'health record security', 'clinical workstation', 'clinical workstation security', 'ePHI security', 'ePHI access', 'ePHI controls', 'ePHI protection', 'clinical access controls', 'clinical audit log', 'AdvancedMD audit', 'AdvancedMD access review', 'AdvancedMD configuration', 'AdvancedMD roles', 'minimum necessary clinical', 'clinical minimum necessary', 'clinical data access', 'HIPAA clinical', 'HIPAA technical safeguards EHR', 'EHR HIPAA', 'EHR audit trail', 'clinical workstation lockout', 'automatic logoff', 'clinical screen lock', 'EHR vendor security', 'AdvancedMD vendor', 'EHR patch', 'EHR update', 'clinical system update', 'EHR backup', 'AdvancedMD backup', 'clinical data backup', or 'EHR contingency plan'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--action <review|audit|configure|report>] [--scope <access-control|audit-log|workstation|backup|vendor>]"
---

# Sec EHR Security Reviewer

Review and manage security of Electronic Health Records (EHR) and clinical systems at Allevio — configuring AdvancedMD access controls, reviewing audit logs, hardening clinical workstations, and ensuring the EHR system meets HIPAA technical safeguard requirements. The EHR is Allevio's most sensitive system: it contains clinical encounter data, diagnoses, eligibility, and billing records; every access control failure here is a potential HIPAA breach.

## When to Use
- Quarterly AdvancedMD access review
- Reviewing AdvancedMD audit logs for anomalies
- Configuring or verifying clinical workstation security settings
- Annual EHR security review (feeds HIPAA risk analysis)

## EHR Security Framework

```
ADVANCEDMD SECURITY CONFIGURATION:

  HIPAA TECHNICAL SAFEGUARDS REQUIRED (§164.312):

    Access Control (§164.312(a)(1) — Required):
      Unique user identification: each clinical coordinator has individual AdvancedMD account
      No shared accounts: prohibited
      No group accounts: prohibited
      Role-based access: clinical coordinator scope ≠ admin scope
        Clinical Coordinator: access to their assigned employer groups only
        Billing Coordinator: access to billing records; no clinical encounter notes required
        Clinic Admin (Dr. Lewis or entity CEO): full access
        
    Emergency Access (§164.312(a)(2)(ii) — Required):
        Break-glass procedure: documented process for emergency PHI access if normal systems down
        Dr. Lewis + entity CEO hold emergency access credentials (separate from normal accounts)
        Documented in sec-incident-responder contingency section
        
    Automatic Logoff (§164.312(a)(2)(iii) — Required):
        Clinical workstations: 5-minute automatic logoff
        AdvancedMD: session timeout configured in application settings
        Verify: all clinical workstations have screen lock + auto-logoff
        
    Audit Controls (§164.312(b) — Required):
        AdvancedMD audit log: records who accessed what record; when; from where
        Log retention: 6 years (HIPAA documentation requirement)
        Review: monthly (Dr. Lewis) for anomalies (sec-allevio-security-monitor)
        
    Integrity (§164.312(c)(1) — Required):
        ePHI not altered or destroyed in unauthorized manner
        AdvancedMD: vendor-provided integrity controls (access control prevents unauthorized modification)
        Backup: prevents data loss (sec-backup-security-validator)
        
    Transmission Security (§164.312(e)(1) — Required):
        All data transmission encrypted: AdvancedMD uses HTTPS/TLS 1.2+ ✅
        Clinical workstations: HTTPS-only browsing (DNS filtering; content policy)
        Email with ePHI: M365 OME (sec-encryption-standards-guide)
        
ADVANCEDMD ACCESS REVIEW PROCESS (quarterly — feeds sec-access-review-coordinator):

  Step 1: Export active user list from AdvancedMD admin console
  Step 2: Cross-reference with current employee list (HR; Allevio entity CEO confirms active staff)
  Step 3: Flag anomalies:
    Departed employees with active AdvancedMD accounts
    Accounts with access levels exceeding their role
    Inactive accounts (no login in >90 days — deactivate; don't delete)
  Step 4: Entity CEO certifies the review (sign-off: "I certify that the above user list reflects current Allevio staff and that each person's access is appropriate for their role")
  Step 5: Execute: deactivate any unauthorized accounts; adjust role assignments
  Step 6: Document: retain 6 years (HIPAA — access control)
  
CLINICAL WORKSTATION SECURITY:

  Physical security:
    Workstations positioned: screen not visible from waiting room or non-clinical areas
    Auto-lock: 5-minute timeout (Group Policy or Intune)
    No unauthorized software installation (standard user account — no local admin)
    
  Endpoint security:
    BitLocker: enabled (sec-endpoint-hardening-guide)
    Defender for Business: enabled; definitions current
    Patches: current within SLA (sec-patch-compliance-tracker)
    USB: disabled for clinical workstations (PHI exfiltration risk)
    
  Network:
    Clinical workstations on clinical VLAN only (sec-network-security-monitor)
    No access to personal email; personal cloud storage on clinical workstations
    DNS filtering: enabled (sec-network-security-monitor)
    
ADVANCEDMD VENDOR SECURITY:

  BAA status: BAA signed with AdvancedMD (sec-baa-security-validator) — verify annually
  AdvancedMD SOC 2: request annually; review for relevant controls
  AdvancedMD encryption: confirm AES-256 at rest; TLS 1.2+ in transit (sec-encryption-standards-guide)
  AdvancedMD patching: SaaS — vendor manages; verify AdvancedMD is kept on current version
    Request AdvancedMD release notes when major versions are released
    Confirm no end-of-life versions in use
  Breach notification: AdvancedMD BAA requires breach notification to Allevio ≤ 72 hours of discovery
    Dr. Lewis + entity CEO are the notification contacts
    
CONTINGENCY PLAN (HIPAA §164.308(a)(7)):
  Data backup: AdvancedMD data backed up by vendor; additionally exported quarterly by Dr. Lewis (sec-backup-security-validator)
  Disaster recovery: AdvancedMD as SaaS is recoverable by vendor; RTO 4hr (per BAA or vendor SLA)
  Emergency operations: manual processes documented for if AdvancedMD is unavailable
  Testing: AdvancedMD export restore tested annually (sec-backup-security-validator)
```

## Output Format

```markdown
# EHR Security Review — Allevio | [Date]
**Security Officer:** Dr. John Lewis | **EHR:** AdvancedMD | **Review type:** [Quarterly/Annual]

---

## HIPAA Technical Safeguard Status
| Safeguard | Requirement | Status | Finding |
|-----------|------------|--------|---------|
| Unique user IDs | Required | ✅/❌ | No shared accounts |
| Automatic logoff (5-min) | Required | ✅/❌ | Configured all workstations |
| Audit controls | Required | ✅/❌ | Log active; 6-year retention |
| Transmission security | Required | ✅/❌ | HTTPS; TLS 1.3 |
| Emergency access | Required | ✅/❌ | Dr. Lewis + entity CEO |

---

## AdvancedMD Access Review
**Users reviewed:** [N] | **Entity CEO certified:** [Date] | **Changes made:** [N]
| Finding | Action | Date |
|---------|--------|------|
| Departed employee account active | Deactivated | [Date] |
```

## Output Contract
- Shared AdvancedMD accounts are a HIPAA required specification violation and must be remediated immediately — HIPAA §164.312(a)(2)(i) requires unique user identification: "Assign a unique name and/or number for identifying and tracking user identity"; shared accounts (two people using one login) make audit logs uninterpretable (the audit log records "user: admin-shared" but cannot identify which specific individual accessed which PHI); this is both a HIPAA compliance failure and an accountability failure; if a breach occurs and the audit log shows a shared account accessed 1,000 records, the organization cannot demonstrate who accessed the data or whether the access was authorized; Dr. Lewis checks for shared accounts during every access review; any shared account found is deactivated and replaced with individual accounts for each user immediately, with entity CEO notification
- The AdvancedMD audit log is both a HIPAA required control and a breach detection tool — the audit log records every access to ePHI in AdvancedMD; Dr. Lewis reviews the audit log monthly for anomalies (unusual access volumes; access at unusual hours; access from unusual IP addresses; access to records outside the user's assigned employer group); reviewing the audit log is not a bureaucratic exercise — it is how Allevio detects unauthorized PHI access by insiders, compromised accounts, or improperly configured access controls; the log review record (date; what was reviewed; findings; Dr. Lewis) is a HIPAA compliance document retained 6 years; if Allevio ever faces an OCR audit, the audit log review records demonstrate that Allevio takes the audit control requirement seriously
- HITL required: AdvancedMD access review → entity CEO certifies (legal document); Dr. Lewis executes changes; shared account found → Dr. Lewis deactivates + entity CEO notified immediately; audit log anomaly → Dr. Lewis investigates; if unauthorized PHI access: sec-incident-responder + entity CEO + Matt Mathison; AdvancedMD vendor breach notification received → Dr. Lewis + entity CEO immediately; HIPAA breach assessment; automatic logoff verification → Dr. Lewis verifies on each clinical workstation; USB block verification → Dr. Lewis verifies via Intune; AdvancedMD major version release → Dr. Lewis reviews release notes; entity CEO informed if clinical workflow impact

## System Dependencies
- **Reads from:** AdvancedMD admin console (user list; roles; audit log; session timeout settings; active user count); Intune (clinical workstation compliance — BitLocker; Defender; patch status; USB policy; screen lock); sec-iam-manager (employee list for access review cross-reference); sec-baa-security-validator (AdvancedMD BAA status; terms; breach notification contact); sec-backup-security-validator (AdvancedMD backup/restore records); sec-patch-compliance-tracker (clinical workstation patch status); sec-encryption-standards-guide (AdvancedMD TLS/encryption confirmation); entity CEO (active employee certification for access review)
- **Writes to:** AdvancedMD access review report (SharePoint → Allevio → Security → HIPAA → AdvancedMD-Access-Review → [Quarter-Year]; entity CEO certification; Dr. Lewis; retained 6 years); AdvancedMD audit log review records (SharePoint → Allevio → Security → HIPAA → AdvancedMD-Audit-Review → [Month-Year]; retained 6 years); HIPAA technical safeguard status (feeds sec-allevio-security-monitor); audit anomaly records (feeds sec-incident-responder if unauthorized access); entity CEO access review briefing (quarterly; findings; certification); AdvancedMD vendor security review (SharePoint → Allevio → Security → Vendors → AdvancedMD-[Year])
- **HITL Required:** Access review → entity CEO certifies; Dr. Lewis executes changes; shared account → Dr. Lewis deactivates immediately; entity CEO notified; audit log anomaly → Dr. Lewis investigates; unauthorized PHI → sec-incident-responder + entity CEO + Matt Mathison; vendor breach notification → Dr. Lewis + entity CEO immediately; HIPAA breach assessment; logoff verification → Dr. Lewis per workstation; USB block → Dr. Lewis via Intune; AdvancedMD version release → Dr. Lewis reviews; entity CEO informed of workflow impact

## Test Cases
1. **Golden path:** Q2 AdvancedMD access review. Dr. Lewis exports user list (18 active accounts). Cross-references with current employee list (entity CEO confirms 17 active staff — 1 account for Dr. Lewis admin). Finding: 1 clinical coordinator left 45 days ago; their AdvancedMD account is still active. Actions: (1) Deactivate immediately (AdvancedMD admin → Users → [Name] → Deactivate). (2) Review audit log: did the departed employee access any records after their last day? Last access: day before departure — no post-departure access. (3) Entity CEO notified: account found; deactivated; no post-departure access detected. (4) Access review report: 18 users reviewed; 1 departed account deactivated; 17 active accounts confirmed appropriate. Entity CEO certifies. Report retained. Access review: all current.
2. **Edge case:** AdvancedMD audit log shows that the clinic admin account accessed 1,847 records over a weekend when the clinic was closed: Dr. Lewis: "1,847 records over a weekend is unusual — normal administrative access is typically 20-50 records per day. Investigation: (1) Which records? What employer groups? What data elements accessed (encounter notes; billing; demographic)? (2) Who holds the clinic admin account? Is there a legitimate explanation (data migration; billing audit; employer reporting preparation)? (3) Contact the account holder: 'I noticed high-volume access from your account this weekend — can you describe what you were working on?' (4) If legitimate: document the explanation in the audit review record; note as explained anomaly. (5) If no explanation or the account holder denies accessing the system: P0 — compromised admin account. sec-incident-responder activated. Entity CEO + Matt Mathison notified. HIPAA breach assessment: 1,847 records — likely reportable. (6) Regardless of outcome: document the investigation in the audit log review record."
3. **Adversarial:** AdvancedMD sends a security bulletin announcing that a vulnerability in their API allows unauthorized access to patient records: Dr. Lewis: "Vendor security vulnerability disclosure — treat as potentially affecting Allevio. (1) Read the full bulletin: what is the vulnerability? What AdvancedMD version? What access is possible? (2) Check: is Allevio on the affected version? AdvancedMD is a SaaS — they typically push updates without notice. Have they patched already? (3) Contact AdvancedMD: 'We received your security bulletin. Is Allevio's instance already patched? When was the patch applied? Has there been any evidence of exploitation against healthcare organizations in our region?' (4) Review Allevio's audit log: any unusual access patterns in the window when this vulnerability may have been exploitable? (5) If AdvancedMD confirms no exploitation of Allevio's instance AND the patch is confirmed applied: document; HIPAA breach assessment likely low risk; entity CEO notified. (6) If exploitation cannot be ruled out: sec-incident-responder P0; HIPAA breach assessment."

## Audit Log
AdvancedMD access review records (quarterly; user list; cross-reference; findings; entity CEO certification signature; changes made; Dr. Lewis; SharePoint; retained 6 years). AdvancedMD audit log review records (monthly; records reviewed; anomalies; findings; Dr. Lewis; SharePoint; retained 6 years). Shared account remediation records (account; deactivated; entity CEO notified; Dr. Lewis; date). HIPAA technical safeguard verification records (annual; each safeguard; status; Dr. Lewis; feeds sec-allevio-security-monitor; retained 6 years). AdvancedMD vendor security review records (annual; BAA status; encryption confirmed; SOC 2 reviewed; Dr. Lewis; SharePoint). Clinical workstation security records (Intune compliance report; screen lock; USB; BitLocker; Dr. Lewis; quarterly).

## Deprecation
EHR security controls reviewed annually. AdvancedMD-specific configurations reviewed when AdvancedMD releases major platform updates. Clinical workstation security reviewed when Allevio adds new clinic locations or changes workstation model. HIPAA technical safeguard checklist reviewed when HHS updates §164.312 guidance. Contingency plan reviewed when AdvancedMD updates their disaster recovery SLA. Automatic logoff timeout reviewed if HHS issues guidance on specific clinical timeout requirements.
