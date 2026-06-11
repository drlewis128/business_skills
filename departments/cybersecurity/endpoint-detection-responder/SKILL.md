---
name: endpoint-detection-responder
description: "Manage endpoint detection and response (EDR) alerts and endpoint security. Use when the user says 'EDR', 'endpoint security', 'EDR alert', 'malware on an endpoint', 'endpoint detection', 'EDR tool', 'endpoint protection', 'malware detected', or 'virus on a computer'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <triage|remediate|deploy|audit>] [--device <device-id>]"
---

# Endpoint Detection Responder

Manage endpoint detection and response (EDR) alerts and endpoint security. Endpoints are the primary entry point for ransomware and malware — a user clicks, and the chain reaction begins. EDR is the detection and response layer that catches what perimeter controls miss. This skill manages EDR deployment, alert triage, and malware response.

## When to Use
- EDR alert requires triage and response
- Evaluating or deploying EDR tools
- Quarterly endpoint security posture review
- Before a pen test (verify EDR coverage and detection capability)
- After a malware incident — improve coverage

## EDR vs Antivirus

| Capability | Traditional AV | EDR |
|---------|-------------|-----|
| Known malware detection | ✅ | ✅ |
| Unknown/zero-day detection | ❌ | ✅ (behavior-based) |
| Ransomware detection | ❌ Slow | ✅ Early via behavior |
| Remote isolation | ❌ | ✅ |
| Threat hunting | ❌ | ✅ |
| Attack timeline reconstruction | ❌ | ✅ |
| Cloud-based management | Partial | ✅ |

**Minimum standard for MBL portfolio:** EDR on all managed endpoints. Traditional AV alone is not acceptable for cyber insurance or SOC 2.

## EDR Tools (Compatible with M365 / Azure)

| Tool | Integration | Cost Range | Best For |
|------|-----------|----------|---------|
| **Microsoft Defender for Endpoint** | Native M365 integration | Included in M365 E3/E5 | MBL entities already on M365 — lowest effort |
| **CrowdStrike Falcon** | API + M365 | $8-15/endpoint/month | Advanced threat hunting, best detection |
| **SentinelOne** | API + M365 | $6-12/endpoint/month | Strong automation, good for lean IT teams |

**MBL recommendation:** Microsoft Defender for Endpoint if already on M365 E3/E5 — zero marginal cost, native integration. Upgrade to CrowdStrike if threat hunting capability is required.

## Output Format

```markdown
# Endpoint Security Status — <Entity>
**Date:** <date> | **EDR tool:** Microsoft Defender for Endpoint / CrowdStrike / SentinelOne
**Total managed endpoints:** <N> | **EDR coverage:** <N>% (<N>/<N> devices)

---

## Deployment Status

| Device Type | Total | Enrolled in EDR | Coverage | Unmanaged |
|-----------|-------|----------------|---------|---------|
| Windows laptops | <N> | <N> | 95% | HW-003 (field device) |
| macOS laptops | <N> | <N> | 100% | |
| Windows servers | <N> | <N> | 100% | |
| Mobile devices | <N> | N/A (MDM only) | N/A | |

**Coverage gaps:** <list unmanaged devices and reason>

---

## Alert Summary (This Period)

| Severity | Alerts | True Positive | False Positive | Remediated |
|---------|--------|-------------|--------------|---------|
| Critical | 1 | 1 | 0 | ✅ |
| High | 4 | 2 | 2 | ✅ |
| Medium | 12 | 5 | 7 | ✅ |
| Low | 28 | 8 | 20 | ✅ |
| **Total** | **45** | **16** | **29** | |

**False positive rate:** 64% — consider tuning rules to reduce noise

---

## Active Threats / Incidents

| Device | Alert | Severity | Status | Action Taken |
|--------|-------|---------|--------|------------|
| HW-015 (user laptop) | Suspected ransomware precursor | Critical | ✅ Isolated | Isolated via EDR; IT Engineer investigating |
| HW-022 (exec laptop) | Suspicious PowerShell execution | High | ✅ Contained | Quarantined file; AV scan clean; watching |

---

## EDR Coverage Audit

| Endpoint | EDR Enrolled | Policy Applied | Last Seen | Action |
|---------|------------|--------------|---------|--------|
| HW-001 | ✅ | ✅ | 2 hours ago | None |
| HW-003 | ❌ | ❌ | 8 days ago | Field device — enroll on return |
| SRV-001 | ✅ | ✅ | 1 hour ago | None |
| SRV-002 | ✅ | ✅ | 15 min ago | None |

---

## Malware Response (If Active Incident)

**Device:** <device ID>
**Alert:** <EDR alert name>

| Phase | Action | Done? |
|-------|--------|-------|
| 1. Isolate | Isolate device via EDR remote isolation | [ ] |
| 2. Preserve | Take memory snapshot or forensic image if critical | [ ] |
| 3. Investigate | Review attack timeline in EDR console | [ ] |
| 4. Remediate | Remove malware, close entry point | [ ] |
| 5. Restore | Verify clean, restore device to production | [ ] |
| 6. Escalate | If ransomware or data exfiltration: escalate to INC | [ ] |
```

## Output Contract
- EDR coverage gaps always flagged and assigned — an unprotected endpoint is a liability
- Critical alerts always result in device isolation pending investigation — no exceptions
- False positive rate tracked — high false positive rates cause alert fatigue, which causes real threats to be missed
- Remote isolation authority: IT Tech has authority to isolate without waiting for approval when a Critical alert fires
- HITL required: IT Manager for Critical alerts; Dr. Lewis for P1 incident escalations; isolation authority pre-delegated to IT Tech for speed

## System Dependencies
- **Reads from:** EDR console (Microsoft Defender for Endpoint, CrowdStrike, or SentinelOne)
- **Writes to:** Remote device isolation, quarantine actions — pre-authorized for Critical alerts
- **HITL Required:** IT Manager for Critical/P1 escalations; Dr. Lewis for P1 incidents; isolation is pre-authorized for Critical alerts to enable fast response

## Test Cases
1. **Golden path:** EDR detects ransomware precursor behavior on HW-015 → IT Tech isolates via EDR immediately, IT Manager notified, forensic timeline pulled, threat removed, device reimaged, returned to user next day, incident documented
2. **Edge case:** EDR alert on a device that belongs to Matt Mathison (exec) → follow normal process (isolate if critical, investigate); no special treatment for exec devices that could allow malware to spread; brief Matt Mathison on the situation
3. **Adversarial:** User complains that EDR is "slowing down their computer" and asks to be excluded → EDR stays; performance impact is a configuration issue to be tuned, not a reason to remove protection; works with EDR vendor on performance optimization

## Audit Log
EDR alerts logged by device, date, severity, and disposition. Malware response timelines documented. Coverage gaps tracked and remediated.

## Deprecation
Retire manual EDR management when a SOAR platform automates triage, isolation, and response workflows with playbook execution.
