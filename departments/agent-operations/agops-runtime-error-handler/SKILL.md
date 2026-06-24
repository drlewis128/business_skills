---
name: agops-runtime-error-handler
description: "Handle errors in agent workflows at MBL Partners. Use this skill when classifying agent error severity, designing agent error recovery procedures, handling Claude API failures in agent loops, handling missing data errors in agents, handling HITL timeout errors, handling output destination write failures, detecting PHI in unexpected agent output, responding to agent cost threshold exceeded events, designing agent error logging, setting Dr. Lewis notification SLA by error severity, setting Matt Mathison notification for agent failures, building agent error escalation procedures, designing agent retry logic, designing agent halt conditions, building agent error audit logs, recovering from Monday.com write failures, recovering from SharePoint write failures, recovering from Teams message delivery failures, designing agent circuit breakers, auditing agent error patterns across MBL workflows."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[error type: API failure | data missing | HITL timeout | write failure | PHI detected | cost ceiling] [entity: MBL | Allevio | HIVE | Column6]"
---

# Agent Runtime Error Handler

This skill designs the complete error handling layer for MBL Partners agent workflows — classifying errors by severity, defining retry and escalation procedures, specifying Dr. Lewis and Matt Mathison notification SLAs, and producing audit log entries that make every agent failure traceable and recoverable. It ensures that no agent failure results in ungoverned behavior, silent data loss, or undetected compliance breach.

## When to Use

- You are designing a new agent workflow and need to specify how every error type in the loop is classified, handled, logged, and escalated before the workflow goes live.
- An agent in production has failed in a way that was not anticipated — the error log is incomplete or the notification did not fire — and you need to redesign the error handling layer.
- You are auditing an existing agent workflow for compliance and need to verify that PHI detection events, cost ceiling breaches, and HITL timeouts all have correct classification and notification paths.
- A Matt Mathison workflow was disrupted by an agent failure and you need to design the Matt-specific notification and recovery procedure for workflows that affect his operations.

## Agent Runtime Error Handler Framework

```
═══════════════════════════════════════════════════════════
SECTION 1 — ERROR CLASSIFICATION TAXONOMY
═══════════════════════════════════════════════════════════
SEVERITY LEVELS:

  CRITICAL — Halt immediately; notify Dr. Lewis within 5 minutes; no retry
    - PHI detected in agent output or context (Allevio — absolute)
    - Claude API authentication failure (401 / invalid key)
    - Entity isolation violation detected (cross-entity data bleed)
    - Agent produced output that was written to wrong entity destination
    - Cost ceiling exceeded with no halt (runaway spend event)

  HIGH — Halt loop after current iteration; notify Dr. Lewis within 15 minutes
    - Claude API content policy refusal (400 / content_filter)
    - Output destination permanent failure (4xx write error — not transient)
    - HITL timeout exceeded with no approval (4-hour SLA missed)
    - LP data detected in unauthorized output (HIVE)
    - Agent loop hit max_iterations with no convergence signal

  MEDIUM — Retry per policy; notify Dr. Lewis if unresolved after retries
    - Claude API rate limit (429) — backoff and retry
    - Claude API server error (500 / 529) — retry with delay
    - Output destination transient failure (503 timeout) — retry
    - Context load failure (upstream system unavailable) — retry
    - Webhook payload validation failure (missing field) — log + skip iteration

  LOW — Log and continue; no notification required unless pattern detected
    - Claude API response returned near-empty output (< 50 tokens) — retry once
    - Monday.com field update returned unexpected status — log + continue
    - Schema validation warning (non-blocking field mismatch) — log + continue
    - Loop heartbeat missed (timing skew) — log + continue

═══════════════════════════════════════════════════════════
SECTION 2 — ERROR TYPE SPECIFICATIONS
═══════════════════════════════════════════════════════════
ERROR TYPE 1: API FAILURE (Claude API)
  Sub-types:
    429 Rate Limit:       Severity MEDIUM; retry with exponential backoff (2^n s, max 5)
    500 Server Error:     Severity MEDIUM; retry after 30s, max 3 retries
    529 Overloaded:       Severity MEDIUM; retry after 30s, max 3 retries
    401 Auth Failure:     Severity CRITICAL; halt; notify Dr. Lewis; check API key rotation
    400 Content Refusal:  Severity HIGH; halt; notify Dr. Lewis; prompt review required
    Timeout (no response):Severity MEDIUM; retry up to 2×; if persistent → HIGH + notify
  Log fields: error_code, model, call_name, entity, retry_count, elapsed_time

ERROR TYPE 2: DATA MISSING
  Sub-types:
    Required context field absent:     Severity MEDIUM; skip iteration; log missing field
    Upstream system returned empty:    Severity MEDIUM; retry once; if still empty → HIGH
    SharePoint file not found:         Severity MEDIUM; retry; if still missing → HIGH
    Monday.com board query returned 0: Severity LOW; log; continue (may be valid empty state)
    QB / Bill.com data fetch failed:   Severity HIGH (financial data); notify Dr. Lewis
  Log fields: missing_field, source_system, entity, iteration_count

ERROR TYPE 3: HITL TIMEOUT
  Sub-types:
    Dr. Lewis 4h SLA missed:    Severity HIGH; re-notify via Teams DM + email
    Approver unreachable 8h:    Severity HIGH; halt loop; log output in HITL queue; notify Matt only if his workflow affected
    Matt Mathison review SLA missed (if Matt is secondary approver): Severity MEDIUM; re-notify; do NOT auto-proceed
  Escalation: Teams DM first; if no response in 1h → email; never auto-approve
  Log fields: hitl_id, output_name, entity, hitl_start_ts, timeout_ts, re-notify_count

ERROR TYPE 4: OUTPUT DESTINATION FAILURE
  Sub-types:
    Monday.com API 4xx:     Severity HIGH (permanent); halt write; notify Dr. Lewis; retain draft
    Monday.com API 5xx:     Severity MEDIUM (transient); retry ×3 with backoff
    SharePoint Graph 403:   Severity HIGH (permission denied); notify Dr. Lewis; check entity scope
    SharePoint Graph 5xx:   Severity MEDIUM (transient); retry ×3 with backoff
    Teams message 5xx:      Severity MEDIUM; retry ×2; if persistent → log + notify Dr. Lewis
    Email send failure:     Severity HIGH (irreversible intent); notify Dr. Lewis immediately; do NOT retry without review
  Log fields: destination, http_status, write_id, entity, retry_count

ERROR TYPE 5: PHI DETECTED IN UNEXPECTED OUTPUT
  Severity: CRITICAL — always
  Trigger: PHI pattern detected in Claude output or context payload (Allevio or any entity)
  Response:
    1. HALT all processing immediately — do not proceed to write
    2. Quarantine output draft: move to restricted SharePoint path (Dr. Lewis access only)
    3. Log incident: phi_incident_id, agent_name, entity, detection_point, field_names_only (NOT values)
    4. Notify Dr. Lewis via Teams DM within 5 minutes: "[CRITICAL] PHI detected — [agent] — [entity]"
    5. Notify Allevio HIPAA Security Officer if entity = Allevio and output was partially exposed
    6. Document remediation: was PHI sent to Claude API? (if yes → potential HIPAA incident report)
    7. Resume workflow only after Dr. Lewis signs off on prompt fix and re-validation
  Log fields: phi_incident_id, agent, entity, detection_point, field_names, exposure_risk, dr_lewis_notified_ts

ERROR TYPE 6: COST THRESHOLD EXCEEDED
  Sub-types:
    Alert threshold reached (75% of ceiling): Severity LOW; notify Dr. Lewis; continue
    Cost ceiling hit (100%):                  Severity HIGH; halt loop; notify Dr. Lewis
    Runaway spend (ceiling ignored by bug):   Severity CRITICAL; halt; notify Dr. Lewis + Matt (his workflow affected)
  Response:
    At ceiling: halt loop, log total spend, retain loop state for resume after Dr. Lewis review
    After review: Dr. Lewis either raises ceiling (with justification) or terminates loop
  Log fields: loop_id, entity, model, spend_to_date, ceiling, alert_threshold, halt_ts

═══════════════════════════════════════════════════════════
SECTION 3 — RETRY POLICIES
═══════════════════════════════════════════════════════════
EXPONENTIAL BACKOFF (for MEDIUM errors):
  Wait formula: 2^n seconds, where n = retry attempt number (1-indexed)
  Retry 1: 2s | Retry 2: 4s | Retry 3: 8s | Retry 4: 16s | Retry 5: 32s
  Max retries: 5 (rate limit), 3 (server error), 2 (timeout), 3 (transient write failure)
  After max retries: reclassify as HIGH, notify Dr. Lewis, halt

FIXED DELAY (for upstream system unavailability):
  Wait: 60 seconds between retries
  Max retries: 3
  After max retries: reclassify as HIGH, notify Dr. Lewis

NON-RETRIABLE (always halt immediately):
  PHI detected | Auth failure | Content policy refusal | Cost ceiling exceeded |
  Permanent 4xx write error | Entity isolation violation

═══════════════════════════════════════════════════════════
SECTION 4 — NOTIFICATION SLA BY SEVERITY
═══════════════════════════════════════════════════════════
CRITICAL:
  Notify Dr. Lewis: within 5 minutes via Teams DM
  Channel: Dr. Lewis personal DM (not team channel)
  Message format: "[CRITICAL] [agent name] — [entity] — [error type] — [timestamp]"
  Follow-up: Email within 15 minutes if Teams DM not acknowledged
  Matt Mathison notified: ONLY if his workflow is directly impacted

HIGH:
  Notify Dr. Lewis: within 15 minutes via Teams DM
  Message format: "[HIGH] [agent name] — [entity] — [error type] — [action needed]"
  Follow-up: Teams channel post (entity-specific) within 30 minutes
  Matt Mathison notified: If his workflow is affected and recovery ETA > 1 hour

MEDIUM:
  Notify Dr. Lewis: only if unresolved after all retries
  Method: Teams DM with retry log attached
  Matt Mathison: Not notified for MEDIUM unless error persists and affects his workflow

LOW:
  Notify Dr. Lewis: Pattern notification only (daily digest if >5 LOW events in 24h)
  Matt Mathison: Not notified

DR. LEWIS NOTIFICATION DEDUPLICATION:
  Multiple CRITICAL/HIGH errors from same agent within 15 minutes → bundle into single message
  Do NOT spam; bundle with summary: "3 CRITICAL errors — [agent] — [entity] — see audit log"

═══════════════════════════════════════════════════════════
SECTION 5 — ERROR AUDIT LOG ENTRY
═══════════════════════════════════════════════════════════
REQUIRED FIELDS FOR EVERY ERROR:
  error_id:           UUID
  loop_id:            UUID (links to loop run)
  agent_name:         string
  entity:             MBL HoldCo | Allevio | HIVE | Column6
  error_type:         enum (API_FAILURE | DATA_MISSING | HITL_TIMEOUT | WRITE_FAILURE | PHI_DETECTED | COST_EXCEEDED)
  severity:           CRITICAL | HIGH | MEDIUM | LOW
  error_code:         string (HTTP status, API error code, or internal code)
  error_message:      string (sanitized — no PHI, no secrets)
  retry_count:        integer
  retry_resolved:     boolean
  halt_triggered:     boolean
  dr_lewis_notified:  boolean
  dr_lewis_notified_ts: ISO8601 | null
  matt_notified:      boolean
  matt_notified_ts:   ISO8601 | null
  resolution:         string (auto-resolved | dr-lewis-action | pending)
  resolution_ts:      ISO8601 | null

LOG DESTINATION: SharePoint /AI Operations/Audit Logs/error-log.md (append only)
PHI INCIDENTS: Additional entry in /AI Operations/Audit Logs/phi-incident-log.md
```

## Output Format

```markdown
## Error Handler Spec: [Agent/Workflow Name]

**Entity:** [MBL HoldCo | Allevio | HIVE | Column6]
**Workflow:** [agent name and loop type]

### Error Classification Matrix
| Error Type | Severity | Retry | Notify Dr. Lewis | Notify Matt | Halt |
|------------|----------|-------|-----------------|-------------|------|
| API Rate Limit (429) | MEDIUM | ×5 backoff | If unresolved | No | No |
| API Auth Failure (401) | CRITICAL | No | Within 5 min | If impacted | Yes |
| PHI Detected | CRITICAL | No | Within 5 min | No | Yes |
| HITL Timeout | HIGH | N/A | Within 15 min | If impacted | Yes |
| Write Failure (5xx) | MEDIUM | ×3 backoff | If unresolved | No | No |
| Cost Ceiling Hit | HIGH | No | Within 15 min | If impacted | Yes |
| Data Missing | MEDIUM | ×3 fixed | If unresolved | No | No |

### Retry Policies
- **Backoff (API):** 2^n seconds, max 5 retries
- **Fixed (system):** 60s delay, max 3 retries
- **Non-retriable:** PHI, auth failure, content refusal, cost ceiling, entity violation

### Notification SLA
| Severity | Dr. Lewis SLA | Method | Matt Notified |
|----------|--------------|--------|---------------|
| CRITICAL | 5 min | Teams DM | Only if impacted |
| HIGH | 15 min | Teams DM | If ETA > 1h |
| MEDIUM | After retries | Teams DM | No |
| LOW | Daily digest | Teams DM | No |

### PHI Incident Protocol
1. HALT immediately 2. Quarantine draft 3. Log (field names only) 4. Notify Dr. Lewis <5min 5. Assess exposure risk 6. Resume only after Dr. Lewis sign-off

### Error Audit Log Fields
error_id | loop_id | agent | entity | type | severity | code | retry_count | halt | notified | resolution
```

## Output Contract

- **Error severity classification is the decision that determines whether an agent failure stays contained or escalates to a compliance event.** A PHI detection event classified as MEDIUM and retried is a potential HIPAA breach; a cost ceiling event classified as LOW and ignored becomes a financial control failure. Every error type in this skill has a fixed severity assignment based on the potential consequence — not on how unlikely the error is thought to be. These assignments are not adjusted based on convenience or to reduce notification volume. If a new error type is encountered in production that does not appear in this taxonomy, it defaults to HIGH pending Dr. Lewis classification.

- **Dr. Lewis notification SLAs are not aspirational — they are contractual commitments that the agent infrastructure must be designed to meet.** The MBL AI governance framework requires that Dr. Lewis be reachable and informed within defined windows for any agent failure that affects a live system or a compliance boundary. The notification mechanism (Teams DM, then email) is chosen because Teams is Dr. Lewis's primary async channel during business hours. The 5-minute SLA for CRITICAL events means the notification must be machine-generated and immediate — not queued for the next agent loop iteration. Any architecture that cannot guarantee a 5-minute notification window for CRITICAL errors is non-compliant with this spec.

- **Every error is logged regardless of whether it was auto-resolved.** A rate limit that was resolved by backoff on retry 2 still gets a full log entry — because patterns of medium-severity errors are a leading indicator of larger problems (model cost overruns, upstream system degradation, prompt quality issues). The daily LOW-severity digest to Dr. Lewis is not optional noise reduction — it is the pattern detection layer. If five rate limit events in 24 hours are not surfaced, Dr. Lewis cannot detect that a haiku-4-5 loop is hammering the API and approaching its tier limit. The audit log is the memory of the agent system.

## System Dependencies

**Reads from:** Loop state (loop_id, entity, iteration_count, current_error); Claude API error responses (HTTP status, error body); output destination API responses; HITL queue status (SharePoint); cost tracking ledger (current spend vs. ceiling).

**Writes to:** SharePoint error audit log (`/AI Operations/Audit Logs/error-log.md`); PHI incident log (`/AI Operations/Audit Logs/phi-incident-log.md`); Teams DM (Dr. Lewis); Teams DM (Matt Mathison — conditional); email (Dr. Lewis — CRITICAL escalation); loop state (halt flag, retry count, error code).

**HITL Required:** PHI incidents require Dr. Lewis sign-off before workflow resumes. Cost ceiling halts require Dr. Lewis ceiling raise authorization. Content policy refusals require Dr. Lewis prompt review. All CRITICAL and HIGH halts require Dr. Lewis resolution before loop restart.

## Test Cases

**Golden Path — Rate Limit Resolved by Backoff:**
Haiku-4-5 extraction loop hits 429 at iteration 23. Backoff fires: 2s wait → retry → 429 again → 4s wait → retry → 200 OK. Loop continues at iteration 24. Error log entry written: severity=MEDIUM, retry_count=2, retry_resolved=true, halt_triggered=false, dr_lewis_notified=false. No notification sent. Daily digest will include this event in LOW/MEDIUM count.

**Edge Case — HITL Timeout with Matt Mathison Impact:**
Weekly MBL HoldCo executive summary awaits Dr. Lewis HITL approval. 4-hour SLA passes with no approval (Dr. Lewis in board meeting, Teams on Do Not Disturb). Error handler fires: severity=HIGH, HITL_TIMEOUT. Re-notification sent via Teams DM. 1 hour later (5h total) — still no response. Email sent to jlewis@mblpartners.com. Matt Mathison notified via Teams: "Weekly summary pending approval — estimated delivery delayed." Loop remains halted. Output draft retained in HITL queue. No auto-send. Dr. Lewis approves at hour 6 — loop resumes, write executes, audit log records full timeline.

**Adversarial — PHI in Unexpected Agent Output (Allevio) + Partial Exposure Risk:**
Allevio claims reconciliation agent produces output containing a patient MRN in a summary sentence (model hallucination — MRN not in input context). PHI output scanner detects pattern. CRITICAL error triggered. Loop halts. Draft quarantined. Audit log records: phi_incident_id, field_name=`mrn_pattern`, detection_point=output_validation. Dr. Lewis notified at T+3 minutes. Assessment: Was this output sent to any system before detection? (No — caught pre-write.) Exposure risk = LOW. Dr. Lewis documents in PHI incident log, reviews prompt for hallucination vector, adjusts SKILL.md to add explicit prohibition. Allevio HIPAA Security Officer notified as precaution. Workflow suspended until Dr. Lewis validates fix.

## Audit Log

Every error event generated in any MBL agent workflow is logged with all fields from Section 5 to `/AI Operations/Audit Logs/error-log.md` (append only). PHI incidents receive a parallel entry in the PHI incident log with exposure risk assessment. A weekly error pattern report is generated (by the ops-weekly-ops-report skill) summarizing error counts by type, severity, and entity — surfacing any error patterns that individual log entries would not reveal. Dr. Lewis reviews the weekly error pattern report as part of the MBL AI operations review cadence.

## Deprecation

This skill is deprecated if MBL adopts a centralized agent observability platform (e.g., a dedicated monitoring service integrated with Krista.ai or the Claude API proxy layer) that handles error classification, retry orchestration, notification routing, and audit logging as platform features. The PHI incident protocol (Section 2, Error Type 5) and the Dr. Lewis notification SLAs (Section 4) must be replicated in any successor platform before this skill is retired — these are compliance requirements, not implementation preferences. Dr. John Lewis personally validates SLA and PHI protocol parity in the successor platform before authorizing deprecation. The error taxonomy from Section 1 is preserved as a reference document regardless of tooling changes.
