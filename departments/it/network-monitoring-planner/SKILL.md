---
name: network-monitoring-planner
description: "Plan and assess network monitoring for an entity. Use when the user says 'network monitoring', 'network health', 'network performance', 'bandwidth monitoring', 'network alerts', 'network visibility', 'uptime monitoring', or 'how do we know if the network is down'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <plan|assess|report>] [--scope <lan|wan|cloud|all>]"
---

# Network Monitoring Planner

Plan and assess network monitoring for an entity. You can't fix what you can't see. Most small and mid-market entities have either no monitoring (flying blind) or monitoring they don't review (data theater). This skill designs the right monitoring posture for the entity's size and risk tolerance.

## When to Use
- Onboarding a portfolio company — what network visibility do they have?
- Building a monitoring plan from scratch
- Recurring network performance review
- Post-outage — what did monitoring miss?
- Preparing for a compliance audit (network monitoring is a SOC 2 requirement)

## What to Monitor

| Category | What | Why |
|---------|------|-----|
| **Uptime / availability** | Routers, switches, firewalls, internet connectivity | Know before users call |
| **Bandwidth** | WAN utilization, top talkers, saturation | Identify bottlenecks and misuse |
| **Latency** | Ping times to critical services (M365, CRM, cloud) | Diagnose slow app performance |
| **DNS / DHCP** | Resolution failures, rogue DHCP | Foundational service health |
| **Security events** | Failed logins, port scans, unusual traffic | Early attack detection |
| **Wireless** | AP health, client count, signal strength | Office productivity |
| **Cloud connectivity** | VPN tunnel health, cloud egress | Remote work and cloud SaaS |

## Alert Priority

| Alert | Priority | Response |
|-------|---------|---------|
| Internet connection down | P1 | Immediate — IT on-call |
| Core switch/router unresponsive | P1 | Immediate — IT on-call |
| Firewall alert — potential intrusion | P1 | Immediate — IT Manager + Dr. Lewis |
| WAN bandwidth > 90% | P2 | Same day investigation |
| Multiple failed VPN logins | P2 | Same day — investigate for intrusion |
| AP offline | P3 | Business hours |
| DNS resolution degraded | P2 | 1-hour response |

## Output Format

```markdown
# Network Monitoring Plan — <Entity>
**Date:** <date> | **Scope:** LAN / WAN / Cloud / All
**Current monitoring tool:** <tool or "None">

---

## Current Monitoring Assessment

| Category | Monitored? | Tool | Gap |
|---------|-----------|------|-----|
| Internet uptime | Yes / No | <tool> | <gap> |
| Core network devices | Partial / No | | |
| Bandwidth utilization | No | | Critical gap — no capacity visibility |
| Security events | No | | High risk — no threat detection |
| Wireless health | No | | |
| Cloud connectivity | No | | |

**Overall monitoring maturity:** None / Basic / Intermediate / Advanced
**Critical gaps:** <list>

---

## Recommended Monitoring Stack (by entity size)

### SMB (< 50 employees)
| Tool | Purpose | Cost |
|------|---------|------|
| PRTG / Zabbix / LibreNMS | Network device monitoring, uptime | $0-$500/yr |
| Cloudflare / Pingdom | External uptime + performance | $0-$100/yr |
| Firewall built-in reports | Security event logging | Included |
| ISP portal | WAN bandwidth | Included |

### Mid-Market (50-200 employees)
| Tool | Purpose | Cost |
|------|---------|------|
| SolarWinds / Auvik | Network monitoring, topology mapping | $1-3K/yr |
| Splunk / Elastic SIEM | Security event correlation | $3-10K/yr |
| ThousandEyes / Catchpoint | Cloud SaaS performance | $2-5K/yr |

---

## Alert Routing

| Alert | Notification | Channel | Escalation If No Response |
|-------|------------|---------|--------------------------|
| P1 (outage, security) | IT on-call | SMS + phone call | IT Manager in 15 min |
| P2 (degraded) | IT Tech | Email + Slack #it-alerts | IT Manager in 1 hour |
| P3 (minor) | IT Tech | Email | Next business day |

---

## Monitoring Dashboard (Key Metrics — Daily Review)

- Internet uptime (last 24 hours): <N>% / target: > 99.9%
- Core device health: <N>/<N> online
- WAN bandwidth peak utilization: <N>% / threshold: 80%
- Security events: <N> flagged / <N> investigated
- VPN active sessions: <N>

---

## Remediation Plan for Gaps

| Gap | Action | Owner | Timeline | Cost |
|-----|--------|-------|---------|------|
| No network monitoring at all | Deploy Auvik or PRTG | IT Manager | 2 weeks | $800/yr |
| No security event logging | Enable firewall syslog + basic SIEM | IT Engineer | 4 weeks | $500/yr |
| No alerting configured | Configure alerts in monitoring tool | IT Tech | 1 week | Included |
```

## Output Contract
- Monitoring gaps always identified with risk level — visibility is not optional for a secure environment
- Alert routing always mapped to named on-call owners with escalation paths
- Monitoring plan always sized to the entity — enterprise tooling for a 10-person company is over-kill
- HITL required: IT Manager approves monitoring plan and tool selection; Dr. Lewis informed of any entity with zero network monitoring (critical risk)

## System Dependencies
- **Reads from:** Network topology, existing tools, headcount (provided)
- **Writes to:** Nothing (monitoring plan for HITL review and IT implementation)
- **HITL Required:** IT Manager approves monitoring tool selection and budget; Dr. Lewis notified of any entity with critical monitoring gaps (zero visibility)

## Test Cases
1. **Golden path:** 30-person entity, no current monitoring → assesses as "None" maturity, recommends Auvik ($800/yr) for device monitoring + firewall syslog for security events, 3-week implementation plan, P1/P2 alert routing configured
2. **Edge case:** Entity has monitoring tools but never reviews them → diagnoses as "data theater," recommends daily 10-minute dashboard review as a habit, sets up automated weekly report to IT Manager
3. **Adversarial:** IT team argues monitoring isn't needed because "we haven't had outages" → explains that unmonitored networks experience the same outages — they just find out later, documents the risk, notes it will be flagged in the next cyber insurance audit

## Audit Log
Network monitoring assessments retained by entity and date. Major incidents and monitoring gaps documented.

## Deprecation
Retire when entity deploys a managed network monitoring service or NOC (Network Operations Center) with 24/7 coverage, automated alerting, and monthly performance reporting.
