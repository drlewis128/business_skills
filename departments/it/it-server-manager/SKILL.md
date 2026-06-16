---
name: it-server-manager
description: "Manage on-premises and virtual servers. Use when the user says 'server management', 'servers', 'on-prem servers', 'virtual machines', 'VMs', 'server health', 'server performance', 'server capacity', 'server configuration', 'server inventory', 'file server', 'application server', 'database server', 'server maintenance', or 'server uptime'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--server <name or IP>] [--action <audit|maintain|capacity-plan|retire>]"
---

# IT Server Manager

Manage physical and virtual servers at MBL portfolio companies — covering inventory, health monitoring, capacity planning, maintenance windows, and lifecycle management. Most portfolio companies are moving toward SaaS and cloud, but on-prem or VM-based servers still exist at some locations (file servers, application servers, legacy systems). A server that isn't actively managed will eventually fail at the worst possible time.

## When to Use
- Server health review — how are the current servers performing?
- A server is experiencing performance issues (high CPU, disk full)
- Capacity planning — will current servers handle growth for the next 12 months?
- A server is approaching end-of-life and needs to be replaced or decommissioned
- A new server or VM needs to be provisioned
- Scheduled maintenance window — patching, backup test, hardware inspection

## Server Management Framework

```
Server inventory (minimum required records per server):
  Server name/ID, IP address, purpose/role, OS + version, hardware specs
  Age, warranty expiration, owner, location (rack/data center or cloud)
  Backup configuration, monitoring status, last patched date
  
Performance health thresholds:
  CPU: <70% average = healthy; 70-85% = watch; >85% sustained = investigate
  Memory: <80% = healthy; 80-90% = warn; >90% = critical (add RAM or redistribute load)
  Disk: >20% free = healthy; 10-20% = warn; <10% = critical (immediate action)
  Disk I/O: latency <10ms = healthy; 10-50ms = watch; >50ms = investigate
  
Maintenance windows:
  Production servers: Monthly maintenance window (scheduled, off-hours)
  Patch cycle: OS patches applied within 30 days of release (critical: within 7 days)
  Backup test: Full restoration test semi-annually (not assumed — actually tested)
  Hardware inspection: Annual (physical servers); quarterly (check disk SMART data)
  
Server lifecycle:
  Standard server life: 5 years (physical); VMs may be longer if cloud provider supports
  End-of-life planning: Start replacement planning 12 months before end-of-support
  Windows Server 2012: End of extended support Oct 2023 — must be upgraded or on Azure Arc
  Windows Server 2019/2022: Current supported versions
  
Migration to cloud consideration:
  If a server's primary purpose is file storage → Azure Files or SharePoint
  If a server hosts a legacy application → evaluate SaaS alternative
  If a server runs a database → Azure SQL or managed database service
  Cloud-first: For new workloads, prefer managed cloud services over new on-prem servers
```

## Output Format

```markdown
# Server Management Report — <Company Name>
**Date:** [Date] | **Total servers:** [N physical + N VMs]
**Overall health:** 🟢 Healthy / 🟡 Attention needed / 🔴 Action required
**Prepared by:** Dr. John Lewis

---

## Server Inventory

| Server | Role | OS | Age | CPU avg | Memory | Disk free | Last patched | Status |
|--------|------|-----|-----|---------|--------|-----------|------------|--------|
| [Name] | File server | Win Server 2022 | 2.5 yr | 12% | 45% | 38% | [Date] | 🟢 |
| [Name] | Legacy app | Win Server 2016 | 5.8 yr | 78% | 82% | 11% | [Date - 60 days] | 🔴 |
| [Name] | DB server | Ubuntu 22.04 | 1.2 yr | 34% | 67% | 42% | [Date] | 🟢 |

**Servers past end-of-support:** [List — immediate upgrade or migration required]
**Servers with disk <10% free:** [List — immediate action]
**Servers not patched in >30 days:** [List]

---

## Health Alerts

| Server | Issue | Severity | Action | Deadline |
|--------|-------|---------|--------|---------|
| [Name] | CPU >85% sustained — 3 days | 🔴 | Investigate root cause; right-size or add RAM | Today |
| [Name] | Disk 9% free | 🔴 | Clean logs; expand volume; or migrate | 48 hours |
| [Name] | Not patched in 61 days | 🟡 | Schedule patch window | This week |
| [Name] | End of extended support (OS) | 🔴 | Migrate or upgrade — no new security patches | 90-day plan |

---

## Backup Status

| Server | Backup schedule | Last backup | Last tested | Status |
|--------|----------------|------------|------------|--------|
| File server | Daily | [Yesterday] | [Date - 4 months] | 🟡 Test restoration this week |
| DB server | Every 4 hours | [2 hours ago] | [Date] | 🟢 |
| [Server] | [None configured] | — | — | 🔴 Critical gap |

**Servers with no backup:** [List — critical; data loss risk]

---

## Capacity Outlook (12-month)

| Server | Current load | Growth trend | Projected | Runway |
|--------|------------|------------|---------|--------|
| File server | 62% of 4TB | +8GB/month | 76% in 12 months | 2.5 years |
| DB server | 45% CPU at peak | +2%/month | >85% CPU in ~20 months | On track |

---

## Recommended Actions

| Action | Server | Priority | Owner | Timeline | Cost |
|--------|--------|---------|-------|---------|------|
| Migrate to Azure Files | File server (5+ yr old) | 🟡 Medium | Dr. Lewis | Q3 | $[X]/mo |
| Upgrade Win Server 2016 → 2022 | Legacy app server | 🔴 High | Dr. Lewis + Vendor | 60 days | $[X] |
| Clean and expand disk | [Server] | 🔴 Immediate | Dr. Lewis | Today | $0 |
| Configure backup | [Server] | 🔴 Immediate | Dr. Lewis | This week | $[X]/mo |

---

## Matt Mathison Brief (if critical server health or cost >$5K)

[Company] servers: [N] managed. [Key issue]. [Action underway or planned — with cost if >$5K].
```

## Output Contract
- No server runs without backup — a server with no backup is an unacceptable risk; data loss from a failed unprotected server has destroyed small businesses; configuring a backup for a server takes under 1 hour; the backup is tested with an actual restoration (not assumed to work) semi-annually; for servers with PHI at Allevio, backup encryption is required and backup is included in the HIPAA contingency plan
- End-of-support servers are addressed immediately — a server running an unsupported OS receives no new security patches; it is a permanent vulnerability; this is not a "plan to address" item — it has a 90-day migration or upgrade deadline from the date it's discovered; the cloud migration path (Azure Arc extended security updates for Windows Server) is evaluated first; Dr. Lewis owns the plan
- Performance issues are investigated, not watched — a server running at >85% CPU sustained is not a "watch" item; it is investigated and resolved; the root cause may be a misconfigured process, a workload that has grown beyond the server's capacity, or a need to right-size; the outcome is either a fix or a capacity plan with a timeline
- HITL required: Dr. Lewis manages all servers; server provisioning and decommission require Dr. Lewis; patch windows scheduled by Dr. Lewis; capacity plan shared with CEO annually; backup test results documented; migration plans >$5K require Dr. Lewis + CEO; CapEx >$25K requires Matt Mathison

## System Dependencies
- **Reads from:** Server monitoring tools (Azure Monitor, Datadog, native OS tools), backup console, patch management system, hardware vendor warranty portal
- **Writes to:** Server inventory (SharePoint/Ops/<Company>/IT/Servers/); patch log; backup test log; maintenance window calendar; capacity plan; asset register (ops-equipment-tracker)
- **HITL Required:** Dr. Lewis manages; patch windows scheduled by Dr. Lewis; backup test authorized by Dr. Lewis; decommission with data destruction certified by Dr. Lewis; CapEx >$5K needs CEO; >$25K needs Matt Mathison

## Test Cases
1. **Golden path:** Allevio annual server review → 2 servers: File server (Win Server 2022, 3yr old, 62% disk, backup daily ✅, last patched 18 days ago ✅), DB server (Ubuntu 22.04, 1yr old, 45% CPU avg, backup hourly ✅, patched 12 days ago ✅); Both within performance thresholds; File server backup restoration tested last month ✅; DB backup restoration tested 3 months ago (due for semi-annual test); HIPAA contingency plan includes both servers ✅; Recommendation: test DB backup restoration this quarter; begin 12-month capacity plan for file server; all good — no escalation needed
2. **Edge case:** The legacy application server is on Windows Server 2012 R2 (end of extended support Oct 2023) → This is a 🔴 critical finding; options: (1) Azure Arc extended security updates (buys 3 more years of security patches, ~$0.013/vCore-hour); (2) Migrate the application to a supported OS or SaaS alternative; (3) Upgrade the server to Windows Server 2022; present all 3 options with cost/timeline to CEO within 48 hours; in the meantime, isolate the server from internet-facing traffic; this is not optional — an unpatched production server is an open vulnerability
3. **Adversarial:** "We've never had a problem with these servers — we don't need all this management overhead" → The problem with "we've never had a problem" is that unmanaged servers don't announce their problems until they fail completely; the file server with 9% disk free will error and potentially corrupt data the day it hits 0% — no warning; the server that hasn't been patched in 90 days has known vulnerabilities; risk management at MBL Partners is about preventing problems, not reacting to them; the "management overhead" is a monthly check that takes 2 hours and prevents days of recovery

## Audit Log
Server inventory versioned annually and after changes. Patch history retained by server. Backup test results retained with date and outcome. Capacity reports retained annually. Maintenance window records retained. Hardware failures and root cause retained. Migration decisions documented.

## Deprecation
Retire when portfolio companies are fully on SaaS and managed cloud services with no on-premises servers — or when portfolio companies have IT managers who own server management with Dr. Lewis receiving exception reports rather than running the program.
