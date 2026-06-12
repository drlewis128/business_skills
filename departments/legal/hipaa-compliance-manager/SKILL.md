---
name: hipaa-compliance-manager
description: "Manage HIPAA compliance for healthcare entities. Use when the user says 'HIPAA', 'HIPAA compliance', 'PHI', 'protected health information', 'HIPAA audit', 'HIPAA risk assessment', 'HIPAA training', 'covered entity', 'business associate', 'HIPAA violation', or 'OCR investigation'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity Allevio] [--mode <assess|audit|incident|baa>] [--section <privacy|security|breach>]"
---

# HIPAA Compliance Manager

Manage HIPAA compliance for healthcare entities (primary: Allevio). HIPAA is not a checkbox — it's an ongoing compliance program requiring annual risk assessments, workforce training, policy maintenance, BAA management, and breach response procedures. HHS OCR fines range from $100 to $50,000 per violation, with maximum annual penalties of $1.9M per violation category. This skill manages Allevio's HIPAA compliance program.

## When to Use
- Annual HIPAA Security Rule risk assessment
- HIPAA training program management
- Business Associate Agreement (BAA) review and management
- Suspected PHI breach — assess notification obligations
- OCR audit or investigation preparation
- New vendor or system accessing PHI

## HIPAA Three Rules

```
1. Privacy Rule — governs USE and DISCLOSURE of PHI
   - Minimum necessary standard
   - Patient rights (access, amendment, accounting of disclosures)
   - Notice of Privacy Practices
   - Permitted disclosures (treatment, payment, operations)

2. Security Rule — governs ELECTRONIC PHI (ePHI) safeguards
   - Administrative safeguards (risk analysis, training, policies)
   - Physical safeguards (workstation, facility, device controls)
   - Technical safeguards (access control, audit controls, encryption)

3. Breach Notification Rule — governs BREACH REPORTING
   - Patients: within 60 days of discovery
   - HHS OCR: within 60 days (>500 records: immediate posting)
   - Media: if >500 records in a state
```

## Annual HIPAA Compliance Checklist

| Requirement | Frequency | Status | Evidence |
|-----------|---------|--------|---------|
| Security risk analysis | Annual | | |
| Security risk management plan | Annual (update) | | |
| Workforce security training | Annual | | |
| HIPAA policy review | Annual | | |
| BAA inventory review | Annual | | |
| Access control review | Annual | | |
| Audit log review | Periodic | | |
| Incident/breach log review | Ongoing | | |

## Output Format

```markdown
# HIPAA Compliance Assessment — Allevio
**Date:** <date> | **Assessment type:** Annual / Incident / Audit prep
**Prepared by:** Dr. John Lewis / Allevio Compliance Officer

---

## Compliance Overview

**HIPAA compliance maturity:** Level <N>/4
**Key finding:** <1-2 sentences>
**HHS OCR audit readiness:** Ready / Needs work / Not ready

---

## Security Rule Compliance (Technical Safeguards)

| Safeguard | HIPAA Ref | Requirement | Status | Gap | Action |
|---------|---------|-----------|--------|-----|--------|
| Unique user identification | §164.312(a)(2)(i) | Unique ID for each user | ✅ | None | |
| Emergency access procedure | §164.312(a)(2)(ii) | Emergency access when primary fails | 🟡 | Undocumented | Document procedure |
| Automatic logoff | §164.312(a)(2)(iii) | Auto-logoff after inactivity | ✅ | | 15-min timeout |
| Encryption/decryption | §164.312(a)(2)(iv) | Encrypt ePHI (addressable) | 🟡 | Laptops encrypted; mobile uncertain | MDM encryption check |
| Audit controls | §164.312(b) | Log ePHI access and activity | 🟡 | 90-day retention only | Extend to 6 years |
| Integrity controls | §164.312(c)(1) | Protect ePHI from improper alteration | ✅ | | |
| Authentication | §164.312(d) | Verify user identity | 🟡 | MFA at 97% | 3 users without MFA |
| Transmission security | §164.312(e)(2)(ii) | Encrypt ePHI in transit | ✅ | | TLS 1.3 |

---

## Administrative Safeguards

| Safeguard | HIPAA Ref | Status | Notes |
|---------|---------|--------|-------|
| Security officer designated | §164.308(a)(2) | ✅ | Dr. Lewis / Allevio Compliance Officer |
| Workforce training completed | §164.308(a)(5) | ✅ | 100% completion <date> |
| Annual risk analysis completed | §164.308(a)(1)(ii)(A) | 🟡 | Draft in progress — due Dec 31 |
| Sanction policy in place | §164.308(a)(1)(ii)(C) | ✅ | In employee handbook |
| Incident procedures documented | §164.308(a)(6) | ✅ | IR plan covers PHI breach |
| Contingency plan (BCP) | §164.308(a)(7) | ✅ | Backup and DR plan |
| Business associate contracts | §164.308(b)(1) | 🟡 | 2 vendors missing BAA |

---

## BAA Status (Business Associate Agreements)

| Vendor | PHI Access | BAA Executed? | Expiration | Action |
|--------|---------|------------|---------|--------|
| AdvancedMD | ✅ Yes — RCM | ✅ | Evergreen | None |
| Microsoft (M365) | ✅ Yes — email/Teams | ✅ | Evergreen | None |
| IT Support MSP | 🟡 Possible | ❌ Missing | — | Execute BAA before next access |
| Billing software | ✅ Yes | ❌ Missing | — | Execute BAA immediately |

**BAAs missing: 2 — Critical compliance gap**

---

## Breach Risk Assessment (Annual)

| PHI Risk Scenario | Likelihood | Potential Records | Notification Required? |
|----------------|----------|-----------------|----------------------|
| Staff accidentally emails PHI to wrong recipient | Medium | 1-50 records | Case-by-case (4-factor analysis) |
| Ransomware encrypts PHI systems | Low (8%) | Potentially all | Presumed breach unless forensics prove otherwise |
| Vendor breach affecting shared PHI | Medium | Depends on vendor | Vendor responsible for notification |

---

## Annual Risk Analysis Summary

**Risk analysis methodology:** NIST SP 800-30 / HHS guidance
**ePHI inventory:** <list all systems containing ePHI>
**Threats identified:** <N> | **Vulnerabilities:** <N>
**Residual risk level:** Low / Medium / High
**Risk management plan:** <action items with owners and dates>
```

## Output Contract
- Annual risk analysis always completed and documented — this is the foundational HIPAA requirement
- Missing BAAs always flagged as Critical — vendors with PHI access without a BAA is a HIPAA violation
- MFA gaps always flagged — HIPAA authentication requirement at §164.312(d)
- Breach analysis always uses the HHS 4-factor analysis to determine notification obligation
- HITL required: Dr. Lewis leads compliance assessment; Allevio compliance officer owns day-to-day compliance; Legal counsel interprets HIPAA requirements; OCR notifications require Legal + Dr. Lewis + Matt Mathison

## System Dependencies
- **Reads from:** AdvancedMD access logs, M365 compliance data, training records, BAA inventory (provided by Allevio)
- **Writes to:** Compliance assessment report (for Allevio leadership and OCR if required)
- **HITL Required:** Allevio compliance officer owns HIPAA program; Dr. Lewis reviews strategy; Legal counsel for breach notifications; Matt Mathison for material compliance issues

## Test Cases
1. **Golden path:** Annual HIPAA assessment → 2 missing BAAs (critical, execute within 30 days), MFA gap at 97% (close within 2 weeks), audit log retention at 90 days vs. 6-year (fix with Sentinel by Q2), risk analysis completed and signed, training at 100%
2. **Edge case:** Staff member emails patient records to the wrong address → 4-factor breach analysis: (1) was the information encrypted? (2) who received it? (3) was it actually acquired? (4) has the risk been mitigated? If low risk on all 4, no notification required but documented
3. **Adversarial:** Vendor claims their "HIPAA compliant" product doesn't need a BAA → every vendor with access to ePHI is a Business Associate and requires a BAA — "HIPAA compliant" certification is not a substitute; require BAA or find a different vendor

## Audit Log
Annual risk analyses retained for 6 years. BAA inventory maintained. Training completion records retained for 6 years. Breach analyses documented.

## Deprecation
Retire when Allevio deploys a dedicated healthcare compliance platform with automated HIPAA tracking, BAA management, and risk analysis workflows.
