---
name: ops-disaster-recovery
description: "Build or execute a disaster recovery plan for data and systems. Use when the user says 'disaster recovery', 'DR plan', 'data recovery', 'recover data', 'backup and recovery', 'restore from backup', 'system recovery', 'DR testing', 'RPO', 'RTO', 'data backup plan', 'recover after a disaster', 'backup strategy', 'failover', or 'data loss recovery'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--system <system name>] [--action <build|test|execute>]"
---

# Ops Disaster Recovery

Build and maintain data and system disaster recovery (DR) plans at MBL portfolio companies — ensuring that if critical data or systems are lost, corrupted, or unavailable, the path to recovery is documented, tested, and achievable within defined time targets. DR planning is distinct from business continuity planning (ops-business-continuity-planner): BCP covers how the business operates during a disruption; DR covers how data and systems are recovered from a failure.

## When to Use
- A portfolio company has no documented backup or DR plan
- A data loss incident has occurred and recovery is needed now
- Annual DR test — validating that backups are restorable and recovery procedures work
- A new critical system is being implemented and needs DR coverage
- Allevio HIPAA contingency plan requires DR documentation (§164.308(a)(7))

## Disaster Recovery Framework

```
Key DR concepts:
  RPO — Recovery Point Objective: How much data can we afford to lose?
    (If we lose data, what's the most recent backup we can restore from?)
    Example: RPO = 4 hours means we might lose up to 4 hours of transactions
    
  RTO — Recovery Time Objective: How long can we be down before restoring?
    (From the moment of failure, how long until systems are restored?)
    Example: RTO = 24 hours means we accept being down for up to 24 hours
    
  Relationship: RPO drives backup frequency; RTO drives recovery procedure speed

System criticality tiers:
  Tier 1 — Mission critical (RPO: <1 hour / RTO: <4 hours)
    Allevio: AdvancedMD (billing), patient records
    HIVE: Production reporting, Covercy
    All: Microsoft 365 (email, Teams, SharePoint)
    
  Tier 2 — Business critical (RPO: 4 hours / RTO: <24 hours)
    All: QuickBooks, Bill.com
    Allevio: HR/payroll system
    
  Tier 3 — Important (RPO: 24 hours / RTO: <72 hours)
    All: CRM (GoHighLevel), project tools, analytics
    
  Tier 4 — Normal (RPO: 1 week / RTO: 1 week)
    All: Archive data, historical reports, non-active projects

Backup types:
  Cloud SaaS (AdvancedMD, QuickBooks, M365): Vendor-managed — must verify what's included
  On-premises/local files: Require explicit backup configuration
  SQL/database: Automated DB backups + transaction log backups
  Files: Automated cloud sync (OneDrive/SharePoint) + backup solution
  
  The vendor "backs up your data" trap: Most SaaS vendors back up data for THEIR disaster,
  not yours. Deletion or corruption by a user may not be recoverable from their backup.
  Always understand: what user-level errors can you recover from, and how far back?
```

## Output Format

```markdown
# Disaster Recovery Plan — <Company Name>
**Version:** [1.0] | **Date:** [Date] | **Last tested:** [Date]
**Plan owner:** Dr. John Lewis | **Approved by:** [CEO]
**HIPAA contingency plan reference:** [Yes — Allevio / N/A]

---

## System Inventory and Recovery Targets

| System | Tier | Data owner | RPO target | RTO target | Backup method | Backup tested? |
|--------|------|-----------|-----------|-----------|-------------|---------------|
| AdvancedMD (Allevio) | 1 | Vendor-managed | <1 hr | <4 hrs | Vendor backup | [Yes/No/Date] |
| Microsoft 365 | 1 | Vendor-managed + M365 backup | <1 hr | <4 hrs | M365 Backup (if licensed) | |
| QuickBooks Online | 2 | Intuit cloud | 4 hrs | <24 hrs | Intuit backup + manual export | |
| Bill.com | 2 | Vendor | 4 hrs | <24 hrs | Vendor backup | |
| SharePoint/OneDrive | 1-2 | M365 backup | <1 hr | <4 hrs | M365 recycle bin (93 days) | |
| [Local server/NAS] | [Tier] | [IT] | | | [Backup software] | |
| GoHighLevel (CRM) | 3 | Vendor | 24 hrs | <72 hrs | Vendor backup | |

---

## Backup Configuration

### Tier 1 Systems

**AdvancedMD (Allevio):**
- Backup method: Vendor-managed automated backup
- Backup frequency: [Daily / Continuous]
- Backup retention: [X days]
- Recovery capability: Contact AdvancedMD support at [number] — reference account [ID]
- User-level recovery (accidental deletion): [Can recover up to X days back / Not available]
- Last test: [Date] | Result: [Success / Failure / Not tested]
- HIPAA contingency: This is the primary PHI backup — documented per §164.308(a)(7)(ii)(A)

**Microsoft 365:**
- Backup method: M365 Backup (native) + [third-party if applicable]
- What's covered: Exchange (email), SharePoint, OneDrive, Teams
- Retention: Recycle bin — 93 days; M365 Backup — [X years if licensed]
- Admin recovery portal: [admin.microsoft.com — Dr. Lewis has global admin access]
- Last test: [Date] | Result: [Success / Failure / Not tested]

**QuickBooks Online:**
- Backup method: Intuit cloud automatic
- Export backup: Monthly QuickBooks backup exported to SharePoint/Finance/<Company>/QB-Backups/
- Recovery: Intuit support [number] or admin login restore
- Limitation: Point-in-time restore — may lose same-day transactions
- Last test: [Date]

---

## Recovery Procedures

### Tier 1 — Emergency Recovery Procedure (Active Data Loss)

**Step 1 — Declare DR event (0-15 min)**
1. Confirm this is a data loss event, not a display/connectivity issue
2. Stop any automated processes that might overwrite or compound the loss
3. Dr. Lewis declares DR event and takes command
4. Matt Mathison notified within 30 minutes (P1 incident — ops-incident-response)

**Step 2 — Assess scope (15-60 min)**
1. What data is lost or corrupted? What time period?
2. What is the most recent known-good backup?
3. What is the gap between the backup and now?
4. Is PHI involved? (Allevio — HIPAA breach assessment starts immediately)

**Step 3 — Initiate recovery (60 min+)**
1. Contact vendor support (AdvancedMD, Intuit, Microsoft) — provide account ID and incident description
2. Request point-in-time restore to last known-good state
3. If vendor cannot restore: activate Tier 2 (manual records / alternative process)
4. Document all recovery steps with timestamps

**Step 4 — Validate recovery**
1. Verify data completeness — reconcile restored records vs. known transactions
2. Test system functionality with the restored data
3. Communicate all-clear to staff

**Step 5 — Close and learn**
1. Identify data gap (what was lost) — notify relevant parties if PHI
2. Document the incident and recovery
3. Schedule post-mortem (ops-project-post-mortem) within 1 week
4. Implement prevention measures before next cycle

---

## DR Testing Schedule

| Test type | Systems covered | Frequency | Last test | Next test | Result |
|---------|----------------|-----------|---------|---------|--------|
| Backup restore test | QuickBooks + SharePoint | Semi-annual | [Date] | [Date] | |
| AdvancedMD recovery drill | AdvancedMD (Allevio) | Annual | [Date] | [Date] | |
| M365 item recovery | Email + OneDrive | Annual | [Date] | [Date] | |
| Full DR tabletop | All Tier 1 systems | Annual | [Date] | [Date] | |

**How to run a backup restore test:**
1. Identify a non-production file or record set to restore
2. Restore using the documented procedure
3. Verify the restored data matches the original
4. Document time to restore, any issues encountered
5. Update the DR plan if gaps were found

---

## HIPAA Contingency (Allevio — Required)

Per HIPAA Security Rule §164.308(a)(7):
- **Data backup plan:** AdvancedMD vendor-managed; M365 for administrative PHI
- **Disaster recovery plan:** This document (Allevio section); tested annually
- **Emergency mode operation:** Manual patient intake procedures (see BCP — ops-business-continuity-planner)
- **Testing and revision:** Annual DR test + update; event-triggered review
- **Applications criticality:** AdvancedMD — critical; M365 — critical; QuickBooks — important
- **PHI audit during recovery:** All emergency access to PHI during recovery must be logged even if normal audit trails are offline

---

## Matt Mathison Brief

DR plan last tested [Date]. [Key finding from test or "No issues — all systems recoverable within targets"]. [Any systems with untested or failed backups — specific]. [Action: testing complete / [System] needs attention].
```

## Output Contract
- Backups are tested, not assumed — "we back up to the cloud" is not a DR plan; the question is: have you actually restored from that backup and verified the data was intact? A backup that has never been tested is a hypothesis, not a guarantee; DR tests are conducted on the schedule above; the test is not disruptive (restore a test record, not a live system) but it is mandatory
- RPO and RTO targets are set before an incident, not during one — the recovery targets drive the backup frequency and recovery process design; a company that has never defined RPO/RTO will make those decisions under pressure during a crisis, which is the worst time to make them; define the targets during calm planning and the crisis response follows the plan
- HIPAA documentation is mandatory and specific for Allevio — the DR plan for Allevio is a regulatory document, not just an operational one; it must specifically address data backup, disaster recovery procedures, emergency mode operation, testing, and application criticality; Dr. Lewis ensures this section is complete, accurate, and reviewed annually; incomplete HIPAA contingency documentation is a compliance finding
- HITL required: Dr. Lewis builds and maintains DR plan; CEO reviews and approves; Matt Mathison receives annual test brief; active DR event (actual data loss) — Dr. Lewis commands with Matt Mathison notified; HIPAA breach during DR event — Privacy Officer + legal counsel mandatory; DR test results reviewed by Dr. Lewis before filing

## System Dependencies
- **Reads from:** Vendor backup documentation, system admin accounts, BCP documentation (ops-business-continuity-planner), HIPAA Security Rule requirements
- **Writes to:** DR plan (SharePoint/Ops/<Company>/IT/DisasterRecovery/); test records; HIPAA contingency documentation (Allevio); incident record (if actual DR event)
- **HITL Required:** Dr. Lewis builds and tests; CEO approves; Matt Mathison receives annual brief; active events require Dr. Lewis command; HIPAA events require Privacy Officer + legal

## Test Cases
1. **Golden path:** Annual DR test at MBL HoldCo → Test: restore a SharePoint folder from 30 days ago (simulating accidental deletion); procedure: M365 admin center → SharePoint → site contents → recycle bin → restore; result: folder restored in 3 minutes with full content; QB backup test: restore a journal entry from last week; result: Intuit restored backup in 8 minutes; test documented; RTO targets confirmed achievable; no issues found; Matt Mathison brief: "Annual DR test complete. M365 and QuickBooks both recover within targets. No gaps identified."
2. **Edge case:** QuickBooks Online data appears corrupted after a bulk import went wrong → Stop all further imports immediately; assess scope — how many records affected, what date range; call Intuit support — request point-in-time restore to pre-import state; Intuit can restore to any point within the last 180 days (QuickBooks Online); while waiting: identify all transactions that occurred between the restore point and now that would need to be re-entered; prepare a list for the controller; after restore, verify data integrity, then re-enter the valid transactions manually; post-mortem: why was a bulk import run without a pre-import backup export?
3. **Adversarial:** "Our vendor handles all of this — we don't need a separate DR plan" → Vendor backup protects against vendor-side disasters; it doesn't always protect against user-side errors (someone deletes 6 months of records, someone imports bad data that corrupts the existing records); the DR plan covers both: vendor recovery procedures AND what you do when the issue is on your side; respond: "You're right that AdvancedMD backs up regularly. Let's verify two things: (1) can they restore to a point-in-time if someone at Allevio accidentally deletes records? (2) what's the actual SLA on that restore? Those answers tell us if we have a gap."

## Audit Log
DR plan versions retained with dates. Test records retained with results and gaps. Active DR event records retained permanently. HIPAA contingency documentation retained permanently (Allevio). Matt Mathison annual briefs retained.

## Deprecation
Retire when portfolio companies have IT managers or MSPs who own DR planning, conduct automated backup testing with reporting, and maintain HIPAA-compliant DR documentation (Allevio) without Dr. Lewis building and testing the plan directly.
