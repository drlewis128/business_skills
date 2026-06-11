---
name: identity-threat-detector
description: "Detect and respond to identity-based threats. Use when the user says 'identity threat', 'account compromise', 'stolen credentials', 'account takeover', 'suspicious account activity', 'compromised account', 'identity attack', 'credential theft', 'MFA bypass', or 'someone accessed an account'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--user <username>] [--source <M365|Entra|app>] [--type <ato|credential-theft|mfa-bypass>]"
---

# Identity Threat Detector

Detect and respond to identity-based threats. Identity is the new perimeter — 80%+ of breaches now involve compromised credentials. Microsoft 365 and Entra ID are the identity backbone for MBL portfolio companies, making them the primary attack surface. This skill provides the detection signals, investigation process, and response actions for identity-based attacks.

## When to Use
- Suspicious account activity flagged by M365 Defender / Entra ID Protection
- Employee reports they "can't log in" (possible account takeover)
- Credential exposure found in a data breach (dark web monitoring)
- Unusual activity in M365 (email rules, forwarding, bulk downloads)
- Suspected business email compromise (BEC)

## High-Value Detection Signals (M365 / Entra ID)

| Signal | Where to Find | Risk |
|--------|-------------|------|
| Impossible travel (two login locations simultaneously) | Entra ID sign-in logs | High — investigate immediately |
| Login from new country never seen before | Entra ID sign-in logs | High |
| MFA prompt rejected 5+ times in short window | Entra ID — MFA logs | High — possible MFA fatigue attack |
| MFA approved from unfamiliar device | Entra ID sign-in logs | High |
| New email forwarding rule created | M365 Exchange rules | Critical — BEC indicator |
| Inbox rules deleting specific emails | M365 Exchange rules | Critical — BEC indicator |
| Password change without MFA re-auth | Entra ID audit log | High |
| Bulk email download (thousands of emails) | M365 Compliance Center | Critical |
| New admin role assigned | Entra ID audit log | High |
| Legacy authentication used (no MFA) | Entra ID sign-in logs | High — MFA bypass |
| Service account accessing new resources | Entra ID / Azure | Medium-High |

## Response by Attack Type

### Account Takeover (ATO)

**Immediate response:**
1. Revoke all active sessions (Entra ID → User → Revoke sessions)
2. Reset password (use temporary password, force change on first login)
3. Re-register MFA (revoke existing MFA registrations)
4. Check for new forwarding/filtering rules and delete if unauthorized
5. Check for new admin role assignments and remove if unauthorized
6. Check M365 audit log for what was accessed since compromise

### MFA Fatigue Attack

An attacker who has the user's password sends repeated MFA push requests hoping the user approves one to make it stop.

**Detection:** User reports receiving MFA pushes they didn't initiate.

**Response:**
1. Block the user account immediately (while maintaining their email for message review)
2. Check if any MFA prompt was approved → if yes, treat as full ATO
3. Change user password
4. Educate user — never approve an MFA prompt you didn't initiate
5. Consider upgrading to FIDO2 / hardware key for the targeted user

### Business Email Compromise (BEC)

**Detection:** Finance or executive reports an unexpected wire transfer request; external party reports receiving emails that weren't sent.

**Response:**
1. Immediately check M365 for forwarding rules on the account
2. Check for inbox rules hiding sender replies (attacker hides the back-and-forth)
3. Check send-on-behalf and delegate access (attacker may have added a delegate)
4. If wire transfer is pending: contact Finance IMMEDIATELY — stop payment if possible
5. Treat the account as fully compromised — full ATO response

## Output Format

```markdown
# Identity Threat Investigation — <Entity>
**Date:** <date> | **User:** <username / email>
**Threat type:** Account Takeover / MFA Fatigue / BEC / Credential Exposure
**Priority:** P1 / P2 / P3
**Analyst:** IT Tech / IT Manager
**Status:** Investigating / Contained / Closed

---

## Detection Summary

| Signal | Found? | Details |
|--------|--------|---------|
| Impossible travel | ✅ Yes / ❌ No | Login from <location 1> at <time> and <location 2> at <time> |
| MFA prompts rejected | ✅ Yes / ❌ No | 8 prompts rejected over 10 minutes |
| New mail forwarding rule | ✅ Yes / ❌ No | All mail forwarded to attacker@gmail.com |
| Bulk email download | ✅ Yes / ❌ No | 2,400 emails downloaded via IMAP at <time> |
| New admin role assigned | ✅ Yes / ❌ No | |

---

## Account Activity Review

| Time | Activity | Location | Device | Suspicious? |
|------|---------|---------|--------|-----------|
| <time> | Successful login | Phoenix, AZ | Known device | ❌ Normal |
| <time> | Successful login | Moscow, Russia | Unknown device | ✅ Suspicious |
| <time> | MFA re-registration | Moscow, Russia | | ✅ Suspicious |
| <time> | Mail forwarding rule created | | | ✅ Attacker action |

---

## Response Actions

| Time | Action | By | Result |
|------|--------|-----|--------|
| <time> | All sessions revoked | IT Tech | ✅ Complete |
| <time> | Password reset | IT Tech | ✅ Complete |
| <time> | MFA re-registered | IT Tech (with user) | ✅ Complete |
| <time> | Forwarding rule deleted | IT Tech | ✅ Complete |
| <time> | Audit log pulled for access during compromise window | IT Tech | See findings |

---

## Compromise Window

**Estimated compromise start:** <time>
**Compromise contained:** <time>
**Data accessed during window:** <list — emails, files, SharePoint>
**PHI accessed?** Yes / No (if Allevio — HIPAA assessment required)

---

## Notifications

| Party | Reason | Status |
|-------|--------|--------|
| Affected user | Account actions and education | Notified |
| IT Manager | Account compromise | Notified |
| Finance | BEC risk | Notified (check pending transfers) |
| Dr. Lewis | If P1 or PHI | Notified |
| Allevio compliance | If PHI accessed | TBD |
```

## Output Contract
- Session revocation and password reset always first in ATO response — before investigation
- BEC detection always triggers immediate Finance notification — pending wire transfers can be stopped
- PHI access during compromise window always triggers HIPAA breach assessment at Allevio
- MFA re-registration always required after ATO — compromised MFA is as bad as no MFA
- HITL required: IT Manager for any confirmed account compromise; Dr. Lewis for P1; Finance for any BEC scenario; Allevio compliance for PHI exposure

## System Dependencies
- **Reads from:** Entra ID sign-in logs, M365 audit log, Exchange mail rules, Entra MFA logs
- **Writes to:** Session revocations, password resets, mail rule deletions — all with IT Manager HITL
- **HITL Required:** IT Manager authorizes all account actions; Dr. Lewis for P1 escalation; Finance for BEC; Allevio compliance for PHI

## Test Cases
1. **Golden path:** Entra alert for impossible travel → login from Phoenix + Moscow simultaneously → immediate session revoke + password reset + MFA re-enroll + check mail rules → forwarding rule found and deleted → audit log shows no PHI access → P2 closed, user educated on phishing awareness
2. **Edge case:** User traveling internationally and their legitimate logins trigger impossible travel alert → confirm travel via Teams status / direct contact before taking action; false positive possible; verify with user before locking account
3. **Adversarial:** BEC attack compromised executive's email — Finance received a wire request for $185K to a new vendor → stop the wire transfer immediately (contact Finance and bank); treat executive email as fully compromised; ATO response; notify Legal; FBI IC3 if wire went through

## Audit Log
All identity threat investigations logged. Compromise windows documented. Data access during compromise window documented. PHI exposure assessments documented.

## Deprecation
Retire when Microsoft Entra ID Protection and Defender for Identity are deployed with automated response policies — automated session revocation, admin notification, and identity risk scoring.
