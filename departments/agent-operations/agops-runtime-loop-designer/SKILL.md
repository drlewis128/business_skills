---
name: agops-runtime-loop-designer
description: "Design the execution loop for a looping agent at MBL Partners. Use this skill when designing agent loop architecture, building looping agent workflows, specifying trigger mechanisms for agents, designing cron-triggered agents, designing webhook-triggered agents, designing manual-trigger agents, managing loop state persistence, defining error handling and retry logic for loops, setting loop termination conditions, estimating cost per loop iteration, integrating Krista.ai as the orchestration trigger layer, designing loop context loading, building skill selection logic for agents, designing HITL gates within agent loops, writing loop audit logs, designing loop exit conditions, modeling loop state machines, reviewing loop cost efficiency, designing recursive agent loops, defining loop convergence criteria."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[agent name and loop type: cron | webhook | manual]"
---

# Agent Runtime Loop Designer

This skill designs the execution loop architecture for looping agents deployed at MBL Partners. It produces a complete loop specification covering trigger type, context loading, skill selection, Claude API call structure, HITL gates, output writing, audit logging, and termination conditions — ready for implementation in the Krista.ai / Claude API stack.

## When to Use

- You are building a new looping agent for MBL or a portfolio entity and need to define its full execution cycle before writing code or configuring Krista.ai.
- An existing agent loop is producing runaway iterations, excessive API cost, or missing its termination condition and needs a redesign.
- A stakeholder (Matt Mathison or Dr. Lewis) has requested an autonomous agent that runs on a schedule or event trigger, and you need to spec the loop before committing to implementation.
- You are auditing a deployed agent loop for compliance with MBL logging, HITL, and portfolio isolation requirements.

## Agent Runtime Loop Designer Framework

```
═══════════════════════════════════════════════════════════
SECTION 1 — AGENT IDENTITY & LOOP SCOPE
═══════════════════════════════════════════════════════════
AGENT NAME:
OWNING ENTITY: [ MBL HoldCo | Allevio | HIVE | Column6 ]
LOOP DESCRIPTION (one sentence):
PRIMARY OBJECTIVE PER ITERATION:
STAKEHOLDERS SERVED:

═══════════════════════════════════════════════════════════
SECTION 2 — TRIGGER TYPE SELECTION
═══════════════════════════════════════════════════════════
TRIGGER TYPE: [ CRON | WEBHOOK | MANUAL ]

CRON (if selected):
  Schedule (cron expression):
  Timezone:
  Krista.ai cron job name:
  Skip condition (if prior run still active):

WEBHOOK (if selected):
  Source system:
  Webhook URL pattern:
  Payload schema (fields expected):
  Krista.ai webhook handler name:
  Idempotency key field:

MANUAL (if selected):
  Invocation method (CLI | Krista UI | Teams command):
  Required parameters at invocation:
  Who is authorized to trigger:

═══════════════════════════════════════════════════════════
SECTION 3 — LOOP STATE MANAGEMENT
═══════════════════════════════════════════════════════════
STATE STORE: [ SharePoint file | Monday.com field | In-memory (single run only) ]
STATE FIELDS:
  - loop_id (UUID per run)
  - iteration_count
  - last_trigger_ts
  - last_success_ts
  - last_error (code + message)
  - loop_status: [ IDLE | RUNNING | HITL_PENDING | TERMINATED | FAILED ]
STATE UPDATE FREQUENCY: [ Every iteration | On status change only ]
STATE ISOLATION: [ Per entity — no cross-portfolio state bleed ]

═══════════════════════════════════════════════════════════
SECTION 4 — ITERATION EXECUTION SEQUENCE
═══════════════════════════════════════════════════════════
STEP 1 — TRIGGER RECEIVED
  Validate trigger payload / schedule alignment
  Check: no prior run active (lock check)
  Set loop_status = RUNNING; write loop_id

STEP 2 — CONTEXT LOAD
  Pull required context (SharePoint / Monday.com / QB / GHL)
  Validate context completeness
  If context missing → classify as ERROR (see Section 6)

STEP 3 — SKILL SELECTION
  Map context to skill name (static map or LLM-routed)
  Load SKILL.md from ~/.agents/skills/<skill>/SKILL.md
  Cache SKILL.md Framework section via cache_control (see agops-runtime-claude-api-caller)

STEP 4 — CLAUDE API CALL
  Model selection per task complexity:
    haiku-4-5 → extraction / classification
    sonnet-4-6 → standard reasoning / drafting
    opus-4-8 → M&A / executive / complex analysis
  Include: system (cached SKILL.md) + user (context payload)
  Log: model used, input tokens, output tokens, cost estimate

STEP 5 — OUTPUT VALIDATION
  Schema check on Claude output
  PHI exclusion check (Allevio only — HARD BLOCK if PHI detected)
  HITL gate check (required for Matt-facing output, financial actions)

STEP 6 — HITL GATE (if required)
  Route to Dr. Lewis (Teams message + SharePoint draft)
  Wait for approval (timeout = 4 hours business hours)
  On timeout → escalate, do NOT auto-proceed

STEP 7 — OUTPUT WRITE
  Write to destination per agops-runtime-output-writer routing table
  Log: destination, write timestamp, approved_by

STEP 8 — AUDIT LOG ENTRY
  Append to entity audit log (loop_id, iteration, ts, model, cost, output_dest, hitl_status)

STEP 9 — LOOP DECISION
  Evaluate termination conditions (Section 5)
  If continue → return to STEP 1 (with cooldown if CRON)
  If terminate → set loop_status = TERMINATED, write final state

═══════════════════════════════════════════════════════════
SECTION 5 — TERMINATION CONDITIONS
═══════════════════════════════════════════════════════════
CONDITION TYPE: [ FIXED COUNT | CONVERGENCE | SIGNAL | SCHEDULE END | ERROR THRESHOLD ]

FIXED COUNT:
  Max iterations:
  Action at limit: [ Halt + notify | Restart with new loop_id ]

CONVERGENCE:
  Convergence signal (field / value):
  Max iterations before forced halt:

SIGNAL:
  Signal source (webhook / Monday field / manual):
  Signal value that triggers halt:

ERROR THRESHOLD:
  Max consecutive errors before halt:
  Notification on halt: Dr. Lewis (always) + Matt (if his workflow affected)

COST CEILING:
  Max cost per loop run ($):
  Action at ceiling: [ Halt | Notify Dr. Lewis + continue ]

═══════════════════════════════════════════════════════════
SECTION 6 — ERROR HANDLING (summary — full detail in agops-runtime-error-handler)
═══════════════════════════════════════════════════════════
RETRY POLICY: [ Immediate | Exponential backoff (2^n seconds, max 5 retries) ]
NON-RETRIABLE ERRORS: [ PHI detected | Cost ceiling hit | HITL timeout ]
NOTIFY DR. LEWIS ON: [ Severity HIGH or CRITICAL ]
LOOP HALT ON: [ 3 consecutive failures | Any CRITICAL error ]
```

## Output Format

```markdown
## Loop Design: [Agent Name]

**Entity:** [MBL HoldCo | Allevio | HIVE | Column6]
**Trigger:** [CRON: <expression> | WEBHOOK: <source> | MANUAL]
**Loop Type:** [Fixed count | Convergence | Signal | Continuous]
**Estimated Cost/Run:** $[X.XX] ([model] × [avg tokens] × [iterations])

### Trigger Configuration
[Krista.ai job name / webhook endpoint / invocation command]

### Iteration Sequence
1. Trigger → 2. Context Load → 3. Skill Select → 4. Claude API → 5. Validate → 6. [HITL] → 7. Write → 8. Log → 9. Loop Decision

### State Fields
| Field | Type | Updated |
|-------|------|---------|
| loop_id | UUID | Per run |
| loop_status | Enum | Per step |
| iteration_count | Int | Per iteration |

### Termination Conditions
- [Condition 1]
- [Condition 2]

### HITL Requirements
[Required / Not required — reason]

### Cost Management
Max per run: $[X] | Alert at: $[Y] | Ceiling action: [halt/notify]

### Open Questions
- [Any ambiguity requiring Dr. Lewis resolution before build]
```

## Output Contract

- **The loop design is a complete, implementation-ready specification — not a conceptual diagram.** Every step in Section 4 maps directly to a Krista.ai workflow node, a Claude API call configuration, or a write operation in the MBL system stack. Vague terms like "process the data" are never acceptable; each step names the system, the action, and the failure mode. This specificity is required because Dr. Lewis builds directly from this output without an intermediate design phase.

- **Portfolio isolation is non-negotiable and must be enforced at the state layer, the context layer, and the output layer.** An Allevio loop must never read MBL HoldCo context, a HIVE loop must never write to Column6 destinations, and no loop state store may share a namespace across entities. PHI exclusion (Allevio) and LP data isolation (HIVE) are absolute — the loop design must name the specific check and the specific block action at the point of enforcement, not as a footnote.

- **Cost is a first-class design output, not an afterthought.** Every loop design must include a cost estimate per iteration (model × avg token count × price), a cost ceiling, and an explicit ceiling action. MBL runs ~1600 skills and multiple concurrent agent loops; runaway iteration or model misselection (using opus-4-8 where haiku-4-5 suffices) is a real financial risk. The designer is accountable for selecting the right model tier for each loop type and documenting the rationale.

## System Dependencies

**Reads from:** SKILL.md files at `~/.agents/skills/<skill>/SKILL.md` (context load + skill selection); Monday.com (loop state fields); SharePoint (context documents, state files); MBL system map in CLAUDE.md.

**Writes to:** Loop design document (SharePoint or local); Krista.ai workflow configuration (via Dr. Lewis); audit log stub (entity-specific SharePoint audit folder).

**HITL Required:** Yes — Dr. Lewis must review all loop designs before Krista.ai configuration begins. Matt Mathison review required if loop produces direct output to him.

## Test Cases

**Golden Path — Weekly HIVE LP Summary Loop:**
Trigger = CRON (every Friday 4:00 PM MT), context load from Covercy + QB, skill = `hive-lp-quarterly-report` (adapted for weekly), model = sonnet-4-6, HITL = Dr. Lewis approval, output = SharePoint + email to Matt. Loop runs once per trigger (fixed count = 1). Cost estimate: $0.12/run. All sections complete, PHI N/A, LP data isolation confirmed.

**Edge Case — Webhook with Missing Payload Field:**
Allevio claim-ratio agent receives webhook from AdvancedMD with `claim_period` field absent. Context load step fails validation. Loop logs `ERROR: missing_field:claim_period`, sets loop_status = FAILED, notifies Dr. Lewis via Teams within 5 minutes. Does NOT proceed to Claude API call. Retry not attempted (data missing is non-retriable until source corrected).

**Adversarial — Loop Runaway (Convergence Never Met):**
Agent loop set to terminate on `convergence_signal = "approved"` from Monday.com field, but Monday.com field never updates due to integration failure. Loop hits max_iterations (50) before convergence. At iteration 50, loop halts, sets loop_status = TERMINATED, logs reason = `max_iterations_reached`, notifies Dr. Lewis with iteration count and cost total. Does NOT continue past ceiling.

## Audit Log

Every loop design produced by this skill is logged with: skill invoked (`agops-runtime-loop-designer`), agent name, entity, trigger type, loop type, estimated cost/run, HITL requirement, design timestamp, and reviewer (Dr. Lewis). The log entry is appended to the MBL Agent Operations audit log in SharePoint (`/AI Operations/Audit Logs/agent-design-log.md`). Design changes (re-runs of this skill for the same agent) are appended as versioned entries — prior entries are never overwritten.

## Deprecation

This skill is deprecated when MBL adopts a visual loop designer tool within Krista.ai or a successor orchestration platform that generates loop specifications natively. At that point, `agops-runtime-loop-designer` is archived (not deleted), its final version is pinned in the skill registry, and all active loop designs it produced are migrated to the new tool's format. Dr. John Lewis authorizes deprecation in writing before the skill is removed from the active registry.
