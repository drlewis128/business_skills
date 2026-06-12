---
name: gdpr-compliance-tracker
description: "Track and manage GDPR compliance obligations. Use when the user says 'GDPR', 'EU data protection', 'GDPR compliance', 'European personal data', 'right to erasure', 'data subject request', 'GDPR audit', 'DPA', 'controller processor', 'GDPR breach notification', or 'EU privacy'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <assess|dsr|incident>] [--jurisdiction <EU|UK|all>]"
---

# GDPR Compliance Tracker

Track and manage GDPR compliance obligations. GDPR applies to any organization that processes personal data of EU/EEA residents — regardless of where the organization is located. For MBL portfolio companies, GDPR most commonly applies when entities have European employees, customers, or users of digital products (Column6 CTV, GoHighLevel contacts). GDPR fines reach 4% of global annual revenue or €20M, whichever is higher.

## When to Use
- Determining whether GDPR applies to a portfolio entity
- Processing a data subject request (access, erasure, portability)
- Responding to a personal data breach with EU residents affected
- Vendor due diligence — is the vendor GDPR compliant?
- Annual GDPR compliance review

## GDPR Applicability Assessment

| Question | If Yes → GDPR Applies |
|---------|----------------------|
| Do we process personal data of EU/EEA residents? | ✅ Assess full scope |
| Do we offer goods/services to EU residents? | ✅ |
| Do we monitor behavior of EU residents (web tracking)? | ✅ |
| Do we have employees in EU countries? | ✅ |
| Do we use vendors who process EU data on our behalf? | ✅ (require DPA) |

## Data Subject Rights Under GDPR

| Right | What It Means | Response Deadline |
|-------|-------------|----------------|
| **Right of Access** | Provide copy of all personal data we hold | 30 days |
| **Right to Rectification** | Correct inaccurate data | 30 days |
| **Right to Erasure (Right to be Forgotten)** | Delete data (with exceptions) | 30 days |
| **Right to Restriction** | Restrict processing in certain circumstances | 30 days |
| **Right to Data Portability** | Provide data in machine-readable format | 30 days |
| **Right to Object** | Object to processing for direct marketing | Immediate (marketing) |

## Output Format

```markdown
# GDPR Compliance Assessment — <Entity>
**Date:** <date> | **Entity:** <name>
**EU presence:** <describe — employees, customers, digital users>
**Prepared by:** Dr. John Lewis / Legal counsel

---

## GDPR Applicability

| Question | Answer | Implication |
|---------|--------|------------|
| Process EU resident personal data? | Yes / No / Unknown | If Yes → full GDPR scope |
| Offer goods/services to EU residents? | | |
| EU employees? | | |
| Web tracking of EU visitors? | | |

**GDPR applicability verdict:** GDPR Applies / Does Not Apply / Assess Further

---

## Compliance Gap Assessment

| GDPR Requirement | Status | Gap | Action |
|----------------|--------|-----|--------|
| Privacy policy published (EU-compliant) | ✅ / ❌ | | Update privacy policy with GDPR rights |
| Data processing inventory (Article 30) | ✅ / ❌ | | Build records of processing activities |
| Legal basis for each processing activity | 🟡 Partial | Not all documented | Document lawful basis for all processing |
| Data subject request process | ❌ | No process | Establish DSR process; assign DPO contact |
| Consent management (where consent is basis) | ❌ | No consent management | Cookie consent + marketing consent |
| Data Processing Agreements with vendors | 🟡 | 2 vendors without DPA | Execute DPAs |
| Breach notification procedure (72-hour to DPA) | ✅ | | IR plan covers GDPR breach |
| Data Protection Officer (DPO) | ❌ (if required) | Not appointed | Assess if DPO required; may need appointment |
| International transfer mechanism (if US→EU) | ❌ | No SCCs in place | Add Standard Contractual Clauses to vendor contracts |

---

## Data Inventory (Article 30 Records)

| Processing Activity | Controller / Processor | Data Categories | Legal Basis | Retention | Recipients |
|------------------|---------------------|--------------|-----------|---------|---------|
| Employee HR data | Controller | Contact, employment, payroll | Contract | Duration of employment + 7 years | Payroll vendor (DPA required) |
| Marketing contacts (GoHighLevel) | Controller | Contact, behavioral | Legitimate interest / Consent | Until opt-out + 1 year | GoHighLevel (DPA required) |
| Customer email (Column6) | Controller | Contact, campaign data | Contract / Consent | Duration of relationship | Email platform (DPA required) |

---

## Data Subject Request Log

| Request ID | Type | Requestor | Received | Due | Status |
|-----------|------|---------|---------|-----|--------|
| DSR-001 | Access | EU contact in CRM | <date> | <date + 30 days> | In progress |
| DSR-002 | Erasure | Former EU employee | <date> | <date + 30 days> | Complete |

---

## Breach Notification Status (If Applicable)

**72-hour requirement:** Any personal data breach affecting EU residents must be reported to the relevant supervisory authority within 72 hours of discovery (unless low risk to individuals).

| Breach | Discovery Date | 72-hr Deadline | DPA Notified? | Status |
|--------|-------------|-------------|------------|--------|
| [If active] | | | | |
```

## Output Contract
- GDPR applicability always assessed first — don't implement controls for regulations that don't apply
- 72-hour breach notification always tracked — this is an absolute deadline, not a target
- International transfer mechanisms always evaluated — US-EU data transfers require SCCs or adequacy decision
- DPA requirement always evaluated — some organizations must appoint a DPO
- HITL required: Dr. Lewis reviews GDPR assessment; Legal counsel interprets GDPR requirements; EU-qualified counsel engaged for substantive GDPR compliance; Matt Mathison informed of significant GDPR exposure

## System Dependencies
- **Reads from:** Data inventory, vendor contracts, privacy policy, marketing system (provided)
- **Writes to:** GDPR compliance assessment and data inventory (for Legal review)
- **HITL Required:** Legal counsel (preferably EU-qualified) reviews; Dr. Lewis oversees; EU supervisory authority notified per breach timeline

## Test Cases
1. **Golden path:** Column6 GDPR assessment (EU ad targeting) → GDPR applies, privacy policy incomplete, no DSR process, no DPAs with ad tech vendors, no consent management; roadmap: update privacy policy, build DSR process, execute DPAs, add cookie consent
2. **Edge case:** EU resident submits erasure request for marketing contact → assess if legitimate (has been a contact, not a customer with legal retention obligation), process erasure from GoHighLevel and email platform within 30 days, document
3. **Adversarial:** Marketing team says "we have EU contacts but GDPR doesn't matter because we're a US company" → GDPR applies based on the location of the data subjects, not the organization; risk of enforcement is real if you have EU residents' data; engage legal counsel

## Audit Log
GDPR compliance assessments retained annually. DSR log maintained with response times. Breach notifications documented. DPAs retained.

## Deprecation
Retire when entity deploys a privacy management platform (OneTrust, TrustArc) with automated data mapping, DSR processing, and consent management.
