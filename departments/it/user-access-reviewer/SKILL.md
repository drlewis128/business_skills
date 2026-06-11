---
name: user-access-reviewer
description: "Run a user access review to identify over-provisioned, orphaned, or inappropriate access. Use when the user says 'access review', 'user access audit', 'who has access to what', 'access control review', 'excessive access', 'access recertification', or 'privilege review'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <all-systems|financial|admin|sensitive>] [--period <quarterly|annual>]"
---

# User Access Reviewer

Run periodic user access reviews to identify and remediate over-provisioned, orphaned, or inappropriate access. Access control drift is the slow accumulation of permissions that no one revokes. Left unaddressed, it becomes a compliance finding, an audit failure, or a breach vector. Access reviews are the reset button.

## When to Use
- Quarterly access review (standard cadence)
- Pre-compliance audit (SOC 2, HIPAA, ISO 27001 all require periodic access reviews)
- Post-M&A — what access did the acquired company's employees have?
- After a role change — access matches the old role, not the new one
- Security incident — was over-provisioned access a factor?

## Review Scope

| Access Type | Review Priority | Cadence |
|------------|---------------|---------|
| **Admin / privileged access** | Critical — review every 90 days | Quarterly |
| **Financial systems** (QB, Bill.com) | Critical — review every 90 days | Quarterly |
| **Sensitive data** (PHI, LP data, M&A docs) | Critical — review every 90 days | Quarterly |
| **All user access** | High — review every 6 months | Semi-annual |
| **Shared / service accounts** | High — review annually | Annual |
| **Vendor / third-party access** | High — review annually | Annual |

## Access Anomalies to Flag

| Anomaly | Definition | Risk |
|---------|-----------|------|
| **Orphaned account** | Account exists but employee has left | High — former employee access |
| **Over-provisioned role** | User has access beyond their job function | Medium-High |
| **Dormant account** | No login in > 60 days but account active | Medium |
| **Shared credentials** | Multiple users on one account (no accountability) | High |
| **Standing admin access** | Always-on admin instead of just-in-time | High |
| **Cross-entity access** | MBL employee with access to portfolio company data without business need | High |

## Output Format

```markdown
# User Access Review — <Entity>
**Date:** <date> | **Scope:** <Admin / Financial / All Systems>
**Systems reviewed:** <list> | **Total users in scope:** <N>

---

## Access Review Results

### Admin / Privileged Access

| User | Role | System | Access Level | Last Login | Business Justification | Action |
|------|------|--------|------------|-----------|----------------------|--------|
| John Lewis | IT Director | AWS | Admin | 3 days ago | Cloud infrastructure owner | ✅ Approved |
| Jane Smith | Marketing | AWS | PowerUser | 60+ days | No business need identified | ❌ Remove |
| [Former employee name] | (Departed) | GoHighLevel | Admin | 90+ days | Employee departed Q1 | 🔴 ORPHAN — revoke immediately |

### Financial System Access

| User | Role | QuickBooks Access | Bill.com Access | Business Justification | Action |
|------|------|-----------------|----------------|----------------------|--------|
| Sarah (Finance) | CFO | Admin | Admin | Finance owner | ✅ Approved |
| Mike (Sales) | Sales Manager | Read-only | No access | Historical — not current need | ❌ Remove |

---

## Anomalies Requiring Action

| Type | User/Account | System | Action | Priority | Owner | Due |
|------|------------|--------|--------|---------|-------|-----|
| 🔴 Orphaned account | [Former employee] | GoHighLevel | Revoke immediately | Critical | IT Manager | Today |
| ❌ Over-provisioned | Mike (Sales) | QuickBooks | Remove read-only access | High | IT Manager | 5 days |
| ⚠️ Dormant account | [User] | Monday.com | Verify if still active; suspend if not | Medium | IT | 10 days |
| ⚠️ Shared credentials | IT Team account | [Vendor portal] | Create individual accounts | High | IT | 30 days |

---

## Access Decisions (Manager Certification)

All managers must certify their team's access is appropriate:

| Manager | Team Members Reviewed | Certified? | Date |
|---------|---------------------|-----------|------|
| [Manager Name] | <N> | ✅ Yes | <date> |
| [Manager Name] | <N> | ❌ Not yet | — |

---

## Summary

| Category | Count |
|---------|-------|
| Total accounts reviewed | <N> |
| Approved (no change) | <N> |
| Modified (access reduced) | <N> |
| Revoked (orphaned / over-provisioned) | <N> |
| Escalated for further review | <N> |
```

## Output Contract
- Orphaned accounts always treated as Critical and remediated within 24 hours — they are open doors for former employees
- Manager certification always required — IT cannot unilaterally determine business need; managers own the access decision
- Privileged access review always quarterly regardless of other review scope
- HITL required: IT Manager reviews all admin access changes; Dr. Lewis reviews any access changes for C-level or sensitive M&A data; Finance approves financial system access changes

## System Dependencies
- **Reads from:** User directories (Azure AD), system access lists, employment records (for departures), last-login data (provided)
- **Writes to:** Nothing directly (access review report for HITL; IT executes changes after manager approval)
- **HITL Required:** Managers certify their team's access; IT Manager executes removals; Dr. Lewis reviews admin and sensitive data access changes; Finance reviews financial system access

## Test Cases
1. **Golden path:** Quarterly admin access review → 2 orphaned accounts found (former employees), 3 over-provisioned users, manager certification complete for all active employees, all critical findings remediated within 24 hours
2. **Edge case:** Manager refuses to certify their team's access ("too time-consuming") → escalates to IT Manager and HR as a policy compliance issue, blocks access review completion, flags that non-certification = unapproved access by default
3. **Adversarial:** IT discovers Dr. Lewis's admin access to a portfolio company financial system hasn't been reviewed → includes in the review like any other account, presents for his own certification, applies the same standard to all users including C-level

## Audit Log
Access review reports retained by entity and quarter. All changes (removals, modifications) logged with approver and timestamp. Manager certifications documented.

## Deprecation
Retire when entity deploys Identity Governance (Azure AD Identity Governance, SailPoint, Saviynt) with automated access reviews, manager certification workflows, and real-time access anomaly detection.
