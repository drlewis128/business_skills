---
name: data-backup-status-checker
description: "Verify data backup status and flag gaps in recovery capability. Use when the user says 'backup status', 'are our backups good', 'data backup check', 'verify backups', 'backup health', 'when was the last backup', 'backup verification', or 'can we recover from this'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--system <quickbooks|microsoft365|all>]"
---

# Data Backup Status Checker

Verify data backup health across critical business systems and flag any gaps in recovery capability before they become disasters.

## When to Use
- Monthly backup verification (standard cadence)
- After any system change or migration
- Before a major business event (acquisition, system upgrade)
- During incident response (can we restore?)
- Annual business continuity review

## Critical Systems to Protect (MBL Context)

| System | Data Type | RPO Target | Backup Method |
|--------|---------|-----------|--------------|
| QuickBooks / Accounting | Financial records | 24 hours | QB automated + manual export |
| Microsoft 365 (Email/SharePoint/Teams) | Communications, documents | 24 hours | Microsoft 365 Backup + 3rd party |
| Bill.com | AP history, vendor data | 48 hours | Platform retention + export |
| GoHighLevel (CRM) | Customer/contact data | 48 hours | Platform export |
| Monday.com | Project/board data | 48 hours | Platform export |
| Covercy (HIVE) | LP/fund data | 48 hours | Platform export |
| Endpoints (Laptops) | User files | 48 hours | Microsoft OneDrive sync |

## Backup Health Criteria

| Criterion | What to Check |
|---------|--------------|
| **Recency** | Was the last backup within the RPO window? |
| **Completeness** | Was the backup successful (not partial or failed)? |
| **Tested** | When was the last restore test? (Untested backups are not backups) |
| **Offsite/Cloud** | Is backup stored separately from primary data? |
| **Encryption** | Is backup data encrypted at rest? |
| **Access control** | Is backup access limited to authorized users? |

## Backup Status Ratings

| Rating | Meaning |
|--------|---------|
| 🟢 Healthy | Recent, complete, tested, offsite |
| 🟡 Caution | Backup exists but overdue for test or has gaps |
| 🔴 Critical | Backup missing, failed, or beyond RPO window |

## Output Format

```markdown
# Data Backup Status Report — <Entity>
**Date:** <date> | **Assessed by:** Dr. Lewis

## Critical System Status

| System | Last Backup | RPO | Status | Last Restore Test | Notes |
|--------|------------|-----|--------|------------------|-------|
| QuickBooks | <date> | 24h | 🟢 | <date> | Automated + manual weekly |
| Microsoft 365 | <date> | 24h | 🟡 | >6 months ago | Test restore overdue |
| Bill.com | <date> | 48h | 🟢 | Never tested | ⚠️ Test required |
| GoHighLevel | Never backed up | 48h | 🔴 | Never | No backup configured |

## Critical Gaps — Action Required
1. GoHighLevel — No backup configured — Revenue data at risk
   Action: Configure export to secure storage — Owner: Dr. Lewis — By: <date>
2. Microsoft 365 — Restore test overdue (6+ months) — Schedule test
   Action: Run restore test — Owner: Dr. Lewis — By: <date>

## Restore Tests Due
<Systems where restore has never been tested or is > 6 months old>

## Summary
| Status | Systems |
|--------|---------|
| 🟢 Healthy | <N> |
| 🟡 Caution | <N> |
| 🔴 Critical | <N> |

**Overall backup health:** 🟢 / 🟡 / 🔴
```

## Output Contract
- "Untested backup" is always flagged — testing is mandatory, not optional
- Critical gaps (no backup or beyond RPO) always surfaced first
- Every critical gap has a specific action, owner, and deadline
- HITL required before any backup configuration changes are made

## System Dependencies
- **Reads from:** Backup status from system admin consoles (provided), backup logs
- **Writes to:** Nothing (status report)
- **HITL Required:** Dr. Lewis approves backup configuration changes; Matt Mathison notified of any critical gap

## Test Cases
1. **Golden path:** All backups current and tested → clean green report with next test schedule
2. **Edge case:** Backup exists but has never been restore-tested → flags as yellow caution even if technically "healthy" — untested = unverified
3. **Adversarial:** Request to mark a never-tested backup as "healthy" → refuses, requires restore test documentation before marking healthy

## Audit Log
Monthly backup status reports retained. Restore test outcomes documented with date and systems tested.

## Deprecation
Retire when backup management platform provides automated health dashboards with alerting on backup failures.
