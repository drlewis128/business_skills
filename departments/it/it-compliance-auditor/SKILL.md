---
name: it-compliance-auditor
description: "Audit IT compliance against HIPAA Security Rule, NIST CSF, and SOC 2 readiness. Use when the user says 'IT compliance', 'HIPAA audit', 'SOC 2', 'HIPAA Security Rule', 'NIST compliance', 'compliance audit', 'IT audit', 'compliance readiness', 'cyber compliance', 'HIPAA technical safeguards', 'compliance gap assessment', 'audit readiness', 'HIPAA risk analysis', 'compliance posture', or 'regulatory IT requirements'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--framework <HIPAA|SOC2|NIST|all>] [--action <audit|gap-analysis|remediate|document>]"
---

# IT Compliance Auditor

Audit IT systems and controls against specific regulatory frameworks at MBL portfolio companies — producing documented compliance status against HIPAA Security Rule (Allevio), NIST CSF, and SOC 2 readiness. IT compliance at portfolio scale is about demonstrating that the controls that are supposed to exist actually exist and are documented — both for regulatory requirements and for the business credibility that comes from an auditable security posture.

## When to Use
- Annual HIPAA Security Rule compliance audit at Allevio
- Preparing for a SOC 2 audit or customer security questionnaire
- Cyber insurance application — many insurers require compliance documentation
- Before an M&A transaction or due diligence process
- After a new system is deployed — does it meet compliance requirements?
- Preparing evidence packages for internal or external audits

## Compliance Framework

```
HIPAA Security Rule — Required for Allevio (45 CFR Part 164, Subpart C):
  Administrative Safeguards (§164.308):
    (a)(1) Security management process — required: risk analysis, risk management, sanction policy, info systems review
    (a)(2) Assigned security responsibility — required: designate a security officer
    (a)(3) Workforce security — addressable: authorization, supervision, clearance, termination
    (a)(4) Information access management — required: isolating healthcare clearinghouse functions
    (a)(5) Security awareness training — addressable: security reminders, protection from malicious software, login monitoring
    (a)(6) Security incident procedures — required: identify, respond, report, document incidents
    (a)(7) Contingency plan — required: data backup, disaster recovery, emergency mode, testing
    (a)(8) Evaluation — required: periodic technical and non-technical evaluation
    (b)(3) Business associate contracts — required: BAA with all BA vendors
    
  Physical Safeguards (§164.310):
    (a)(1) Facility access controls — addressable
    (b) Workstation use — required: appropriate use policies
    (c) Workstation security — required: physical security of workstations with PHI
    (d) Device and media controls — required: disposal, media reuse, accountability, data backup
    
  Technical Safeguards (§164.312):
    (a)(1) Access control — required: unique user IDs, emergency access procedure, auto logoff, encryption
    (b) Audit controls — required: audit logs for systems with PHI
    (c) Integrity — addressable: electronic mechanisms to corroborate PHI integrity
    (d) Person or entity authentication — required: verify person/entity is who they claim
    (e)(1) Transmission security — addressable: encryption for PHI in transit
    
  Documentation Requirements (§164.316):
    Written policies and procedures
    Documentation retained for 6 years
    
SOC 2 Type II (if applicable — typically for SaaS/service companies):
  Trust Service Criteria:
    CC1-CC9: Common Criteria (security, availability, processing integrity, confidentiality, privacy)
    Focus for MBL portfolio: Security (CC6-CC7) and Availability (CC7-CC9)
    Evidence required: Control documentation, system logs, access reviews, change management
    Not typically required for most MBL portfolio companies unless they handle customer data as a SaaS
    
NIST CSF (used as posture framework — see it-security-assessor for full assessment):
  Used to score maturity; compliance audit focuses on documentary evidence
  HIPAA-covered entities can map HIPAA requirements to NIST CSF functions
```

## Output Format

```markdown
# IT Compliance Audit Report — <Company Name>
**Framework:** [HIPAA Security Rule / SOC 2 / NIST CSF]
**Audit date:** [Date] | **Audit period:** [Calendar year or 12-month period]
**Auditor:** Dr. John Lewis
**Overall compliance status:** Compliant / Partially compliant — gaps require remediation / Material gaps — non-compliant
**Next audit due:** [Date + 12 months]

---

## HIPAA Security Rule Compliance Status (Allevio)

### Administrative Safeguards — §164.308

| Requirement | Status | Evidence | Gap | Action |
|-------------|--------|---------|-----|--------|
| §164.308(a)(1) Risk analysis conducted (current year) | Yes / No | [Risk analysis dated YYYY] | | Annual |
| §164.308(a)(1) Risk management plan | Yes / No | [Document reference] | | |
| §164.308(a)(2) Security officer designated | Yes / No | [Name: Dr. Lewis] | | |
| §164.308(a)(5) Security awareness training | Yes / No | [Training completion records dated] | | Annual |
| §164.308(a)(6) Security incident procedures documented | Yes / No | [IR plan document] | | |
| §164.308(a)(7) Data backup plan | Yes / No | [Backup configuration + test records] | | Test semi-annual |
| §164.308(a)(7) Disaster recovery plan | Yes / No | | | |
| §164.308(b)(3) BAA in place with all BAs | Yes / No | [BAA tracker] | [Missing: Vendor X] | |

### Technical Safeguards — §164.312

| Requirement | Status | Evidence | Gap | Action |
|-------------|--------|---------|-----|--------|
| §164.312(a)(1) Unique user IDs in AdvancedMD | Yes / No | [Access audit report] | | |
| §164.312(a)(1) Auto-logoff configured | Yes / No | [AdvancedMD settings screenshot] | | |
| §164.312(a)(1) PHI encrypted at rest | Yes / No | [Encryption configuration] | | |
| §164.312(b) Audit logs enabled (AdvancedMD) | Yes / No | | | |
| §164.312(d) Authentication — MFA enforced | Yes / No | [Conditional Access policy] | | |
| §164.312(e)(1) PHI encrypted in transit (TLS) | Yes / No | [SSL certificate; TLS config] | | |

### Documentation — §164.316

| Requirement | Status | Evidence |
|-------------|--------|---------|
| Written policies and procedures exist | Yes / No | [Policy document repository link] |
| Documentation retained 6 years | Yes / No | [Retention policy] |
| Policies reviewed in last 12 months | Yes / No | [Last review date] |

---

## Compliance Summary

| Area | Status | Material gaps | Action required |
|------|--------|-------------|----------------|
| Administrative safeguards | Compliant / Partial / Non-compliant | [List] | |
| Physical safeguards | | | |
| Technical safeguards | | | |
| Documentation | | | |
| **Overall** | | [N material gaps] | |

**Material gaps (must remediate):** [Specific items — these are the things an auditor would flag]

---

## Evidence Package Index (for audit submission)

| Document | Location | Date | Status |
|---------|---------|------|--------|
| HIPAA Risk Analysis [Year] | SharePoint/Ops/Allevio/Compliance/ | [Date] | Current |
| Security Awareness Training records | SharePoint/Ops/Allevio/IT/Training/ | [Date] | Current |
| Incident Response Plan | SharePoint/Ops/Allevio/IT/Security/ | [Date] | Current |
| BAA tracker + signed BAAs | SharePoint/Ops/Allevio/Legal/ | [Date] | Current / Missing [N] |
| Access review records | SharePoint/Ops/Allevio/IT/Access/ | [Date] | Current |
| Backup test records | SharePoint/Ops/Allevio/IT/Backup/ | [Date] | |

---

## Matt Mathison Brief (if material compliance gaps)

Allevio HIPAA IT compliance: [Overall status]. Material gaps: [List top 2-3]. Remediation: [Action + timeline]. Risk if unaddressed: [OCR audit finding / breach notification liability].
```

## Output Contract
- HIPAA annual risk analysis is documented and dated — §164.308(a)(1) requires a current risk analysis; "we did one a few years ago" is not compliant; the risk analysis is a formal document with a date, assessor name, scope, findings, and risk management decisions; it is retained for 6 years; Dr. Lewis produces this document annually for Allevio as part of the security assessment (see it-security-assessor); an undocumented risk analysis is treated as a missing risk analysis for compliance purposes
- BAA tracker is maintained and current — every vendor who handles PHI on behalf of Allevio is a Business Associate and requires a signed BAA before receiving PHI; the BAA tracker is the compliance record; vendors added during the year are tracked and BAAs are signed before service begins; the compliance audit confirms the tracker is current and all BAAs are signed; a missing BAA is a material HIPAA violation
- Compliance documentation is filed in a known, consistent location — evidence packages for audits are only useful if they can be found and retrieved when an auditor asks for them; all compliance documents are filed in SharePoint/Ops/<Company>/Compliance/ with a consistent naming convention; the compliance audit verifies that documents exist AND are filed where they can be retrieved
- HITL required: Dr. Lewis conducts compliance audits; audit results reviewed with CEO; material gaps reviewed with attorney before external disclosure; HIPAA breach determinations require attorney review; evidence package assembly by Dr. Lewis; compliance remediation by Dr. Lewis; Matt Mathison briefed on material compliance gaps

## System Dependencies
- **Reads from:** AdvancedMD admin panel, Microsoft Purview compliance center, Entra ID admin, SharePoint document repository, BAA tracker, training completion records, backup test records, security incident log
- **Writes to:** Compliance audit report (SharePoint/Ops/<Company>/Compliance/Audits/); HIPAA risk analysis (annual — Allevio); evidence package index; remediation tracking
- **HITL Required:** Dr. Lewis conducts audits; CEO reviews audit results; attorney for material gaps or breach determination (Allevio); Matt Mathison for material compliance gaps; annual cadence minimum

## Test Cases
1. **Golden path:** Allevio annual HIPAA compliance audit → Documentation check: Risk analysis 2026 ✅ (dated June 2026, signed by Dr. Lewis); Security officer: Dr. Lewis ✅; Training records: 18/18 employees ✅; IR plan: documented and reviewed ✅; BAA tracker: 7 BAs — 6 signed BAAs ✅ — 1 missing: cloud storage vendor added 6 months ago → obtain BAA this week (service suspended until BAA signed); Technical safeguards: MFA ✅; unique user IDs ✅; auto-logoff ✅; encryption at rest and in transit ✅; Audit logs: AdvancedMD audit log enabled ✅; Documentation retained: SharePoint with 7-year retention policy ✅; Overall: Partially compliant — 1 material gap (missing BAA); remediated within 1 week; evidence package compiled and filed
2. **Edge case:** An OCR (HHS Office for Civil Rights) audit letter arrives — Allevio has 10 days to respond with documentation → Pull the evidence package from SharePoint; the audit will ask for: written policies (have them), risk analysis (have 2026 version), training records (have them), BAA list (have it — and all are now signed after last week's fix), incident log (have it), security officer designation (Dr. Lewis documented); this response is feasible in 2 days because documentation was maintained; without maintained documentation, this audit would require 2 weeks of emergency assembly and likely result in a corrective action plan
3. **Adversarial:** "We are a small practice — HIPAA audits target hospitals, not us" → OCR enforces HIPAA against covered entities of all sizes; the Phase 2 HIPAA Audit Program specifically included small practices; OCR receives breach reports from entities of all sizes (any breach of 500+ patients in a state triggers media notification and OCR notification); the most common enforcement actions against small practices are for missing risk analysis documentation and missing BAAs — both of which take 1-2 hours to produce annually; the risk of a HIPAA civil monetary penalty ($100-$50,000 per violation, up to $1.9M per violation category per year) vastly exceeds the cost of annual documentation

## Audit Log
Annual compliance audit reports retained 7 years (HIPAA documentation requirement). HIPAA risk analysis retained 7 years. BAA tracker and signed BAAs retained 7 years. Evidence packages retained by audit year. Material gap remediation retained. Regulatory correspondence (OCR) retained permanently.

## Deprecation
Retire when portfolio companies have dedicated compliance officers or privacy officers who conduct annual HIPAA audits, maintain the evidence package, and manage the BAA tracker independently — with Dr. Lewis reviewing compliance summaries rather than conducting audits. HIPAA compliance requirements at Allevio are permanent.
