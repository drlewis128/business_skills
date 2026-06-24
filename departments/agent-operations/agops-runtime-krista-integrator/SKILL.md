---
name: agops-runtime-krista-integrator
description: "Integrate agent workflows with Krista.ai at MBL Partners. Use this skill when assessing Krista.ai capabilities for Phase 0 discovery, designing webhook flows from Krista.ai to Claude API, mapping Krista.ai orchestration triggers, routing Krista.ai outputs to downstream systems, integrating Krista.ai with Microsoft 365, integrating Krista.ai with QuickBooks, integrating Krista.ai with Monday.com, integrating Krista.ai with Bill.com, integrating Krista.ai with GoHighLevel, designing Krista.ai conversation agents, designing Krista.ai meeting transcription pipelines, building Krista.ai workflow nodes, testing Krista.ai integrations, auditing Krista.ai capability gaps, planning Krista.ai Phase 0 assessment, designing Krista.ai output routing, building Krista.ai to Claude handoff architecture, mapping what Krista.ai handles vs Claude API, troubleshooting Krista.ai webhook failures, documenting Krista.ai integration contracts."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[integration target: M365 | QB | Bill.com | Monday.com | GHL | Meeting Intelligence]"
---

# Krista.ai Integration Designer

This skill designs and documents the integration layer between Krista.ai and the MBL Partners agent stack. It produces capability assessments (Phase 0), webhook contracts, output routing maps, and integration test plans that define exactly what Krista.ai orchestrates versus what the Claude API handles — preventing overlap, gaps, and ungoverned handoffs.

## When to Use

- You are at Phase 0 of the MBL AI Orchestration Project and need a structured capability assessment of what Krista.ai can actually do before committing to integration architecture.
- You are designing a webhook or trigger path from Krista.ai into a Claude API call and need to define the payload schema, authentication, and error contract.
- A Krista.ai workflow produces output (meeting transcript, conversation summary, workflow event) and you need to route it to the correct downstream system (Monday.com, SharePoint, Teams, email) with full audit trail.
- You are validating that a Krista.ai integration does not create a PHI exposure path (Allevio context) or an ungated financial action (QB / Bill.com context).

## Krista.ai Integration Designer Framework

```
═══════════════════════════════════════════════════════════
SECTION 1 — INTEGRATION IDENTITY
═══════════════════════════════════════════════════════════
INTEGRATION NAME:
OWNING ENTITY: [ MBL HoldCo | Allevio | HIVE | Column6 ]
PHASE:          [ Phase 0 Assessment | Phase 1 Core | Phase 2 Meeting Intel | Phase 3 Pre-Meeting | Phase 4 Portfolio Ops ]
INTEGRATION DESCRIPTION (one sentence):
STAKEHOLDERS SERVED:
DR. LEWIS SIGN-OFF REQUIRED BEFORE LIVE: [ Yes — always ]

═══════════════════════════════════════════════════════════
SECTION 2 — PHASE 0 CAPABILITY ASSESSMENT
═══════════════════════════════════════════════════════════
(Complete this section for every new Krista.ai integration, even if Phase 0 is nominally complete.)

CAPABILITY BEING ASSESSED:
  [ ] Conversation agent (inbound query → Krista response)
  [ ] Meeting transcription (Teams/Zoom → transcript → downstream)
  [ ] Workflow orchestration (Krista workflow node triggers external system)
  [ ] Webhook send (Krista calls external URL on event)
  [ ] Webhook receive (Krista listens on endpoint for inbound event)
  [ ] Data read (Krista reads from M365 / QB / Bill.com / Monday.com)
  [ ] Data write (Krista writes to M365 / QB / Bill.com / Monday.com)
  [ ] Authentication delegation (Krista holds OAuth token for system X)

ASSESSMENT QUESTIONS (answer each with CONFIRMED / UNCONFIRMED / NOT POSSIBLE):
  Can Krista.ai trigger outbound webhooks on a schedule?
  Can Krista.ai receive inbound webhooks from external systems?
  Can Krista.ai pass structured JSON payload to Claude API endpoint?
  Can Krista.ai authenticate to Microsoft Graph (M365) natively?
  Can Krista.ai read/write Monday.com items natively?
  Can Krista.ai read QuickBooks reports natively?
  Can Krista.ai route meeting transcripts to a webhook?
  Can Krista.ai enforce entity-level workflow isolation?
  Does Krista.ai maintain a native audit log with timestamps?
  What is Krista.ai's max payload size for webhook calls?

CAPABILITY GAPS IDENTIFIED:
  Gap 1:
  Gap 2:
  Workaround for each gap:

═══════════════════════════════════════════════════════════
SECTION 3 — ORCHESTRATION BOUNDARY MAP
═══════════════════════════════════════════════════════════
KRISTA.AI HANDLES (orchestration + coordination):
  - Trigger detection (cron, webhook, conversation)
  - System authentication (M365, QB, Bill.com, Monday.com OAuth)
  - Data fetch from connected systems
  - Payload assembly and routing to Claude API
  - Output receipt from Claude API
  - Downstream write (Monday.com, SharePoint, email, Teams)
  - Native audit log entry

CLAUDE API HANDLES (reasoning + generation):
  - SKILL.md-guided reasoning and synthesis
  - Long-form output generation (reports, analyses, summaries)
  - Multi-step reasoning chains
  - Classification and extraction at volume
  - Entity-specific logic enforcement (PHI check, cost ceiling)

NEITHER HANDLES (requires Dr. Lewis manual action):
  - Krista.ai configuration changes (workflow edits)
  - Claude API key rotation
  - New entity onboarding (portfolio isolation setup)
  - HITL approval (always Dr. Lewis or designated approver)

═══════════════════════════════════════════════════════════
SECTION 4 — WEBHOOK CONTRACT
═══════════════════════════════════════════════════════════
DIRECTION: [ Krista → Claude endpoint | External system → Krista | Krista → external system ]

KRISTA → CLAUDE ENDPOINT:
  Endpoint URL: [Claude API proxy / MBL agent endpoint]
  Authentication: [ Bearer token | HMAC-SHA256 | mTLS ]
  Payload schema:
    {
      "event_type": "<string>",
      "entity": "<MBL HoldCo|Allevio|HIVE|Column6>",
      "skill": "<skill-name>",
      "context": { <structured context fields> },
      "loop_id": "<UUID>",
      "triggered_by": "<krista_workflow_name>",
      "timestamp": "<ISO8601>"
    }
  Max payload size:
  Timeout (Krista waits for response):
  Retry policy (Krista side):
  Idempotency key field:

RESPONSE SCHEMA (Claude → Krista):
    {
      "status": "success|error|hitl_required",
      "output": { <structured output or null> },
      "hitl_required": true|false,
      "hitl_route": "<Teams channel | SharePoint path | null>",
      "error": { "code": "<string>", "message": "<string>" } | null,
      "audit_id": "<UUID>"
    }

═══════════════════════════════════════════════════════════
SECTION 5 — SYSTEM-SPECIFIC INTEGRATION NOTES
═══════════════════════════════════════════════════════════
MICROSOFT 365 (Backbone — all entities):
  Auth method: Microsoft Graph OAuth (Krista holds delegated token)
  Read scope: Mail.Read, Calendars.Read, Files.Read.All, Chat.Read
  Write scope: Files.ReadWrite, Mail.Send, Chat.Message.Send
  PHI risk (Allevio): Any M365 data from Allevio tenant — PHI exclusion check mandatory

QUICKBOOKS:
  Auth method: QB OAuth 2.0 (Krista holds token)
  Read: Reports, transactions, vendor list
  Write: BLOCKED — no agent writes to QB without Dr. Lewis HITL
  Entity isolation: Separate QB company file per entity

BILL.COM:
  Auth method: Bill.com API key (per entity)
  Read: Bills, payments, vendor records
  Write: HITL required for any payment action

MONDAY.COM:
  Auth method: Monday.com API key (per entity board)
  Read: Items, statuses, columns
  Write: Task creation, status update, field update (audit logged)

GOHIGHLEVEL (MBL HoldCo + North Vista):
  Auth method: GHL API key
  Read: Contacts, pipelines, conversations
  Write: Contact update, pipeline stage change (HITL for bulk actions)

═══════════════════════════════════════════════════════════
SECTION 6 — OUTPUT ROUTING FROM KRISTA
═══════════════════════════════════════════════════════════
KRISTA OUTPUT TYPE → DESTINATION MAP:
  Meeting transcript   → SharePoint /AI Operations/Transcripts/ + Claude API (Meeting Intelligence skill)
  Conversation summary → Teams channel (entity-specific) + SharePoint archive
  Workflow event log   → SharePoint /AI Operations/Audit Logs/
  Agent output (draft) → SharePoint /AI Operations/Drafts/ + HITL notification
  Agent output (final) → Destination per agops-runtime-output-writer routing table
  Error event          → Dr. Lewis Teams DM (always) + audit log

═══════════════════════════════════════════════════════════
SECTION 7 — INTEGRATION TEST PLAN
═══════════════════════════════════════════════════════════
TEST 1 — END-TO-END HAPPY PATH:
  Trigger Krista workflow manually → confirm webhook fires → confirm Claude API receives payload → confirm output returned → confirm downstream write → confirm audit log entry.

TEST 2 — PAYLOAD VALIDATION:
  Send malformed payload (missing `entity` field) → confirm Krista rejects or Claude endpoint returns error → confirm Dr. Lewis notified → confirm no downstream write.

TEST 3 — PHI EXCLUSION (ALLEVIO):
  Inject synthetic PHI string into Allevio context payload → confirm PHI detector blocks before Claude API call → confirm HARD BLOCK logged → confirm no output written.

TEST 4 — AUTHENTICATION FAILURE:
  Revoke Krista OAuth token for M365 → trigger workflow → confirm graceful failure → confirm error logged → confirm Dr. Lewis notified within SLA.
```

## Output Format

```markdown
## Krista.ai Integration Design: [Integration Name]

**Entity:** [MBL HoldCo | Allevio | HIVE | Column6]
**Phase:** [Phase 0 | 1 | 2 | 3 | 4]
**Integration Type:** [Webhook | Trigger | Output Route | Capability Assessment]

### Phase 0 Capability Assessment
| Capability | Status | Notes |
|------------|--------|-------|
| Outbound webhook | CONFIRMED / UNCONFIRMED | |
| M365 auth | CONFIRMED / UNCONFIRMED | |
| Monday.com write | CONFIRMED / UNCONFIRMED | |

### Orchestration Boundary
- **Krista handles:** [list]
- **Claude API handles:** [list]
- **Gaps requiring workaround:** [list]

### Webhook Contract
- Direction: [Krista → Claude | External → Krista]
- Auth: [method]
- Payload schema: [summary or link]
- Timeout: [X seconds]
- Retry: [policy]

### Output Routing
| Krista Output | Destination |
|---------------|-------------|
| Meeting transcript | SharePoint + Meeting Intelligence skill |

### HITL Gates
[Any point in this integration where HITL is required]

### Integration Test Status
- [ ] Happy path
- [ ] Payload validation
- [ ] PHI exclusion (Allevio)
- [ ] Auth failure

### Open Capability Gaps
- [Gap + workaround]
```

## Output Contract

- **The integration design resolves the boundary between Krista.ai and the Claude API before any configuration begins.** Ambiguity at this boundary is the primary source of agent failures at MBL — Krista.ai triggering Claude endpoints with malformed payloads, or Claude outputs returning to Krista with no routing instruction. Every design produced by this skill names, for each event in the workflow, which system is responsible and what the handoff contract looks like. This eliminates the "it worked in my head" failure mode.

- **Phase 0 capability assessment is mandatory for every new Krista.ai integration, even if the broader Phase 0 project is complete.** Krista.ai's capabilities are not static — the platform updates, and what was UNCONFIRMED six months ago may now be CONFIRMED (or vice versa). Each integration design re-validates the specific capabilities it depends on. Assumptions about Krista.ai capabilities that are not re-confirmed are treated as unvalidated risks and flagged for Dr. Lewis before build.

- **Portfolio isolation is enforced at the Krista.ai workflow layer, not only at the Claude API layer.** Each portfolio entity (MBL HoldCo, Allevio, HIVE, Column6) must have separate Krista.ai workflow configurations, separate OAuth credentials, and separate audit log paths. A shared Krista.ai workflow that routes for multiple entities is a compliance violation — Allevio's HIPAA obligations and HIVE's LP data sensitivity make cross-entity data bleed unacceptable. This skill flags any proposed shared workflow as non-compliant and proposes entity-specific alternatives.

## System Dependencies

**Reads from:** Krista.ai workflow documentation and capability matrix (Phase 0 assessment output); MBL system map (CLAUDE.md); SKILL.md files for skills invoked via Krista triggers; Microsoft Graph API documentation; Monday.com API documentation.

**Writes to:** Integration design document (SharePoint `/AI Operations/Designs/`); Krista.ai workflow configuration notes (handed to Krista.ai team); webhook contract specification; integration test log.

**HITL Required:** Yes — Dr. Lewis must review and approve all Krista.ai integration designs before Krista.ai team implements workflows. Any integration touching Allevio data requires explicit PHI exclusion sign-off.

## Test Cases

**Golden Path — Meeting Intelligence Transcription Pipeline (Phase 2):**
Teams meeting ends → Krista.ai transcription workflow triggers → transcript routed via webhook to Claude API with `skill: meet-transcript-processor` → sonnet-4-6 generates summary → output returned to Krista → Krista writes to SharePoint + sends Teams DM to Matt Mathison via HITL gate (Dr. Lewis approves) → audit log entry written. All capability checks CONFIRMED, end-to-end test passes.

**Edge Case — Krista.ai Outbound Webhook Timeout:**
Krista fires webhook to Claude API endpoint; endpoint takes >30 seconds (timeout threshold). Krista marks the call as failed, logs event, notifies Dr. Lewis via Teams DM. Dr. Lewis investigates: Claude API latency spike on opus-4-8 call. Resolution: switch to sonnet-4-6 for this workflow, re-test. No data lost; no duplicate write (idempotency key prevents re-run from writing twice).

**Adversarial — Cross-Entity Payload Injection:**
Malicious or misconfigured Krista workflow sends an Allevio-entity payload to an MBL HoldCo Claude endpoint. Entity field check at the Claude API proxy layer detects mismatch (`entity: Allevio` routed to `mbl-holdco` endpoint). Call blocked, error returned to Krista (`error_code: ENTITY_MISMATCH`), Dr. Lewis notified immediately. No Allevio context processed by MBL HoldCo skill. Incident logged with full payload (PHI scrubbed before logging).

## Audit Log

Every Krista.ai integration design produced by this skill is logged with: integration name, entity, phase, webhook direction, capability assessment status (CONFIRMED/UNCONFIRMED counts), HITL requirement, design timestamp, and Dr. Lewis review status. The log is appended to `/AI Operations/Audit Logs/krista-integration-log.md` in SharePoint. Krista.ai team implementation confirmations are linked to the corresponding design log entry. No integration goes live without a matching closed log entry.

## Deprecation

This skill is deprecated if Krista.ai is replaced as the MBL orchestration platform by a successor system, or if MBL adopts a native integration-design tool that produces equivalent capability assessments and webhook contracts. Deprecation requires: Dr. Lewis authorization in writing, migration of all active integration designs to the successor format, archival of this skill version in the registry, and a 30-day deprecation notice period during which the skill remains callable but returns a deprecation warning alongside its normal output.
