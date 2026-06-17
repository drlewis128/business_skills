---
name: rc-hipaa-privacy-officer
description: "Administer HIPAA Privacy Rule compliance — PHI handling, patient rights, and privacy program. Use when the user says 'HIPAA privacy', 'PHI privacy', 'patient privacy', 'HIPAA privacy officer', 'privacy rule', 'patient rights', 'HIPAA authorization', 'minimum necessary', 'privacy policy', 'notice of privacy practices', 'NPP', 'right to access records', 'privacy complaint', 'HIPAA privacy compliance', or 'PHI handling policy'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity Allevio] [--action <audit|policy|patient-rights|complaint|training>]"
---

# HIPAA Privacy Officer

Administer HIPAA Privacy Rule compliance at Allevio — establishing and maintaining the privacy program that governs how Protected Health Information (PHI) is collected, used, disclosed, and protected. The Privacy Rule (45 CFR Part 164, Subparts A and E) applies to Covered Entities (healthcare providers who conduct electronic transactions) and governs patient rights, minimum necessary use, and permissible disclosures. At Allevio, compliance with the Privacy Rule is a legal requirement, an ethical obligation, and a condition of Medicare/Medicaid participation.

## When to Use
- Allevio-specific skill — applies to Allevio MSO and its affiliated clinics
- Establishing or updating the HIPAA Privacy Program
- A patient exercise their rights (access, amendment, restriction, accounting)
- A privacy complaint is received
- Annual privacy training for workforce members
- Reviewing a new use or disclosure of PHI
- Preparing for a HIPAA audit or regulatory examination

## HIPAA Privacy Rule Framework

```
Core Privacy Rule requirements:
  Notice of Privacy Practices (NPP):
    → Must be provided to patients at first service delivery
    → Must describe: PHI uses and disclosures; patient rights; duties of covered entity; how to file a complaint
    → Must be posted at service delivery sites and on website (if applicable)
    → Must be available on request
    → Annual workforce training on NPP content
    
  Minimum Necessary standard (§164.502(b)):
    → Access to PHI limited to what is necessary for the intended purpose
    → Applies to: uses within the organization; disclosures to third parties; requests for PHI
    → Implementation: role-based access controls (Entra ID + AdvancedMD); "minimum necessary" language in all PHI requests
    → Exception: Treatment disclosures (provider-to-provider); patient-requested disclosures; legal requirements
    
  Permissible uses and disclosures without authorization (§164.512):
    → Treatment, payment, operations (TPO): No authorization required
    → Public health reporting (AZ DHS disease reporting): No authorization required
    → Law enforcement: Specific requirements; legal counsel involved
    → Workers comp: Within applicable law requirements
    → All other disclosures: Authorization required (see §164.508)
    
  Patient rights (Allevio must honor all):
    → Right to access PHI (§164.524): Respond within 30 days; 60-day extension with notice
    → Right to amend (§164.526): Respond within 60 days; denial must be written
    → Right to accounting of disclosures (§164.528): 6-year lookback; 30-day response
    → Right to restrict (§164.522): Must agree to patient-requested restriction that self-pays and asks to restrict insurer disclosure
    → Right to confidential communications (§164.522(b)): Honor reasonable requests (e.g., call cell not home)
    → Right to a paper copy of NPP (always)
    
  Business Associate Agreements (§164.308(b) and §164.502(e)):
    → Required with every Business Associate (vendor who creates, receives, maintains, or transmits PHI on behalf of Allevio)
    → BAA must be in place BEFORE PHI flows to the vendor
    → BAA tracker maintained and current (see rc-hipaa-security-program)
    
  Workforce training (§164.530(b)):
    → All workforce members trained on Privacy Rule as appropriate to their job function
    → Training documented with completion dates
    → Re-training on material changes to privacy policy
    → New workforce: Before accessing PHI (hard gate — see it-onboarding-provisioner)
```

## Output Format

```markdown
# HIPAA Privacy Program Status — Allevio
**Date:** [Date] | **Privacy Officer:** Dr. John Lewis
**Last updated:** [Date] | **Next annual review:** [Date + 12 months]

---

## Privacy Program Components

| Component | Status | Last reviewed | Next action |
|---------|--------|-------------|------------|
| Notice of Privacy Practices (NPP) | Current ✅ / Outdated ⚠️ | [Date] | [Action if needed] |
| Privacy policies and procedures | Current ✅ / Gap ⚠️ | [Date] | |
| Workforce privacy training | [X]% complete ✅ / [N] overdue ⚠️ | | |
| BAA tracker | 100% ✅ / [N] missing ⚠️ | | |
| Patient rights log | Current ✅ | | |

---

## Patient Rights Log

| Date | Patient ID | Right exercised | Request received | Response due | Response sent | Notes |
|------|-----------|---------------|----------------|-------------|-------------|-------|
| [Date] | [ID] | Right to access | [Date] | [Date + 30 days] | [Date] | |
| | | Right to amend | | [Date + 60 days] | | |
| | | Accounting of disclosures | | [Date + 30 days] | | |

**Open patient rights requests:** [N] | **Overdue:** [N — immediate action]

---

## Minimum Necessary Audit

| PHI access point | Access controlled? | Role limitation | Notes |
|-----------------|-------------------|----------------|-------|
| AdvancedMD (EHR) | Yes — role-based | Clinicians, billing, front desk separately | [Date audited] |
| Email (M365) | Purview DLP — PHI detection | Blocked from external sharing | |
| Shared drives (SharePoint) | Permission-based | PHI folders restricted | |
| Paper records | Physical controls | Locked cabinets; clean desk policy | |

---

## Privacy Complaint Log

| Date | Source | Nature | Investigated by | Finding | Resolution | Closed |
|------|--------|--------|----------------|---------|-----------|--------|
| [Date] | [Patient / Employee] | [Description] | Dr. Lewis | [Violation / Unfounded] | [Action] | [Date] |

**HHS OCR complaints filed by patients this year:** [N]

---

## Permissible Disclosure Tracker (non-TPO disclosures)

| Date | Recipient | Purpose | Legal basis | Authorized by | PHI disclosed |
|------|---------|---------|------------|------------|--------------|
| [Date] | [Law enforcement] | [Investigation] | §164.512(f) | Dr. Lewis + Legal | [Minimum necessary PHI] |

---

## NPP and Policy Update Log

| Version | Date | Change | Distribution |
|---------|------|--------|------------|
| v[X] | [Date] | [What changed] | Posted at clinics; website updated; training updated |

---

## Matt Mathison Brief (if privacy violation or OCR complaint)

Allevio HIPAA privacy: [Event description]. Patient affected: [Yes/No]. Breach assessment: [In progress / No breach / Breach — notification required]. OCR complaint filed: [Yes/No]. Legal involved: [Yes/No]. Status: [Resolution or in progress].
```

## Output Contract
- Patient rights responses meet statutory deadlines — the right to access PHI has a 30-day response deadline from receipt (60 days with written extension notice); a request received on June 1 must be responded to by July 1; the clock starts when the request is received (not when it is logged, processed, or approved); Dr. Lewis maintains a patient rights log with all deadlines visible; overdue responses are escalated immediately — OCR views deadline violations as evidence of a compliance program failure
- PHI disclosures require legal basis — every disclosure of PHI outside of Treatment, Payment, or Operations must have a documented legal basis; law enforcement requests require legal review; subpoenas require attorney involvement; patient requests for their own PHI are honored within the statutory framework; "it seemed fine" is not a legal basis; Dr. Lewis documents the legal basis for every non-TPO disclosure
- The minimum necessary standard is enforced at the role level, not the individual level — AdvancedMD access is configured so front desk staff can see scheduling and demographics but not clinical notes; billing staff can see claims and diagnoses but not clinical narrative; clinicians can see the full chart for their patients; this is enforced through role configuration, not through voluntary compliance; Dr. Lewis audits role configurations semi-annually
- HITL required: Dr. Lewis serves as Privacy Officer; patient rights responses reviewed and sent by Dr. Lewis; non-TPO disclosures require Dr. Lewis approval; privacy complaints investigated by Dr. Lewis; BAA execution before PHI access (enforced gate); attorney involvement for law enforcement requests, subpoenas, and OCR complaints; CEO notified of OCR complaints; Matt Mathison notified of confirmed privacy violations

## System Dependencies
- **Reads from:** AdvancedMD access logs, Entra ID/Intune (access controls), Purview DLP logs, patient rights requests, compliance training platform (training completion), BAA tracker (rc-hipaa-security-program)
- **Writes to:** Privacy program documentation (SharePoint/RC/Allevio/HIPAA/Privacy/); patient rights log; privacy complaint log; permissible disclosure tracker; NPP and policy documents; BAA tracker
- **HITL Required:** Dr. Lewis is Privacy Officer; patient rights responses by Dr. Lewis; non-TPO disclosures approved by Dr. Lewis; attorney for law enforcement/subpoena/OCR; CEO notified of complaints; Matt Mathison notified of violations

## Test Cases
1. **Golden path:** Patient calls requesting a copy of their medical records → Right to access triggered (§164.524); Dr. Lewis logs request with receipt date and 30-day deadline; verify patient identity (government ID or date of birth/address match); determine format requested (paper, electronic, CD); coordinate with AdvancedMD to generate complete records; review for minimum necessary (patient requesting own records — full chart is appropriate); respond within 30 days; provide records in requested format; update patient rights log; if electronic records requested and Allevio has them electronically, must provide in electronic format if feasible; no copying fees beyond reasonable cost for paper copies
2. **Edge case:** A patient's employer calls requesting medical records for a workers' compensation claim → Workers' comp disclosures are permissible without authorization within applicable law (§164.512(l) Arizona workers' comp law); verify the requestor is the actual workers' comp insurer or employer with a valid claim; provide minimum necessary PHI relevant to the work-related injury only (not the patient's full medical history); document the disclosure in the permissible disclosure tracker; legal basis: §164.512(l) workers' comp; note: patient authorization is not required for this disclosure but the patient may request an accounting
3. **Adversarial:** "The patient is suing us — can we disclose their medical records to our attorney?" → Disclosures for litigation defense are permissible under §164.512(e) (judicial and administrative proceedings); requires a court order or qualified protective order, or a subpoena accompanied by written assurances; coordinate with legal counsel — this is not a disclosure Dr. Lewis approves unilaterally; attorney-client privilege applies to the legal strategy discussion; the PHI disclosure itself follows the HIPAA legal proceeding rules; do not disclose to defense counsel without a court order or qualified protective order in place

## Audit Log
Patient rights log retained permanently (Allevio — 6-year minimum per HIPAA). Privacy complaint log retained permanently. Permissible disclosure tracker retained permanently. Workforce training records retained 6 years. BAA records retained 6 years. NPP versions retained permanently. Privacy policy versions retained 6 years. OCR complaint records retained permanently.

## Deprecation
Retire when Allevio has a dedicated HIPAA Privacy Officer or Compliance Officer who owns the privacy program — with Dr. Lewis providing technology and security infrastructure support. HIPAA Privacy Officer function at Allevio is a regulatory requirement and must be assigned to a named individual (can be same person as Security Officer).
