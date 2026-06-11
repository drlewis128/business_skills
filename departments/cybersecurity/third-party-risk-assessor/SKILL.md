---
name: third-party-risk-assessor
description: "Assess and manage third-party vendor security risk. Use when the user says 'vendor risk', 'third-party risk', 'vendor security assessment', 'assess a vendor', 'supply chain security', 'vendor questionnaire', 'is this vendor secure', 'vendor due diligence', or 'new vendor security review'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<vendor-name> [--entity <name>] [--tier <1|2|3>] [--data-type <PHI|PII|financial|all>]"
---

# Third-Party Risk Assessor

Assess and manage third-party vendor security risk. Your security is only as strong as your weakest vendor. For MBL portfolio companies — with M365, QuickBooks, GoHighLevel, AdvancedMD, and Covercy all holding significant business data — vendor risk is a critical attack surface. This skill provides a tiered vendor assessment framework and questionnaire.

## When to Use
- Onboarding a new vendor with access to MBL systems or data
- Annual review of existing critical vendors
- After a vendor breach is announced
- Before renewing a contract with a high-risk vendor
- SOC 2 / HIPAA audit preparation — vendor risk management is required

## Vendor Tier Classification

| Tier | Access Level | Examples | Review Frequency |
|------|------------|---------|----------------|
| **Tier 1 — Critical** | Access to PHI, financial data, or identity systems | Microsoft (M365), AdvancedMD, QuickBooks, Krista.ai | Annual + post-breach |
| **Tier 2 — High** | Access to business data, customer PII, or business systems | GoHighLevel (CRM), Monday.com, Bill.com, Covercy | Annual |
| **Tier 3 — Standard** | Limited access, no sensitive data | Marketing tools, productivity apps, analytics | Onboarding only |

## Vendor Assessment Process

```
1. Classify vendor tier (what data do they access?)
2. Request security documentation (questionnaire or SOC 2 report)
3. Review documentation against standards
4. Identify gaps and request remediation or accept risk
5. Execute contractual security requirements (BAA if PHI, DPA if PII)
6. Add to vendor risk register
7. Schedule annual review
```

## Output Format

```markdown
# Vendor Security Assessment — <Vendor Name>
**Entity:** <MBL entity> | **Vendor tier:** 1 / 2 / 3
**Data accessed:** PHI / PII / Financial / Business / None
**Assessment date:** <date>
**Assessor:** Dr. John Lewis / IT Manager
**Verdict:** APPROVED / APPROVED WITH CONDITIONS / REJECTED

---

## Vendor Overview

| Field | Value |
|-------|-------|
| Vendor name | <name> |
| Service provided | <description> |
| Data accessed | <types> |
| Integration type | API / SSO / Direct database / SaaS portal |
| Data residency | US / EU / Unknown |
| Sub-processors | <list or Unknown> |

---

## Security Documentation Requested

| Document | Received? | Date | Notes |
|---------|---------|------|-------|
| SOC 2 Type II report | ✅ / ❌ | <date> | Current — covers 12 months through <date> |
| Penetration test results | ✅ / ❌ | <date> | Annual — last test <date> |
| Security questionnaire (SIG/CAIQ) | ✅ / ❌ | <date> | |
| ISO 27001 certificate | ✅ / ❌ | <date> | N/A for this vendor |
| HIPAA BAA (if PHI) | ✅ / ❌ | <date> | Required before going live |

---

## Security Assessment

| Control Area | Status | Evidence | Notes |
|------------|--------|---------|-------|
| Authentication (MFA required) | ✅ / 🟡 / ❌ | SOC 2 p.12 | Admin MFA required |
| Encryption in transit | ✅ / 🟡 / ❌ | SOC 2 p.8 | TLS 1.2+ |
| Encryption at rest | ✅ / 🟡 / ❌ | SOC 2 p.9 | AES-256 |
| Access control (least privilege) | ✅ / 🟡 / ❌ | Questionnaire | RBAC in place |
| Incident response plan | ✅ / 🟡 / ❌ | SOC 2 p.15 | Tested annually |
| Vulnerability management | ✅ / 🟡 / ❌ | Questionnaire | Monthly scans |
| Data retention and deletion | ✅ / 🟡 / ❌ | DPA | 90-day retention post-contract |
| Sub-processor security | ✅ / 🟡 / ❌ | DPA | Sub-processors listed |
| Background checks on staff with data access | ✅ / 🟡 / ❌ | Questionnaire | Criminal background check |
| Breach notification SLA | ✅ / 🟡 / ❌ | Contract / DPA | 72-hour notification commitment |

---

## Risk Findings

| Finding | Severity | Vendor Response | Risk Acceptance |
|---------|---------|----------------|----------------|
| SOC 2 report is 18 months old | High | New audit in progress, expected Q3 | Conditional — get updated report before renewal |
| No MFA for standard user accounts | High | On roadmap for Q4 | Not acceptable for Tier 1 — require MFA commitment |
| Data residency unclear | Medium | Confirmed US-only via email | Document in file |

---

## Contractual Requirements

- [ ] Data Processing Agreement (DPA) — required if processing EU personal data
- [ ] Business Associate Agreement (BAA) — required if processing PHI (Allevio vendors)
- [ ] Security addendum — requires vendor to maintain security controls and notify of breaches
- [ ] Right to audit — right to request security documentation annually

---

## Verdict

**APPROVED WITH CONDITIONS:**
Vendor may be used under the following conditions:
1. Updated SOC 2 report received before contract renewal
2. MFA enforcement committed to in writing with a Q4 implementation date
3. BAA executed before any PHI is shared

**Risk register entry:** Added — Tier 1, annual review due <date>
```

## Output Contract
- SOC 2 Type II always requested for Tier 1 and Tier 2 vendors — audit-only documentation not sufficient
- BAA required before any PHI shared with any vendor — no exceptions for Allevio
- Breach notification SLA always evaluated — 72-hour notification required
- Vendor risk register always updated after each assessment
- HITL required: Dr. Lewis reviews all Tier 1 vendor assessments; Legal executes BAA and DPA; IT Manager maintains vendor risk register; Allevio compliance officer approves any Tier 1 vendor with PHI access

## System Dependencies
- **Reads from:** Vendor security documentation (SOC 2, questionnaire, certifications — provided by vendor)
- **Writes to:** Vendor risk register
- **HITL Required:** Dr. Lewis approves Tier 1 vendors; Legal executes contracts; Allevio compliance officer approves PHI-handling vendors; IT Manager maintains register

## Test Cases
1. **Golden path:** New SaaS tool evaluation → Tier 2, SOC 2 Type II received (current), MFA required, DPA available, no PHI → APPROVED; added to vendor risk register with annual review date
2. **Edge case:** Critical vendor (Tier 1) announces a data breach affecting customers → immediately escalate to Dr. Lewis, contact vendor for breach details, assess if MBL/entity data was affected, notify Legal; if PHI involved → HIPAA breach assessment; if financial data → Finance and Dr. Lewis immediately
3. **Adversarial:** Business unit wants to use a new tool immediately without security review → assessment is mandatory before any vendor with data access goes live; "just for a pilot" is not an exception; a 2-day assessment is much faster than a breach notification

## Audit Log
Vendor assessments retained by vendor and date. BAA and DPA execution dates documented. Annual review schedule tracked. Vendor risk register maintained.

## Deprecation
Retire manual assessments when a vendor risk management platform (OneTrust, ProcessUnity, SecurityScorecard) automates questionnaire collection, continuous monitoring, and risk scoring.
