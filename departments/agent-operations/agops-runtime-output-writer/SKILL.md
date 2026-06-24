---
name: agops-runtime-output-writer
description: "Write agent outputs to the correct destinations at MBL Partners. Use this skill when routing agent output to Monday.com, routing agent output to SharePoint, routing agent output to Microsoft Teams, routing agent output to email, validating agent output format before writing, enforcing HITL gate before irreversible writes, writing output audit logs for agents, checking PHI exclusion before any output write, designing output destination routing tables, mapping agent outputs to entity-specific destinations, preventing cross-entity output writes, validating output schema before delivery, building output write confirmation receipts, designing output rollback procedures, configuring Monday.com task creation from agent output, configuring SharePoint file write from agent output, managing output versioning in SharePoint, designing Teams message delivery for agent outputs, building agent output delivery receipts, auditing which agent wrote what output and when."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[output type: report | task | message | email | file] [entity: MBL | Allevio | HIVE | Column6]"
---

# Agent Output Writer

This skill designs and governs the output delivery layer for MBL Partners agent workflows — the final step between a validated Claude API response and a write to a live system. It produces destination routing tables, format validation checklists, HITL gate configurations, and audit log specifications that ensure every agent output lands in the right place, in the right format, with the right approval, and with a complete trail of who wrote what and when.

## When to Use

- A new agent workflow is producing output and you need to define exactly where it goes, in what format, and under what approval conditions before any write is attempted.
- An agent output write failed (Monday.com API error, SharePoint permission denied) and you need a recovery and retry procedure that does not duplicate the write or lose the output.
- You are designing a workflow that writes to Monday.com, SharePoint, Teams, or email and need to validate that entity isolation, PHI exclusion, and HITL gates are correctly positioned before the write.
- You are auditing an existing agent workflow and need to confirm that every output has a corresponding audit log entry with destination, timestamp, agent name, and approver.

## Agent Output Writer Framework

```
═══════════════════════════════════════════════════════════
SECTION 1 — OUTPUT IDENTITY
═══════════════════════════════════════════════════════════
OUTPUT NAME:
AGENT / WORKFLOW NAME:
OWNING ENTITY: [ MBL HoldCo | Allevio | HIVE | Column6 ]
OUTPUT TYPE:   [ Report | Task | Message | Email | File | Status Update ]
OUTPUT AUDIENCE: [ Matt Mathison | Dr. Lewis | Internal team | External (LP, client) ]
IRREVERSIBLE WRITE: [ Yes — HITL required | No ]

═══════════════════════════════════════════════════════════
SECTION 2 — PRE-WRITE VALIDATION CHECKLIST
═══════════════════════════════════════════════════════════
(All checks must PASS before any write is attempted. Any FAIL = halt + log + notify.)

SCHEMA VALIDATION:
  [ ] Output matches expected schema (field names, types, required fields present)
  [ ] Output length within destination limits (Monday field char limit, Teams message limit, email body limit)
  [ ] Output encoding is UTF-8 clean
  [ ] Markdown / HTML formatting valid for destination (Monday.com strips markdown; Teams supports subset)

PHI EXCLUSION (MANDATORY FOR ALL ENTITIES — ABSOLUTE FOR ALLEVIO):
  [ ] Scan output for: patient names, DOB, SSN, MRN, diagnosis codes, treatment info, insurance IDs
  [ ] Scan output for: phone numbers in Allevio context, email addresses in Allevio context
  [ ] PHI pattern library version: [current version]
  [ ] Result: [ CLEAN | PHI_DETECTED — HALT ]
  If PHI detected: BLOCK write, log detection event, notify Dr. Lewis, quarantine output draft

LP DATA CHECK (HIVE — mandatory):
  [ ] Scan output for: LP names, individual distributions, capital account balances
  [ ] If LP data present: confirm audience is authorized (Dr. Lewis / Matt only — never bulk send)
  [ ] Result: [ CLEAN | LP_DATA_PRESENT — route to HITL regardless of normal HITL rules ]

ENTITY ISOLATION CHECK:
  [ ] Destination belongs to the owning entity (no MBL HoldCo output writing to Allevio board)
  [ ] API key / auth credential used is scoped to owning entity
  [ ] Output contains no references to other entities' proprietary data

CONTENT QUALITY CHECK:
  [ ] Output is not blank or near-blank (< 50 tokens signals Claude API failure)
  [ ] Output does not contain raw API error messages or stack traces
  [ ] Output does not contain prompt injection artifacts ("As an AI…", unclosed markdown, etc.)

═══════════════════════════════════════════════════════════
SECTION 3 — HITL GATE CONFIGURATION
═══════════════════════════════════════════════════════════
HITL REQUIRED IF:
  - Audience includes Matt Mathison (always)
  - Audience includes external party (LP, client, vendor)
  - Financial action (QB entry, Bill.com payment trigger, budget update)
  - PHI-adjacent output (Allevio, even if PHI exclusion passed)
  - Write is irreversible (sent email, published SharePoint file with external share)
  - Output triggers downstream automation in Krista.ai or Monday.com

HITL GATE PROCEDURE:
  1. Route output draft to SharePoint: /AI Operations/HITL Queue/[entity]/[output-name]-[timestamp].md
  2. Notify Dr. Lewis via Teams DM: "HITL required — [output name] — [entity] — [audience]"
  3. Wait for approval (SLA: 4 business hours)
  4. On APPROVAL: proceed to write (Section 4)
  5. On REJECTION: log rejection reason, return to agent loop (regenerate or halt)
  6. On TIMEOUT (4h): escalate Teams message + email to Dr. Lewis; do NOT auto-proceed
  7. If Matt Mathison is approver for non-agent content: route to Matt via Teams after Dr. Lewis approval

HITL NOT REQUIRED IF:
  - Internal draft to SharePoint drafts folder (not shared externally)
  - Monday.com status update (non-financial, internal, reversible)
  - Audit log write (system-generated, not agent output)

═══════════════════════════════════════════════════════════
SECTION 4 — DESTINATION ROUTING TABLE
═══════════════════════════════════════════════════════════
DESTINATION: MONDAY.COM
  Use case: Task creation, status update, field update
  Auth: Monday.com API key (entity-scoped)
  Entity board mapping:
    MBL HoldCo  → Board ID: [MBL main board]
    Allevio     → Board ID: [Allevio ops board]
    HIVE        → Board ID: [HIVE board]
    Column6     → Board ID: [Column6 board]
  Write method: GraphQL mutation (items_create / change_column_value)
  Reversible: Yes (item can be deleted or status reverted)
  Confirmation: Monday.com returns item_id → log as write_receipt
  HITL: Required only for financial or Matt-facing Monday items

DESTINATION: SHAREPOINT
  Use case: Report file, meeting summary, draft, archive
  Auth: Microsoft Graph OAuth (entity-scoped Krista.ai token)
  Entity folder mapping:
    MBL HoldCo  → /AI Operations/[subfolder]/
    Allevio     → /Allevio/AI Operations/[subfolder]/
    HIVE        → /HIVE/AI Operations/[subfolder]/
    Column6     → /Column6/AI Operations/[subfolder]/
  Write method: Graph API PUT /drives/{driveId}/items/{path}/content
  Reversible: Yes (versioning enabled — prior version retained)
  Confirmation: Graph API returns file metadata → log item_id + version
  HITL: Required before external share link is generated

DESTINATION: TEAMS MESSAGE
  Use case: Agent notification, summary delivery, HITL alert
  Auth: Microsoft Graph (Krista.ai token)
  Channel / DM mapping:
    Matt Mathison briefings  → Matt DM (after Dr. Lewis HITL)
    Dr. Lewis notifications  → Dr. Lewis DM (no HITL required)
    Entity team channels     → Entity-specific Teams channel
  Write method: Graph API POST /chats/{chatId}/messages
  Reversible: No (message sent cannot be unsent via API)
  Confirmation: Graph API returns message_id → log
  HITL: Required for Matt-facing messages and external-facing messages

DESTINATION: EMAIL (Outlook)
  Use case: LP communication (HIVE), executive summary, external delivery
  Auth: Microsoft Graph Mail.Send (Krista.ai token, Dr. Lewis delegated)
  Write method: Graph API POST /me/sendMail
  Reversible: No — HITL always required before email send
  Confirmation: 202 Accepted response → log send timestamp + recipient list
  HITL: ALWAYS required for email (irreversible)

═══════════════════════════════════════════════════════════
SECTION 5 — WRITE EXECUTION & RECEIPT
═══════════════════════════════════════════════════════════
WRITE SEQUENCE:
  1. All pre-write checks PASS (Section 2)
  2. HITL approval received (if required — Section 3)
  3. Execute write via destination API (Section 4)
  4. Capture write receipt (item_id / file_id / message_id / send timestamp)
  5. Write audit log entry (Section 6)
  6. Return write_receipt to loop state (confirm to Krista.ai webhook response)

WRITE FAILURE RECOVERY:
  On API error: classify error (transient / permanent) — see agops-runtime-error-handler
  Transient (5xx, timeout): retry up to 3 times with exponential backoff
  Permanent (4xx, auth): halt, notify Dr. Lewis, do NOT retry without fix
  On retry success: log retry count alongside write receipt
  On retry exhaustion: log failure, notify Dr. Lewis, output draft retained in HITL Queue

IDEMPOTENCY:
  Before retry: check if prior write succeeded (query destination for item with loop_id tag)
  If prior write found: skip retry, log duplicate-prevented event
  Never write the same output twice to the same destination

═══════════════════════════════════════════════════════════
SECTION 6 — OUTPUT AUDIT LOG ENTRY
═══════════════════════════════════════════════════════════
REQUIRED FIELDS FOR EVERY WRITE:
  write_id:        UUID (new per write attempt)
  loop_id:         UUID (from loop state — links to iteration)
  agent_name:      string
  entity:          MBL HoldCo | Allevio | HIVE | Column6
  output_name:     string
  destination:     Monday.com | SharePoint | Teams | Email
  destination_ref: item_id / file_id / message_id / email thread_id
  write_timestamp: ISO8601
  hitl_required:   boolean
  approved_by:     string (Dr. Lewis or designated approver) | null
  approval_ts:     ISO8601 | null
  write_status:    success | failed | retried-success
  retry_count:     integer
  phi_check:       CLEAN | PHI_DETECTED (never log PHI values — field names only)

LOG DESTINATION: SharePoint /AI Operations/Audit Logs/output-write-log.md (append only)
```

## Output Format

```markdown
## Output Write Spec: [Output Name]

**Agent/Workflow:** [name]
**Entity:** [MBL HoldCo | Allevio | HIVE | Column6]
**Output Type:** [Report | Task | Message | Email | File]
**Audience:** [Matt Mathison | Dr. Lewis | Team | External]
**Irreversible:** [Yes | No]

### Pre-Write Validation
- [ ] Schema valid
- [ ] PHI check: [CLEAN | BLOCKED]
- [ ] LP data check: [CLEAN | HITL routed] (HIVE only)
- [ ] Entity isolation confirmed
- [ ] Content quality passed

### HITL Gate
**Required:** [Yes — reason | No]
**Approver:** [Dr. Lewis | Matt (secondary)]
**SLA:** 4 business hours
**Queue path:** SharePoint /AI Operations/HITL Queue/[entity]/[output-name]-[ts].md

### Destination Routing
| Destination | Auth | Path / Board | Reversible | Receipt Field |
|-------------|------|--------------|------------|---------------|
| [destination] | [auth] | [path] | [Yes/No] | [field] |

### Write Failure Recovery
- Transient errors: retry ×3, exponential backoff
- Permanent errors: halt + notify Dr. Lewis
- Idempotency: check for prior write before retry

### Audit Log Fields
write_id | loop_id | agent | entity | destination | ref | ts | approver | status
```

## Output Contract

- **The HITL gate is not a speed bump — it is the compliance boundary between agent reasoning and live system action.** At MBL, the agents that write to Monday.com, send emails to LPs, or update SharePoint files shared with Matt Mathison are operating on real workflows with real consequences. An unapproved write to the wrong Monday.com field can surface in Matt's dashboard; an unapproved email to an LP cannot be recalled. The HITL gate is positioned after validation and before write — not before Claude generates output — so that the human reviewer sees the actual output that will be written, not a preview or summary of it.

- **PHI exclusion is enforced at the output layer as a defense-in-depth measure, even when it was also checked at the prompt layer.** The Claude API may produce output that contains PHI if the input context contained PHI that the prompt-layer check missed, or if the model hallucinated PHI-adjacent content. Checking only at the input prompt is insufficient. The PHI scan at the output layer (Section 2) is the last gate before any write occurs. For Allevio, a PHI detection at this layer triggers an immediate HALT, a quarantine of the output draft, and a Dr. Lewis notification — the write never happens, and the draft is never visible to an unauthorized party.

- **Every write is recorded with enough detail to answer "who authorized this, what exactly was written, and where did it go" for any future audit.** MBL operates in a regulated environment across its portfolio (HIPAA for Allevio, SEC/LP obligations for HIVE) and has a board-level obligation to demonstrate that AI agents are operating within defined boundaries. The audit log entry for every write — including destination reference, approver identity, and approval timestamp — is the evidence that satisfies this obligation. Audit log writes are append-only and are never modified after creation; any correction is a new entry referencing the prior write_id.

## System Dependencies

**Reads from:** Claude API output (agent-generated content); loop state (loop_id, entity, context); HITL queue (SharePoint draft); PHI pattern library (Allevio); LP identifier list (HIVE); entity board/folder/channel mapping table.

**Writes to:** Monday.com (task creation, status update); SharePoint (file write); Microsoft Teams (DM or channel message); Outlook (email send); SharePoint audit log (`/AI Operations/Audit Logs/output-write-log.md`).

**HITL Required:** Yes — for all Matt Mathison-facing output, all external output (LP, client, vendor), all financial actions, all irreversible writes (email send, external SharePoint share), and all PHI-adjacent Allevio output. Dr. John Lewis is primary HITL approver for all agent output at MBL.

## Test Cases

**Golden Path — Monday.com Task Creation (MBL HoldCo):**
Agent produces structured task output → schema validation passes → PHI check CLEAN → entity isolation confirmed (MBL HoldCo board) → HITL not required (internal, reversible) → Monday.com GraphQL mutation fires → item_id returned → audit log entry written with write_id, loop_id, destination, item_id, timestamp, hitl_required=false. Write confirmed. Loop state updated with write_receipt.

**Edge Case — SharePoint Write Failure (Transient 503):**
Agent output passes all pre-write checks and HITL approval received from Dr. Lewis. SharePoint Graph API returns 503 on first write attempt. Retry 1: wait 2s → 503 again. Retry 2: wait 4s → 503 again. Retry 3: wait 8s → 200 OK. Write succeeds on third attempt. Audit log records: write_status=retried-success, retry_count=3. Dr. Lewis not notified (resolved within retry policy). HITL approval timestamp preserved in log (approval was not re-requested — it covers the retried write).

**Adversarial — PHI Detected in Output (Allevio):**
Allevio claims agent generates a summary that includes a patient's MRN (hallucinated by Claude, not present in input context). PHI output scan in Section 2 detects MRN pattern. Write is BLOCKED. Output draft quarantined to `/Allevio/AI Operations/HITL Queue/quarantine/[output-name]-[ts].md` (access restricted to Dr. Lewis). Audit log records: phi_check=PHI_DETECTED, write_status=blocked. Dr. Lewis notified via Teams DM with field name (not value). Prompt and model configuration reviewed before workflow is re-enabled.

## Audit Log

Every output write configuration produced by this skill is logged with: output name, entity, destination, HITL requirement, audience, irreversibility classification, and Dr. Lewis review status. For live agent runs, each actual write appends a runtime entry to `/AI Operations/Audit Logs/output-write-log.md` with all fields from Section 6. PHI detection events receive their own entry in a separate `/AI Operations/Audit Logs/phi-incident-log.md` (field names only — never values). Audit logs are append-only and retained per entity's compliance schedule (Allevio: 6 years per HIPAA; others: 3 years minimum).

## Deprecation

This skill is deprecated if MBL adopts a unified output delivery service (a dedicated microservice or Krista.ai native capability) that handles destination routing, HITL gating, and audit logging as platform features rather than per-agent configuration. At that point, `agops-runtime-output-writer` is archived and its routing table and HITL gate logic are migrated to the platform service configuration. The PHI exclusion and LP data checks defined in Section 2 must be replicated in any successor system before this skill is retired — these checks are not optional features of the output layer. Dr. John Lewis signs off on the migration and the check-parity verification before deprecation is finalized.
