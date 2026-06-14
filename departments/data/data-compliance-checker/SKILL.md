---
name: data-compliance-checker
description: "Audit data practices against compliance requirements. Use when the user says 'data compliance', 'HIPAA data audit', 'GDPR check', 'CCPA compliance', 'data privacy audit', 'is this data compliant', 'data regulatory requirements', 'data compliance review', 'privacy compliance', 'SOC 2 data controls', or 'check if our data practices comply'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--framework <hipaa|gdpr|ccpa|soc2|all>] [--entity <Allevio|HIVE|MBL|all>]"
---

# Data Compliance Checker

Audit data practices against applicable compliance frameworks and produce a gap report with remediation priorities. Compliance gaps in data handling are not theoretical risks — HIPAA violations carry $100-$50K per violation, GDPR up to €20M or 4% of global revenue. For MBL's portfolio, the highest compliance exposure is Allevio (HIPAA/HITECH — PHI handling), with secondary exposure in CCPA (California users) and SOC 2 (trust controls for enterprise customers).

## When to Use
- Before launching a new product that handles customer data
- Before onboarding Allevio, HIVE, or Column6 data into MBL's data systems
- Quarterly compliance review across portfolio
- Before a customer security questionnaire response
- After a data incident — assess compliance exposure
- Before signing a BAA (Business Associate Agreement)

## Compliance Frameworks

```
HIPAA / HITECH (Allevio — PRIMARY):
  Applies to: All PHI (Protected Health Information)
  PHI examples: patient names, DOB, SSN, diagnosis codes, treatment records
  Key controls: BAA with all vendors, minimum necessary access, encryption (in transit + at rest), audit logging, breach notification (72h)
  Civil penalties: $100-$50,000 per violation
  Willful neglect: $10,000-$50,000 per violation (enforceable by HHS OCR)

CCPA (California Consumer Privacy Act):
  Applies to: Businesses with CA consumers + revenue > $25M OR >100K CA consumer records
  Rights: right to know, right to delete, right to opt-out of sale
  Key controls: privacy notice, deletion mechanism, do-not-sell option
  Penalties: $2,500/violation; $7,500/intentional violation

GDPR (EU):
  Applies to: Data of EU residents, regardless of company location
  Key controls: lawful basis for processing, data subject rights, DPA (Data Processing Agreements), breach notification (72h)
  Penalties: Up to €20M or 4% global annual revenue

SOC 2 Type II (trust controls for SaaS):
  Applies to: Enterprise B2B SaaS customers requiring it
  Five trust criteria: Security, Availability, Processing Integrity, Confidentiality, Privacy
  Key controls: access controls, encryption, change management, monitoring
  Audit: Annual third-party audit
```

## Output Format

```markdown
# Data Compliance Audit — <Entity / Scope>
**Date:** <date> | **Auditor:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Column6>
**Frameworks:** HIPAA / CCPA / GDPR / SOC 2
**Scope:** <Data systems, products, or processes reviewed>

---

## Compliance Summary

| Framework | Status | Risk Level | Critical Gaps | Next Action |
|---------|--------|-----------|-------------|------------|
| HIPAA | 🔴 Non-compliant / 🟡 Partial / ✅ Compliant | High / Medium / Low | <N> gaps | Immediate remediation |
| CCPA | 🟡 Partial | Medium | 2 gaps | 30-day plan |
| GDPR | ✅ Not applicable (no EU users) | — | — | Monitor |
| SOC 2 | 🟡 Informal controls only | Medium | 4 gaps | Q4 formal audit |

---

## HIPAA Compliance Checklist (Allevio)

### Administrative Safeguards
- [x] Privacy Officer designated
- [x] HIPAA training completed (Allevio staff)
- [ ] ❌ Risk Assessment: NOT completed (required annually) — **HIGH RISK**
- [x] Sanction policy documented
- [ ] ❌ BAA with AdvancedMD: Confirm signed — **CRITICAL**
- [ ] ❌ BAA with MBL data systems: Required if PHI ever flows to BigQuery — **CRITICAL**

### Technical Safeguards
- [x] PHI encrypted in transit (TLS 1.2+) — AdvancedMD confirmed
- [ ] ❌ PHI encrypted at rest: NOT confirmed for all storage locations — **HIGH RISK**
- [x] Unique user IDs (no shared credentials)
- [ ] ❌ Automatic logoff: Not configured on some terminals — **MEDIUM**
- [x] Audit controls: AdvancedMD has access logging

### Physical Safeguards
- [x] Workstation access controlled
- [ ] ❌ Workstation use policies: Not documented — **MEDIUM**

### Data Handling
- [ ] ❌ Minimum necessary principle: Confirm staff access limited to minimum required — **HIGH**
- [x] PHI access log retained (AdvancedMD audit trail)
- [x] MBL team: No PHI access (confirmed — de-identified data only in BigQuery)

### Breach Notification
- [ ] ❌ Breach response plan: NOT documented — **HIGH RISK**
- [x] HHS/OCR contact information current

---

## CCPA Compliance Checklist (Column6, MBL marketing)

### Consumer Rights
- [ ] ❌ Right to Know: Privacy policy does not disclose data categories collected — **HIGH**
- [ ] ❌ Right to Delete: No deletion mechanism implemented — **HIGH**
- [ ] ❌ Right to Opt-Out: No "Do Not Sell" mechanism (required if data sold to advertisers) — **CRITICAL for Column6**
- [x] Non-discrimination: No pricing differences for privacy choices

### Data Inventory
- [ ] ❌ Data categories: Not documented — **MEDIUM**
- [x] No sale of sensitive personal information (health data)

---

## Gap Remediation Plan

### Critical (Do immediately — legal exposure):

| Gap | Framework | Risk | Owner | Due date | Estimated effort |
|-----|---------|------|-------|---------|----------------|
| BAA with AdvancedMD — confirm signed | HIPAA | Critical | Allevio CEO | <today + 7 days> | 2h (locate and confirm) |
| BAA with MBL if PHI flows to BigQuery | HIPAA | Critical | Dr. Lewis | <today + 7 days> | 4h (review data flow, sign BAA) |
| Column6 "Do Not Sell" mechanism | CCPA | Critical | Column6 Eng | <today + 30 days> | 8h |

### High (Do within 30 days):

| Gap | Framework | Risk | Owner | Due date |
|-----|---------|------|-------|---------|
| HIPAA Risk Assessment (annual) | HIPAA | High | Dr. Lewis + Allevio PO | <30 days> |
| PHI encrypted at rest — confirm all storage | HIPAA | High | Allevio IT | <30 days> |
| Breach response plan documented | HIPAA | High | Dr. Lewis + Allevio PO | <30 days> |
| CCPA privacy policy update (data categories) | CCPA | High | Dr. Lewis | <30 days> |
| CCPA deletion mechanism | CCPA | High | Engineering | <30 days> |

### Medium (Do within 90 days):

| Gap | Framework | Owner | Due date |
|-----|---------|-------|---------|
| Workstation use policies | HIPAA | Allevio IT | <90 days> |
| Minimum necessary access review | HIPAA | Allevio PO | <90 days> |
| CCPA data inventory | CCPA | Dr. Lewis | <90 days> |

---

## Compliance Calendar

| Review | Frequency | Owner | Next date |
|--------|---------|-------|---------|
| HIPAA Risk Assessment | Annual | Dr. Lewis + Allevio PO | <date> |
| BAA vendor review | Annual | Dr. Lewis | <date> |
| CCPA privacy policy review | Annual | Dr. Lewis | <date> |
| PHI access audit | Quarterly | Dr. Lewis | <date> |
| Data compliance audit | Quarterly | Dr. Lewis | <date> |
```

## Output Contract
- Critical gaps always at the top — buried compliance gaps do not get fixed
- HIPAA gaps always treated as critical until remediated — the civil penalty exposure is too high
- BAA status always explicitly confirmed — a missing BAA is an automatic HIPAA violation
- Remediation always has a named owner, due date, and effort estimate — compliance without accountability doesn't close
- HITL required: Dr. Lewis owns audit and remediation plan; critical HIPAA items escalated to Matt Mathison and Allevio CEO immediately; breach notification requires legal counsel before any external communication

## System Dependencies
- **Reads from:** AdvancedMD (PHI access logs), BigQuery (data flow audit), vendor contracts (BAA status), privacy policies
- **Writes to:** Compliance audit report (SharePoint/Legal/Compliance); remediation tracking (Monday.com)
- **HITL Required:** Dr. Lewis runs audit; Matt Mathison informed of critical gaps; Allevio CEO owns HIPAA remediation; legal counsel involved for breach notification; no compliance communication to regulators without legal review

## Test Cases
1. **Golden path:** Quarterly compliance audit for Allevio → HIPAA: 8 controls checked; 2 critical gaps (BAA confirmation pending, breach plan missing); 3 high gaps; remediation plan created; Allevio CEO and Matt Mathison notified of critical gaps; calendar: next HIPAA risk assessment scheduled in 6 months
2. **Edge case:** Data incident occurs and compliance exposure needs to be assessed immediately → activate data-incident-responder first; then run compliance-checker in parallel to assess HIPAA breach notification obligation (72h clock starts at discovery); legal counsel engaged immediately; do not communicate breach to HHS until legal confirms notification is required; the 72h clock is real
3. **Adversarial:** Team argues "we don't really have PHI because it's de-identified" → de-identification under HIPAA requires either Expert Determination or Safe Harbor method; partial de-identification (removing name but leaving ZIP + DOB + gender) is NOT safe harbor; re-identification risk is the test, not whether names are removed; if in doubt, treat as PHI; Dr. Lewis confirms de-identification method meets HIPAA Safe Harbor before removing PHI designation

## Audit Log
Compliance audit reports retained. Remediation tracking retained. BAA copies retained in SharePoint/Legal/BAAs. HIPAA audit trail maintained separately per HIPAA requirements.

## Deprecation
Retire when MBL has a dedicated compliance function (GRC) with automated compliance monitoring tools (OneTrust, Vanta, Drata) that continuously track control status across all frameworks.
