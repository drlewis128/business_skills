---
name: password-policy-enforcer
description: "Enforce and audit password policies across systems. Use when the user says 'password policy', 'enforce password', 'password audit', 'weak passwords', 'password requirements', 'password hygiene', 'password manager', 'banned passwords', 'M365 password policy', or 'check our password compliance'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <M365|AD|apps|all>] [--mode <audit|configure|report>]"
---

# Password Policy Enforcer

Enforce and audit password policies across systems. Weak or reused passwords are one of the top causes of account compromise. Good password policy isn't about complexity rules that users ignore — modern best practice (NIST SP 800-63B) focuses on length, breach exposure checking, and MFA over complexity requirements. This skill audits and configures password policies across MBL's Microsoft 365 / Entra ID environment.

## When to Use
- Auditing current password policy compliance across M365
- Configuring Entra ID / Active Directory password policies
- After a credential compromise incident
- Before a SOC 2 or HIPAA audit
- Implementing a new password manager

## NIST SP 800-63B Best Practices (Modern Standard)

```
DO:
✅ Require minimum 14 characters
✅ Allow spaces and all special characters
✅ Check passwords against known breach lists (HIBP)
✅ Require MFA — password is second factor, MFA is first
✅ Block common passwords ("Password1", "Welcome1", company name)
✅ Use a password manager for unique passwords per account
✅ No password expiration for accounts with MFA (NIST-recommended)

DON'T:
❌ Force regular password changes (NIST removed this — causes predictable patterns)
❌ Complexity rules that users game ("P@ssw0rd!")
❌ Password hints
❌ Knowledge-based answers (KBAs) — easily researched
❌ Maximum password length limits
```

## Output Format

```markdown
# Password Policy Audit — <Entity>
**Date:** <date> | **Scope:** M365 Entra ID + AD + business apps
**Auditor:** IT Manager / Dr. John Lewis

---

## M365 / Entra ID Password Settings

| Setting | Current Value | Recommended | Status | Action |
|---------|-------------|-----------|--------|--------|
| Minimum password length | 8 characters | 14 characters | ❌ Too short | Update Entra ID password policy |
| Password expiration | 90 days | Never (with MFA) | 🟡 Old standard | Update to "Never expire" once MFA is 100% |
| Banned password list | ✅ Enabled | ✅ Enabled | ✅ | None |
| Smart lockout | ✅ Enabled (10 attempts) | 5-10 attempts | ✅ | Consider tightening to 5 |
| MFA enforced | 🟡 97% | 100% | 🟡 | Enroll 2 remaining users |
| Legacy authentication blocked | ❌ Not configured | Block via Conditional Access | ❌ | Configure CA policy — critical |
| Password protection (AD sync) | ❌ Not configured | Enable Azure AD Password Protection | ❌ | Enable to sync banned password list to on-prem |

---

## Password Manager Deployment

| Status | Tool | Coverage | Gap |
|--------|------|---------|-----|
| ❌ No company-wide password manager | — | 0% | Employees using browser-saved passwords |

**Recommendation:** Deploy 1Password Teams ($4/user/month) or Bitwarden ($3/user/month) for all staff. Password manager adoption:
- Enables unique, strong passwords for every account
- Prevents credential reuse across services
- IT-controlled vaults for shared accounts
- Emergency access procedures built in

---

## Application Password Compliance

| Application | Password Policy | MFA Available | MFA Enforced | Risk |
|-----------|--------------|-------------|------------|------|
| Microsoft 365 | ✅ Via Entra ID | ✅ Yes | 🟡 97% | Low-Medium |
| QuickBooks Online | 🟡 8 char minimum | ✅ Yes | 🟡 Admin only | Medium |
| Bill.com | ✅ 12 char minimum | ✅ Yes | 🟡 Admin only | Medium |
| GoHighLevel (CRM) | 🟡 8 char minimum | ✅ Yes | ❌ No | High |
| Monday.com | ✅ M365 SSO | ✅ SSO | ✅ Via M365 | Low |
| AdvancedMD (Allevio) | ✅ HIPAA compliant | ✅ Yes | 🟡 Partial | Medium |

---

## Remediation Actions

| Action | System | Owner | Due | Priority |
|--------|--------|-------|-----|---------|
| Update Entra ID minimum password length to 14 chars | Entra ID | IT Engineer | This week | High |
| Enable Conditional Access — block legacy authentication | M365 | IT Engineer | This week | Critical |
| Enable MFA for all GoHighLevel admin accounts | GoHighLevel | IT Tech | This week | High |
| Deploy company-wide password manager | All systems | IT Manager | 30 days | High |
| Update password expiration to "Never" (once MFA is 100%) | Entra ID | IT Engineer | After MFA 100% | Medium |
| Enable Azure AD Password Protection | Active Directory | IT Engineer | 30 days | Medium |

---

## Compliance Status

| Framework | Password Requirement | Status |
|---------|---------------------|--------|
| HIPAA §164.312(d) | Authentication mechanism required | 🟡 MFA at 97% — close the gap |
| SOC 2 CC6.1 | Logical access controls | 🟡 Policy in place, 2 gaps |
| Cyber insurance | MFA required | 🟡 97% — carrier may flag the gap |
```

## Output Contract
- Legacy authentication blocking always flagged as Critical — it's an MFA bypass attack vector
- MFA gap always flagged — password policy without MFA is insufficient for current threat landscape
- Password manager deployment always recommended — unique passwords per account require a password manager
- Password expiration "never" recommended only once MFA is at 100% — MFA makes passwords secondary
- HITL required: IT Engineer configures Entra ID policies; IT Manager approves password manager deployment; Finance approves password manager budget; Dr. Lewis reviews compliance status

## System Dependencies
- **Reads from:** Entra ID password policy, Conditional Access policies, M365 admin center, application admin portals (provided)
- **Writes to:** Entra ID password policy configurations (IT Engineer executes)
- **HITL Required:** IT Engineer configures policies; IT Manager approves changes; Dr. Lewis reviews compliance status; Allevio compliance officer for HIPAA password controls

## Test Cases
1. **Golden path:** Password policy audit → minimum length 8 chars (update to 14), legacy auth not blocked (configure CA), no password manager (deploy 1Password), MFA at 97% (enroll 2 users) → all actions assigned with owners and deadlines, compliance score improves to 90%
2. **Edge case:** Legacy Active Directory with on-prem users — how do we enforce the same policy? → enable Azure AD Password Protection to sync the banned password list to on-prem AD; enforce Entra Connect sync for consistent policy
3. **Adversarial:** Finance argues password manager "creates a single point of failure" → explains how password managers use zero-knowledge encryption (vendor doesn't have the master password), are more secure than remembered passwords, and have emergency access procedures; "single point of failure" risk is less than the risk of credential reuse

## Audit Log
Password policy configurations retained with version history. Changes documented with date, configuration, and approver.

## Deprecation
Retire when entity has a deployed password manager with 100% adoption, passwordless authentication (FIDO2) for privileged accounts, and automated policy enforcement via Entra ID with zero manual configuration required.
