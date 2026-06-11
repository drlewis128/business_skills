---
name: backup-verification-checker
description: "Verify backup integrity and recovery readiness across systems. Use when the user says 'backup verification', 'check our backups', 'are our backups working', 'backup status', 'backup health', 'test backup restore', or 'backup compliance'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <servers|endpoints|cloud|saas|all>] [--format <report|checklist>]"
---

# Backup Verification Checker

Verify that backups are working, complete, and recoverable. The only thing worse than no backup is a backup you believe in that doesn't actually work. Backup verification (not just completion) is the difference between a recovery and a data loss event.

## When to Use
- Monthly backup health check
- Before a major system change (verify backup before the change)
- Annual DR testing (verify restore capability)
- New system deployed (verify backup is configured and working)
- Post-incident (confirm data can be recovered to the right point)

## Backup Verification Principles

1. **Completion ≠ Integrity** — A backup job that "completed" may have silent failures; test restores regularly
2. **3-2-1 Rule** — 3 copies, on 2 different media, with 1 offsite copy
3. **RPO dictates frequency** — If RPO is 4 hours, backup must run every 4 hours
4. **Test restores, not just logs** — Restore a file or database to verify integrity quarterly
5. **Encryption + access control** — Backups contain sensitive data; they must be protected

## Backup Inventory

| System | Tier | Backup Frequency | Retention | Backup Target | 3-2-1 Met? | Last Verified |
|--------|------|----------------|---------|-------------|-----------|-------------|
| SRV-001 (app server) | 1 | Daily | 30 days | Cloud (AWS S3) + local NAS | Partial | <date> |
| QuickBooks Online | 1 | Auto (QBO built-in) | 90 days | QBO cloud | No offsite | <date> |
| Microsoft 365 | 1 | Auto (MS retention) | 90 days | MS cloud | No offsite | N/A |
| Endpoints | 3 | Weekly | 30 days | Cloud (Backblaze) | Partial | <date> |

## Output Format

```markdown
# Backup Verification Report — <Entity>
**Date:** <date> | **Systems in scope:** <N>

---

## Backup Health Summary

| System | Last Backup | Backup Status | Last Restore Test | Test Result | Status |
|--------|-----------|-------------|----------------|------------|--------|
| SRV-001 | <date> 02:00 | ✅ Completed (98.2 GB) | <date> | ✅ Pass — restored in 22 min | 🟢 |
| QuickBooks | <date> (auto) | ✅ Cloud auto-backup | <date> | Manual export verified | 🟢 |
| Microsoft 365 | Continuous | ✅ MS retention | Never tested | ⚠️ No restore test | 🟡 |
| Endpoints | <date - 8 days> | ❌ Backup missed | Never tested | ❌ | 🔴 |

---

## Issues Found

| Issue | System | Severity | Action | Owner | Due |
|-------|--------|---------|--------|-------|-----|
| Endpoint backup failed 8 days ago — no alert | All endpoints | High | Investigate failure; re-run; fix alerting | IT Tech | 24 hours |
| M365 restore never tested | Microsoft 365 | Medium | Run a mailbox restore test | IT Manager | 30 days |
| No offsite copy of QuickBooks data | QuickBooks | Medium | Set up export + cloud copy | IT Engineer | 30 days |

---

## 3-2-1 Compliance

| System | Copy 1 | Copy 2 | Copy 3 (Offsite) | 3-2-1 Met? |
|--------|--------|--------|----------------|-----------|
| SRV-001 | Local NAS | AWS S3 | — | ❌ No dedicated offsite (AWS = offsite, passes if in different region) |
| QuickBooks | QBO cloud | — | — | ❌ Single copy |
| M365 | MS cloud | — | — | ❌ Single copy (Microsoft handles redundancy) |

---

## Restore Test Log

| System | Test Date | Test Type | Data Restored | Success? | Time to Restore | Notes |
|--------|---------|---------|-------------|---------|----------------|-------|
| SRV-001 | <date> | File restore | 5 GB random sample | ✅ Yes | 22 min | Monthly test |
| SRV-001 | <date> | Full system restore (DR test) | Full 98 GB | ✅ Yes | 4.2 hours | Annual DR test |
| M365 | Never | — | — | ❌ Not tested | — | Schedule |

---

## Monthly Backup Verification Checklist

- [ ] All backup jobs completed successfully (check logs)
- [ ] No alerts missed (alert channel active and monitored)
- [ ] At least one restore test completed (file-level minimum)
- [ ] Backup storage utilization within retention policy
- [ ] No backup jobs older than 2× the scheduled frequency
```

## Output Contract
- Restore test always separate from backup completion check — completed ≠ recoverable
- Every failed or missed backup triggers an immediate alert — not a monthly report finding
- 3-2-1 compliance always assessed — single-copy backups are not DR-ready
- HITL required: IT Manager reviews monthly backup report; Dr. Lewis notified if any Tier 1 system has missed backups or failed restore test

## System Dependencies
- **Reads from:** Backup system logs, cloud storage, backup platform (provided)
- **Writes to:** Nothing (verification report for HITL review and IT action)
- **HITL Required:** IT Manager reviews monthly report; Dr. Lewis notified immediately of any Tier 1 backup failure or failed restore test

## Test Cases
1. **Golden path:** Monthly check, 6 systems → 5 passed, 1 endpoint backup missed 8 days, M365 restore test overdue; action list with priorities, owners, and deadlines
2. **Edge case:** Backup completed but restore test fails (silent data corruption) → immediately escalates to IT Manager and Dr. Lewis, initiates emergency backup from alternate method, schedules root cause investigation, informs Finance if financial data is affected
3. **Adversarial:** IT team argues monthly restore tests are too time-consuming → quantifies the time cost ($X per test × 12 = $Y/year) vs. the average recovery cost from data loss event, recommends a quarterly full restore with monthly file-level spot checks as a middle ground

## Audit Log
Backup verification reports retained by entity and month. Restore test results documented. Incidents (missed backups, failed restores) recorded with remediation.

## Deprecation
Retire when entity deploys an enterprise backup platform (Veeam, Acronis, Cohesity) with automated restore verification, compliance reporting, and alerting.
