---
name: zero-trust-assessor
description: "Assess and build a zero-trust security posture. Use when the user says 'zero trust', 'zero-trust architecture', 'zero trust assessment', 'never trust always verify', 'zero trust framework', 'zero trust roadmap', 'least privilege access', or 'building zero trust'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <assess|roadmap|pillar <name>>] [--framework <NIST|Microsoft|CISA>]"
---

# Zero Trust Assessor

Assess and build a zero-trust security posture. Zero trust is not a product — it's an architecture philosophy: never trust any connection implicitly, always verify identity and device health before granting access, and minimize blast radius by limiting what each identity can reach. For MBL portfolio companies, Microsoft's Zero Trust model is the natural framework given the M365/Entra backbone.

## When to Use
- Assessing current security posture against zero trust principles
- Building a zero-trust roadmap for a portfolio entity
- Evaluating a specific security control gap (e.g., "do we have enough conditional access?")
- Preparing for a SOC 2 or cyber insurance audit
- After an incident that revealed a trust assumption that shouldn't have existed

## Microsoft Zero Trust Pillars

| Pillar | Core Principle | Key MBL Controls |
|--------|--------------|----------------|
| **Identity** | Verify explicitly — always authenticate and authorize | Entra ID, MFA, Conditional Access, PIM |
| **Devices** | Use healthy devices | Intune MDM, EDR, compliance policies |
| **Network** | Assume breach — limit lateral movement | Network segmentation, VPN, firewall |
| **Applications** | Least privilege access | Role-based access, app permissions, API security |
| **Data** | Protect and govern data | Data classification, DLP, encryption |
| **Visibility/Automation** | Detect and respond | M365 Defender, SIEM, automated response |

## Maturity Levels

```
Level 0 — None: No controls in place
Level 1 — Initial: Ad-hoc controls, not systematically applied
Level 2 — Developing: Controls deployed but gaps remain
Level 3 — Defined: Controls consistently applied and documented
Level 4 — Optimized: Automated enforcement, continuous monitoring
```

## Output Format

```markdown
# Zero Trust Assessment — <Entity>
**Date:** <date> | **Framework:** Microsoft Zero Trust
**Assessor:** Dr. John Lewis

---

## Executive Summary

**Overall maturity:** Level <N>/4
**Critical gaps:** <N>
**Key message:** <One paragraph — where we are and what matters most to close next>

---

## Pillar Assessment

### 1. Identity
**Maturity:** Level <N>

| Control | Status | Notes |
|---------|--------|-------|
| MFA enabled for all users | ✅ / 🟡 / ❌ | <detail> |
| MFA enabled for admins (hardware key / FIDO2) | ✅ / 🟡 / ❌ | <detail> |
| Conditional Access policies deployed | ✅ / 🟡 / ❌ | <detail> |
| Legacy authentication blocked | ✅ / 🟡 / ❌ | <detail> |
| Privileged Identity Management (PIM) | ✅ / 🟡 / ❌ | <detail> |
| Identity risk monitoring (Entra ID Protection) | ✅ / 🟡 / ❌ | <detail> |

**Top gaps:**
1. <gap>
2. <gap>

---

### 2. Devices
**Maturity:** Level <N>

| Control | Status | Notes |
|---------|--------|-------|
| All devices enrolled in MDM (Intune) | ✅ / 🟡 / ❌ | 92% — 2 devices pending |
| Compliance policies enforced before access | ✅ / 🟡 / ❌ | |
| EDR deployed on all devices | ✅ / 🟡 / ❌ | |
| OS patches applied within 30 days | ✅ / 🟡 / ❌ | |
| BYOD policy and controls in place | ✅ / 🟡 / ❌ | |

**Top gaps:** ...

---

### 3. Network
**Maturity:** Level <N>

| Control | Status | Notes |
|---------|--------|-------|
| Network segmentation (VLANs) | ✅ / 🟡 / ❌ | |
| VPN required for internal resource access | ✅ / 🟡 / ❌ | |
| RDP and SMB not exposed externally | ✅ / 🟡 / ❌ | |
| Outbound traffic monitored/filtered | ✅ / 🟡 / ❌ | |
| DNS filtering (block malicious domains) | ✅ / 🟡 / ❌ | |

---

### 4. Applications
**Maturity:** Level <N>

| Control | Status | Notes |
|---------|--------|-------|
| Least privilege access (role-based) | ✅ / 🟡 / ❌ | |
| App permissions reviewed quarterly | ✅ / 🟡 / ❌ | |
| User access reviews (annual minimum) | ✅ / 🟡 / ❌ | |
| OAuth app consent restricted | ✅ / 🟡 / ❌ | |

---

### 5. Data
**Maturity:** Level <N>

| Control | Status | Notes |
|---------|--------|-------|
| Data classification in place | ✅ / 🟡 / ❌ | |
| DLP policies in M365 | ✅ / 🟡 / ❌ | |
| PHI data encrypted at rest and in transit | ✅ / 🟡 / ❌ | |
| Encryption on all laptops (BitLocker) | ✅ / 🟡 / ❌ | |

---

### 6. Visibility & Automation
**Maturity:** Level <N>

| Control | Status | Notes |
|---------|--------|-------|
| M365 Defender deployed | ✅ / 🟡 / ❌ | |
| SIEM / log aggregation | ✅ / 🟡 / ❌ | |
| Security alerts reviewed daily | ✅ / 🟡 / ❌ | |
| Automated response to high-risk events | ✅ / 🟡 / ❌ | |

---

## Roadmap (Priority Order)

| Priority | Pillar | Action | Maturity Impact | Estimated Effort |
|---------|--------|--------|----------------|----------------|
| 1 | Identity | Deploy Conditional Access — block legacy auth | Level 1→3 | Low — M365 policy config |
| 2 | Identity | Enable PIM for admin accounts | Level 2→3 | Medium — admin process change |
| 3 | Devices | Enroll remaining 2 devices in Intune | Level 2→3 | Low — device enrollment |
| 4 | Data | Deploy M365 DLP policies for PHI/PII | Level 1→3 | Medium — policy config + testing |
| 5 | Network | DNS filtering deployment | Level 2→3 | Low — Umbrella or M365 Defender |
```

## Output Contract
- All 6 pillars assessed and scored — no partial assessments
- Roadmap always in priority order — biggest maturity gains first
- MFA and Conditional Access always flagged if not at Level 3+ — foundational for all other pillars
- PHI data controls always assessed separately for Allevio — HIPAA compliance is a parallel requirement
- HITL required: Dr. Lewis reviews and approves assessment; IT Manager owns roadmap execution; Allevio compliance officer reviews data and application pillar findings

## System Dependencies
- **Reads from:** Entra ID config, Intune compliance reports, M365 Defender reports, network architecture (provided)
- **Writes to:** Assessment report and roadmap (for HITL review and execution)
- **HITL Required:** Dr. Lewis reviews assessment; IT Manager owns remediation roadmap; Allevio compliance officer reviews all data pillar items

## Test Cases
1. **Golden path:** Assessment of MBL entity → Identity Level 3 (MFA + CA deployed), Devices Level 2 (2 unenrolled), Network Level 2 (no DNS filtering), Applications Level 2 (no quarterly access reviews), Data Level 1 (no DLP), Visibility Level 2 (Defender deployed, no SIEM); roadmap: DLP first, DNS filtering second, access reviews third, SIEM fourth
2. **Edge case:** Entity wants to assess only the Identity pillar (not a full assessment) → provides single-pillar assessment with all identity controls evaluated, flags that other pillar gaps will appear in next full assessment
3. **Adversarial:** IT team argues current controls are "good enough" without evidence → assessment framework requires documented evidence for each control; "we think it's configured" is Level 1 (ad-hoc), not Level 3 (defined); no credit without evidence

## Audit Log
Assessments retained by entity and date. Roadmap action items tracked. Year-over-year maturity trend documented.

## Deprecation
Retire when entity has a dedicated CISO or security team conducting quarterly zero-trust assessments, or when a GRC platform automates continuous control monitoring.
