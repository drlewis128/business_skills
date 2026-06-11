---
name: privileged-access-manager
description: "Design and audit privileged access management controls. Use when the user says 'privileged access', 'PAM', 'admin accounts', 'privileged accounts', 'service accounts', 'admin access review', 'least privilege', 'domain admin', 'admin rights', or 'who has admin access'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <audit|design|review>] [--scope <M365|AD|all>]"
---

# Privileged Access Manager

Design and audit privileged access management controls. Privileged accounts — admin accounts, service accounts, shared admin credentials — are the crown jewels of any attacker. Compromising a single privileged account gives an attacker everything. This skill designs, audits, and enforces privileged access controls across the MBL portfolio Microsoft 365 / Entra ID environment.

## When to Use
- Audit who currently has admin access and why
- Building a PAM program from scratch
- Before a SOC 2 or cyber insurance audit
- After a personnel change (admin leaving, role change)
- Quarterly privileged account review (best practice)
- Incident response — identify what a compromised account could reach

## Privileged Account Categories

| Category | Description | Risk Level |
|---------|-----------|----------|
| **Global Administrator (M365)** | Full control of M365 tenant — can delete accounts, reset any password, access all data | Critical |
| **Domain Admin (on-prem AD)** | Full control of on-prem Active Directory | Critical |
| **Security Administrator** | Manages security settings, policies, Defender | High |
| **Exchange Administrator** | Full access to all mailboxes | High |
| **SharePoint Administrator** | Full access to all SharePoint/OneDrive | High |
| **Service accounts** | Automated processes with admin-level access | High |
| **Break-glass accounts** | Emergency admin accounts used only when normal admin accounts fail | High |
| **Application-level admins** | Admin in QuickBooks, Bill.com, GoHighLevel, Monday.com | Medium-High |

## PAM Principles

```
1. Least Privilege: Grant minimum access required for the role
2. Just-in-Time (JIT): Elevate only when needed, auto-revoke after task
3. Segregation of Duties: No one person can both authorize and execute high-risk actions
4. Named Accounts: No shared admin accounts — every admin action traceable to a person
5. MFA Required: All privileged accounts require MFA — hardware keys preferred
6. Regular Review: Quarterly access review; remove promptly when role changes
7. Break Glass Accounts: Emergency admin with strong password, MFA, monitored
```

## Output Format

```markdown
# Privileged Access Audit — <Entity>
**Date:** <date> | **Auditor:** Dr. John Lewis / IT Manager
**Scope:** Microsoft 365 Entra ID + on-premises AD + business applications

---

## Privileged Account Inventory

### Global Administrators (M365)

| Account | User | MFA | Break Glass? | Justified? | Last Used | Action |
|---------|------|-----|------------|-----------|---------|--------|
| admin@<domain> | John Smith | ✅ Authenticator | ❌ | ✅ IT Manager | 2 days ago | None |
| old_admin@<domain> | [Former employee] | ❌ | ❌ | ❌ | 6 months ago | 🔴 Remove immediately |
| svc_integration@<domain> | Service account | ❌ | ❌ | ❌ Admin not needed | Never | Downgrade to minimal role |
| breakglass@<domain> | Break glass | ✅ FIDO2 | ✅ | ✅ | Accessed during audit | ✅ |

**Global Admin count:** 4 (target: ≤ 3 named humans + 1 break glass)
**MFA compliance:** 75% (target: 100%) — 1 account without MFA

---

### High-Privilege Accounts (Security, Exchange, SharePoint Admin)

| Account | Role | MFA | Last Review | Action |
|---------|------|-----|------------|--------|
| <account> | Security Admin | ✅ | 2 months ago | None |
| <account> | Exchange Admin | ✅ | 2 months ago | None |
| <account> | SharePoint Admin | ❌ | 8 months ago | 🔴 Add MFA + re-review |

---

### Service Accounts

| Account | Purpose | Privileged Role | Necessary? | Action |
|---------|---------|--------------|---------|--------|
| svc_backup | Backup automation | Contributor | ✅ Yes | Review permissions scope |
| svc_azure | Azure automation | Owner | ❌ Over-privileged | Reduce to Contributor minimum |

---

### Business Application Admins

| Application | Admin Users | Last Reviewed | Notes |
|-----------|-----------|-------------|-------|
| QuickBooks | John Smith, Jane Doe | 6 months | Reduce to 1 if possible |
| Bill.com | John Smith | 6 months | OK — finance role |
| GoHighLevel (CRM) | Marketing Lead | 3 months | OK |
| Monday.com | 4 users | Never reviewed | Review overdue |

---

## Critical Findings

| Finding | Risk | Recommended Action | Owner | Due |
|---------|------|------------------|-------|-----|
| Former employee Global Admin account active | Critical | Disable immediately | IT Manager | Today |
| Service account svc_integration has Global Admin | High | Reduce to minimum required role | IT Engineer | This week |
| Exchange Admin without MFA | High | Enroll in MFA before next login | IT Tech | 48 hours |
| Monday.com admin access not reviewed | Medium | Conduct access review | IT Manager | 30 days |

---

## PAM Program Maturity

| Principle | Status | Evidence |
|---------|--------|---------|
| Least privilege | 🟡 Partial | Service accounts over-privileged |
| Just-in-time elevation | ❌ Not in place | PIM not deployed |
| Named accounts only | 🟡 Partial | 1 shared service account |
| MFA on all privileged accounts | 🟡 Partial | 75% compliance |
| Quarterly access review | ❌ Last review 8 months ago | |
| Break glass account | ✅ In place | Tested and documented |

**Recommended next step:** Deploy Entra PIM (Privileged Identity Management) — provides JIT elevation and automatic audit trail.
```

## Output Contract
- Former employee or terminated accounts always flagged as Critical — immediate removal
- Service accounts with overly broad privileges always flagged — principle of least privilege
- MFA gaps on privileged accounts always flagged as High or Critical — no exceptions
- Review frequency tracked — accounts not reviewed in 90 days are flagged
- HITL required: IT Manager approves all account changes; Dr. Lewis reviews Global Admin findings; any removal of a business-critical account requires Dr. Lewis sign-off

## System Dependencies
- **Reads from:** Entra ID admin role assignments, M365 admin center, AD privileged groups, application admin lists (provided)
- **Writes to:** Nothing (audit report for HITL action)
- **HITL Required:** IT Manager executes account changes; Dr. Lewis approves removal of accounts associated with active employees; Allevio compliance officer reviews PHI-adjacent admin accounts

## Test Cases
1. **Golden path:** Quarterly audit → 1 former employee Global Admin (disabled immediately), 1 service account over-privileged (downgraded), 1 Exchange Admin without MFA (enrolled), Monday.com access review completed; all actions assigned with owners and deadlines
2. **Edge case:** Employee changes roles from IT Manager to Operations — what admin access should they keep? → review previous admin roles, retain only what the new role requires, document the role change and access adjustments
3. **Adversarial:** IT team argues a service account needs Global Admin "because the vendor said so" → requires vendor to provide least-privilege justification in writing; if vendor cannot scope their requirements, escalate to Dr. Lewis; Global Admin for a service account is a red flag for vendor security practices

## Audit Log
Privileged account inventories retained quarterly. Changes to admin accounts documented with justification. Former employee account removals logged with dates.

## Deprecation
Retire when Entra PIM (Privileged Identity Management) is deployed and providing automated just-in-time access with full audit trail.
