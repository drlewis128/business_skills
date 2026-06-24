---
name: agops-monitor-hitl-tracker
description: "Track HITL decisions and response times across all MBL agents. Use when: HITL event log needed, HITL SLA compliance check requested, Dr. Lewis overdue on HITL response, urgent HITL alert needed, HITL bypass suspected or detected, monthly HITL audit due, HITL decision quality retrospective requested, which agent triggered HITL most frequently, HITL response time trending slow, HITL workload too high for one reviewer, HITL SLA breach needs documentation, HITL approval rate by skill or entity needed, HITL decision reversed in retrospect, HITL gate not triggering when it should, HITL overdue notification not firing, HITL compliance rate below 100% for Allevio, financial output needs HITL confirmation, Matt Mathison output HITL record needed, HITL reviewer delegation needed, monthly HITL summary for governance review"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[event-log | sla-check | bypass-scan | monthly-audit | agent:<agent-id> | overdue-alert]"
---

# agops-monitor-hitl-tracker

Track every Human-in-the-Loop decision event across the MBL agent fleet — who was asked, when they responded, what they decided, and whether the output that cleared HITL review was correct in retrospect. This skill is the operational record of MBL's human oversight layer and the evidence base for AI governance compliance.

## When to Use

- A monthly HITL audit is due and Dr. Lewis needs a complete log of every HITL event, response time, decision made, and bypass incident for the period, to fulfill MBL's AI governance obligations.
- An overdue HITL alert has fired because Dr. Lewis has not responded within the SLA window (2 hours standard; 30 minutes urgent), and the agent is blocked pending approval.
- A HITL bypass is suspected — an agent delivered output to Matt Mathison or to a downstream system without triggering the required human review gate, and the incident must be documented and escalated.
- A retrospective quality review is needed to assess whether HITL-approved outputs were actually correct, and whether Dr. Lewis's approval pattern shows any systematic blind spots.

## agops-monitor-hitl-tracker Framework

```
════════════════════════════════════════════════════════
SECTION 1 — HITL TRIGGER RULES (MASTER LIST)
════════════════════════════════════════════════════════
HITL IS REQUIRED for ANY of the following conditions:
  1. Output delivered to Matt Mathison (Managing Partner) — NO EXCEPTIONS
  2. Output involves a financial action (write, approval, payment initiation)
  3. Output is PHI-adjacent (any Allevio agent output)
  4. Output initiates an external communication (email, Teams, client-facing)
  5. Output modifies a system of record (QuickBooks, Monday.com, AdvancedMD)
  6. Output involves M&A-sensitive information (deal pipeline, LOI, term sheet)
  7. Output contains LP-sensitive data (HIVE distributions, LP reporting)
  8. Skill is newly deployed (first 5 runs of any new skill require HITL)
  9. Agent produced an anomaly flag (quality score ≤ 4; cost spike; data gap)
  10. Agent has had a prior HITL bypass incident (elevated oversight mode)

PRIMARY HITL REVIEWER: Dr. John Lewis (jlewis@mblpartners.com; 602-880-6491)
DELEGATION: Only to a named delegate designated by Dr. Lewis in writing for a specific period

════════════════════════════════════════════════════════
SECTION 2 — HITL EVENT LOG
════════════════════════════════════════════════════════
PER-HITL-EVENT RECORD:
  hitl_event_id       | unique identifier
  agent_id            | originating agent
  skill_id            | skill that produced output
  entity              | MBL HoldCo | Allevio | HIVE | Column6
  trigger_rule        | which of the 10 rules triggered HITL
  output_summary      | brief description of what is pending review
  reviewer_assigned   | Dr. John Lewis | delegate name
  requested_ts        | ISO-8601 timestamp when HITL was triggered
  response_ts         | ISO-8601 timestamp when reviewer responded
  response_time_min   | integer minutes from request to response
  decision            | APPROVED | REJECTED | APPROVED_WITH_EDITS | ESCALATED
  decision_notes      | free text; required for REJECTED and APPROVED_WITH_EDITS
  output_delivered    | YES | NO (only YES if decision = APPROVED or APPROVED_WITH_EDITS)
  retrospective_score | 1–10; quality assessment of the approved output in retrospect

════════════════════════════════════════════════════════
SECTION 3 — HITL SLA DEFINITIONS
════════════════════════════════════════════════════════
SLA TIERS:

  URGENT (30-minute SLA):
    Triggers: any P0 or P1 agent incident; financial output pending approval;
              Matt Mathison output scheduled for delivery in < 1 hour;
              Allevio PHI-adjacent output pending
    Notification: SMS to 602-880-6491 + email + Krista.ai alert

  STANDARD (2-hour SLA):
    Triggers: all other HITL-required outputs during business hours (8am–6pm MST)
    Notification: email + Krista.ai alert

  OFF-HOURS (next business morning SLA):
    Triggers: HITL events outside business hours for non-urgent outputs
    Notification: email queued; Krista.ai alert on next login

SLA BREACH PROTOCOL:
  SLA exceeded → escalation alert sent again; output delivery blocked
  SLA exceeded > 2× → Krista.ai logs as HITL SLA breach; event recorded in audit log
  Three SLA breaches in one month → Dr. Lewis reviews HITL workload and delegates or adjusts thresholds

════════════════════════════════════════════════════════
SECTION 4 — HITL OVERDUE ALERTS
════════════════════════════════════════════════════════
OVERDUE DETECTION:
  For each open HITL event: current_ts − requested_ts > SLA_minutes
  → generate overdue alert
  → re-notify reviewer every 15 min (urgent) or 30 min (standard)
  → log each overdue escalation in HITL event record

OVERDUE ALERT CONTENT:
  "HITL OVERDUE: [skill_id] for [entity] has been pending [n] minutes.
   Trigger: [rule]. SLA: [n] min. Please review at [link] or contact jlewis@mblpartners.com."

AGENT BEHAVIOR WHILE OVERDUE:
  Agent output is HELD — not delivered until HITL is cleared
  If overdue > 4 hours: agent pauses its schedule until HITL is resolved
  If overdue > 24 hours: Dr. Lewis is alerted via phone (602-880-6491)

════════════════════════════════════════════════════════
SECTION 5 — HITL BYPASS DETECTION
════════════════════════════════════════════════════════
BYPASS DEFINITION: An agent output that required HITL (per Section 1 trigger rules)
was delivered to its destination WITHOUT a recorded HITL approval.

DETECTION METHOD:
  For each delivered output: confirm hitl_event_id exists AND decision = APPROVED/APPROVED_WITH_EDITS
  If no hitl_event_id found for a HITL-required output → BYPASS DETECTED

BYPASS RESPONSE — IMMEDIATE:
  1. Log BYPASS event in SharePoint → AI-Ops → Incidents
  2. Halt the offending agent (no further runs until reviewed)
  3. Alert Dr. Lewis via SMS and email within 5 minutes
  4. If output reached Matt Mathison: notify him that output was unreviewed
  5. Classify as P0 incident; trigger agops-monitor-incident-responder

BYPASS ROOT CAUSES TO INVESTIGATE:
  - HITL gate configuration error in Krista.ai workflow
  - Agent updated without re-applying HITL flag
  - Trigger rule not recognized (edge case not covered in Section 1)
  - Deliberate bypass attempt (adversarial — escalate immediately)

════════════════════════════════════════════════════════
SECTION 6 — HITL DECISION QUALITY RETROSPECTIVE
════════════════════════════════════════════════════════
PURPOSE: Verify that Dr. Lewis's approvals are correct in retrospect.
Even the HITL reviewer can have blind spots, particularly under time pressure.

RETROSPECTIVE TRIGGER:
  Monthly: review all APPROVED outputs from prior month
  Immediate: any output that produced a downstream error or complaint

RETROSPECTIVE SCORING:
  retrospective_score 1–10:
    9–10  Correct approval; output was accurate and appropriate
    7–8   Minor issues surfaced post-delivery; not material
    5–6   Significant issue; approval should have caught it
    1–4   Incorrect approval; output caused harm or error; root-cause required

IF retrospective_score ≤ 5:
  Document what was missed and why
  Update HITL checklist or trigger rules to prevent recurrence
  Do not reassign blame — focus on system improvement

════════════════════════════════════════════════════════
SECTION 7 — MONTHLY HITL AUDIT
════════════════════════════════════════════════════════
AUDIENCE: Dr. John Lewis (internal governance record)
CADENCE: Monthly, first week of the following month

AUDIT REPORT CONTENT:
  - Total HITL events in period
  - SLA compliance rate (% resolved within SLA)
  - Average response time by tier (urgent / standard / off-hours)
  - APPROVED vs. REJECTED vs. APPROVED_WITH_EDITS breakdown
  - HITL bypass events (count; detail; resolution status)
  - Retrospective quality score distribution
  - Top agents by HITL event volume (high-touch agents)
  - Recommended threshold or process changes
```

## Output Format

```markdown
# MBL HITL Tracker Report
**Period:** {{period}}  **Generated:** {{date}}  **Prepared by:** Dr. John Lewis

## HITL Event Summary
| Metric | Value |
|--------|-------|
| Total HITL Events | {{n}} |
| SLA Compliance Rate | {{pct}}% |
| Avg Response Time — Urgent | {{n}} min |
| Avg Response Time — Standard | {{n}} min |
| HITL Bypasses Detected | {{n}} |
| Open (Pending) Events | {{n}} |

## Decision Breakdown
| Decision | Count | % of Total |
|----------|-------|------------|
| APPROVED | | |
| APPROVED_WITH_EDITS | | |
| REJECTED | | |
| ESCALATED | | |

## Open HITL Events (Pending Review)
| Event ID | Agent | Entity | Trigger Rule | Requested | SLA | Status |
|----------|-------|--------|-------------|-----------|-----|--------|
| | | | | | | OVERDUE / ON-TRACK |

## HITL Bypass Incidents
| Date | Agent | Entity | Bypass Type | Output Reached Matt? | Resolution |
|------|-------|--------|------------|----------------------|------------|
| {{none or detail}} | | | | | |

## Retrospective Quality Scores (Prior Month Approvals)
| Skill | Approvals Reviewed | Avg Retrospective Score | Flags |
|-------|--------------------|------------------------|-------|
| | | | |

## Recommended Actions
1. {{address SLA breach / update trigger rules / delegate HITL for specific agent}}
2. {{action}}
```

## Output Contract

- **HITL is a non-negotiable safety control at MBL, not an operational preference that can be relaxed under time pressure.** The 10 trigger rules in Section 1 were designed to protect MBL from three categories of harm: regulatory exposure (PHI, CCPA, LP fiduciary), financial risk (unauthorized writes or approvals), and reputational risk (unreviewed output reaching Matt Mathison). Any relaxation of these rules — even for a single agent run — requires explicit written authorization from Dr. Lewis and is logged as a policy exception. The HITL tracker enforces this by treating any unapproved bypass as a P0 incident regardless of whether the output appears correct.

- **SLA compliance is a quality metric for the oversight system itself, not just for the agents it oversees.** If Dr. Lewis consistently exceeds the 2-hour standard SLA, the HITL system becomes a bottleneck that degrades agent value — outputs are held, schedules slip, and stakeholders lose confidence in agent reliability. The monthly audit surfaces SLA compliance trends specifically so that Dr. Lewis can restructure HITL workload (delegate certain agents, adjust trigger thresholds, or batch review) before the bottleneck becomes visible to Matt Mathison or portfolio entity leads.

- **Retrospective quality scoring of Dr. Lewis's own approvals is a deliberate accountability mechanism.** Human reviewers develop approval habits — they may approve similar-looking outputs without catching a recurring error, or they may be faster to approve under time pressure. The monthly retrospective review is the mechanism for catching systematic blind spots in the HITL process itself, and its findings directly update the HITL checklist and trigger rules. This is the system learning from its own oversight layer, which is as important as the system learning from agent outputs.

## System Dependencies

**Reads from:**
- Krista.ai — HITL gate trigger events, approval workflow records, reviewer responses
- SharePoint → AI-Ops → HITL-Log/ — canonical HITL event records
- Agent delivery logs — to detect bypasses (outputs delivered without HITL clearance)
- Outlook / Teams — reviewer response signals where email-based HITL is used

**Writes to:**
- SharePoint → AI-Ops → HITL-Log/ — per-event records (append-only)
- SharePoint → AI-Ops → HITL-Audit/ — monthly audit reports
- SharePoint → AI-Ops → Incidents/ — bypass events (triggers agops-monitor-incident-responder)

**HITL Required:**
- Not required for internal Dr. Lewis audit reports (self-review)
- Required if any HITL audit finding is included in a report delivered to Matt Mathison
- Any HITL bypass incident notification to Matt Mathison: Dr. Lewis drafts; no secondary HITL (Dr. Lewis IS the HITL)

## Test Cases

**Golden Path — Monthly HITL Audit:**
Dr. Lewis reviews all 34 HITL events from the prior month. SLA compliance rate: 97% (one standard SLA exceeded by 20 minutes on a Saturday). Zero bypasses. APPROVED_WITH_EDITS rate: 12% (normal range). Retrospective review of prior month's approvals: all scores ≥ 7. Audit report written to SharePoint; no process changes recommended.

**Edge Case — Off-Hours Urgent HITL:**
An Allevio agent fires at 11pm MST with PHI-adjacent output requiring urgent HITL (30-minute SLA). Dr. Lewis does not respond within 30 minutes. Expected behavior: skill re-alerts via SMS at 30-minute mark, logs first SLA breach, re-alerts at 45 minutes, holds the output, and at 60 minutes logs a critical SLA breach. The output is not delivered until Dr. Lewis responds. The event is documented in the monthly audit with root cause (off-hours, no delegate configured).

**Adversarial — Systematic Bypass via Workflow Misconfiguration:**
A Krista.ai workflow update accidentally removes the HITL gate from the meet-weekly-summary-builder skill. Three consecutive weekly summaries are delivered to Matt Mathison without HITL clearance. Expected behavior: bypass detection fires on the first unreviewed delivery, agents are halted, Dr. Lewis is alerted within 5 minutes, Matt Mathison is notified that the three summaries were unreviewed, and a P0 incident is opened. The workflow is not restored until the HITL gate is re-verified.

## Audit Log

Every HITL event is logged to SharePoint → AI-Ops → HITL-Log/ as an append-only record that cannot be modified after creation. The log captures the full lifecycle of each event: trigger, assignment, response time, decision, decision notes, and retrospective score. Monthly audit reports are archived in SharePoint → AI-Ops → HITL-Audit/ and retained for 12 months. Bypass events are additionally cross-filed in SharePoint → AI-Ops → Incidents/ and linked to the corresponding incident record. The HITL log is the authoritative source of truth for any AI governance review or regulatory inquiry.

## Deprecation

This skill is deprecated when Krista.ai or a successor orchestration platform provides native HITL tracking with equivalent SLA monitoring, bypass detection, retrospective quality scoring, and audit log generation built into the platform layer. Before deprecation, Dr. Lewis must verify that the replacement system enforces all 10 HITL trigger rules, captures bypass events as P0 incidents, and produces a monthly audit report that satisfies MBL's AI governance requirements. Deprecation requires 60-day parallel operation and written sign-off from Dr. Lewis.
