---
name: system-access-provisioner
description: "Manage user system access provisioning and deprovisioning. Use when the user says 'provision access', 'new hire access', 'system access', 'user accounts', 'access request', 'set up accounts for new employee', 'revoke access', or 'access management'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "<employee-name> [--entity <name>] [--action <provision|deprovision|audit>] [--role <title>]"
---

# System Access Provisioner

Manage user system access provisioning for new hires and deprovisioning for departing employees. Over-provisioned access is a security risk; under-provisioned access blocks productivity. Both are preventable with a clear access matrix and consistent process.

## When to Use
- New employee starting (provision all required access before Day 1)
- Employee departing (deprovision all access within 1 hour of separation)
- Role change (adjust access to match new responsibilities)
- Access review audit (who has access to what?)
- Security incident (emergency access revocation)

## Principle of Least Privilege
Grant only the access required for the role. Never provision admin access unless the role explicitly requires it. Access can always be expanded; the damage from over-provisioning is harder to undo.

## Standard Access Matrix (MBL Entities)

| System | All Staff | Managers | Finance | IT | Exec |
|--------|---------|---------|-------|----|----|
| Microsoft 365 (email, Teams, SharePoint) | ✓ | ✓ | ✓ | ✓ | ✓ |
| Monday.com | ✓ | ✓ (board admin) | ✓ | ✓ | ✓ |
| GoHighLevel CRM | Sales/CS only | ✓ | ✗ | Admin | ✓ |
| QuickBooks | ✗ | ✗ | ✓ | ✗ | Read-only |
| Bill.com | ✗ | ✗ | ✓ | ✗ | ✗ |
| Krista.ai | ✗ | ✓ | ✗ | Admin | ✓ |
| AWS/Azure (cloud) | ✗ | ✗ | ✗ | ✓ | ✗ |
| VPN | ✓ (remote roles) | ✓ | ✓ | ✓ | ✓ |

## Output Format

```markdown
# Access Provisioning — <Employee Name>
**Entity:** <MBL entity> | **Action:** Provision / Deprovision / Modify
**Role:** <title> | **Department:** <dept> | **Start/End date:** <date>
**Requested by:** HR / Manager | **IT owner:** <name>

---

## Provisioning Checklist

### Identity Foundation (Complete before all others)
- [ ] Microsoft 365 account created (email: <name>@<entity>.com)
- [ ] Account added to correct Azure AD group(s)
- [ ] MFA enrolled — required before first login
- [ ] Welcome email sent with setup instructions

### Role-Based Access (Per Access Matrix)
| System | Access Level | License Tier | Assigned? | Notes |
|--------|------------|------------|---------|-------|
| Microsoft 365 | Business Premium | Per-seat | [ ] | |
| Monday.com | Member | Included | [ ] | Add to [specific board] |
| GoHighLevel | User | Per-seat | [ ] | Sales role only |
| VPN | User | Included | [ ] | Remote work required |
| [System] | [Level] | [License] | [ ] | |

### Equipment
- [ ] Laptop assigned (Asset ID: HW-<NNN>) and configured
- [ ] Any hardware accessories assigned

### Verification
- [ ] IT confirms all accounts active
- [ ] Manager confirms access meets day-1 requirements
- [ ] Employee confirms they can log in to all required systems

---

## Deprovisioning Checklist (Departing Employee)

**CRITICAL: Complete within 1 hour of separation**

### Identity (First — blocks all access)
- [ ] Disable Microsoft 365 account (do not delete — retain data per policy)
- [ ] Revoke all active sessions (Microsoft Admin Center → Force sign out)
- [ ] Remove MFA devices
- [ ] Disable VPN access

### System Access (Complete same day)
- [ ] GoHighLevel — account disabled, leads reassigned to: <name>
- [ ] Monday.com — removed from all boards, tasks reassigned
- [ ] QuickBooks — access revoked (Finance to reassign any outstanding items)
- [ ] Any other system-specific accounts: [list]

### Equipment Recovery
- [ ] Laptop and accessories returned (or shipment arranged for remote)
- [ ] Asset record updated (returned, in storage)
- [ ] Device wiped and reimaged (or ready for redeployment)

### Data / Handoff
- [ ] Email forwarding set up per manager's request (max 30 days)
- [ ] Shared files transferred to manager or shared drive
- [ ] Any ongoing vendor accounts or subscriptions transferred

---

## Access Audit (Periodic Review)

| Employee | Role | Systems With Access | Last Review | Status |
|---------|------|--------------------|-----------|----|
| <Name> | <Role> | [list] | <date> | Current / Over-provisioned / Stale |
```

## Output Contract
- Deprovisioning Microsoft account always first — it's the identity foundation; revoking it blocks most other access simultaneously
- MFA always required before first login for new hires — no exceptions
- Departing employee deprovisioning completed within 1 hour of HR-confirmed separation — not at end of day
- HITL required: IT Manager reviews deprovisioning before execution for C-level or high-access departures; Dr. Lewis notified immediately for any involuntary departure requiring same-minute access revocation

## System Dependencies
- **Reads from:** HR system (new hire/departure notices), access matrix, asset inventory
- **Writes to:** Microsoft 365 admin, system admin consoles (HITL-gated for deprovisioning)
- **HITL Required:** IT Manager reviews deprovisioning for C-level departures; HR provides formal separation notice before deprovisioning begins; Dr. Lewis notified for any involuntary termination requiring immediate access revocation

## Test Cases
1. **Golden path:** New sales hire → Microsoft 365 account + MFA enrolled before Day 1, Monday.com added to sales boards, GoHighLevel user account, VPN configured, laptop HW-042 assigned and imaged, manager confirms access
2. **Edge case:** Employee is terminated for cause — manager requests immediate access revocation during business hours → Microsoft account disabled first (within 5 minutes), all other system access revoked within 30 minutes, IT Manager and Dr. Lewis notified, equipment recovery initiated
3. **Adversarial:** Departing employee refuses to return laptop → HR escalation documented, IT remote wipe initiated on device (MDM enrolled), asset record updated as "recovery pending," legal team notified if not resolved within 5 business days

## Audit Log
All provisioning and deprovisioning actions logged with timestamp, requestor, and IT owner. Quarterly access reviews documented.

## Deprecation
Retire when entity deploys an Identity Governance platform (Okta, Azure AD Identity Governance, SailPoint) with automated access provisioning, role-based policies, and deprovisioning workflows.
