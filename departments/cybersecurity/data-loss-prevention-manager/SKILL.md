---
name: data-loss-prevention-manager
description: "Design and manage Data Loss Prevention (DLP) policies. Use when the user says 'DLP', 'data loss prevention', 'prevent data leakage', 'sensitive data leaving', 'M365 DLP', 'PHI leaving the system', 'email DLP', 'data exfiltration prevention', or 'we need to stop data from leaking'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <design|audit|incident>] [--data-type <PHI|PII|financial|all>]"
---

# Data Loss Prevention Manager

Design and manage Data Loss Prevention (DLP) policies. DLP prevents sensitive data from leaving the organization's control — via email, Teams, SharePoint sharing, USB, or cloud upload. For MBL portfolio companies, the highest-priority DLP scenarios are PHI leaving Allevio systems (HIPAA requirement) and financial data leaving via email. This skill designs, deploys, and manages DLP policies in Microsoft Purview (M365 DLP).

## When to Use
- Building a DLP program from scratch
- Configuring M365 / Microsoft Purview DLP policies
- Responding to a DLP alert (data leaving the organization)
- Compliance requirement — HIPAA requires PHI safeguards, SOC 2 requires data protection
- Post-incident — data was exfiltrated, prevent recurrence

## DLP Data Types for MBL Portfolio

| Data Type | Where It Lives | Risk | DLP Priority |
|---------|--------------|------|------------|
| **PHI (Protected Health Information)** | Allevio — AdvancedMD, emails | HIPAA breach — fines + notification | Critical |
| **PII (Personally Identifiable Information)** | HR, CRM (GoHighLevel), M365 | State breach notification laws | High |
| **Financial data** | QuickBooks, Bill.com, emails | BEC fraud, financial exposure | High |
| **LP data (HIVE Partners)** | Emails, SharePoint | Regulatory, LP trust | High |
| **Credentials / secrets** | M365, code repos | Account compromise | High |
| **Strategic/confidential business data** | SharePoint, email, Teams | Competitive exposure | Medium |

## Microsoft Purview DLP Policy Framework

```
Microsoft Purview DLP can detect sensitive data in:
- Exchange email (sent and received)
- SharePoint Online
- OneDrive for Business
- Teams messages
- Endpoint devices (with Defender integration)

Actions available:
- Block (with override option) — most restrictive
- Block and notify user — educate while protecting
- Audit only — detect without blocking
- Notify and allow — low risk scenarios
```

## Output Format

```markdown
# DLP Policy Design / Audit — <Entity>
**Date:** <date> | **Platform:** Microsoft Purview (M365)
**Scope:** Email / SharePoint / Teams / Endpoints / All
**Designed by:** Dr. John Lewis / IT Manager

---

## DLP Policy Inventory

| Policy | Data Type | Scope | Action | Status | Last Review |
|--------|---------|-------|--------|--------|-----------|
| PHI Detection — Allevio | PHI (SSN, ICD codes, MRN) | Email, SharePoint, Teams | Block external + Notify | ✅ Active | 3 months ago |
| PII — All Entities | SSN, credit card, passport | Email, SharePoint | Block external + Audit | ✅ Active | 3 months ago |
| Financial Data — Outbound | Financial keywords + patterns | Email | Notify + Audit | 🟡 Audit only | 6 months ago |
| Credentials / Secrets | API keys, password patterns | Teams, SharePoint | Block + Notify | ❌ Not configured | N/A |

---

## DLP Policy: PHI Detection (Example)

**Policy name:** Allevio PHI Protection
**Entity scope:** Allevio users only
**Data types detected:**
- Social Security Numbers
- US medical record numbers (MRN)
- ICD-10 codes in context
- HIPAA-classified PHI sensitive types (M365 built-in)

**Detection conditions:**
- Matches >1 PHI identifier in message or document
- Sent to external recipient outside @allevio.com domain

**Actions:**
- Block sending (with admin override available)
- Notify the user: "This message appears to contain PHI. Sharing PHI with unauthorized recipients violates HIPAA. If you believe this is a mistake, contact IT."
- Alert IT Manager and Dr. Lewis
- Log to compliance audit trail

**Exceptions:**
- Authorized BAA partner domains (billing partner, AdvancedMD)
- Approved clinical communication tools

---

## DLP Alert Response

| Alert | Data Type | User | External Recipient | Action |
|-------|---------|------|----------------|--------|
| PHI in email blocked | Patient SSN + MRN | Jane Smith | gmail.com | ✅ Blocked — user notified, IT investigated |
| Large CSV with PII | 500 rows SSN | John Doe | personal OneDrive | 🔴 Block, investigate — data breach assessment |
| Financial report external share | Revenue data | CFO | Investor | ✅ Override approved by IT Manager + Dr. Lewis |

---

## DLP Gap Assessment

| Gap | Risk | Action | Priority |
|-----|------|--------|---------|
| No DLP policy for credentials/API keys | High — accidental secret exposure | Configure Purview sensitive info type for common API key patterns | High |
| Financial data policy is audit-only | Medium | Upgrade to notify + block external for high-confidence matches | Medium |
| Endpoints not covered by DLP | High — USB exfiltration possible | Enable Purview endpoint DLP via Defender integration | High |
```

## Output Contract
- PHI DLP policies always include block + alert — audit-only is insufficient for HIPAA
- Exception processes always documented — "authorized override" must be tracked and auditable
- DLP alerts always reviewed — audit mode alerts without review are wasted signals
- Endpoint DLP coverage always assessed — email-only DLP misses USB and cloud uploads
- HITL required: IT Manager reviews all DLP override requests; Dr. Lewis approves any policy change for PHI; Allevio compliance officer reviews PHI DLP policy annually; Legal reviews DLP policy for employee monitoring compliance

## System Dependencies
- **Reads from:** Microsoft Purview compliance center, DLP alert reports (provided)
- **Writes to:** DLP policy configurations in Microsoft Purview (IT Manager executes)
- **HITL Required:** IT Manager deploys and manages policies; Dr. Lewis approves PHI DLP policies; Legal ensures employee monitoring compliance; Allevio compliance officer reviews Allevio-specific policies

## Test Cases
1. **Golden path:** Allevio employee emails a document containing 3 patient SSNs and ICD codes to a personal Gmail → PHI DLP policy blocks the email, user sees the notification, IT Manager alerted, documented in compliance audit trail, no breach
2. **Edge case:** Authorized billing partner's domain not on the exception list → legitimate clinical email blocked; IT Manager adds the domain to the exception list with Dr. Lewis approval and documentation of the BAA relationship
3. **Adversarial:** Employee argues DLP is "slowing down work" and asks to be excluded → no individual user exceptions to PHI DLP — HIPAA applies to all workforce members; offers to review specific workflows and create proper authorized exceptions for legitimate use cases (BAA partners)

## Audit Log
DLP policy configurations retained with version history. DLP alerts logged. Override approvals documented. PHI DLP audit logs retained for HIPAA (6 years).

## Deprecation
Retire manual DLP management when Microsoft Purview Information Protection is fully deployed with automated labeling, encryption, and DLP enforcement integrated with the entire M365 ecosystem.
