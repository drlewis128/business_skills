---
name: legal-hipaa-compliance-manager
description: "Manage HIPAA compliance obligations for Allevio MSO healthcare operations. Use when the user says 'HIPAA', 'HIPAA compliance', 'patient privacy', 'PHI', 'protected health information', 'BAA', 'business associate agreement', 'HIPAA audit', 'HIPAA breach', 'patient data', 'health data', 'healthcare privacy', 'HIPAA training', 'HIPAA risk assessment', 'patient records', 'HIPAA policy', 'HIPAA violation', 'covered entity', 'business associate', 'HIPAA security rule', 'HIPAA privacy rule', or 'Allevio compliance'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity allevio] [--action <assess|baa|breach|training|audit>] [--area <privacy|security|breach-notification>]"
---

# HIPAA Compliance Manager

Manage HIPAA compliance obligations for Allevio MSO healthcare operations — covering the Privacy Rule, Security Rule, and Breach Notification Rule. HIPAA is not optional for Allevio: as a healthcare management services organization (MSO) supporting medical practices that serve employer groups, Allevio handles Protected Health Information (PHI) and is subject to HIPAA's full requirements. A HIPAA violation — especially a breach — is an existential risk: civil penalties up to $1.9M per violation category per year, OCR investigations, state attorney general actions, and reputational damage that destroys employer group relationships. Dr. Lewis maintains the HIPAA compliance program for Allevio and coordinates with outside HIPAA counsel when needed.

## When to Use
- Before sharing any Allevio patient or member health data with any vendor or partner
- When a vendor or contractor needs access to PHI or systems containing PHI
- When a potential HIPAA breach is discovered or suspected
- For Allevio's annual HIPAA risk assessment (required by HIPAA Security Rule)
- When an employee receives HIPAA training
- When a new employer group contract is executed (HIPAA obligations with employer clients)

## HIPAA Compliance Framework

```
ALLEVIO HIPAA STATUS:
  Covered Entity: YES — Allevio supports medical practices that receive, transmit, or maintain PHI
  HIPAA Privacy Rule: Applies to how PHI can be used and disclosed
  HIPAA Security Rule: Applies to electronic PHI (ePHI) security controls
  HIPAA Breach Notification Rule: Applies to how and when breaches must be reported

PROTECTED HEALTH INFORMATION (PHI):
  Definition: Individually identifiable health information in any format (electronic, paper, verbal)
  18 PHI identifiers: Name; address; dates (except year); phone; fax; email; SSN; medical record number;
    health plan number; account number; certificate/license numbers; device identifiers; web URLs;
    IP addresses; biometrics; full-face photos; any unique identifier
  De-identified data: Safe Harbor method (remove all 18 identifiers) OR Expert Determination method
    De-identified data is NOT PHI and can be shared freely (including for benchmarking)
    
BUSINESS ASSOCIATE AGREEMENTS (BAA):
  Required when: Any vendor, contractor, or partner accesses PHI or systems containing PHI
  BAA required from (examples for Allevio):
    AdvancedMD (EHR/PM system)
    Marshall Medical Billing (billing and RCM — receives PHI for claims processing)
    Any cloud storage provider where PHI is stored (Microsoft 365 Business — confirm BAA with Microsoft)
    Any data analytics vendor who processes member health data
    Any IT vendor with physical or remote access to systems containing ePHI
  BAA NOT required from: Vendors who only handle de-identified data; incidental service providers
    (e.g., a plumber who services the clinic does not need a BAA)
  BAA must include:
    Permitted uses and disclosures of PHI
    Prohibition on using PHI for vendor's own purposes
    Safeguard requirements (at least equivalent to covered entity)
    Reporting obligation for breaches and unauthorized disclosures
    Return or destroy PHI on termination
    Subcontractor chain requirements (vendor must get BAA from their own subcontractors)
    
HIPAA PRIVACY RULE — KEY REQUIREMENTS:
  Minimum Necessary Standard: Use or disclose only the minimum PHI necessary for the purpose
  Patient Rights: Access to records; amendment; accounting of disclosures; restrictions
  Notice of Privacy Practices (NPP): Posted prominently; given to patients at first contact
  Treatment, Payment, Operations (TPO): PHI can be shared without consent for TPO purposes
  Authorization Required: For marketing; sale of PHI; most research uses
  
HIPAA SECURITY RULE — ADMINISTRATIVE SAFEGUARDS:
  □ Annual security risk assessment (required — must be documented)
  □ Security policies and procedures (written; annual review)
  □ Employee HIPAA training (all staff with PHI access; documented; annual or on new hire)
  □ Sanction policy for violations (documented; enforced consistently)
  □ Access management (workforce members have access only to PHI they need for their role)
  □ Contingency plan (data backup; disaster recovery; emergency procedures)
  
HIPAA SECURITY RULE — TECHNICAL SAFEGUARDS:
  □ Access controls (unique user IDs; automatic logoff; encryption/decryption)
  □ Audit controls (logs of ePHI access)
  □ Integrity controls (prevent improper alteration or destruction of ePHI)
  □ Transmission security (encryption of ePHI in transit — TLS/HTTPS minimum)
  □ Encryption at rest for devices containing ePHI (laptops, workstations, portable devices)
  
BREACH NOTIFICATION RULE:
  Definition of breach: Unauthorized acquisition, access, use, or disclosure of PHI that compromises its security
  4-factor risk assessment (to determine if breach occurred):
    1. Nature and extent of PHI involved
    2. Identity of unauthorized person who used/received PHI
    3. Whether PHI was actually acquired or viewed
    4. Extent to which risk has been mitigated
  Notification timeline:
    Individuals affected: No later than 60 days after breach discovery
    HHS/OCR: If <500 individuals, report annually; if ≥500, report within 60 days
    Media (if ≥500 individuals in a state): Local media notification within 60 days
  Breach response protocol (immediate):
    1. Contain the breach (stop ongoing disclosure)
    2. Notify Dr. Lewis immediately (same day)
    3. Dr. Lewis notifies Matt Mathison (same day)
    4. Engage HIPAA counsel within 24 hours
    5. Document everything
    6. Complete 4-factor risk assessment
    7. If breach confirmed: initiate notification per timeline
    
EMPLOYER GROUP OBLIGATIONS:
  Allevio's employer group clients are often "Plan Sponsors" under HIPAA
  PHI sharing with employer group HR departments: RESTRICTED — employer cannot access employee PHI
  Plan administration vs. employment decisions: Firewall required
  BAA with employer group: May be required depending on the employer's plan structure
```

## Output Format

```markdown
# HIPAA Compliance Report — Allevio
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Period covered:** [Period]

---

## BAA Status

| Vendor | PHI Access | BAA Status | Expiration / Review Due |
|--------|-----------|-----------|----------------------|
| AdvancedMD | ePHI (EHR) | ✅ Executed [Date] | Annual review [Date] |
| Marshall Medical Billing | PHI (claims) | ✅ Executed [Date] | Annual review [Date] |
| Microsoft 365 | ePHI (email/storage) | ✅ Executed [Date] | Annual review [Date] |
| [New vendor] | ePHI | ❌ MISSING — action required | Immediate |

---

## Annual Risk Assessment Status

**Last completed:** [Date] | **Next due:** [Date]
**Key risks identified:** [Top 3 risks]
**Remediation status:** [X of Y items closed]

---

## Training Status

| Employee | Role | Last Training | Due |
|---------|------|--------------|-----|
| [Name] | [Role] | [Date] | [Due date] |

---

## Incident Log (if applicable)

| Date | Event | Status | Action |
|------|-------|--------|--------|
| [Date] | [Description] | [Under review / Breach confirmed / Not a breach] | [Action taken] |
```

## Output Contract
- BAA must precede PHI access — no vendor gets access to PHI-containing systems or data before a BAA is executed; this is not a best practice recommendation; it is a legal requirement; Dr. Lewis maintains a BAA tracker that matches the contract tracker; any new vendor that will touch Allevio PHI is flagged at the contract review stage and the BAA is executed simultaneously with the service contract or in advance of the service start date; an executed service contract without a BAA is a HIPAA violation waiting to happen
- Breach notification is time-sensitive — the 60-day breach notification clock starts from discovery; a company that learns of a breach and delays investigation runs the clock; Dr. Lewis's breach response protocol starts the same day as discovery: contain, document, notify Dr. Lewis, engage HIPAA counsel; speed in the first 48 hours determines whether the company controls the narrative or is forced to react; HIPAA OCR does not look kindly on companies that clearly knew about a breach and delayed response
- Annual risk assessment is required — not optional — the HIPAA Security Rule explicitly requires a documented security risk analysis at least annually; many small healthcare companies skip this and believe they are compliant because they have a BAA with their EHR vendor; they are not; the risk assessment must be documented, must identify specific risks to ePHI, and must include a remediation plan; Dr. Lewis conducts or coordinates the annual risk assessment for Allevio and retains the documentation
- HITL required: Dr. Lewis reviews and approves all BAAs; Allevio CEO confirms vendor PHI access before Dr. Lewis initiates BAA process; Matt Mathison notified same day of any confirmed or suspected breach; HIPAA counsel engaged for any breach or OCR investigation; Dr. Lewis does not make breach notification decisions without HIPAA counsel review — the 4-factor risk assessment and notification determination requires legal analysis

## System Dependencies
- **Reads from:** Vendor contract list (which vendors have PHI access?); AdvancedMD access logs (who has accessed ePHI?); employee HIPAA training records; prior risk assessment documentation; Marshall Medical Billing BAA; Microsoft 365 BAA confirmation; Allevio's Notice of Privacy Practices (NPP)
- **Writes to:** BAA tracker (SharePoint/Legal/Allevio/HIPAA/BAATracker.xlsx); annual risk assessment documentation; employee training records; breach incident log; OCR breach notification reports (if applicable); Matt Mathison breach notification memo
- **HITL Required:** Dr. Lewis reviews and approves all BAAs before vendor PHI access; Allevio CEO confirms any new vendor who will access PHI; Matt Mathison notified same day of any breach event; HIPAA counsel required for breach determination, OCR reporting, and any OCR investigation; employee HIPAA training delivered by a qualified HIPAA trainer (not just Dr. Lewis distributing a PDF); Dr. Lewis does not self-certify Allevio as HIPAA compliant without legal review

## Test Cases
1. **Golden path:** Allevio is onboarding a new data analytics vendor to perform member health outcome benchmarking → Dr. Lewis reviews: Will the vendor receive identifiable PHI (names, dates of service, diagnoses)? Yes → BAA required before any data sharing; Dr. Lewis reviews the vendor's BAA template; key provisions verified: permitted uses limited to benchmarking only; vendor cannot use data for their own business purposes; vendor must maintain equivalent safeguards; vendor must report any unauthorized access within 10 days (consistent with HIPAA's 60-day obligation to individuals); return or destroy on termination; subcontractor chain requirements included; BAA executed by Allevio CEO and vendor; logged in BAA tracker; data sharing authorized only after BAA execution; Dr. Lewis confirms de-identification as an alternative (if the vendor's analytics do not require identified data, send de-identified data and avoid the BAA entirely)
2. **Edge case:** An Allevio employer group's HR Director requests a list of employees who visited the clinic and what conditions were treated, to "manage benefits costs" → Dr. Lewis immediately stops the request: "This is a HIPAA violation. The employer group's HR department cannot receive individually identifiable health information about their employees — this is exactly what HIPAA's firewall between plan administration and employment decisions is designed to prevent. We cannot provide this list. What we can provide: de-identified aggregate data (how many members used certain service categories, with all individual identifiers removed). I'll draft a response to the HR Director declining the request, explaining what we can provide, and informing them of the HIPAA restrictions. I'm also noting this request in the incident log — not as a breach, but as a 'close call' that we may want to discuss with the employer group at contract renewal to ensure their team understands the restrictions." Employer group educated; request declined; aggregate de-identified data offered instead
3. **Adversarial:** An Allevio clinic employee emails a spreadsheet of member names, dates of birth, and diagnoses to their personal Gmail account to "work from home" → Dr. Lewis treats this as a confirmed HIPAA breach: ePHI transmitted to an unauthorized location (personal email; no HIPAA-equivalent safeguards); breach response activated: (1) Contain — confirm the employee deleted the email and data from Gmail; request written certification; (2) Document — log the incident with date, PHI scope (how many members? which data elements?); (3) Notify Matt Mathison same day; (4) Engage HIPAA counsel within 24 hours; (5) 4-factor risk assessment: PHI transmitted to personal email (likely accessed); low risk of external disclosure (only employee saw it); employee cooperating with deletion; mitigation attempted; HIPAA counsel advises: likely reportable breach; (6) Initiate individual notifications; (7) Annual HHS report updated; (8) Employee sanction per policy (written warning for first offense if no prior violations; termination if the data was shared externally or employee is uncooperative)

## Audit Log
All BAA executions retained permanently. Annual risk assessment documentation retained (minimum 6 years per HIPAA record retention). Employee HIPAA training records retained (6 years). All breach incident logs retained (6 years), including near-misses and events determined not to be breaches. OCR communications retained permanently. Any sanction records retained per HR record retention policy.

## Deprecation
Retire when Allevio has a dedicated HIPAA Privacy Officer (required for any covered entity above a small practice scale) — with Dr. Lewis reviewing the annual risk assessment and Matt Mathison receiving the annual HIPAA compliance status report.
