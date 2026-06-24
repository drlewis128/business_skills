---
name: ai-backup-ops
description: "Manage data backup and recovery operations for MBL Partners and portfolio companies. Use when the user says 'backup', 'data backup', 'backup operations', 'backup management', 'backup status', 'backup check', 'backup audit', 'backup failure', 'backup not running', 'restore', 'data restore', 'recovery', 'data recovery', 'disaster recovery', 'business continuity', 'data loss', 'lost data', 'recover data', 'recover a file', 'SharePoint backup', 'OneDrive backup', 'QuickBooks backup', 'backup policy', 'backup schedule', 'backup retention', 'backup testing', 'restore test', 'recovery test', 'RTO', 'RPO', 'recovery time', 'recovery point', 'business continuity plan', 'BCP', 'data resilience', 'data protection', 'backup compliance', 'HIPAA backup', 'Allevio data backup', 'backup vendor', 'backup solution', or 'offsite backup'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--system <sharepoint|quickbooks|ghl|monday>] [--action <audit|test-restore|report|recover>]"
---

# AI Backup Ops

Manage data backup and recovery operations for MBL Partners and portfolio companies — ensuring critical data (financial records; AI workflow outputs; LP documents; operating data) is backed up, tested for restorability, and recoverable within acceptable timeframes. Backup failure is discovered in the worst possible moment — after data loss.

## When to Use
- Quarterly backup audit and restore test
- After discovering data loss or corruption
- When adding a new system that contains critical data
- Annual business continuity plan review

## Backup Operations Framework

```
MBL BACKUP ARCHITECTURE:

  MICROSOFT 365 (primary data store):
    SharePoint + OneDrive: Microsoft handles geo-redundant replication (built-in; not a substitute for backup)
    Why M365 replication ≠ backup: deletions sync immediately; malware can corrupt all replicas
    Backup solution: Microsoft 365 Backup (Microsoft native) OR third-party (Veeam; Backupify; Dropsuite)
    Coverage: all SharePoint sites; all OneDrive accounts; all Teams data
    Retention: 30-day version history (M365 native); backup solution adds extended retention (90 days+)
    Restoration: file-level; site-level; full restore from backup solution
    
  QUICKBOOKS (financial records — critical):
    QuickBooks Online: Intuit maintains data; QuickBooks has point-in-time restore for 90 days
    Additional protection: quarterly manual export (QuickBooks → Excel/QBO file) → saved to SharePoint
    Frequency: automated daily by Intuit; manual export quarterly + before any major operation
    Critical: QuickBooks is a system of record — corruption or loss requires manual reconstruction from source docs
    Entity isolation: separate QuickBooks company files per entity; backup covers each entity independently
    
  GOHIGHLEVEL (CRM):
    GHL maintains its own cloud infrastructure; limited native backup
    Protection: monthly GHL contact export → saved to SharePoint → [Entity] → CRM → Backup
    Focus: contact data; pipeline data; campaign history (lose this = lose relationship history)
    
  MONDAY.COM:
    Monday.com cloud service; limited native backup
    Protection: quarterly Monday.com board export (CSV) → saved to SharePoint
    
  AI WORKFLOW DATA:
    Meeting summaries; pre-meeting prep; Krista workflow outputs → saved to SharePoint (primary)
    SharePoint M365 backup covers this data
    
BACKUP TESTING PROTOCOL (quarterly):
  Test 1: SharePoint file restore — delete a test file; restore from backup; confirm successful
  Test 2: QuickBooks data — verify quarterly export is readable; spot-check 3 transactions
  Test 3: GHL contact restore — verify monthly export is complete and importable
  Document: test date; files tested; restore time; outcome; any issues
  
RTO / RPO TARGETS (per MBL Business Continuity Plan):
  Microsoft 365: RTO 4 hours (restore from M365 Backup); RPO 24 hours
  QuickBooks: RTO 8 hours (restore from Intuit point-in-time + manual export); RPO 30 days (quarterly export)
  GHL: RTO 24 hours (reimport from monthly export); RPO 30 days
  
HIPAA BACKUP REQUIREMENTS (Allevio):
  All backup solutions handling Allevio data → BAA required from backup vendor
  M365 Backup by Microsoft → covered by M365 BAA
  Any third-party backup vendor → separate BAA required before activating for Allevio data
  Backup media encryption: required for any Allevio backup
  Backup access controls: only Dr. Lewis (and designated Allevio personnel) access Allevio backups
  Backup retention for HIPAA: 6 years minimum for health-related records
```

## Output Format

```markdown
# Backup Operations Report — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Backup Status

| System | Backup Solution | Last Successful | Restore Tested | Status |
|--------|---------------|----------------|---------------|--------|
| Microsoft 365 | M365 Backup | Daily (auto) | [Date] | 🟢 |
| QuickBooks (all entities) | Intuit + Manual export | [Date] quarterly | [Date] | 🟢 |
| GoHighLevel (MBL; North Vista) | Monthly export | [Date] | [Date] | 🟢 |
| Monday.com | Quarterly export | [Date] | N/A | 🟡 |

---

## Restore Tests This Quarter
- [M365: deleted test file June 1; restored in 22 minutes ✅]
- [QuickBooks: Q1 export verified — 847 transactions readable ✅]

## HIPAA Backup Compliance (Allevio)
- M365 Backup BAA: ✅ (covered by M365 BAA)
- Backup encryption: ✅

## Issues
- [GHL monthly export — missed May; scheduled June 15 catch-up]
```

## Output Contract
- Restore tests are not optional — a backup that has never been successfully restored is not a backup, it is a hypothesis; the backup system may be configured correctly and still fail to restore data due to permission issues; corrupted backup files; format incompatibility; or incomplete data capture; Dr. Lewis tests restore for each critical system quarterly; the test is not "is the backup running?" — it is "did the restore actually produce usable data?"; if a restore test fails, Dr. Lewis escalates immediately: "Our M365 backup restore test failed — we may not have a valid backup. I need to investigate before this becomes a real incident."
- QuickBooks quarterly manual export is the recovery safety net — Intuit's point-in-time restore covers 90 days; the quarterly manual export extends recoverable data indefinitely; the export is Dr. Lewis's insurance against any scenario where Intuit's backup is unavailable (service outage; account suspension; company file corruption); the export takes 15 minutes per entity; it is non-negotiable because QuickBooks is the financial system of record; recovering from a QuickBooks data loss without backups means reconstructing months of financial data from source documents — a weeks-long process
- HITL required: backup audit → Dr. Lewis completes; Matt Mathison sees quarterly backup status in IT report; restore test failure → Dr. Lewis + Matt Mathison immediate; Allevio backup BAA → entity CEO reviews before activating any new backup vendor for Allevio data; data recovery operation → Dr. Lewis leads; entity CEO + Matt Mathison notified; actual data loss → SEV 1 incident (ai-incident-response-ops); HIPAA-adjacent data loss → legal counsel within 24 hours

## System Dependencies
- **Reads from:** Microsoft 365 Backup admin portal; Intuit QuickBooks Online (backup status; point-in-time restore); GoHighLevel (contact export); Monday.com (board export); SharePoint (where manual exports are stored); M365 BAA (Allevio backup coverage); Intune (device backup confirmation)
- **Writes to:** Backup audit reports (SharePoint → MBL → IT → Backup → Audit Reports → [Quarter]); manual exports (SharePoint → [Entity] → Backup → [System] → [YYYY-MM]); restore test records; business continuity plan updates; HIPAA backup compliance records (Allevio)
- **HITL Required:** Restore test failure → Dr. Lewis + Matt Mathison immediate; data loss → SEV 1 incident; Allevio new backup vendor → entity CEO + BAA; recovery operation → Dr. Lewis + entity CEO + Matt Mathison; HIPAA data loss → legal counsel within 24 hours; quarterly audit → Dr. Lewis; Matt Mathison sees summary

## Test Cases
1. **Golden path:** Q2 2026 quarterly backup audit. M365 Backup: daily auto-backup ✅; restore test — deleted test file SharePoint → MBL → Test → restore-test.docx; restored in 18 minutes ✅. QuickBooks: all 4 entity exports completed April 1 (Q1 export); verified readable; 847 MBL + 312 Allevio + 94 HIVE + 231 Column6 transactions confirmed ✅. GHL: MBL and North Vista monthly exports; June export completed June 5 ✅. Monday.com: quarterly CSV export completed ✅. HIPAA backup compliance: M365 BAA covers Allevio ✅; encryption confirmed ✅. All systems green. Report filed. No issues.
2. **Edge case:** M365 restore test shows that the restored SharePoint document is missing the last 3 days of changes (the M365 Backup is only capturing every-3-day snapshots instead of daily) → Dr. Lewis: "Restore test failure — M365 Backup is capturing every 3 days, not daily. Our RPO target for M365 is 24 hours. Current RPO: 72 hours. This needs to be corrected immediately. Escalation: (1) Matt Mathison notified — 'Our M365 backup RPO has drifted from 24 hours to 72 hours; I'm resolving today'; (2) M365 Backup admin portal: adjust backup frequency to daily; (3) Verify correction with a second restore test 2 days after fix. In the meantime: any critical SharePoint changes from the last 3 days that can't afford to be lost should be downloaded to an additional backup location until the daily backup is confirmed working."
3. **Adversarial:** Entity CEO argues "our data is in the cloud — we don't need backups; the cloud is always up" → Dr. Lewis: "Cloud services are highly reliable for availability — but they don't protect against all the scenarios backups address. Three real scenarios our backups protect against: (1) Ransomware — if malware encrypts our SharePoint files, cloud replication propagates the encrypted versions to all replicas; M365 Backup is the only way to restore to before the attack; (2) Accidental deletion — if someone deletes a significant folder, native M365 version history gives us 30 days; our backup gives us 90+ days and faster file-level restore; (3) Subscription/account issues — if Intuit has a billing problem with our QuickBooks account and our access is suspended, our quarterly manual export is the only way to access our financial history without going through Intuit. The cloud is up; our data isn't immune from these scenarios."

## Audit Log
Quarterly backup audit reports (all systems; all entities; SharePoint). Restore test records (date; system; file tested; outcome; restore time). Manual export records (QuickBooks; GHL; Monday.com; dates; file locations). HIPAA backup compliance records (Allevio; permanent). M365 BAA backup coverage records. Data recovery operation records. Business continuity plan versions.

## Deprecation
Backup architecture reviewed when MBL adopts new critical systems. Backup solutions reviewed when vendors change backup terms or pricing. RTO/RPO targets reviewed in annual business continuity plan review. HIPAA retention periods reviewed when regulations change. QuickBooks manual export process reviewed when Intuit changes backup capabilities.
