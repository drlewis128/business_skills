---
name: sec-backup-security-validator
description: "Validate and manage backup security for MBL portfolio company systems. Use when the user says 'backup', 'backups', 'backup security', 'backup validation', 'backup testing', 'backup recovery', 'test backup', 'restore test', 'can we restore', 'restore from backup', 'ransomware recovery', 'recover from ransomware', 'data recovery', 'disaster recovery', 'DR', 'DR plan', 'business continuity', 'BCP', 'backup policy', 'backup schedule', 'backup frequency', '3-2-1 backup', 'offsite backup', 'air-gapped backup', 'immutable backup', 'backup encryption', 'backup integrity', 'backup compliance', 'RTO', 'RPO', 'recovery time objective', 'recovery point objective', 'backup coverage', 'what systems are backed up', 'HIPAA backup', 'contingency plan', 'emergency access', 'AdvancedMD backup', 'SharePoint backup', 'OneDrive backup', 'M365 backup', 'QuickBooks backup', 'Covercy backup', 'backup monitoring', or 'backup failure'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <assess|test|report|plan>] [--system <m365|advancedmd|all>]"
---

# Sec Backup Security Validator

Validate and manage backup security for MBL portfolio companies — ensuring that critical data is backed up, backups are protected from ransomware, and recovery actually works before a crisis demands it. Backups are the most important disaster recovery control in MBL's portfolio; they determine whether a ransomware attack is a catastrophic loss or a contained recovery event. A backup that has never been tested is not a backup — it is a hope.

## When to Use
- Validating backup coverage and frequency for all entity systems
- Scheduling and executing backup restore tests
- Building the contingency plan (required for Allevio — HIPAA)
- Responding to a ransomware incident and initiating recovery

## Backup Security Framework

```
MBL BACKUP STANDARD (3-2-1 rule):
  3 copies of data: production; backup copy 1; backup copy 2
  2 different storage types: e.g., cloud + external drive; or cloud + tape
  1 copy offsite (or off-tenant): cannot be encrypted by same ransomware that hits production
  
  Immutable backup (preferred): backup storage where data cannot be modified or deleted
  for a defined retention period (ransomware cannot encrypt immutable backups)
  
BACKUP COVERAGE BY ENTITY:

  Microsoft 365 (all entities):
    Default M365 retention: 30-day recycle bin; 14-day Litigation Hold grace
    Problem: M365 is NOT a backup — it is a retention layer; not equivalent to point-in-time recovery
    Recommended: Veeam Backup for Microsoft 365; Acronis; or similar M365-aware backup tool
    What to back up: Exchange Online (email); SharePoint; OneDrive; Teams data
    Frequency: daily; 1-year retention minimum; 6-year retention for Allevio HIPAA records
    
  AdvancedMD (Allevio — PHI; HIPAA-critical):
    Backup method: AdvancedMD is SaaS; vendor manages infrastructure; ask vendor:
      What is AdvancedMD's backup frequency and retention? (contractual guarantee?)
      What is their RTO/RPO commitment in SLA?
      Can Allevio request a data export for DR purposes?
    Dr. Lewis verifies AdvancedMD backup SLA and retention annually
    HIPAA Contingency Plan requires: data backup plan + DR plan + emergency access procedure
    
  QuickBooks Online (all entities):
    QBO is cloud-hosted by Intuit; Intuit manages infrastructure redundancy
    Allevio/MBL additional: export QB data quarterly to Excel/CSV; store in SharePoint (encrypted)
    Frequency: QB Online automatic (Intuit); manual export quarterly
    
  Covercy (HIVE — LP data):
    Covercy is SaaS; vendor manages; Dr. Lewis verifies:
      Covercy backup SLA and data recovery guarantee
      LP data export capability (can HIVE export LP records if Covercy goes down?)
    HIVE additional: quarterly export of LP records to encrypted SharePoint
    
  GoHighLevel (MBL / Allevio / Column6 CRM data):
    GHL is SaaS; backup managed by GHL; Dr. Lewis verifies:
      GHL data export capability (contacts; pipeline; notes)
    Monthly GHL data export as contingency backup; stored in SharePoint (encrypted)
    
BACKUP SECURITY REQUIREMENTS:
  Encryption: all backups encrypted at rest and in transit
  Access control: backup access limited to Dr. Lewis + IT admin; not accessible to all employees
  Immutability: production backups in immutable storage where possible (prevents ransomware encryption)
  Off-tenant: M365 backup stored outside the M365 tenant (separate storage account)
  Testing: quarterly restore test (random sample of files; full system restore test annually)
  
RECOVERY TIME OBJECTIVE (RTO) AND RECOVERY POINT OBJECTIVE (RPO):
  RTO: how long can Allevio/MBL operate without this system?
  RPO: how much data loss is acceptable (how old can the backup be)?
  
  MBL portfolio targets (define with entity CEO):
    AdvancedMD (Allevio): RTO 4 hours; RPO 24 hours (critical clinical operations)
    M365 Email: RTO 24 hours; RPO 24 hours
    QuickBooks: RTO 48 hours; RPO 7 days
    GHL: RTO 72 hours; RPO 7 days
    
  These targets drive backup frequency and recovery infrastructure requirements
  
BACKUP RESTORE TEST (QUARTERLY):
  What to test:
    Restore 10 random files from SharePoint backup → verify files intact
    Restore 1 email from Exchange Online backup → verify delivery
    Restore 1 QB data export → verify opens and data readable
  Annual full system test: restore from backup to a test environment; validate completeness
  Document: what was tested; date; result; time to restore; IT tester; Dr. Lewis review
  
HIPAA CONTINGENCY PLAN (Allevio — required):
  Required components (§164.308(a)(7)):
    (i) Data backup plan: document procedures for daily backup of ePHI
    (ii) Disaster recovery plan: document procedures to restore ePHI from backup
    (iii) Emergency mode operation plan: maintain critical business functions during emergency
    (iv) Testing and revision: test the contingency plan; document results
    (v) Applications and data criticality analysis: prioritize recovery of critical ePHI systems
  Dr. Lewis drafts; entity CEO reviews; annual tabletop test; retained 6 years
```

## Output Format

```markdown
# Backup Security Validation — [Entity] | [Date]
**Owner:** Dr. John Lewis | **Last full restore test:** [Date]

---

## Backup Coverage
| System | Backup method | Frequency | Last backup | RTO target | RPO target | Status |
|--------|--------------|-----------|------------|-----------|-----------|--------|
| M365 | [Tool] | Daily | [Date] | 24hr | 24hr | ✅/⚠️/❌ |
| AdvancedMD | SaaS (vendor) | [Vendor SLA] | Verified [Date] | 4hr | 24hr | |
| QuickBooks | QBO + manual export | Weekly export | [Date] | 48hr | 7d | |

---

## Restore Test Results
| System | Date tested | What tested | Result | Time to restore |
|--------|------------|------------|--------|----------------|
| M365 SharePoint | [Date] | 10 random files | ✅ Pass | [N] minutes |

---

## Open Issues
| System | Issue | Severity | Action | Due |
|--------|-------|---------|--------|-----|
```

## Output Contract
- An untested backup is not a backup — the most common failure in small business backup programs is: backups are configured and running; no one has ever tested a restore; when ransomware hits, the restore process fails due to: corrupted backup files; misconfigured backup software; missing recovery keys; expired credentials in the backup system; the restore test must run on the actual recovery process, not just confirm that files appear in the backup console; Dr. Lewis's standard: quarterly partial restore test (10 files from SharePoint; 1 email from Exchange); annual full system restore test to a test environment with timing measurement vs. RTO; any test that fails triggers an investigation and remediation before the next incident could demand a real restore; if the restore test fails, that is a P1 security issue (the backup is not reliable); entity CEO notified; remediation before next test
- HIPAA Contingency Plan for Allevio is a required administrative safeguard — it is not the same as having backups; the HIPAA Contingency Plan is a documented plan that covers how ePHI systems are backed up (procedures; frequency; verification); how Allevio would restore ePHI from backup in a DR scenario; how Allevio would maintain critical clinical operations if AdvancedMD were unavailable for 24+ hours (manual processes? alternate contact methods?); when the plan was last tested; the plan is retained 6 years; Dr. Lewis reviews and updates the plan annually; entity CEO reviews and signs; the Q3 tabletop exercise tests the IR plan AND the contingency plan; any gaps found in the tabletop are documented and remediated before the next year
- HITL required: backup system selection → entity CEO budget approval; Dr. Lewis security evaluation; M365 backup configuration → Dr. Lewis configures; entity CEO informed; annual full restore test → Dr. Lewis oversees; entity CEO informed of outcome; restore test failure → entity CEO notified within 24 hours + remediation plan; HIPAA Contingency Plan → Dr. Lewis drafts; entity CEO reviews + signs; annual review → entity CEO re-signs; ransomware incident requiring backup restore → Dr. Lewis initiates; entity CEO approves restore decision (choose restore point); AdvancedMD SLA verification → Dr. Lewis with Allevio entity CEO reviewing vendor contract; backup access → Dr. Lewis + IT admin only

## System Dependencies
- **Reads from:** Backup platform console (Veeam; Acronis or equivalent — backup status; last run; restore points); AdvancedMD vendor SLA documentation (backup frequency; RPO/RTO commitments); QuickBooks data export (quarterly manual; stored in SharePoint); Covercy data export (quarterly manual; HIVE); GHL data export (monthly manual); M365 Admin Center (retention policies; SharePoint/OneDrive backup status); prior backup validation reports; HIPAA Contingency Plan document (Allevio)
- **Writes to:** Backup validation report (SharePoint → [Entity] → Security → Backup-Validation → [Date]); restore test results log (SharePoint → [Entity] → Security → Backup-Tests → [Quarter]); HIPAA Contingency Plan (Allevio — SharePoint → Allevio → Security → HIPAA → Contingency-Plan → [Year]; retained 6 years); entity CEO backup briefing (quarterly); incident response trigger (ransomware — initiate restore); backup failure alert (IT + Dr. Lewis immediate)
- **HITL Required:** Backup system selection → entity CEO budget + Dr. Lewis; M365 backup config → Dr. Lewis; restore test failure → entity CEO 24hr + remediation; HIPAA Contingency Plan → Dr. Lewis + entity CEO sign; annual review → entity CEO re-signs; ransomware restore → Dr. Lewis initiates; entity CEO approves restore point; AdvancedMD SLA review → Dr. Lewis + entity CEO; backup access policy → Dr. Lewis only + IT admin

## Test Cases
1. **Golden path:** Q2 backup restore test for MBL HoldCo. IT randomly selects 10 files from Veeam backup of SharePoint (strategy documents; financial models; contracts). Restores to a test SharePoint library. All 10 files intact; readable; correct versions. Restore time: 8 minutes for 10 files. Exchange Online test: restores 1 email from Matt Mathison's mailbox (randomly selected from 30 days ago). Email restored to test mailbox; intact. QuickBooks: export from 7 days ago opened in QB Desktop; data readable; current. Test result: Pass. Report filed in SharePoint. Entity CEO notified: "Q2 backup restore test passed — all systems restoring correctly within RTO targets." Annual full system test scheduled for Q4.
2. **Edge case:** Quarterly restore test for Allevio fails — AdvancedMD data export request sent to vendor; vendor response: "We don't support ad hoc data exports for contingency testing." Dr. Lewis: "This is a HIPAA compliance issue. The HIPAA Contingency Plan requires a documented data backup plan that includes the ability to restore ePHI. If we cannot verify that AdvancedMD data can be recovered in a DR scenario, we have a gap. Actions: (1) Escalate to Allevio entity CEO: AdvancedMD does not support export for DR testing. (2) Request AdvancedMD's official documentation of their backup SLA, RTO/RPO guarantees, and data recovery procedures — this substitutes for a self-conducted restore test. (3) If AdvancedMD cannot provide adequate DR documentation: evaluate whether AdvancedMD meets our HIPAA Contingency Plan requirements; potentially require a contract amendment. (4) Document this finding in the HIPAA Contingency Plan: 'Restore testing methodology for AdvancedMD relies on vendor-provided DR SLA documentation; direct restore testing not supported.' Entity CEO reviews and co-signs."
3. **Adversarial:** Ransomware encrypts 3 clinical coordinator workstations at Allevio and is spreading to file shares. Dr. Lewis incident response: "Phase 1 — CONTAIN: Isolate all 3 affected workstations from the network immediately (disable network adapters). Identify: is it still spreading? Check file server logs. If file server is also affected: isolate file server. Phase 2 — ASSESS BACKUP: Check backup status. Last Veeam backup of file server: 11pm last night. RTO target 4 hours. Restore process: Veeam restore to clean server environment. Phase 3 — ENTITY CEO: Notified immediately. Expected downtime: 2-4 hours for file server restore (within RTO). Phase 4 — RESTORE: Dr. Lewis initiates restore from last night's backup. Entity CEO approves restore point (accepts up to 24 hours of data loss per RPO). Phase 5 — VERIFY: File server restored; malware scanned; clean bill of health before reconnecting to network. Phase 6 — INCIDENT REPORT: What was the attack vector? Patch the vulnerability. Document for HIPAA incident records."

## Audit Log
Backup coverage review records (quarterly; entity; systems covered; backup frequency; last backup verified; Dr. Lewis review; SharePoint). Restore test records (date; entity; system; files tested; result; time to restore; pass/fail; IT tester; Dr. Lewis review; SharePoint). Restore test failure records (date; system; failure reason; entity CEO notification; remediation plan; re-test date). HIPAA Contingency Plan records (Allevio — version; Dr. Lewis draft; entity CEO sign; annual review; SharePoint; retained 6 years). Ransomware recovery records (incident date; backup used; restore point; entity CEO approval; recovery time; RTO vs. actual).

## Deprecation
Backup coverage reviewed annually and when new systems are added. Restore test frequency reviewed when ransomware threat landscape changes. RTO/RPO targets reviewed annually with entity CEO against business requirements. HIPAA Contingency Plan reviewed annually and when Allevio adds new ePHI systems. M365 backup tool selection reviewed when Microsoft changes retention capabilities.
