---
name: it-onboarding-provisioner
description: "Provision IT access and equipment for new hires. Use when the user says 'new hire IT setup', 'onboarding IT', 'IT provisioning', 'set up new employee', 'new employee access', 'create accounts', 'provision access', 'Day 1 IT readiness', 'new employee equipment', 'user provisioning', 'new account setup', 'IT onboarding checklist', or 'new hire technology'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--role <title>] [--start-date <date>]"
---

# IT Onboarding Provisioner

Provision IT accounts, access, and equipment for new employees at MBL portfolio companies — ensuring that every new hire has everything they need working on Day 1. IT onboarding readiness is Dr. Lewis's responsibility: if a new employee cannot log in to their laptop, cannot access email, or cannot reach the systems they need on their first day, that failure reflects on IT. The standard is: everything works before the employee walks in the door.

## When to Use
- A new employee is starting — IT provisioning checklist needs to be executed
- The employee's role and systems access are known at least 5 business days before start date
- An employee's role changes and access needs to be modified
- A contractor or vendor needs time-limited access provisioned

## Provisioning Framework

```
IT onboarding timeline:
  T-10 business days: HR confirms start date, role, and manager to Dr. Lewis
  T-5 business days: Dr. Lewis begins provisioning (account creation, license assignment)
  T-2 business days: Device ordered/configured; accounts created and verified
  T-1 business day: Full access test — Dr. Lewis verifies every system works
  Day 1 (morning): Device and access handed off to employee; Dr. Lewis available for issues
  
  If Dr. Lewis does not receive role confirmation by T-5, escalate to HR and hiring manager.
  Late confirmation = at-risk Day 1 IT readiness.
  
Account provisioning by system (standard role):
  1. Microsoft Entra ID: Create user account; assign M365 license; set up MFA (send setup instructions)
  2. Email: M365 Outlook; add to distribution groups appropriate for role
  3. Teams: Add to company Teams; add to relevant channels and teams
  4. SharePoint: Assign access to role-appropriate SharePoint sites (not all sites)
  5. Password manager: Invite to company password manager (1Password/Bitwarden)
  6. Monday.com: Create account; assign to relevant workspace/boards
  
Role-specific systems (examples):
  Finance: QuickBooks (role-appropriate), Bill.com (standard user), bank read-only (if authorized)
  Operations: GoHighLevel CRM, Covercy (HIVE), relevant SharePoint finance sites
  Allevio clinical: AdvancedMD (role-appropriate tier) — HIPAA training MUST complete before access granted
  Allevio billing: AdvancedMD (billing tier), Marshall Medical Billing access (if applicable)
  
Equipment provisioning:
  Laptop: Company-owned; enrolled in Intune MDM before handoff
  Security baseline verified before handoff:
    Full-disk encryption enabled ✅
    Screen lock configured (5-min auto) ✅
    EDR installed (Windows Defender / SentinelOne) ✅
    OS patches current ✅
    Standard user account (no local admin) ✅
    MDM enrollment confirmed ✅
  VPN: Configured and tested if remote access needed
  
Allevio-specific (HIPAA):
  HIPAA training MUST be completed before any AdvancedMD access is granted
  OIG LEIE exclusion check on start date (HR coordinates; Dr. Lewis confirms clear before granting clinical system access)
  PHI access = minimum necessary for the role (not maximum available)
```

## Output Format

```markdown
# IT Onboarding Checklist — <Employee Name>
**Company:** [Company] | **Role:** [Title] | **Start date:** [Date]
**Provisioner:** Dr. John Lewis | **Provisioned:** [Date]
**Status:** Complete / In progress / At risk

---

## Provisioning Checklist

### Accounts
- [ ] Microsoft Entra ID account created — username: [user@company.com]
- [ ] M365 license assigned — [Business Standard / Business Premium]
- [ ] MFA setup instructions sent to employee's personal email
- [ ] Added to role-appropriate distribution groups: [List]
- [ ] Teams: Added to company org; channels: [List]
- [ ] SharePoint: Access granted to: [Sites/Libraries]
- [ ] Password manager: Invite sent and accepted
- [ ] Monday.com: Account created; workspace assigned: [List]
- [ ] [Role-specific system 1]: Account created; role: [X]
- [ ] [Role-specific system 2]: Account created; role: [X]
- [ ] QuickBooks: Role [Standard user / Read-only / Controller] (Finance roles only)
- [ ] Bill.com: Role [Standard / Admin] (Finance roles only)

### Allevio Clinical/Billing (if applicable)
- [ ] HIPAA Security Awareness training: [COMPLETED — date / PENDING — access blocked]
- [ ] OIG LEIE exclusion check: [Clear / Pending] — date: [Date]
- [ ] AdvancedMD access granted — tier: [Provider / Billing / Front desk / Admin]
  - Access granted ONLY after HIPAA training complete and LEIE clear

### Equipment
- [ ] Device: [MacBook Pro 14" M3 / Dell Latitude / Other]
- [ ] Asset ID assigned: [Company prefix]-IT-[XXXX]
- [ ] MDM enrollment (Intune): Confirmed ✅
- [ ] Full-disk encryption: Enabled ✅
- [ ] Screen lock (5-min): Configured ✅
- [ ] EDR: Installed ✅
- [ ] OS patches: Current ✅
- [ ] Local admin: Standard user only ✅
- [ ] VPN: Configured and tested (if remote access required)

### Day 1 Verification (completed by Dr. Lewis T-1)
- [ ] Logged in to M365 with MFA — verified works
- [ ] Email send/receive — verified
- [ ] Teams access — verified
- [ ] SharePoint access to required sites — verified
- [ ] [Critical role system] access — verified
- [ ] Laptop setup complete — device ready for handoff

### Post-Start (Day 1-5)
- [ ] MFA fully set up by employee — confirmed Day 1
- [ ] Password manager populated with initial credentials — Day 1
- [ ] All role systems accessible — confirmed by employee by Day 3
- [ ] Any Day 1 IT issues resolved — [List if any]

---

## Access Summary

| System | Access level | Granted by | Date |
|--------|------------|-----------|------|
| M365 / Entra ID | Standard user | Dr. Lewis | [Date] |
| AdvancedMD | Billing tier | Dr. Lewis (after HIPAA training) | [Date] |
| QuickBooks | Read-only | Dr. Lewis | [Date] |
| [System] | [Role] | Dr. Lewis | [Date] |

---

## Allevio HIPAA Record

| Requirement | Status | Date |
|-------------|--------|------|
| HIPAA training completed | [Yes/No] | [Date] |
| HIPAA certificate on file | [Yes/No] | [Date] |
| OIG LEIE check | [Clear/Pending] | [Date] |
| PHI access granted | [Yes/No] | [Date] |
| Minimum necessary access confirmed | [Yes/No] | |
```

## Output Contract
- Everything works on Day 1 — the provisioning is verified by Dr. Lewis the day before the employee starts; Dr. Lewis logs in to every system as the new user (or verifies access is provisioned) before handing over the device; "I'll fix it when they run into a problem" is not acceptable; a new employee's first interaction with the company's IT sets the tone; it should be "here is your working laptop and everything you need" not a 2-hour troubleshooting session
- No PHI access before HIPAA training and LEIE check at Allevio — this is a hard gate enforced by access provisioning sequence; AdvancedMD access is not provisioned until (1) HIPAA training completion is documented and (2) OIG LEIE exclusion check is clear; if a new employee starts without completing HIPAA training on Day 1, their AdvancedMD access is withheld; this is coordinated with HR (ops-onboarding-plan) and is non-negotiable
- Least-privilege access from day one — new employees are provisioned with the access their role requires, not with maximum access "just in case"; excess access accumulated at onboarding is never cleaned up; it is easier to start with the right access and grant more as needed than to start with everything and revoke later; SharePoint access, QuickBooks roles, and system tiers are set to minimum necessary at provisioning
- HITL required: Dr. Lewis executes all provisioning; T-1 verification by Dr. Lewis; AdvancedMD access gate (Allevio) requires HIPAA training + LEIE clear; role-specific financial system access (QB, Bill.com) requires Dr. Lewis; contractor access requires Dr. Lewis + manager authorization; equipment handoff by Dr. Lewis on Day 1

## System Dependencies
- **Reads from:** HR onboarding notification, role description, manager authorization, HIPAA training completion records (Allevio), OIG LEIE database (Allevio), equipment inventory
- **Writes to:** Access provisioning log (SharePoint/Ops/<Company>/IT/Access/Provisioning/); asset register (ops-equipment-tracker); HIPAA training gate record (Allevio); onboarding checklist (completed)
- **HITL Required:** Dr. Lewis provisions all accounts; T-1 verification by Dr. Lewis; PHI access gate (HIPAA + LEIE) enforced by Dr. Lewis; financial system access by Dr. Lewis; manager authorization required for non-standard access

## Test Cases
1. **Golden path:** Allevio new billing specialist starting Monday, T-5 (Wednesday) → HR sends role confirmation: Jane Smith, Billing Specialist, AdvancedMD billing tier, QuickBooks read-only, Teams + SharePoint; Thursday: M365 account created; M365 Business Premium license; MFA setup email sent to Jane's personal Gmail; AdvancedMD billing access prepared (not granted yet); QuickBooks read-only set; Teams + SharePoint provisioned; Friday: Device (company Dell Latitude) enrolled in Intune; BitLocker enabled; Defender installed; patches current; T-1 test: Dr. Lewis verifies login, email, Teams, SharePoint, QB read-only ✅; HIPAA training: scheduled for 8 AM Monday; AdvancedMD: available for grant after HIPAA training complete; Monday 8 AM: Jane completes HIPAA training (30 min) + signs completion form; OIG LEIE check: clear ✅; AdvancedMD billing access granted 9 AM; everything working by 9:30 AM
2. **Edge case:** HR notifies Dr. Lewis at T-1 (the day before start) that a new hire is starting tomorrow → This is a risk; inform HR and the hiring manager that T-1 notification puts Day 1 IT readiness at risk; execute as much provisioning as possible in the remaining time; M365 account and basic access can often be completed in a few hours; specialized system access (AdvancedMD) requires HIPAA training to be completed first; at minimum ensure: M365 account, email, Teams working; HIPAA training scheduled for 8 AM Day 1; AdvancedMD access available after training; document the late notification; establish T-5 as the minimum notification standard going forward
3. **Adversarial:** "Can we give the new clinical director full admin access to everything at Allevio — they need to see the whole operation" → Even a Clinical Director gets least-privilege access at provisioning: AdvancedMD at the appropriate role tier (not global admin), QuickBooks read-only (not edit/approval), SharePoint at the appropriate sites; if additional access is needed for specific tasks, Dr. Lewis grants it on request with manager authorization and documents it; "they are senior" is not an access tier; access is role-based, not seniority-based; this protects both the company and the employee

## Audit Log
Provisioning checklists retained permanently (who was provisioned, what access, when). HIPAA training completion and gate records retained permanently (Allevio). OIG LEIE check records retained permanently (Allevio). Equipment handoff records retained. Contractor access with expiration dates retained. Non-standard access grants retained with authorization.

## Deprecation
Retire when portfolio companies have dedicated HR/IT coordinators who execute provisioning from a maintained system (HRIS with IT workflow) — with Dr. Lewis reviewing exception reports and approving sensitive system access. HIPAA training gate and OIG LEIE requirements at Allevio are permanent, regardless of who executes provisioning.
