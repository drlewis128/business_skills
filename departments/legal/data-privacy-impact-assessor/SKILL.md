---
name: data-privacy-impact-assessor
description: "Conduct privacy impact assessments for new data processing activities. Use when the user says 'privacy impact assessment', 'PIA', 'DPIA', 'data protection impact assessment', 'new data collection', 'does this need a privacy review', 'privacy risk', 'new system with user data', 'data processing review', or 'privacy by design'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--activity <name>] [--data-type <PHI|PII|behavioral|financial|all>]"
---

# Data Privacy Impact Assessor

Conduct privacy impact assessments (PIAs/DPIAs) for new data processing activities. Before deploying a new system, feature, or data collection that involves personal data, a privacy impact assessment identifies the data privacy risks and required safeguards. GDPR Article 35 mandates a formal DPIA for high-risk processing. HIPAA requires a risk analysis before new PHI processing. This skill guides the privacy review process.

## When to Use
- Deploying a new system or feature that collects or processes personal data
- Before implementing AI/ML tools that process employee or customer data
- Before sharing personal data with a new vendor
- New use case for existing data (secondary use)
- GDPR high-risk processing: large-scale monitoring, systematic profiling, PHI processing

## When a Full DPIA is Required (GDPR Article 35)

```
DPIA required if processing involves:
  ✅ Large-scale processing of special categories (health data, biometrics)
  ✅ Systematic monitoring of publicly accessible areas (CCTV)
  ✅ Large-scale profiling or automated decision-making with legal effect
  ✅ Novel use of technology with high impact on individuals
  ✅ Two or more of these high-risk criteria combined
  
HIPAA equivalent: Security Rule Risk Analysis required for any new ePHI system
```

## Output Format

```markdown
# Privacy Impact Assessment — <Activity Name>
**Date:** <date> | **Entity:** <name>
**Activity assessed:** <description>
**Data types:** PHI / PII / Behavioral / Financial
**Regulatory context:** HIPAA / GDPR / CCPA / General
**Prepared by:** Dr. John Lewis / Privacy Officer

---

## Activity Description

**What is being built/implemented?** <description>
**Why is this data needed?** <business purpose>
**Who will process the data?** <internal teams, vendors>
**Where will the data be stored?** <systems, locations>
**How long will data be retained?** <retention period>

---

## Data Inventory

| Data Element | Category | Sensitivity | Source | Volume | Storage Location | Shared With |
|-----------|---------|----------|--------|--------|----------------|-----------|
| Patient diagnoses | PHI | Very High | AdvancedMD | ~5,000 records | Azure (HIPAA BAA) | Billing team |
| Employee email addresses | PII — contact | Low | HR system | 45 records | M365 | IT only |
| User browsing behavior | Behavioral | Medium | Website analytics | 50K sessions/mo | Google Analytics | GA vendor |
| Credit card data | Financial | Very High | Payment processor | N/A — tokenized | Stripe | Stripe only |

---

## Privacy Risk Assessment

| Risk | Data Involved | Likelihood | Impact | Mitigation | Residual Risk |
|------|------------|-----------|--------|----------|-------------|
| Unauthorized access to PHI | Patient diagnoses | Medium | Critical — HIPAA breach | Encryption, MFA, BAA | Medium |
| Data breach exposing PII | Employee contact data | Low | Low — limited scope | M365 security, MFA | Low |
| Vendor data misuse (Google Analytics) | Behavioral data | Low | Medium — GDPR if EU users | Google DPA in place | Low |
| Regulatory non-compliance (no consent) | Marketing email list | Medium | Medium — CCPA, CAN-SPAM | Opt-in confirmed for all contacts | Low |

---

## Compliance Requirements

| Regulation | Applies? | Requirements | Gap | Action |
|-----------|---------|------------|-----|--------|
| HIPAA | ✅ (PHI) | BAA, minimum necessary, access controls, audit logs | BAA with new vendor required | Execute before PHI shared |
| GDPR | 🟡 (EU users?) | Assess EU user base; DPA if EU users in analytics | Not assessed | Assess Column6 EU user volume |
| CCPA | ✅ (CA users) | Privacy policy updated, opt-out available | Privacy policy last updated 2023 | Update to reflect new data activity |
| CAN-SPAM | ✅ (email) | Opt-out mechanism in all commercial email | ✅ Implemented | None |

---

## Privacy by Design Recommendations

1. **Data minimization:** Collect only the data necessary for the stated purpose — do not collect "just in case"
2. **Consent:** Obtain appropriate consent where required (CCPA marketing, GDPR where consent is the legal basis)
3. **Access controls:** Limit access to personal data to the minimum number of staff with legitimate need
4. **Retention limits:** Set automated data deletion at the end of the retention period
5. **Vendor controls:** Execute DPA/BAA with every vendor before sharing personal data
6. **Pseudonymization:** Where possible, replace direct identifiers with pseudonyms in analytics
7. **Audit logging:** Log access to sensitive personal data for detection and response

---

## PIA Outcome

**Privacy risk level:** Low / Medium / High / Very High
**Proceed?** Yes — with mitigations / Conditional — address gaps first / No — do not proceed until resolved
**Required mitigations before go-live:**
- [ ] Execute BAA/DPA with [vendor]
- [ ] Update privacy policy to reflect new activity
- [ ] Implement automated retention deletion at [date]
```

## Output Contract
- HIPAA risk analysis always required for new ePHI processing — non-negotiable
- Data minimization always assessed — the minimum necessary standard is both a HIPAA requirement and a privacy best practice
- Vendor compliance always checked — no personal data shared with a vendor before DPA/BAA is in place
- EU user applicability always checked — GDPR DPIA requirement triggers at scale
- HITL required: Dr. Lewis reviews PIA; Privacy Officer (Allevio compliance officer for PHI) reviews; Legal counsel reviews for high-risk activities; product/technology team implements mitigations before launch; Matt Mathison informed of significant privacy risks

## System Dependencies
- **Reads from:** System architecture documents, vendor list, data flows (provided by technology team)
- **Writes to:** PIA report (shared with product, IT, and Legal)
- **HITL Required:** Dr. Lewis reviews; Allevio compliance officer for PHI; Legal counsel for high-risk; technology team implements safeguards

## Test Cases
1. **Golden path:** New Allevio patient portal feature that displays visit history → HIPAA PIA required (ePHI access via web), risks: unauthorized PHI access (mitigate with MFA, session timeout, audit logging), vendor (web hosting) needs BAA, minimum necessary assessed (display what patient legitimately needs, no more), PIA approved with required mitigations implemented at launch
2. **Edge case:** Marketing wants to use patient email list for a product promotion campaign → this is NOT a permitted use of PHI under HIPAA; treatment, payment, and operations are permitted; marketing to existing patients for new services requires Authorization (not just BAA); engage Allevio compliance officer before any PHI-based marketing
3. **Adversarial:** Engineering says "it's just internal analytics, it's not personal data" → behavioral data about identified employees or users is personal data under GDPR and PII under most privacy frameworks; "internal use only" does not exempt from privacy requirements; conduct PIA

## Audit Log
PIAs retained for duration of the processing activity + 3 years. DPIA outcomes retained per GDPR Article 35 requirements. Risk mitigations tracked to completion.

## Deprecation
Retire when entity deploys a privacy management platform (OneTrust) with automated PIA/DPIA workflows and data mapping integrated with system inventory.
