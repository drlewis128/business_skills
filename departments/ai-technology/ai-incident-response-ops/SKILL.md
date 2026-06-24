---
name: ai-incident-response-ops
description: "Manage technology and AI incidents for MBL Partners and portfolio companies. Use when the user says 'incident', 'security incident', 'data breach', 'breach', 'AI incident', 'system down', 'outage', 'system outage', 'security breach', 'hack', 'hacked', 'phishing', 'phishing attack', 'malware', 'ransomware', 'account compromise', 'account hacked', 'unauthorized access', 'data leak', 'data exposure', 'PHI exposure', 'HIPAA incident', 'HIPAA breach', 'HIPAA violation', 'AI error distributed', 'wrong data sent', 'data sent to wrong person', 'sensitive data exposed', 'vendor breach', 'third-party breach', 'Microsoft breach', 'QuickBooks breach', 'system failure', 'critical error', 'AI hallucination distributed', 'wrong AI output sent', 'incident response', 'incident management', 'incident investigation', 'post-mortem', 'root cause analysis', or 'what do we do if'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--type <security|hipaa|ai-error|system-outage>] [--entity <mbl|allevio|hive|column6>] [--action <respond|investigate|notify|report|recover>]"
---

# AI Incident Response Ops

Manage technology and AI incidents for MBL Partners and portfolio companies — providing a structured response to security incidents, HIPAA breaches, AI errors, and system outages. Incidents are managed with a bias toward speed: the first 60 minutes determine whether a security incident becomes a breach; the first 24 hours determine whether a HIPAA near-miss becomes a reportable event.

## When to Use
- Any security incident (phishing; account compromise; unauthorized access; data exposure)
- Any HIPAA incident at Allevio (PHI exposure; AI output with PHI; vendor breach)
- Any AI error that was distributed externally before HITL review caught it
- Any significant system outage affecting Matt Mathison's workflow or entity operations

## Incident Response Framework

```
INCIDENT CLASSIFICATION:

  SEV 1 — CRITICAL (respond immediately; Dr. Lewis + entity CEO + Matt Mathison):
    Active account compromise or unauthorized access to MBL systems
    PHI exposure to unauthorized party (Allevio — potential HIPAA breach)
    Ransomware or malware affecting MBL systems
    AI-generated content with PHI distributed externally
    Stolen device with unencrypted MBL data
    
  SEV 2 — HIGH (respond within 2 hours):
    Successful phishing email (credentials entered; account not yet compromised)
    Suspicious activity on financial systems (QuickBooks; Bill.com; Covercy)
    System outage affecting Matt Mathison's workflow or entity CEO operations
    AI error output distributed before HITL caught it (no PHI; but incorrect information sent)
    Vendor notifies MBL of a breach affecting MBL data
    
  SEV 3 — MEDIUM (respond next business day):
    Phishing email received but not clicked
    Failed login attempts on MBL systems (could be credential stuffing)
    Minor AI quality error (HITL caught it; no external distribution)
    Non-critical system degradation
    
INCIDENT RESPONSE PHASES:

  PHASE 1 — CONTAIN (first 30 minutes for SEV 1-2):
    Disable compromised account immediately (M365 Admin)
    Remote wipe stolen device (Intune)
    Suspend affected AI workflow (Krista admin)
    Isolate affected system (disconnect from network if applicable)
    Preserve evidence: do not delete logs; do not shut down systems unless actively destructive
    
  PHASE 2 — ASSESS (30-120 minutes):
    What happened? When? How discovered?
    What data was exposed or potentially compromised?
    For HIPAA: Was PHI involved? How many individuals? What data elements? Was it disclosed?
    What is the blast radius? (one account? one entity? multiple entities?)
    
  PHASE 3 — NOTIFY (within 24 hours for SEV 1-2):
    Internal: Dr. Lewis → entity CEO → Matt Mathison
    HIPAA incident: Dr. Lewis + entity CEO + legal counsel within 24 hours
    Vendor-caused breach: Dr. Lewis + entity CEO + legal counsel; vendor notification requirements apply
    LP-impacting incident: Matt Mathison notifies LPs per LP agreement terms
    HHS OCR notification: if HIPAA breach confirmed → within 60 days of discovery
    
  PHASE 4 — REMEDIATE (within 48-72 hours):
    Credential reset; MFA re-enrollment
    System hardening (patch; configuration change)
    AI workflow fix (prompt update; access control)
    Staff communication (what happened; what to watch for)
    
  PHASE 5 — DOCUMENT AND LEARN:
    Incident report (timeline; root cause; impact; actions taken; prevention)
    Post-mortem with entity CEO (30 min; blameless; focus on system improvements)
    Update runbook (what would have made this faster to resolve?)
    
HIPAA BREACH DETERMINATION (45 CFR § 164.402):
  Breach = unauthorized access, acquisition, use, or disclosure of PHI that compromises the security or privacy of PHI
  Presumption: PHI exposure = breach UNLESS covered by the 4 exceptions
  4 exceptions (each requires documented risk assessment):
    1. Unintentional acquisition by workforce in good faith
    2. Inadvertent disclosure to another authorized person
    3. Unauthorized person receiving PHI wouldn't reasonably have retained it
    4. 4-factor risk assessment shows low probability of compromise
  If breach: HHS OCR notification (60 days); affected individual notification; media if >500 in state
```

## Output Format

```markdown
# Incident Report — [Incident ID] | [Date]
**SEV:** [1/2/3] | **Type:** [Security/HIPAA/AI Error/Outage] | **Entity:** [MBL/Allevio/HIVE/Column6]
**Reported by:** [Name] | **Discovered:** [Date/Time] | **Contained:** [Date/Time]

---

## Timeline
| Time | Action | By |
|------|--------|-----|
| [Time] | Incident discovered | [Who] |
| [Time] | Dr. Lewis notified | [How] |
| [Time] | Account disabled | Dr. Lewis |
| [Time] | Entity CEO notified | Dr. Lewis |
| [Time] | Legal counsel notified | Dr. Lewis |

---

## Impact Assessment
**Data exposed:** [PHI / Financial / Operational / None confirmed]
**Individuals affected:** [N or Unknown]
**External distribution:** [Yes/No — who received what]

## Root Cause
[Brief root cause statement]

## Remediation
[Actions taken]

## Prevention
[What changes will prevent recurrence]

## HIPAA Breach Determination (if applicable)
**Breach status:** [Confirmed / Not a breach (exception: X) / Under assessment]
**HHS notification required by:** [Date]
```

## Output Contract
- Containment first; investigation second — when Dr. Lewis receives an incident report, the first action is always containment: disable the compromised account, suspend the affected workflow, wipe the stolen device; investigation of root cause happens after the threat is contained; a 30-minute investigation before disabling a compromised account is 30 minutes of potential unauthorized access; containment takes priority even if it means interrupting operations; entity CEO notified immediately with: "We have an incident. I've [contained the threat]. Here's what I know so far. I'll have a full assessment within 2 hours."
- HIPAA presumption of breach — Dr. Lewis operates under the HIPAA presumption rule: if PHI was exposed, it is a breach until a documented risk assessment proves otherwise; "I'm sure no one actually saw it" is not a risk assessment; the 4-factor test (nature of PHI; unauthorized person; whether PHI was acquired; extent of risk) must be completed and documented; only after the risk assessment is complete can Dr. Lewis tell the Allevio entity CEO "this is not a reportable breach based on the 4-factor assessment — documentation here"; and if there is any doubt, the presumption holds and HHS notification proceeds
- HITL required: SEV 1 containment → Dr. Lewis acts immediately without waiting for approval (speed is the control); entity CEO notified within 30 minutes; Matt Mathison notified within 60 minutes for SEV 1; HIPAA incident → legal counsel within 24 hours; HHS OCR notification → legal counsel coordinates (not Dr. Lewis alone); LP notification for LP-impacting incidents → Matt Mathison notifies; post-mortem → Dr. Lewis + entity CEO; incident report → Dr. Lewis + entity CEO sign off; breach determination → legal counsel leads

## System Dependencies
- **Reads from:** Microsoft 365 Admin and Entra ID (account status; login logs); Microsoft Intune (device status; remote wipe); Krista.ai (workflow suspension; conversation logs); Claude API logs (Anthropic Console); SharePoint access logs; entity CEO incident reports; vendor breach notifications
- **Writes to:** Incident log (SharePoint → MBL → IT → Security → Incidents → [Incident ID]; permanent); HIPAA incident log (SharePoint → Allevio → Compliance → HIPAA → Incidents; permanent); HHS OCR notification (if breach confirmed); entity CEO incident briefings; Matt Mathison incident briefings; post-mortem documents; updated runbooks
- **HITL Required:** SEV 1 containment → immediate (no approval needed); entity CEO within 30 min; Matt Mathison within 60 min for SEV 1; legal counsel for HIPAA incidents; HHS notification → legal counsel coordinates; LP notification → Matt Mathison; post-mortem → entity CEO; breach determination → legal counsel leads; incident report sign-off → entity CEO

## Test Cases
1. **Golden path:** HIVE entity CEO reports phone stolen; had QuickBooks and Teams apps on it. SEV 1. Dr. Lewis: (1) Opens Intune immediately — device is enrolled ✅; initiates remote wipe (2 min). (2) Checks M365 Admin — forces sign-out on all active sessions for entity CEO account. (3) Checks QuickBooks — HIVE entity (view-only access for entity CEO); forces session revocation. (4) Calls entity CEO (5 min after initial report): "Phone wiped. Account signed out everywhere. You'll need to re-enroll on your new device. No indication of unauthorized access before the wipe." (5) Entity CEO notified of next steps (new phone setup). (6) Incident log created. (7) Matt Mathison notified (brief Teams message: "HIVE entity CEO phone stolen; remote wipe executed; no breach"). SEV 1 resolved in 15 minutes.
2. **Edge case:** During the Allevio meeting summary HITL review, Dr. Lewis finds PHI in the AI draft before any external distribution. No breach occurred (PHI was caught before going external) — but this is still a HIPAA incident under MBL's policy (near-miss requires documentation) → Dr. Lewis: "Incident log opened: AI near-miss — PHI in draft Allevio meeting summary; caught by Dr. Lewis HITL review at 10:02am; no external distribution; workflow suspended. Severity: Not a breach (PHI did not leave MBL control). Documentation: incident log; HIPAA near-miss log; root cause (clinical lead mentioned member names in meeting; AI faithfully transcribed); remediation (prompt update — see ai-krista-conversation-auditor edge case). Legal counsel notified (brief note: near-miss; no breach determination required). Allevio entity CEO briefed. No HHS notification required."
3. **Adversarial:** Entity CEO wants to delay incident reporting because "it might be nothing and I don't want to alarm anyone" → Dr. Lewis: "I understand the instinct, but I can't delay the notification. For SEV 1-2 incidents, the notification timeline isn't discretionary — HIPAA requires breach notification within 60 days of discovery (not 60 days of confirmation), and our internal policy requires Dr. Lewis + entity CEO + legal counsel within 24 hours of any PHI exposure. Delay creates two problems: (1) If this turns out to be a breach, the clock started when we discovered it, not when we finished assessing it; (2) Legal counsel needs early involvement to protect Allevio from discovery privilege issues. I'll notify with the information we have now: 'Potential incident; assessment in progress; no confirmation of breach yet.' That framing is accurate and doesn't over-alarm — but it starts the clock correctly."

## Audit Log
Incident log (all incidents; all severities; permanent; SharePoint). HIPAA incident log (permanent; separate from general IT log; SharePoint → Allevio → Compliance → HIPAA → Incidents). Containment action records (timestamps; actions; Dr. Lewis). Notification records (who was notified; when; how). HHS OCR notifications (if filed). Breach determination records (4-factor risk assessment). Post-mortem records. Runbook update records.

## Deprecation
Incident response framework reviewed annually. HIPAA breach determination protocol reviewed when HHS OCR issues new guidance. Notification thresholds reviewed when regulatory requirements change. SEV classification reviewed when MBL's IT risk profile changes. Post-mortem format reviewed after each significant incident.
