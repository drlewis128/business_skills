---
name: ai-system-access-manager
description: "Manage system access provisioning and offboarding for MBL Partners and portfolio companies. Use when the user says 'system access', 'access request', 'user access', 'provision access', 'onboarding access', 'new hire access', 'new employee access', 'access for new hire', 'set up access', 'access management', 'access control', 'access review', 'access audit', 'who has access to what', 'user permissions', 'user roles', 'access permissions', 'revoke access', 'offboarding access', 'terminated employee access', 'remove access', 'access removal', 'contractor access', 'vendor access', 'Microsoft 365 access', 'Teams access', 'SharePoint access', 'QuickBooks access', 'Monday.com access', 'GoHighLevel access', 'Bill.com access', 'Krista access', 'system permissions audit', 'stale access', 'least privilege', 'access entitlements', 'access provisioning checklist', 'IT access', or 'access policy'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--user <name>] [--entity <mbl|allevio|hive|column6>] [--action <provision|revoke|audit|review>]"
---

# AI System Access Manager

Manage system access provisioning and offboarding for MBL Partners and portfolio companies — ensuring new users get the right access on Day 1, departed users lose access on their last day, and access rights are reviewed quarterly for least-privilege compliance. Stale access at a PE firm with financial and LP data is a security and compliance risk.

## When to Use
- Onboarding a new employee or contractor to any MBL entity
- Offboarding a departed employee or contractor
- Quarterly access review (who has access to what)
- Provisioning access to a new vendor or integration

## System Access Management Framework

```
MBL ACCESS ARCHITECTURE:
  Identity: Microsoft Entra ID (Azure AD) — SSO source for all MBL systems
  Systems requiring access management:
    Microsoft 365 (Teams; Outlook; SharePoint; OneDrive): Dr. Lewis provisions via M365 Admin
    QuickBooks: Dr. Lewis provisions per entity; access levels (View / Full access / Admin)
    Monday.com: Dr. Lewis provisions; boards scoped by entity
    GoHighLevel: Dr. Lewis provisions per sub-account (MBL; North Vista — isolated)
    Bill.com: Dr. Lewis provisions; limit Write access strictly
    Krista.ai: Dr. Lewis provisions; entity-level isolation enforced
    AdvancedMD (Allevio): Allevio entity CEO provisions; Dr. Lewis audits
    Covercy (HIVE): HIVE entity CEO provisions; Dr. Lewis audits
    
ACCESS PROVISIONING CHECKLIST (new hire / contractor):
  Day 1 (must be complete before person starts work):
    □ Microsoft 365 account created (M365 Admin; licensed appropriately)
    □ Microsoft Entra ID group added (entity group; role group)
    □ SharePoint access scoped (entity-specific folders only; not all-MBL unless required)
    □ Teams channels joined (entity-specific; not all-MBL unless role requires)
    □ Monday.com boards provisioned (entity-specific boards only)
    □ GHL sub-account access (only if role requires; MBL or North Vista — not both unless Managing Partner)
    □ QuickBooks access (view only for entity reporting; full access only for finance role)
    □ Bill.com access (view only for most roles; never Write without explicit authorization)
    □ Credentials delivered securely (not via email; via secure link or in-person)
    
  Contractor-specific:
    □ Time-limited access (M365 guest account; expires on contract end date)
    □ Scoped to project folders only (not entity-wide SharePoint)
    □ No Bill.com access (contractors don't approve payments)
    □ BAA if contractor is Allevio-adjacent and may encounter PHI
    
ACCESS OFFBOARDING CHECKLIST (same-day termination — no exceptions):
  □ Microsoft 365 account disabled immediately (M365 Admin; blocks all M365 access + SSO)
  □ Sessions revoked in Microsoft Entra ID (force sign-out all active sessions)
  □ Monday.com account deactivated
  □ GHL account deactivated (if provisioned)
  □ QuickBooks user disabled (if provisioned)
  □ Bill.com user disabled (if provisioned)
  □ Krista.ai access revoked (if provisioned)
  □ MFA tokens reviewed (hardware tokens or authenticator — deregister)
  □ IT equipment return confirmed (Mac/PC; if applicable)
  □ Access log preserved (for audit; do not delete)
  
QUARTERLY ACCESS REVIEW:
  Audit all active users in M365 Admin → verify employment status for each
  Audit QuickBooks users → verify role-appropriate access level
  Audit Monday.com members → deactivate inactive accounts (no login in 60+ days)
  Audit GHL users → verify entity isolation (no MBL user in North Vista without authorization)
  Check for stale contractor access (contract end date passed → access should be revoked)
  Document review in access audit log
  
ENTITY ISOLATION REQUIREMENTS:
  Allevio users: access to Allevio SharePoint and systems ONLY (not HIVE; not Column6)
  HIVE users: access to HIVE systems ONLY (Covercy; HIVE QuickBooks; HIVE boards)
  Column6 users: access to Column6 systems ONLY
  MBL-level users (Dr. Lewis; Matt Mathison; Jimmy Lindsley): cross-entity access by role
  No cross-entity access without Dr. Lewis explicit authorization and documentation
```

## Output Format

```markdown
# System Access Action — [New Hire / Offboarding / Quarterly Review]
**User:** [Name] | **Entity:** [MBL/Allevio/HIVE/Column6] | **Date:** [Date]
**Action type:** [Provisioning / Offboarding / Audit]

---

## Access Provisioning / Offboarding Checklist
| System | Action | Status | Date Completed |
|--------|--------|--------|---------------|
| Microsoft 365 | Created/Disabled | ✅ | [Date] |
| QuickBooks | View access / Disabled | ✅ | |
| Monday.com | Boards provisioned / Deactivated | ✅ | |
| GHL | N/A / Deactivated | ✅ | |
| Bill.com | N/A / Disabled | ✅ | |

---

## Access Scope
[Brief description of what the user can access and what is excluded]

## Notes
[Any exceptions; time-limited access expiry; BAA requirement; contractor notes]
```

## Output Contract
- Offboarding is same-day, no exceptions — when an employee or contractor's employment ends, their digital access ends the same day; Dr. Lewis does not wait for IT, for HR confirmation, or for the person to "wrap up their last few projects"; stale access at a PE firm is a direct security and financial risk (access to QuickBooks; Bill.com; LP documents after termination); the offboarding checklist starts with Microsoft 365 account disabled because M365 is the SSO source — disabling M365 blocks Teams; Outlook; SharePoint; and any SSO-linked system in one action; everything else on the checklist is belt-and-suspenders
- Access review is not a formality — the quarterly access review finds stale access that the provisioning process missed; contractors whose projects ended but whose M365 guest accounts were not deactivated; employees who changed roles but whose access wasn't adjusted to reflect least privilege; the review takes 30 minutes per entity and prevents access accumulation that creates both a security risk and an audit finding; Dr. Lewis documents every review and every access change discovered
- HITL required: new hire provisioning → Dr. Lewis provisions; entity CEO confirms role and access scope before Day 1; contractor provisioning → entity CEO confirms scope and contract end date; offboarding → entity CEO or Dr. Lewis initiates; access disabled same day (no delay for approval — speed is the security control); quarterly review → Dr. Lewis completes; Matt Mathison sees summary; cross-entity access → Dr. Lewis + Matt Mathison authorize explicitly; Bill.com Write access → Dr. Lewis + Matt Mathison both authorize

## System Dependencies
- **Reads from:** Microsoft 365 Admin (user list; license status; group membership); Entra ID (SSO; MFA; session management); QuickBooks company admin (user list; access levels per entity); Monday.com admin (member list; board access); GHL agency admin (user list; sub-account access); Bill.com admin (user list; permissions); Krista.ai admin (user list); HR records (employment status; role; contract end dates)
- **Writes to:** Microsoft 365 Admin (account creation; disabling; group management); Entra ID (group membership; session revocation); system admin consoles (all MBL systems); access audit log (SharePoint → MBL → IT → Access Audit → [YYYY] → [Quarter])
- **HITL Required:** New hire provisioning → entity CEO confirms role/scope; contractor → contract end date confirmed; offboarding → same day (no delay); quarterly review → Dr. Lewis + Matt Mathison sees summary; cross-entity access → Dr. Lewis + Matt Mathison; Bill.com Write → Dr. Lewis + Matt Mathison both authorize; Allevio PHI-adjacent roles → BAA before access

## Test Cases
1. **Golden path:** Allevio new hire — Account Executive starts Monday June 30. Entity CEO submits access request Thursday June 27: M365 account; Allevio SharePoint (sales and employer onboarding folders); Monday.com Allevio board; GHL Allevio sub-account; no QuickBooks access; no Bill.com access. Dr. Lewis creates M365 account Friday June 28; sets license (M365 Business Standard); adds to Allevio Entra group; provisions SharePoint (Allevio → Sales → Employer Onboarding folders only, not finance); Monday.com Allevio board (no MBL board); GHL Allevio sub-account. Credentials delivered to entity CEO securely. Ready for Day 1.
2. **Edge case:** A contractor's engagement ends but they send an email asking to "keep my access for a few days to finish up documentation" → Dr. Lewis: "I understand the request, but MBL's policy is that access ends on the contract end date, not when the documentation is finished. If there's documentation that needs to be completed, let's complete it before the contract end date — that's the correct approach. If you've already past the end date, I'll need to revoke access today; any documentation you had in progress should be shared to your MBL contact before revocation. I'll give you a 2-hour window to transfer anything in progress, then the M365 account will be disabled. Please coordinate with [entity CEO] immediately."
3. **Adversarial:** Quarterly access review finds that a former Allevio employee (departed 90 days ago) still has an active M365 guest account with access to Allevio SharePoint → Dr. Lewis: "Immediate action: disable the M365 account now. Log: stale access found — [name]; departed [date]; access not revoked on termination. Root cause: their termination was handled by the entity CEO without notifying Dr. Lewis — offboarding checklist was not followed. I'll disable the account; audit the access logs for any activity in the past 90 days; if there is any activity post-departure, escalate to legal counsel immediately for assessment. Going forward: entity CEO must notify Dr. Lewis on any termination the same day. I'll add this to the offboarding protocol: 'Entity CEO texts Dr. Lewis on termination day; Dr. Lewis confirms M365 disable within 2 hours.'"

## Audit Log
Access provisioning records (all users; all systems; all dates). Offboarding records (same-day confirmation). Quarterly access review records (complete; including changes found and made). Stale access incidents. Cross-entity access authorizations (explicit documentation). Bill.com Write access authorizations. Allevio BAA records (PHI-adjacent contractors). Post-departure activity reports.

## Deprecation
Access checklist updated when MBL adds new systems or removes systems. Entity isolation rules updated when portfolio changes (new entity; exit). Quarterly review cadence reviewed if team size changes significantly. Contractor access policy reviewed when vendor/contractor patterns change. Allevio PHI-adjacent contractor policy reviewed annually.
