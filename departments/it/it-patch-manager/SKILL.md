---
name: it-patch-manager
description: "Manage OS and software patching across servers and infrastructure. Use when the user says 'patch management', 'patching', 'software updates', 'OS updates', 'security patches', 'patch cycle', 'patch schedule', 'Windows Update', 'patch compliance', 'update management', 'CVE patching', 'vulnerability remediation', 'unpatched systems', or 'patch status'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <servers|workstations|network-devices|all>] [--action <audit|schedule|apply|report>]"
---

# IT Patch Manager

Manage OS and software patching at MBL portfolio companies — ensuring that servers, infrastructure, and network devices receive security patches on a defined cadence before vulnerabilities are exploited. Unpatched systems are the #1 vector for ransomware attacks at SMBs: attackers scan for known unpatched vulnerabilities (published CVEs with working exploits) and compromise systems within days of a patch release. A monthly patch cycle closes this window.

Note: Endpoint (workstation/laptop) patching is managed via it-endpoint-manager using Microsoft Intune. This skill focuses on servers, network infrastructure, and applications that are not managed by MDM.

## When to Use
- Monthly patch cycle — scheduling and executing patches for servers and infrastructure
- A critical/emergency CVE has been published (CVSS ≥9.0) — immediate response needed
- Patch compliance audit — what percentage of systems are current?
- A system has been flagged as unpatched in a vulnerability scan
- A new server or network device is provisioned — initial patch cycle needed

## Patch Management Framework

```
Patch priority tiers:
  Critical (CVSS 9.0-10.0): Patch within 7 days — no exceptions
    These are actively exploited or trivially exploitable vulnerabilities
    Examples: Log4Shell, ProxyLogon, major RDP vulnerabilities
    
  High (CVSS 7.0-8.9): Patch within 30 days
    Serious vulnerabilities; exploits may exist but require more effort
    
  Medium (CVSS 4.0-6.9): Patch in next monthly cycle
    Lower risk; part of regular monthly maintenance
    
  Low (CVSS <4.0): Patch in quarterly cycle
    Minimal real-world risk; include in maintenance windows
    
Monthly patch cycle (recommended for MBL portfolio):
  Microsoft Patch Tuesday: Second Tuesday of each month — Microsoft OS/app patches
  Maintenance window: Schedule within 2 weeks of Patch Tuesday
  Window: Off-hours (weeknight 8PM-12AM or Saturday morning)
  Pre-patch: Verify backup is current before patching any production server
  Post-patch: Verify service restart and functionality before window close
  
Patch scope by system type:
  Windows Servers: Windows Server Update Services (WSUS) or Azure Update Manager
  Linux Servers: apt/yum with automated security updates or Ansible playbooks
  Network devices (firewall, switches, WAPs): Vendor management console
  Third-party applications: Patch release monitoring via vendor security bulletins
  
Vendor end-of-life / end-of-support:
  Unsupported OS/applications receive NO new patches — treat as critical vulnerability
  Must be upgraded, replaced, or migrated before next audit
  Examples: Windows Server 2012 R2 (EOL Oct 2023), Windows Server 2008 (EOL Jan 2020)
  
Emergency patching process:
  CVSS ≥9.0 published → Dr. Lewis notified within 24 hours
  Assessment: Is this system exposed? (Internet-facing? Lateral movement risk?)
  If exposed: Emergency patch window within 7 days; no waiting for monthly cycle
  If not exposed: Still patch within 30 days; document the risk assessment
```

## Output Format

```markdown
# Patch Management Report — <Company Name>
**Report date:** [Date] | **Patch cycle:** [Month YYYY]
**Systems in scope:** [N servers + N network devices + N applications]
**Overall patch compliance:** [X%] — target 100% within SLA
**Prepared by:** Dr. John Lewis

---

## Patch Compliance Summary

| System type | In scope | Patched (SLA) | Overdue | Compliance | Status |
|-------------|---------|-------------|---------|-----------|--------|
| Windows Servers | [N] | [N] | [N] | [X%] | 🟢/🟡/🔴 |
| Linux Servers | [N] | [N] | [N] | [X%] | |
| Network devices (firewall/switches/WAPs) | [N] | [N] | [N] | [X%] | |
| Third-party applications | [N] | [N] | [N] | [X%] | |
| **Total** | **[N]** | **[N]** | **[N]** | **[X%]** | |

**Target:** 100% Critical patches within 7 days; 100% High within 30 days; 100% Medium in monthly cycle

---

## Overdue Patches

| System | OS/Application | Missing patch | CVSS | Days overdue | Risk | Action |
|--------|--------------|-------------|------|------------|------|--------|
| [Server name] | Windows Server 2022 | KB5034439 | 8.1 | 38 days | 🔴 High | Patch this weekend |
| [Firewall] | FortiGate OS | FortiOS 7.4.4 | 9.3 | 12 days | 🔴 Critical | Patch within 48 hrs |
| [App server] | [Application] | [Version X → Y] | 6.2 | 22 days | 🟡 | Next monthly cycle |

**Critical patches >7 days overdue:** [N — escalate to CEO immediately]

---

## This Month's Patch Activity

| Date | System | Patch applied | CVSS | Downtime | Outcome |
|------|--------|-------------|------|---------|---------|
| [Date] | File server | KB5034xxxxx (Win Server 2022 CU) | 7.5 | 12 min reboot | ✅ Service restored |
| [Date] | FortiGate | FortiOS 7.4.3 | 6.1 | 5 min | ✅ |
| [Date] | Linux DB server | apt security upgrade (OpenSSL, etc.) | Various | 8 min | ✅ |

---

## Critical/Emergency CVEs Monitored

| CVE | System affected | CVSS | Published | Exposure | Action | Status |
|-----|----------------|------|---------|---------|--------|--------|
| [CVE-XXXX-XXXXX] | [System] | 9.8 | [Date] | [Internet-facing / Internal only] | Emergency patch | ✅ Patched [Date] |
| [CVE-XXXX-XXXXX] | [System] | 9.1 | [Date] | [Not exposed — no matching software] | N/A — not affected | ✅ |

---

## End-of-Support Systems

| System | Current version | EOL date | Status | Plan |
|--------|---------------|---------|--------|------|
| [Server] | Windows Server 2016 | Jan 2027 | 🟡 In 18 months | Plan migration/upgrade Q1 next year |
| [App] | [Application X v2.x] | Already EOL | 🔴 No patches | Upgrade this quarter |

---

## Next Maintenance Window

**Scheduled:** [Date, Day] at [Time] | **Duration:** [X hours]
**Systems:** [List]
**Pre-patch backup verified:** [Yes/No — must be Yes]
**On-call contact:** Dr. John Lewis | 602-880-6491

---

## Matt Mathison Brief (if critical patch >7 days overdue or emergency CVE)

[Company] patches: [X%] compliance. [Key finding — e.g., "Critical FortiOS patch applied emergency window"]. [Status].
```

## Output Contract
- Critical patches (CVSS ≥9.0) are treated as emergencies — when a CVSS ≥9.0 vulnerability is published that affects a system in the MBL portfolio, the response is not to "add it to next month's cycle"; Dr. Lewis investigates the affected systems within 24 hours and applies the patch within 7 days or executes a compensating control (firewall rule, network isolation) while the patch is tested; the Log4Shell and ProxyLogon vulnerabilities spread through unpatched systems within days of publication — portfolio companies cannot afford to be in that group
- Backups are verified before patching — no server is patched without first confirming that a current backup exists and is restorable; a patch that introduces a regression or fails mid-way can leave a system unbootable; the backup is the recovery path; this adds 5 minutes to the patch process and prevents days of recovery
- End-of-support systems have a 90-day remediation plan — a system running an OS or application that no longer receives security patches is a permanent vulnerability; no new patches will ever close this gap; within 90 days of identifying an end-of-support system, Dr. Lewis presents an upgrade or migration plan to the CEO with cost and timeline
- Patch windows are off-hours and pre-communicated — production server reboots during business hours cause user disruption; patch windows are scheduled during off-hours (evenings or weekends) and communicated to affected teams; typical window: 2-4 hours; most patches require a single reboot (5-15 minutes downtime per server)
- HITL required: Dr. Lewis schedules and executes all patch windows; emergency CVE patching by Dr. Lewis within 7 days; end-of-support remediation plan reviewed by CEO; patch compliance reports reviewed by Dr. Lewis monthly; Matt Mathison notified if critical patch >7 days overdue or if emergency CVE affects internet-facing systems

## System Dependencies
- **Reads from:** Windows Server Update Services (WSUS) or Azure Update Manager, Linux package managers, vendor firmware portals, NIST NVD (CVE database), Microsoft Security Update Guide
- **Writes to:** Patch compliance log (SharePoint/Ops/<Company>/IT/Patching/); maintenance window calendar; emergency CVE assessment records; system patch history
- **HITL Required:** Dr. Lewis schedules and executes patch windows; emergency patches by Dr. Lewis; end-of-support plans reviewed by CEO; Matt Mathison for critical patch >7 days overdue or emergency CVE on internet-facing systems

## Test Cases
1. **Golden path:** Allevio monthly patch cycle → Patch Tuesday fell on June 11; maintenance window scheduled Saturday June 15 (8PM-12AM); Pre-patch: backups verified for all 3 servers ✅; Windows Server 2022 (file server): 3 patches including 1 High CVSS 7.8 — applied, 18-min reboot, service verified ✅; Ubuntu 22.04 (DB): apt security upgrade — applied, 8-min restart ✅; FortiGate firmware: v7.4.3 → v7.4.4 — applied via management console, 5-min ✅; Compliance after window: 100%; Total window used: 45 minutes; email summary sent to Dr. Lewis; no issues; next window scheduled July
2. **Edge case:** A CVSS 9.8 "Critical" CVE is published for OpenSSL that affects all Linux servers → Immediate assessment: which MBL systems run OpenSSL on Linux? (All Ubuntu/Debian servers do); are they internet-facing? DB server: internet-accessible via port 443 (Yes — high risk); log server: internal only (lower immediate risk); action: schedule emergency patch window within 48 hours for the internet-facing DB server; apply apt update openssl within the emergency window; internet-facing server patched in 48 hours ✅; internal server patched in 7 days ✅; no exploitation detected; CEO notified via email within 24 hours of CVE publication
3. **Adversarial:** "Our servers are only accessible from inside the office network — external patch urgency doesn't apply to us" → Internal-only systems can still be reached via phishing (compromised laptop gets onto the internal network and can reach the internal server); ransomware doesn't need external access — it spreads laterally from a compromised endpoint to every server it can reach; WannaCry and NotPetya encrypted systems behind firewalls via SMB (internal-only protocol); patch urgency is about eliminating exploitable vulnerabilities, not just external access; the internal-only argument is a common false comfort

## Audit Log
Monthly patch compliance snapshots retained by company. Patch activity log retained permanently. Emergency CVE assessments retained with decisions. End-of-support system records and remediation plans retained. Maintenance window records retained. Pre-patch backup verification retained.

## Deprecation
Retire when portfolio companies have dedicated IT operations managing patching via automated tools (Azure Update Manager, Ansible, etc.) with patch compliance dashboards reviewed by IT managers — and Dr. Lewis receiving monthly exception reports rather than executing patch windows.
