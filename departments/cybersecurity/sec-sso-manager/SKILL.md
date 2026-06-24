---
name: sec-sso-manager
description: "Manage Single Sign-On (SSO) and identity federation for MBL portfolio companies. Use when the user says 'SSO', 'single sign-on', 'sign-on', 'federated identity', 'identity federation', 'SAML', 'OAuth', 'OIDC', 'identity provider', 'IdP', 'Entra ID', 'Azure AD', 'Azure Active Directory', 'conditional access', 'Conditional Access policy', 'Microsoft Entra', 'MFA conditional access', 'sign-in policy', 'login policy', 'access policy', 'enterprise app', 'enterprise application', 'app registration', 'connect app to SSO', 'SSO integration', 'SSO for GoHighLevel', 'SSO for Covercy', 'SSO for AdvancedMD', 'SSO for Monday.com', 'Microsoft login', 'work account login', 'manage who can access what', 'login access control', 'MFA enforcement', 'passwordless', 'password policy', 'sign-in risk', 'risky sign-in', 'sign-in alert', 'unusual login', 'login from unusual location', 'identity governance', 'entitlement management', 'Conditional Access named locations', 'geofencing', or 'blocking countries'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <assess|configure|enforce|integrate>] [--scope <mfa|ca-policy|app-integration|passwordless>]"
---

# Sec SSO Manager

Manage Single Sign-On (SSO) and identity federation for MBL portfolio companies — configuring Microsoft Entra ID as the central identity provider, enforcing Conditional Access policies, and integrating SaaS applications so that M365 credentials serve as the master identity across the MBL ecosystem. SSO reduces password sprawl (each additional username/password pair is an attack surface), enables centralized access control (when an employee is offboarded in Entra, they lose access everywhere), and provides sign-in risk monitoring.

## When to Use
- Configuring or reviewing Conditional Access policies for an entity
- Integrating a new SaaS application with M365 SSO
- Responding to a risky sign-in alert from Entra ID
- Enforcing MFA via Conditional Access rather than Security Defaults

## SSO Management Framework

```
MBL IDENTITY ARCHITECTURE:

  Identity Provider: Microsoft Entra ID (Azure Active Directory) per entity
    MBL HoldCo: MBL tenant — @mblpartners.com accounts
    Allevio: Allevio tenant — @allevio.com accounts
    Column6: Column6 tenant — @column6.com accounts
    HIVE: HIVE tenant — @hive-partners.com accounts
    
    Entra ID is the identity source of truth for each entity
    All SaaS applications should authenticate via Entra where possible
    
  SSO Integration Priority (SaaS applications):
    Already M365-integrated: SharePoint; OneDrive; Teams; Outlook ✅ (automatic)
    Target for SSO integration:
      GoHighLevel: SAML or OAuth integration with Entra (check GHL documentation)
      Monday.com: supports Microsoft SSO — configure in Monday.com admin settings
      Covercy: check if SAML integration available (contact Covercy)
      QuickBooks Online: limited SSO support; use strong password + MFA instead
      AdvancedMD: check SAML integration (healthcare platform — may support SAML)
      Krista.ai: API key integration; SSO less relevant for orchestration platform

CONDITIONAL ACCESS POLICIES (MBL standard — configure per entity):

  Policy 1 — Require MFA for all users (baseline):
    Target: All users; All cloud apps
    Condition: Any location; Any device
    Grant: Require MFA
    Mode: Enforce (not Report-only)
    Note: This replaces Security Defaults; provide more flexibility + same protection
    
  Policy 2 — Block legacy authentication:
    Target: All users
    Condition: Exchange ActiveSync + Other clients (legacy protocols)
    Grant: Block
    Why: Legacy protocols bypass MFA — they are the most common MFA bypass vector
    
  Policy 3 — Require compliant or Entra-joined device (advanced — add when Intune is fully deployed):
    Target: All users; All cloud apps
    Condition: Any location
    Grant: Require device compliance OR Hybrid Entra-joined
    Note: Requires Intune MDM deployed for all endpoints first
    
  Policy 4 — Block sign-in from high-risk locations (optional — add if entities have no business in flagged countries):
    Target: All users; All cloud apps
    Condition: Named Locations (include specific countries to block)
    Grant: Block
    Use case: block access from countries where MBL has no employees and high fraud rate
    
  Policy 5 — Admin accounts require phishing-resistant MFA (FIDO2 or certificate):
    Target: Global Admins + Security Admins (privileged role group)
    Condition: Any
    Grant: Require authentication strength → Phishing-resistant MFA
    
RISKY SIGN-IN RESPONSE:
  Entra ID Protection (P2 license) detects:
    Atypical travel (sign-in from NYC then Singapore 2 hours later)
    Unfamiliar sign-in properties (new device; new browser; new location)
    Leaked credentials (Entra monitors breach databases — similar to HIBP)
    Malicious IP address
    
  MBL response without P2 license (Business Premium):
    Review M365 Sign-in logs monthly (Entra → Sign-in logs)
    Filter for: Failed sign-ins; unusual countries; unusual ISPs; unusual device
    Failed sign-in spike = credential stuffing attack in progress
    Successful sign-in from unusual location = investigate immediately
    
  Response to successful unusual sign-in:
    1. Verify with the user: "Did you sign in from [Location] at [Time]?"
    2. If unauthorized: block sign-in + revoke sessions + reset password + MFA re-enroll
    3. Treat as credential compromise (sec-phishing-response-coordinator Type 3)
    
OFFBOARDING AND SSO:
  When employee is terminated:
    Disable account in Entra immediately (this logs them out of all M365 sessions)
    All SSO-integrated apps: access revoked automatically on Entra disable
    Apps without SSO (QuickBooks; AdvancedMD if not SSO): must be revoked separately
    This is why SSO integration is prioritized — offboarding one person in Entra should be sufficient
    See sec-iam-manager for full offboarding checklist
```

## Output Format

```markdown
# SSO Configuration Status — [Entity] | [Date]
**Identity Provider:** Microsoft Entra ID | **Tenant:** [tenant.onmicrosoft.com]

---

## Conditional Access Policies
| Policy | Status | Last reviewed |
|--------|--------|--------------|
| Require MFA for all users | 🟢 Enforced / 🔴 Not configured | [Date] |
| Block legacy authentication | 🟢 Enforced / 🔴 Not configured | |
| Require compliant device | ⏳ Pending Intune / 🟢 Enforced | |
| Block high-risk countries | Optional / 🟢 Configured | |
| Admin phishing-resistant MFA | 🟢 Enforced / 🔴 Gap | |

---

## SSO App Integration Status
| App | SSO integrated | Notes |
|-----|--------------|-------|
| Monday.com | ✅ Yes | Microsoft SSO enabled |
| GoHighLevel | ❌ No | Password + MFA; SSO integration pending |
| AdvancedMD | ⚠️ Investigating | SAML availability confirmed with vendor |
```

## Output Contract
- Security Defaults vs. Conditional Access: once Conditional Access policies are enabled, Security Defaults must be disabled — they cannot coexist; Security Defaults (the "automatic" Microsoft MFA setting) provide basic MFA enforcement but no flexibility (cannot exclude break-glass accounts; cannot set location-based policies; cannot enforce phishing-resistant MFA for admins specifically); Dr. Lewis's standard: disable Security Defaults and configure Conditional Access explicitly once the entity reaches Level 2 security maturity; before that, Security Defaults are better than nothing; the transition is: create CA policies → verify each is in Report-only mode and would work correctly → switch to Enforced → then disable Security Defaults
- Legacy authentication block is mandatory before all other CA policies — legacy authentication protocols (Exchange ActiveSync; Basic Auth; SMTP AUTH) bypass Conditional Access MFA enforcement entirely; an attacker with a valid credential can authenticate using a legacy protocol and MFA is never triggered; the legacy auth block policy closes this gap; it is the first CA policy to enforce because every other CA policy can be bypassed if legacy auth remains open; Dr. Lewis checks legacy auth usage in Entra (Sign-in logs → Client app filter: legacy auth) before enabling the block policy, to confirm no business processes rely on legacy protocols; if any do, those must be migrated before the block goes live
- HITL required: Conditional Access policy creation or modification → Dr. Lewis configures; entity CEO informed of new access policies that may affect users; break-glass account always excluded from CA policies (Dr. Lewis and Matt Mathison maintain these); CA policy mode change (Report-only → Enforce) → Dr. Lewis executes after review period; SSO integration for new app → Dr. Lewis configures; entity CEO informed; risky sign-in investigation → Dr. Lewis investigates; if compromise confirmed: entity CEO notified within 2 hours; offboarding Entra disable → must happen same day as termination; SSO-integrated apps auto-revoke; manual app revoke for non-SSO apps (AdvancedMD; QuickBooks)

## System Dependencies
- **Reads from:** Microsoft Entra ID (Conditional Access policies; sign-in logs; users; app registrations; Identity Protection alerts if P2 license); Intune (device compliance status — for device-based CA policy); sec-privileged-access-manager (break-glass account list — always excluded from CA); sec-iam-manager (offboarding trigger — Entra disable); M365 Admin Center (Security Defaults status; tenant configuration); app admin consoles (Monday.com; GHL; AdvancedMD — SSO configuration settings)
- **Writes to:** Conditional Access policy configuration (Entra Admin Center → Protection → Conditional Access); SSO app integration records (SharePoint → [Entity] → Security → Identity → SSO-App-Integrations.xlsx); entity CA policy documentation (SharePoint → [Entity] → Security → Identity → CA-Policies → [Date]); entity CEO policy change notification (email + Monday.com task if user-facing impact); offboarding checklist (non-SSO app revoke list — sec-iam-manager)
- **HITL Required:** CA policy creation/modification → Dr. Lewis; entity CEO informed; break-glass exclusion → Dr. Lewis maintains; CA policy enforce → Dr. Lewis after review period; SSO integration → Dr. Lewis configures; risky sign-in → Dr. Lewis investigates; compromise confirmed → entity CEO 2hr; offboarding → Dr. Lewis same-day Entra disable; non-SSO apps → manual revoke list

## Test Cases
1. **Golden path:** Column6 adds Monday.com as a new project management tool. Dr. Lewis: "I'll integrate Monday.com with Entra SSO before rolling out to users. (1) Monday.com Admin → Security → Authentication → Enable Microsoft SSO. (2) In Entra: Enterprise Applications → New app → Monday.com (from gallery). (3) Configure SAML or OAuth: follow Monday.com's Entra SSO setup guide. (4) Test with Dr. Lewis account first — confirm sign-in via Microsoft credential works. (5) Assign users in Entra (Application → Users and Groups → Add). (6) Announce to Column6 team: 'Monday.com now uses your Microsoft login — click Sign in with Microsoft.' (7) SSO integration record filed. (8) Offboarding benefit: when a Column6 employee leaves, disabling their Entra account revokes Monday.com access automatically."
2. **Edge case:** Legacy auth block policy is enabled in Entra. The next morning, the Allevio front desk reports they cannot send emails from Outlook (their old Outlook version uses Basic Auth): Dr. Lewis: "The legacy auth block is working as intended — it's blocking an old Outlook client that was using Basic Auth. Options: (1) Best: upgrade Outlook to a current version that uses Modern Auth — this resolves the issue and maintains security. (2) If upgrade is not immediately possible: temporarily put the legacy auth CA policy in Report-only mode (buy 2 weeks) while we confirm the upgrade path. (3) Document: which device; which Outlook version; which account. Set Monday.com task for Outlook upgrade within 14 days. Legacy auth should remain blocked everywhere else. (4) Do not create a CA exclusion for this account — that creates a persistent security hole. Fix the underlying Outlook version instead."
3. **Adversarial:** A risky sign-in alert: Entra sign-in log shows Matt Mathison's account signed in successfully from Kyiv, Ukraine at 2:17 AM MT. Dr. Lewis: "This is a high-priority sign-in anomaly. Matt Mathison does not travel to Ukraine. (1) Immediately: call Matt Mathison's known mobile number. 'Matt — this is Dr. Lewis. Did you sign into your Microsoft account at 2 AM from Ukraine tonight?' If Matt says no: (2) Block sign-in immediately in Entra (Admin Center → Users → Matt Mathison → Block sign-in). (3) Revoke all active sessions. (4) Reset Matt Mathison's password. (5) Re-enroll MFA (hardware key — phishing-resistant). (6) Review what Matt's account accessed after the 2 AM sign-in: Entra audit logs; SharePoint access logs; email sent. (7) Matt Mathison is notified and involved throughout — this is his account. (8) sec-incident-responder activated — executive account compromise is P0."

## Audit Log
Conditional Access policy records (all CA policies; entity; configuration; mode; creation date; last reviewed; Dr. Lewis; SharePoint). CA policy change records (policy; change; reason; Dr. Lewis; entity CEO informed; date). SSO app integration records (app; integration method; date; Dr. Lewis configured; users assigned; SharePoint). Risky sign-in investigation records (alert; account; Dr. Lewis investigation; outcome; containment if applicable; date). Legacy auth block review records (date; legacy auth usage check; date block enforced; Dr. Lewis). Offboarding SSO revoke records (employee; Entra disable; date; non-SSO apps revoked; sec-iam-manager).

## Deprecation
SSO management reviewed annually. CA policies reviewed when Microsoft releases new Conditional Access features or changes policy behavior. Legacy auth block reviewed if any entity has persistent Basic Auth dependencies (track toward elimination). SSO integration list updated when entities add or remove SaaS applications. Risky sign-in alert response updated when Entra Identity Protection capabilities change. Passwordless authentication (FIDO2; Windows Hello) adoption roadmap reviewed annually.
