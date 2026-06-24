---
name: sec-privileged-access-manager
description: "Manage privileged and administrative accounts for MBL portfolio companies. Use when the user says 'privileged access', 'admin accounts', 'administrator accounts', 'privileged accounts', 'PAM', 'privileged access management', 'service accounts', 'root access', 'global admin', 'M365 global admin', 'super admin', 'admin credentials', 'admin password', 'shared admin', 'admin account security', 'separate admin account', 'dedicated admin account', 'admin MFA', 'just-in-time access', 'JIT access', 'temporary admin', 'elevate privileges', 'privilege escalation', 'over-privileged', 'admin audit', 'who has admin', 'admin review', 'service account management', 'API credentials', 'API key management', 'secret rotation', 'credential rotation', or 'admin account best practices'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <audit|setup|review|rotate>] [--system <m365|all-systems>]"
---

# Sec Privileged Access Manager

Manage privileged and administrative accounts for MBL portfolio companies — ensuring that admin-level access is held by the minimum number of people, on dedicated accounts separate from daily use, protected by phishing-resistant MFA, and reviewed quarterly. Admin account compromise is the highest-impact security event in any organization: one compromised admin account gives an attacker complete control. The investment in managing admin accounts properly is measured in hours; the cost of a compromised admin account is measured in weeks of recovery.

## When to Use
- Auditing who has admin access across entity systems
- Setting up a new admin account with proper controls
- Rotating credentials for service accounts or API keys
- Investigating whether an admin account has been compromised

## Privileged Access Management Framework

```
ADMIN ACCOUNT PRINCIPLES:
  1. Separate accounts: dedicated admin account ≠ daily-use account
     Example: Dr. Lewis daily email = jlewis@mblpartners.com
              Dr. Lewis M365 admin = jlewis-admin@mblpartners.com (used only for admin tasks)
     Why: phishing, malware, and web browsing happen from daily accounts;
          keeping admin credentials separate limits blast radius
          
  2. Minimum admin count: as few admin accounts as necessary
     MBL standard: ≤3 Global Admin accounts per M365 tenant (including break-glass)
     Entity systems: typically 1-2 admins (Dr. Lewis + entity CEO or designated IT admin)
     
  3. Phishing-resistant MFA required on ALL admin accounts (hardware key preferred)
  
  4. No admin for daily work: admin accounts used only for admin tasks;
     not used for email, browsing, meetings
     
  5. Break-glass account: 1 emergency admin account per M365 tenant;
     credentials in sealed envelope or password manager;
     Dr. Lewis + Matt Mathison both know access procedure;
     used ONLY if all other admin accounts are compromised/locked

ADMIN ACCOUNT INVENTORY (MBL portfolio):

  M365 Global Admin accounts:
    jlewis-admin@mblpartners.com (Dr. Lewis — primary admin)
    [Break-glass account] (emergency use only; credentials secured)
    Entity IT admin (if designated — entity CEO approval + Dr. Lewis designation)
    Max 3 per tenant; audit quarterly
    
  System-specific admin accounts:
    GoHighLevel: Dr. Lewis + entity CEO admin roles
    AdvancedMD: Allevio entity CEO (clinical oversight) + Dr. Lewis (security oversight)
    QuickBooks: Dr. Lewis (global access) + entity controller (entity-specific)
    Covercy: HIVE entity CEO + Dr. Lewis
    Monday.com: Dr. Lewis + entity CEO admin roles
    Krista.ai: Dr. Lewis (integration admin); Krista.ai platform team (under MSA)
    
SERVICE ACCOUNT AND API CREDENTIAL MANAGEMENT:
  What they are: non-human accounts used by applications and integrations
  (Krista.ai → M365 integration; GHL webhooks; automation service accounts)
  
  Standards:
    Named: service accounts named by function (svc-krista-m365@domain.com)
    Documented: purpose; owner; systems accessed; rotation schedule
    No MFA: service accounts cannot use MFA (by design — machine access)
    Extra controls: IP restrictions where possible; minimal permissions; regular rotation
    Never in code: API keys and credentials never committed to code repositories
    Password manager: all service account credentials in BitWarden or equivalent (Dr. Lewis admin)
    
  Rotation schedule:
    Admin passwords: quarterly (or immediately after any security incident)
    API keys: quarterly (or immediately if compromised or shared incorrectly)
    Service account passwords: annually (or immediately after any security incident)
    Break-glass account: annual; Dr. Lewis verifies; credentials re-sealed
    
JUST-IN-TIME (JIT) PRIVILEGED ACCESS:
  Concept: grant elevated access for a specific task; remove immediately after
  MBL implementation (practical):
    Vendor needing temp admin access: create time-limited account; revoke same day
    Employee needing one-time admin task: Dr. Lewis grants elevated access; revokes after task
    Don't use permanent admin elevation for one-time needs
    Log all JIT access grants: who; system; reason; granted by; duration; revoked

ADMIN ACCOUNT AUDIT (quarterly):
  Questions to answer:
    How many Global Admin accounts exist? (Target: ≤3; any more is too many)
    Are any admin accounts shared? (Target: 0 shared; immediate remediation if found)
    Do all admin accounts have phishing-resistant MFA? (Target: 100%)
    Are any former employees still in admin roles? (Target: 0; immediate removal)
    Are service account passwords current (rotated in last quarter)? (Target: 100%)
    Are any API keys in code repositories? (Target: 0; immediate rotation if found)
```

## Output Format

```markdown
# Privileged Access Audit — [Entity] | Q[N] [Year] | [Date]
**Auditor:** Dr. John Lewis | **Systems covered:** [List]

---

## Admin Account Summary
| System | Total admin accounts | Expected (target) | Gap |
|--------|---------------------|------------------|-----|
| M365 Global Admin | [N] | ≤3 | 🟢/🔴 |
| GHL Admin | [N] | ≤2 | |
| AdvancedMD Admin | [N] | ≤2 | |

---

## Admin Account Health
| Account | System | Separate from daily account? | Phishing-resistant MFA? | Last password change |
|---------|--------|------------------------------|------------------------|---------------------|
| jlewis-admin | M365 | ✅ | ✅ (HW key) | [Date] |

---

## Service Accounts & API Keys
| Account / Key | System | Purpose | Last rotated | In code repo? |
|--------------|--------|---------|-------------|--------------|

---

## Issues Found
| Issue | Severity | Action | Due |
|-------|---------|--------|-----|
```

## Output Contract
- Break-glass account credentials must be accessible to Dr. Lewis AND Matt Mathison by two separate means — a break-glass account that only one person can access is not a true emergency recovery option; if Dr. Lewis is unavailable during a crisis and Matt Mathison needs access to restore operations, the break-glass process must work without Dr. Lewis; standard: break-glass credentials stored in BitWarden (Dr. Lewis and Matt Mathison both have access to the break-glass entry) AND a sealed physical copy in MBL Partners office secured location; annual test: Dr. Lewis verifies credentials work; Matt Mathison confirms he has access to BitWarden break-glass entry; actual break-glass account usage triggers immediate post-incident review (why did we need it? what do we fix so we don't need it again?)
- API keys in code repositories are an immediate remediation item regardless of whether the repository is public or private — a secret committed to git is compromised even if immediately removed, because git history persists; the correct response to finding an API key in a code repo: (1) revoke the key immediately in the issuing system (before doing anything else); (2) generate a new key; (3) store the new key in the password manager; (4) configure the application to read from the password manager or environment variable; (5) confirm the old key in git history no longer works; (6) if the repository is public on GitHub, assume the key has been scraped by automated crawlers and treat it as definitely compromised; Dr. Lewis is notified of any API key exposure regardless of repository visibility
- HITL required: new Global Admin account creation → Dr. Lewis approves; admin account removal → Dr. Lewis executes or confirms IT execution; API key rotation → Dr. Lewis or IT executes with documentation; break-glass account access → Dr. Lewis or Matt Mathison (emergency); JIT admin grant → Dr. Lewis grants and revokes; service account creation → Dr. Lewis approves purpose and permissions; quarterly admin audit findings → entity CEO briefed on any admin count or health issues; compromised admin account → Matt Mathison notified immediately

## System Dependencies
- **Reads from:** M365 Admin Center (Global Admin role members; admin account MFA status); GHL admin console; AdvancedMD admin; QB admin; Covercy admin; password manager (BitWarden — admin credentials inventory; service account inventory; API key inventory); code repositories (scan for secrets); prior admin audit report
- **Writes to:** Admin account audit report (SharePoint → [Entity] → Security → Admin-Access-Review → [Date]); service account and API key inventory (BitWarden; password manager); break-glass credentials (BitWarden + physical sealed copy); entity CEO admin access briefing (quarterly); security program status (privileged access pillar); Monday.com (admin tasks — new account; rotation; removal)
- **HITL Required:** New Global Admin → Dr. Lewis; admin removal → Dr. Lewis confirms; API key rotation → Dr. Lewis / IT + documentation; break-glass access → Dr. Lewis or Matt Mathison; JIT grant → Dr. Lewis grants + revokes; service account creation → Dr. Lewis; quarterly audit issues → entity CEO briefed; compromised admin → Matt Mathison immediately

## Test Cases
1. **Golden path:** Quarterly admin audit for MBL HoldCo. Findings: Global Admin accounts — 2 (jlewis-admin@mbl.com ✅; break-glass account ✅). Admin MFA: both ✅ (hardware key). Admin accounts separate from daily use: ✅. Service accounts: svc-krista-m365 (Krista → M365 integration; last rotated 45 days ago — within 90-day window ✅). API keys: 3 keys in BitWarden for GHL webhooks; last rotated 87 days ago — due this week. Action: IT rotates GHL webhook API keys this week; update BitWarden; update GHL webhook configuration. Report filed. Entity CEO briefed: "Admin access is clean — 2 Global Admin accounts; all MFA compliant; one API key rotation due this week (scheduled)." No issues.
2. **Edge case:** IT admin finds a Covercy API key hard-coded in a Python script in an internal GitHub repository (private repo): Dr. Lewis: "Treat this as a confirmed compromise — revoke the Covercy API key in the Covercy admin portal immediately. Generate a new key. Move the new key to BitWarden. Update the Python script to read the key from an environment variable (not hard-coded). Verify the script still works. Check if anyone has forked or cloned this repo — if internal repo, check access log. Even though it's private, hard-coded secrets are high risk if the repo is ever made public or a developer's machine is compromised. Log the incident: what was found; when; immediate actions taken; Dr. Lewis review. HIVE entity CEO notified: 'Covercy API key was found in code — revoked and replaced immediately; no evidence of unauthorized access; access controls reviewed.'"
3. **Adversarial:** Entity CEO asks to give their executive assistant Global Admin on M365 "so she can help manage things": Dr. Lewis: "I want to understand what tasks the EA needs to handle — there's likely a more targeted solution than Global Admin. Global Admin is the most powerful role in M365; an EA with Global Admin can access all mailboxes, reset any user's password, and change any tenant setting. What specifically does she need to do? If it's: manage user accounts → assign User Admin role (not Global Admin); manage licenses → assign License Admin; manage SharePoint → assign SharePoint Admin. The principle of least privilege means we give her exactly the permissions needed for those specific tasks — not a master key to the entire tenant. I'll build her the right admin roles. If there's something on the list that actually does require Global Admin, we can discuss that specific task."

## Audit Log
Admin account audit records (quarterly; entity; systems covered; account count; MFA status; Dr. Lewis review; entity CEO briefing; SharePoint). New admin account records (account; system; Dr. Lewis approval; date; purpose; designated admin). Admin removal records (account; system; reason; Dr. Lewis execution; date). Service account records (account; purpose; owner; permissions; creation date; last rotation). API key records (key purpose; system; BitWarden entry; last rotation; rotation schedule). Break-glass account records (credentials; access locations; annual verification; Dr. Lewis + Matt Mathison confirmation). API key exposure incidents (repo; key; revocation date; new key; Dr. Lewis notification; entity CEO briefing).

## Deprecation
Admin account standards reviewed annually. M365 admin role guidance updated when Microsoft changes role architecture. API key rotation schedule reviewed when systems or integrations change. Break-glass process reviewed annually and after any emergency access event. Service account inventory reviewed when new integrations are deployed.
