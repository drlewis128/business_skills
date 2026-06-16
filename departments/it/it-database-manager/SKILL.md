---
name: it-database-manager
description: "Manage database health, backups, and performance. Use when the user says 'database management', 'database admin', 'DBA', 'database health', 'database backup', 'database performance', 'database maintenance', 'SQL database', 'database slow', 'database storage', 'database monitoring', 'database restore', 'database query', 'database migration', or 'database optimization'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--database <name or type>] [--action <health-check|backup-verify|performance|maintenance>]"
---

# IT Database Manager

Manage database health, backup, and performance at MBL portfolio companies — ensuring that critical business databases are backed up, performing within acceptable parameters, and maintained for reliability. Databases are the most unforgiving failure mode in IT: a corrupt or unrecoverable database can mean total data loss; a slow database brings operations to a crawl; an unmonitored database runs out of storage and crashes. At portfolio scale, most databases are managed SaaS (AdvancedMD, QuickBooks, Covercy — vendor-managed), with IT responsibility focused on any self-managed databases supporting custom applications.

## When to Use
- A custom database (Azure SQL, MySQL, PostgreSQL) needs health monitoring
- Database performance is slow — queries are taking longer than expected
- Backup verification — was the last backup successful and restorable?
- Database storage is approaching capacity
- A database needs to be migrated to a new server or cloud platform
- A new application database is being provisioned

## Database Management Framework

```
Database landscape at MBL portfolio:
  Vendor-managed (SaaS — IT responsibility is minimal):
    AdvancedMD: Vendor manages database; IT ensures backups per BAA
    QuickBooks Online: Intuit manages; IT configures monthly data export as contingency
    Bill.com: Vendor manages
    Covercy: Vendor manages; IT verifies export capability
    
  Self-managed (IT owns full responsibility):
    Azure SQL / SQL Server: Any custom application databases
    MySQL / PostgreSQL / SQLite: Any self-hosted application databases
    MongoDB / document stores: Any NoSQL custom application databases
    
    At current MBL portfolio scale: Most data is in SaaS; self-managed databases are limited
    
For self-managed databases, the health checklist:
  1. Backup: Automated daily backup; last backup verified; restoration test semi-annually
  2. Storage: Used vs. capacity; growth trend; alert at 80%
  3. Performance: Query response times; slow query log analysis; index health
  4. Security: Access control (least privilege); no default credentials; encrypted at rest
  5. Version: Is the database engine version current and supported?
  6. Monitoring: Automated health alerts configured (it-monitoring-setup integration)
  
Backup standards for self-managed databases:
  Point-in-Time Recovery (PITR): Preferred for transactional databases
  Full daily backup + transaction log backup every 1-4 hours for critical databases
  RPO target: <4 hours for business-critical; <1 hour for mission-critical (Allevio)
  RTO target: <24 hours business; <4 hours mission-critical
  Restoration test: Quarterly for critical databases; semi-annually for others
  
Performance troubleshooting indicators:
  Slow queries: Query taking >1 second (for transactional workloads) — investigate
  Missing indexes: Full table scans on large tables — add indexes
  Lock contention: Queries waiting on each other — review transaction patterns
  Disk I/O saturation: Disk read/write waits >50ms — storage upgrade needed
  Memory pressure: Database using >90% of allocated RAM — add memory
```

## Output Format

```markdown
# Database Health Report — <Company Name> — <Database Name>
**Database:** [Name] | **Engine:** [SQL Server / PostgreSQL / MySQL / Azure SQL]
**Server:** [Cloud / On-prem location] | **Version:** [X.Y] | **Size:** [X GB]
**Date:** [Date] | **Prepared by:** Dr. John Lewis

---

## Health Summary

| Check | Status | Metric | Threshold | Action |
|-------|--------|--------|---------|--------|
| Last backup | Good / Failed / Unknown | [Date, Time] | Daily | Verify + investigate if failed |
| Backup tested (restoration) | Tested [Date] / Not tested | | Quarterly | Schedule test |
| Storage used | [X GB of Y GB] ([X%]) | | Alert at 80% | [Expand or archive if >80%] |
| Database version | Current / Outdated | [Version] | Current or N-1 | [Upgrade plan] |
| Query performance (avg) | [X ms avg] | | <500ms (target) | [Investigate if slow] |
| Slow queries (>1 sec) | [N this week] | | 0 target | [List + fix] |
| Connection pool | [X/Y used] | | <80% | |
| Backup encryption | Enabled / Disabled | | Required | Enable |
| Access control (least privilege) | Compliant / Gap | [Users with excess] | | Remediate |

**Overall health:** Good / Needs attention / Critical

---

## Backup Status

| Backup type | Frequency | Last successful | Next scheduled | Status |
|-------------|----------|----------------|--------------|--------|
| Full backup | Daily | [Date, Time] | [Next date] | ✅ / ❌ |
| Transaction log | Every 4 hrs | [Date, Time] | | ✅ / ❌ |
| Offsite copy | Daily (to Azure Blob) | [Date] | | ✅ / ❌ |

**Last restoration test:** [Date] — Result: [Success: restored in X minutes / Failure: reason]

---

## Performance

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Average query time | [X ms] | <500ms | |
| Slow queries (>1s) last 7 days | [N] | 0 | |
| Index health | [% fragmented] | <30% frag | |
| Cache hit ratio | [X%] | >95% | |

**Slow queries this week:**

| Query | Avg execution | Frequency | Issue | Fix |
|-------|-------------|---------|-------|-----|
| [Query description] | [X sec] | [N/day] | Missing index on [field] | Add index |

---

## Storage Trend

| Date | Size | Growth |
|------|------|--------|
| [30 days ago] | [X GB] | |
| [Today] | [X GB] | +[Y GB] |
| **12-month projection** | **[X GB]** | **Runway: [N months at current capacity]** |

---

## Recommended Actions

| Priority | Action | Effort | Owner | Deadline |
|---------|--------|--------|-------|---------|
| 🔴 | Schedule restoration test (not done in 8 months) | 2 hrs | Dr. Lewis | This week |
| 🟡 | Add index on [table].[field] — 5 slow queries fixed | 30 min | Dr. Lewis | This week |
| 🟡 | Archive old data (3+ years) to reduce size | 4 hrs | Dr. Lewis | Next month |
```

## Output Contract
- Backup restoration is tested, not assumed — a backup that has never been tested is not a backup; it is a file that may or may not restore correctly; for every self-managed database, Dr. Lewis performs a restoration test quarterly: spin up a test instance, restore the backup, verify that the database is functional and data is intact; this is the only way to know the backup works; the test result is documented
- PHI databases at Allevio have the strictest backup and recovery requirements — HIPAA §164.308(a)(7) requires data backup and disaster recovery plans; for any database that stores ePHI, backups are daily (minimum), encrypted at rest, stored in a HIPAA-eligible storage location (with BAA), and restoration is tested semi-annually; the backup log is part of the HIPAA contingency plan documentation
- Slow queries are fixed at the root, not worked around — when the application is slow because of a database query, the correct fix is to optimize the query (add an index, rewrite the query, or adjust the database schema); the wrong fix is to increase server resources (adding RAM to a database that has a full-table-scan query just makes the full-table-scan faster, it does not fix it); Dr. Lewis analyzes the slow query log and implements fixes
- HITL required: Dr. Lewis manages self-managed databases; backup restoration tests by Dr. Lewis; PHI database changes require Dr. Lewis + Privacy Officer (Allevio); database access changes by Dr. Lewis; schema migrations require Dr. Lewis + application owner review; storage expansions >$1K require CEO

## System Dependencies
- **Reads from:** Database monitoring console (Azure SQL, pgAdmin, MySQL Workbench), backup console, slow query log, Azure Monitor / CloudWatch database metrics
- **Writes to:** Database health report (SharePoint/Ops/<Company>/IT/Databases/); backup log; restoration test records; performance optimization log; HIPAA contingency plan (Allevio)
- **HITL Required:** Dr. Lewis manages; backup restoration tests by Dr. Lewis; PHI database changes with Privacy Officer (Allevio); access changes by Dr. Lewis; storage cost >$1K by CEO

## Test Cases
1. **Golden path:** Quarterly database health check for custom Azure SQL database (MBL reporting) → Health: Backup daily ✅ (last: yesterday 2 AM); Restoration test: last tested 3 months ago — schedule this week; Storage: 47GB of 100GB (47%) ✅ — growth trend: +1.5GB/month — 35 months runway ✅; Performance: avg query 180ms ✅; Slow queries: 3 this week — all on the same report query (full table scan on transactions table) — add index on [date + entity] column → query drops to 12ms ✅; Version: SQL Server 2022 (current) ✅; Backup encryption: enabled ✅; Restoration test scheduled for Friday morning; index added and tested ✅
2. **Edge case:** Database backup fails silently (backup job reports success but no backup file is created) → This is the most dangerous backup failure mode; the backup reports success but the file does not exist; discovered during routine verification (check that the backup file actually exists and has the expected size); root cause: backup destination path changed during a server reconfiguration; fix: correct the backup destination path; run an immediate manual backup and verify the file; set up monitoring alert that checks for backup file existence within 1 hour of scheduled backup time; a backup job that does not verify the output file is incomplete monitoring
3. **Adversarial:** "The database is slow but we don't want to spend money on a bigger server" → In most cases, database performance issues are not resource problems — they are query optimization problems; a missing index on a frequently-queried column causes a 5-minute query that runs in 2 seconds after the index is added; the server is usually fine; analyze the slow query log first (this is free); add missing indexes (this is free); if after optimization the database is genuinely resource-constrained, then evaluate right-sizing the server

## Audit Log
Database health reports retained quarterly. Backup logs retained 12 months. Restoration test records retained permanently. Slow query analysis and optimization records retained. Schema migration records retained. PHI database access changes retained permanently (Allevio). Storage expansion records retained.

## Deprecation
Retire when portfolio companies have dedicated database administrators (DBAs) who manage health, backup, performance, and maintenance independently — with Dr. Lewis receiving quarterly health summaries and reviewing PHI database access controls at Allevio. PHI database controls and HIPAA contingency plan documentation are permanent requirements.
