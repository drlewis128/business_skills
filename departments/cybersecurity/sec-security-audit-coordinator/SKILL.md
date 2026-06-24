---
name: sec-security-audit-coordinator
description: "Coordinate internal security audits for MBL portfolio companies. Use when the user says 'security audit', 'internal audit', 'security review', 'self-assessment', 'security self-assessment', 'audit security controls', 'audit the security program', 'review security controls', 'internal security review', 'security program audit', 'annual security audit', 'quarterly security review', 'security posture review', 'control effectiveness review', 'security maturity review', 'validate controls', 'test controls', 'verify controls', 'audit readiness', 'prepare for audit', 'internal audit team', 'security audit findings', 'audit report', 'management review', 'security management review', 'leadership security review', 'HIPAA audit', 'HIPAA self-assessment', 'HIPAA self-audit', 'CISO review', 'security program evaluation', 'HIPAA evaluation', 'security evaluation', 'security controls testing', or 'security effectiveness assessment'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--type <annual|quarterly|hipaa|controls-test>] [--action <plan|execute|report|track>]"
---

# Sec Security Audit Coordinator

Coordinate internal security audits for MBL portfolio companies — planning, executing, and reporting on structured reviews of security controls to confirm they are operating as intended, identify gaps before external parties do, and drive continuous improvement. Internal audits are the security program's self-review mechanism; they are less adversarial than a pen test, more structured than a status report, and essential for maintaining audit readiness for OCR, client audits, or M&A due diligence.

## When to Use
- Planning the annual internal security audit for an entity
- Executing a quarterly controls review against the security roadmap
- Conducting the HIPAA evaluation required by §164.308(a)(8)
- Preparing an audit report for entity CEO or Matt Mathison

## Security Audit Framework

```
AUDIT TYPES AND CADENCE (MBL portfolio):

  Annual Security Program Audit (Q4):
    Scope: all security controls; security program maturity; compliance status
    Reviewer: Dr. Lewis (with IT support for technical controls verification)
    Output: annual security audit report; maturity rating; next-year roadmap inputs
    
  Quarterly Controls Review (Q1-Q3):
    Scope: Critical and High controls; roadmap milestone status; incident learnings
    Reviewer: Dr. Lewis (brief review; 1-2 hours per entity per quarter)
    Output: quarterly security update for entity CEO (1-page)
    
  HIPAA Evaluation (Allevio — required by §164.308(a)(8)):
    Scope: technical and nontechnical security safeguards; required and addressable specifications
    Required: periodic; MBL standard: annual
    Reviewer: Dr. Lewis (Security Officer)
    Output: HIPAA evaluation document (Dr. Lewis signature; entity CEO review; 6-year retention)
    
AUDIT METHODOLOGY (control-by-control testing):

  For each control being audited, gather evidence of:
    1. Policy / Procedure: does a documented policy exist?
    2. Implementation: is the control actually implemented (technical verification)?
    3. Effectiveness: is the control producing the intended security outcome?
    4. Consistency: is the control applied consistently (not just for the audit)?
    
  Testing methods:
    Document review: examine policy documents; procedures; logs; reports
    Technical verification: check system configuration (M365 Security Center; Intune; Defender)
    Interview: brief discussion with IT or entity CEO to understand how controls work in practice
    Sampling: review a sample of evidence (e.g., 5 random access review records from the past year)
    Observation: confirm controls operate as described (e.g., screen lock activates after 5 min)
    
AUDIT SCOPE DOMAINS:
  1. Governance: security policy; roles; board-level reporting
  2. Risk Management: risk register; risk assessment; treatment actions
  3. Identity & Access: IAM; MFA; PAM; access reviews; deprovisioning
  4. Endpoint Security: encryption; AV/EDR; patch; hardening; MDM
  5. Cloud / SaaS Security: M365 Secure Score; cloud configs; shadow IT
  6. Data Protection: classification; encryption; DLP; backup
  7. Vendor / Third-Party: BAA register (Allevio); vendor reviews; SOC 2 reviews
  8. Incident Response: IR plan; tabletop test; actual incidents (learnings applied?)
  9. Awareness & Training: completion rates; phishing sim results; training quality
  10. Compliance Evidence: documentation current; retained per schedule; retrievable

AUDIT RATING SCALE:
  Effective: control is implemented; working as intended; evidence current
  Partially Effective: control exists but has gaps; inconsistently applied; evidence incomplete
  Not Effective: control missing or not working; immediate remediation required
  Not Applicable: control not relevant for this entity or context
  
AUDIT REPORT STRUCTURE:
  Executive Summary (1 page):
    Overall security posture rating; top 3 findings; recommendations; maturity vs. last year
  Detailed Findings:
    Control by control; rating; evidence reviewed; gap (if any); recommendation
  Remediation Actions:
    Specific action; owner; due date; priority (mapped to security roadmap)
  HIPAA Compliance Section (Allevio only):
    Required specification status; addressable specification status; evaluation sign-off
```

## Output Format

```markdown
# Internal Security Audit Report — [Entity] | [Audit Type] | [Date]
**Auditor:** Dr. John Lewis | **Entity CEO review:** [Date] | **Overall posture:** [Effective/Partially Effective/Not Effective]

---

## Executive Summary
**Top 3 findings:**
1. [Finding — domain — rating]
2. [Finding — domain — rating]
3. [Finding — domain — rating]

**Maturity vs. prior audit:** [Improved / Unchanged / Declined] — [Level N] → [Level N]

---

## Control-by-Control Summary
| Domain | Control | Rating | Finding | Action |
|--------|---------|--------|---------|--------|
| Identity & Access | MFA enforcement | ✅ Effective | 100% coverage | None |
| Identity & Access | Access review | ⚠️ Partially Effective | Q2 review not documented | File reconstructed evidence |
| Endpoint | AV/EDR | ✅ Effective | Deployed; updated | None |

---

## HIPAA Evaluation (Allevio only)
**Required specifications: [N]/[N] Effective**
**Addressable specifications: [N]/[N] Implemented (or documented rationale)**
**Dr. Lewis signature:** _______________ | **Date:** ________
```

## Output Contract
- The internal audit is performed by Dr. Lewis acting as security auditor, not by the IT team auditing itself — IT should not audit their own work without independent oversight; the IT team implements and operates controls; Dr. Lewis audits whether those controls are working; this separation provides the independence that makes the audit credible; when Dr. Lewis audits Allevio's AdvancedMD access controls, Dr. Lewis is reviewing the records produced by IT's access management process, not asking IT "did you do the access reviews?" and accepting a verbal yes; the verification is: pull the actual access review records from SharePoint; confirm they are dated; confirm entity CEO signed them; confirm they cover all required systems; the answer is in the evidence, not in the conversation
- The HIPAA evaluation required by §164.308(a)(8) is a distinct compliance deliverable from the general annual security audit — HIPAA requires Allevio to perform "periodic technical and nontechnical evaluations" to verify that security safeguards are adequate; the annual security audit serves this purpose when it covers HIPAA-specific safeguards; Dr. Lewis documents the HIPAA evaluation result separately with a signature and date; this document is retained 6 years; it is distinct from the risk analysis (§164.308(a)(1)) — both are required; the risk analysis assesses threats and vulnerabilities; the evaluation assesses whether the controls that mitigate those risks are actually working; the evaluation must include both technical safeguards (access control; audit controls; encryption) and nontechnical safeguards (training; policies; workforce management); Dr. Lewis produces the HIPAA evaluation as a separate signed document, even if it draws on the annual audit findings
- HITL required: annual audit plan → Dr. Lewis builds; entity CEO informed of audit scope and timeline; HIPAA evaluation → Dr. Lewis conducts + signs; entity CEO reviews; annual audit report → entity CEO reviews + signs (or co-signs); Critical findings from audit → entity CEO notified within 48 hours; remediation plan → entity CEO approves; quarterly controls review → entity CEO receives 1-page update; not-effective control → entity CEO notified; remediation plan with owner and date; audit report storage → Dr. Lewis controls; Matt Mathison receives annual portfolio-level security briefing (includes audit findings trend); external audit or OCR inquiry → compliance evidence manager (sec-compliance-evidence-manager) packages evidence

## System Dependencies
- **Reads from:** All security program documentation (sec-security-program-builder); risk register (sec-security-risk-register); access review records (sec-access-review-coordinator); patch and vulnerability reports (sec-patch-compliance-tracker; sec-vulnerability-scanner); incident records (sec-incident-responder); training completion (sec-security-awareness-trainer); backup test records (sec-backup-security-validator); vendor/BAA register (sec-third-party-security-manager); M365 Security Center (technical control verification); Intune (endpoint control verification); AdvancedMD audit logs (Allevio — HIPAA evaluation); compliance evidence repository (sec-compliance-evidence-manager)
- **Writes to:** Annual security audit report (SharePoint → [Entity] → Security → Audits → [Year]-Annual-Audit.pdf; entity CEO sign-off); quarterly controls review update (SharePoint → [Entity] → Security → Audits → [Quarter]-Review.pdf; entity CEO); HIPAA evaluation document (Allevio — separate document; Dr. Lewis signature; entity CEO review; SharePoint → Allevio → Security → HIPAA → Evaluations → [Year]; retained 6 years); remediation action plan (Monday.com — findings; owners; due dates); Matt Mathison annual portfolio security briefing (includes audit results)
- **HITL Required:** Annual audit plan → entity CEO informed; HIPAA evaluation → Dr. Lewis signs + entity CEO reviews; annual audit report → entity CEO reviews + signs; critical finding → entity CEO 48hr; remediation plan → entity CEO approves; quarterly update → entity CEO receives; not-effective control → entity CEO notified; report storage → Dr. Lewis controls; Matt Mathison annual briefing → Dr. Lewis prepares; external audit or OCR inquiry → compliance evidence manager packages

## Test Cases
1. **Golden path:** Q4 annual security audit for HIVE. Dr. Lewis reviews 10 control domains. Findings: Governance (Effective — security policy current; entity CEO approved; Dr. Lewis Security Officer documented); Risk (Effective — risk register current; 2 risks mitigated since last year); IAM (Partially Effective — quarterly access reviews done but Q1 documentation reconstructed; need original documentation going forward); Endpoint (Effective — BitLocker 100%; Defender for Business active; patches current); Cloud (Effective — M365 Secure Score 67 → 74 improvement; DMARC p=reject achieved); Data Protection (Partially Effective — Covercy export quarterly not consistent — Q3 export missed); Vendor (Effective — Covercy SLA verified annually; Dr. Lewis review); IR (Effective — IR plan current; tabletop Q3 completed); Training (Effective — 100% completion; phishing sim click rate improved 24% → 9%); Compliance Evidence (Partially Effective — evidence repository 85% complete; 2 missing records reconstructed). Overall: Partially Effective (2 domains partially effective; correcting). Entity CEO briefed. Remediation plan in Monday.com. Next year target: 10/10 Effective.
2. **Edge case:** During the HIPAA evaluation for Allevio, Dr. Lewis discovers that the "automatic logoff" required safeguard (§164.312(a)(2)(iii)) is implemented on most AdvancedMD workstations but not on 2 workstations in the clinic administrator's area. Dr. Lewis: "This is a required specification gap. The HIPAA evaluation must document: (1) the gap — automatic logoff not configured on 2 workstations; (2) the risk — unauthorized access to ePHI if workstation left unattended; (3) the remediation — IT configures automatic logoff on both workstations (5-minute timeout) within 7 days; (4) Dr. Lewis verification — confirm configuration applied; (5) update HIPAA evaluation document to reflect gap identified and remediated. Entity CEO notified. HIPAA evaluation document notes: 'Gap identified 2026-11-15; remediated 2026-11-22; Dr. Lewis verified.' Document signed and retained."
3. **Adversarial:** Entity CEO suggests skipping the annual security audit this year: "We know our controls are working — we don't need to spend the time": Dr. Lewis: "The annual audit is what gives us the evidence that our controls are working — not just the assumption that they are. Three specific reasons we need it this year: (1) HIPAA requires Allevio to conduct a periodic evaluation of its security safeguards (§164.308(a)(8)) — this is a legal obligation, not optional. (2) Two controls changed significantly this year (we deployed Defender for Business; we changed our access review process) — we need to verify these are working as designed. (3) Our cyber insurance renewal questionnaire next quarter will ask about our last internal security assessment date. The audit takes approximately 8 hours of Dr. Lewis time and 2 hours of IT collaboration. The Q4 briefing document takes 1 additional hour. I'll have it complete by December 15 with minimal demand on your time — you'll receive the briefing document and sign-off at the entity CEO briefing. The value of the audit is the evidence it produces for compliance, insurance, and M&A readiness."

## Audit Log
Annual security audit records (entity; date; findings; overall rating; entity CEO sign-off; Dr. Lewis; SharePoint). HIPAA evaluation records (Allevio — annual; date; Dr. Lewis signature; entity CEO review; required specifications status; addressable status; SharePoint → Allevio → Security → HIPAA → Evaluations; retained 6 years). Quarterly controls review records (quarter; entity; findings; entity CEO briefing; SharePoint). Critical finding records (finding; entity CEO 48hr notification; remediation plan; owner; resolution date). Remediation tracking records (Monday.com tasks; findings source; completion dates). Matt Mathison annual portfolio security audit briefing (summary; findings trends; Dr. Lewis preparation).

## Deprecation
Audit methodology reviewed annually. Control domain list updated when new security controls are added to the program. HIPAA evaluation requirements reviewed when HHS updates §164.308(a)(8) guidance. Audit rating scale reviewed when security program maturity advances. External audit / OCR response process reviewed when OCR updates audit procedures. Portfolio security briefing format reviewed annually with Matt Mathison.
