---
name: sec-incident-responder
description: "Manage and respond to cybersecurity incidents for MBL portfolio companies. Use when the user says 'security incident', 'cyber incident', 'data breach', 'breach', 'we got hacked', 'ransomware', 'malware', 'phishing attack', 'we were phished', 'account compromise', 'account hacked', 'compromised account', 'unauthorized access', 'suspicious activity', 'someone clicked a phishing link', 'credential compromise', 'BEC', 'business email compromise', 'fraudulent wire transfer', 'fake invoice', 'email fraud', 'anomalous login', 'unusual login', 'impossible travel', 'alert fired', 'security alert', 'Defender alert', 'M365 alert', 'GHL suspicious activity', 'AdvancedMD breach', 'PHI breach', 'HIPAA breach', 'HIPAA incident', 'incident response', 'IR', 'contain the breach', 'incident containment', 'eradication', 'recovery', 'post-incident review', 'lessons learned', 'breach notification', 'HIPAA notification', 'notify OCR', 'notify HHS', 'forensics', 'evidence preservation', 'security forensics', or 'what do we do now'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--type <phishing|ransomware|breach|bec|account-compromise>] [--phase <detect|contain|eradicate|recover|review>]"
---

# Sec Incident Responder

Manage and respond to cybersecurity incidents for MBL portfolio companies — guiding through detection, containment, eradication, recovery, and post-incident review with entity-specific escalation paths and regulatory notification obligations. In the first hours of a security incident, the decisions made (or not made) determine whether an inconvenience becomes a catastrophe. Speed and sequence matter: contain first, investigate second, communicate third.

## When to Use
- An active security incident is occurring or suspected
- Walking through the incident response playbook for a specific incident type
- Executing the HIPAA breach assessment and notification process for Allevio
- Conducting a post-incident review after an event has been resolved

## Incident Response Framework

```
INCIDENT RESPONSE PHASES:

  Phase 1 — DETECT AND REPORT:
    Sources: employee report; security tool alert (M365 Defender; AV); unusual system behavior
    First call: IT → Dr. Lewis (within 15 minutes of confirmation)
    Dr. Lewis: assess severity → activate IR plan → notify entity CEO
    Incident log: open immediately; time-stamp all actions from this point forward
    
  Phase 2 — CLASSIFY (Severity Levels):
    P0 — Critical (within 1 hour response):
      Active ransomware in progress
      PHI breach (Allevio — known or suspected)
      Admin account compromise (M365 Global Admin; AdvancedMD admin)
      Fraudulent financial transfer executed
      Notify: Dr. Lewis + entity CEO + Matt Mathison immediately
      
    P1 — High (within 4 hours response):
      Account compromise (non-admin; access isolated)
      Phishing click resulting in credential entry
      Suspicious outbound data transfer
      Notify: Dr. Lewis + entity CEO within 2 hours
      
    P2 — Medium (within 24 hours response):
      Phishing email received (not clicked)
      Malware detected and quarantined by AV
      Unauthorized access attempt (blocked by controls)
      Notify: Dr. Lewis + entity CEO same day
      
  Phase 3 — CONTAIN:
    P0 — isolate affected systems immediately:
      Disconnect affected system from network (disable NIC; kill Ethernet; remove from Wi-Fi)
      Do NOT turn off the system (preserves forensic evidence in memory and logs)
      Reset compromised credentials immediately (all accounts that may have been affected)
      Block malicious IPs/domains in firewall (if identified)
      Disable compromised accounts in M365 (Admin Center → Users → Block sign-in)
      
    Account compromise containment:
      Block sign-in for compromised account in M365
      Revoke all active sessions (Azure AD → User → Revoke sessions)
      Reset password; re-enroll MFA with new method
      Review recent sign-in history; look for suspicious activity
      
    BEC / financial fraud containment:
      Contact bank immediately to attempt recall of fraudulent transfer
      Document: amount; destination account; time of transfer
      Entity CEO + Dr. Lewis contact bank within 1 hour of discovery
      Matt Mathison notified immediately
      
  Phase 4 — ERADICATE:
    Remove malware from all infected systems (AV scan; manual review)
    Identify and close the attack vector (how did the attacker get in?)
    Patch the vulnerability that was exploited
    Review all accounts for attacker persistence (new accounts created? backdoors?)
    Verify no attacker presence remains before moving to recovery
    
  Phase 5 — RECOVER:
    Restore from backup (verify backup integrity before restore)
    Re-enable systems after clean bill of health from IT + Dr. Lewis
    Monitor closely for 30 days post-incident (enhanced logging; alert sensitivity)
    
  Phase 6 — POST-INCIDENT REVIEW (within 5 business days of resolution):
    Timeline reconstruction (minute-by-minute from detection to resolution)
    Root cause (how did the incident happen?)
    What worked well in the response?
    What needs to change (process; controls; training)?
    Action items (owner; due date)
    Dr. Lewis files post-incident report; entity CEO reviews and signs

HIPAA BREACH NOTIFICATION (Allevio — mandatory legal requirement):

  Step 1 — HIPAA Breach Risk Assessment (any PHI exposure):
    Was PHI accessed or disclosed? (Even suspected — must assess)
    4-factor test: (1) nature of PHI; (2) who accessed; (3) was it actually acquired/viewed?
    (4) was the risk mitigated?
    If any doubt: treat as breach; notification is safer than non-notification
    Dr. Lewis conducts and documents the risk assessment
    
  Step 2 — Notification timeline:
    Individuals affected: within 60 days of breach discovery
    HHS (OCR): within 60 days (>500 affected) OR by March 1 following year (<500)
    Business Associates: immediately upon breach discovery
    Media (if >500 individuals in a state): within 60 days
    
  Step 3 — Breach notification content:
    Description of breach (what happened; when; how)
    PHI types involved (demographics; clinical; financial)
    Number of individuals affected (or best estimate)
    Steps Allevio is taking to investigate; mitigate; prevent recurrence
    Contact information for individuals to ask questions
    
  Step 4 — Document everything:
    Incident log; risk assessment; notification letters; proof of delivery
    Retained 6 years (HIPAA)
    Dr. Lewis and entity CEO co-sign all HHS notifications
    
MBL ESCALATION MATRIX (incidents):
  P0: Dr. Lewis + entity CEO + Matt Mathison (all, immediately)
  P1: Dr. Lewis + entity CEO (within 2 hours); Matt Mathison if PHI or financial
  P2: Dr. Lewis + entity CEO (same day)
  Financial loss any amount: Matt Mathison immediately
  PHI exposure any amount: Matt Mathison within 4 hours
```

## Output Format

```markdown
# Incident Report — [Entity] | [Incident ID] | [Date]
**Severity:** P[0-2] | **Type:** [Ransomware/Breach/BEC/Account Compromise]
**Incident Commander:** Dr. John Lewis | **Status:** [Active/Contained/Resolved]

---

## Timeline
| Time | Action | By |
|------|--------|----|
| [HH:MM] | [Incident detected — source] | [IT/User] |
| [HH:MM] | [Dr. Lewis notified] | |

---

## Current Phase: [Detect/Contain/Eradicate/Recover/Review]

## Immediate Actions Required
1. [Action — Owner — Due]

---

## HIPAA Breach Assessment (Allevio incidents only)
**PHI involved:** [Yes/No/Unknown — investigating]
**Risk assessment status:** [In progress/Complete]
**Notification required:** [Yes/No/TBD — by [Date]]

---

## Escalation Status
| Stakeholder | Notified | Time | Method |
|------------|---------|------|--------|
| Entity CEO | ✅/❌ | [HH:MM] | [Call/Email] |
| Matt Mathison | ✅/❌ | [HH:MM] | [Call/Email] |
```

## Output Contract
- Contain before investigate — the most common IR mistake is spending the first hour trying to understand what happened instead of stopping the bleeding; if an account is compromised, reset the credentials before you analyze the audit logs; if ransomware is spreading, isolate the network segment before you start forensic analysis; the investigation can happen after the damage is stopped; if you contain first, you have time to investigate; if you investigate first while the attacker is still active, you may arrive at understanding just as the damage becomes irreversible; the sequence is always: Detect → Classify → Contain → then Investigate/Eradicate → Recover → Review
- HIPAA breach notification is time-bound and the clock starts at discovery, not at confirmation — Allevio's 60-day notification window starts when Allevio first knows or should have known about a potential breach, even if the investigation is ongoing; "we're still investigating" does not pause the clock; Dr. Lewis begins the HIPAA breach risk assessment within 24 hours of any incident involving Allevio systems with PHI; if the risk assessment concludes a breach occurred, notification planning begins immediately; do not wait for the investigation to be complete before starting notification preparation; the two can run in parallel; Dr. Lewis engages outside legal counsel experienced in HIPAA for any breach involving >100 individuals; Matt Mathison authorizes any breach-related legal engagement
- HITL required: P0 incident → Dr. Lewis takes incident commander role; entity CEO + Matt Mathison notified within 1 hour; PHI breach → HIPAA breach risk assessment within 24 hours; Dr. Lewis leads; entity CEO co-signs HHS notification; financial fraud → bank contacted within 1 hour; Matt Mathison notified immediately; forensic evidence preservation → Dr. Lewis authorizes before any system wipe or restore; post-incident review → entity CEO reviews and signs; HIPAA breach notification → Dr. Lewis + entity CEO co-sign; Matt Mathison informed; outside legal counsel → Matt Mathison authorizes engagement

## System Dependencies
- **Reads from:** Security alert sources (M365 Defender; Defender for Business; AV alerts; employee reports); M365 Unified Audit Log (sign-in history; mailbox access; admin changes); AdvancedMD audit log (Allevio — PHI access logs); GHL activity log; Covercy access log; bank records (BEC incidents); backup status (sec-backup-security-validator); IR plan (SharePoint → [Entity] → Security → IR-Plan → Current)
- **Writes to:** Incident log (SharePoint → [Entity] → Security → Incidents → [Incident-ID]; real-time updates during incident); post-incident report (entity CEO review + signature); HIPAA breach risk assessment (Allevio — Dr. Lewis; entity CEO co-sign; HHS notification if required; SharePoint → Allevio → Security → HIPAA → Breach-Records; 6 years); HHS OCR notification (if applicable — Dr. Lewis + entity CEO); individual breach notification letters (Allevio); bank fraud report (BEC incidents); security program status update (lessons learned applied to controls)
- **HITL Required:** P0 → Dr. Lewis incident commander; entity CEO + Matt Mathison within 1 hour; PHI breach → HIPAA assessment 24hr; entity CEO co-signs HHS notification; financial fraud → bank 1hr; Matt Mathison immediately; forensic preservation → Dr. Lewis authorizes; post-incident review sign-off → entity CEO; outside legal → Matt Mathison authorizes; any HHS notification → Dr. Lewis + entity CEO + Matt Mathison informed

## Test Cases
1. **Golden path (P1):** Allevio employee reports a suspicious email and says "I think I entered my password on a fake Microsoft login page." IT notified immediately → Dr. Lewis notified within 5 minutes. Classify: P1 (credential compromise; potential PHI access risk). Contain: Dr. Lewis blocks sign-in for affected account in M365 (Admin Center) within 10 minutes; revokes all active sessions; resets password; re-enrolls MFA. Investigation: review M365 sign-in logs for the account — no suspicious sign-ins before block executed (phishing email arrived 2 hours ago; no attacker sessions observed). Review AdvancedMD: affected employee had AdvancedMD access — check AdvancedMD audit log — no unusual access during 2-hour window. HIPAA assessment: no PHI accessed by attacker (confirmed by audit logs); breach risk assessment documented — "low probability PHI was acquired." No notification required. Post-incident: employee receives targeted phishing training; MFA method upgraded from push to TOTP; incident documented. Entity CEO notified within 2 hours of containment.
2. **Edge case (P0 — PHI breach):** AdvancedMD audit log shows that a clinical coordinator's account accessed 847 patient records over 3 days — access pattern inconsistent with their normal clinical role (they typically access 5-10 records per day). Classify: P0 (suspected insider PHI breach). Contain: immediately disable AdvancedMD account; disable M365 account; entity CEO notified; Dr. Lewis takes incident commander role; Matt Mathison notified within 1 hour (PHI breach). Investigate: pull 847 records accessed; determine if there's a clinical reason; interview clinical coordinator and supervisor; review whether coordinator disclosed records to anyone outside Allevio. HIPAA: 847 individuals potentially affected → breach notification likely required; Dr. Lewis begins 4-factor risk assessment immediately; outside legal counsel engaged (Matt Mathison authorizes); 60-day clock started from discovery date. If breach confirmed: 847 individuals receive notification letters; HHS OCR notified within 60 days; potentially media notification (847 > 500 threshold). Dr. Lewis + entity CEO co-sign all notifications.
3. **Adversarial (P0 — BEC / financial fraud):** MBL HoldCo finance team receives an email that appears to be from Matt Mathison requesting an urgent $45,000 wire transfer to a new vendor. The finance person executes the transfer before verifying. Entity CEO discovers the fraud 90 minutes later. Dr. Lewis: P0 — financial fraud. Contain: (1) Call bank immediately (entity CEO + Dr. Lewis; Dr. Lewis drafted talking points); request recall of wire transfer (some banks can recall within 24 hours). (2) Matt Mathison notified immediately — actual wire transfer. (3) FBI IC3 complaint filed. (4) Preserve email headers for forensic analysis. (5) Verify Matt Mathison's email account was not compromised (this was likely spoofing, not account compromise). Post-incident: (6) Implement BEC prevention: financial transfers >$5K require verbal verification via known phone number before execution; policy effective immediately; entity CEO communicates to finance team. (7) Post-incident review: what controls failed? (No call-back verification requirement.) What's fixed? (Call-back required for all wire transfers.)

## Audit Log
Incident records (incident ID; entity; type; severity; discovery date; containment date; resolution date; incident commander; Dr. Lewis + entity CEO; SharePoint; 6-year retention for HIPAA incidents). HIPAA breach records (Allevio — 4-factor risk assessment; individuals affected; HHS notification; individual notifications; Dr. Lewis + entity CEO co-sign; retained 6 years). BEC / financial fraud records (amount; bank contact; recall attempt; FBI report; Matt Mathison notification; outcome). Post-incident review records (timeline; root cause; action items; entity CEO sign-off). Security controls improvements (changes made post-incident; control updates; policy changes).

## Deprecation
IR plan reviewed annually and after every P0 or P1 incident. HIPAA notification process reviewed when HHS updates guidance. Escalation matrix reviewed when MBL org structure changes. BEC response process reviewed when bank relationships change. Incident classification thresholds reviewed annually against threat landscape.
