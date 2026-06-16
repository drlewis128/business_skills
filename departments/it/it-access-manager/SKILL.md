---
name: it-access-manager
description: "Manage user access, permissions, and identity. Use when the user says 'access management', 'user access', 'permissions', 'who has access to what', 'access review', 'access control', 'IAM', 'identity management', 'MFA', 'multi-factor authentication', 'access provisioning', 'deprovisioning', 'remove access', 'access audit', 'least privilege', 'password policy', 'single sign-on', 'SSO', or 'access request'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <audit|provision|deprovision|mfa-enforce|review>] [--user <name if specific>]"
---

# IT Access Manager

Manage user access, permissions, and identity at MBL portfolio companies — ensuring people have exactly the access they need to do their jobs, no more, and that access is revoked promptly when no longer needed. Access management is the most consistently under-managed IT control at small companies: employees accumulate permissions over time, departed employees retain access for weeks, and shared credentials make auditing impossible. Good access management prevents both accidental data exposure and intentional misuse.

## When to Use
- A new employee needs accounts and access provisioned
- An employee has separated and access must be revoked
- Access permissions need to be reviewed for a team or system
- MFA is not enforced and needs to be deployed
- A security incident may have involved compromised credentials
- Annual access audit — does everyone have the right access?

## Access Management Framework

```
Access principles:
  Least privilege: Grant the minimum access required to do the job — not everything "just in case"
  Need to know: Access to sensitive data only when the role requires it
  No shared accounts: Every user has their own account; shared login = no audit trail
  Separation of duties: No single person can both approve and process a transaction
    (e.g., the person who approves invoices should not also be able to add vendors)
  Time-bounded: Access provisioned when needed, revoked when role changes or person departs
  
Identity provider (IdP) for MBL portfolio:
  Microsoft Entra ID (formerly Azure AD): Primary IdP for M365 tenants
  Single sign-on (SSO): Applications connect to Entra ID — one account, one credential
  Conditional access: Require compliant device + MFA for any M365 access
  
MFA requirements (non-negotiable):
  All M365 accounts: MFA enforced via Conditional Access policy
  All cloud admin accounts: MFA enforced; hardware token or authenticator app (not SMS)
  Financial systems (QuickBooks, Bill.com): MFA enabled at application level
  Clinical systems (AdvancedMD — Allevio): MFA + compliant device required
  
  SMS-based MFA is weak — recommend Microsoft Authenticator or hardware key (YubiKey)
  
Access tiers for MBL portfolio:
  Tier 1 — Read-only: View data, run reports; cannot modify or delete
  Tier 2 — Standard user: Can create and edit own work; cannot delete or administer
  Tier 3 — Power user: Can modify others' work; manage team-level settings
  Tier 4 — Admin: Full system control; limited to IT/Dr. Lewis; audited
  
Separation of duties matrix (finance-critical):
  Can approve invoices AND add vendors: 🔴 Never — one person should not have both
  Can approve payroll AND run payroll: 🔴 Never
  Can access financial records AND approve transactions: 🟡 Review — limit to read-only for one function
  
Access review cadence:
  Quarterly: All Tier 4 (admin) accounts; all former employee access
  Semi-annually: All Tier 3 (power user) accounts; any sensitive data access
  Annually: Full access review — all users, all systems
```

## Output Format

```markdown
# Access Management Report — <Company Name>
**Date:** [Date] | **IdP:** [Microsoft Entra ID / Other]
**Total user accounts:** [N] | **Admin accounts:** [N]
**MFA enforcement:** [X% of accounts]
**Prepared by:** Dr. John Lewis

---

## MFA Compliance

| System | MFA enforced? | Users without MFA | Risk | Action |
|--------|-------------|-----------------|------|--------|
| Microsoft 365 | ✅ Conditional Access / 🔴 Not enforced | [N] | 🔴 Critical | Enable CA policy |
| QuickBooks | ✅ / 🔴 | [N] | 🔴 | Enable in QB settings |
| Bill.com | ✅ / 🔴 | [N] | 🔴 | |
| AdvancedMD (Allevio) | ✅ / 🔴 | [N] | 🔴 HIPAA | |
| [Other systems] | | | | |

**MFA-unenforced accounts with financial/PHI access:** 🔴 [N — immediate action]

---

## Admin Account Inventory

| Account | System | User | Last login | Required? | Action |
|---------|--------|------|-----------|---------|--------|
| Global Admin | M365 | Dr. Lewis | [Date] | Yes | Keep |
| Global Admin | M365 | [Former employee] | [Date 6 months ago] | 🔴 No | Remove immediately |
| QuickBooks Admin | QB | Dr. Lewis | [Date] | Yes | Keep |
| [DB Admin] | [System] | | | | |

**Admin accounts for separated employees:** 🔴 [N — revoke same day]

---

## Access Review — By System

### Microsoft 365

| User | License | Last active | Roles | Access level | Action |
|------|---------|------------|-------|-------------|--------|
| [Active employee] | M365 Biz Std | [Recent] | Member | Standard | Keep |
| [Departed 30 days ago] | M365 Biz Std | [Date departed] | Member | — | 🔴 Disable/delete |
| [External partner] | Guest | [Date] | Guest | Restricted | Review — still needed? |

### Financial Systems (QuickBooks / Bill.com)

| User | Role | Access level | Separation of duties check | Action |
|------|------|-------------|--------------------------|--------|
| [Controller] | QB Admin | Full | Can approve + process: 🔴 Review | Restrict approval or processing |
| [Dr. Lewis] | Bill.com Admin | Full | Approve + add vendor: 🔴 | — |
| [AP Staff] | Bill.com Standard | Create bills only | ✅ Cannot approve | Keep |

### Clinical Systems (Allevio — PHI Access)

| User | System | Role | PHI access level | HIPAA training current? | Action |
|------|--------|------|-----------------|----------------------|--------|
| [Provider] | AdvancedMD | Provider | Full patient record | ✅ | Keep |
| [Billing staff] | AdvancedMD | Billing | Billing data only | ✅ | Keep |
| [Former employee] | AdvancedMD | Billing | Billing data | — | 🔴 Revoke |

---

## Separation of Duties Violations

| User | System | Issue | Risk | Resolution |
|------|--------|-------|------|-----------|
| [Name] | Bill.com | Can both add vendors AND approve payments | 🔴 High | Remove vendor-add permission |
| [Name] | QB | Both approves and processes payroll | 🔴 High | Add second approver |

---

## Access Events (this period)

| Date | Action | User | System | Requestor | Authorized? |
|------|--------|------|--------|----------|------------|
| [Date] | Provisioned | [New hire] | M365 + QB | Dr. Lewis | ✅ |
| [Date] | Revoked | [Departed] | All systems | Dr. Lewis | ✅ |
| [Date] | Privilege escalated | [User] | M365 — Admin | Dr. Lewis | ✅ |

---

## Open Items

| Issue | Priority | Owner | Deadline |
|-------|---------|-------|---------|
| [N former employees with active M365 accounts] | 🔴 Immediate | Dr. Lewis | Today |
| [MFA not enforced on QB] | 🔴 This week | Dr. Lewis | [Date] |
| [Separation of duties violation — Bill.com] | 🔴 This week | Dr. Lewis | [Date] |
```

## Output Contract
- Departed employee access is revoked same day — when an employee separates (especially involuntary terminations), all system access is revoked before the employee leaves the building (or same day for remote employees); a departed employee with active credentials is a significant security and liability risk; this is coordinated with HR (it-offboarding-deprovision) and is non-negotiable; Dr. Lewis builds the "access-off" checklist for every role at every portfolio company
- MFA is enforced, not optional — a user who asks to be exempted from MFA is not exempt; the conditional access policy blocks access, not a request; if an employee is unable to set up MFA (no smartphone), provide a hardware token (YubiKey) or an authenticator app on a company device; the only exception is a specific technical limitation that prevents MFA — documented and reviewed quarterly
- Separation of duties violations in financial systems are remediated, not just noted — if one person can both add vendors and approve payments in Bill.com, that's a fraud risk; the fix (removing the vendor-add permission from the payment approver) takes 5 minutes and closes a significant control gap; these are found in the access review and fixed in the same session
- PHI access at Allevio is minimum necessary — HIPAA requires that PHI access be limited to the "minimum necessary" for the employee's role; a billing specialist should not have access to clinical notes; a front desk coordinator should not see financial records; Dr. Lewis audits AdvancedMD access annually against job descriptions and removes over-provisioned access
- HITL required: Dr. Lewis provisions and deprovisions all access; separated employee revocation is same-day (involuntary: immediate); MFA policy changes require Dr. Lewis; access review results reviewed by CEO; PHI access changes at Allevio require Clinical Director + Dr. Lewis; separation of duties violations remediated by Dr. Lewis before next AP/payroll cycle

## System Dependencies
- **Reads from:** Microsoft Entra ID admin center, M365 admin center, QuickBooks user admin, Bill.com admin, AdvancedMD admin, HR system (active/separated employees), system access logs
- **Writes to:** Access review report (SharePoint/Ops/<Company>/IT/AccessManagement/); provisioning/deprovisioning log; MFA enforcement records; HIPAA minimum necessary access log (Allevio)
- **HITL Required:** Dr. Lewis provisions/deprovisions; same-day revocation for separations; MFA policy by Dr. Lewis; PHI access by Dr. Lewis + Clinical Director; separation of duties remediation same week

## Test Cases
1. **Golden path:** Allevio semi-annual access review → 22 users reviewed; Finding 1: Former employee (terminated 45 days ago) still has active AdvancedMD billing access — revoke immediately (PHI risk); Finding 2: MFA not enforced on AdvancedMD (application-level) — 3 billing staff using password only; Finding 3: 1 billing specialist has provider-level AdvancedMD access (too broad) — restrict to billing tier; MFA: M365 100% enforced ✅; QB: enforced ✅; Bill.com: enforced ✅; AdvancedMD: 🔴 fix this week; all 3 findings remediated within 48 hours; access review documented; HIPAA minimum necessary confirmed for all remaining users
2. **Edge case:** An employee claims they can't set up the Microsoft Authenticator app because they don't have a smartphone → Provide alternatives: (1) authenticator app on their work laptop (Windows Hello for Business); (2) hardware token (YubiKey — cost ~$50); (3) FIDO2 security key; this is not an exemption from MFA — it's a different MFA method; document the alternative method chosen; the conditional access policy continues to require MFA, just from the hardware token rather than a phone app
3. **Adversarial:** An employee reports they shared their credentials with a colleague "just for a few days" while the colleague's access was being set up → Shared credentials violate the policy and destroy the audit trail; address immediately: reset the credentials; provision proper access for the colleague; communicate the policy clearly: credential sharing means there is no audit log — it's impossible to know who did what; this is especially critical for financial and PHI systems where regulatory accountability is required

## Audit Log
Access review results retained semi-annually and annually. Provisioning and deprovisioning events retained permanently. MFA enforcement dates retained. Separation of duties violations and remediation retained. PHI access changes retained permanently (Allevio — HIPAA). Credential sharing incidents retained.

## Deprecation
Retire when portfolio companies have IT managers who own identity and access management — conducting reviews, enforcing MFA, and coordinating provisioning/deprovisioning — with Dr. Lewis reviewing quarterly summaries rather than running the access management program.
