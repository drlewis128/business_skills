---
name: sec-mfa-enforcer
description: "Plan and enforce multi-factor authentication for MBL portfolio company systems. Use when the user says 'MFA', 'multi-factor authentication', 'two-factor authentication', '2FA', 'enforce MFA', 'require MFA', 'MFA policy', 'MFA rollout', 'MFA deployment', 'authenticator app', 'authentication app', 'Microsoft Authenticator', 'Google Authenticator', 'Duo', 'TOTP', 'security key', 'hardware token', 'passwordless', 'passkeys', 'MFA exceptions', 'MFA bypass', 'no MFA', 'users without MFA', 'accounts without MFA', 'M365 MFA', 'GHL MFA', 'Covercy MFA', 'admin MFA', 'executive MFA', 'MFA resistance', 'users refusing MFA', 'legacy authentication', 'basic authentication', 'block legacy auth', 'conditional access', 'security defaults', or 'account security'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--system <m365|ghl|all>] [--action <assess|deploy|report|exception>]"
---

# Sec MFA Enforcer

Plan and enforce multi-factor authentication across MBL portfolio company systems — closing the single largest gap between "accounts with passwords" and "accounts that are hard to compromise." Compromised credentials are the most common entry point for data breaches, ransomware, and business email compromise. MFA stops 99.9% of automated credential attacks. For MBL's portfolio, MFA is not optional; it is the first control before any other security investment.

## When to Use
- Assessing current MFA coverage across entity systems
- Planning and executing MFA rollout for an entity
- Handling an employee who refuses or struggles with MFA
- Enforcing MFA after a credential incident

## MFA Framework

```
MBL MFA POLICY (applies to all entities):
  Required for ALL accounts with:
    External access (any system accessible via internet — M365, GHL, Covercy, QB Online)
    Admin privileges (any account with elevated permissions in any system)
    PHI access (Allevio — AdvancedMD; Marshall Medical Billing — non-negotiable)
    Financial transaction access (QuickBooks; Bill.com; bank portals)
    
  NOT required (internal-only systems with no external access) — rare in SaaS-first environment
  
MFA METHOD HIERARCHY (most → least preferred):
  1. Phishing-resistant (gold standard): Hardware security key (YubiKey) or Passkeys
  2. Authenticator app (TOTP): Microsoft Authenticator; Google Authenticator; Authy
  3. Push notification: Microsoft Authenticator app push (MFA fatigue risk — see below)
  4. SMS/voice OTP: Last resort; least secure; phishable; avoid where possible
  
  Admin accounts: Must use phishing-resistant MFA (hardware key or authenticator app TOTP)
  Standard users: Authenticator app TOTP minimum; push notifications acceptable with fatigue training
  Financial accounts: Authenticator app TOTP minimum (never SMS-only)
  
MFA FATIGUE ATTACKS — awareness for all entities:
  Attack: attacker compromises a password; sends repeated MFA push notifications;
          user approves a push to stop the notifications
  Counter: train users to NEVER approve an MFA push they didn't initiate;
           report unexpected MFA pushes immediately to IT
  MBL configuration: M365 → require "number matching" in MFA push (user must enter
                     the 2-digit number shown on the login screen into the app)
                     
M365 MFA ENFORCEMENT OPTIONS (in order of preference):
  Option 1 — Conditional Access policies (requires Azure AD P1 / M365 Business Premium):
    Most flexible; can require MFA from specific locations; for specific apps; for admins only
    Recommended for MBL entities with >10 employees
    
  Option 2 — Security Defaults (free; Microsoft's baseline):
    Enables MFA for all users; blocks legacy auth; protects admin accounts
    Less flexible; appropriate for entities just starting with MFA
    Can be enabled in M365 Admin Center → Azure AD → Properties → Security Defaults
    
  Option 3 — Per-user MFA (legacy method; not recommended for new deployments):
    More work to manage; does not block legacy auth; use Security Defaults instead
    
LEGACY AUTHENTICATION BLOCKING:
  Legacy auth: older email protocols (POP3; IMAP; SMTP Basic Auth; basic auth in Exchange)
  that cannot use MFA — they accept just username + password
  Why it matters: attacker with stolen credentials can bypass MFA by using legacy auth protocols
  Action: block legacy auth in M365 (Conditional Access or Security Defaults does this)
  Impact: if any systems use legacy auth (old mail clients; automated email scripts), they will break
  Pre-blocking: survey all legacy auth usage; migrate or exclude before blocking
  
MFA ROLLOUT PROCESS:
  Phase 1 (Week 1): Admin accounts — 100% before anything else
  Phase 2 (Weeks 2-3): All users — staged rollout with IT support available
  Phase 3 (Week 4): Block legacy auth; test all systems; confirm no breakage
  Phase 4 (Ongoing): Monitor MFA registration status; catch new employees within 30 days of hire
  
EXCEPTION HANDLING:
  No blanket MFA exceptions based on seniority or personal preference
  Temporary exception (<30 days): technical issue with device; IT provides temporary workaround
  Permanent exception: does not exist; if a system genuinely cannot support MFA, it is replaced or isolated
  "My phone doesn't have space for the app": provide hardware YubiKey at entity expense (< $50)
  "I travel internationally and can't get SMS": move from SMS to TOTP app (this is an upgrade, not an exception)
  Entity CEO refusing MFA: Dr. Lewis escalates to Matt Mathison (entity CEO account is highest-value target)
```

## Output Format

```markdown
# MFA Coverage Report — [Entity] | [Date]
**Target:** 100% MFA on all external-access accounts | **Current:** [%]

---

## MFA Status by System
| System | Total accounts | MFA enrolled | % coverage | Gaps |
|--------|---------------|-------------|-----------|------|
| M365 | [N] | [N] | [%] | [list accounts without MFA] |
| GHL | [N] | [N] | [%] | |
| AdvancedMD | [N] | [N] | [%] | |
| Covercy | [N] | [N] | [%] | |

---

## Admin Accounts (highest priority)
| Account | System | MFA type | Phishing-resistant? |
|---------|--------|---------|-------------------|
| Dr. Lewis | M365 | Hardware key | ✅ |
| [Entity CEO] | M365 | Authenticator TOTP | ✅ |

---

## Open Issues
| User | System | Issue | Owner | Due |
|------|--------|-------|-------|-----|
| [Name] | M365 | Not registered | IT | [7 days] |
```

## Output Contract
- Admin accounts must use phishing-resistant MFA before any other MFA work begins — the admin account is the master key to the entire tenant; if an attacker compromises the M365 Global Admin account, they can create new accounts, access all mailboxes, delete security logs, disable MFA for other users, and exfiltrate all data; this is why admin account MFA is a P0 requirement (same-day fix when found absent); Dr. Lewis's M365 Global Admin account uses a hardware security key (YubiKey); the entity CEO admin account uses at minimum an authenticator app TOTP (not SMS; not push notification without number matching); no admin account uses SMS-only MFA
- MFA rejection by users is a communication problem before it's a policy enforcement problem — the most effective MFA rollouts start with "here's why this matters for you personally" not "you're required to do this"; Dr. Lewis's recommended framing: "We've seen other companies in our industry lose money and data because someone guessed an employee's password. MFA means that even if someone has your password, they still can't get in — because they don't have your phone. It takes about 3 seconds on login once you're set up. We're doing this for everyone because it's the fastest way to protect the company and your own account." If a user refuses after communication: entity CEO delivers the requirement as a condition of continued employment; Dr. Lewis does not argue the point further
- HITL required: MFA enforcement enabling (Security Defaults or Conditional Access) → Dr. Lewis approves before enabling; legacy auth blocking → Dr. Lewis surveys usage first; IT executes with entity CEO approval; MFA exception requests → Dr. Lewis reviews + entity CEO approves (no permanent exceptions); admin account MFA → Dr. Lewis verifies personally; M365 MFA policy changes → Dr. Lewis approves; phishing-resistant MFA hardware purchase → entity CEO approves budget; entity CEO refusal → Dr. Lewis escalates to Matt Mathison

## System Dependencies
- **Reads from:** M365 Admin Center (MFA registration status; Conditional Access policies; Security Defaults status; legacy auth usage reports); GHL admin (MFA settings); AdvancedMD admin (MFA status); Covercy admin (MFA settings); QB admin (MFA settings); active employee roster (IAM — sec-iam-manager); prior MFA coverage report
- **Writes to:** MFA coverage report (SharePoint → [Entity] → Security → MFA → Coverage-[Date]); M365 Conditional Access policies (Dr. Lewis enables); Security Defaults toggle (Dr. Lewis enables); legacy auth block (Dr. Lewis enables after survey); entity CEO MFA status briefing; security program status (identity control pillar); Monday.com task (MFA enrollment for new employees — due Day 30 of hire)
- **HITL Required:** Security Defaults or Conditional Access enabling → Dr. Lewis; legacy auth blocking → Dr. Lewis (post-survey) + entity CEO approval; MFA exception → Dr. Lewis + entity CEO; admin account MFA → Dr. Lewis verifies personally; hardware key purchase → entity CEO budget approval; entity CEO refusal → Dr. Lewis escalates to Matt Mathison; new MFA method policy change → Dr. Lewis approves

## Test Cases
1. **Golden path:** MBL HoldCo MFA assessment — 12 users. M365 MFA status: 9/12 enrolled (75%). 3 not enrolled: 1 new hire (started 2 weeks ago), 1 executive assistant, 1 operations manager. Admin accounts: Dr. Lewis (hardware key ✅); entity CEO (authenticator TOTP ✅). Legacy auth: report shows 2 accounts using SMTP Basic Auth for automated email scripts. Action plan: (1) IT contacts 3 non-enrolled users today with instructions + direct link — new hire has 30-day window (2 weeks in; remind to complete this week); EA and ops manager given 7-day deadline with IT support offered. (2) Legacy auth: IT identifies the 2 SMTP Basic Auth scripts — update to OAuth or app passwords before blocking. (3) Dr. Lewis enables Conditional Access requiring MFA from all locations after legacy auth migration complete (estimated 2 weeks). (4) Report: 9/12 → target 12/12 in 2 weeks.
2. **Edge case:** An Allevio clinical coordinator says she can't use MFA because "I log in to AdvancedMD dozens of times a day and can't be doing this every time": Dr. Lewis: "Modern TOTP apps remember your session within a trusted network (the clinic Wi-Fi) for up to 24 hours — you won't authenticate with MFA for every single AdvancedMD session, just once per day on a trusted device. For AdvancedMD access involving PHI, MFA is non-negotiable — it's the primary technical safeguard protecting patient data. Let's have IT set you up with the authenticator app and configure the session persistence settings so it's as frictionless as possible. The first week can feel different; after that most users tell us they barely notice it."
3. **Adversarial:** IT proposes to exclude executive accounts from MFA because "they travel internationally and can't always get SMS codes": Dr. Lewis: "Executive accounts are the highest-value target for attackers — they have the most access and can authorize the most damaging actions. Excluding them from MFA is the opposite of the right answer. The solution to international travel is: move from SMS to an authenticator app (works offline; no cell signal needed; TOTP generates without any network); or use a hardware key (works anywhere; no network needed). Both are more secure than SMS and solve the international travel problem. SMS was never our preferred MFA method. I'll have IT switch all executive accounts to authenticator app TOTP this week — it's an improvement over SMS, not a burden."

## Audit Log
MFA enrollment records (entity; system; user; enrollment date; method; Dr. Lewis review; quarterly status). Admin account MFA records (account; method; phishing-resistant; Dr. Lewis verification date). MFA exception records (user; system; request reason; Dr. Lewis + entity CEO decision; outcome; date). Legacy auth blocking records (survey date; systems affected; migration date; block date; Dr. Lewis execution). Conditional Access / Security Defaults records (policy; enabled date; Dr. Lewis; entity CEO; M365 configuration). MFA incident records (unexpected MFA push; entity; response action; date).

## Deprecation
MFA standards reviewed annually. Method hierarchy updated as new authentication standards emerge (passkeys; FIDO2). Legacy auth blocking guidance updated when Microsoft changes support timelines. Phishing-resistant MFA hardware options updated when new products release. MFA fatigue attack guidance updated when new attack patterns emerge.
