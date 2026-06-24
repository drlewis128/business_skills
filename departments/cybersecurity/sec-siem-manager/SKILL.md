---
name: sec-siem-manager
description: "Manage Security Information and Event Management (SIEM) for MBL portfolio companies. Use when the user says 'SIEM', 'security monitoring', 'security events', 'log management', 'log aggregation', 'centralized logging', 'security log review', 'event correlation', 'alert management', 'security alerts', 'alert fatigue', 'threat detection', 'Microsoft Sentinel', 'Sentinel', 'Microsoft Defender XDR', 'Defender XDR', 'M365 security', 'M365 security center', 'M365 Defender', 'Defender for Business', 'security dashboard', 'security metrics', 'incident detection', 'anomaly detection', 'behavioral analytics', 'UEBA', 'audit logs', 'M365 audit log', 'Purview audit', 'Azure audit logs', 'security event log', 'Windows event log', 'sign-in log', 'sign-in monitoring', 'alert triage', 'SIEM triage', 'false positive management', 'security operations', 'SecOps', 'security operations center', 'SOC', 'monitoring', 'what to monitor', 'security monitoring policy', or 'detection and response'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <configure|review|triage|report>] [--scope <m365|endpoint|network|all>]"
---

# Sec SIEM Manager

Manage Security Information and Event Management (SIEM) for MBL portfolio companies — configuring centralized security monitoring in M365 Defender for Business, reviewing alerts, and establishing a sustainable weekly security event review cadence for Dr. Lewis. SIEM for a small portfolio company is not a 24/7 SOC; it is a structured alert review process that catches meaningful security events before they become breaches.

## When to Use
- Setting up security monitoring for a new entity (what to enable; what to watch)
- Reviewing the weekly security alert summary
- Triaging an unexpected security alert
- Measuring security detection capability (are we detecting what matters?)

## SIEM Management Framework

```
MBL SIEM ARCHITECTURE (right-sized for portfolio companies):

  Primary SIEM: Microsoft Defender for Business (included in M365 Business Premium)
    Scope: endpoint detection; M365 sign-in; email threats; device compliance
    Console: security.microsoft.com (Defender portal)
    No additional cost for existing M365 Business Premium subscriptions
    
  Secondary data source: M365 Audit Log (Purview)
    Scope: M365 admin actions; SharePoint access; Teams activity; user management
    Access: M365 Compliance Center → Audit
    Retention: 90 days (Business Premium); 1 year (with audit log add-on)
    
  Optional upgrade: Microsoft Sentinel (cloud-native SIEM)
    Cost: ~$2-3/GB ingested data/month; viable for entities with complex log environments
    Benefit: long-term retention; custom KQL queries; automation playbooks
    Recommendation: add Sentinel when entity reaches Level 3-4 security maturity
    Not required for Level 1-2 entities with Defender for Business
    
  Not required (too expensive/complex for current portfolio scale):
    Splunk; IBM QRadar; Elastic SIEM — defer until scale justifies

WHAT TO MONITOR (prioritized by MBL entity context):

  TIER 1 — ALWAYS MONITOR (weekly minimum):
  
    M365 Sign-in Logs:
      Successful sign-ins from unusual locations (countries outside US; unusual ISPs)
      Failed sign-ins spike (>20 failures for an account in 1 hour = credential stuffing)
      Sign-ins after hours (outside 6am-9pm local time for the account owner's timezone)
      Admin account sign-ins — ALL of them (should be rare and explainable)
      
    Defender for Business — Active Alerts:
      All High and Critical severity alerts (require same-day response)
      Malware detections on endpoints (review weekly; isolate endpoint if active malware)
      Suspicious process executions (PowerShell; unusual executables; LOL bins)
      
    M365 Admin Actions:
      Global Admin role grants (should never happen without Dr. Lewis authorization)
      New admin accounts created
      MFA disabled for any account
      Conditional Access policy changes
      
    AdvancedMD Access (Allevio — monthly):
      Users with access count spike (>200% of normal daily access count)
      Access from unusual IP addresses (not clinic networks or VPN ranges)
      After-hours access (should be rare at clinical level; alert if frequent)
      
  TIER 2 — MONITOR QUARTERLY:
  
    SharePoint/OneDrive external sharing events (large volumes of external shares)
    DLP policy violations (monthly — covered in sec-dlp-manager)
    Defender Vulnerability Management — new critical/high CVEs on endpoints
    Email forwarding rules (auto-forward to external = potential BEC or insider threat)
    
WEEKLY SECURITY REVIEW PROCESS (Dr. Lewis — 30-60 minutes per entity):

  Step 1 — Defender Alert Dashboard:
    Open security.microsoft.com → Incidents & Alerts
    Triage: High/Critical first; then Medium
    For each unreviewed alert: is this a true positive or false positive?
    True positive: escalate per severity (High = P1 response; Critical = P0)
    False positive: suppress or tune the detection rule
    
  Step 2 — Sign-in Log Review:
    M365 Admin → Entra ID → Sign-in logs
    Filter: last 7 days; exclude normal business hours from expected locations
    Look for: unusual geography; unusual ISPs; unusual user agents; failed count spikes
    Flag any suspicious sign-ins for investigation (sec-phishing-response-coordinator)
    
  Step 3 — Admin Audit Log:
    M365 Compliance → Audit → filter for: "Global Admin grant"; "MFA disabled"; "CA policy change"
    Any unexpected admin changes: P0 investigation
    
  Step 4 — Defender Vulnerability Management:
    Check for new Critical CVEs on endpoints since last review
    Coordinate patch with IT (sec-patch-compliance-tracker)
    
  Allevio additional — monthly:
    AdvancedMD access anomaly review (access counts; unusual access patterns)
    DLP alert review (sec-dlp-manager)
    
ALERT TUNING:
  Alert fatigue is the death of SIEM effectiveness — if Dr. Lewis receives 50 false positives per week,
  real alerts get ignored; tune aggressively to maintain <10 actionable alerts per week per entity
  
  Tuning actions:
    Suppress: known-good activity that consistently triggers (e.g., IT admin running scripts)
    Create exclusion: specific user/device/process known to be legitimate
    Adjust threshold: increase confidence threshold for noisy detection rules
    
  Do NOT suppress without review: Defender for Business suppressions should be documented
    Why suppressed; who approved; date; review date (don't set indefinite suppressions)
```

## Output Format

```markdown
# Security Event Review — [Entity] | Week of [Date]
**Reviewer:** Dr. John Lewis | **Review time:** [N minutes] | **Alerts reviewed:** [N]

---

## Alert Summary
| Severity | Total | True positive | False positive | Open |
|---------|-------|--------------|---------------|------|
| Critical | [N] | [N] | [N] | [N] |
| High | [N] | [N] | [N] | [N] |
| Medium | [N] | [N] | [N] | [N] |

---

## Notable Events
| Event | User/System | Determination | Action |
|-------|------------|--------------|--------|
| Unusual sign-in from Amsterdam | jlindsley@mblpartners.com | True pos (travel confirmed with user) | None |
| Malware alert — PUA | Endpoint-07 | True pos | Isolated; scan; cleaned |

---

## Open Items
| Item | Owner | Due |
|------|-------|-----|
| [Alert] | IT | [Date] |
```

## Output Contract
- The weekly security review is a structured process, not an ad hoc scan — "I check the security dashboard when I have time" is not a security monitoring program; the weekly review is a calendar appointment that happens every Monday morning for Dr. Lewis; it covers the same checklist in the same order; it takes 30-60 minutes per entity; the output is a documented log of what was reviewed, what was found, and what action was taken; when nothing notable is found, the log says "Weekly review complete: no notable events. Alerts reviewed: N (N false positives suppressed; N true positives handled). Review time: 30 minutes. Dr. Lewis."; this documentation is the evidence that SIEM monitoring is operational (important for HIPAA compliance and cyber insurance attestation)
- Alert fatigue is the adversary of effective security monitoring — if Dr. Lewis receives a security email digest with 200 alerts per week and only 3 of them are real, the review process fails (Dr. Lewis skips the digest; real alerts are missed; the SIEM generates noise but not intelligence); Dr. Lewis's target is <10 actionable alerts per entity per week; achieving this requires: (1) starting with High/Critical alerts only in the first month; (2) suppressing known-good activity with documentation; (3) tuning thresholds on noisy rules; (4) accepting that some true positives will be missed at lower sensitivity in exchange for a sustainable review cadence; a reviewed alert at 90% sensitivity beats an unreviewed alert at 100% sensitivity
- HITL required: Critical or P0 alert → Dr. Lewis responds same day; entity CEO notified within 4 hours; sec-incident-responder activated; High alert (P1) → Dr. Lewis responds within 48 hours; entity CEO notified if confirmed breach; Admin action anomaly (unexpected Global Admin grant; MFA disabled) → Dr. Lewis investigates immediately; P0 if unauthorized; entity CEO notified; AdvancedMD access anomaly → Dr. Lewis investigates within 24 hours; HIPAA breach assessment if unauthorized PHI access; alert suppression → Dr. Lewis documents; Sentinel upgrade decision → entity CEO budget approval; Matt Mathison informed of security monitoring capability for portfolio

## System Dependencies
- **Reads from:** Microsoft Defender for Business portal (security.microsoft.com — incidents; alerts; endpoint health; vulnerability management); M365 Entra ID sign-in logs (Admin Center → Entra → Sign-in logs); M365 Audit Log (Compliance Center → Audit — admin actions; SharePoint; Teams); AdvancedMD audit log (Allevio — monthly access anomaly review); M365 DLP alert dashboard (monthly — sec-dlp-manager); Email threat reports (Defender for Office 365 — phishing detected; malware); Conditional Access audit (sec-sso-manager)
- **Writes to:** Weekly security review log (SharePoint → [Entity] → Security → SIEM → Weekly-Review → [Week-of-Date]); alert triage records (true positive; false positive; suppression; Dr. Lewis determination; entity CEO if notable; SharePoint); Defender suppression rules (documented in SharePoint — suppression; reason; approval; review date); P0/P1 incident records (sec-incident-responder trigger); entity CEO monthly security briefing (monthly; notable events; alert trends); Matt Mathison portfolio monitoring briefing (quarterly; monitoring capability status; notable incidents)
- **HITL Required:** Critical/P0 alert → Dr. Lewis same day; entity CEO 4hr; sec-incident-responder; High/P1 → Dr. Lewis 48hr; entity CEO if confirmed breach; admin anomaly → Dr. Lewis immediately; entity CEO if unauthorized; AdvancedMD anomaly → Dr. Lewis 24hr; HIPAA assessment if PHI; alert suppression → Dr. Lewis documents; Sentinel upgrade → entity CEO budget; Matt Mathison portfolio briefing → Dr. Lewis prepares quarterly

## Test Cases
1. **Golden path:** Monday morning security review for MBL HoldCo. Dr. Lewis opens Defender portal. Alerts: 5 total — 3 Medium (endpoint — PUA detections; not active malware; resolved). 1 High — "Suspicious PowerShell execution on Endpoint-03" — Dr. Lewis investigates: IT ran a legitimate administrative script yesterday (confirmed via IT; script is known); suppresses with documentation ("IT admin PowerShell — [name]; legitimate admin script; suppressed; Dr. Lewis; [date]; review 90 days"). 1 Medium — "User signed in from unusual location": jlindsley@mblpartners.com from Chicago (Jimmy is normally Dallas-based); Dr. Lewis calls Jimmy: "Yes, I'm at a conference in Chicago." Documents: verified with user; legitimate travel. Sign-in log: nothing else unusual. Admin audit: no unexpected changes. Review complete. Log filed. 30 minutes total.
2. **Edge case:** Defender alert: "M365 Global Admin role granted to NewAccount@mblpartners.com" — Dr. Lewis did not authorize this: Dr. Lewis: "P0 — unauthorized admin role grant. (1) Who is NewAccount@mblpartners.com? Is this a legitimate new account? (2) Pull M365 audit log: who granted the Global Admin role? From which IP? At what time? (3) Block NewAccount@mblpartners.com immediately (Entra → Block sign-in) until identity is confirmed. (4) If the granting account is also unrecognized: block that account too. (5) Entity CEO + Matt Mathison notified immediately. (6) How did this happen? Is the account that granted admin privileges legitimate? If that account was compromised, we have an active P0 breach. (7) sec-incident-responder activated. (8) IT performs emergency access review: who has Global Admin? Remove any unauthorized grants. (9) Investigation: was the unauthorized admin account used to access any systems, read any data, or change any configurations? (10) Revoke NewAccount@mblpartners.com and investigate source."
3. **Adversarial:** Entity CEO asks: "Can we just turn on auto-remediation so the SIEM handles things automatically without Dr. Lewis having to review everything?": Dr. Lewis: "Auto-remediation in Defender for Business (automated investigation and response — AIR) is already enabled for Endpoint threats and I leave it on — when Defender detects an active malware infection on an endpoint, it can automatically isolate the device without waiting for me to act. That auto-action is appropriate and I recommend keeping it. What I'd caution against: auto-remediating M365 sign-in events or account lockouts automatically. If Defender auto-blocks accounts based on sign-in anomalies, legitimate users get locked out (Dr. Lewis at an airport; an executive traveling internationally). That requires human judgment. The right model: auto-isolate endpoints (time-sensitive; contain malware spread); human-review for identity and access decisions (need context that automation lacks). The weekly review is my accountability mechanism for the human-review portion — it doesn't need to be daily because our risk level doesn't justify that."

## Audit Log
Weekly security review logs (entity; date; alerts reviewed; findings; Dr. Lewis determination; entity CEO briefed if notable; SharePoint). Alert triage records (alert; determination; suppression or response; documentation; Dr. Lewis; date). P0/P1 incident records (from SIEM trigger; sec-incident-responder; entity CEO notification; resolution). Admin anomaly records (event; investigation; determination; entity CEO notification if unauthorized; date). AdvancedMD access anomaly records (Allevio; date; account; pattern; investigation; determination; HIPAA assessment if applicable). Alert suppression records (alert type; reason; Dr. Lewis authorization; review date; SharePoint). Monthly security briefing records (entity CEO; date; Dr. Lewis preparation; notable events; trend; SharePoint).

## Deprecation
SIEM tool reviewed annually. Microsoft Sentinel upgrade decision reviewed when entity reaches Level 3+ security maturity or log volume justifies. Alert tuning configurations reviewed quarterly (suppress rules; threshold adjustments). Weekly review cadence reviewed annually (increase to daily if entity risk profile increases significantly). AdvancedMD monitoring requirements reviewed when Allevio changes EHR systems.
