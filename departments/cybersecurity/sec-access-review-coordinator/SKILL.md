---
name: sec-access-review-coordinator
description: "Coordinate periodic access reviews for MBL portfolio company systems. Use when the user says 'access review', 'user access review', 'access recertification', 'certify access', 'quarterly access review', 'annual access review', 'access audit', 'who has access to what', 'access certification', 'access governance', 'access compliance', 'privilege review', 'role review', 'entitlement review', 'access right review', 'access cleanup', 'orphaned accounts', 'inactive accounts', 'stale accounts', 'unused accounts', 'access creep', 'privilege creep', 'over-privileged users', 'least privilege audit', 'access control review', 'user permission review', 'permission audit', 'manager access review', 'AdvancedMD access review', 'GHL access review', 'M365 access review', 'Covercy access review', 'QB access review', or 'SOC 2 access review'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--system <m365|ghl|advancedmd|covercy|all>] [--period <q1|q2|q3|q4|annual>]"
---

# Sec Access Review Coordinator

Coordinate periodic access reviews for MBL portfolio companies — systematically verifying that every user still needs the access they have, that no over-privileged accounts exist, and that departed or role-changed employees have had access adjusted. Access reviews are the human audit on top of IAM automation — they catch what automated deprovisioning misses: the employee who changed roles but kept the old system access, the contractor who extended but whose original access scope expired, the manager who approved access for a subordinate that shouldn't exist.

## When to Use
- Preparing and running a quarterly access review cycle
- Responding to an audit request for access review evidence
- Investigating privilege creep after a personnel change
- Building an access review process for a new entity

## Access Review Framework

```
MBL ACCESS REVIEW CADENCE:

  Quarterly review (all entities):
    Scope: all systems with user accounts (M365; GHL; AdvancedMD; Covercy; QB; Monday.com)
    Reviewer: Dr. Lewis (pulls user lists; cross-references HR roster; presents to entity CEO)
    Entity CEO: confirms that each user's access is still appropriate; approves changes
    Duration: typically 2-4 hours across all systems; quarterly scheduling required
    
  Allevio AdvancedMD review (quarterly; escalated priority):
    PHI access: every AdvancedMD account is a PHI access account
    Minimum necessary: Dr. Lewis verifies each account has only the access needed for their role
    Clinical scope: clinical coordinators → clinical access only; billing → billing access only
    Any account that cannot be justified → removed immediately
    HIPAA: quarterly AdvancedMD access review documented and retained 6 years
    
  Annual review (additional depth):
    Admin accounts: reconfirm all admin accounts are still needed and still held by the right people
    Service accounts: reconfirm all service accounts are still in use; decommission unused
    Role templates: do the current role templates still match actual job functions?
    External access: any external parties (contractors; vendors) with system access — still needed?
    
ACCESS REVIEW PROCESS (quarterly):

  Step 1 — Pull user lists (IT; Dr. Lewis): 
    M365: Admin Center → Users → Active Users (export CSV)
    GHL: Admin → Users (export CSV)
    AdvancedMD: Admin → Users (Allevio — Dr. Lewis reviews directly in portal)
    Covercy: Admin → Users (HIVE — Dr. Lewis reviews in portal)
    QB: Admin → Users (Dr. Lewis reviews)
    Monday.com: Admin → Users (Dr. Lewis reviews)
    
  Step 2 — Cross-reference with HR roster:
    Compare each system's user list against the current active employee list
    Flag: any system user whose name is not on the active HR roster
    
  Step 3 — Flag anomalies:
    Departed employee still has access → immediate deprovisioning (P0)
    Contractor with expired contract still has access → deprovision today
    User with role that doesn't match their job function → flag for entity CEO review
    Inactive account (not logged in > 90 days) → flag for entity CEO review
    Admin account with unexpected new member → flag for Dr. Lewis review
    
  Step 4 — Entity CEO certification:
    Present findings to entity CEO (brief table: user; system; role; recommendation)
    Entity CEO certifies: "Yes, this access is still appropriate" or "Remove/change this"
    Entity CEO signature on access review certification form
    
  Step 5 — Execute changes:
    IT executes all access changes identified in review
    Dr. Lewis verifies completion within 5 business days of review
    
  Step 6 — Document:
    Access review record (date; systems; users reviewed; anomalies found; changes made; entity CEO sign-off)
    Filed in SharePoint → [Entity] → Security → Access-Reviews → [Quarter-Year]
    Allevio AdvancedMD: retained 6 years (HIPAA)
    
PRIVILEGE CREEP DETECTION:
  Privilege creep: accumulation of access rights beyond what current role requires
  Common cause: employee changes roles; old access not removed; new access added
  Detection: review whether users have permissions from a previous role still active
  Remediation: remove any access that cannot be justified by current job function
  Entity CEO approves: any access that is borderline (useful but not strictly needed)
  
INACTIVE ACCOUNT POLICY:
  Account inactive >90 days: flag for review (still needed? on leave? forgot to use?)
  Account inactive >180 days: disable pending review (can re-enable if still needed)
  Account inactive >365 days: recommend deletion (confirm with entity CEO)
  Exception: accounts owned by IT for automated processes (service accounts) — review purpose
```

## Output Format

```markdown
# Access Review — [Entity] | Q[N] [Year] | [Date]
**Reviewer:** Dr. John Lewis | **Entity CEO certification:** [Date] | **Systems covered:** [N]

---

## Review Summary
| System | Users reviewed | Anomalies found | Changes required | Changes completed |
|--------|---------------|----------------|-----------------|------------------|
| M365 | [N] | [N] | [N] | [N] |
| AdvancedMD | [N] | [N] | [N] | [N] |

---

## Anomalies Found This Review
| User | System | Issue | Severity | Action | Completed |
|------|--------|-------|---------|--------|----------|
| [Name] | AdvancedMD | No longer employed | 🔴 P0 | Disabled immediately | ✅ [Date] |

---

## Entity CEO Certification
**Certified by:** [Entity CEO Name] | **Date:** [Date]
"I certify that all user access reviewed in this period is appropriate and necessary for each user's current job function, or has been identified for remediation."
```

## Output Contract
- Departed employee access discovered in an access review is treated as a P0 incident, not a routine finding — a departed employee with active system access means: (1) a potential unauthorized access risk for every day since their departure; (2) for Allevio AdvancedMD, a potential HIPAA breach if they accessed PHI after their employment ended; (3) a finding that should prompt a review of why the deprovisioning process failed; the access is removed immediately (not queued for the next IT cycle); Dr. Lewis confirms removal within 2 hours; entity CEO is notified same day; if the account was for an Allevio AdvancedMD user, Dr. Lewis pulls the audit log to confirm whether the former employee accessed PHI after their termination date; if they did, the HIPAA breach assessment process begins (sec-hipaa-security-officer); the process failure (why wasn't access removed on termination day?) is documented and the deprovisioning process is corrected
- Entity CEO certification is a legal and compliance document, not a formality — by signing the access review certification, the entity CEO attests that all listed access is appropriate and necessary; this signature creates a documented decision point for any future audit or investigation; it also shifts accountability appropriately — the entity CEO is in the best position to know whether each employee's access matches their current role; Dr. Lewis reviews for security appropriateness; the entity CEO reviews for business appropriateness; together they close the loop; for Allevio, the AdvancedMD access review certification is HIPAA documentation — it demonstrates that Allevio implemented the access management safeguard under HIPAA §164.312(a)(1); stored in SharePoint, retained 6 years
- HITL required: quarterly access review initiation → Dr. Lewis pulls data; entity CEO certifies; departed employee found → P0; immediate deprovision + entity CEO notification + Dr. Lewis audit; Allevio AdvancedMD PHI access post-termination → HIPAA breach assessment; access anomaly (unexpected admin) → Dr. Lewis investigates before entity CEO review; access change execution → IT executes; Dr. Lewis verifies within 5 business days; inactive account disablement → entity CEO confirms before disabling; service account decommission → IT confirms with Dr. Lewis

## System Dependencies
- **Reads from:** System user lists (M365 Admin Center; GHL admin; AdvancedMD admin; Covercy admin; QB admin; Monday.com admin); HR active employee roster (entity HR system); role definitions (entity org chart + Dr. Lewis IAM templates); login activity logs (M365 sign-in logs for inactive account detection); prior access review records; admin account list (sec-privileged-access-manager)
- **Writes to:** Access review report (SharePoint → [Entity] → Security → Access-Reviews → [Quarter-Year]); entity CEO certification form (entity CEO signature; date); AdvancedMD access review (Allevio — SharePoint → Allevio → Security → PHI-Access-Reviews → [Quarter]; retained 6 years); deprovisioning actions (IT tickets; Monday.com); HIPAA breach assessment trigger (if post-termination PHI access detected); security program status (access management pillar)
- **HITL Required:** Quarterly review initiation → Dr. Lewis; entity CEO certification (sign-off); P0 departed employee → Dr. Lewis immediate + entity CEO notification; Allevio post-termination PHI access → HIPAA breach assessment; unexpected admin account → Dr. Lewis investigates; access changes → IT executes; Dr. Lewis verifies; inactive account disable → entity CEO confirms; service account decommission → Dr. Lewis + IT

## Test Cases
1. **Golden path:** Q2 access review for Column6. Dr. Lewis pulls user lists from M365 (25 users); GHL (18 users); Monday.com (22 users). Cross-reference against current HR roster (23 active employees). Findings: M365 — 2 users on list not in active roster (1 departed contractor; 1 on extended leave). GHL — 1 user not on active roster (former sales rep from 3 months ago). Monday.com — clean. Actions: Departed contractor (M365) → disabled immediately (P0); entity CEO notified. Former sales rep (GHL) → disabled immediately; Dr. Lewis confirms; entity CEO notified. Employee on leave (M365) → entity CEO confirms still needed; Dr. Lewis flags with 90-day inactive policy; leave expected to end in 45 days — keep active. Entity CEO certifies remaining access. Review documented. Files in SharePoint.
2. **Edge case:** Annual access review discovers that an Allevio clinical coordinator has both clinical access AND billing admin access in AdvancedMD (from when they covered billing 8 months ago during a staffing gap): Dr. Lewis: "This is a minimum necessary violation — the clinical coordinator no longer has a business need for billing admin access. The billing gap is covered; they returned to their clinical role 8 months ago. Actions: (1) Remove billing admin access from AdvancedMD today (IT executes). (2) Document in access review: privilege creep identified; billing access retained from 8 months ago; removed [date]. (3) Entity CEO notified — no HIPAA breach from having excess access (they had authorization when originally granted; question is whether they used billing access inappropriately after returning to clinical role). (4) Pull AdvancedMD audit log for that user — verify billing module access in last 8 months was within their original legitimate scope. (5) Add a process step: role change (not just termination) triggers an access review for the affected user."
3. **Adversarial:** Entity CEO pushes back on quarterly access reviews: "This is too much overhead — we're a small team; I know who has access to what": Dr. Lewis: "I understand it feels like overhead in a small team — but that's also the environment where access creep happens fastest (one person wears multiple hats; access accumulates; nobody audits because everyone assumes someone else is watching). The quarterly review for a 20-person team takes about 2 hours total: 1 hour for me to pull and cross-reference the data; 30 minutes for you to review the table and certify; 30 minutes for IT to make any changes. For Allevio specifically, the AdvancedMD review is part of our HIPAA compliance program — it's documented evidence of access management safeguards. If we have a breach investigation, 'we do quarterly access reviews, here are the records' is a very different position than 'we rely on the team knowing each other.' The overhead is 2 hours per quarter. I'll make the review table as easy to certify as possible — you confirm or change each row. We keep doing this."

## Audit Log
Quarterly access review records (date; entity; systems; users reviewed; anomalies; changes; entity CEO certification; SharePoint). AdvancedMD access review records (Allevio — quarter; users; PHI access scope; Dr. Lewis review; entity CEO certification; SharePoint; 6-year retention). P0 departed employee records (user; system; discovery date; deprovisioning date; entity CEO notification; Allevio: PHI access audit log reviewed; breach assessment if applicable). Privilege creep findings (user; access removed; reason; date; entity CEO notified). Annual deep review records (admin accounts; service accounts; role templates; external access; entity CEO certification).

## Deprecation
Access review process reviewed annually. Scope updated when new systems are added to the entity stack. AdvancedMD review frequency reviewed if Allevio adds clinical users rapidly. Entity CEO certification format updated when legal or compliance requirements change. Inactive account thresholds reviewed against entity security program maturity.
