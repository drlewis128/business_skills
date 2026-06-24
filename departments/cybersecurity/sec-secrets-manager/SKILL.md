---
name: sec-secrets-manager
description: "Manage secrets, credentials, and API keys for MBL portfolio companies. Use when the user says 'secrets management', 'API key management', 'API key', 'API credential', 'secrets', 'credentials', 'passwords', 'password manager', 'password vault', 'credential vault', 'BitWarden', 'credential storage', 'store credentials securely', 'share credentials securely', 'rotate credentials', 'rotate API keys', 'credential rotation', 'rotate secrets', 'key rotation', 'secret rotation', 'GitHub secrets', 'CI CD secrets', 'environment variables', 'hardcoded credentials', 'hardcoded API key', 'credentials in code', 'API key in code', 'API key exposed', 'exposed credentials', 'leaked credentials', 'sensitive credentials', 'service account password', 'service account credentials', 'admin password', 'admin credentials', 'shared credentials', 'shared password', 'team credentials', 'team password', 'password policy', 'password strength', 'password complexity', 'password length', 'pass phrase', 'credential hygiene', 'key management', 'sensitive data management', or 'access tokens'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <audit|rotate|store|policy>] [--scope <api-keys|passwords|service-accounts|all>]"
---

# Sec Secrets Manager

Manage secrets, credentials, and API keys for MBL portfolio companies — establishing a secure credential vault, enforcing password policies, managing API key rotation, and eliminating credential sprawl across email threads, spreadsheets, and code repositories. Every unvaulted credential is a breach waiting to happen; every credential shared via email is potentially in an attacker's hands if that email is compromised.

## When to Use
- Auditing current credential management practices for an entity
- Setting up a password manager / credential vault for a new entity
- Responding to a suspected credential exposure (hardcoded in code; shared insecurely)
- Implementing API key rotation for SaaS integrations

## Secrets Management Framework

```
CREDENTIAL VAULT (MBL standard):

  Tool: BitWarden (recommended — open source; self-hostable or cloud; affordable)
    Business plan: ~$3/user/month — includes admin console; collections; shared items
    Alternative: 1Password Business; Dashlane Business; Keeper
    
  BitWarden Organization setup per entity:
    Organization: [Entity Name]
    Collections (by system or role):
      IT-Admin: router/AP admin; server admin; Intune; network device
      M365-Admin: M365 global admin; break-glass accounts; Entra admin
      SaaS-Ops: GoHighLevel admin; Monday.com admin; Covercy; QuickBooks
      Allevio-Clinical: AdvancedMD admin; clinical system credentials
      API-Keys: Krista.ai; GHL API; QuickBooks API; external service keys
      
    Access controls:
      IT-Admin collection: IT + Dr. Lewis
      M365-Admin collection: Dr. Lewis + entity CEO (read-only for break-glass)
      API-Keys collection: Dr. Lewis + technical team
      Break-glass account passwords: Dr. Lewis + Matt Mathison ONLY
      
PASSWORD POLICY (MBL standard):

  Human accounts (employee M365 accounts):
    Minimum length: 14 characters (NIST 2024 guidance — length > complexity)
    Complexity: not required by NIST (length is the primary control)
    MFA: required (reduces password strength requirement as a compensating control)
    Expiry: NO forced expiry (NIST 2024 — only reset on known compromise)
    Password manager use: strongly encouraged for all employees
    Common passwords: blocked by Entra ID's Password Protection feature (enable per entity)
    
  Admin accounts (M365 admin; system admin):
    Minimum length: 20 characters
    Unique: not reused across any system
    Stored: BitWarden only — not written down; not in email; not in Teams
    
  Service accounts and API keys:
    Generated: use a random password generator (BitWarden built-in or similar)
    Length: 32+ characters for API keys; 20+ for service account passwords
    Stored: BitWarden API-Keys collection; nowhere else
    
CREDENTIAL ANTI-PATTERNS (prohibited):

  Hardcoded in code: API keys; database passwords; OAuth secrets in source code files
    Risk: developers commit to GitHub; public repo = public credential; private repo = still exposed
    Detection: GitHub has secret scanning; look for patterns (sk_live_; ghp_; AKIA; etc.)
    Response: rotate immediately; assume compromised; sec-incident-responder if production system
    
  Shared via email or Teams:
    Risk: email and Teams messages persist in archives; if account compromised, attacker sees all credentials ever shared
    Permitted: sharing a BitWarden item link with another BitWarden organization member (encrypted)
    
  Stored in spreadsheets:
    Risk: spreadsheets emailed; stored on OneDrive (shared broadly); no encryption
    Prohibited: no credential spreadsheets; all credentials in BitWarden
    
  Post-it notes or whiteboard:
    Prohibited at clinic locations for AdvancedMD or wireless passwords — HIPAA physical safeguard
    
API KEY ROTATION SCHEDULE:

  Rotation triggers:
    Employee with API key access leaves the company (rotate immediately)
    Credential appears in dark web (sec-dark-web-monitor — rotate immediately)
    Suspected or confirmed compromise (rotate immediately)
    
  Scheduled rotation:
    API keys: rotate quarterly (best practice for production API credentials)
    Service account passwords: rotate annually (or on compromise)
    Wireless PSK (clinical): rotate quarterly (see sec-wireless-security-auditor)
    Admin passwords: rotate semi-annually
    
  Post-rotation process:
    1. Generate new credential
    2. Update in all systems that use it (test connectivity)
    3. Update BitWarden record (add new value; archive old)
    4. Confirm old credential no longer works
    5. Document: date rotated; who rotated; systems updated
```

## Output Format

```markdown
# Secrets Management Status — [Entity] | [Date]
**Vault:** BitWarden | **Admin:** Dr. John Lewis

---

## Credential Hygiene Status
| Category | In vault | Issue | Priority |
|---------|---------|-------|---------|
| M365 admin credentials | ✅/❌ | | |
| Break-glass accounts | ✅/❌ | Dr. Lewis + Matt Mathison | |
| SaaS admin credentials | ✅/❌ | | |
| API keys | ✅/❌ | | |
| Service accounts | ✅/❌ | | |
| Credentials in code detected | ✅/❌ | | P0 if ✅ |

---

## Rotation Due
| Credential | System | Last rotated | Due | Status |
|-----------|--------|-------------|-----|--------|
| GHL API key | GoHighLevel | [Date] | [Date] | 🟢/🔴 |
```

## Output Contract
- Hardcoded credentials in code require immediate rotation and are treated as compromised — the moment an API key, database password, or OAuth secret is found hardcoded in source code, Dr. Lewis treats that credential as compromised even if the repository is private; private repositories are not always private forever (team growth; integrations; accidental public setting); the credential is rotated within 24 hours; the old credential is revoked; any system that used the old credential is reviewed for unauthorized access; the developer who committed the credential receives targeted training on using environment variables or vault references; code repositories are scanned for credential patterns monthly (GitHub secret scanning; local git grep for patterns like "api_key="; "password="; "sk_live_"; "AKIA")
- Password managers are not optional for admin accounts — admin credentials managed in email, spreadsheets, or personal notes cannot be audited, cannot be rotated systematically, cannot be shared securely with successors, and cannot be revoked when access should end; BitWarden provides all of these capabilities; the setup cost is approximately 2 hours per entity (create org; configure collections; migrate credentials from wherever they currently are; enroll admin users); the ongoing benefit is: every admin credential rotation is documented; every access grant is logged; every share is auditable; when Dr. Lewis leaves an engagement, the vault remains with the entity; Dr. Lewis configures collection access so entity CEO has access to break-glass and M365-Admin collections, ensuring business continuity without Dr. Lewis
- HITL required: hardcoded credential found → Dr. Lewis rotates immediately; sec-incident-responder if production system; entity CEO if sensitive credential; API key rotation → Dr. Lewis generates; IT updates in systems; Dr. Lewis confirms old credential disabled; break-glass account credentials → Dr. Lewis + Matt Mathison only; no exceptions; access grants to BitWarden collections → Dr. Lewis approves; entity CEO informed of admin collection grants; BitWarden admin console changes → Dr. Lewis only; credential for departed employee → rotate immediately on same day as departure; entity CEO access review for any shared collections that included the departed employee

## System Dependencies
- **Reads from:** BitWarden organization vault (credential inventory; rotation dates; access log); GitHub repository scan results (secret scanning alerts; committed credential patterns); sec-iam-manager (offboarding list — departed employee triggers immediate credential rotation); sec-dark-web-monitor (credential exposure alerts — trigger rotation); code repositories (grep for hardcoded credential patterns); SaaS admin consoles (API key management — GHL; Covercy; QuickBooks; Krista.ai); Entra ID (service account list; admin accounts)
- **Writes to:** BitWarden vault (credential updates; rotation records; collection access); rotation record (SharePoint → [Entity] → Security → Credentials → Rotation-Log.xlsx — credential; date; rotated by; systems updated; old credential disabled); credential anti-pattern finding (Monday.com — developer training task; remediation; Dr. Lewis); entity CEO credentials briefing (quarterly — vault health; rotation status; any critical findings); hardcoded credential incident record (code file; credential type; date discovered; rotation; sec-incident-responder)
- **HITL Required:** Hardcoded credential → Dr. Lewis rotates within 24hr; entity CEO if sensitive; sec-incident-responder if production; API key rotation → Dr. Lewis generates; IT updates; Dr. Lewis confirms disabled; break-glass credentials → Dr. Lewis + Matt Mathison only; collection access grants → Dr. Lewis; entity CEO informed; departed employee → credential rotation same day; entity CEO collection access review; BitWarden admin → Dr. Lewis only

## Test Cases
1. **Golden path:** Quarterly API key rotation for MBL HoldCo. Dr. Lewis opens BitWarden → API-Keys collection. Identifies: GHL API key (last rotated 95 days ago — due). Krista.ai API key (last rotated 88 days ago — due). QuickBooks Online API token (perpetual token; rotate semi-annually — not due). Actions: (1) GoHighLevel: Admin → Settings → API → Generate new key. Copy to BitWarden (update existing item). Test: one Krista.ai API call confirms new key works. (2) Revoke old GHL key (GHL Admin → API → Revoke). (3) Repeat for Krista.ai (Krista admin → API keys → rotate). (4) Rotation log updated: GHL — rotated [date]; Krista.ai — rotated [date]; rotated by Dr. Lewis; systems confirmed working. Zero disruption. Report filed.
2. **Edge case:** A developer on a Column6 technical project committed a GHL API key to a GitHub repository 3 months ago (discovered via GitHub secret scanning alert): Dr. Lewis: "This credential has been exposed in GitHub for 3 months — treat as compromised. (1) Rotate the GHL API key immediately (GHL Admin → API → Generate new; update all integrations that use it; revoke old). (2) Review GHL audit log for the past 3 months: were there any API calls from unexpected sources or at unexpected times? (3) If unauthorized GHL access detected: sec-incident-responder activated. (4) If no unauthorized access found: document 'credential exposed for 90 days in private GitHub repo; rotated; no evidence of unauthorized use.' (5) Entity CEO notified. (6) Developer: targeted training — environment variables and vault references, not hardcoded keys. (7) GitHub Advanced Security secret scanning: confirm enabled for all repositories."
3. **Adversarial:** An employee requests the AdvancedMD admin password via Teams message so they can "fix something quickly": Dr. Lewis: "Admin passwords are not shared via Teams — this is a security policy requirement. Reasons: (1) Teams messages are stored in M365 mailbox archives; if an account is compromised, the attacker can search Teams history for passwords. (2) The correct process for sharing access is through BitWarden: if this employee needs AdvancedMD admin access, I add them to the appropriate BitWarden collection — they retrieve the credential from the vault, and their access is logged. (3) If they need temporary admin access for a one-time task, I can be present (screen share) while they perform the task using my admin credentials — no password sharing required. I'll follow up in 15 minutes to help complete the fix using one of these methods."

## Audit Log
Credential vault records (BitWarden organization per entity; collection structure; access grants; Dr. Lewis admin; date configured). API key rotation records (credential; system; last rotated; date rotated; Dr. Lewis; systems updated; old credential disabled; SharePoint rotation log). Hardcoded credential records (repository; file; credential type; date discovered; date rotated; systems confirmed; developer training; entity CEO informed). Departed employee rotation records (employee; credentials affected; rotation date; Dr. Lewis; triggered by sec-iam-manager). BitWarden collection access grant records (collection; access granted to; Dr. Lewis approval; entity CEO informed; date). Break-glass credential records (account; Dr. Lewis + Matt Mathison access; date set; location in BitWarden).

## Deprecation
Credential vault tool reviewed annually (BitWarden pricing; alternative tools; feature evaluation). Password policy reviewed when NIST updates password guidance. API key rotation schedule reviewed when MBL integrations change. Hardcoded credential detection tooling reviewed when GitHub updates secret scanning capabilities. Collection structure reviewed when entity system inventory changes.
