---
name: security-metrics-dashboard
description: "Build a security metrics dashboard and KPI report. Use when the user says 'security metrics', 'security KPIs', 'security dashboard', 'security reporting', 'how is security performing', 'security scorecard', 'cybersecurity metrics', or 'security status report'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--audience <exec|board|it-team|all>] [--period <monthly|quarterly>]"
---

# Security Metrics Dashboard

Build a security metrics dashboard and KPI report. Security without measurement is just activity. This skill builds meaningful security metrics — the ones that tell you whether you're actually getting safer, not just busier. Metrics are structured for two audiences: technical (IT team, Dr. Lewis) and executive (Matt Mathison, board-level).

## When to Use
- Monthly security metrics report for IT team and Dr. Lewis
- Quarterly executive security briefing for Matt Mathison
- Board-level cybersecurity update
- Building a security KPI framework from scratch
- Presenting security posture to cyber insurance carrier or auditor

## Metric Categories

| Category | Measures | Audience |
|---------|---------|---------|
| **Risk posture** | Are we getting safer over time? | Executive + IT |
| **Vulnerability management** | How fast are we finding and fixing vulns? | IT team |
| **Incident response** | How well are we detecting and responding? | IT + Executive |
| **Identity & access** | Is access controlled appropriately? | IT team |
| **Awareness & culture** | Are employees the last line of defense or the biggest risk? | Executive + IT |
| **Compliance** | Are we meeting our regulatory and policy obligations? | Executive + Compliance |

## Output Format

```markdown
# Security Metrics Dashboard — <Entity>
**Period:** <month/quarter> | **Date:** <date>
**Audience:** Executive / IT Team / Both

---

## Executive Scorecard (Matt Mathison / Leadership)

| Metric | This Period | Last Period | Target | Trend | Status |
|--------|-----------|-----------|--------|-------|--------|
| Microsoft Secure Score | 78% | 76% | 85% | ↑ | 🟡 Improving |
| Critical vulnerabilities open | 0 | 1 | 0 | ↑ | ✅ |
| High vulnerabilities open >7 days | 2 | 4 | 0 | ↑ | 🟡 |
| Security incidents (all severity) | 3 | 5 | <5 | ↑ | ✅ |
| P1 incidents | 0 | 0 | 0 | — | ✅ |
| Phishing simulation click rate | 7% | 12% | <5% | ↑ | 🟡 Improving |
| MFA coverage | 97% | 94% | 100% | ↑ | 🟡 |
| SLA compliance (patch) | 91% | 87% | 95% | ↑ | 🟡 Improving |
| Cyber insurance renewal | On track | — | Renew <date> | — | ✅ |

**Bottom line:** Security posture is improving. Secure Score up 2 points. Phishing click rate declining (training working). 2 high vulnerabilities remain open past SLA — assigned to IT Engineer, due <date>.

---

## IT Team Detail

### Vulnerability Management
| Metric | Value | SLA | Status |
|--------|-------|-----|--------|
| Total open vulnerabilities | 28 | | |
| Critical open | 0 | 0 open | ✅ |
| High open | 3 | 0 >7 days | 🔴 2 overdue |
| Medium open | 18 | 0 >30 days | 🟡 1 overdue |
| Scan coverage | 100% | 100% | ✅ |
| Mean time to remediate (Critical) | N/A (none this period) | <3 days | ✅ |
| Mean time to remediate (High) | 9 days avg | <7 days | 🔴 |

### Incident Response
| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Total incidents | 3 | | |
| P1 incidents | 0 | 0 | ✅ |
| P2 incidents | 1 | | |
| Mean time to detect (MTTD) | 4 hours | <1 hour | 🔴 |
| Mean time to contain (MTTC) | 2 hours | <4 hours | ✅ |
| False positive rate (alerts) | 62% | <50% | 🔴 Tuning needed |

### Identity & Access
| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| MFA coverage (all users) | 97% | 100% | 🟡 2 users pending |
| Privileged accounts with MFA | 100% | 100% | ✅ |
| Stale accounts reviewed | ✅ Quarterly | Quarterly | ✅ |
| Admin accounts (count) | 3 named + 1 break glass | ≤5 | ✅ |
| Access reviews completed | Yes — 2 months ago | Quarterly | ✅ |

### Security Awareness
| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Phishing simulation click rate | 7% | <5% | 🟡 |
| Training completion rate | 94% | 100% | 🟡 3 overdue |
| Reported phishing emails | 12 | > 5 (good sign) | ✅ |
| BEC/social engineering incidents | 0 | 0 | ✅ |

---

## Allevio-Specific Compliance Metrics

| Metric | Value | HIPAA Requirement | Status |
|--------|-------|-----------------|--------|
| PHI DLP incidents | 2 (both blocked) | Blocking controls in place | ✅ |
| PHI-related security incidents | 0 | 0 breaches | ✅ |
| HIPAA training completion | 100% | Annual completion required | ✅ |
| BAA agreements current | 8/8 vendors | All vendors with PHI access | ✅ |
| Backup restore tested | Yes — <date> | Annual minimum | ✅ |

---

## Actions for Next Period

| Action | Owner | Due | Priority |
|--------|-------|-----|---------|
| Resolve 2 overdue High vulnerabilities | IT Engineer | <date> | High |
| Enroll 2 users without MFA | IT Tech | <date> | High |
| Complete 3 overdue security trainings | HR / IT | <date> | Medium |
| Tune EDR alert rules to reduce false positive rate | IT Engineer | <date> | Medium |
| Begin cyber insurance renewal process (90 days out) | IT Manager + Dr. Lewis | <date> | Medium |
```

## Output Contract
- Executive scorecard always leads — one-paragraph bottom line for Matt Mathison
- Trend direction always shown — a metric without trend is a point-in-time snapshot, not a health indicator
- Allevio compliance metrics always separated — HIPAA compliance is a standalone obligation
- Action items always close the report — metrics without actions don't improve security
- HITL required: Dr. Lewis reviews before distribution; Matt Mathison receives executive scorecard; Allevio compliance officer reviews HIPAA metrics

## System Dependencies
- **Reads from:** Microsoft Secure Score, vulnerability scanner, M365 audit logs, incident log, training platform (provided)
- **Writes to:** Nothing (report for HITL review and distribution)
- **HITL Required:** Dr. Lewis reviews all metrics reports; Matt Mathison receives executive version; Allevio compliance officer reviews HIPAA compliance section

## Test Cases
1. **Golden path:** Monthly report → Secure Score up 2pts, no P1 incidents, phishing click rate declining, 2 high vulns overdue (assigned), executive scorecard sent to Matt Mathison with bottom line summary
2. **Edge case:** Period with a P1 incident — include in metrics with detailed breakdown, MTTD/MTTC analysis, and lessons learned; executive audience gets the incident summary and what was done to prevent recurrence
3. **Adversarial:** IT team wants to cherry-pick metrics that "look good" and exclude the SLA overruns → all standard metrics reported; cherry-picking metrics is management theater; overruns are included with the remediation plan

## Audit Log
Monthly and quarterly reports retained by entity. Year-over-year trend data preserved.

## Deprecation
Retire when a SIEM or GRC platform provides real-time security dashboards with automated metric collection and executive reporting.
