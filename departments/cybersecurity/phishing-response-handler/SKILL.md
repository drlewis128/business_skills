---
name: phishing-response-handler
description: "Handle a reported phishing email or suspected credential theft. Use when the user says 'phishing email', 'suspicious email', 'clicked a phishing link', 'I got a phishing email', 'phishing attempt', 'someone clicked a link', 'phishing attack', 'credential phishing', or 'got a weird email'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--status <reported|clicked|credentials-entered>] [--user <name>]"
---

# Phishing Response Handler

Handle a reported phishing email or suspected credential theft. Phishing is the #1 initial access vector for ransomware and BEC fraud. The difference between "someone reported a suspicious email" and "someone clicked it and entered their password" is enormous — each requires a different response. This skill guides the triage and response for each scenario.

## When to Use
- Employee reports a suspicious email (didn't click)
- Employee clicked a link in a suspicious email (may or may not have entered credentials)
- Employee entered credentials on a suspicious site
- Email filter blocked a suspected phishing email — reviewing the block
- Security awareness training follow-up — simulated phishing click

## Triage Decision Tree

```
1. What happened?
   ├── Reported without clicking → LOW RISK: Analyze and block
   ├── Clicked link (no credentials entered) → MEDIUM RISK: Scan device, monitor
   └── Clicked link + entered credentials → HIGH RISK: Incident response now
       └── Business email (M365) credentials entered → CRITICAL: Account compromise

2. What data was potentially exposed?
   └── M365 credentials → email, Teams, SharePoint, potentially MFA codes
   └── PHI-adjacent (Allevio) → HIPAA breach assessment required
   └── Financial credentials → QuickBooks, Bill.com → HITL with Finance
```

## Response by Scenario

### Scenario A: Employee reports phishing (no click)

**Actions (IT Tech — execute within 1 hour):**
1. Collect the email (header, body, sender, links — forward as attachment, not inline)
2. Check if others received the same email via M365 Search
3. Block sender domain in M365 Defender
4. Add URLs in the email to M365 safe links block list
5. Document and close — no escalation needed unless volume is high

### Scenario B: Employee clicked a link (no credentials entered)

**Actions (IT Tech — execute within 2 hours):**
1. Confirm no credentials were entered (ask user directly)
2. Run EDR scan on the device that clicked (malware often installed on click)
3. Check M365 sign-in logs for any suspicious logins in the last 24 hours
4. If EDR scan clean and no suspicious logins → Low risk, monitor for 48 hours
5. If EDR detects malware or suspicious logins → Escalate to P2 incident

### Scenario C: Employee entered credentials on phishing site

**Actions (IT Manager + IT Tech — execute IMMEDIATELY):**
1. **Reset M365 password immediately** (before notifying the user — time is critical)
2. **Revoke all active M365 sessions** (Entra ID → User → Revoke sessions)
3. **Re-enroll MFA** (assume MFA may be compromised if email was targeted)
4. **Check M365 sign-in logs** for any logins since the credential entry — especially from new IPs, new devices
5. **Check for mail forwarding rules** set up by attacker (common BEC move)
6. **Check for email deleting rules** (attackers hide tracks)
7. If any suspicious activity found → escalate to P2 incident, notify Dr. Lewis
8. Notify the user after account is secured

## Output Format

```markdown
# Phishing Response Log — <Entity>
**Date:** <date/time> | **Reporter:** <employee name>
**Scenario:** A (No click) / B (Clicked, no credentials) / C (Credentials entered)
**Severity:** Low / Medium / High / P2 Incident
**Handler:** IT Tech / IT Manager
**Status:** Investigating / Contained / Closed

---

## Email Analysis

| Field | Value |
|-------|-------|
| Sender email | <email> |
| Sender domain | <domain> |
| Subject | <subject> |
| Received at | <date/time> |
| How identified | User report / Email filter / EDR |
| Links in email | <list URLs> |
| Attachments | <list or None> |
| Impersonating | <Microsoft / IRS / FedEx / Internal executive / Other> |

**Threat classification:** Credential harvest / Malware dropper / BEC / Reconnaissance

---

## Scope Check

| Check | Result |
|-------|--------|
| How many employees received this email? | <N> — check M365 Search |
| Any others who clicked? | Yes / No / Unknown |
| Any credentials entered by others? | Yes / No / Unknown |

---

## Response Actions Taken

| Time | Action | By | Result |
|------|--------|-----|--------|
| <time> | Sender domain blocked in M365 | IT Tech | ✅ Blocked |
| <time> | Phishing URLs added to block list | IT Tech | ✅ Blocked |
| <time> | EDR scan run on clicking user's device | IT Tech | Clean / Malware detected |
| <time> | M365 sign-in logs reviewed | IT Tech | No suspicious logins |
| <time> | Password reset + MFA re-enrolled | IT Tech | ✅ Account secured |

---

## Findings

**Was this a targeted attack or bulk phishing?** Bulk / Targeted / Unknown

**Attack method:** <Credential harvest page / Malware download / BEC impersonation>

**Any indicators of compromise?** None / [list]

**Escalated to incident?** No / Yes — INC-<NNN>

---

## Notifications

| Party | Required? | Reason | Status |
|-------|---------|--------|--------|
| Affected user | Yes | Account actions taken | Notified at <time> |
| IT Manager | Scenario C, high volume | Account compromise | Notified |
| Dr. Lewis | If escalated to P2 | | |
| Allevio compliance (if PHI-adjacent) | If Allevio employee | HIPAA assessment | TBD |
```

## Output Contract
- Scenario C (credentials entered) always treated as account compromise until confirmed otherwise — reset first, ask questions later
- M365 forwarding rules always checked in Scenario C — this is the BEC attacker's first move
- PHI-adjacent users (Allevio) always require HIPAA breach assessment if credentials were compromised
- Volume spikes (5+ employees receive same email) escalate to IT Manager immediately — coordinated campaign
- HITL required: IT Manager for Scenario C; Dr. Lewis if escalated to P2; Allevio compliance officer if Allevio PHI-adjacent credentials may have been compromised

## System Dependencies
- **Reads from:** M365 Defender, M365 Entra ID sign-in logs, EDR console (provided)
- **Writes to:** M365 email block lists, session revocations, password resets — all with HITL
- **HITL Required:** IT Manager authorizes Scenario C account actions; Dr. Lewis for P2 escalation; Allevio compliance for any PHI-adjacent compromise

## Test Cases
1. **Golden path:** Employee reports phishing email without clicking → sender blocked in M365, 4 other recipients identified and alerted, no further action needed, documented and closed within 1 hour
2. **Edge case:** Employee clicked link from phone (not company-managed device) → MDM can't scan the device, assess risk based on what the link was (drive-by download site vs. credential page), assume credentials potentially compromised if it was a login page, proceed as Scenario C
3. **Adversarial:** IT tech wants to just reset the password without checking sign-in logs, mail rules, and active sessions — "it'll probably be fine" → insists on the full Scenario C checklist; BEC attackers set up forwarding rules within minutes of credential access; skipping the checklist is how wire fraud happens

## Audit Log
All phishing responses logged by entity, employee, date, and outcome. Escalated incidents cross-referenced with incident log. Credentials-entered incidents documented and retained.

## Deprecation
Retire when M365 security features (Defender for Office 365 Plan 2, SOAR integration) enable automated phishing response — automated triage, automated account lockdown, human review of results.
