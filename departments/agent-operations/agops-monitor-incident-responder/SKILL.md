---
name: agops-monitor-incident-responder
description: "Respond to agent incidents and failures across MBL Partners. Use when: agent incident detected, PHI in agent output, unauthorized financial write by agent, agent producing incorrect output at scale, HITL bypass detected, cost runaway in agent, agent offline or unresponsive, P0 incident declared, P1 incident response needed, P2 incident triage needed, Matt Mathison received unreviewed output, agent incident post-mortem needed, Allevio PHI exposure from agent, HIVE LP data in wrong output, Column6 CCPA violation by agent, incident root cause analysis requested, agent halted and needs restart procedure, incident log needs updating, incident prevention measure needed, prior incident recurrence detected"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[P0 | P1 | P2 | incident-id:<id> | post-mortem | entity:<name> | type:<incident-type>]"
---

# agops-monitor-incident-responder

Execute structured incident response when an MBL agent fails, produces harmful output, bypasses required controls, or operates outside its authorized boundaries. This skill is the operational playbook for containing agent incidents, notifying the right people at the right time, and producing the root-cause record that prevents recurrence.

## When to Use

- A P0 or P1 incident has been declared — an agent has delivered PHI to an unauthorized recipient, initiated an unauthorized financial write, bypassed HITL, or experienced a cost runaway — and structured response steps must be executed immediately.
- An agent is offline or producing systematically incorrect output at scale, and Dr. Lewis needs a triage protocol to determine severity, contain the damage, and decide whether to halt or continue with modified parameters.
- A post-incident review is needed after a resolved incident to produce the root-cause analysis, fix documentation, and prevention plan required for MBL's incident log in SharePoint → AI-Ops → Incidents.
- A prior incident has recurred — the same agent, same failure mode, same bypass pattern — indicating that the original fix was insufficient and escalation is warranted.

## agops-monitor-incident-responder Framework

```
════════════════════════════════════════════════════════
SECTION 1 — INCIDENT TYPE TAXONOMY
════════════════════════════════════════════════════════
TYPE A — PHI EXPOSURE:
  An Allevio agent output contains Protected Health Information delivered
  to an unauthorized recipient or stored without required encryption/access controls.
  Default severity: P0

TYPE B — UNAUTHORIZED FINANCIAL WRITE:
  An agent initiated a financial action (payment, approval, record modification
  in QuickBooks or Bill.com) without required HITL clearance.
  Default severity: P0

TYPE C — INCORRECT OUTPUT AT SCALE:
  An agent has produced factually incorrect, hallucinated, or structurally broken
  output across 3+ consecutive runs, and the output was delivered to consumers.
  Default severity: P1 (P0 if output reached Matt Mathison)

TYPE D — HITL BYPASS:
  An output requiring human review was delivered without HITL clearance.
  Default severity: P0 (see agops-monitor-hitl-tracker for bypass detection)

TYPE E — COST RUNAWAY:
  An agent's cost_per_run exceeds 5× its 30-day rolling average, or fleet
  cost for the day exceeds daily_budget × 2, indicating a loop, infinite retry,
  or context window explosion.
  Default severity: P1

TYPE F — AGENT OFFLINE:
  A scheduled agent has not run in > 2× its expected interval and cannot
  be reached or restarted via Krista.ai controls.
  Default severity: P2 (P1 if agent is business-critical)

TYPE G — DATA BOUNDARY VIOLATION:
  Agent output contains data from the wrong entity — e.g., HIVE LP data
  appearing in a Column6 output, or MBL HoldCo M&A data in an Allevio report.
  Default severity: P1

TYPE H — RECURRENCE:
  Any prior incident type reoccurring after a fix was applied.
  Severity: escalate one level from original (P2 → P1; P1 → P0)

════════════════════════════════════════════════════════
SECTION 2 — SEVERITY DEFINITIONS
════════════════════════════════════════════════════════
P0 — CRITICAL (immediate response; no delay acceptable):
  Criteria: regulatory exposure (PHI, LP fiduciary, financial write);
            output reached Matt Mathison without HITL; data boundary violation
  Response SLA: Dr. Lewis notified within 5 minutes; agent halted within 10 minutes
  Escalation: Matt Mathison notified IF output reached him or affects his decisions

P1 — HIGH (same-day response):
  Criteria: incorrect output at scale; cost runaway; agent offline for critical function;
            HITL bypass without external delivery
  Response SLA: Dr. Lewis notified within 30 minutes; remediation plan within 4 hours

P2 — MEDIUM (next business day):
  Criteria: agent offline for non-critical function; quality regression without delivery;
            SLA breach (no downstream harm)
  Response SLA: Dr. Lewis reviews within 24 hours; remediation plan within 48 hours

════════════════════════════════════════════════════════
SECTION 3 — P0 INCIDENT RESPONSE PROTOCOL
════════════════════════════════════════════════════════
EXECUTE IMMEDIATELY — IN THIS ORDER:

  STEP 1 — HALT (within 10 minutes):
    Suspend the offending agent in Krista.ai
    Block all pending output deliveries from the agent
    Confirm halt by verifying no further runs in Krista.ai logs

  STEP 2 — CONTAIN (within 15 minutes):
    Identify all outputs delivered since the incident began
    Determine which recipients received affected output
    For PHI exposure: identify specific data elements exposed; do not reproduce PHI in incident record — use record IDs only
    For financial write: identify transaction(s); flag in QuickBooks / Bill.com for reversal review

  STEP 3 — NOTIFY (within 20 minutes):
    Notify Dr. Lewis via SMS (602-880-6491) + email if not already aware
    If output reached Matt Mathison: Dr. Lewis notifies Matt directly
    For PHI exposure: assess HIPAA breach notification obligations (Allevio compliance lead)
    For LP data: assess LP communication obligations (HIVE)

  STEP 4 — LOG (within 30 minutes):
    Create incident record in SharePoint → AI-Ops → Incidents/
    Record: incident_id, type, severity, timestamp, agent_id, entity,
            outputs_affected, recipients_affected, containment_actions_taken

  STEP 5 — ASSESS (within 2 hours):
    Root cause hypothesis: what caused the incident?
    Scope confirmation: are other agents at risk of the same failure?
    Fix options: prompt fix | config fix | data source fix | agent redesign | deprecate
    Decision: when can the agent safely resume?

════════════════════════════════════════════════════════
SECTION 4 — P1 INCIDENT RESPONSE PROTOCOL
════════════════════════════════════════════════════════
  STEP 1 — ASSESS SCOPE (within 30 minutes):
    Determine how many runs were affected
    Determine whether incorrect outputs were delivered or only generated
    Quantify cost exposure if TYPE E (cost runaway)

  STEP 2 — CONTAIN:
    For incorrect output: pause agent; notify affected output consumers
    For cost runaway: pause agent; review Krista.ai and Claude API for runaway calls
    For agent offline: attempt restart; confirm dependency health (data sources, APIs)

  STEP 3 — LOG:
    Create incident record in SharePoint → AI-Ops → Incidents/

  STEP 4 — REMEDIATION PLAN (within 4 hours):
    Document fix; estimate time to resolution; confirm agent resume schedule

════════════════════════════════════════════════════════
SECTION 5 — POST-INCIDENT REVIEW
════════════════════════════════════════════════════════
CADENCE: Within 5 business days of P0/P1 resolution; within 10 days for P2

POST-INCIDENT REVIEW STRUCTURE:
  TIMELINE:        Chronological reconstruction of the incident
  ROOT CAUSE:      The specific failure — not "the model was wrong" but WHY
  CONTRIBUTING FACTORS: Prompt design, data source, config, oversight gap
  IMPACT:          Recipients affected; outputs delivered; business consequence
  CONTAINMENT:     What was done to stop the incident; was it fast enough?
  FIX APPLIED:     What was changed; has it been tested?
  PREVENTION:      What systemic change prevents recurrence?
  LESSONS LEARNED: What does this tell us about agent design or oversight?

PREVENTION ACTIONS (choose all that apply):
  - Add/strengthen HITL trigger rule
  - Add output validation step (schema check, PHI scan, entity boundary check)
  - Update agent prompt to guard against this failure mode
  - Add monitoring alert for this failure pattern
  - Update agops-monitor-fleet-health anomaly detection rules
  - Deprecate agent if failure is structural

════════════════════════════════════════════════════════
SECTION 6 — INCIDENT LOG (SHAREPOINT)
════════════════════════════════════════════════════════
LOCATION: SharePoint → AI-Ops → Incidents/

FILE NAMING: YYYY-MM-DD_P[0-2]_[TYPE]_[AGENT-ID].md

INCIDENT RECORD FIELDS:
  incident_id         | auto-generated
  declared_ts         | ISO-8601
  resolved_ts         | ISO-8601 (blank until resolved)
  severity            | P0 | P1 | P2
  type                | A–H per Section 1
  agent_id            | affected agent
  entity              | MBL HoldCo | Allevio | HIVE | Column6
  outputs_affected    | count and delivery status
  recipients_affected | role-based (not personal data unless necessary)
  containment_actions | list of steps taken
  root_cause          | post-review field
  fix_applied         | post-review field
  prevention_measure  | post-review field
  status              | OPEN | CONTAINED | RESOLVED | CLOSED

RETENTION: Incident records retained 3 years minimum; PHI-related: 6 years (HIPAA)
```

## Output Format

```markdown
# MBL Agent Incident Report
**Incident ID:** {{incident_id}}  **Declared:** {{ts}}  **Severity:** P{{level}}
**Type:** {{A–H}}  **Agent:** {{agent_id}}  **Entity:** {{entity}}

## Incident Summary
{{2–3 sentence plain-English description of what happened, what was affected, and current status}}

## Timeline
| Time | Event |
|------|-------|
| {{ts}} | Incident detected by {{source}} |
| {{ts}} | Agent halted |
| {{ts}} | Dr. Lewis notified |
| {{ts}} | {{next step}} |

## Scope
- Outputs affected: {{n}} (delivered: {{n}}; undelivered/held: {{n}})
- Recipients affected: {{role list — no personal data unless required}}
- Business impact: {{qualitative}}

## Containment Actions Taken
1. {{action}}
2. {{action}}

## Root Cause (Post-Review)
{{filled in after post-incident review}}

## Fix Applied
{{filled in after resolution}}

## Prevention Measure
{{filled in after post-incident review}}

## Status: {{OPEN | CONTAINED | RESOLVED | CLOSED}}
**Resolved by:** Dr. John Lewis  **Resolved:** {{ts or TBD}}
```

## Output Contract

- **Incident response speed is more important than incident response perfection.** The P0 protocol is designed to halt, contain, and log within 30 minutes even if the root cause is not yet understood. This order of operations exists because the cost of a delayed halt — additional outputs delivered, additional PHI exposed, additional unauthorized financial writes — compounds linearly with time, while an incorrect preliminary root cause hypothesis can be corrected in the post-incident review without additional harm. Dr. Lewis should halt first and diagnose second, always.

- **PHI incidents at Allevio are treated as presumptive HIPAA breaches until proven otherwise.** MBL does not have the luxury of confirming that PHI was not materially exposed before beginning the containment and notification protocol. If an Allevio agent output contains any data element that could identify a covered individual, the incident is treated as Type A (PHI Exposure) at P0 severity and the Allevio compliance lead is notified within the same 20-minute window as Dr. Lewis. The HIPAA breach risk assessment happens during containment — not as a prerequisite to starting containment.

- **The post-incident review is a system improvement event, not a blame assignment.** Every P0 and P1 incident must produce a prevention measure that is implemented before the affected agent resumes normal operation. "We will be more careful" is not an acceptable prevention measure — the fix must be structural: a new validation step, an updated HITL trigger rule, a modified prompt, an additional monitoring alert, or agent deprecation. The incident log is MBL's institutional memory for agent failure modes, and it compounds in value with each entry. Dr. Lewis reviews the full log quarterly to identify cross-incident patterns.

## System Dependencies

**Reads from:**
- Krista.ai — agent run logs, output delivery records, HITL gate status
- SharePoint → AI-Ops → HITL-Log/ — HITL bypass confirmation (from agops-monitor-hitl-tracker)
- Claude API — cost logs, token counts (for cost runaway detection)
- QuickBooks / Bill.com — financial write confirmation (for Type B incidents)
- Allevio systems (AdvancedMD) — to assess PHI exposure scope (HITL required; Dr. Lewis only)

**Writes to:**
- SharePoint → AI-Ops → Incidents/ — incident records (append-only fields until resolved)
- SharePoint → AI-Ops → Fleet-Health/ — agent halt status update
- SharePoint → AI-Ops → HITL-Log/ — bypass incident cross-reference

**HITL Required:**
- Any notification to Matt Mathison about an incident (Dr. Lewis drafts and sends)
- Any HIPAA breach determination or notification (Dr. Lewis + Allevio compliance lead)
- Any financial reversal action in QuickBooks or Bill.com resulting from a Type B incident
- Agent restart after P0 incident (Dr. Lewis explicitly authorizes resume)

## Test Cases

**Golden Path — P1 Cost Runaway:**
The agops-monitor-fleet-health skill detects that a HIVE agent is being invoked 50× per hour instead of once per day, generating $400 in unexpected API cost. The incident is classified P1 Type E. Dr. Lewis is notified within 30 minutes, the agent is paused, the runaway loop in Krista.ai's scheduling config is identified and corrected, and the agent resumes the following day. Post-incident review is filed within 5 days with a prevention measure: add a per-agent daily invocation cap enforced at the Krista.ai level.

**Edge Case — Agent Offline on Business-Critical Function:**
The meet-weekly-summary-builder agent fails to run on Monday morning because Krista.ai's Microsoft integration token expired over the weekend. No output is produced. Classified P1 Type F. Dr. Lewis is notified, the token is refreshed, the agent runs manually with a 4-hour delay, and Matt Mathison receives the summary with a brief note explaining the delay. Post-incident prevention: add token expiry monitoring with a 48-hour pre-expiry alert to Dr. Lewis.

**Adversarial — PHI in Allevio Output Delivered to MBL HoldCo Distribution:**
An Allevio care-coordination agent is misconfigured and sends a summary containing member identifiers to the MBL HoldCo leadership email list. Classified P0 Type A. Agent halted within 8 minutes. Dr. Lewis notifies Allevio compliance lead within 15 minutes. Recipients are instructed to delete the email immediately and confirm deletion. HIPAA breach risk assessment is initiated. Incident record is created. Post-incident: agent rebuilt with hard PHI filter and entity boundary check; HITL added for all Allevio external-delivery outputs regardless of prior classification.

## Audit Log

Every incident record created by this skill is written to SharePoint → AI-Ops → Incidents/ as a structured file with append-only updates — fields can be added as the incident progresses, but no field can be overwritten once set. The incident log is reviewed monthly by Dr. Lewis for pattern detection and quarterly for governance reporting. PHI-related incident records are stored with restricted access (Dr. Lewis + Allevio compliance lead only) and retained for 6 years per HIPAA minimum. All other incident records are retained for 3 years. The incident log is a governed artifact: its integrity is verified by agops-monitor-fleet-health during the weekly fleet health check.

## Deprecation

This skill is deprecated when MBL's agent infrastructure includes a native incident management system within Krista.ai or a connected platform that provides equivalent severity classification, P0 halt automation, post-incident review templates, and audit-grade logging. Before deprecation, Dr. Lewis must verify that the replacement system enforces the PHI exposure protocol for Allevio, the financial write containment procedure for QuickBooks and Bill.com, and the HITL bypass escalation path. Deprecation requires a documented transition plan, a 30-day parallel run, and written sign-off from Dr. Lewis.
