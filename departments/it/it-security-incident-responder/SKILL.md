---
name: it-security-incident-responder
description: "Respond to cybersecurity incidents — ransomware, phishing, data breach, account compromise. Use when the user says 'security incident', 'we got hacked', 'ransomware', 'phishing attack', 'data breach', 'account compromised', 'malware', 'unauthorized access', 'suspicious activity', 'credentials stolen', 'cyber attack', 'incident response', 'DFIR', 'forensics', 'contain breach', or 'we think we were breached'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--incident-type <ransomware|phishing|breach|account-compromise|malware|unknown>] [--status <active|contained|post-incident>]"
---

# IT Security Incident Responder

Lead cybersecurity incident response at MBL portfolio companies — following a structured DFIR (Digital Forensics and Incident Response) process to contain, eradicate, recover, and learn from security incidents. Security incidents are high-stakes, time-critical events where the wrong action (rebooting a compromised server, paying ransom without understanding the scope, or notifying employees before the breach is contained) makes outcomes significantly worse. This skill provides the decision framework for responding correctly.

## When to Use
- A ransomware attack has encrypted files on company systems
- An employee has clicked a phishing link and may have entered credentials
- Suspicious access to financial systems, email, or sensitive data is detected
- An employee account has been compromised
- An unknown device or user has accessed company systems
- The it-monitoring-setup skill has triggered a P1 security alert
- A vendor or business partner reports a breach that may have included company data

## Incident Response Framework (PICERL)

```
Phase 1 — Preparation (done before incidents):
  IR plan documented and tested
  Contact list: Dr. Lewis, CEO, attorney (for breach notification), cyber insurance carrier
  Forensic preservation checklist ready
  Backup verified and tested
  
Phase 2 — Identification: Is this actually an incident?
  Collect indicators: What was seen? When? By whom? On what system?
  Do NOT: Reboot or shut down systems (destroys forensic evidence in memory)
  Do NOT: Delete anything
  Do NOT: Access the suspected compromised system from the compromised account
  Triage questions:
    1. What was the initial vector? (Phishing? Exposed RDP? Malicious attachment?)
    2. What systems are affected?
    3. What data may have been accessed or exfiltrated?
    4. Is the attacker still active?
    
Phase 3 — Containment: Stop the bleeding
  Short-term containment: Isolate affected systems from the network (unplug ethernet / disable Wi-Fi)
    → Do NOT power off (preserves memory forensics)
  Account compromise: Revoke sessions, reset credentials, disable account temporarily
  Email phishing spreading: Block sender at mail filter level; quarantine similar messages
  Ransomware: Network isolate affected systems; identify patient zero; contain lateral movement
  Long-term containment: Clean alternative systems; maintain operations while cleaning up
  
Phase 4 — Eradication: Remove the threat
  Remove malware / ransomware executables from clean systems
  Patch the vulnerability that was exploited (if known)
  Remove persistence mechanisms (scheduled tasks, registry keys, backdoors)
  Reset ALL credentials — not just the ones you know were compromised
  
Phase 5 — Recovery: Restore operations
  Restore from clean backup (verify backup is from before the incident)
  Bring systems back online in stages — monitor for re-infection
  Validate system integrity before returning to production
  
Phase 6 — Lessons Learned: Post-mortem within 2 weeks
  Root cause: How did the attacker get in?
  Detection: How was it detected? How much earlier could it have been detected?
  Response: What could have been done faster or better?
  Prevention: What control prevents this from happening again?

HIPAA Breach Notification (Allevio):
  If PHI was potentially accessed by unauthorized party:
    → Begin breach assessment IMMEDIATELY — in parallel with containment, not after
    → 60-day notification clock starts from date of breach discovery (not breach date)
    → HHS notification required for ≥500 patients in a state (media notification also required)
    → Patients must be notified of breaches affecting them
    → Attorney involvement required before any notifications are sent
    
Ransomware-specific guidance:
  DO NOT pay ransom without: CEO + attorney authorization + cyber insurance approval
  Payment does NOT guarantee decryption (40% of paying companies do not get full recovery)
  Paying may violate OFAC sanctions if the group is sanctioned
  Engage: Cyber insurance carrier first → they have IR vendor relationships
  Alternatives: Restore from backup (best option if backup is clean and tested)
```

## Output Format

```markdown
# Security Incident Report — <Company Name>
**Incident ID:** INC-[YYYY-MM-DD]-[NN]
**Incident type:** [Ransomware / Phishing / Account compromise / Data breach / Malware / Unknown]
**Severity:** 🔴 Critical / 🟡 High / 🟢 Medium
**Status:** [Active — Containment / Eradication / Recovery / Closed]
**Incident commander:** Dr. John Lewis
**Discovered:** [Date, Time]
**Reported to:** [CEO, Attorney (if breach), Cyber insurance carrier, Matt Mathison]

---

## Timeline

| Time | Action | By |
|------|--------|-----|
| [T+0] | Incident detected — [how] | [Who] |
| [T+10 min] | Dr. Lewis notified | |
| [T+20 min] | Affected systems identified | Dr. Lewis |
| [T+30 min] | Network isolation of affected system(s) | Dr. Lewis |
| [T+1 hr] | CEO notified | Dr. Lewis |
| [T+2 hr] | Cyber insurance carrier notified | Dr. Lewis |
| [T+4 hr] | Containment complete | Dr. Lewis |
| [T+8 hr] | Eradication in progress | Dr. Lewis |
| [T+24 hr] | Recovery from backup initiated | Dr. Lewis |
| [T+48 hr] | Systems restored and validated | Dr. Lewis |
| [T+2 wks] | Post-mortem completed | Dr. Lewis |

---

## Affected Systems

| System | Status | PHI/PII? | Action taken |
|--------|--------|---------|-------------|
| [System] | Isolated | 🔴 Yes (Allevio) | Network disconnected; forensic copy in progress |
| [System] | Clean | No | Monitoring |

---

## Scope Assessment

- **Attack vector:** [How did the attacker get in?]
- **Lateral movement:** [Did the attacker move to other systems?]
- **Data potentially accessed:** [What? How much?]
- **PHI involved (Allevio):** Yes / No — [If yes: number of patients, data types, 60-day clock started [Date]]
- **Financial data involved:** Yes / No — [QuickBooks, Bill.com — check for unauthorized transactions]

---

## Containment Actions

- [ ] Affected system(s) network isolated
- [ ] Compromised accounts suspended
- [ ] Credentials reset for all affected accounts
- [ ] Email phishing message quarantined / sender blocked
- [ ] Cyber insurance carrier notified
- [ ] Attorney notified (if PHI or PII breach)

---

## HIPAA Breach Assessment (Allevio only)

- PHI accessed by unauthorized party: Yes / No / Unknown (assume Yes until proven otherwise)
- 60-day notification deadline: [Date = discovery date + 60 days]
- Patients to notify: [N estimated]
- HHS notification required (≥500 patients): Yes / No
- Attorney engaged: Yes / No — [Attorney name]
- Notification status: [Pending / In progress / Complete]

---

## Post-Mortem (completed within 2 weeks)

**Root cause:** [How did the attacker gain initial access?]
**Detection gap:** [Why didn't we detect this sooner?]
**Response gaps:** [What slowed down containment or recovery?]
**Prevention measures added:**
- [Control added — e.g., MFA enforced on all accounts]
- [Monitoring added — e.g., alert for after-hours logins]
- [Policy change — e.g., macro execution blocked in Office]

---

## Matt Mathison Summary

INC-[ID]: [Incident type] at [Company]. [Systems affected]. [Data exposure if any]. Status: [Contained / Recovering]. Business impact: [Downtime / Data risk]. Cost: [$X — insurance covering / not covering]. Prevention: [What changed to prevent recurrence].
```

## Output Contract
- Containment happens before notification — the sequence is: identify → contain → then notify employees and stakeholders; notifying employees before containment causes people to take actions (password resets on compromised systems, reboots) that destroy forensic evidence and can displace the attacker into a different system; containment means the threat can no longer spread; then notify
- DO NOT REBOOT OR POWER OFF COMPROMISED SYSTEMS — a running system contains forensic evidence in memory (active processes, network connections, encryption keys for ransomware) that is destroyed permanently by a power cycle; disk imaging and memory capture happen before any power cycle; if the system is actively destroying data, this must be weighed against forensic preservation — but in most cases, network isolation (unplug ethernet) is the right first move, not power off
- HIPAA breach assessment runs in parallel with technical response at Allevio — the 60-day notification clock starts from the date of discovery, not the date the technical response is complete; a company that waits 45 days to finish the technical investigation before beginning the breach notification assessment may miss the deadline; breach assessment runs in parallel from day one
- Cyber insurance is engaged immediately — the carrier has IR vendor relationships (DFIR firms, legal counsel with breach experience, ransom negotiators) that should be used; calling the carrier within 2 hours of confirming a significant incident is correct; calling them after 2 weeks to report a resolved incident means you paid for IR services yourself that your insurance would have covered
- HITL required: Dr. Lewis takes command within 15 minutes of a confirmed P1 security incident; CEO notified within 1 hour; attorney notified for any breach involving PHI or PII; cyber insurance carrier notified within 2 hours; Matt Mathison notified for any ransomware or breach affecting operations; ransom payment requires CEO + attorney + cyber insurance carrier approval — Dr. Lewis does not authorize payment unilaterally

## System Dependencies
- **Reads from:** Security monitoring alerts (it-monitoring-setup), endpoint telemetry (Intune/EDR), email gateway logs, Entra ID sign-in logs, firewall logs, backup status
- **Writes to:** Incident log (SharePoint/Ops/<Company>/IT/Security/Incidents/); HIPAA breach assessment log (Allevio — permanent record); post-mortem document; cyber insurance claim; law enforcement report (if required)
- **HITL Required:** Dr. Lewis commands all P1 incidents; CEO within 1 hour; attorney for PHI/PII breach; insurance carrier within 2 hours; ransom payment requires CEO + attorney + carrier approval; Matt Mathison for any material incident

## Test Cases
1. **Golden path:** Allevio employee reports clicking a phishing link and entering M365 credentials → T+0: Employee reports to Dr. Lewis; T+5: Dr. Lewis checks Entra ID sign-in logs — unauthorized login from Eastern Europe IP 15 minutes after credentials entered; T+10: Revoke all active sessions for the account; T+15: Reset password + require MFA re-registration; T+20: Check email forwarding rules (attacker commonly adds forwarding) — found: all email forwarding to external Gmail address → delete rule; T+30: Check calendar, contacts, sent items for data exfiltration; T+45: Review audit log for any other accounts accessed from same IP; T+1hr: CEO notified; no PHI accessed (it's an admin account, not clinical) — HIPAA assessment: not a breach; T+2hrs: Phishing email quarantined from all mailboxes; T+4hrs: Incident contained; T+2wks: Post-mortem — root cause: no MFA on account; fix: MFA enforced on all accounts via Conditional Access (same day) ✅
2. **Edge case:** Ransomware detected on file server at Allevio — files are being encrypted → T+0: Monitoring alert (unusual file modification volume on file server); T+5: Dr. Lewis confirms ransomware (encrypted files with unknown extension); T+10: Network isolate file server (unplug ethernet); T+15: Check other servers for encryption — DB server: not yet affected ✅; T+20: CEO + attorney + cyber insurance carrier called (conference call); T+30: Identify patient zero from file server access logs — a clinical workstation ran a macro-enabled attachment; isolate that workstation; T+1hr: HIPAA breach assessment started — did PHI live on the file server? Yes (shared clinical documents folder); 60-day clock started; T+2hrs: Confirm clean backup (last backup 4 hours ago — good); T+6hrs: Restore file server from backup on isolated network; T+12hrs: Validate restored data; T+18hrs: Reconnect file server after malware eradication from clinical workstation; T+24hrs: Operations restored; T+2wks: Post-mortem; HIPAA: 47 patients affected → notifications sent within 60 days
3. **Adversarial:** CEO receives a request to "confirm ransom payment" from "Dr. Lewis" → This is a social engineering attempt; verify via voice call before any authorization; CEO should not authorize any financial action based solely on email/text; confirm with Dr. Lewis directly; genuine ransom negotiation always involves attorney + cyber insurance carrier — it is never a direct unilateral payment; implement: any financial authorization request over $10K must be confirmed via voice call with the requester, not just email

## Audit Log
All security incidents logged permanently with timeline, scope, and outcome. HIPAA breach assessments retained permanently (Allevio). Post-mortems retained. Ransom negotiations retained (if applicable). Attorney-client communications retained under privilege. Cyber insurance claims retained. Law enforcement reports retained. Notification records retained (HIPAA — permanent).

## Deprecation
Retire when portfolio companies have 24/7 managed security services (MSSP) with dedicated incident response capabilities — and when the IR plan is tested annually via tabletop exercise with the IR vendor and company leadership. HIPAA breach notification responsibilities at Allevio are permanent and require attorney involvement regardless of internal IR maturity.
