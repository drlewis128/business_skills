---
name: sec-endpoint-hardening-guide
description: "Harden endpoints for MBL portfolio company workstations and laptops. Use when the user says 'endpoint hardening', 'harden endpoints', 'secure endpoints', 'endpoint security', 'laptop security', 'workstation security', 'desktop security', 'EDR', 'endpoint detection and response', 'antivirus', 'anti-malware', 'Windows Defender', 'Microsoft Defender', 'endpoint protection', 'endpoint policy', 'baseline configuration', 'CIS benchmark', 'Windows hardening', 'Mac hardening', 'device encryption', 'BitLocker', 'FileVault', 'full disk encryption', 'endpoint MDM', 'Intune', 'mobile device management', 'device management', 'BYOD', 'bring your own device', 'company device', 'device inventory', 'device compliance', 'device health', 'screen lock', 'auto-lock', 'device policy', 'USB controls', 'removable media', 'USB block', 'printer security', 'local admin', 'standard user', 'least privilege endpoint', or 'endpoint compliance'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--os <windows|mac|all>] [--action <assess|harden|report|policy>]"
---

# Sec Endpoint Hardening Guide

Harden endpoints for MBL portfolio company workstations and laptops — implementing the configuration controls that make each device a harder target: encryption, AV/EDR, patch compliance, standard user accounts, screen lock, and MDM enrollment. Endpoints are where employees do their work and where most security incidents begin — a hardened endpoint with current patches, encryption, and EDR stops most attacks before they escalate.

## When to Use
- Assessing the current endpoint security posture for an entity
- Setting endpoint policy for new device deployments
- Deploying endpoint hardening to an existing fleet
- Investigating a compromised or suspicious endpoint

## Endpoint Hardening Framework

```
MBL ENDPOINT HARDENING STANDARD (all entities):

  1. FULL DISK ENCRYPTION (highest priority for lost/stolen device protection):
     Windows: BitLocker (included in Windows 10/11 Pro and Enterprise)
       Enable via Group Policy or Intune; recovery key stored in Azure AD / Intune
       Status check: Settings → System → BitLocker → Encryption status
     Mac: FileVault (built into macOS)
       Enable via System Settings → Privacy & Security → FileVault
       Recovery key: store in IT records (Intune or MDM; not with user)
     Target: 100% of company-managed endpoints encrypted
     
  2. ANTIVIRUS / ENDPOINT DETECTION AND RESPONSE (EDR):
     Recommended for MBL portfolio (budget-appropriate):
       M365 Business Premium: includes Microsoft Defender for Business (EDR-class)
       Standalone option: CrowdStrike Falcon Go; Defender for Endpoint P1
     Minimum: Microsoft Defender Antivirus (built into Windows 10/11; always on; always updated)
     Mac: Microsoft Defender for Business or Malwarebytes Business
     Target: AV/EDR running on 100% of endpoints; real-time protection enabled
     Alert monitoring: Dr. Lewis reviews Defender for Business console weekly
     
  3. PATCH AND UPDATE COMPLIANCE:
     Windows Update: automatic updates enabled; not disabled by users
     Managed via: Intune (recommended); Windows Update for Business; or direct WSUS
     Critical patches: 7-day SLA (sec-patch-compliance-tracker)
     Mac: Software Update → automatic; managed via Jamf or Intune (Mac management)
     
  4. SCREEN LOCK AND SESSION TIMEOUT:
     Policy: screen locks after 5 minutes of inactivity (10 minutes max for execs)
     Require password on wake: enforced via Group Policy (Windows) or Intune
     After 3 failed password attempts: lock account (not applicable for local accounts — use login delay)
     Remote work: screen lock enforced regardless of location
     
  5. STANDARD USER ACCOUNTS (no local admin for standard employees):
     Principle: employees log in with standard (non-admin) accounts for daily work
     Local admin: reserved for IT admin or specific technical users with documented need
     Why: malware running in the context of a non-admin account has limited damage potential
     Windows: remove users from local Administrators group; use standard account for daily use
     Mac: System Settings → Users → set account type to Standard
     Admin tasks: employees request IT elevation for specific tasks (not permanent admin)
     
  6. USB / REMOVABLE MEDIA CONTROL:
     For Allevio (PHI): block or restrict USB storage devices — PHI should not leave on USB drives
     For all entities: monitor USB storage usage; block high-risk data transfer paths
     Windows: via Group Policy or Intune device restriction policies
     Exceptions: require Dr. Lewis + entity CEO approval for any USB exception
     
  7. DEVICE INVENTORY AND MANAGEMENT:
     All company endpoints enrolled in Intune (or equivalent MDM)
     Inventory: device; user; OS version; encryption status; compliance status
     Lost/stolen device: remote wipe capability via Intune (entity CEO + Dr. Lewis authorization)
     BYOD policy: if personal devices access company data, Intune app protection policies applied
       (not full device management; just app-level encryption and wipe for company apps)
       
  8. SECURE BOOT AND FIRMWARE:
     UEFI Secure Boot: enabled (prevents bootkit malware)
     BIOS/UEFI password: set on servers and high-risk endpoints
     Firmware updates: included in quarterly patch review
     
ALLEVIO ADDITIONAL ENDPOINT CONTROLS:
  PHI on endpoints: minimize; PHI should live in AdvancedMD (server-side); not locally cached on laptops
  Local PHI: if temporarily cached (offline clinical work), ensure BitLocker encryption active
  USB: block USB storage on clinical coordinator workstations (PHI protection)
  Screen: HIPAA physical safeguard — privacy screens for workstations in visible clinical areas
  Automatic logoff: HIPAA §164.312(a)(2)(iii) — workstations must automatically logoff or lock;
  5-minute timeout enforced at clinical workstations
  
ENDPOINT COMPLIANCE SCORING:
  Each endpoint assessed against hardening checklist (8 controls above)
  Compliance score: number of controls met / 8
  Target: all endpoints at ≥7/8 minimum; 100% encryption (control 1) mandatory
  Below 5/8: entity CEO notified; remediation plan within 30 days
  Endpoints with known vulnerability + below 7/8: P1 risk (remediation within 30 days)
```

## Output Format

```markdown
# Endpoint Hardening Report — [Entity] | [Date]
**Total endpoints:** [N] | **Managed (Intune/MDM):** [N] | **Compliance target:** 7/8

---

## Endpoint Compliance Summary
| Control | Compliant endpoints | % | Action needed |
|---------|-------------------|---|--------------|
| 1. Full disk encryption | [N]/[Total] | [%] | |
| 2. AV/EDR running | [N]/[Total] | [%] | |
| 3. Patches current | [N]/[Total] | [%] | |
| 4. Screen lock policy | [N]/[Total] | [%] | |
| 5. Standard user account | [N]/[Total] | [%] | |
| 6. USB control (where applicable) | [N]/[Total] | [%] | |
| 7. MDM enrolled | [N]/[Total] | [%] | |
| 8. Secure Boot | [N]/[Total] | [%] | |

---

## Endpoints Below Compliance Threshold
| Device | User | Score | Critical gaps | Action | Due |
|--------|------|-------|--------------|--------|-----|
```

## Output Contract
- Encryption is the non-negotiable first control because it's the only one that protects data when the physical device is lost or stolen — the other 7 controls protect against network attacks and malware; encryption protects against physical theft; for MBL's dispersed, remote-working portfolio employees, devices leave the office regularly; the annual probability of a laptop being left in a rideshare, coffee shop, or airport is non-trivial; without BitLocker/FileVault, the thief who powers on a stolen laptop has immediate access to everything on it including M365 credentials (if cached), local files, and browser-saved passwords; with encryption, the laptop is a paperweight without the recovery key; Dr. Lewis treats any unencrypted endpoint as a P1 security gap regardless of entity; encryption takes 30-90 minutes to enable and zero cost (built into modern OS); it is always the first hardening action
- Standard user accounts (no local admin) is the highest-ROI malware defense that organizations consistently skip — local admin accounts can install software, modify system settings, and disable security tools; malware running as a local admin can disable antivirus, persist through reboots, and spread laterally; malware running as a standard user is significantly limited; for most employees (sales; HR; admin; clinical), there is no legitimate daily need for local admin rights; IT admins use a separate admin account (sec-privileged-access-manager); if an employee needs to install software: IT does it; Dr. Lewis's goal: zero standard employees with local admin rights on company-managed endpoints; measured quarterly in the MDM console
- HITL required: remote wipe authorization → entity CEO + Dr. Lewis (for company data loss; employee must be notified unless security incident); USB exception (Allevio) → Dr. Lewis + entity CEO approval; BYOD enrollment in Intune → employee consent required; MDM enrollment scope (full device management vs. app-level) → entity CEO decision; BitLocker recovery key storage → Dr. Lewis ensures keys in Intune / Azure AD (not stored with user); endpoint below 5/8 compliance → entity CEO notified; AV/EDR alert requiring response → Dr. Lewis reviews; P1 endpoint risk → entity CEO informed

## System Dependencies
- **Reads from:** Intune (MDM) compliance dashboard (device inventory; encryption status; patch status; AV status; policy compliance); Microsoft Defender for Business console (AV/EDR status; alerts); Azure AD (device registration; BitLocker recovery keys); endpoint inventory (all managed devices; OS; user); patch compliance data (sec-patch-compliance-tracker); vulnerability scanner output (sec-vulnerability-scanner — endpoint findings)
- **Writes to:** Endpoint hardening report (SharePoint → [Entity] → Security → Endpoint-Security → [Date]); Intune compliance policies (Dr. Lewis configures); MDM device management (device enrollment; policy deployment); entity CEO endpoint security briefing (quarterly); AV/EDR alert response log (sec-incident-responder when escalated); remote wipe records (device; reason; entity CEO authorization; Dr. Lewis; date)
- **HITL Required:** Remote wipe → entity CEO + Dr. Lewis; USB exception (Allevio) → Dr. Lewis + entity CEO; BYOD Intune enrollment → employee consent; MDM scope decision → entity CEO; BitLocker key management → Dr. Lewis; below 5/8 compliance → entity CEO notified; AV/EDR alert review → Dr. Lewis weekly; P1 endpoint risk → entity CEO informed

## Test Cases
1. **Golden path:** New Allevio endpoint deployed for a clinical coordinator (Windows 11 laptop). IT hardening checklist: (1) BitLocker enabled — enabled during device setup; recovery key escrowed to Azure AD/Intune ✅. (2) Microsoft Defender for Business — enrolled in Intune; Defender policy deployed ✅. (3) Windows Update — set to automatic; Intune Windows Update ring configured ✅. (4) Screen lock — Intune policy: 5-minute timeout; password on wake ✅. (5) Standard user account — domain user account (not local admin) ✅. (6) USB control — Intune device restriction policy blocks USB storage ✅. (7) MDM enrolled — Intune enrolled during device setup ✅. (8) Secure Boot — enabled in BIOS/UEFI during setup ✅. Score: 8/8. Device released to user.
2. **Edge case:** Employee reports lost laptop on a Tuesday morning (Allevio; clinical coordinator — has AdvancedMD access credentials cached). Dr. Lewis: "Was the laptop encrypted (BitLocker)?" IT: "Checking Intune — BitLocker status shows encrypted ✅." Dr. Lewis: "Good — the physical device is protected. Immediate actions: (1) Disable the user's M365 account + reset password (prevents use of any cached credentials). (2) Revoke all active sessions (Azure AD → Revoke sessions). (3) Reset AdvancedMD credentials for this user. (4) Remote wipe: entity CEO authorizes (employee to be notified per Intune policy). (5) Investigate: was this a pure theft/loss or suspicious activity? (6) HIPAA: laptop was encrypted — no PHI breach from device loss itself; cached browser credentials are potential issue (mitigated by password reset). (7) Provision replacement device."
3. **Adversarial:** An employee insists on keeping local admin rights "because I do my own IT": Dr. Lewis: "I understand you're technical and self-sufficient — and we appreciate that. However, local admin on a company-managed endpoint means that any malware that targets your account can use those same admin rights to disable security tools, install persistence mechanisms, and potentially spread to other systems. We've seen this exact scenario happen at companies with tech-savvy employees who left themselves admin. The standard here is: if you need to install something, send IT a request and we'll typically turn it around in 24 hours. For scripting/development work: I can set up a sandboxed development environment with elevated rights that's isolated from company data. That way you get the flexibility you need without the risk to company systems. Does that work?"

## Audit Log
Endpoint inventory records (device; user; OS; MDM enrolled; encryption status; AV status; compliance score; quarterly snapshot). Endpoint hardening deployment records (device; hardening date; IT executor; controls implemented; compliance score). Remote wipe records (device; reason; entity CEO authorization; Dr. Lewis approval; date; confirmation). USB exception records (device; user; Dr. Lewis + entity CEO approval; business reason; expiration; Allevio — additional sign-off). AV/EDR alert records (alert; device; Dr. Lewis review; response action; date). Lost/stolen device records (device; report date; BitLocker status; actions taken; Dr. Lewis review).

## Deprecation
Endpoint hardening standard reviewed annually. CIS Benchmark reference updated when new versions release. Intune policy configuration updated when Microsoft changes compliance policy capabilities. AV/EDR recommendation updated when new products release or licensing changes. BYOD policy reviewed when portfolio entity employment models change.
