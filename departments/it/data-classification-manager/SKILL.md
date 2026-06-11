---
name: data-classification-manager
description: "Classify data assets by sensitivity and enforce handling policies. Use when the user says 'data classification', 'data sensitivity', 'classify our data', 'data handling policy', 'sensitive data', 'what data is confidential', 'PII classification', or 'data governance'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--focus <inventory|policy|audit>] [--regulation <hipaa|gdpr|sox|none>]"
---

# Data Classification Manager

Classify data assets by sensitivity and establish handling requirements. You cannot protect what you haven't classified. Data classification is the foundation of data security — it determines who gets access, how data is stored, how long it's kept, and what happens when it's breached.

## When to Use
- Building a data governance policy from scratch
- Compliance audit preparation (HIPAA, SOC 2, GDPR)
- New data type or system being added
- Data breach response — what was exposed and how sensitive?
- Annual data inventory and classification review

## Classification Tiers

| Tier | Label | Definition | Examples |
|------|-------|-----------|---------|
| **Tier 1** | **Restricted** | Highest sensitivity — regulated data, trade secrets, financial system credentials | PHI (Allevio), payment card data, bank credentials, M&A deal data, LP personal data |
| **Tier 2** | **Confidential** | Internal business-sensitive — proprietary, competitive, or personnel data | Employee records, financial statements, deal memos, customer contracts, trade secrets |
| **Tier 3** | **Internal** | General internal use — not sensitive but not for public distribution | Operational procedures, internal communications, meeting notes, project plans |
| **Tier 4** | **Public** | Intended for external distribution or already public | Press releases, public website content, published reports |

## Handling Requirements by Tier

| Handling Requirement | Restricted | Confidential | Internal | Public |
|---------------------|-----------|------------|---------|--------|
| Encryption at rest | Required | Required | Recommended | Not required |
| Encryption in transit | Required | Required | Required | Recommended |
| Access control | Need-to-know only | Role-based | All employees | All |
| MFA required for access | Yes | Yes | Recommended | No |
| Retention (default) | 7 years (legal/regulatory) | 5 years | 3 years | Indefinite |
| Destruction method | Certified shredding / secure wipe | Secure wipe | Standard delete | Standard delete |
| Third-party sharing | Prohibited without DPA + legal approval | Legal approval required | Manager approval | Allowed |
| Breach notification | Within 24 hours (regulatory) | Within 72 hours | Within 5 days | Assess individually |

## Output Format

```markdown
# Data Classification Inventory — <Entity>
**Date:** <date> | **Regulatory context:** <HIPAA / SOC 2 / GDPR / None>

---

## Data Asset Inventory and Classification

| Data Asset | Format | Location | Classification | Owner | Retention | Last Reviewed |
|-----------|--------|---------|--------------|-------|---------|-------------|
| Patient records | HL7/Database | AdvancedMD | Restricted (PHI) | Allevio IT | 7 years | <date> |
| Employee payroll | CSV, QB | QuickBooks | Restricted | Finance | 7 years | <date> |
| Customer contracts | PDF | SharePoint | Confidential | Legal | 5 years | <date> |
| LP contact information | CRM | GoHighLevel | Restricted | HIVE Partners | 7 years | <date> |
| Financial statements | Excel, PDF | SharePoint | Confidential | Finance | 7 years | <date> |
| M&A deal documents | PDF, Word | SharePoint (restricted) | Restricted | Dr. Lewis | 7 years | <date> |
| Meeting notes | OneNote, Granola | M365 / Granola | Internal | Individual | 3 years | N/A |
| Website copy | HTML | Public site | Public | Marketing | Indefinite | N/A |

---

## Classification Gaps / Issues

| Issue | Data Asset | Risk | Action | Owner | Due |
|-------|-----------|------|--------|-------|-----|
| Customer data in unsecured shared folder | Customer list (SharePoint) | High | Move to restricted access folder, apply permissions | IT Manager | <date> |
| No encryption on payroll CSV exports | Payroll exports | High | Enforce encryption on exports | Finance + IT | <date> |
| PHI data found on unmanaged endpoint | Allevio clinical notes | Critical | Remove immediately; investigate how it got there | IT + Compliance | Immediate |

---

## Access Control Alignment

| Data Asset | Current Access | Required Access (by classification) | Gap |
|-----------|--------------|-------------------------------------|-----|
| Patient records | All Allevio staff | Clinical staff only | ❌ Over-provisioned |
| Financial statements | Finance + All managers | Finance + C-suite | ❌ Partially over-provisioned |
| M&A documents | IT + Legal + Exec | Dr. Lewis + Legal | ❌ IT access not needed |

---

## Classification Policy Summary

**Policy effective date:** <date>
**Owner:** IT Manager + Dr. Lewis
**Review cycle:** Annual + after any data breach or new regulation

All MBL employees must classify new data assets at creation. When in doubt, classify one tier higher. Contact IT Manager with classification questions.
```

## Output Contract
- Every Restricted data asset has a named owner and documented retention period
- Classification gaps always surface over-provisioned access — the most common source of data exposure
- PHI findings always treated as Critical and escalated immediately — no waiting for the next report cycle
- HITL required: Dr. Lewis reviews all Restricted data classification; IT Manager and Legal review any over-provisioned access to Restricted data; Allevio compliance officer reviews PHI classification

## System Dependencies
- **Reads from:** System inventory, access control lists, SharePoint permissions, cloud storage (provided)
- **Writes to:** Nothing (classification inventory for HITL review and access control action)
- **HITL Required:** Dr. Lewis reviews Restricted data inventory; IT Manager executes access control remediation; Legal reviews data sharing agreements; Allevio compliance officer reviews PHI

## Test Cases
1. **Golden path:** Allevio data classification audit → PHI correctly identified in AdvancedMD (Restricted), 2 classification gaps found (customer data in unsecured folder), 3 access control mismatches resolved
2. **Edge case:** New AI tool (e.g., Krista.ai) is accessing data that includes Restricted classification → immediately assesses data flows, confirms DPA in place with Krista.ai, ensures PHI is not processed without BAA if HIPAA applies
3. **Adversarial:** Department head shares a customer data spreadsheet over personal Gmail → classifies the data (Confidential), documents the policy violation, works with HR for appropriate response, adds DLP (data loss prevention) tooling to IT risk register

## Audit Log
Data inventories retained by entity and date. Classification changes documented. Policy violations and remediation actions tracked.

## Deprecation
Retire when entity deploys a DLP or data governance platform (Microsoft Purview, Varonis, BigID) with automated data discovery, classification, and policy enforcement.
