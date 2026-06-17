---
name: rc-third-party-compliance
description: "Manage vendor and third-party compliance — BAA management, supplier assessments, and vendor risk. Use when the user says 'vendor compliance', 'third-party risk', 'vendor assessment', 'BAA management', 'business associate agreement', 'supplier compliance', 'vendor risk management', 'third-party risk assessment', 'vendor due diligence', 'approved vendor', 'vendor onboarding compliance', 'vendor audit', 'third-party management', or 'vendor contract compliance'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--vendor <vendor name>] [--entity <company name>] [--action <onboard|assess|audit|report>] [--type <BAA|IT|financial|clinical|operational>]"
---

# Third-Party Compliance Manager

Manage vendor and third-party compliance at MBL portfolio companies — ensuring that vendors who access sensitive data or perform critical functions are properly vetted, contractually bound, and periodically reviewed. Third-party risk is one of the most common sources of data breaches, compliance violations, and operational disruptions; a vendor who handles PHI without a BAA, a payment processor who has a security breach, or an IT vendor with unchecked remote access are all risks that originate outside the company but land fully on the company's regulatory and financial exposure. At Allevio, BAA management is a HIPAA regulatory requirement; across all portfolio companies, vendor compliance is a financial controls and fraud prevention function.

## When to Use
- A new vendor is being onboarded — what compliance steps are required?
- A vendor handles PHI at Allevio — is a BAA in place before data flows?
- Annual vendor review — are all vendors assessed, contracted, and compliant?
- A vendor is added to a system with sensitive access — what controls are required?
- A vendor's security posture needs assessment
- Preparing for a HIPAA audit or buyer diligence — is the BAA tracker complete?

## Third-Party Compliance Framework

```
Vendor classification (determines compliance requirements):
  Tier 1 — High risk (all of the following apply):
    → Accesses PHI, financial data, or company confidential data
    → Has remote access to company systems
    → Performs critical business functions (payroll, billing, legal, audit)
    → BAA required (if PHI access at Allevio)
    Requirements: Full security questionnaire; BAA (if applicable); MSA with data protection terms; annual review
    
  Tier 2 — Medium risk:
    → Accesses non-sensitive business data
    → Provides professional services without system access
    → Provides software without data integration
    Requirements: Standard MSA with data protection terms; onboarding checklist; annual review
    
  Tier 3 — Low risk:
    → No data access (facilities, shipping, general services)
    → Single/one-time purchase vendors
    Requirements: W-9 for payment; standard PO terms; no annual review required
    
BAA requirements (Allevio — non-negotiable):
  Business Associate: Any vendor that creates, receives, maintains, or transmits PHI on behalf of a Covered Entity
  Common Allevio BAs: EHR vendor (AdvancedMD), medical billing company (Marshall Medical Billing), IT/MSP (if has PHI system access), cloud storage with PHI, telehealth platform, coding company, transcription service, legal counsel (in certain capacities), clearinghouse
  BAA required BEFORE any PHI flows to the vendor
  BAA content requirements: Permitted uses and disclosures of PHI; safeguards; subcontractor obligations; breach notification; return/destroy PHI on termination
  BAA tracker: All Allevio BAs tracked in a master log with BAA effective date; renewal date if applicable; status
  Expired or missing BAA: PHI flow to that vendor must stop until BAA is executed; no exceptions
  
Vendor onboarding compliance checklist:
  Step 1: Classify vendor (Tier 1 / 2 / 3)
  Step 2: Require W-9 before first payment (all vendors — tax compliance; vendor vetting)
  Step 3: Execute BAA (if Allevio BA — before PHI access)
  Step 4: Execute MSA with data protection terms (Tier 1 and 2)
  Step 5: Complete security questionnaire (Tier 1)
  Step 6: Add to approved vendor list
  Step 7: Configure access (minimum necessary; IT provisions access; documented)
  
Annual vendor review:
  BAA tracker: All BAs accounted for; no expired BAAs; coverage current
  Access review: Does each vendor still need the access they have? Terminate dormant access
  Performance review: Contract renewal decision; SLA compliance; any incidents
  Security review (Tier 1): SOC 2 report requested or questionnaire refreshed
```

## Output Format

```markdown
# Vendor Compliance Status — <Company Name>
**Date:** [Date] | **Responsible:** Dr. John Lewis

---

## BAA Tracker (Allevio — HIPAA Requirement)

| Vendor | Vendor type | BAA executed | BAA date | Expires | PHI systems | Status |
|--------|------------|------------|--------|---------|------------|--------|
| AdvancedMD | EHR | ✅ | [Date] | None (evergreen) | AdvancedMD | ✅ Current |
| Marshall Medical Billing | Billing | ✅ | [Date] | None | Billing data | ✅ Current |
| [MSP Name] | IT/MSP | ✅ | [Date] | Annual | Entra ID; AdvancedMD support | ✅ Current |
| [New Vendor] | Transcription | ⚠️ PENDING | — | — | Clinical notes | ⚠️ PHI FLOW BLOCKED until BAA executed |
| [Vendor] | Legal | N/A | — | — | Legal matters only | ✅ Attorney-client privilege |

**BAA compliance: [X]/[Y] complete — [Z] pending (PHI blocked)**

---

## Approved Vendor List

| Vendor | Tier | W-9 on file | MSA | BAA | Access controlled | Last review | Status |
|--------|------|------------|-----|-----|-----------------|-----------|--------|
| [Vendor] | 1 | ✅ | ✅ | ✅ | ✅ | [Date] | ✅ |
| [Vendor] | 2 | ✅ | ✅ | N/A | N/A | [Date] | ✅ |
| [Vendor] | 3 | ✅ | N/A | N/A | N/A | N/A | ✅ |

---

## New Vendor Onboarding Checklist

**Vendor:** [Name] | **Date:** [Date] | **Requested by:** [Name] | **Entity:** [Company]

| Step | Required | Complete | Date | Notes |
|------|---------|---------|------|-------|
| Vendor classification | All | ✅ / ⚠️ | | Tier [X] |
| W-9 collected | All | ✅ / ⚠️ | | Required before first payment |
| BAA executed | If Allevio BA | ✅ / ⚠️ / N/A | | [Date or BLOCKED] |
| MSA with data protection | Tier 1-2 | ✅ / ⚠️ / N/A | | |
| Security questionnaire | Tier 1 | ✅ / ⚠️ / N/A | | [Key findings] |
| Access provisioned | If applicable | ✅ / ⚠️ / N/A | | [Systems; minimum necessary] |
| Added to approved vendor list | All | ✅ / ⚠️ | | |

**Onboarding complete:** ✅ / ⚠️ Incomplete — [blockers]

---

## Annual Vendor Review Summary

Vendors reviewed: [N] | BAAs current: [N]/[N] | W-9 gaps: [N] | Access review: [N] dormant accounts terminated | Vendors removed from approved list: [N] — [reason]

**Key findings:** [Any compliance gaps or access issues found]

---

## Matt Mathison Brief (if material vendor compliance gap or BAA non-compliance discovered)

[Company] third-party compliance: [Vendor] — [Issue]. PHI exposure risk: [Yes/No — description]. Action: [PHI flow blocked / BAA in progress / Vendor removed]. Attorney engaged: [Yes/No]. Timeline to resolution: [Date].
```

## Output Contract
- BAA is required before PHI flows, not concurrent with — "we're working on the BAA" while PHI is already flowing to the vendor is a HIPAA violation; the enforcement sequence is rigid: execute BAA → then allow PHI access; Dr. Lewis implements this as a system control — AdvancedMD vendor access is not provisioned until the BAA is in the tracker; the medical billing company doesn't get the first batch of claims until the BAA is signed; the transcription service doesn't get audio files until the BAA is executed; the only exception is an existing BA relationship inherited without documentation (audit, document retroactively, do not create a new gap)
- W-9 before first payment is both a tax compliance requirement and a vendor vetting step — the IRS requires a W-9 for 1099 reporting; collecting it before the first payment ensures the vendor is a real entity at a real address with a real EIN; it is also the point in the onboarding process where Dr. Lewis can catch: a vendor whose address doesn't match their stated location, a vendor that doesn't yet have an EIN (newly formed entity — legitimate but risk), or a vendor whose W-9 name doesn't match their invoice name (fraud indicator); W-9 collection is never skipped for any vendor receiving payment; it is part of the AP controls framework (rc-sox-lite-assessor)
- Vendor access is terminated when the vendor relationship ends — an IT vendor whose contract was not renewed 6 months ago but whose remote access credentials are still active is an open door; Dr. Lewis includes vendor access termination in the vendor offboarding process and in the annual vendor review; any vendor access not reviewed in the past 12 months is flagged for immediate review; dormant access that cannot be traced to an active vendor relationship is terminated immediately
- HITL required: Dr. Lewis manages vendor compliance and BAA tracker; CEO approval for Tier 1 vendor relationships; Matt Mathison informed for significant third-party compliance gaps (missing BAA with PHI flowing, vendor security breach); attorney for BAA negotiation on non-standard terms; HIPAA breach involving a vendor's security failure escalates to Dr. Lewis + CEO + attorney immediately

## System Dependencies
- **Reads from:** Accounts payable (vendor payment history — W-9 status), Entra ID and AdvancedMD (vendor remote access), contract management system (MSA/BAA status), IT vendor access logs, rc-hipaa-security-program (BAA requirement)
- **Writes to:** BAA tracker (SharePoint/RC/Allevio/BAAs/); approved vendor list (SharePoint/RC/<Company>/Vendors/); vendor access termination records; annual vendor review report; CEO and Matt Mathison brief if material gap
- **HITL Required:** Dr. Lewis manages; CEO for Tier 1 vendor onboarding; Matt Mathison for material PHI exposure or vendor security breach; attorney for non-standard BAA negotiation and vendor breach response

## Test Cases
1. **Golden path:** Annual vendor review for Allevio → BAA tracker: 8 BAs; 8 BAAs on file and current ✅; access review: 2 vendors with system access; IT MSP — access current (active contract) ✅; coding vendor — contract not renewed 90 days ago but AdvancedMD access still active ⚠️; action: terminate AdvancedMD access for coding vendor immediately; check AdvancedMD audit log for any activity after contract end — none found; document and close; W-9 tracker: 22 vendors paid in past year; 21 W-9s on file; 1 missing (small office supply vendor, $340/year, under $600 threshold — obtain W-9 for completeness anyway); no material gaps; CEO briefed; annual review complete
2. **Edge case:** Allevio is considering a new telehealth platform — vendor wants to start the pilot before the contract is finalized → Hard stop: if the telehealth platform will process, transmit, or store PHI (which any clinical telehealth platform will), a BAA must be executed before PHI flows; "pilot" does not create a HIPAA exception; Dr. Lewis contacts the vendor: BAA must be executed before the pilot begins; if the vendor's legal team has a standard BA agreement, execute it; if there are non-standard terms, attorney reviews; pilot does not begin until BAA is signed and in the tracker; if the vendor refuses to execute a BAA, they cannot participate in any clinical activities involving PHI — period
3. **Adversarial:** "The vendor says they're HIPAA compliant — isn't that good enough?" → A vendor's claim of HIPAA compliance is not equivalent to an executed BAA; HIPAA compliance is not a certification (there is no federal HIPAA certification body); a vendor can be "HIPAA compliant" in practice while still being a HIPAA liability for Allevio if no BAA is in place; the BAA is the contractual instrument that: (1) defines permitted uses of PHI, (2) requires the vendor to report breaches, (3) requires the vendor to ensure their subcontractors also have BAAs, and (4) requires return or destruction of PHI when the relationship ends; vendor self-certification is not a substitute for the contractual protections of a BAA

## Audit Log
BAA tracker maintained with all executed BAAs and version history (permanently retained). Vendor onboarding checklists retained per vendor (minimum 7 years after relationship ends). Annual vendor review records retained. Vendor access termination records retained. W-9 tracker maintained with IRS retention requirements. Attorney engagement for BAA negotiation and breach retained permanently.

## Deprecation
Retire when portfolio companies have procurement functions with formal vendor management programs including automated BAA tracking and vendor risk scoring — with Dr. Lewis reviewing BAA coverage for Allevio annually and any Tier 1 vendor additions requiring Dr. Lewis sign-off.
