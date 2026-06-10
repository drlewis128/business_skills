---
name: security-incident-responder
description: "Respond to a cybersecurity incident with structured containment and investigation steps. Use when the user says 'security incident', 'we were hacked', 'data breach', 'ransomware', 'phishing attack', 'suspicious email', 'malware', 'unauthorized access', or 'cyber incident'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<incident-description> [--severity <P1|P2|P3>] [--type <phishing|ransomware|unauthorized-access|data-breach>]"
---

# Security Incident Responder

Coordinate the initial response to a cybersecurity incident — contain, investigate, communicate, and recover. Every minute matters in a cyber incident.

## When to Use
- Suspected or confirmed cybersecurity incident
- Phishing email that was clicked
- Ransomware detection
- Unauthorized access to systems
- Data breach (or suspected data breach)
- Any "my computer was hacked" report

## Severity Classification

| Level | Type | Examples | Response |
|-------|------|---------|---------|
| P1 — Critical | Active breach, ransomware, data exfiltration | Ransomware spreading, attacker in systems | Immediate — minutes matter |
| P2 — High | Compromised credential, suspicious access | Account takeover, phishing click | Hours |
| P3 — Medium | Phishing attempt (not clicked), malware detected but contained | Spam phishing, blocked malware | Business hours |

## Immediate Response (P1 — First 15 Minutes)

1. **Isolate immediately** — disconnect affected device from network (unplug ethernet, disable WiFi)
2. **Do not turn off** — power off can destroy forensic evidence in some cases
3. **Notify Dr. Lewis** — escalate now, do not investigate alone
4. **Document time** — note exact time issue discovered and first response action
5. **Preserve evidence** — screenshot suspicious activity before touching anything

## P2 Response (1-4 Hours)

1. Identify compromised account/credential
2. Reset password immediately from a clean device
3. Revoke all active sessions (Microsoft 365: admin portal → user → sign out all sessions)
4. Enable / verify MFA on the account
5. Review audit logs for activity since compromise (`audit-log-reviewer`)
6. Notify IT admin (Dr. Lewis)

## Incident Response Steps (Full)

### Phase 1 — Identify and Contain (Hours 0-4)
- [ ] Confirm this is an actual incident (not false alarm)
- [ ] Classify severity (P1-P3)
- [ ] Isolate affected systems / accounts
- [ ] Notify Dr. Lewis and Matt Mathison (P1 requires Matt notification)
- [ ] Preserve evidence (logs, screenshots, email headers)

### Phase 2 — Investigate (Hours 4-24)
- [ ] Identify attack vector (how did they get in?)
- [ ] Scope of access (what did they access or exfiltrate?)
- [ ] Timeline reconstruction (when did this start?)
- [ ] Identify all affected systems and accounts

### Phase 3 — Eradicate and Recover
- [ ] Remove attacker access (reset credentials, revoke sessions)
- [ ] Clean or reimage affected systems
- [ ] Restore from backup if data corrupted/encrypted
- [ ] Verify systems are clean before reconnecting
- [ ] Enable enhanced monitoring post-incident

### Phase 4 — Notification (if data breach)
- [ ] Assess whether personal data was accessed
- [ ] If yes: Legal and compliance review for breach notification requirements
  - HIPAA breach: Notify HHS within 60 days (Allevio)
  - State breach laws: Many require notification within 30-72 hours
  - LP notification: Matt Mathison determines if/when to notify
- [ ] Draft notifications using `crisis-communication-drafter`

### Phase 5 — Post-Incident
- [ ] Post-mortem (see `post-mortem-drafter`)
- [ ] Prevention improvements implemented
- [ ] Staff security training updated

## Output Format

```markdown
# Security Incident: SEC-<YYYYMMDD>-<NNN>
**Declared:** <time> | **Severity:** P<N> | **Type:** <phishing|ransomware|unauthorized-access|breach>
**Incident Commander:** Dr. John Lewis

## Incident Summary
<What happened — facts only, no speculation>

## Immediate Actions Taken (Last X minutes)
1. <Action + time>

## Current Status
**Contained:** Yes / No / Partially
**Systems affected:** <list>
**Data at risk:** <Unknown / <description>

## Investigation Status
**Attack vector:** <Known / Investigating>
**Scope of access:** <Known / Investigating>
**Timeline:** <Known / Investigating>

## Next Steps (Next 4 hours)
1. <Action — owner — deadline>

## Notification Required?
**Personal data accessed:** Yes / No / Unknown
**Regulatory notification trigger:** Possible / No / Yes — see legal
```

## Output Contract
- Any potential personal data breach escalates regulatory notification review immediately
- P1 incidents always notify Matt Mathison — not optional
- "Preserve evidence" is always Step 1 before investigation
- HITL required for all external communications and regulatory notifications

## System Dependencies
- **Reads from:** Incident description, audit logs (from `audit-log-reviewer`)
- **Writes to:** Incident record; notifies IT and executive on P1
- **HITL Required:** Dr. Lewis leads all P1/P2 response; Matt Mathison notified on P1; legal counsel on any data breach

## Test Cases
1. **Golden path:** Phishing click confirmed → P2 response, credential reset, session revocation, audit log review
2. **Edge case:** Ransomware on one device, network not yet spreading → P1, isolate device immediately, begin forensic analysis before deciding to power off
3. **Adversarial:** User wants to "just keep working" on a compromised device → mandatory isolation regardless of user preference — security overrides convenience

## Audit Log
Security incidents logged with SEC-ID. P1/P2 incidents retained indefinitely. All evidence preserved per incident.

## Deprecation
Retire when EDR (Endpoint Detection and Response) and SIEM platforms handle automated incident detection and initial containment.
