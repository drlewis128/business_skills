---
name: forensics-evidence-collector
description: "Collect and preserve digital forensic evidence after an incident. Use when the user says 'digital forensics', 'forensic evidence', 'evidence collection', 'preserve evidence', 'forensic image', 'forensic investigation', 'what happened on this system', 'memory dump', or 'preserve the logs'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<device-or-system> [--entity <name>] [--type <endpoint|server|cloud|all>] [--stage <collect|preserve|analyze>]"
---

# Forensics Evidence Collector

Collect and preserve digital forensic evidence after an incident. Forensic evidence is the difference between understanding what happened and guessing. It's also the foundation for insurance claims, legal action, and regulatory compliance. Evidence collected incorrectly (or not at all) cannot be used in legal proceedings. This skill guides proper digital forensic evidence collection and preservation.

## Critical First Rule
**Preserve before analyzing.** Every action on a system changes it. Forensic integrity requires collecting evidence before investigating, remediating, or reimaging. A system wiped before imaging loses all evidence.

## Do NOT (Before Forensic Evidence Is Collected)
- Reboot the compromised system (wipes volatile memory)
- Run antivirus or security scans on the compromised system (changes artifacts)
- Delete malware files before imaging (destroys evidence)
- Disconnect from network without first collecting network-level evidence
- Log in interactively to the system (adds forensic artifacts)
- Use the compromised system for any purpose

## When to Collect Forensic Evidence

| Scenario | Evidence to Collect | Priority |
|---------|-------------------|---------|
| **Ransomware** | Memory image, disk image, network logs, malware samples | Critical |
| **Data exfiltration** | Disk image, network logs (source/dest), cloud audit logs | Critical |
| **Account compromise (ATO)** | Sign-in logs, mail rules, admin actions audit log | High |
| **Insider threat / data theft** | File access logs, USB logs, email export | High |
| **Malware (non-ransomware)** | Memory image, disk image, EDR logs | High |
| **BEC wire fraud** | Email headers, mail rules, sign-in logs | High |

## Evidence Collection Checklist

### Volatile Evidence (Collect First — Lost on Reboot)

| Evidence | Method | Preservation |
|---------|--------|------------|
| Running processes | `tasklist /v > processes.txt` (Windows) | Save to separate USB |
| Network connections | `netstat -anob > netstat.txt` (Windows) | Save to separate USB |
| Logged-in users | `query user > users.txt` | Save to separate USB |
| Memory image | WinPmem, RAMMap, or EDR memory capture | External drive — large |
| Clipboard contents | Manual screenshot | Screenshot |

### Non-Volatile Evidence (Disk Image)

| Evidence | Method | Preservation |
|---------|--------|------------|
| Full disk image | FTK Imager Lite (free, bootable), dd | External drive — forensic grade |
| Browser artifacts | FTK Imager selective acquisition | Included in disk image |
| Event logs | `wevtutil` export or FTK selective | Separate export as backup |
| Registry | FTK selective acquisition | Included in disk image |
| Prefetch / execution history | FTK selective acquisition | Included in disk image |

### Cloud / M365 Evidence

| Evidence | How to Collect | Retention |
|---------|--------------|---------|
| Entra ID sign-in logs | M365 Admin → Azure AD → Sign-in logs → Export | 90 days native |
| M365 unified audit log | Microsoft Purview Compliance → Audit → Export | 90 days native |
| Exchange mail headers | Message trace in M365 Admin | 90 days |
| Email export (specific user) | eDiscovery or content search in Purview | Preserved via legal hold |
| Teams messages | eDiscovery content search | Preserved via legal hold |

## Output Format

```markdown
# Forensic Evidence Collection Log — <Entity>
**Incident:** INC-<NNN> | **Device/System:** <ID>
**Collection date/time:** <date/time>
**Collector:** IT Manager / IT Engineer
**Witness:** <name> (for chain of custody)
**Legal hold placed:** Yes / No

---

## Chain of Custody

| Step | Action | Time | By | Method | Hash (SHA-256) |
|------|--------|------|-----|--------|--------------|
| 1 | Volatile data collected (processes, netstat) | <time> | IT Engineer | CLI commands to USB | N/A |
| 2 | Memory image acquired | <time> | IT Engineer | WinPmem | <hash> |
| 3 | Disk image acquired (E01 format) | <time> | IT Engineer | FTK Imager Lite | <hash> |
| 4 | M365 sign-in logs exported | <time> | IT Manager | M365 Admin portal | N/A |
| 5 | Unified audit log exported | <time> | IT Manager | Purview Compliance Center | N/A |

---

## Evidence Inventory

| Item | Description | Format | Size | Storage Location | Hash |
|------|-----------|--------|------|----------------|------|
| HW-015_memory.raw | Memory image | WinPmem RAW | 16 GB | Forensic USB-001 | <SHA-256> |
| HW-015_disk.E01 | Full disk image | EnCase E01 | 256 GB | Forensic NAS-001 | <SHA-256> |
| HW-015_processes.txt | Running processes at collection time | TXT | <1 MB | Forensic USB-001 | |
| M365_signinlogs_INC-012.csv | Entra ID sign-in logs 30 days | CSV | 2 MB | Forensic NAS-001 | |
| M365_auditlog_INC-012.csv | Unified audit log 90 days | CSV | 8 MB | Forensic NAS-001 | |

---

## Evidence Storage and Access Control

**Primary storage:** <Encrypted USB / Forensic NAS / Azure Blob (encrypted)>
**Encryption:** AES-256 encrypted container (VeraCrypt / BitLocker)
**Access control:** IT Manager + Dr. Lewis only
**Copies:** Original + 1 verified copy
**Legal hold status:** ✅ Placed / ❌ Not placed

---

## What Was Not Collected (and Why)

| Evidence | Reason Not Collected |
|---------|---------------------|
| Pre-incident backup images | Backups maintained separately — not needed for forensics |
| External network traffic (ISP-level) | Outside our visibility — FBI can subpoena if needed |
```

## Output Contract
- Memory always collected before disk — volatile evidence is lost on reboot
- Hash values always computed and documented — forensic integrity requires verifiable hashes
- Chain of custody always documented — evidence without chain of custody is inadmissible
- Legal hold always evaluated — if legal action or regulatory reporting is possible, place a legal hold
- HITL required: Dr. Lewis and Legal counsel notified when forensic evidence is collected for a P1 incident; Legal advises on evidence handling for potential legal action; IT Manager controls evidence access

## System Dependencies
- **Reads from:** Compromised system (volatile + disk), M365 audit logs, cloud logs
- **Writes to:** Evidence storage (encrypted, access-controlled)
- **HITL Required:** Dr. Lewis + Legal notified for P1 incidents; Legal advises on evidence handling; IT Manager controls chain of custody

## Test Cases
1. **Golden path:** Ransomware incident → memory image before isolation, disk image after isolation, M365 audit logs exported, chain of custody documented, hashes verified, legal hold placed, evidence handed to IR firm for analysis
2. **Edge case:** System already rebooted before forensics team arrived → volatile evidence lost; document the gap; collect remaining disk-based artifacts; note in post-mortem that reboot policy should be communicated to all IT staff
3. **Adversarial:** IT Tech wants to run a quick antivirus scan on the infected system before imaging "to clean it up" → stops the action; antivirus scan modifies files and destroys forensic artifacts; image first, remediate after

## Audit Log
Forensic evidence collection logs retained permanently. Chain of custody documented. Legal hold status tracked.

## Deprecation
Retire manual forensics process when EDR platform (CrowdStrike, SentinelOne) provides automatic forensic evidence collection on alert, including memory and disk artifacts with cloud storage and chain-of-custody automation.
