---
name: ransomware-response-playbook
description: "Execute the ransomware incident response playbook. Use when the user says 'ransomware', 'files encrypted', 'ransom note', 'ransomware attack', 'ransomware response', 'what do we do if ransomware hits', 'ransomware playbook', or 'locked out of files'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--stage <detect|isolate|assess|recover|notify>] [--severity <contained|spreading|unknown>]"
---

# Ransomware Response Playbook

Execute the ransomware incident response playbook. Ransomware is the most destructive and disruptive cyber incident a small-to-mid-size entity can face. The first 30 minutes determine whether it's a bad day or a catastrophic event. This playbook provides the exact sequence of actions required.

## CRITICAL FIRST RULE
**ISOLATE BEFORE INVESTIGATING.** Every minute of network connectivity allows ransomware to spread to additional systems. Isolation is more important than understanding what happened. Disconnect first, investigate second.

## Do NOT:
- Pay ransom without Dr. Lewis and legal counsel authorization
- Reimage systems before taking forensic evidence
- Announce the incident on company communication channels until Dr. Lewis approves the communication
- Connect any new system to the network until the environment is clean
- Delete any files, logs, or the ransom note (evidence)

## Response Phases

```
Phase 1: Detect and Verify (0-5 minutes)
Phase 2: Isolate (5-15 minutes) — MOST CRITICAL
Phase 3: Assess Scope (15-60 minutes)
Phase 4: Notify (30-60 minutes, parallel with assessment)
Phase 5: Eradicate and Recover (hours to days)
Phase 6: Post-Incident Review (within 5 days)
```

## Output Format

```markdown
# Ransomware Response — <Entity>
**Incident ID:** INC-<NNN> | **Detection time:** <time>
**Incident Commander:** IT Manager | **Exec Sponsor:** Dr. John Lewis
**Status:** Active — Phase <N> / Contained / Recovery / Closed

---

## Phase 1: Detect and Verify (Target: < 5 minutes)

**Detection source:** EDR alert / User report / Monitoring alert / Discovery
**Initial indicators:**
- Files encrypted (extension: <.extension>)
- Ransom note found: Yes / No (location: <path>)
- Systems reporting encrypted: <list>

**Verification:** ✅ Confirmed ransomware / ❌ False positive — stand down

---

## Phase 2: Isolate (Target: < 15 minutes from detection)

**PRIORITY ORDER — execute in this sequence:**

| Step | Action | Method | Done? | Time |
|------|--------|--------|-------|------|
| 1 | Disconnect infected systems from network | Unplug ethernet / disable WiFi / EDR isolate | [ ] | |
| 2 | Isolate backup systems (protect backups) | Disconnect backup server from network | [ ] | |
| 3 | Disable VPN access (prevent remote spread) | Firewall rule / VPN gateway | [ ] | |
| 4 | Disable domain admin accounts (prevent lateral movement) | Active Directory / Entra ID | [ ] | |
| 5 | Take snapshot of cloud resources (before any recovery attempts) | AWS/Azure console | [ ] | |

**Isolation authority:** IT Tech has authority to isolate without waiting for approval.
**Call IT Manager simultaneously — do not wait for approval to isolate.**

---

## Phase 3: Assess Scope (Target: < 60 minutes)

| Assessment Question | Answer |
|--------------------|--------|
| How many systems are confirmed encrypted? | |
| What is the likely entry point? (phishing, RDP, vulnerability?) | |
| Is the ransomware still running on any connected system? | |
| Is PHI (Allevio) potentially exposed? | |
| Are backups intact and offline? | |
| What is the last clean backup date? | |

---

## Phase 4: Notifications (Run parallel with Phase 3)

| Party | Required | SLA | Contact Method | Done? | Time |
|-------|---------|-----|---------------|-------|------|
| IT Manager | Yes | Immediate | Phone | [ ] | |
| Dr. Lewis | Yes (P1) | < 15 minutes | Phone | [ ] | |
| Matt Mathison | Yes (P1) | < 1 hour | Phone | [ ] | |
| Legal counsel | Yes | < 2 hours | Phone | [ ] | |
| Cyber insurance carrier | Yes | < 24 hours | Phone (claims line) | [ ] | |
| Law enforcement (FBI IC3) | Recommended | < 24 hours | ic3.gov or FBI field office | [ ] | |
| HHS OCR (if PHI involved) | Required | 60 days | OCR breach portal | [ ] | |

**DO NOT contact IT vendor, cloud provider, or any external party before legal counsel is notified.**

---

## Ransom Payment Decision Framework

**Default position: Do not pay.**

| Factor | Consideration |
|--------|-------------|
| Backup integrity | If backups are clean and complete, payment is almost never warranted |
| Data exfiltration | If data was exfiltrated (double extortion), payment doesn't prevent exposure |
| Regulatory reporting | Payment does not eliminate breach notification obligations |
| FBI guidance | FBI recommends against payment; IC3 should be notified |

**Payment decision requires:** Dr. Lewis + Legal counsel + Matt Mathison. No one else has payment authorization authority.

---

## Phase 5: Eradicate and Recover

**Recovery order (highest business priority first):**

| System | Priority | Recovery Method | Target Time |
|--------|---------|----------------|------------|
| Financial system (QuickBooks) | 1 | Restore from last clean backup | <N> hours |
| Email (Microsoft 365) | 2 | Cloud recovery (MS handles) | Per MS SLA |
| CRM (GoHighLevel) | 3 | Restore from backup or cloud recovery | <N> hours |
| [Other systems] | 4+ | | |

**Before reconnecting any system:**
- [ ] Verified clean (EDR scan clean)
- [ ] OS patched to current
- [ ] Entry point identified and closed
- [ ] Enhanced monitoring enabled

---

## Post-Incident Communication (Draft — Dr. Lewis approves)

**Internal:** "We experienced a cybersecurity incident on [date] that affected [systems]. Our IT team responded immediately. [Current status]. We are working to restore normal operations as quickly as possible. If you notice anything unusual, contact IT."

**External (if needed):** Prepared by Legal + Dr. Lewis. Do not communicate publicly without Legal approval.
```

## Output Contract
- Isolation is always Phase 2 — no exceptions, no delay, no waiting for approval
- Ransom payment requires Dr. Lewis + Legal + Matt Mathison — no one else can authorize
- PHI involvement always assessed in Phase 3 — HIPAA notification clock starts at discovery
- Legal notified before any external communication or public statement
- HITL required: Dr. Lewis is incident exec sponsor — must be notified within 15 minutes of P1 declaration; all external communications require Legal + Dr. Lewis approval

## System Dependencies
- **Reads from:** EDR console, backup system status, cloud snapshots (provided)
- **Writes to:** Incident log (IT ticketing)
- **HITL Required:** Dr. Lewis authorizes recovery from backup (production decisions); Legal directs all breach notification; Matt Mathison briefed on business impact; ransom payment requires Dr. Lewis + Legal + Matt Mathison

## Test Cases
1. **Golden path:** Ransomware detected on SRV-001 at 2 AM → IT on-call isolates within 8 minutes, IT Manager called at 2:08 AM, Dr. Lewis at 2:12 AM, legal at 3 AM, FBI IC3 report filed, backups verified clean at 2:30 AM, recovery initiated, clean by 8 AM, staff notified before business hours
2. **Edge case:** Ransomware spreading while team is debating containment → immediate isolation authority exercised by whoever is on-site — disconnecting is always correct even if it turns out to be a false positive
3. **Adversarial:** Attacker claims to have exfiltrated 100GB of data and threatens to publish — ransom demand $200K → consults Legal immediately, contacts FBI IC3, does NOT communicate with attackers without Legal present, evaluates data classification (what was potentially taken), does NOT pay without Dr. Lewis + Legal + Matt Mathison alignment

## Audit Log
Ransomware response playbook executions retained permanently. Timeline, decisions, notifications, and outcomes documented for insurance and regulatory purposes.

## Deprecation
Keep and update annually. Upgrade by integrating with SOAR platform for automated isolation and notification workflows.
