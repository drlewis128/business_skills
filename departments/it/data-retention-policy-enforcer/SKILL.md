---
name: data-retention-policy-enforcer
description: "Enforce data retention policies and manage data lifecycle. Use when the user says 'data retention', 'data lifecycle', 'how long do we keep data', 'data deletion', 'retention policy', 'legal hold', 'purge old data', or 'records retention'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <audit|enforce|policy>] [--regulation <hipaa|sox|gdpr|state>]"
---

# Data Retention Policy Enforcer

Enforce data retention policies and manage the data lifecycle. Keeping data too long is a liability (security risk + compliance exposure); deleting it too soon is also a liability (legal hold violation, audit failure). The right retention policy is specific to data type and regulation — not a blanket "keep everything forever."

## When to Use
- Building or reviewing the data retention policy
- Annual data purge (delete what's past retention)
- Legal hold request (suspend deletion for litigation)
- Compliance audit (SOC 2, HIPAA, GDPR each have retention requirements)
- Storage optimization (old data is expensive to keep if you're paying per GB)

## Retention Requirements by Data Type

| Data Type | Regulation | Minimum Retention | Recommended |
|---------|-----------|-----------------|------------|
| **Financial records** (invoices, statements, QB) | SOX / IRS | 7 years | 7 years |
| **Employee records** (payroll, benefits, performance) | FLSA / State | 3-7 years | 7 years |
| **Patient records** (Allevio PHI) | HIPAA | 6 years from creation or last use | 7 years |
| **Customer contracts** | State law | Contract term + 3-6 years | 7 years |
| **Email communications (business)** | SOX / Company policy | 3-7 years (varies by role) | 5 years |
| **Meeting recordings** | Company policy | 90 days (standard) | 90 days |
| **Application logs** | Security / SOC 2 | 12 months | 24 months |
| **Backups** | DR policy | Per backup rotation | 90 days rolling |
| **GDPR personal data** (EU residents) | GDPR | Delete when purpose expires | No longer than purpose |
| **Marketing opt-out records** | CAN-SPAM / GDPR | 3+ years | 7 years |
| **LP financial records** (HIVE) | SEC regulations | 5-7 years | 7 years |

## Output Format

```markdown
# Data Retention Policy — <Entity>
**Effective date:** <date> | **Owner:** IT Manager + Legal | **Review cycle:** Annual

---

## Retention Schedule

| Data Category | System(s) | Retention Period | Deletion Method | Legal Hold? |
|-------------|---------|----------------|----------------|-----------|
| Financial records | QuickBooks, SharePoint | 7 years from close of tax year | Secure delete (no recovery) | Hold for 90 days if legal notified |
| Employee records | HRIS, HR SharePoint | 7 years from separation | Secure delete | HR notified |
| Patient records (PHI) | AdvancedMD | 7 years (HIPAA) | Secure delete + destruction certificate | As required |
| Customer contracts | SharePoint (Legal) | 7 years | Secure delete | Legal directs |
| Email | Microsoft 365 | 5 years (auto-purge) | M365 retention labels | Litigation hold in M365 |
| Meeting recordings | M365 / Granola | 90 days | Auto-delete (policy) | On request |
| Security / audit logs | SIEM / IT logs | 24 months | Auto-purge after retention | Do not delete under investigation |
| Application data | [App-specific] | Per agreement | Per vendor process | — |

---

## Current Retention Audit

| Data Category | Oldest Data Found | Policy Retention | Action Needed |
|-------------|----------------|----------------|--------------|
| Meeting recordings | 18 months old | 90 days | 🔴 Purge recordings > 90 days immediately |
| IT support tickets | 5 years | 3 years | 🟡 Purge tickets > 3 years old |
| Financial records | 8 years | 7 years | 🔴 Archive or delete records > 7 years old |
| Employee records | 3 years (all current/recent) | 7 years | 🟢 No action |

---

## Legal Hold Register

| Hold ID | Reason | Affected Data | Systems | Initiated By | Start Date | End Date |
|---------|--------|-------------|---------|------------|---------|---------|
| LH-001 | Litigation — [matter name] | Email, contracts | M365, SharePoint | Legal | <date> | Active |

**Legal hold overrides all retention policies — data under hold must not be deleted regardless of retention period.**

---

## Deletion Schedule (Next 90 Days)

| Data Category | Volume | Deletion Date | Approval | Owner |
|-------------|--------|-------------|---------|-------|
| Meeting recordings > 90 days | ~200 GB | <date> | IT Manager | IT |
| Support tickets > 3 years | ~5 GB | <date> | IT Manager | IT |

---

## Employee Communication

All employees must be notified of:
1. What data they create is retained and for how long
2. That meeting recordings auto-delete after 90 days (no manual download needed)
3. That legal holds suspend deletion — they will be notified if their data is under hold
4. How to request data deletion for GDPR/CCPA requests (contact IT)
```

## Output Contract
- Legal holds always supersede retention policies — no deletion under legal hold without Legal clearance
- GDPR deletion requests always documented and responded to within 30 days (legal requirement)
- Purge actions always require IT Manager approval before execution
- HITL required: Legal reviews all legal holds; IT Manager approves all deletion events; Dr. Lewis reviews for any deletion of > 1 TB or any data that may be subject to active litigation

## System Dependencies
- **Reads from:** Data inventory, system storage, M365 retention labels, legal hold status (provided)
- **Writes to:** Nothing (retention policy and audit for HITL review; deletions executed by IT after approval)
- **HITL Required:** Legal reviews and issues legal holds; IT Manager approves bulk deletions; Dr. Lewis informed of deletions > 1 TB or any litigation-adjacent data

## Test Cases
1. **Golden path:** Annual retention audit → 200 GB of meeting recordings > 90 days found, 5 GB of old support tickets, no PHI retention violations; deletion schedule created and approved by IT Manager; Legal confirms no active holds on the affected data
2. **Edge case:** GDPR deletion request received from EU customer → process within 30 days: identify all data for this individual, confirm legal basis for any data that must be retained (contracts), delete the rest, document the deletion and response, send confirmation to requestor
3. **Adversarial:** Finance team wants to keep records longer than policy "just in case" → explains over-retention liability (GDPR fines for unnecessary data, greater breach impact), notes that IRS and SOX already require 7 years (which is the current policy), recommends consulting Legal before extending any retention period

## Audit Log
Retention policy retained by version and date. Deletion events documented with volume, approval, and execution date. Legal holds registered and tracked.

## Deprecation
Retire when entity deploys a records management platform (Microsoft Purview, Alfresco, M-Files) with automated retention policy enforcement, legal hold management, and audit trails.
