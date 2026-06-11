---
name: server-health-monitor
description: "Monitor and report on server health and performance. Use when the user says 'server health', 'server performance', 'server monitoring', 'is the server healthy', 'server metrics', 'server status', 'check server', or 'server resource utilization'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--server <name>] [--format <status|report|alert>]"
---

# Server Health Monitor

Monitor and assess server health, performance, and capacity. A server that fails during business hours is a crisis; a server that degrades gradually is invisible until it fails. Server health monitoring converts reactive firefighting into proactive management.

## When to Use
- Daily or weekly server health check
- After a performance complaint from users
- Planning capacity (is the server approaching limits?)
- Before a major change or upgrade
- Monthly IT operations report

## Health Dimensions

| Dimension | Metric | Warning | Critical |
|---------|--------|---------|---------|
| **CPU** | Average utilization (15-min avg) | > 70% | > 85% |
| **Memory** | Used % of total RAM | > 75% | > 90% |
| **Disk** | Used % of each volume | > 70% | > 85% |
| **Disk I/O** | Read/write latency | > 10ms | > 25ms |
| **Network** | Throughput vs. capacity | > 60% | > 80% |
| **Uptime** | Time since last restart | — | < 24 hrs (unexpected) |
| **Services** | Critical services running | Warning | Stopped |
| **Patch level** | OS and software versions | 1 behind | 2+ behind |
| **Backup** | Last successful backup | > 24 hrs ago | > 48 hrs ago |
| **Temperature** | CPU/chassis temp (physical) | > 65°C | > 75°C |

## Output Format

```markdown
# Server Health Report — <Entity>
**Date:** <date> | **Monitoring period:** Last 24 hours / 7 days

---

## Server Status Overview

| Server | Role | OS | Uptime | CPU | RAM | Disk | Status |
|--------|------|----|----|----|----|----|----|
| SRV-001 | App server | Ubuntu 22.04 | 47 days | 42% avg | 68% | 71% /var 🟡 | 🟢 Healthy |
| SRV-002 | DB server | Windows 2022 | 3 days ⚠️ | 38% avg | 55% | 45% | 🟡 Check |
| SRV-003 | Backup server | Ubuntu 20.04 | 180 days | 12% avg | 30% | 82% /backup 🟡 | 🟡 Warning |

---

## Detailed Health — SRV-001

| Metric | Current | 7-Day Avg | Trend | Status |
|--------|---------|----------|-------|--------|
| CPU (avg) | 42% | 38% | ↑ +4% | 🟢 |
| CPU (peak) | 89% | 82% | ↑ | 🟡 Peaks high — investigate |
| RAM used | 10.9 GB / 16 GB (68%) | 65% | ↑ | 🟢 |
| Disk / (root) | 22 GB / 80 GB (28%) | Stable | → | 🟢 |
| Disk /var | 57 GB / 80 GB (71%) | 68% growing | ↑ | 🟡 Watch |
| Last backup | 6 hours ago | Daily | → | 🟢 |
| Services | All 12 services running | — | → | 🟢 |
| Patch level | Current | — | — | 🟢 |

---

## Issues Requiring Action

| Server | Issue | Severity | Action | Owner | Due |
|--------|-------|---------|--------|-------|-----|
| SRV-002 | Unexpected restart 3 days ago — no investigation | High | Review system logs for restart cause | IT Engineer | Today |
| SRV-003 | /backup volume at 82% — 6 weeks to critical | Medium | Extend volume or implement backup cleanup | IT Engineer | 14 days |
| SRV-001 | CPU peaks > 85% during business hours | Medium | Identify high-CPU process; consider scaling | IT Engineer | 7 days |

---

## Capacity Runway

| Server | Resource | Current | Days to Warning | Days to Critical |
|--------|---------|---------|----------------|----------------|
| SRV-003 | /backup disk | 82% | Already warned | ~42 days at current growth |
| SRV-001 | RAM | 68% | 60 days | 90 days |
```

## Output Contract
- Unexpected restarts always investigated — never treated as a non-event
- Capacity runway always calculated for any metric in Warning state
- Backup status always included — a healthy server without a working backup is not truly healthy
- HITL required: IT Manager notified of any Critical-state metric; Dr. Lewis notified if a Tier 1 production server goes Critical or unexpectedly restarts

## System Dependencies
- **Reads from:** Server monitoring platform, OS logs, SNMP data (provided or from monitoring tool)
- **Writes to:** Nothing (health report for IT review and action)
- **HITL Required:** IT Manager reviews weekly; any Critical alert triggers immediate IT Manager notification; Dr. Lewis notified of Tier 1 server issues

## Test Cases
1. **Golden path:** Weekly server health check → SRV-001 healthy with one medium CPU peak issue, SRV-002 unexpected restart 3 days ago (requires investigation), SRV-003 backup disk at 82% (14-day runway); action items with named owners
2. **Edge case:** Server monitoring tool is offline — no telemetry available → documents monitoring outage as a risk, uses manual health checks (SSH, Task Manager, disk usage commands), recommends restoring monitoring within 24 hours as P2
3. **Adversarial:** Server has been running for 400 days without a restart → recommends a planned maintenance window restart (accumulated memory leaks, pending updates); not flagged as an emergency, but scheduled for next maintenance window

## Audit Log
Server health reports retained by server and week. Critical alerts and investigations documented. Capacity incidents logged.

## Deprecation
Retire when entity deploys server monitoring with automated alerting, real-time dashboards, anomaly detection, and capacity trend analysis.
