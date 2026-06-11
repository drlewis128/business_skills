---
name: incident-post-mortem-writer
description: "Write a post-incident review (post-mortem) after a security or operational incident. Use when the user says 'post-mortem', 'post-incident review', 'incident review', 'lessons learned', 'what went wrong', 'root cause analysis', 'after action review', 'PIR', or 'write up the incident'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<incident-id-or-description> [--entity <name>] [--type <security|operational>] [--audience <internal|executive>]"
---

# Incident Post-Mortem Writer

Write a post-incident review (post-mortem) after a security or operational incident. Post-mortems are not about blame — they're about learning and preventing recurrence. A well-written post-mortem captures the accurate timeline, identifies root causes (not just symptoms), documents what worked in the response, and produces specific action items that prevent the next incident. This skill produces post-mortems for security incidents, system outages, and process failures.

## When to Use
- After any P1 or P2 security incident
- After a system outage or data loss event
- After a failed audit or compliance failure
- After a process failure that caused significant impact
- 3-5 business days after incident closure (while memory is fresh)

## Post-Mortem Principles

```
1. Blameless: Focus on systems and processes, not individual blame
2. Accurate: The timeline must be factual — no whitewashing
3. Causal: Find root causes, not just symptoms
4. Actionable: Every finding must produce a specific, owned, dated action
5. Timely: Write within 5 days of closure — memory degrades
6. Shared: Post-mortems shared appropriately build organizational learning
```

## Output Format

```markdown
# Post-Incident Review — INC-<NNN>
**Incident type:** Security / Operational / Process
**Entity:** <name> | **Severity:** P1 / P2
**Incident start:** <date/time> | **Incident closed:** <date/time>
**Total duration:** <N hours/days>
**Author:** Dr. John Lewis / IT Manager
**Status:** DRAFT — UNDER REVIEW / FINAL

CONFIDENTIAL — Distribution: Dr. Lewis, IT Manager, Matt Mathison (exec summary), [others as needed]

---

## Executive Summary (Non-Technical)

**What happened:**
<2-3 sentences. What the incident was, what data or systems were affected, and what the impact was — no jargon.>

**Impact:**
- Business operations: <affected / unaffected / partially affected>
- Data at risk: <types, quantity if known>
- Duration of impact: <N hours>
- Customers/partners affected: <Yes/No — and how>

**Root cause (one sentence):**
<The root cause in plain language — what condition enabled this incident to occur?>

**Key actions taken:**
<3-5 bullet points — what the team did to respond and contain>

**What changes as a result:**
<2-3 bullet points — the most important things changing>

---

## Full Timeline

| Date/Time | Event | Action Taken | By Whom |
|---------|-------|------------|---------|
| <date/time> | Anomalous activity detected by EDR on SRV-001 | EDR alert reviewed — confirmed malicious | IT Tech |
| <date/time> | Incident declared — P1 | IT Manager activated response team | IT Manager |
| <date/time> | Affected systems isolated | EDR remote isolation executed | IT Tech |
| <date/time> | IT Manager + Dr. Lewis notified | Response team standing by | IT Manager |
| <date/time> | Forensic image taken | Memory and disk image captured before remediation | IT Engineer |
| <date/time> | Threat eradicated — entry point identified | Malicious scheduled task removed, entry point patched | IT Engineer |
| <date/time> | Systems verified clean | EDR scan clean, network traffic normal | IT Tech |
| <date/time> | Systems returned to production | Monitoring enhanced | IT Manager |
| <date/time> | Incident closed | | IT Manager |

---

## Root Cause Analysis

### Symptom
<What the incident looked like on the surface>

### Immediate Cause
<The direct technical cause — e.g., "An unpatched vulnerability in [system] was exploited">

### Contributing Factors
1. <Factor 1 — e.g., "CVE-2024-XXXX had been open for 18 days past the 7-day SLA">
2. <Factor 2 — e.g., "EDR alert was in the queue but not triaged for 4 hours due to alert volume">
3. <Factor 3 — e.g., "No network segmentation allowed lateral movement to adjacent systems">

### Root Cause
<The systemic condition that allowed this to happen — e.g., "Vulnerability remediation SLA was tracked but not enforced, allowing a 7-day SLA to stretch to 18 days without escalation">

---

## What Went Well

| Item | Impact |
|------|--------|
| EDR detected the intrusion 2 hours into the attack | Prevented ransomware deployment |
| IT Tech isolated the system within 15 minutes of detection | Limited lateral movement to SRV-001 only |
| Dr. Lewis notified within 20 minutes | Executive visibility enabled rapid decision-making |
| Forensic image taken before remediation | Preserved evidence for investigation |

---

## What Went Wrong

| Item | Impact | Root Cause |
|------|--------|-----------|
| Vulnerability was 18 days open (SLA = 7 days) | Provided the exploitable window | Patch tracking without enforcement |
| EDR alert sat in queue 4 hours | 4-hour window of undetected activity | Alert volume + no triage SLA |
| Legal notified 5 hours after declaration (SLA = 2 hours) | Delayed breach assessment | Notification checklist not followed |

---

## Action Items

| Action | Owner | Due | Priority | Status |
|--------|-------|-----|---------|--------|
| Implement escalation alert for vulnerabilities past SLA | IT Manager | <date +14d> | High | Open |
| Set EDR triage SLA — alerts reviewed within 1 hour | IT Manager | <date +7d> | High | Open |
| Add legal notification to incident checklist (2-hour SLA) | IT Manager | <date +3d> | High | Closed ✅ |
| Implement network segmentation to isolate server zones | IT Engineer | <date +60d> | Medium | Open |

---

## Metrics

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Time to detect (MTTD) | 2 hours | <1 hour | 🔴 Exceeded |
| Time to contain (MTTC) | 15 minutes from detection | <30 min | ✅ |
| Time to eradicate | 4 hours | <8 hours | ✅ |
| Time to notify legal | 5 hours from declaration | <2 hours | 🔴 Exceeded |
| Data at risk | None confirmed exfiltrated | Zero | ✅ |
```

## Output Contract
- Timeline always complete and accurate — whitewashing incidents prevents learning and violates compliance
- Root cause analysis never stops at immediate cause — find the systemic issue
- Action items always specific, owned, and dated — "we should improve X" is not an action item
- What went well always included — post-mortems that only focus on failures erode team confidence
- HITL required: Dr. Lewis reviews and approves all post-mortems; Legal reviews any post-mortem for a P1 that may involve breach notification; Matt Mathison receives executive summary for P1 incidents

## System Dependencies
- **Reads from:** Incident log, timeline documentation, EDR/SIEM data, response team notes (provided)
- **Writes to:** Post-mortem document (HITL review before distribution)
- **HITL Required:** Dr. Lewis approves before distribution; Legal reviews P1 security incidents; Matt Mathison receives executive summary

## Test Cases
1. **Golden path:** Ransomware near-miss → P1 incident, contained in 15 minutes, post-mortem completed day 3 → timeline: unpatched CVE exploited, EDR detected early, isolated before encryption; root cause: patch SLA overruns not escalated; action items: SLA enforcement automation, network segmentation, legal notification checklist fix
2. **Edge case:** Post-mortem 3 weeks after incident (memory gaps) → document what's known, flag gaps, note that timeline reconstruction relied on log data; emphasize value of writing post-mortems within 5 days of closure
3. **Adversarial:** Team doesn't want to write a post-mortem because it "calls out what went wrong" and they're worried about blame → blameless post-mortem process explained; focus on process and system failures, not individual blame; post-mortem is also a compliance document for cyber insurance and SOC 2

## Audit Log
All post-mortems retained permanently. Action item completion tracked. P1 post-mortems shared with cyber insurance carrier on request.

## Deprecation
Keep permanently — post-mortems should always be written for significant incidents. Upgrade by integrating with an incident management platform (PagerDuty, Jira Service Management) for automated timeline construction.
