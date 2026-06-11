---
name: security-incident-manager
description: "Manage a security incident from detection through remediation. Use when the user says 'security incident', 'we've been breached', 'cyber incident', 'incident response', 'data breach', 'possible intrusion', 'suspicious activity', 'security event', or 'someone is in our system'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<incident-type> [--entity <name>] [--severity <P1|P2|P3>] [--stage <detect|contain|eradicate|recover|review>]"
---

# Security Incident Manager

Manage a security incident from detection through remediation and post-incident review. Security incidents are time-critical — every minute of delay increases the blast radius. This skill provides a structured, step-by-step response that prevents panic-driven decisions, preserves evidence, and limits damage.

## When to Use
- Potential or confirmed security incident in progress
- User reports suspicious activity (phishing click, unusual account behavior)
- Security tool alert (EDR, SIEM, monitoring) that hasn't been dismissed
- External notification (vendor breach, threat intelligence alert, dark web finding)
- Post-incident — building the timeline and lessons learned

## Incident Severity

| Severity | Definition | Response |
|---------|-----------|---------|
| **P1 — Critical** | Active breach, data exfiltration in progress, ransomware, PHI exposure | All hands — IT Manager + Dr. Lewis + Legal within 15 minutes |
| **P2 — High** | Compromised account, malware contained, suspicious network traffic | IT Manager notified within 1 hour; response team activated |
| **P3 — Medium** | Failed attack, phishing click (no compromise), policy violation | IT Tech investigates; IT Manager notified by end of day |

## PICERL Response Framework

| Phase | Actions |
|-------|---------|
| **Prepare** | Plans, playbooks, and tools ready before the incident |
| **Identify** | Detect and confirm the incident; scope the impact |
| **Contain** | Stop the spread; isolate affected systems |
| **Eradicate** | Remove the threat; close the entry point |
| **Recover** | Restore systems; verify clean before returning to production |
| **Lessons Learned** | Post-mortem; update playbooks; report to leadership |

## Output Format

```markdown
# Security Incident Report — INC-<NNN>
**Entity:** <MBL entity> | **Severity:** P1 / P2 / P3
**Incident type:** Ransomware / BEC / Phishing / Unauthorized Access / Data Breach / Other
**Detected:** <date/time> | **Declared:** <date/time> | **Status:** Active / Contained / Closed
**Incident Commander:** IT Manager | **Exec Sponsor:** Dr. John Lewis

---

## Incident Timeline

| Time | Event | Action Taken | By |
|------|-------|------------|-----|
| <time> | [Alert / report / detection] | Confirmed — declared incident | IT Tech |
| <time> | IT Manager notified | Response team activated | IT Manager |
| <time> | Affected systems identified: [list] | Isolation initiated | IT Engineer |
| <time> | Dr. Lewis notified | Legal review requested | IT Manager |
| <time> | Isolation complete | Eradication begun | IT Engineer |

---

## Phase 2: Identify

**What triggered the detection?**
<Alert type, user report, tool, external notification>

**What systems/data are affected?**
- Systems: <list>
- Data types potentially exposed: <Restricted / Confidential / Internal / Unknown>
- Number of users affected: <N>
- Is PHI involved? Yes / No / Unknown (escalate if Yes or Unknown)

**Scope assessment (initial):**
- Confirmed compromised systems: <N>
- Potentially compromised: <N>
- Unaffected: <N>

---

## Phase 3: Contain

**Containment actions taken:**
- [ ] Compromised systems isolated from network (EDR isolation / firewall rule / VLAN)
- [ ] Compromised user accounts disabled
- [ ] Remote access (VPN) disabled for affected users
- [ ] Passwords reset for adjacent accounts

**Containment verified by:** <name> at <time>

---

## Phase 4: Eradicate

**Threat removed:**
- [ ] Malware identified and removed
- [ ] Persistence mechanisms removed (scheduled tasks, registry keys, backdoors)
- [ ] Entry point identified and closed (patched, password changed, MFA added)
- [ ] Forensic image taken before reimaging (for P1)

---

## Phase 5: Recover

**Recovery actions:**
- [ ] Systems restored from clean backup (backup verified clean before restore)
- [ ] Systems reimaged if compromise was deep
- [ ] Enhanced monitoring enabled for 30 days post-incident
- [ ] Users notified and credentials reset

---

## Notifications Required

| Party | Required? | Timing | Status |
|-------|---------|--------|--------|
| Dr. Lewis | Yes | Within 15 min (P1) | ✅ |
| Matt Mathison | P1 only | Within 1 hour | ✅ |
| Legal counsel | P1, data breach | Within 2 hours | Notified |
| Cyber insurance carrier | P1 | Within 24 hours | In progress |
| State AG (breach notification) | If PII/PHI involved | Per state law (varies) | TBD |
| HHS OCR (HIPAA breach) | If PHI involved | Within 60 days | TBD |
| Affected individuals | If PII exposed | Per law (30-60 days) | TBD |
```

## Output Contract
- Containment always before eradication — never try to clean a system while it's still connected
- PHI involvement always assessed in Identify phase — HIPAA breach notification timeline starts on discovery, not confirmation
- Evidence always preserved before reimaging — forensics require an image of the compromised state
- HITL required: Dr. Lewis and IT Manager are both required for P1; Legal notified for any data breach; Dr. Lewis personally authorizes any ransom payment discussion

## System Dependencies
- **Reads from:** EDR console, SIEM, system logs, network monitoring, cloud logs (provided)
- **Writes to:** Incident log (IT ticketing system); breach notification drafts (Legal review)
- **HITL Required:** Dr. Lewis authorizes P1 containment actions on production systems; Legal directs breach notifications; Matt Mathison briefed for any P1 affecting multiple entities

## Test Cases
1. **Golden path:** Ransomware detected on SRV-001 → IT Tech isolates within 5 minutes, IT Manager and Dr. Lewis notified within 10 minutes, Legal and cyber insurance carrier notified within 2 hours, restore from clean backup initiated, forensic image taken, recovery complete in 6 hours, post-mortem scheduled
2. **Edge case:** Phishing click on an email that appears to be a credential harvest → IT immediately resets the user's password + MFA, checks for any logins from unusual locations in the last 24 hours, elevates to P2 if any suspicious logins found, maintains P3 if no compromise confirmed
3. **Adversarial:** Employee wants to "quietly fix" a breach without formal incident declaration to avoid embarrassment → insists on formal incident declaration (regulatory, insurance, and legal requirements), explains that undisclosed breaches become much worse when discovered later, offers to manage the communication

## Audit Log
All incident reports retained permanently. Timeline, containment actions, and notifications documented. Post-mortem completed and retained. Regulatory filings documented.

## Deprecation
Retain permanently — incident management is a critical process. Upgrade by integrating with SOAR (Security Orchestration, Automation, and Response) platform for automated playbook execution.
