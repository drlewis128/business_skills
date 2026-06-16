---
name: it-m365-admin
description: "Administer Microsoft 365 tenant — security, licensing, and configuration. Use when the user says 'Microsoft 365 admin', 'M365 admin', 'Office 365', 'M365 administration', 'Exchange admin', 'Teams admin', 'SharePoint admin', 'Entra ID admin', 'M365 security settings', 'M365 licenses', 'M365 tenant', 'M365 conditional access', 'email security', 'spam filtering', 'M365 configuration', or 'Microsoft admin center'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--module <Exchange|Teams|SharePoint|Entra|Security|Licensing>] [--action <audit|configure|report>]"
---

# IT M365 Admin

Administer the Microsoft 365 tenant at MBL portfolio companies — managing security settings, licensing, email flow, Teams configuration, SharePoint governance, and Entra ID policies. M365 is the backbone of MBL portfolio operations: identity, communication, and documents all flow through it. Good M365 administration keeps the tenant secure, costs controlled, and users productive.

## When to Use
- Monthly M365 admin review — security alerts, license counts, storage usage
- A new employee needs an M365 account and license provisioned
- Security settings need to be reviewed or hardened
- Email deliverability issues (spam blocking, external mail rejected)
- License optimization — are all licenses being used? Can licenses be downgraded?
- Conditional Access policy configuration or update

## M365 Admin Framework

```
Tenant security baseline (non-optional for all portfolio companies):
  1. Conditional Access: Require MFA for all users; block legacy authentication
  2. Entra ID Protection: Enable risky sign-in detection; configure alerts
  3. Anti-spam + Anti-phishing: Defender for O365 Plan 1 (included in M365 Business Premium)
     → Enable Safe Links and Safe Attachments (real-time scanning)
     → Anti-phishing policy: impersonation protection enabled for Dr. Lewis and executives
  4. External email warnings: Banner on all externally-sourced emails ("This email came from outside...")
  5. Block legacy authentication protocols (IMAP, POP3 with basic auth — exploitable)
  6. Global admin accounts: 2 max; use Privileged Identity Management (PIM) for admin elevation
  7. Alert policies: Login from new location, mass download, unusual activity — alert to Dr. Lewis
  
License tiers (common MBL portfolio use):
  M365 Business Basic: $6/user/month — Email, Teams, web apps only; no desktop Office
  M365 Business Standard: $12.50/user/month — Desktop Office apps (Word, Excel) + email + Teams
  M365 Business Premium: $22/user/month — Everything + Intune, Defender, Entra ID P1
  M365 F3 (Frontline): $8/user/month — For frontline workers (limited PC; mainly mobile)
  
  Recommendation: Business Premium for users with company laptops (includes Intune for MDM)
  Consider: Business Basic for infrequent users who only need email access
  
Exchange / Email configuration:
  SPF, DKIM, DMARC: All three configured to protect domain from spoofing (mandatory)
  DMARC policy: Start with p=none (monitor), move to p=quarantine, then p=reject
  MX records: Must point to Microsoft Exchange Online (not third-party)
  External mail tagging: Prepend "[EXTERNAL]" to subject or display banner (anti-phishing)
  
Teams governance:
  Guest access: Enable but configure — guests should not be able to create teams or channels
  External access: Configure by domain (allow specific business partner domains only)
  Data retention: Configure retention policies for Teams messages (meet regulatory requirements)
  
SharePoint governance:
  External sharing: Restrict to specific domains; require re-authentication after N days
  Site creation: Restrict to IT and approved managers (prevent sprawl)
  Storage: Monitor total tenant storage; archive old SharePoint sites
```

## Output Format

```markdown
# M365 Tenant Review — <Company Name>
**Tenant:** [domain.onmicrosoft.com] | **Date:** [Date]
**Total users:** [N licensed + N unlicensed] | **Active users (30-day):** [N]
**Monthly cost:** $[X] | **License optimization opportunity:** $[X]
**Security score:** [X/100] (Microsoft Secure Score)
**Prepared by:** Dr. John Lewis

---

## Security Baseline Status

| Control | Status | Risk | Action |
|---------|--------|------|--------|
| MFA — Conditional Access enforced | Yes / No | 🔴 Critical if No | Enable CA |
| Legacy auth blocked | Yes / No | 🔴 High | Block IMAP/POP3 with basic auth |
| Safe Links + Safe Attachments | Yes / No | 🟡 | Enable Defender for O365 |
| DMARC configured (p=quarantine or reject) | Yes / No | 🟡 | Configure DMARC |
| External email warning banner | Yes / No | 🟡 | Enable transport rule |
| Alert policies configured | Yes / No | 🟡 | Configure admin alerts |
| Entra ID risky sign-in detection | Yes / No | 🟡 | Enable in Entra ID Protection |

**Microsoft Secure Score:** [X/100] — target >60 for small business tenant

---

## License Inventory

| License type | Assigned | Active (30-day) | Inactive | Monthly cost | Action |
|-------------|---------|----------------|---------|------------|--------|
| M365 Business Premium | [N] | [N] | [N] | $[X] | [Reclaim N unused] |
| M365 Business Standard | [N] | [N] | [N] | $[X] | |
| M365 Business Basic | [N] | [N] | [N] | $[X] | |
| **Total** | **[N]** | | | **$[X]/mo** | |

**Inactive licenses (>30 days no login):** [N — review for removal]
**License optimization opportunity:** $[X]/month by removing [N] unused licenses

---

## Email Security

| Control | Status | Details |
|---------|--------|---------|
| SPF record | Valid / Invalid / Missing | v=spf1 include:spf.protection.outlook.com -all |
| DKIM | Enabled / Disabled | DKIM signing for outbound mail |
| DMARC | p=none / p=quarantine / p=reject | Configured: [Date] |
| Safe Links | Enabled / Disabled | |
| Safe Attachments | Enabled / Disabled | |
| Anti-phishing | Enabled — [policy name] | Impersonation protection: [On/Off] |

**Email security grade:** A (all configured) / B (minor gaps) / C/D (significant gaps)

---

## Active Alerts (last 30 days)

| Alert | Date | User | Action taken |
|-------|------|------|-------------|
| Suspicious login from [Country] | [Date] | [User] | Verified with user — travel confirmed |
| Mass email send detected | [Date] | [User] | Investigated — bulk announcement; OK |

---

## SharePoint / OneDrive Storage

| Storage | Used | Capacity | % | Status |
|---------|------|---------|---|--------|
| Tenant total | [X TB] | [X TB] | [X%] | 🟢/🟡/🔴 |

**SharePoint sites with external sharing enabled:** [N — review each]

---

## Matt Mathison Brief (if security finding or monthly cost >$500)

[Company] M365: [N] users; $[X]/month. Security score: [X/100]. [Key finding]. [Action].
```

## Output Contract
- MFA via Conditional Access is the highest-value security control in M365 — it blocks credential-based attacks even when passwords are stolen; the Conditional Access policy (requiring MFA + compliant device for all M365 access) is not optional; a tenant without Conditional Access enforcing MFA is a tenant that can be accessed with a stolen password; this takes 30 minutes to configure and zero dollars (included in M365 Business Premium)
- DMARC, DKIM, and SPF are configured to prevent domain spoofing — without these, an attacker can send email that appears to come from company.com; this is the mechanism for business email compromise (BEC) attacks that result in fraudulent wire transfers; all three are configured and DMARC is moved to p=reject within 90 days of initial deployment (after monitoring the p=none phase)
- Inactive licenses are reclaimed — a license assigned to a departed employee or to someone who never uses M365 is $6-22/month of waste; the monthly M365 review includes a license audit; inactive licenses (no sign-in in 30 days) are reviewed and reclaimed; the exception is a license intentionally held for a role being backfilled (documented)
- HITL required: Dr. Lewis manages M365 tenant; Global Admin access limited to Dr. Lewis and one backup admin; Conditional Access policy changes require Dr. Lewis; license changes require Dr. Lewis + manager authorization (for adds); new user creation by Dr. Lewis (see it-onboarding-provisioner); security alert investigation by Dr. Lewis; Matt Mathison notified if monthly cost >$500 or critical security finding

## System Dependencies
- **Reads from:** M365 admin center, Entra ID admin center, Microsoft Secure Score dashboard, Exchange admin center, Microsoft Defender portal
- **Writes to:** M365 configuration log; license audit (SharePoint/Ops/<Company>/IT/M365/); security settings documentation; monthly cost report
- **HITL Required:** Dr. Lewis owns tenant administration; Global Admin access limited; CA policy changes by Dr. Lewis; user provisioning via it-onboarding-provisioner; Matt Mathison for cost >$500/month or critical security finding

## Test Cases
1. **Golden path:** MBL HoldCo monthly M365 review → 18 users; $396/month (18 × $22 Business Premium); Active users: 17/18 (1 user last login 45 days ago — on leave, documented); Secure Score: 68/100; Conditional Access: MFA enforced ✅; Safe Links + Safe Attachments: enabled ✅; DMARC: p=quarantine ✅; External email banner: enabled ✅; Alerts this month: 1 (suspicious login from Mexico — verified Dr. Lewis was traveling) ✅; SharePoint: no external sharing enabled for sensitive sites ✅; Actions: None required; DMARC scheduled for p=reject upgrade next quarter
2. **Edge case:** M365 alert: "Mass email send — 2,400 emails sent from user@company.com in 20 minutes" → Immediate investigation: check if account is compromised (sign-in logs — suspicious IP?); review sent email content; if account is compromised: revoke sessions, reset password, require MFA re-registration; if the send was intentional (e.g., bulk announcement): log as false positive and tune the alert threshold; this alert exists because a compromised account that sends 2,400 spam emails can damage the company's email domain reputation and result in the domain being blocked by recipient mail servers
3. **Adversarial:** "We don't want MFA — employees find it annoying and it slows them down" → MFA adds 5-10 seconds to login; a compromised account costs hours of recovery and potentially thousands of dollars; MFA blocked 99.9% of Microsoft-detected credential-based account compromises in 2023; "employees find it annoying" is the same reason employees initially resist seatbelts — the inconvenience is real and the protection is more real; Microsoft Authenticator (app-based, push notification) is the least disruptive MFA option; it is the standard at MBL portfolio companies

## Audit Log
Monthly M365 review reports retained. License audit retained by month. Security baseline configuration retained with effective dates. Alert investigations retained. DMARC configuration history retained. Admin access changes retained permanently.

## Deprecation
Retire when portfolio companies have dedicated M365 administrators who perform monthly tenant reviews and maintain security configurations independently — with Dr. Lewis as Global Admin for oversight and emergency access. Conditional Access and security baseline configuration require Global Admin review regardless of delegation level.
