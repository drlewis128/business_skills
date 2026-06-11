---
name: cyber-insurance-preparer
description: "Prepare for a cyber insurance application or renewal. Use when the user says 'cyber insurance', 'cybersecurity insurance', 'cyber liability insurance', 'insurance renewal', 'cyber coverage', 'what does cyber insurance require', or 'preparing for cyber insurance audit'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <apply|renew|audit>] [--coverage <new|existing>]"
---

# Cyber Insurance Preparer

Prepare for a cyber insurance application or renewal. Cyber insurance underwriters have dramatically tightened requirements since 2020. Controls that weren't required 3 years ago are now mandatory — and missing them means declination or massive premium increases. This skill maps carrier requirements to your control posture and closes gaps before the application.

## When to Use
- New cyber insurance application
- Annual cyber insurance renewal (typically 60-90 days before renewal)
- Policy change (adding entities, increasing coverage)
- Post-incident — some incidents require incident reporting to carrier
- Evaluating coverage adequacy (do we have enough?)

## Mandatory Controls (Most Carriers Now Require)

| Control | Carrier Requirement Level | MBL Relevance |
|---------|-------------------------|---------------|
| **MFA on all privileged accounts** | Mandatory — hard decline without it | Critical |
| **MFA on email (M365)** | Mandatory | Critical |
| **MFA on remote access (VPN, RDP)** | Mandatory | Critical |
| **Endpoint Detection & Response (EDR)** | Mandatory | Critical |
| **Immutable/offline backups** | Mandatory | Critical |
| **Backup testing (quarterly restore)** | Required | High |
| **Patch management within 30 days (Critical)** | Required | High |
| **Network segmentation** | Recommended → becoming required | High |
| **Email filtering / anti-phishing** | Required | High |
| **Security awareness training (annual)** | Required | High |
| **Incident response plan (documented)** | Required | High |
| **Privileged access management** | Increasingly required | Medium |
| **Vulnerability scanning (annual min)** | Increasingly required | Medium |

## Coverage Types

| Coverage | What It Covers | Typical Limit |
|---------|--------------|--------------|
| **First-party** | Your own losses — business interruption, ransomware payment, recovery costs | $1-5M typical |
| **Third-party** | Claims from customers/partners — data breach notification, regulatory fines | $1-5M typical |
| **Ransomware** | Ransom negotiation, payment (if authorized), restoration costs | Often sublimited |
| **Business interruption** | Lost revenue during downtime | Often requires waiting period |
| **Social engineering (BEC)** | Wire fraud via email impersonation | Often sublimited ($100-500K) |
| **Regulatory fines** | HIPAA, GDPR, CCPA penalties | Varies by policy |

## Output Format

```markdown
# Cyber Insurance Readiness Assessment — <Entity>
**Application date:** <date> | **Renewal date:** <date>
**Current carrier:** <carrier> | **Coverage amount:** $<N>M

---

## Mandatory Control Compliance

| Control | Status | Evidence Available | Gap | Risk |
|---------|--------|------------------|-----|------|
| MFA — all admin accounts | ✅ Implemented | Entra ID MFA report | None | |
| MFA — all email accounts | ✅ Implemented | M365 MFA report | None | |
| MFA — VPN / remote access | ✅ Implemented | VPN config screenshot | None | |
| EDR on all endpoints | 🟡 95% coverage | MDM compliance report | 1 laptop not enrolled | Medium |
| Offline/immutable backups | 🟡 Partial | Backup logs | Backups not air-gapped | Medium |
| Backup restore testing | ❌ Not documented | None | No documented restore test | High — required |
| Security awareness training | ✅ Annual | Training completion records | None | |
| Documented IR plan | ✅ Exists | IR plan document | | |
| Email filtering | ✅ M365 Defender | M365 admin config | | |
| Patch management SLA | 🟡 Partial | Patch reports | 2 SLA overruns Q3 | Medium |

**Compliance score:** 7/10 controls fully compliant

---

## Critical Gaps to Close Before Application

| Gap | Risk | Action | Owner | Due |
|-----|------|--------|-------|-----|
| Backup restore not documented | Carrier may decline or exclude backup coverage | Run restore test + document | IT Engineer | <date + 14 days> |
| Backups not air-gapped / immutable | Ransomware could encrypt backups | Configure immutable S3 or offline copy | IT Engineer | <date + 30 days> |
| 1 endpoint not enrolled in MDM | EDR gap reduces coverage | Enroll HW-022 before application | IT Tech | <date + 7 days> |

---

## Application Checklist

**Documents to prepare:**
- [ ] IT environment overview (number of endpoints, cloud vs. on-prem, employee count)
- [ ] MFA deployment evidence (screenshot showing % coverage)
- [ ] EDR deployment evidence (MDM compliance report)
- [ ] Backup policy and last restore test result
- [ ] Security awareness training completion records
- [ ] Incident response plan (redacted for sensitivity)
- [ ] Prior incident history (required disclosure — be accurate)
- [ ] Revenue and payroll figures (for premium calculation)

---

## Coverage Recommendation

**Current coverage:** $<N>M / **Recommended:** $<N>M

**Rationale:**
- Healthcare (Allevio): PHI breach notification costs average $165/record × estimated breach size
- Private equity (HIVE): LP data breach + regulatory exposure
- Business interruption: Estimated at $<N>/day revenue loss during recovery

**Exclusions to watch for in policy:**
- Social engineering sublimit — ensure BEC coverage is adequate (PE firms are prime BEC targets)
- Ransomware payment sublimit — confirm ransom payment is covered if applicable
- War exclusions — check how carrier defines state-sponsored attacks
```

## Output Contract
- MFA gaps always treated as Critical — carriers will decline or severely limit coverage without MFA
- Backup restore documentation always required before application — undocumented backups don't count
- Prior incident history always disclosed accurately — material misrepresentation voids coverage
- HITL required: Dr. Lewis reviews and approves application before submission; Legal reviews coverage terms; Finance approves premium; Matt Mathison reviews portfolio-level coverage strategy

## System Dependencies
- **Reads from:** IT control documentation, compliance reports, backup logs, training records (provided)
- **Writes to:** Nothing (readiness assessment for HITL review and application submission)
- **HITL Required:** Dr. Lewis reviews and signs the application; Legal reviews coverage terms and exclusions; Finance approves premium; all incident history disclosures reviewed by Legal

## Test Cases
1. **Golden path:** Annual renewal → 7/10 controls compliant, 3 gaps (restore documentation, backup air-gap, 1 unenrolled endpoint), 30-day gap remediation plan, application submitted with all required evidence, renewal successful
2. **Edge case:** Carrier adds a new requirement mid-policy year (increasingly common) → assesses gap vs. current controls, implements the control before next renewal, avoids a policy lapse or coverage exclusion
3. **Adversarial:** Underwriter asks about a past incident that was "minor" — tempted to not disclose → discloses the incident accurately with the documented response; non-disclosure = policy void; provides the post-mortem as evidence of strong incident response

## Audit Log
Insurance applications, renewals, and carrier correspondence retained by entity and year. Control evidence packages retained for the policy period.

## Deprecation
Retire when entity works with a dedicated cyber insurance broker who manages the annual renewal process and provides controls gap analysis as part of their service.
