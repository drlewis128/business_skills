---
name: sec-patch-compliance-tracker
description: "Track and manage patch compliance for MBL portfolio company systems. Use when the user says 'patch management', 'patching', 'software updates', 'OS updates', 'update compliance', 'patch compliance', 'missing patches', 'critical patches', 'security patches', 'vulnerability patching', 'unpatched systems', 'patch status', 'patch report', 'Windows updates', 'server patching', 'endpoint patching', 'patch Tuesday', 'patch cycle', 'patch policy', 'patch schedule', 'patch exceptions', 'legacy software', 'end-of-life software', 'EOL software', 'unsupported OS', 'Windows Server 2012', 'outdated software', 'software inventory', 'application inventory', 'patch lag', 'days since patched', 'CVSS patching', 'critical vulnerability patching', 'vendor security updates', 'SaaS updates', 'firmware updates', or 'patch management process'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <assess|report|schedule|exception>] [--scope <endpoints|servers|saas|all>]"
---

# Sec Patch Compliance Tracker

Track and manage patch compliance for MBL portfolio company systems — ensuring critical security vulnerabilities are remediated before attackers exploit them. Patch management is unglamorous but consequential: the majority of successful ransomware attacks exploit known vulnerabilities for which patches were available but not applied. The security program that doesn't patch is spending on detection and response that a patch would have made unnecessary.

## When to Use
- Assessing current patch compliance across entity systems
- Building or reviewing the patch management schedule
- Escalating a critical vulnerability requiring emergency patching
- Handling a legacy/EOL system that can't receive patches

## Patch Management Framework

```
PATCH COMPLIANCE STANDARDS (MBL portfolio):

  Critical patches (CVSS 9.0-10.0): patch within 7 days of release
  High patches (CVSS 7.0-8.9): patch within 30 days of release
  Medium patches (CVSS 4.0-6.9): patch within 90 days of release
  Low patches (CVSS <4.0): patch in next scheduled maintenance window (quarterly)
  
  Patch compliance target: 95% of all systems patched within required timeline
  Below 80%: entity CEO notification
  Below 60%: entity CEO + Dr. Lewis immediate action plan
  
PATCH SCOPE (MBL portfolio context):

  Endpoints (workstations / laptops):
    Windows: Microsoft Update / Windows Update for Business / Intune MDM
    Mac: Apple Software Update / Jamf (if deployed)
    Target: all active endpoints; remote workers included
    
  Servers (on-premises or cloud IaaS):
    Windows Server: WSUS or Azure Update Management
    Linux: apt/yum + automated scheduling (unattended-upgrades or equivalent)
    Database servers: vendor-specific patching (SQL Server; MySQL; PostgreSQL)
    
  SaaS Applications (vendor-managed — most of MBL's stack):
    M365 / Microsoft: automatic for most; Dr. Lewis monitors Microsoft Security alerts
    GHL: vendor-managed; Dr. Lewis monitors GHL release notes for security fixes
    AdvancedMD: vendor-managed; Allevio entity CEO + Dr. Lewis track release notifications
    Covercy: vendor-managed; HIVE entity CEO + Dr. Lewis track release notifications
    QuickBooks: vendor-managed + in-app update notifications
    
  Network equipment (routers; switches; firewalls):
    Firmware updates: quarterly minimum; check vendor security bulletins monthly
    Critical firmware CVEs: patch within 7 days (same as critical endpoint patches)
    
  Browsers and productivity apps:
    Chrome / Edge: auto-update enabled; verify monthly
    Office / M365 apps: auto-update via M365 Admin Center
    
END-OF-LIFE (EOL) SOFTWARE POLICY:
  EOL definition: vendor no longer provides security patches
  MBL standard: EOL software is a Critical risk (immediate remediation plan)
  Common EOL systems:
    Windows Server 2012 / 2012 R2: EOL October 2023 (requires upgrade or Azure migration)
    Windows 10: EOL October 2025 (migrate to Windows 11)
    Windows 7: EOL 2020 (should not exist in any MBL entity)
  
  If EOL system must remain (business critical; upgrade not immediately feasible):
    Document exception with Dr. Lewis + entity CEO approval
    Isolate from network where possible (no internet access; no PHI access for EOL systems)
    Compensating controls: EDR; enhanced monitoring; firewall rules
    Upgrade plan with specific timeline: entity CEO commits to upgrade date
    
PATCH SCHEDULE (standard cadence):
  Monthly: "Patch Tuesday" cycle (2nd Tuesday of each month; Microsoft patches + all others)
  Emergency: out-of-cycle patches for CVSS ≥9.0 or actively exploited vulnerabilities
  Quarterly: network equipment firmware; EOL review; patch compliance report to Dr. Lewis
  Annual: patch policy review; tooling assessment; compliance metrics trend review
  
EMERGENCY PATCH PROCESS (CVSS ≥9.0 or known exploit in the wild):
  1. Dr. Lewis notified within 24 hours of CVE publication
  2. Assess: are any MBL entity systems affected?
  3. If affected: entity CEO notified; IT begins emergency patching immediately
  4. Target: patched within 7 days (sooner if exploit activity is high)
  5. If patching not immediately possible: compensating control deployed immediately
     (firewall rule; disable vulnerable feature; network isolation)
  6. Post-patch: verify patching success; document in security records
  7. Matt Mathison notified if a critical vulnerability resulted in active exploitation
     of any MBL entity system
```

## Output Format

```markdown
# Patch Compliance Report — [Entity] | [Period] | [Date]
**Owner:** Dr. Lewis | **Compliance target:** 95%

---

## Patch Compliance Summary
| Scope | Systems | Compliant | % | Status |
|-------|---------|-----------|---|--------|
| Endpoints | [N] | [N] | [%] | 🟢/🟡/🔴 |
| Servers | [N] | [N] | [%] | |
| Network equipment | [N] | [N] | [%] | |
| **Overall** | **[N]** | **[N]** | **[%]** | |

---

## Critical / High Patches Outstanding
| CVE | CVSS | Affected systems | Days outstanding | Due date |
|-----|------|-----------------|-----------------|----------|

---

## EOL Systems
| System | EOL date | Upgrade plan | Approved by | Target date |
|--------|---------|-------------|------------|------------|
```

## Output Contract
- Actively exploited vulnerabilities skip the standard patching timeline — "CVSS 9.0 within 7 days" is the standard; but a vulnerability that is being actively exploited in the wild (CISA KEV catalog; major threat intel reports) is treated as P0 regardless of CVSS score; Dr. Lewis monitors CISA's Known Exploited Vulnerabilities catalog (cisa.gov/known-exploited-vulnerabilities-catalog) monthly; if an actively exploited CVE affects MBL entity systems, the response time target is 24-48 hours for a compensating control and 72 hours for a full patch; entity CEO is notified immediately; Matt Mathison is notified if the vulnerability is actively being exploited and affects any production system handling PHI or financial data
- Patching SaaS applications is about tracking vendor security bulletins, not applying patches — most of MBL's stack is SaaS; the vendor applies the patches; Dr. Lewis's job is to monitor whether: (1) the vendor is issuing security updates (sign of active maintenance); (2) any update requires configuration changes on MBL's side; (3) the vendor's SLA for security patching is acceptable; for AdvancedMD (Allevio — PHI), Dr. Lewis reviews AdvancedMD's security release notes quarterly and verifies that updates are being applied automatically; if AdvancedMD releases a security update and Allevio is on an old version (possible with enterprise SaaS), entity CEO + Dr. Lewis contact AdvancedMD to prioritize the update
- HITL required: emergency patch (CVSS ≥9.0) → entity CEO notified; Dr. Lewis oversees; actively exploited CVE → Matt Mathison notified if PHI or financial systems affected; EOL exception → Dr. Lewis + entity CEO approve with written upgrade plan; patch compliance <80% → entity CEO notification + action plan; new endpoint management tooling → entity CEO budget approval; EOL software removal (major system) → entity CEO confirms business impact and approves timeline; compensating control deployment (emergency) → Dr. Lewis approves + documents

## System Dependencies
- **Reads from:** Vulnerability scanner output (sec-vulnerability-scanner); Microsoft Security Center (M365 patch status; Defender alerts); Windows Update / Intune (endpoint patch status); WSUS or Azure Update Management (server patch status); CISA Known Exploited Vulnerabilities catalog; vendor security bulletins (AdvancedMD; GHL; Covercy; QB; Monday.com); EOL software tracking (asset inventory); prior patch compliance report
- **Writes to:** Patch compliance report (SharePoint → [Entity] → Security → Patch-Management → [Period]); emergency patch incident record (entity CEO notification; Dr. Lewis oversight; resolution date); EOL exception records (system; exception approval; Dr. Lewis + entity CEO; upgrade plan; deadline); entity CEO patch briefing (quarterly or when compliance drops below threshold); Monday.com (patch remediation tasks — assigned to IT; due dates per severity)
- **HITL Required:** Emergency patch → entity CEO notified; actively exploited → Matt Mathison if PHI/financial; EOL exception → Dr. Lewis + entity CEO written approval; compliance <80% → entity CEO notification; compensating control deployment → Dr. Lewis approves; major system patching (server; AdvancedMD) → entity CEO informed before change window; new patch tooling → entity CEO budget

## Test Cases
1. **Golden path:** Monthly patch compliance check for Allevio. Microsoft releases Patch Tuesday updates (2nd Tuesday). IT applies updates to all 12 endpoints via Intune automatic deployment. 48 hours after release: 11/12 endpoints compliant (1 laptop offline — employee on vacation). AdvancedMD: vendor applied security update automatically — Allevio on current version (verified via AdvancedMD admin portal). Network router firmware: last updated 45 days ago; no critical firmware CVEs this month (checked vendor security bulletin). Compliance: 11/12 endpoints = 92% (below 95% target but explainable — 1 offline). Dr. Lewis notes: "Will confirm patching when employee returns from vacation." Overall: compliant with explanation. Report filed.
2. **Edge case:** Emergency CVE published — CVSS 9.8; affects Windows 10 (which 8/12 Allevio endpoints run); actively exploited in the wild per CISA KEV. Dr. Lewis: "This is a P0 emergency patch — CVSS 9.8 + actively exploited. Entity CEO notified immediately: 'Critical Windows vulnerability (CVE-XXXX-XXXX) actively exploited; affecting 8 of our endpoints; patching this week — no action needed from you, but I'm flagging urgency.' IT deploys patch via Intune — forced restart cycle tonight (after-hours). Target: all 8 endpoints patched within 48 hours. Post-patch confirmation: all 8 compliant. Incident logged: CVE; initial notification; patch deployed; confirmed; Dr. Lewis reviewed. Matt Mathison: not notified (PHI systems not compromised; patch successful before exploitation). If any system had been compromised: Matt Mathison would be notified same day."
3. **Adversarial:** IT reports that one server is running Windows Server 2012 R2 (EOL October 2023): Dr. Lewis: "Windows Server 2012 R2 is EOL and no longer receives security patches — this is a Critical risk. Immediate actions: (1) What is this server doing? (2) Can it be isolated from internet access and PHI systems while we plan the migration? (3) Entity CEO must approve a migration plan with a specific date. The options are: upgrade to Windows Server 2022 (in-place upgrade or new server build); migrate workload to Azure (where Microsoft provides Extended Security Updates); or decommission if the workload can be moved elsewhere. A server without security patches is a vulnerability that will eventually be exploited — the cost of migration is always less than the cost of breach remediation. Dr. Lewis will have an upgrade proposal for the entity CEO within 5 business days."

## Audit Log
Patch compliance reports (monthly; entity; scope; compliance %; Dr. Lewis review; SharePoint). Emergency patch incident records (CVE; CVSS; affected systems; entity CEO notification; patch date; confirmation; Dr. Lewis sign-off). EOL exception records (system; EOL date; exception approval; Dr. Lewis + entity CEO co-sign; compensating controls; upgrade plan; target date). Actively exploited vulnerability records (CVE; CISA KEV date; affected systems; response timeline; Matt Mathison notification if applicable). Patch compliance threshold breach records (<80%; entity CEO notification; action plan; resolution).

## Deprecation
Patch compliance standards reviewed annually. CVSS scoring interpretation updated when NIST updates guidance. EOL software list updated when vendors publish end-of-life dates. Patch tooling reviewed when entity endpoint count or management complexity changes. Emergency patch thresholds reviewed when CISA KEV catalog methodology changes.
