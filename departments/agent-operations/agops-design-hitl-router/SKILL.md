---
name: agops-design-hitl-router
description: "Design HITL (human-in-the-loop) routing for agent workflows. Use this skill when you need to design human approval routing, build HITL workflow, define agent escalation paths, configure human review checkpoints, design approval flow, classify HITL triggers, select HITL channel for agent, handle HITL timeout, design HITL for financial action, route agent output to Dr. Lewis, route agent output to Matt Mathison, design PHI escalation path, configure HITL for irreversible action, build agent approval matrix, design error state escalation, configure HITL audit logging, define HITL for Allevio agent, define HITL for HIVE agent, build approval workflow for Krista.ai, design human oversight for Claude agent."
argument-hint: "<agent name and description of what actions it takes>"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
---

# HITL Router Designer

Design the human-in-the-loop (HITL) routing architecture for any MBL Partners agent workflow. This skill produces a complete HITL specification — trigger classification, channel selection, timeout handling, approval flow, and audit logging — that is embedded into the agent's system prompt (Block 3) and Krista.ai workflow configuration before the agent goes to production.

## When to Use

- A new agent brief has been approved and the HITL checkpoint design (Section 7 of the brief) needs to be expanded into a full routing specification before system prompt construction.
- An existing agent has produced an unreviewed output that should have triggered a HITL checkpoint — a post-incident HITL gap analysis is needed.
- A portfolio entity is escalating a new category of agent action (e.g., Column6 begins making programmatic media buys) and the HITL trigger classification needs to be updated for that entity.
- Dr. Lewis is stress-testing an agent's HITL coverage before go-live and needs a structured checklist of every possible agent action mapped to its HITL requirement.

## HITL Router Framework

```
═══════════════════════════════════════════════════════
HITL ROUTING DESIGN — MBL PARTNERS AI OPERATIONS
═══════════════════════════════════════════════════════

SECTION 1: AGENT PROFILE
──────────────────────────
Agent Name:
Target Entity: [ ] MBL HoldCo  [ ] Allevio  [ ] HIVE  [ ] Column6  [ ] Cross-Entity
Agent Action Categories (list all actions the agent can take):
  1.
  2.
  3.

SECTION 2: HITL PRINCIPAL HIERARCHY
──────────────────────────────────────
Primary HITL (all MBL agents):
  Dr. John Lewis
  Email: jlewis@mblpartners.com
  Teams: @Dr. John Lewis (MBL tenant)
  Response SLA: 4 business hours

Secondary HITL (by entity — escalation when Dr. Lewis is unavailable):
  MBL HoldCo:  Matt Mathison — but ONLY after Dr. Lewis has been notified first.
               Matt is an output RECIPIENT, not a default HITL backup for technical decisions.
  Allevio:     Designated Allevio compliance contact (PHI escalations only)
  HIVE:        HIVE operations lead
  Column6:     Column6 CFO (financial actions only)

Escalation Rule: Dr. Lewis is unreachable for > [4] hours →
  Notify secondary HITL via [Teams + email] with full context package.
  Agent suspends the pending action. Does NOT proceed autonomously.

SECTION 3: TRIGGER CLASSIFICATION
────────────────────────────────────
Classify every agent action against the following trigger types.
Mark each trigger type as ACTIVE or N/A for this agent.

  T1 — FINANCIAL ACTION
  ─────────────────────
  Trigger: Any AP, AR, payroll, wire transfer, journal entry, purchase order,
           or contract financial commitment executed or initiated by the agent.
  Applies to: ALL entities
  Status for this agent: [ ] ACTIVE  [ ] N/A
  Examples in this agent:
  HITL requirement: Full approval before execution. No exceptions. No timeout auto-approval.

  T2 — OUTPUT TO MATT MATHISON
  ──────────────────────────────
  Trigger: Any message, report, summary, or action item routed to
           Matt Mathison (Managing Partner, MBL Partners).
  Applies to: ALL entities
  Status for this agent: [ ] ACTIVE  [ ] N/A
  Examples in this agent:
  HITL requirement: Dr. Lewis reviews and approves content before delivery.
  Rationale: Matt acts on agent output. Inaccurate output to Matt creates
             executive decisions based on bad data — highest downstream risk.

  T3 — OUTPUT TO ENTITY CEO / MANAGING PARTNER
  ─────────────────────────────────────────────
  Trigger: Any output routed to a portfolio entity CEO, Managing Partner,
           or board-level stakeholder.
  Applies to: ALL entities
  Status for this agent: [ ] ACTIVE  [ ] N/A
  Examples in this agent:
  HITL requirement: Dr. Lewis reviews; entity HITL secondary if needed.

  T4 — PHI-ADJACENT OUTPUT (ALLEVIO ONLY)
  ─────────────────────────────────────────
  Trigger: Any output that contains, references, or could be derived from
           Protected Health Information. Includes: patient names, DOBs, MRNs,
           claim details, diagnosis codes, treatment information.
  Applies to: Allevio ONLY
  Status for this agent: [ ] ACTIVE  [ ] N/A (non-Allevio agents always N/A)
  HITL requirement: HALT IMMEDIATELY. Do not summarize, paraphrase, or
                   redact-then-proceed. Escalate to Dr. Lewis and Allevio
                   compliance contact simultaneously. Full stop until cleared.

  T5 — IRREVERSIBLE SYSTEM ACTION
  ─────────────────────────────────
  Trigger: Any action the agent takes that cannot be undone within 60 seconds
           by a human operator: email sent, file deleted, record published,
           payment executed, external API write committed.
  Applies to: ALL entities
  Status for this agent: [ ] ACTIVE  [ ] N/A
  Examples in this agent:
  HITL requirement: Approval required before action is committed.
                   Agent must present "I am about to [action]. Approve? Y/N"
                   and await explicit approval signal.

  T6 — ERROR STATE / JUDGMENT REQUIRED
  ──────────────────────────────────────
  Trigger: Agent encounters an ambiguous input, conflicting data, a missing
           required field, a system error from an integrated API, or a
           situation outside its approved skill set.
  Applies to: ALL entities
  Status for this agent: [ ] ACTIVE (always — all agents)
  HITL requirement: Agent halts current task, reports error state with full
                   context, and awaits instruction. Does not guess, extrapolate,
                   or attempt an alternative path without approval.

  T7 — LP DATA OUTPUT (HIVE ONLY)
  ──────────────────────────────────
  Trigger: Any output containing HIVE Partners LP distribution data,
           capital account balances, or individual LP return figures.
  Applies to: HIVE ONLY
  Status for this agent: [ ] ACTIVE  [ ] N/A
  HITL requirement: Dr. Lewis reviews LP data accuracy before any LP-facing
                   delivery. Financial figures must be cross-referenced against
                   Covercy source data before approval.

SECTION 4: HITL CHANNEL SELECTION
────────────────────────────────────
Select the appropriate channel for each active trigger type:

  PRIMARY CHANNEL OPTIONS:
  [ ] Microsoft Teams direct message to Dr. Lewis (preferred — fastest response)
  [ ] Email to jlewis@mblpartners.com (backup — use if Teams unavailable)
  [ ] Monday.com HITL task on Agent Oversight board (for non-urgent approvals)
  [ ] Krista.ai conversation interrupt (if orchestrated via Krista workflow)

  CHANNEL ASSIGNMENT BY TRIGGER:
    T1 Financial Action:            Teams DM → email fallback
    T2 Output to Matt:              Teams DM → email fallback
    T3 Output to Entity CEO:        Teams DM → email fallback
    T4 PHI Detection (Allevio):     Teams DM + email simultaneously (dual channel)
    T5 Irreversible Action:         Teams DM → agent suspends pending
    T6 Error State:                 Monday.com task (async OK) + Teams if urgent
    T7 LP Data Output (HIVE):       Teams DM → email fallback

SECTION 5: HITL MESSAGE FORMAT
─────────────────────────────────
Every HITL escalation message must include these fields:

  HITL REQUIRED — [Agent Name] — [Entity]
  ─────────────────────────────────────────
  Trigger Type:   [T1/T2/T3/T4/T5/T6/T7] — [trigger name]
  Agent Action:   [exact description of what the agent wants to do]
  Context:        [brief summary of what led to this point]
  Recommended:    [agent's recommended action, if any]
  Risk if delayed: [consequence of timeout without approval]
  Awaiting:       Approval from Dr. John Lewis
  Timeout:        [X] hours → [escalation action]
  Approve:        Reply APPROVE or send approval signal to [channel]
  Reject:         Reply REJECT with reason → agent archives and halts

SECTION 6: TIMEOUT HANDLING
─────────────────────────────
Timeout rules by trigger type:

  T1 Financial:         No auto-approval. Timeout = suspend + escalate to secondary HITL.
  T2 Matt output:       4-hour timeout → escalate to secondary. Never auto-send.
  T3 CEO output:        4-hour timeout → escalate to secondary. Never auto-send.
  T4 PHI (Allevio):     No timeout. Agent stays halted until Dr. Lewis clears.
  T5 Irreversible:      2-hour timeout → escalate. Never auto-execute.
  T6 Error state:       8-hour timeout → escalate + log as unresolved.
  T7 LP data (HIVE):    4-hour timeout → escalate to secondary.

  On timeout: Agent logs the timeout event, sends escalation to secondary HITL,
  and remains suspended. It does NOT proceed autonomously under any circumstances.

SECTION 7: HITL AUDIT LOGGING
───────────────────────────────
Every HITL event must be logged with:
  - Timestamp (UTC)
  - Agent name + entity
  - Trigger type (T1–T7)
  - HITL channel used
  - Message sent (full text or hash)
  - Response received (APPROVE / REJECT / TIMEOUT)
  - Responder identity
  - Action taken after response
  - Time to resolution

Log destination: ~/.agents/hitl/audit-log.jsonl
Secondary log: Monday.com Agent Oversight board task (linked to agent)

═══════════════════════════════════════════════════════
HITL DESIGN STATUS: [ ] Draft  [ ] Trigger-Complete  [ ] Channel-Assigned  [ ] Approved
Approved By:                          Date:
═══════════════════════════════════════════════════════
```

## Output Format

```markdown
# HITL Routing Spec: [Agent Name]
**Entity:** [entity]  **Date:** [YYYY-MM-DD]  **Version:** [1.0.0]

## Principal Hierarchy
- Primary: Dr. John Lewis (jlewis@mblpartners.com / Teams)
- Secondary: [name + role + trigger condition]

## Active Triggers
| Trigger | Type | Channel | Timeout | Auto-Approve? |
|---------|------|---------|---------|---------------|
| [description] | T1 | Teams DM | None | Never |
| [description] | T5 | Teams DM | 2 hrs | Never |
| [description] | T6 | Monday.com | 8 hrs | Never |

## Timeout Escalation Path
[Trigger] → [Timeout] → [Escalation action + secondary contact]

## HITL Message Template
[Full template for this agent's most frequent trigger]

## Audit Log Destination
~/.agents/hitl/audit-log.jsonl + Monday.com Agent Oversight board
```

## Output Contract

- **No MBL agent may execute a T1–T7 class action without a logged HITL event.** This is not a design preference — it is a compliance requirement for MBL's AI governance framework. The HITL log is the evidence artifact that establishes human oversight in any regulatory inquiry, LP audit, or post-incident review. An agent that bypasses HITL for a qualifying trigger is in violation regardless of whether the autonomous action was ultimately correct. The HITL system is not about agent competence; it is about accountability.

- **Timeout handling must never resolve to autonomous action.** Every timeout path in Section 6 leads to escalation and suspension — never to "proceed if no response." This design choice reflects the risk asymmetry of MBL's operating environment: the cost of a delayed action is recoverable; the cost of an autonomous irreversible action (wire sent, LP report published, PHI disclosed) can be existential for a portfolio entity. Timeout escalation paths must be pre-tested before go-live, not discovered during the first real timeout event.

- **The HITL principal hierarchy (Dr. Lewis primary; entity-specific secondary) is fixed across all MBL agents and cannot be overridden by a skill or requestor.** Portfolio entity leaders may request that their own staff serve as primary HITL for their entity's agents. This request is declined by default — Dr. Lewis remains primary HITL for all agents until a formal HITL delegation policy is approved by Matt Mathison. The rationale is that HITL consistency across entities is what makes the MBL agent program auditable as a single governance unit rather than four disconnected agent deployments.

## System Dependencies

**Reads From:** Approved agent brief (Section 7 — initial HITL trigger list); agent action inventory (all actions the agent can take, from brief Section 2); entity constraint documentation for PHI, LP data, CCPA rules.

**Writes To:** HITL specification embedded in system prompt Block 3 (via agops-design-system-prompt-builder); HITL configuration in Krista.ai workflow (HITL required before Krista.ai write); HITL audit log initialized at `~/.agents/hitl/<agent-name>-hitl-init.jsonl`.

**HITL Required:** Dr. Lewis approves the completed HITL routing spec before it is embedded in a system prompt or Krista.ai workflow. Changes to trigger classification or timeout policy after go-live require re-approval.

## Test Cases

**Golden Path:** Agent — MBL HoldCo weekly AP summary agent that reads Bill.com and posts a summary to Matt Mathison's Teams channel. Active triggers identified: T1 (if agent initiates any Bill.com action — flagged N/A for read-only agent), T2 (output to Matt — ACTIVE), T5 (Teams message send — ACTIVE, routed through T2 approval). HITL spec produced: T2 approval via Teams DM to Dr. Lewis, 4-hour timeout → escalate to email, never auto-send. Audit log initialized. System prompt Block 3 drafted. Approved.

**Edge Case:** Agent is designed for HIVE but also needs to pull MBL HoldCo QuickBooks data for a fund-level roll-up. Cross-entity data access triggers a HITL review before the agent design is finalized. The HITL spec adds a T6-class trigger: "any cross-entity data pull" → requires Dr. Lewis approval per pull, not just at design time. This is documented as an ongoing operational HITL requirement, not a one-time build approval.

**Adversarial:** A Krista.ai workflow designer attempts to configure an auto-approve path for T2 (Matt output) after a 1-hour timeout, arguing that Matt's weekly summary is low-risk. The HITL router spec explicitly prohibits auto-approval for T2 regardless of timeout. The configuration is rejected, the designer is redirected to Dr. Lewis for a formal HITL policy exception request, and the attempt is logged in the HITL audit trail as an attempted bypass.

## Audit Log

Every HITL routing spec produced by this skill is logged with the agent name, entity, trigger types activated, channel assignments, timeout values, and approval timestamp. The log lives at `~/.agents/hitl/routing-specs/audit-log.jsonl`. When a HITL event occurs in production, the routing spec log is referenced to confirm the agent was following an approved design. Discrepancies between the routing spec and observed agent behavior are escalated to Dr. Lewis within 24 hours as a potential agent integrity issue.

## Deprecation

This skill is deprecated when MBL deploys a HITL management platform (e.g., a Krista.ai native approval workflow module with built-in audit logging) that enforces trigger classification, channel routing, and timeout handling programmatically without requiring this manual spec process. Until that platform has been validated across all four portfolio entities with zero HITL bypass incidents over a 90-day period, this skill remains the authoritative HITL design method.
