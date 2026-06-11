---
name: endpoint-security-monitor
description: "Monitor endpoint security posture across managed devices. Use when the user says 'endpoint security', 'device security', 'endpoint protection', 'EDR status', 'antivirus status', 'are our devices secure', 'endpoint health', or 'device compliance'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--format <status|report|alert>] [--scope <all|critical|noncompliant>]"
---

# Endpoint Security Monitor

Monitor endpoint security posture across all managed devices. Endpoints are the #1 entry point for ransomware and credential theft. If you don't know the security state of every device, you're flying blind. This skill provides visibility into endpoint protection status, compliance, and risk.

## When to Use
- Weekly or monthly endpoint security review
- After a security incident — was the entry point an unprotected endpoint?
- Compliance audit preparation (SOC 2 CC6 requires endpoint protection evidence)
- Onboarding a portfolio company — what's their endpoint security posture?
- New employee starts — confirm device is protected before production use

## Endpoint Security Controls

| Control | Description | Must Have? |
|---------|------------|----------|
| **Endpoint Detection & Response (EDR)** | Real-time threat detection, containment, investigation | Yes |
| **Disk encryption** | FileVault (Mac), BitLocker (Windows) | Yes |
| **Automatic updates** | OS patches applied automatically or via MDM | Yes |
| **Firewall** | Local firewall enabled | Yes |
| **Screen lock** | Auto-lock after 5-15 minutes | Yes |
| **MDM enrollment** | Device managed by IT via Jamf/Intune | Yes (company devices) |
| **MFA on device login** | Biometric or PIN for device unlock | Yes |
| **Anti-phishing** | Browser-level protection | Recommended |

## Compliance Thresholds

| Status | Definition |
|--------|-----------|
| 🟢 Compliant | All Must Have controls active and current |
| 🟡 Partial | 1 Missing control or 1 out-of-date control |
| 🔴 Non-compliant | 2+ missing controls or EDR not active |

## Output Format

```markdown
# Endpoint Security Report — <Entity>
**Date:** <date> | **Devices managed:** <N>

---

## Compliance Summary

| Status | Count | % |
|--------|-------|---|
| 🟢 Compliant | <N> | <N>% |
| 🟡 Partial | <N> | <N>% |
| 🔴 Non-compliant | <N> | <N>% |
| ⬛ Not enrolled in MDM | <N> | <N>% |

---

## Device Compliance Detail

| Asset ID | User | OS | EDR | Encrypted | OS Patches | Firewall | MDM | Status |
|---------|-----|----|----|---------|-----------|---------|-----|--------|
| HW-001 | Dr. Lewis | macOS 14.4 | ✅ | ✅ | ✅ Current | ✅ | ✅ | 🟢 |
| HW-008 | [User] | Windows 11 | ✅ | ❌ Not encrypted | ✅ | ✅ | ✅ | 🔴 |
| HW-015 | [User] | macOS 13.6 | ❌ EDR not active | ✅ | 🟡 1 patch behind | ✅ | ✅ | 🔴 |
| HW-022 | [User] | Windows 10 | ✅ | ✅ | 🔴 30+ days behind | ✅ | ❌ | 🔴 |

---

## Action Register

| Priority | Device | User | Issue | Action | Owner | Due |
|---------|--------|-----|-------|--------|-------|-----|
| Critical | HW-015 | [User] | EDR not running | Reinstall EDR agent immediately | IT Tech | Today |
| Critical | HW-008 | [User] | Disk not encrypted | Enable BitLocker — enforce via MDM | IT Tech | 24 hours |
| High | HW-022 | [User] | Not MDM enrolled + 30-day patch lag | Enroll in Intune; force patch | IT Tech | 3 days |
```

## Output Contract
- EDR status always checked first — it's the minimum viable endpoint protection
- Non-compliant devices never allowed to access production systems or sensitive data without remediation
- Personal (BYOD) devices always treated separately — cannot enforce MDM; recommend a separate access policy
- HITL required: IT Manager notified of any device with EDR not active; Dr. Lewis informed if > 10% of devices are non-compliant

## System Dependencies
- **Reads from:** MDM platform (Jamf, Intune), EDR console, asset inventory (provided)
- **Writes to:** Nothing (status report for IT action)
- **HITL Required:** IT Manager reviews report; non-compliant devices escalated immediately to IT Tech for remediation; Dr. Lewis notified of critical compliance failures

## Test Cases
1. **Golden path:** Monthly review, 30 devices → 27 compliant, 2 partial (patch lag), 1 critical (EDR not active); action register with 24-hour deadline for EDR remediation
2. **Edge case:** Personal device (BYOD) used for work → flagged as outside MDM policy, work data access policy applied (conditional access via M365 only), user advised of company device option
3. **Adversarial:** User disables EDR ("it slows down my computer") → EDR re-enforced via MDM within 1 hour of detection, IT Manager documents the attempt, policy reviewed with user by IT Manager + HR

## Audit Log
Endpoint security reports retained by entity and month. Compliance history tracked per device. Non-compliance and remediation events logged.

## Deprecation
Retire when entity deploys a unified endpoint management platform with real-time compliance dashboards, automated remediation, and policy enforcement.
