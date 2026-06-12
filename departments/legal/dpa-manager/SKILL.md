---
name: dpa-manager
description: "Manage Data Processing Agreements for GDPR compliance. Use when the user says 'DPA', 'data processing agreement', 'data processor agreement', 'GDPR vendor agreement', 'controller processor agreement', 'GDPR data agreement', 'processor terms', 'standard contractual clauses', 'SCCs', or 'data transfer agreement'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <inventory|review|execute>] [--vendor <name>] [--transfer-type <EU-US|intra-EU|UK>]"
---

# DPA Manager

Manage Data Processing Agreements (DPAs) for GDPR compliance. Under GDPR Article 28, when a controller (MBL or portfolio company) shares personal data of EU residents with a processor (vendor), a DPA is legally required. A DPA is the GDPR equivalent of a HIPAA BAA — it's not optional. Missing DPAs for vendors who process EU personal data is a GDPR violation. This skill manages the DPA inventory and ensures required agreements are in place.

## When to Use
- Onboarding a new vendor who processes EU personal data on behalf of MBL/portfolio
- Annual DPA inventory review
- When a vendor changes terms and the DPA needs updating
- Cross-border data transfer review (EU→US requires appropriate transfer mechanism)
- GDPR audit preparation

## DPA vs. BAA Comparison

| Aspect | DPA (GDPR) | BAA (HIPAA) |
|--------|-----------|-----------|
| Triggers | Vendor processes EU personal data | Vendor creates/receives/maintains/transmits PHI |
| Legal basis | GDPR Article 28 | 45 CFR §164.308(b) |
| Applies to | All EU personal data categories | Healthcare PHI only |
| International transfers | Requires additional mechanism (SCCs, adequacy) | No additional mechanism for US-to-US |
| Penalty | Up to 4% global revenue or €20M | Up to $1.9M per violation category/year |

## DPA Required Provisions (GDPR Article 28)

| Provision | Requirement |
|---------|-----------|
| Processing subject matter and duration | What data, how long |
| Nature and purpose of processing | What the processor does with the data |
| Type of personal data | Categories of data |
| Controller's rights | Controller can audit, request deletion |
| Processor obligations | Only process per controller's instructions |
| Confidentiality | Processor staff bound by confidentiality |
| Security measures | Article 32 technical and organizational measures |
| Subprocessors | Require approval; sub-DPA required |
| Assistance | Help controller with DSRs, security, breach notification |
| Deletion/return | Return or delete data at end of processing |
| Cooperation with DPA | Allow audits by supervisory authority |

## International Transfer Mechanisms (EU → US)

```
For EU personal data transferred to US processors/vendors:

Option 1: EU-US Data Privacy Framework (DPF) — US company certified
  - Fastest option if US vendor is DPF-certified
  - Check: dataprivacyframework.gov

Option 2: Standard Contractual Clauses (SCCs)
  - EU Commission-approved contract clauses
  - Module 1: Controller → Controller
  - Module 2: Controller → Processor (most common for US vendors)
  - Use 2021 SCCs (prior versions not valid post-Schrems II)

Option 3: Binding Corporate Rules (BCRs)
  - For intra-group transfers — requires DPA approval
  - Complex and expensive; mainly for large multinationals

Default: SCCs are the most practical mechanism for MBL portfolio companies
```

## Output Format

```markdown
# DPA Inventory — <Entity>
**Date:** <date> | **Entity:** <name>
**EU personal data scope:** <describe — EU employees, EU customers, EU web visitors>
**Prepared by:** Dr. John Lewis / Legal counsel

---

## DPA Applicability

**Do we process EU personal data?** Yes / No / Unknown
**EU data categories:** <list — employee data, customer data, analytics>
**GDPR applicability confirmed?** Yes → DPAs required for all data processors

---

## DPA Inventory

| Vendor | Service | EU Personal Data | DPA Executed? | Transfer Mechanism | Subprocessors Listed? | Next Review |
|--------|---------|----------------|------------|------------------|---------------------|-----------|
| Google Analytics | Web analytics | ✅ EU visitor behavioral data | ✅ Google DPA | ✅ DPF Certified | ✅ | Annual |
| GoHighLevel | CRM | 🟡 EU contacts if any | ❌ Missing | ❌ Not in place | ❌ | ASAP |
| Microsoft (M365) | Email, collaboration | ✅ EU employee data | ✅ Microsoft DPA | ✅ SCCs included | ✅ | Annual |
| Email platform | Email marketing | 🟡 EU contacts if any | ❌ Missing | ❌ | ❌ | ASAP |
| HR software | Employee data | 🟡 EU employees if any | ❌ Not assessed | ❌ | ❌ | Assess |

---

## Critical Gaps — DPAs Missing

| Vendor | EU Data | Action | Owner | Due |
|--------|---------|--------|-------|-----|
| GoHighLevel | EU marketing contacts (if any) | (1) Assess EU contact volume; (2) Execute DPA addendum if EU contacts | Dr. Lewis | 30 days |
| Email platform | EU subscriber contacts | Assess EU subscriber base; execute DPA if present | Marketing | 30 days |

---

## International Transfer Assessment

| Data Flow | Transfer Mechanism in Place? | Status |
|---------|--------------------------|--------|
| EU employee data → US HR system | SCCs via Microsoft M365 | ✅ |
| EU visitor data → Google Analytics (US) | DPF certification (Google) | ✅ |
| EU contacts → GoHighLevel (US) | No mechanism | ❌ Critical gap |

---

## DPA Review Checklist (New Vendor)

- [ ] Does the vendor process EU personal data on our behalf? (If yes → DPA required)
- [ ] Is the vendor US-based? → Confirm DPF certification or use SCCs
- [ ] Does the vendor's DPA include all GDPR Article 28 provisions?
- [ ] Is the subprocessor list provided and acceptable?
- [ ] Has a Transfer Impact Assessment (TIA) been conducted for US transfers?
- [ ] Has the executed DPA been filed in the DPA inventory?
```

## Output Contract
- Missing DPAs always flagged as Critical — processing EU personal data without a DPA is a GDPR Article 28 violation
- EU→US transfer mechanism always assessed — SCCs or DPF certification required
- Subprocessor approval always tracked — vendors cannot freely add subprocessors without controller consent under GDPR
- GoHighLevel always assessed — MBL's CRM likely contains EU contacts and may require DPA
- HITL required: Dr. Lewis reviews DPA inventory; Legal counsel (EU-qualified preferred) reviews DPA terms; outside counsel reviews if SCCs need to be executed separately (not vendor-provided); Matt Mathison informed of significant GDPR gaps

## System Dependencies
- **Reads from:** Vendor contracts, EU data inventory, marketing system (GoHighLevel), HR system (provided)
- **Writes to:** DPA inventory (maintained by Dr. Lewis / Legal)
- **HITL Required:** Legal counsel reviews DPA terms; Dr. Lewis signs; EU-qualified counsel for complex SCCs and Transfer Impact Assessments

## Test Cases
1. **Golden path:** Annual DPA review → Google Analytics DPA current and DPF certified (no action), Microsoft M365 DPA current with SCCs (no action), GoHighLevel — EU contacts in CRM (1,200 records), DPA missing; request GoHighLevel's DPA addendum, execute within 30 days, add SCCs module 2 for US transfer
2. **Edge case:** Vendor says "we're GDPR compliant so no DPA needed" → GDPR compliance certification does not substitute for a DPA; GDPR Article 28 requires a contract (DPA) regardless of the vendor's compliance posture; require DPA
3. **Adversarial:** Marketing wants to share EU contact data with a US analytics vendor for campaign attribution → (1) DPA required before sharing, (2) SCCs or DPF certification for US transfer, (3) assess if the analytics vendor is acting as a processor (DPA) or a controller (more complex — may require joint controller agreement); engage Legal

## Audit Log
DPA inventory maintained with vendor, dates, and transfer mechanism. Missing DPA gaps documented with remediation dates. All executed DPAs retained.

## Deprecation
Retire when entity deploys a privacy management platform (OneTrust, TrustArc) with automated DPA tracking, vendor questionnaire integration, and transfer mechanism monitoring.
