---
name: rc-hipaa-security-program
description: "Build and maintain the HIPAA Security Rule compliance program. Use when the user says 'HIPAA security program', 'HIPAA Security Rule', 'HIPAA technical safeguards', 'HIPAA administrative safeguards', 'HIPAA physical safeguards', 'HIPAA security compliance', 'HIPAA risk analysis', 'BAA tracker', 'HIPAA security officer', 'HIPAA audit', '164.308', '164.310', '164.312', 'HIPAA security assessment', or 'HIPAA security program review'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity Allevio] [--action <build|audit|update|risk-analysis|report>] [--safeguard <all|administrative|physical|technical>]"
---

# HIPAA Security Program

Build and maintain the HIPAA Security Rule compliance program at Allevio — documenting and implementing all required and addressable safeguards across administrative, physical, and technical domains. The Security Rule (45 CFR §164.300-318) requires Covered Entities to protect ePHI (electronic Protected Health Information) through a comprehensive, documented security program with a current risk analysis as its foundation. OCR audits and breach investigations consistently find that missing or outdated risk analyses and incomplete safeguard documentation are the most common compliance failures.

## When to Use
- Allevio-specific skill — applies to Allevio and any clinical operations handling ePHI
- Building or updating the HIPAA Security Program
- Conducting the annual HIPAA risk analysis (§164.308(a)(1) — required, not optional)
- Preparing for an HHS OCR audit or investigating a potential breach
- Onboarding a new vendor who will handle ePHI — BAA execution and security assessment
- After a security incident — HIPAA breach assessment

## HIPAA Security Rule Framework

```
Required (R) vs. Addressable (A) implementation specifications:
  R = Must implement — no flexibility
  A = Must implement, OR document why not and implement equivalent alternative
  
ADMINISTRATIVE SAFEGUARDS (§164.308):
  
  (a)(1) Security management process:
    R — Risk analysis: Annual; documented; identifies risks to ePHI confidentiality/integrity/availability
    R — Risk management: Mitigation plan for risks identified in risk analysis
    R — Sanction policy: Workforce members who violate security policies face sanctions
    R — Information system activity review: Audit logs reviewed regularly
    
  (a)(2) Assigned security responsibility:
    R — Designate a Security Officer: Dr. John Lewis (HIPAA Security Officer at Allevio)
    
  (a)(3) Workforce security:
    A — Authorization and supervision: Procedures for access authorization
    A — Workforce clearance: Verify appropriateness of access (OIG LEIE check is part of this)
    A — Termination procedures: Revoke access upon termination (it-offboarding-deprovision)
    
  (a)(4) Information access management:
    A — Access authorization: Processes for granting access
    A — Access establishment and modification: Processes for changing access
    
  (a)(5) Security awareness and training:
    R — Training program: Security awareness training for ALL workforce members
    A — Security reminders: Periodic security updates/reminders
    A — Malicious software protection: Training on malware awareness
    A — Log-in monitoring: Training on monitoring for suspicious logins
    A — Password management: Training on creating and protecting passwords
    
  (a)(6) Security incident procedures:
    R — Response and reporting: Documented procedures for security incidents
    
  (a)(7) Contingency plan:
    R — Data backup plan: Procedures to create/maintain copies of ePHI
    R — Disaster recovery plan: Procedures to restore data (it-disaster-recovery-planner)
    R — Emergency mode operation: Procedures to continue operations during emergency
    A — Testing and revision: Test contingency plans periodically
    A — Application and data criticality analysis: Assess criticality of data/applications
    
  (a)(8) Evaluation:
    R — Periodic technical and non-technical evaluation: Re-evaluate security program when environment changes
    
  (b)(1) Business Associate Contracts:
    R — BAA with all Business Associates: Contract must include specific HIPAA-required language
    
PHYSICAL SAFEGUARDS (§164.310):
  
  (a)(1) Facility access controls:
    A — Contingency operations: Procedures for facility access during emergencies
    A — Facility security plan: Safeguards for physical access to facilities and equipment
    A — Access control and validation: Validate persons accessing facilities based on role
    A — Maintenance records: Document repairs and modifications to physical security
    
  (b) Workstation use:
    R — Workstation use policy: Specify proper use of workstations accessing ePHI
    
  (c) Workstation security:
    R — Physical safeguards for workstations: Position monitors; lock screens; clean desk
    
  (d) Device and media controls:
    R — Disposal: Sanitize/destroy media containing ePHI before disposal
    R — Media reuse: Remove ePHI before media is reused
    A — Accountability: Track movement of hardware and electronic media
    A — Data backup and storage: Create copy before moving equipment
    
TECHNICAL SAFEGUARDS (§164.312):
  
  (a)(1) Access control:
    R — Unique user identification: Every user has unique login (no shared accounts)
    R — Emergency access: Procedures for emergency access to ePHI
    A — Automatic logoff: Auto-lock after defined period of inactivity
    A — Encryption and decryption: Encrypt ePHI stored on devices
    
  (b) Audit controls:
    R — Hardware/software/procedural mechanisms to record and examine ePHI access
    
  (c)(1) Integrity:
    A — Mechanism to authenticate ePHI: Verify ePHI has not been altered or destroyed
    
  (d) Person or entity authentication:
    R — Verify identity before access: MFA is the standard implementation
    
  (e)(1) Transmission security:
    A — Integrity controls: Ensure ePHI is not improperly modified during transmission
    A — Encryption: Encrypt ePHI in transit (TLS 1.2+)

BAA tracker (Business Associate Agreement):
  BAA required for: Any vendor who creates, receives, maintains, or transmits ePHI for Allevio
  Examples: AdvancedMD (vendor), IT managed services (MSP with system access), billing companies,
    clearinghouses, cloud storage (Microsoft — covered under M365 BAA), AI tools with PHI
  NOT required for: Treatment providers (they are covered entities, not BAs); conduits (mail carriers)
  BAA tracker: Every vendor with potential PHI access is listed; BAA status (executed/pending/not required); date; renewal date
```

## Output Format

```markdown
# HIPAA Security Program — Allevio
**Security Officer:** Dr. John Lewis | **Date:** [Date]
**Annual risk analysis due:** [Date] | **Last risk analysis:** [Date]
**Program version:** [X] | **Next full review:** [Date + 12 months]

---

## Annual HIPAA Risk Analysis

**Date conducted:** [Date] | **Conducted by:** Dr. John Lewis
**Scope:** All ePHI at Allevio — electronic patient records (AdvancedMD), email (M365), device storage, shared drives

### ePHI Inventory
| Location | System | PHI type | Volume | Controls | Risk |
|---------|--------|---------|--------|---------|------|
| EHR | AdvancedMD | Full clinical record | All patients | Role-based access; vendor SOC 2 | Managed |
| Email | M365 | Incidental PHI (scheduling, results) | Variable | Purview DLP; encryption | Managed |
| Devices | Intune-managed Windows/Mac | Potential local cache | Low | BitLocker; MDM; remote wipe | Managed |
| Shared drives | SharePoint | PHI documents | Controlled | Permission-based; DLP | Managed |
| Paper records | Clinic filing | Historical records | Pre-2020 | Locked cabinets; shredder policy | Managed |

### Risk Analysis Results
| Risk | Likelihood | Impact | Score | Controls | Residual | Mitigation |
|------|-----------|--------|-------|---------|---------|-----------|
| [Risk] | [1-5] | [1-5] | [Score] | [Controls] | [Residual] | [Plan if ≥ Medium] |

**Risk analysis conclusion:** [Summary — overall risk posture; top risks; mitigation priorities]

---

## Administrative Safeguards Compliance

| Specification | Required/Addressable | Status | Evidence | Gap/Action |
|-------------|---------------------|--------|---------|-----------|
| Risk analysis (annual) | R | ✅ / ⚠️ Overdue | [Date last done] | [Action if needed] |
| Risk management plan | R | ✅ | [Document location] | |
| Sanction policy | R | ✅ | [Policy reference] | |
| Activity review (audit logs) | R | ✅ | [Log review cadence] | |
| Security Officer designated | R | ✅ | Dr. John Lewis — designated [Date] | |
| Workforce training | R | [X]% complete | [Training platform] | [N overdue — action] |
| Security incident procedures | R | ✅ | it-security-incident-responder | |
| Contingency plan | R | ✅ | it-disaster-recovery-planner | |
| Business Associate Contracts | R | ✅ / ⚠️ [N missing] | BAA tracker | [Action] |

---

## Physical Safeguards Compliance

| Specification | R/A | Status | Evidence | Gap/Action |
|-------------|-----|--------|---------|-----------|
| Workstation use policy | R | ✅ | Clean desk; screen lock 5 min | |
| Workstation security | R | ✅ | BitLocker; screen position | |
| Device disposal procedure | R | ✅ | NIST 800-88 wipe; certificate | |
| Facility access controls | A | ✅ / ⚠️ | [Control description] | [Action] |
| Media accountability | A | ✅ | Asset tracker (it-asset-inventory) | |

---

## Technical Safeguards Compliance

| Specification | R/A | Status | Evidence | Gap/Action |
|-------------|-----|--------|---------|-----------|
| Unique user IDs | R | ✅ | Entra ID — no shared accounts policy | |
| Emergency access | R | ✅ | Break-glass account documented | |
| Automatic logoff | A | ✅ | Screen lock 5 min (Intune policy) | |
| Encryption at rest | A | ✅ | BitLocker (endpoints); vendor encryption (AdvancedMD) | |
| Audit controls | R | ✅ | Entra ID sign-in logs; AdvancedMD audit trail | |
| Person authentication (MFA) | R | ✅ | Entra ID MFA enforced for all accounts | |
| Transmission encryption | A | ✅ | TLS 1.2+ for all ePHI transmission | |

---

## BAA Tracker

| Vendor | Service | PHI access? | BAA status | Executed date | Renewal/Review |
|--------|---------|------------|-----------|-------------|---------------|
| AdvancedMD | EHR platform | Yes — full ePHI | ✅ Executed | [Date] | Annual review |
| Microsoft (M365) | Email/SharePoint | Yes — incidental | ✅ Covered under M365 DPA | Microsoft standard | |
| [MSP name] | IT support — RMM access | Yes — potential access | ✅ Executed | [Date] | [Renewal date] |
| Krista.ai | AI orchestration | Conditional — if PHI flows | [Status] | | Review before PHI use |
| [Vendor] | [Service] | [PHI assessment] | [Status] | | |

**BAA tracker completeness:** [X]% | **Vendors without BAA who should have one:** [List — immediate action]

---

## Matt Mathison Brief (if HIPAA security gap or breach)

Allevio HIPAA Security: [Status — compliant / gap identified]. Risk analysis: [Current / Overdue — date]. Key gap: [Description]. BAA tracker: [X]% complete / [N] missing. Action: [What Dr. Lewis is doing]. Timeline: [By when]. Legal involved: [Yes/No].
```

## Output Contract
- The annual risk analysis is dated, documented, and current — "we did one a few years ago" is not compliant; HIPAA requires an ongoing, documented risk analysis that is updated when the environment changes (§164.308(a)(1)); the annual refresh is the minimum cadence; the risk analysis must: (1) identify where ePHI is created, received, maintained, or transmitted; (2) identify threats and vulnerabilities; (3) assess current security measures; (4) determine the likelihood and impact of potential threats; (5) document the results; OCR expects to see the current year's analysis with a date, not a 3-year-old document
- Addressable safeguards are implemented or have a documented alternative — addressable does not mean optional; for each addressable specification, one of three things is documented: (1) it is implemented; (2) a documented reason why it is not reasonable and appropriate, plus an alternative equivalent measure; (3) why the specification is not applicable; "we didn't get to it" is not a documented decision — it is an undocumented compliance gap
- BAA tracker is 100% and pre-contract — every vendor who handles ePHI has a signed BAA before ePHI flows to them; the BAA tracker is the evidence; a vendor missing a BAA is not a medium priority action item — it is an immediate remediation; Dr. Lewis signs no vendor contract for ePHI services without first executing the BAA; if a vendor refuses a BAA, they cannot access Allevio's ePHI
- HITL required: Dr. Lewis is designated HIPAA Security Officer; annual risk analysis conducted and signed by Dr. Lewis; BAA execution reviewed by Dr. Lewis before ePHI access; security incidents assessed by Dr. Lewis (HIPAA breach assessment); CEO notified of compliance gaps; Matt Mathison notified of confirmed breaches or material compliance failures; attorney involvement for OCR complaints and confirmed breaches

## System Dependencies
- **Reads from:** AdvancedMD audit logs, Entra ID sign-in logs, Intune compliance reports, Purview DLP logs, Microsoft Secure Score, training platform (completion records), it-security-assessor output, it-disaster-recovery-planner (contingency plan)
- **Writes to:** HIPAA Security Program (SharePoint/RC/Allevio/HIPAA/Security/); annual risk analysis (required document); BAA tracker; safeguards compliance checklist; training records; incident log
- **HITL Required:** Dr. Lewis is Security Officer; risk analysis signed by Dr. Lewis; BAA execution before ePHI access; security incidents and breach assessment by Dr. Lewis; CEO for compliance gaps; Matt Mathison for breaches; attorney for OCR

## Test Cases
1. **Golden path:** Annual HIPAA risk analysis for Allevio → Scope: AdvancedMD (all patient ePHI), M365 email (incidental PHI), SharePoint (PHI documents), Intune-managed devices (local cache); Risk analysis: 15 risks assessed; top risk: ransomware (inherent L3×I5=15 High; residual with Defender+backup+incident response plan = 10 Medium — documented); BAA tracker: 100% (8 vendors, all executed); Technical safeguards: all R implemented; addressable: automatic logoff (implemented — 5 min Intune policy), transmission encryption (implemented — TLS 1.3); Physical: workstation use policy posted at all clinics; Documentation: risk analysis filed, signed, dated; annual review complete; CEO informed; next review scheduled
2. **Edge case:** Allevio is evaluating a new AI medical documentation assistant — should there be a BAA? → Yes, unambiguously; the AI tool processes patient voice recordings and clinical notes to generate documentation — it creates, receives, and processes ePHI on behalf of Allevio; it is a Business Associate; BAA required before the pilot begins, not before go-live; if the vendor claims they are not a Business Associate (common claim from AI vendors who are unfamiliar with HIPAA), that claim is incorrect — evaluate the data flow, not the vendor's self-assessment; if the vendor cannot or will not execute a BAA, Allevio cannot use the tool for PHI-involved workflows
3. **Adversarial:** "We use Microsoft 365 for everything — isn't that HIPAA compliant?" → Microsoft 365 Business Premium, properly configured, can be HIPAA compliant; the Microsoft Customer Agreement includes a HIPAA Business Associate Agreement (DPA); however, compliance requires that Allevio configure M365 correctly: Conditional Access enforced; MFA enabled for all accounts; Purview DLP configured to detect PHI; SharePoint sharing restricted; external email encryption; legacy authentication blocked; "we use M365" does not equal "we are HIPAA compliant"; the HIPAA compliance is in the configuration and the documented policies — not in the subscription

## Audit Log
Annual risk analyses retained permanently (6-year HIPAA minimum). BAA tracker retained with execution dates and version history. Safeguards compliance checklists retained annually. Security Officer designation retained. Workforce training records retained 6 years. Security incident records retained permanently. OCR correspondence retained permanently. Breach assessment records retained permanently.

## Deprecation
Retire when Allevio has a dedicated HIPAA Security Officer and compliance team — with Dr. Lewis serving as technical security architect and security officer emeritus. Annual risk analysis and BAA execution as hard gates are permanent regardless of who conducts them.
