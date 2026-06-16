---
name: it-endpoint-manager
description: "Manage employee devices and endpoint security. Use when the user says 'endpoint management', 'MDM', 'mobile device management', 'manage laptops', 'device management', 'endpoint security', 'manage devices', 'employee devices', 'device policy', 'device enrollment', 'BYOD', 'device encryption', 'remote wipe', 'device inventory', 'computer management', or 'endpoint protection'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--platform <Windows|Mac|iOS|Android|mixed>] [--action <audit|enroll|policy|retire>]"
---

# IT Endpoint Manager

Manage employee devices and endpoint security at MBL portfolio companies — covering device inventory, enrollment, configuration, security policies, and lifecycle management. Endpoints (laptops, desktops, phones, tablets) are the most common entry point for cyberattacks at small companies: phishing emails arrive on unprotected laptops, credentials are stored unencrypted, and lost devices contain unencrypted business data. The endpoint management program ensures every company-owned device meets minimum security standards before it touches company data.

## When to Use
- Setting up endpoint management for a portfolio company (MDM deployment)
- A new device needs to be enrolled and configured
- An employee's device has been lost or stolen — remote wipe needed
- Annual endpoint security audit — are all devices compliant?
- A separated employee's device needs to be recovered and wiped

## Endpoint Management Framework

```
MDM platforms for MBL portfolio:
  Microsoft Intune: Included in M365 Business Premium — recommended for all M365 tenants
    Manages: Windows, macOS, iOS, Android
    Features: Device enrollment, app deployment, conditional access, remote wipe
    Cost: Included in M365 Business Premium ($22/user/month)
    
  Apple Business Manager: For Mac/iOS-heavy environments
    Works alongside Intune or Jamf
    
  Minimum endpoint security baseline (applies to all company devices):
    1. Full-disk encryption: BitLocker (Windows) / FileVault (Mac) — REQUIRED
    2. Screen lock: Auto-lock after 5 minutes; PIN/password minimum
    3. Endpoint protection (EDR): Windows Defender + Intune policy; or CrowdStrike/SentinelOne
    4. OS updates: Current OS version or within 1 major version (no unsupported OS)
    5. No local admin rights: Standard user accounts; admin only for IT tasks
    6. Enrolled in MDM: Device under management before accessing company email/data
    
  BYOD policy (bring your own device):
    Recommended for portfolio companies: Avoid BYOD for anything touching PHI (Allevio)
    If BYOD allowed: Require MDM enrollment; company data in managed apps only (conditional access)
    HIPAA note: BYOD devices at Allevio require MDM enrollment + encryption before PHI access
    
Device lifecycle:
  Procurement → Enrollment → Configuration → Active use → Refresh (3-4 years) → Wipe → Retire/Donate
  
  Refresh trigger: 3+ years old AND showing performance degradation
  Wipe requirement: All company data wiped before any device leaves company control
  Lost/stolen: Remote wipe initiated within 24 hours of report; notify Dr. Lewis immediately
```

## Output Format

```markdown
# Endpoint Management Report — <Company Name>
**Date:** [Date] | **MDM Platform:** [Intune / Jamf / None]
**Total managed devices:** [N] | **Compliance rate:** [X%]
**Prepared by:** Dr. John Lewis

---

## Device Inventory

| Device ID | Type | OS | Owner | Role | Age | Enrolled? | Encrypted? | EDR? | Compliance |
|---------|------|-----|-------|------|-----|---------|-----------|------|-----------|
| [ID] | MacBook Pro 14" | macOS 14.5 | [Name] | [Manager] | 2.1 yr | ✅ | ✅ | ✅ | 🟢 |
| [ID] | Dell Latitude | Win 11 | [Name] | | | ✅ | ✅ | ❌ | 🟡 |
| [ID] | iPhone 15 | iOS 17 | [Name] | | | ❌ | | | 🔴 |

**Unmanaged devices accessing company data:** [N — these must be enrolled or blocked]

---

## Compliance Summary

| Control | Compliant | Non-compliant | % |
|---------|----------|--------------|---|
| MDM enrollment | [N] | [N] | [X%] |
| Full-disk encryption | [N] | [N] | [X%] |
| Current OS version | [N] | [N] | [X%] |
| EDR installed | [N] | [N] | [X%] |
| Screen lock configured | [N] | [N] | [X%] |
| No local admin (standard users) | [N] | [N] | [X%] |

**Overall compliance:** [X%] — target 100%; below 80% = escalate to CEO

---

## Non-Compliant Devices

| Device | Owner | Issue | Risk | Action | Deadline |
|--------|-------|-------|------|--------|---------|
| [Device] | [Name] | [No encryption] | 🔴 High | [Enable FileVault remotely via MDM] | 48 hrs |
| | | [EDR not installed] | 🟡 | | 1 week |

---

## Recent Events

| Date | Event | Device | Action taken |
|------|-------|--------|-------------|
| [Date] | Device lost | [ID] — [Owner] | Remote wipe initiated; replacement ordered |
| [Date] | New hire | [Name] | Device enrolled; configured; handed over Day 1 |
| [Date] | Separation | [Name] | Device returned; wiped; returned to pool |

---

## Policy Configuration Status

| Policy | Status | Applied to | Notes |
|--------|--------|-----------|-------|
| Screen lock (5-min auto) | ✅ Deployed | All enrolled devices | |
| BitLocker/FileVault | ✅ Deployed | All enrolled | |
| Windows Update policy | ✅ Auto-update enabled | Windows devices | |
| EDR policy | 🟡 Partial — N devices missing | | Deploying this week |
| Conditional access (M365) | ✅ Enabled | | Unenrolled devices blocked |

---

## Matt Mathison Brief (if >2 critical non-compliance items or lost device with PHI)

[Company] endpoint compliance: [X%] across [N] devices. [Key issue]. [Action underway].
```

## Output Contract
- Enrollment is required before access — the conditional access policy (configured in M365/Intune) blocks unenrolled devices from accessing company email and data; this is enforced, not requested; an employee cannot say "I'll enroll later" and still access Teams and Outlook; the policy enforces the requirement automatically; exceptions require Dr. Lewis approval and are temporary (48-hour max)
- Full-disk encryption is non-negotiable — every device that has company data must be encrypted; an unencrypted laptop is a potential breach waiting to happen; for Allevio, an unencrypted device with PHI is a HIPAA breach the moment it's lost; encryption is configured during device enrollment and verified via MDM compliance policy; devices that fail the encryption check are blocked from conditional access until remediated
- Lost device response is same-day — when a device is reported lost or stolen, Dr. Lewis initiates a remote wipe within 24 hours (immediately if PHI was on the device at Allevio); the remote wipe erases all company data and returns the device to factory state; if PHI was potentially on the device, the HIPAA breach assessment starts immediately in parallel
- HITL required: Dr. Lewis owns endpoint management; new device enrollment executed by Dr. Lewis or designated IT support; remote wipes require Dr. Lewis authorization; lost device with PHI requires Dr. Lewis + Privacy Officer (Allevio); compliance policy changes require Dr. Lewis approval; CEO receives compliance report quarterly

## System Dependencies
- **Reads from:** Microsoft Intune admin center (or Jamf), M365 admin center, device purchase records, employee roster (HR)
- **Writes to:** Device inventory (SharePoint/Ops/<Company>/IT/Devices/); MDM compliance dashboard; remote wipe records; asset register (ops-equipment-tracker); incident report if lost device with PHI
- **HITL Required:** Dr. Lewis owns; remote wipes require Dr. Lewis authorization; PHI device loss requires Dr. Lewis + Privacy Officer; compliance policy changes by Dr. Lewis; new device enrollment by Dr. Lewis or designated IT

## Test Cases
1. **Golden path:** Allevio quarterly endpoint audit → 14 company devices; MDM enrollment: 13/14 (93% — 1 new hire not yet enrolled); Encryption: 13/13 enrolled devices encrypted ✅; EDR: 11/14 (2 Windows devices missing Defender policy — deploy via Intune this week); OS currency: 12/14 (2 macOS devices on 13.x — enforce update this week); HIPAA note: all devices that access PHI are encrypted and enrolled — compliant; Action: enroll new hire device today; push EDR policy to 2 Windows devices; notify 2 Mac users to update; overall compliance 86% → target 100% by Friday
2. **Edge case:** An employee's laptop is lost on a business trip → Report comes in via Teams message on Saturday; Dr. Lewis initiates remote wipe via Intune within 2 hours of report (not waiting until Monday); Allevio: was AdvancedMD accessed on this device? Pull device access logs from Intune — yes, AdvancedMD web was accessed; initiate HIPAA breach assessment; contact Privacy Officer; file incident report; order replacement device; have it configured and ready for employee return Monday; document everything
3. **Adversarial:** "Employees are resistant to MDM — they don't want work to manage their personal phones" → This is why BYOD is not recommended for PHI-touching devices; respond: "We're not asking to manage personal phones — that's BYOD and it's optional. What we're saying is: if you want to access company email and data on your personal device, it needs to be enrolled in MDM so we can remotely wipe company data if you lose it. If you'd prefer not to enroll your personal device, we'll give you a company phone. That's a reasonable choice."

## Audit Log
Device inventory retained with enrollment dates. Compliance snapshots retained quarterly. Remote wipe records retained permanently (with reason and date). HIPAA breach assessments triggered by lost devices retained. Policy deployment history retained.

## Deprecation
Retire when portfolio companies have IT managers who own endpoint management — handling enrollment, compliance monitoring, and remote wipe independently — with Dr. Lewis receiving compliance dashboards rather than running the program.
