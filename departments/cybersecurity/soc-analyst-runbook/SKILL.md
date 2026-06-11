---
name: soc-analyst-runbook
description: "Execute SOC analyst runbook procedures for security alert triage and investigation. Use when the user says 'SOC runbook', 'alert triage', 'security alert', 'SIEM alert', 'investigate an alert', 'EDR alert', 'suspicious login', 'security operations', 'false positive', or 'alert investigation'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<alert-type> [--entity <name>] [--source <EDR|SIEM|M365|network>] [--priority <P1|P2|P3>]"
---

# SOC Analyst Runbook

Execute SOC analyst runbook procedures for security alert triage and investigation. Alert fatigue is real — the most common failure mode for security teams is drowning in noise and missing the signal. This runbook provides structured triage procedures that quickly separate real threats from false positives and escalate appropriately.

## When to Use
- Triage a specific security alert from EDR, SIEM, M365, or network monitoring
- Build a runbook for a new alert type
- Review alert response procedures before an incident
- Training new IT staff on security alert handling
- Post-incident review of alert handling

## Alert Priority Framework

| Priority | Response SLA | Definition | Example |
|---------|------------|-----------|---------|
| **P1** | Immediate | Active compromise, data exfiltration | Ransomware, confirmed breach |
| **P2** | < 1 hour | Suspicious activity with high impact potential | Credential stuffing, lateral movement |
| **P3** | < 4 hours | Anomalous activity, low confidence | Unusual login time, policy violation |
| **P4** | < 24 hours | Informational, likely false positive | First-time login from a new location |

## Common Alert Runbooks

### Alert Type: Suspicious Login / MFA Bypass

**Triage questions:**
1. Is this a known user logging in from an unusual location?
2. Did the user travel recently (check Teams status, calendar)?
3. Did a concurrent login attempt from a different location occur?
4. Was MFA challenged? Was it approved?
5. Any activity after login? (email access, file download, setting changes)

**Disposition:**
- Known user + plausible location + MFA approved = P4 false positive
- Known user + unusual location + MFA approved + no anomalous activity = P3 monitor
- Known user + impossible travel (two locations simultaneously) = P2 escalate
- Unknown device + failed MFA = P2 investigate
- Successful login + anomalous activity (bulk download, mail rules) = P1 incident

### Alert Type: Malware/EDR Alert

**Triage questions:**
1. Is this on a managed endpoint (enrolled in MDM)?
2. What was the trigger? (file hash, behavior, network connection)
3. Was the malware quarantined or active?
4. Has the affected file/process been seen before in this environment?
5. Was there network activity (C2 connections, data exfiltration)?

**Disposition:**
- Known good file (IT tool, business app) flagged = P4 false positive (allowlist if appropriate)
- Unknown file quarantined, no network activity = P3 investigate further
- Malware active, no network activity = P2 isolate and eradicate
- Malware active + network activity detected = P1 incident

### Alert Type: Data Exfiltration / Large Download

**Triage questions:**
1. Who is the user? Is this a normal part of their role?
2. What data was accessed? Classification level?
3. Where did the data go? (email, USB, cloud storage, external IP)
4. Is the user currently under any HR investigation or change of status?
5. Was this activity during normal hours?

**Disposition:**
- Known user + role-appropriate + normal hours = P4 false positive
- Known user + unusual destination (personal email, USb) = P2 investigate
- Unknown user or terminated user + any data = P1 incident
- PHI involved regardless of user = P1/HIPAA assessment required

## Output Format

```markdown
# Security Alert Triage — <Entity>
**Alert ID:** <ID> | **Source:** EDR / M365 / SIEM / Network
**Alert type:** <type> | **Priority (initial):** P1/P2/P3/P4
**Detected:** <date/time> | **Analyst:** IT Tech / IT Manager
**Status:** Triaging / Investigating / Escalated / Closed — False Positive / Closed — True Positive

---

## Alert Details

| Field | Value |
|-------|-------|
| Alert name | <from tool> |
| Affected user / system | <user or system name> |
| Detection time | <time> |
| Detection source | EDR / M365 Defender / SIEM / Manual |
| Activity detected | <description> |
| Data involved | None / Internal / Confidential / PHI |

---

## Triage Investigation

| Triage Question | Finding |
|----------------|---------|
| Is this a known user? | Yes — [name, role] / No — unknown account |
| Is this normal activity for this user/system? | Yes / No / Unknown |
| Was MFA approved? | Yes / No / Not challenged |
| Any concurrent suspicious activity? | None / [describe] |
| Network activity detected? | None / C2 / Data exfiltration / [describe] |

**Initial assessment:** False positive / Suspicious — investigate further / Confirmed threat

---

## Actions Taken

| Time | Action | By | Result |
|------|--------|-----|--------|
| <time> | Reviewed sign-in logs | IT Tech | No impossible travel detected |
| <time> | Checked EDR for lateral movement | IT Tech | No lateral movement |
| <time> | Contacted user to verify activity | IT Tech | User confirmed — working late |

---

## Disposition

**Final priority:** P1 / P2 / P3 / P4
**Outcome:** False positive — close / True positive — escalate to incident INC-<NNN>

**Escalated to:** IT Manager / Dr. Lewis / None

**Recommended actions:**
- <action if needed>
```

## Output Contract
- PHI involvement always elevates priority and triggers HIPAA assessment — automatic escalation
- "False positive" requires documented evidence — no dismissing alerts without a reason recorded
- P1 alerts always escalate to IT Manager and Dr. Lewis — no solo handling
- Impossible travel (two simultaneous logins from distant locations) always escalates to P2 or P1
- HITL required: IT Manager for P2 and above; Dr. Lewis for P1; Allevio compliance officer for any PHI-adjacent alert that is confirmed or cannot be ruled out

## System Dependencies
- **Reads from:** EDR console, M365 Entra sign-in logs, network logs, SIEM (provided — depends on tools deployed)
- **Writes to:** Alert log / ticketing system
- **HITL Required:** IT Manager for P1/P2 escalation; Dr. Lewis for P1; Allevio compliance officer for PHI alerts

## Test Cases
1. **Golden path:** EDR alert → unknown file quarantined on HW-015 → triage reveals it's a legitimate IT admin tool being flagged → false positive documented, tool allowlisted in EDR, closed P4
2. **Edge case:** M365 alert for login from a foreign IP — user is CEO → check if Matt Mathison is traveling (calendar check), contact user directly before taking action, verify MFA was used; if confirmed legitimate, document and close P4
3. **Adversarial:** Alert volume spikes to 50+ events in an hour — analyst wants to dismiss them all as false positives to clear the queue → refuses to batch-dismiss; high alert volume is itself an indicator; pulls sample of alerts, identifies coordinated credential stuffing campaign, escalates to P2

## Audit Log
All alert triage activities logged with disposition and evidence. False positives documented. Escalated alerts cross-referenced with incident log.

## Deprecation
Retire and replace with a SIEM-integrated SOAR platform (Splunk, Microsoft Sentinel, Palo Alto XSOAR) when alert volume warrants automated playbook execution.
