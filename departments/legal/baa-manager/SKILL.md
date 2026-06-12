---
name: baa-manager
description: "Manage Business Associate Agreements for HIPAA compliance. Use when the user says 'BAA', 'business associate agreement', 'business associate', 'HIPAA vendor agreement', 'vendor PHI access', 'covered entity agreement', 'who needs a BAA', 'BAA missing', or 'HIPAA vendor compliance'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity Allevio] [--mode <inventory|review|execute>] [--vendor <name>]"
---

# BAA Manager

Manage Business Associate Agreements for HIPAA compliance. A Business Associate Agreement (BAA) is a legally required contract between a Covered Entity (like Allevio as a healthcare MSO) and any vendor who creates, receives, maintains, or transmits PHI on the entity's behalf. Operating without a BAA when one is required is a HIPAA violation — and discovering a missing BAA during an OCR investigation compounds the problem significantly.

## When to Use
- Onboarding a new vendor who may access Allevio PHI
- Annual BAA inventory review
- Before sharing any PHI with a vendor
- When a vendor changes ownership, merges, or significantly changes their service
- OCR audit preparation

## Who Needs a BAA

| Vendor Type | BAA Required? | Examples |
|-----------|------------|---------|
| **Billing / RCM** | ✅ Yes — handles PHI | Marshall Medical Billing, clearinghouses |
| **EHR / Practice management** | ✅ Yes | AdvancedMD |
| **Cloud storage (with PHI)** | ✅ Yes | Azure (Microsoft), AWS, Google Cloud |
| **Email (if used for PHI)** | ✅ Yes | Microsoft (M365) — HIPAA BAA available |
| **IT support / MSP (with PHI access)** | ✅ Yes | Any MSP who can access PHI systems |
| **Transcription services** | ✅ Yes | Medical transcription vendors |
| **Shredding services** | ✅ Yes | Document destruction companies |
| **General SaaS (no PHI)** | ❌ No | If PHI never touches the system |
| **HR software (employee data, no patient data)** | ❌ No | Typically no patient PHI |
| **Marketing software (patient-facing)** | ⚠️ Case-by-case | If patient lists used — likely yes |

## BAA Key Provisions

| Provision | Required Content |
|---------|---------------|
| Permitted uses and disclosures | Only what's necessary for the service |
| Prohibited uses | No disclosure beyond permitted; no sale of PHI |
| Safeguards | Implement appropriate safeguards |
| Reporting obligations | Report breaches within 60 days |
| Subcontractors | Must pass BAA obligations to their subcontractors |
| Termination | Return or destroy PHI on termination |
| HHS access | Allow OCR inspection if required |

## Output Format

```markdown
# BAA Inventory — Allevio
**Date:** <date> | **Entity:** Allevio
**Review type:** Annual / New vendor / Incident

---

## BAA Status Summary

| Status | Count |
|--------|-------|
| BAAs executed and current | <N> |
| BAAs required but missing | <N> — Critical |
| BAAs expired or vendor changed | <N> |
| Under review | <N> |

---

## BAA Inventory

| Vendor | Service | PHI Access | BAA Status | Executed | Notes |
|--------|---------|---------|----------|---------|-------|
| AdvancedMD | EHR / Practice management | ✅ Yes | ✅ Executed | <date> | Evergreen — review annually |
| Microsoft (M365) | Email, Teams, SharePoint | ✅ Yes | ✅ Executed | <date> | HIPAA BAA in place via Azure portal |
| Marshall Medical Billing | RCM / Billing | ✅ Yes | ✅ Executed | <date> | Evergreen |
| Azure (Microsoft) | Cloud storage | ✅ Yes | ✅ Executed | <date> | Covered under Microsoft BAA |
| IT Support MSP | IT support with system access | ✅ Potential | ❌ Missing | — | 🔴 Execute before next access |
| DocuSign | e-Signature (if PHI in docs) | 🟡 Possible | ❌ Not assessed | — | Assess PHI in signed documents |
| Shredding vendor | Document destruction | ✅ Yes | ❌ Missing | — | 🔴 Execute — physical PHI |
| HireRight | Background checks (employee-only) | ❌ No (employee data) | N/A | — | No PHI — not required |

---

## Critical Gaps — Action Required

| Vendor | PHI Risk | Action | Owner | Due |
|--------|---------|--------|-------|-----|
| IT Support MSP | IT staff may access PHI systems during support | Execute BAA before allowing system access | Dr. Lewis + Legal | This week |
| Shredding vendor | Destructs paper PHI | Execute BAA or verify current agreement includes BAA terms | Office Manager | 14 days |
| DocuSign | Assess if PHI in signed agreements | Review document types; execute BAA if PHI present | Allevio Admin | 30 days |

---

## BAA Review Checklist (New Vendor)

- [ ] Does the vendor access, store, transmit, or process PHI? (If yes → BAA required)
- [ ] Is the vendor's BAA template acceptable, or does MBL/Allevio need to provide its own?
- [ ] Does the vendor's BAA include all required HIPAA provisions?
- [ ] Does the vendor have a HIPAA compliance program? (Request evidence)
- [ ] Does the vendor's BAA address subcontractor BAA obligations?
- [ ] Has the executed BAA been filed in the BAA inventory?
- [ ] Is the BAA expiration / renewal process defined?

---

## Standard Allevio BAA Template (Key Provisions Summary)

**Permitted Uses:** Vendor may only use PHI to perform services described in the underlying contract.

**Safeguards:** Vendor shall implement appropriate administrative, physical, and technical safeguards that reasonably and appropriately protect the confidentiality, integrity, and availability of PHI.

**Subcontractors:** Vendor shall require subcontractors to agree to the same restrictions and conditions as apply to Vendor.

**Breach Reporting:** Vendor shall report any breach of unsecured PHI to Allevio without unreasonable delay and in no case later than 60 days after discovery.

**Termination:** Upon termination, Vendor shall return or destroy all PHI and shall retain no copies.
```

## Output Contract
- Missing BAAs always flagged as Critical — operating without a required BAA is a HIPAA violation
- All vendors with PHI access assessed annually — BAA inventory must be current
- BAA execution must precede PHI sharing — no PHI shared with a vendor before BAA is in place
- Vendor subcontractors always checked — BAA must flow down to subcontractors
- HITL required: Dr. Lewis reviews BAA inventory; Allevio compliance officer maintains; Legal counsel reviews non-standard BAA terms; Allevio leadership approves all new vendor PHI access

## System Dependencies
- **Reads from:** Vendor contract inventory, Allevio vendor list, PHI system access logs (provided)
- **Writes to:** BAA inventory (maintained by Allevio compliance officer)
- **HITL Required:** Dr. Lewis reviews; Legal counsel reviews non-standard BAAs; Allevio compliance officer maintains inventory; Allevio leadership approves PHI access

## Test Cases
1. **Golden path:** Annual BAA review → AdvancedMD and Microsoft BAAs current, IT MSP missing BAA (execute immediately), shredding vendor missing BAA (execute in 14 days), DocuSign assessed (no PHI in signed docs — no BAA required); all gaps closed within 30 days
2. **Edge case:** Vendor merges with another company — does the BAA still apply? → new entity requires a new BAA; contact vendor to update; PHI sharing must stop if new BAA not executed within reasonable time
3. **Adversarial:** IT vendor says "our software is HIPAA certified so we don't need a BAA" → HIPAA certification (there is no official HIPAA certification) does not substitute for a BAA; BAA is a contractual requirement regardless of the vendor's security posture; execute BAA before proceeding

## Audit Log
BAA inventory maintained with vendor, dates, and renewal status. Missing BAA gaps documented with remediation dates. All executed BAAs retained for 6 years (HIPAA retention requirement).

## Deprecation
Retire when Allevio deploys a healthcare compliance platform with automated BAA tracking, vendor questionnaire integration, and contract repository.
