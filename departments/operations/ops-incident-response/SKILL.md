---
name: ops-incident-response
description: "Respond to an operational incident. Use when the user says 'incident', 'outage', 'something is down', 'system failure', 'operational crisis', 'incident response', 'emergency situation', 'production issue', 'service disruption', 'critical failure', 'incident handler', 'what do we do right now', 'business is down', 'critical issue', 'escalation', or 'something went wrong'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--severity <P1|P2|P3>] [--type <system|people|facility|vendor|data>]"
---

# Ops Incident Response

Run structured operational incident response at MBL portfolio companies — providing a clear framework for the first 24 hours of an operational crisis. Incidents that are managed well (fast detection, clear roles, structured communication, documented response) cause less damage and recover faster than incidents managed by instinct and chaos. The goal of incident response is to stop the bleeding first, understand the cause second, and fix it permanently third — in that order.

## When to Use
- A system, service, or operation is actively down or degraded
- A data breach or security incident is suspected or confirmed
- A key person is suddenly unavailable and business operations are at risk
- A vendor has failed and immediate response is needed
- Any situation where Matt Mathison might ask "what are we doing about this right now?"

## Incident Response Framework

```
Incident severity levels:
  P1 — Critical: Business-stopping; revenue impact >$1K/hour or compliance breach ongoing
    Examples: billing system down at Allevio; well operations halted at HIVE; data breach active
    Response: Immediate — Dr. Lewis takes command within 15 minutes; Matt Mathison notified within 30 minutes
    
  P2 — High: Significant degradation; workaround possible but painful
    Examples: single system slow/partial; one department cannot work; key person out without backup
    Response: Dr. Lewis engaged within 1 hour; Matt Mathison notified if >4 hours unresolved
    
  P3 — Medium: Degraded but workable; clear path to resolution
    Examples: non-critical tool down; supply/facilities issue without safety implication
    Response: Assigned to appropriate owner; resolved within 48 hours; Dr. Lewis aware

Response structure (ICS-lite for portfolio scale):
  Incident Commander: Dr. Lewis (or designated if Dr. Lewis unavailable)
  Technical Lead: Whoever owns the affected system
  Communications Lead: CEO/COO for internal; Dr. Lewis for Matt Mathison
  Stakeholder communications: Patients/customers → CEO decides timing; internal → within 1 hour
  
The 5 incident phases:
  1. Detect and declare: Recognize an incident, set severity, activate response
  2. Contain: Stop the damage from getting worse; isolate if needed
  3. Investigate: Understand what happened and why
  4. Restore: Get back to normal operations
  5. Learn: Document, do the post-mortem (ops-project-post-mortem), prevent recurrence
```

## Output Format

```markdown
# Incident Record — <Incident Name/ID>
**Company:** <Entity> | **Date/time detected:** [Date, Time, Timezone]
**Severity:** P1 / P2 / P3 | **Type:** [System / People / Facility / Vendor / Data]
**Incident Commander:** Dr. John Lewis | **Status:** 🔴 Active / 🟡 Contained / ✅ Resolved
**Matt Mathison notified:** [Yes — [Time] / No / Pending]

---

## Incident Summary

**What happened:** [Plain language — what is broken, what is the impact]
**When it started:** [Exact time or best estimate]
**Who is affected:** [Which employees, customers/patients, systems, locations]
**Revenue/compliance impact:** $[X]/hour estimate / HIPAA breach suspected: Yes / No

---

## Phase 1: Detect and Declare

**Detected by:** [Name / System alert / Customer complaint]
**Detection method:** [Monitoring alert / User report / Vendor notification]
**Time from start to detection:** [Estimated N minutes]
**Severity assessment rationale:** [Why this is P1/P2/P3 — specific]
**Incident Commander declared:** Dr. John Lewis at [Time]

---

## Phase 2: Contain

**Immediate containment actions:**
| Time | Action | Owner | Result |
|------|--------|-------|--------|
| [HH:MM] | [Action taken to limit damage] | [Owner] | [Did it work?] |

**Is damage still spreading?** [Yes — additional containment needed / No — contained]
**HIPAA incident status (Allevio):** [PHI potentially exposed — report to Privacy Officer / No PHI involved]

---

## Phase 3: Investigate

**Root cause hypothesis:** [Best current understanding of why this happened]
**Investigation actions:**
| Time | Finding | Source |
|------|---------|--------|
| [HH:MM] | [What was found] | [Log / vendor / test] |

**Confirmed root cause:** [Confirmed when available — or "Under investigation as of [Time]"]

---

## Phase 4: Restore

**Restoration path:** [Steps to return to normal operations]
| Step | Owner | Status | Time |
|------|-------|--------|------|
| [Step 1] | [Owner] | ✅ / 🔄 / 🔵 | [Time] |

**Services restored:** [Full / Partial — what remains impacted]
**Time to restore:** [From incident start to full restoration]

---

## Communication Log

| Time | Audience | Message | Channel | Sent by |
|------|---------|---------|---------|--------|
| [HH:MM] | Matt Mathison | [P1 notification — brief, factual] | [Text/Call] | Dr. Lewis |
| [HH:MM] | [Staff] | [Status update] | [Teams/Email] | [CEO] |
| [HH:MM] | [Patients/Customers] | [If applicable] | [Email/Phone] | [CEO] |

---

## Resolution Summary

**Incident resolved:** [Date, Time] | **Total duration:** [N hours]
**Root cause:** [Confirmed cause]
**Permanent fix:** [What was done to prevent recurrence — or "Post-mortem scheduled: [Date]"]
**Post-mortem required:** [Yes — P1/P2 incidents always / No — P3]

**Matt Mathison resolution brief:**
[Incident at Company] resolved at [time] after [duration]. [Root cause in one sentence]. [Permanent fix in one sentence / Post-mortem scheduled for [date]].
```

## Output Contract
- Severity is declared immediately and drives the response — the first 5 minutes of an incident are about severity classification, not investigation; the severity level determines who gets called, how fast, and what response resources are activated; a P1 that is treated as a P3 costs hours of unnecessary downtime; when in doubt, declare higher and de-escalate if warranted
- Communication is proactive, not reactive — Matt Mathison is notified on P1 within 30 minutes, not when someone thinks there's something worth saying; the message is short and factual: "We have a P1 incident at [Company]. [What's down]. [Immediate impact]. [What we're doing]. I'll update you in 1 hour." That's enough; the goal is no surprises and timely information, not a polished report
- HIPAA breach protocol for Allevio is separate and mandatory — if PHI is potentially involved in a system incident, the HIPAA breach assessment process starts immediately; the Privacy Officer (or Dr. Lewis in their absence) must be notified; the 60-day breach notification clock starts at discovery; this is not optional; it runs in parallel to the technical response, not after it
- Post-mortems are mandatory for P1 and P2 incidents — the incident record captures what happened; the post-mortem (ops-project-post-mortem) captures why it happened and what changes permanently; P1 post-mortem within 1 week; P2 post-mortem within 2 weeks; P3 is optional but recommended if the incident revealed a gap
- HITL required: Dr. Lewis is Incident Commander for all P1 and P2 incidents; Matt Mathison notified for P1 within 30 minutes and for P2 if unresolved after 4 hours; CEO communicates to customers/patients on Dr. Lewis/Matt Mathison approval; HIPAA breach communications require Privacy Officer and legal counsel involvement

## System Dependencies
- **Reads from:** System monitoring alerts, vendor status pages, staff reports, BCP documentation (ops-business-continuity-planner)
- **Writes to:** Incident record (SharePoint/Ops/<Company>/Incidents/); communication log; HIPAA breach record (Allevio — if applicable); post-mortem trigger (ops-project-post-mortem)
- **HITL Required:** Dr. Lewis declares and commands; Matt Mathison notified P1 (30 min) and P2 (4 hrs); CEO approves customer communications; HIPAA breach: Privacy Officer + legal mandatory

## Test Cases
1. **Golden path:** AdvancedMD outage at Allevio — billing staff cannot submit claims (P1) → Detected at 9:15 AM; Dr. Lewis declares P1 at 9:17 AM; Matt Mathison notified at 9:32 AM (text: brief, factual); Containment: billing staff alerted and moved to paper backup process; Investigation: AdvancedMD status page confirms regional outage — vendor-side, not Allevio; Restore: AdvancedMD restored at 11:45 AM; paper claims queued for electronic submission; total downtime: 2.5 hours; PHI not exposed (system was read-unavailable, not breached); Matt Mathison resolution brief at 12:00 PM; post-mortem scheduled for next week: finding: no real-time monitoring for AdvancedMD status — add status page to monitoring dashboard
2. **Edge case:** A HIPAA breach is suspected — someone emailed patient records to the wrong address → P1 incident immediately; HIPAA breach assessment starts at same time as incident response; Privacy Officer notified within the hour; legal counsel on call; document: what PHI was exposed, to whom, how many patients, when; contain: confirm if email was opened (request read receipt or ask recipient directly); 60-day breach notification clock starts now; state AG and HHS notification may be required depending on scope; Dr. Lewis does not handle HIPAA breach communications alone — attorney in the loop from minute one
3. **Adversarial:** "It resolved itself — do we really need to document this?" → Yes — especially if it "resolved itself"; an incident that resolves without a known cause is a recurring incident waiting to happen; 15 minutes of documentation now prevents hours of response later; also, if the incident involved PHI (even briefly), the documentation is required by HIPAA regardless of how it resolved; the post-mortem is not about blame — it's about building an institutional memory of what went wrong and what changed

## Audit Log
All incident records retained by company and date. Communication logs retained. HIPAA breach records retained permanently (Allevio). Post-mortem outcomes retained. Incident trends reviewed quarterly (are the same incidents recurring?).

## Deprecation
Retire when portfolio companies have incident management systems (PagerDuty, Opsgenie, or similar) with automated detection and escalation, and when company teams can run incident response independently with Dr. Lewis receiving post-incident briefs rather than commanding the response.
