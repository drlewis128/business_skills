---
name: patch-management-tracker
description: "Track and manage OS and software patch status across endpoints. Use when the user says 'patch management', 'OS updates', 'software updates', 'patching status', 'endpoint patch compliance', 'patch compliance report', or 'are our devices up to date'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--category <os|apps|firmware|all>] [--format <status|report|action-plan>]"
---

# Patch Management Tracker

Track and manage patch compliance across endpoints, servers, and network devices. Unpatched systems are the leading vector for ransomware and data breaches. Patch management is not optional — it is the minimum baseline for security. Every day a critical patch is undeployed is a liability.

## When to Use
- Monthly patch compliance review
- Before a compliance audit (SOC 2, cyber insurance renewal)
- After a new critical vulnerability (CVE) is announced
- Onboarding a portfolio company (what's the patch posture?)
- Post-incident investigation (was the entry point an unpatched system?)

## Patch Severity Classification

| Severity | Description | Patch Window |
|---------|------------|-------------|
| **Critical** | CVSS ≥ 9.0 / actively exploited in the wild | 24-72 hours |
| **High** | CVSS 7.0-8.9 / significant risk | 7 days |
| **Medium** | CVSS 4.0-6.9 / limited exposure | 30 days |
| **Low** | CVSS < 4.0 / minimal risk | 90 days |
| **Feature updates** | Non-security updates | Next maintenance window |

## Compliance Thresholds

| Category | Green | Yellow | Red |
|---------|-------|--------|-----|
| Critical patches | 100% within 72 hrs | > 95% within 7 days | Any unpatched > 7 days |
| High patches | ≥ 98% within 7 days | 90-97% | < 90% |
| OS major version | ≤ 1 major version behind | 2 versions behind | 3+ versions behind |
| Overall compliance rate | ≥ 95% | 85-94% | < 85% |

## Output Format

```markdown
# Patch Management Report — <Entity>
**Date:** <date> | **Devices in scope:** <N> | **Overall compliance:** <N>%

---

## Compliance Summary

| Severity | Patches Available | Devices Compliant | Compliance Rate | Status |
|---------|-----------------|------------------|----------------|--------|
| Critical | <N> | <N>/<N total> | <N>% | 🟢 / 🟡 / 🔴 |
| High | <N> | <N>/<N> | <N>% | |
| Medium | <N> | <N>/<N> | <N>% | |
| Low | <N> | <N>/<N> | <N>% | |

---

## Non-Compliant Devices (Critical/High — Immediate Action Required)

| Device ID | User | OS | Missing Patches | Days Overdue | Risk | Action |
|---------|-----|----|----|----|----|-----|
| HW-012 | Jane S. | Windows 11 | KB5034765 (Critical) | 5 days | High | Force update via MDM |
| HW-025 | Unassigned | macOS 13 | macOS 14.x (Major) | 90+ days | High | Schedule update + test |
| SRV-001 | Server | Ubuntu 20.04 | 3 critical CVEs | 2 days | Critical | Patch tonight — maintenance window |

---

## Patch Deployment Status (Current Month)

| Patch | Severity | Release Date | Devices Targeted | Deployed | Pending | Failed | Notes |
|-------|---------|------------|----------------|---------|---------|--------|-------|
| KB5034765 | Critical | <date> | 35 | 32 | 2 | 1 | 1 device offline |
| macOS 14.4.1 | High | <date> | 18 | 15 | 3 | 0 | 3 users deferred |

---

## Server and Network Patch Status

| Asset | Role | OS/Firmware | Last Patched | Patches Pending | Status |
|-------|------|------------|------------|----------------|--------|
| SRV-001 | App server | Ubuntu 20.04 | <date> | 3 critical | 🔴 Patch required |
| FW-001 | Firewall | FW v4.2.1 | <date> | Firmware v4.3.0 | 🟡 Schedule update |

---

## Action Plan

| Priority | Action | Devices | Owner | Deadline |
|---------|--------|---------|-------|---------|
| Critical | Deploy KB5034765 to 3 remaining devices | HW-012, HW-018, HW-031 | IT Tech | 24 hours |
| High | Force macOS update on 3 deferred devices | HW-025, HW-026, HW-027 | IT Manager | 7 days |
| Medium | Patch SRV-001 in next maintenance window | SRV-001 | IT Engineer | This weekend |
```

## Output Contract
- Critical patch compliance always reported against 72-hour window — not blended with other severities
- Every non-compliant device gets a named owner and deadline — no anonymous action items
- Server patches always reported separately — server downtime requires maintenance window coordination
- HITL required: IT Manager approves server patches; Dr. Lewis notified if any critical CVE (CVSS ≥ 9) is unpatched for > 48 hours

## System Dependencies
- **Reads from:** MDM platform (Jamf, Intune, Kandji), endpoint data provided, server admin access
- **Writes to:** Nothing (status report for IT action)
- **HITL Required:** IT Manager approves all server patches; Dr. Lewis notified of critical unpatched CVEs or compliance rate < 85%

## Test Cases
1. **Golden path:** 35-device entity, monthly patch review → 3 devices missing critical KB patch (overdue 5 days), 1 server with 3 CVEs pending (maintenance window tonight), 95% overall compliance; action plan with specific owners and deadlines
2. **Edge case:** Device hasn't been online in 30 days (remote employee) → flags as "compliance status unknown," marks as High risk (assumed unpatched), assigns IT to contact user and verify within 48 hours; adds monitoring for device check-in
3. **Adversarial:** User repeatedly defers critical OS updates → IT Manager authorized to force-push update via MDM, documented refusal and escalation in IT records, HR notified as policy compliance issue

## Audit Log
Patch compliance reports retained by entity and month. SLA breaches and non-compliant devices tracked. Remediation completion documented.

## Deprecation
Retire when entity deploys endpoint management with automated patch enforcement, compliance dashboards, and SLA alerting (Jamf, Intune, Automox).
