---
name: sec-iam-manager
description: "Manage identity and access management for MBL portfolio companies. Use when the user says 'identity and access management', 'IAM', 'user access', 'access management', 'user provisioning', 'deprovisioning', 'offboarding access', 'remove access', 'revoke access', 'access review', 'who has access', 'access audit', 'role-based access', 'RBAC', 'least privilege', 'principle of least privilege', 'access control', 'user accounts', 'user account management', 'account provisioning', 'account deprovisioning', 'terminated employee access', 'employee offboarding access', 'new employee access', 'onboarding access', 'access request', 'access approval', 'access recertification', 'quarterly access review', 'access log', 'shared accounts', 'generic accounts', 'service accounts', 'admin accounts', 'privileged accounts', 'M365 access', 'SharePoint access', 'GoHighLevel access', 'GHL access', 'AdvancedMD access', 'Covercy access', 'QuickBooks access', 'Krista access', or 'Monday.com access'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <provision|deprovision|review|audit>] [--system <m365|ghl|advancedmd|covercy|qb>]"
---

# Sec IAM Manager

Manage identity and access management for MBL portfolio companies — controlling who has access to what systems, ensuring access is provisioned correctly when employees join, removed immediately when they leave, and reviewed quarterly to catch privilege drift. IAM failures are the #1 cause of unauthorized data access in small organizations: terminated employees still in systems, over-privileged accounts, shared credentials, no MFA. These are all fixable with process, not technology spend.

## When to Use
- Provisioning access for a new employee
- Removing access for a terminated or transferred employee
- Running the quarterly access review
- Auditing current user access against the least privilege standard

## IAM Framework

```
IDENTITY GOVERNANCE PRINCIPLES:
  1. Least privilege: every user gets the minimum access needed for their job
  2. Need to know: access is granted based on job function, not seniority or relationship
  3. Immediate deprovisioning: terminated employee access removed SAME DAY as termination
  4. No shared accounts: every user has their own account (no team logins; no shared passwords)
  5. MFA everywhere: all accounts with external access require MFA (M365; GHL; Covercy; etc.)
  6. Review cycle: quarterly access review — verify all accounts are still needed and appropriately scoped

SYSTEM ACCESS MAP (MBL portfolio):

  Microsoft 365 (all entities — shared tenant; entity-segmented):
    Admin roles: Global Admin (Dr. Lewis only); Exchange Admin; SharePoint Admin; Security Admin
    Standard users: E-mail + Teams + SharePoint (entity-scoped; no cross-entity SharePoint)
    Licensing: Business Premium preferred (includes Defender for Business + Intune)
    MFA: Required for all accounts (enforced via Conditional Access or Security Defaults)
    Shared mailboxes: allowed for functional mailboxes (info@; billing@); no individual passwords
    
  GoHighLevel (CRM — MBL, North Vista, Allevio):
    Admin: Dr. Lewis + entity CEO; pipeline and workflow management
    Sales rep: own contact records; entity-scoped access; no cross-entity record access
    No GHL access for terminated employees; removed from GHL same day as HR notification
    
  AdvancedMD (Allevio — EHR/clinical management):
    Access control: Allevio entity CEO + Dr. Lewis (oversight); clinical staff (PHI access)
    PHI access: minimum necessary standard (clinical staff access only PHI needed for their role)
    External access: strictly prohibited; no vendor or partner access without BAA + Dr. Lewis approval
    Access review: quarterly; Dr. Lewis reviews all active AdvancedMD accounts
    
  Marshall Medical Billing (Allevio — RCM; PHI):
    Access: billing team only; BAA in place; Dr. Lewis oversight
    PHI in billing data: minimum necessary; audit log review quarterly
    
  Covercy (HIVE — LP management):
    Admin: HIVE entity CEO + Dr. Lewis
    LP data access: need-to-know only; no external access without entity CEO + Dr. Lewis approval
    API credentials: stored in password manager; rotated quarterly; not in code repositories
    
  QuickBooks (Finance — entity-separated):
    Admin: Dr. Lewis (all entities); entity controller (entity-specific)
    Read access: Dr. Lewis; entity CEO (read-only view)
    No employee self-service QB access beyond their own expense submission
    
  Krista.ai (MBL orchestration):
    Admin: Dr. Lewis; Krista.ai technical team (under MSA/BAA)
    Integration credentials: entity-separated; no cross-entity data flow without Dr. Lewis approval
    
  Monday.com (all entities — project management):
    Admin: Dr. Lewis; entity CEO
    Member: role-based by entity board/workspace
    Viewer: for read-only stakeholders; no create/edit access

ACCESS PROVISIONING PROCESS (new employee):
  Day 1:
    HR → IT notification (minimum 2 days before start preferred; same-day OK)
    IT creates M365 account; assigns license; adds to entity-specific groups
    IT creates GHL account (sales/customer-facing roles only)
    IT provisioned accounts follow standard role template (no ad hoc access grants)
    MFA: enrolled on Day 1 before account is active for work use
    
  Role templates:
    Sales rep: GHL + M365 (E/T/SP) + Monday.com member
    Clinical coordinator (Allevio): M365 + AdvancedMD (clinical scope) + no GHL
    Finance: M365 + QuickBooks (role-appropriate) + Monday.com member
    Admin/exec: M365 + GHL + Monday.com + QB (read-only) + Covercy (HIVE only)
    IT admin: M365 admin role + all entity systems + separated admin account from daily-use account
    
ACCESS DEPROVISIONING PROCESS (terminated employee):
  HR → IT notification: SAME DAY (before employee's last hour if possible; by end of day at latest)
  IT disables M365 account within 2 hours of notification
  IT removes from all GHL; AdvancedMD; QB; Covercy; Monday.com
  Password reset on any shared resources the employee may have had access to
  Mailbox converted to shared mailbox or delegated (entity CEO decision) for 30 days
  After 30 days: mailbox deleted or archived per entity retention policy
  IT documents: termination date; systems deprov'd; person who confirmed; date
  Dr. Lewis reviews deprovisioning report quarterly
  
QUARTERLY ACCESS REVIEW PROCESS:
  Dr. Lewis pulls user lists from all systems
  Cross-references against active HR roster
  Flags: accounts for departed employees; accounts with excess privileges
  Entity CEO reviews and confirms access is still appropriate for all users
  Removes any accounts that are no longer needed; adjusts scope as needed
  Documents review: date; reviewer; systems covered; changes made; entity CEO sign-off
```

## Output Format

```markdown
# Access Review Report — [Entity] | Q[N] [Year] | [Date]
**Reviewer:** Dr. John Lewis | **Entity CEO sign-off:** [Yes/No/Date]

---

## Access Summary by System
| System | Active accounts | Accounts reviewed | Changes required | Changes made |
|--------|----------------|------------------|-----------------|-------------|
| M365 | [N] | [N] | [N] | [N] |
| GHL | [N] | [N] | [N] | [N] |
| AdvancedMD | [N] | [N] | [N] | [N] |

---

## Issues Found This Review
| Issue | Severity | System | Account | Action taken |
|-------|---------|--------|---------|-------------|
| Terminated employee account active | 🔴 Critical | M365 | [Name] | Disabled immediately |
| Excess privileges | 🟡 Medium | QB | [Name] | Reduced to read-only |

---

## Deprovisioning Actions (this quarter)
| Employee | Term date | Systems removed | Completed by | Date |
|----------|-----------|----------------|-------------|------|
```

## Output Contract
- Terminated employee access must be removed the same day as HR notification — no exceptions; a terminated employee with active system access is the highest-impact, lowest-cost risk to fix in any organization; it takes 30 minutes to deprovision a user from all systems; the cost of not doing it ranges from data theft to HIPAA breach (Allevio) to financial fraud (GHL/QB access); Dr. Lewis's standard: IT receives HR notification and disables M365 within 2 hours, deprovisioning from all other systems by end of day; if IT cannot complete same-day deprovisioning, Dr. Lewis disables the M365 account (which blocks most access) immediately and IT completes the rest; entity CEO is notified same day that the terminated employee's access has been removed; any deviation from same-day deprovisioning → Dr. Lewis documents the reason and verifies no unauthorized access occurred during the gap
- PHI access in AdvancedMD is the most critical access control point at Allevio — every user with AdvancedMD access can see PHI; the minimum necessary standard (HIPAA §164.502(b)) requires that access is limited to the PHI needed for the employee's specific job function; Dr. Lewis reviews AdvancedMD access quarterly and verifies that clinical coordinators have clinical-scope access only; billing staff have billing-scope access only; no administrative staff have full PHI access without documented clinical need; any AdvancedMD access that cannot be justified by job function → removed immediately; access exceptions require Dr. Lewis and entity CEO joint approval with written business justification
- HITL required: new admin account provisioning → Dr. Lewis approves; AdvancedMD access grant → Dr. Lewis approves; QB access beyond standard role template → Dr. Lewis + entity CEO approve; Covercy admin access → HIVE entity CEO + Dr. Lewis; terminated employee deprovisioning → IT executes; Dr. Lewis verifies; quarterly access review → Dr. Lewis reviews; entity CEO sign-off; access exception (beyond standard template) → Dr. Lewis + entity CEO approve with documentation; Krista.ai integration access → Dr. Lewis approves

## System Dependencies
- **Reads from:** Active employee roster (HR system → entity; role; start date; status); system user lists (M365 Admin Center; GHL admin; AdvancedMD admin; QB admin; Covercy admin; Monday.com admin); role access templates (Dr. Lewis maintained); termination notifications (HR → IT → Dr. Lewis); prior access review report
- **Writes to:** Access review report (SharePoint → [Entity] → Security → Access-Reviews → [Year-Quarter]); deprovisioning log (entity IT records; date; systems; person who executed); provisioning log (new employee; role; systems; date; IT execution); AdvancedMD access audit (Allevio — SharePoint → Allevio → Security → PHI-Access-Review → [Date]); security program status (access control pillar); entity CEO access review sign-off record
- **HITL Required:** Admin account provisioning → Dr. Lewis approves; AdvancedMD access grant → Dr. Lewis approves; QB access exception → Dr. Lewis + entity CEO; Covercy admin → HIVE entity CEO + Dr. Lewis; terminated employee deprovisioning → Dr. Lewis verifies same-day; quarterly review → Dr. Lewis reviews + entity CEO sign-off; access exception → Dr. Lewis + entity CEO with documentation; Krista.ai access → Dr. Lewis

## Test Cases
1. **Golden path:** HR notifies IT at 2pm that a sales rep at Allevio is terminated effective today. IT: M365 account disabled by 2:45pm (45 min after notification). AdvancedMD access removed by 3:30pm (Dr. Lewis confirms clinical scope; sales rep had no clinical access — only M365 and GHL). GHL account removed by 3:45pm. Monday.com access removed by 4pm. IT documents: all 4 systems deprov'd by 4pm (2 hours after notification). Entity CEO notified: "Access for [name] removed from all systems as of today." GHL pipeline ownership transferred to entity CEO (interim). Mailbox delegated to entity CEO for 30 days. Deprovisioning log filed in SharePoint.
2. **Edge case:** Quarterly access review discovers a former part-time contractor in AdvancedMD — access was never removed when the contract ended 4 months ago. Dr. Lewis: "This is a HIPAA-reportable situation if the contractor accessed any PHI during the 4 months their access was active but shouldn't have been. Immediate actions: (1) Disable AdvancedMD account now. (2) Pull the AdvancedMD audit log for the contractor's account for the past 4 months — who accessed what records. (3) If the audit log shows any PHI access after the contract end date, this may be a HIPAA breach requiring a risk assessment under §164.400. (4) Notify entity CEO today. (5) Dr. Lewis conducts the HIPAA breach risk assessment. (6) Document the entire sequence in the security program records. Next step in the process: require HR to notify IT within 24 hours of ALL contractor end dates, not just employee terminations."
3. **Adversarial:** Entity CEO wants to give a board member "read access to everything" in the entity's systems: Dr. Lewis: "I understand the desire for board visibility, but broad 'read access to everything' creates a few problems: (1) It violates least privilege — the board member only needs the specific data they need for board governance; (2) For Allevio, 'read access to everything' includes PHI — we can't give board members PHI access without a documented legitimate reason and HIPAA compliance review; (3) Broad access increases the attack surface — board members are high-value phishing targets. Better approach: board member gets read-only QB access to the financial reports they need; read-only SharePoint access to the board document library; no EHR or GHL access. What specific data does the board member need? I'll build them a minimal-access profile that gives them what they need without creating unnecessary risk."

## Audit Log
Access provisioning records (employee; role; systems provisioned; date; IT executor; Dr. Lewis review). Access deprovisioning records (employee; termination date; systems removed; date; IT executor; Dr. Lewis verification). Quarterly access review records (date; systems covered; accounts reviewed; changes made; entity CEO sign-off; SharePoint). AdvancedMD access records (Allevio — all grants; removals; quarterly reviews; Dr. Lewis sign-off; PHI access justified). Access exception records (employee; system; exception granted; Dr. Lewis + entity CEO approval; business justification; date). Admin account records (who has admin access; date granted; Dr. Lewis approval; review date).

## Deprecation
IAM standards reviewed annually. Role templates updated when entity organizational structure changes. System list updated when new SaaS added or removed. Quarterly review process reviewed when entity headcount changes significantly. AdvancedMD access review process reviewed when Allevio adds new clinical systems or roles. Deprovisioning SLA reviewed annually against actual performance data.
