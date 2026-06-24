---
name: agops-sec-audit-logger
description: "Maintain structured audit logs for all AI agent actions across MBL Partners. Use when logging a completed agent run, recording a HITL decision made by Dr. Lewis, capturing a skill execution with its input summary and output destination, writing a financial write action to the audit trail, logging a PHI Guard screening result, generating Matt Mathison's quarterly audit summary, detecting anomalous patterns in agent activity logs, verifying log retention compliance for HIPAA-adjacent records, archiving annual logs to SharePoint, reviewing weekly agent activity as Dr. Lewis, flagging an agent run that exceeded cost thresholds, recording a Krista.ai orchestration event, documenting a failed or halted agent workflow, logging a credential rotation event, capturing a new skill deployment in the audit trail, producing an entity-level audit report for Allevio, tracking which agents touched which systems in a given week, or verifying that all financial write actions have corresponding HITL approval records."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[agent-id] [entity] [skill-name] [action-type: read|write|financial-write|hitl-decision]"
---

# Agent Audit Logger

This skill defines the structure, storage, and review cadence for audit logs covering every AI agent action executed within the MBL Partners ecosystem. It ensures that all agent activity is traceable, reviewable, and retained for the periods required by operational policy and HIPAA where applicable, with Dr. John Lewis as the primary log owner and Matt Mathison as the quarterly summary recipient.

## When to Use

- Any agent skill completes execution and its action must be written to the permanent audit trail with full context.
- A HITL decision (approval, rejection, or modification) has been made by Dr. Lewis and must be recorded alongside the agent action that triggered it.
- Weekly log review is due and Dr. Lewis needs a structured summary of all agent activity, anomalies, and cost totals for the prior 7 days.
- A quarterly audit summary must be prepared for Matt Mathison covering agent activity, incidents, HITL decisions, and compliance status across all entities.

## Agent Audit Logger Framework

```
═══════════════════════════════════════════════════════════
SECTION 1: LOG ENTRY STRUCTURE (REQUIRED FIELDS)
═══════════════════════════════════════════════════════════

Every agent action produces exactly one log entry with:

  TIMESTAMP         — ISO 8601; UTC; millisecond precision
  LOG_ID            — UUID v4; unique per entry
  AGENT_ID          — Krista.ai or skill identifier
  ENTITY            — Allevio | HIVE | Column6 | MBL-HoldCo | Cross-Portfolio
  SKILL_USED        — Exact skill name (e.g., agops-sec-phi-guard)
  ACTION_TYPE       — read | write | financial-write | hitl-decision |
                      system-event | anomaly-flag
  INPUT_SUMMARY     — ≤200 chars; describes what the agent received;
                      NEVER includes PHI or raw credential data
  OUTPUT_SUMMARY    — ≤200 chars; describes what was produced or delivered;
                      NEVER includes PHI
  OUTPUT_DESTINATION — SharePoint path | Monday.com board | Email recipient |
                       Krista.ai channel | None
  HITL_DECISION     — Approved [name] | Rejected [name] | N/A
  HITL_REVIEWER     — Dr. John Lewis | Matt Mathison | N/A
  COST_USD          — Estimated Claude API cost for this run (to 4 decimal places)
  DR_LEWIS_FLAG     — Boolean; True if run requires Dr. Lewis weekly review
  PHI_GUARD_RUN     — Boolean; True if PHI Guard was executed before output
  PHI_GUARD_RESULT  — CLEAR | SUSPECT | DETECTED | N/A
  ANOMALY_FLAG      — Boolean; True if anomaly detection triggered
  ANOMALY_DETAIL    — Free text if flagged; else empty

═══════════════════════════════════════════════════════════
SECTION 2: LOG RETENTION POLICY
═══════════════════════════════════════════════════════════

STANDARD LOGS (non-HIPAA-adjacent):
  Retention: 12 months minimum
  Entities: HIVE, Column6, MBL HoldCo
  Storage: SharePoint → AI-Ops → Audit-Logs → [Entity] → [Year]
  Archive: After 12 months → AI-Ops → Archive → [Entity] → [Year]

HIPAA-ADJACENT LOGS (Allevio-touching workflows):
  Retention: 6 years minimum (HIPAA Security Rule requirement)
  Entities: Allevio; any cross-portfolio run that touched Allevio data
  Storage: SharePoint → AI-Ops → Audit-Logs → Allevio → [Year]
  Archive: Retained in place; flagged as HIPAA in metadata
  Deletion: Requires Dr. Lewis + legal counsel approval

PHI INCIDENT LOGS (see agops-sec-phi-guard):
  Retention: 6 years minimum; stored separately
  Storage: SharePoint → AI-Ops → Audit-Logs → Allevio → PHI-Incidents → [Year]

FINANCIAL WRITE LOGS:
  Retention: 7 years (financial record standard)
  Storage: SharePoint → AI-Ops → Audit-Logs → Financial-Writes → [Year]
  Cross-reference: QuickBooks transaction ID or Bill.com record ID required

═══════════════════════════════════════════════════════════
SECTION 3: LOG STORAGE PATHS
═══════════════════════════════════════════════════════════

BASE PATH: SharePoint → AI-Ops → Audit-Logs

  → Allevio → [YYYY] → [YYYY-MM].jsonl
  → Allevio → PHI-Incidents → [YYYY] → incidents.jsonl
  → HIVE → [YYYY] → [YYYY-MM].jsonl
  → Column6 → [YYYY] → [YYYY-MM].jsonl
  → MBL-HoldCo → [YYYY] → [YYYY-MM].jsonl
  → Financial-Writes → [YYYY] → [YYYY-MM].jsonl
  → Cross-Portfolio → [YYYY] → [YYYY-MM].jsonl
  → Security → Credential-Events → [YYYY] → [YYYY-MM].jsonl

FORMAT: JSONL (one JSON object per line) for streaming append
ENCODING: UTF-8; no PHI in any field

═══════════════════════════════════════════════════════════
SECTION 4: DR. LEWIS WEEKLY REVIEW
═══════════════════════════════════════════════════════════

CADENCE: Every Monday; covers prior Mon–Sun
SCOPE: All entities; all DR_LEWIS_FLAG=True entries + anomaly flags
PROCESS:
  1. Pull all entries from prior week across all entity paths
  2. Summarize: total runs, total cost, HITL decisions made,
     PHI Guard results, anomaly flags, financial write actions
  3. Flag any: cost spike >$50/week, repeated failures,
     unexpected entity access, HITL rejections
  4. Review open items from prior week; close or escalate
  5. Log the review completion as a system-event entry

OUTPUT: Dr. Lewis weekly review summary stored in
  SharePoint → AI-Ops → Audit-Logs → Reviews → [YYYY-WW].md

═══════════════════════════════════════════════════════════
SECTION 5: ANOMALY DETECTION RULES
═══════════════════════════════════════════════════════════

FLAG (set ANOMALY_FLAG=True) when any of the following occur:
  - Single run cost > $5.00 USD (unexpected model usage)
  - Agent accesses an entity outside its registered scope
  - PHI Guard result = DETECTED for any run
  - Financial write action without a HITL approval record
  - Same skill runs >20 times in a 1-hour window
  - Output destination is an unregistered external address
  - HITL decision is missing for a Tier 2 financial action
  - Credential rotation log gap > 90 days

RESPONSE: Anomaly-flagged entries are surfaced in Dr. Lewis
  weekly review with recommended action; critical anomalies
  (PHI detected; financial write without HITL) trigger
  immediate Krista.ai notification to Dr. Lewis

═══════════════════════════════════════════════════════════
SECTION 6: MATT MATHISON QUARTERLY AUDIT SUMMARY
═══════════════════════════════════════════════════════════

CADENCE: Q1/Q2/Q3/Q4 (delivered by Jan 20, Apr 20, Jul 20, Oct 20)
PREPARED BY: Dr. John Lewis
CONTENTS:
  - Total agent runs by entity (counts, not content)
  - Total Claude API cost by entity
  - HITL decisions: approved vs. rejected counts
  - PHI Guard: total screenings, any detection events
  - Financial write actions: count, all approved by Dr. Lewis
  - Anomaly events: count, root causes, resolutions
  - Compliance status: log retention verified, BAA status
  - Open items requiring Matt Mathison awareness or decision

FORMAT: 1-page executive summary + appendix with entity details
DELIVERY: SharePoint + direct briefing if anomaly events > 0
```

## Output Format

```markdown
## Audit Log Entry — [LOG_ID] — [TIMESTAMP]

| Field | Value |
|-------|-------|
| Agent ID | [agent-id] |
| Entity | [entity] |
| Skill Used | [skill-name] |
| Action Type | [read/write/financial-write/hitl-decision] |
| Input Summary | [≤200 chars; no PHI] |
| Output Summary | [≤200 chars; no PHI] |
| Output Destination | [path or recipient] |
| HITL Decision | [Approved / Rejected / N/A] |
| HITL Reviewer | [Dr. John Lewis / N/A] |
| Cost (USD) | [$0.0000] |
| Dr. Lewis Flag | [True / False] |
| PHI Guard Run | [True / False] |
| PHI Guard Result | [CLEAR / SUSPECT / DETECTED / N/A] |
| Anomaly Flag | [True / False] |
| Anomaly Detail | [description or empty] |

**Log Written To:** [SharePoint path]
**Retention Class:** [Standard-12mo / HIPAA-6yr / Financial-7yr]
```

## Output Contract

- Every agent action within the MBL Partners AI infrastructure must produce a corresponding audit log entry before the action is considered complete, because the audit trail is the primary mechanism by which Dr. Lewis can verify that agents are operating within their defined permissions, detect drift or misuse, and provide Matt Mathison with an accurate picture of AI activity across the portfolio; an agent action with no log entry is treated as an anomaly in itself and triggers a manual review.

- Log entries are designed to be useful for security and compliance review without reproducing sensitive content — the input and output summary fields are limited to 200 characters each and must never contain PHI, raw credentials, or verbatim financial data; this design allows the audit log to serve its control function while ensuring the log itself does not become a secondary source of sensitive data exposure.

- Retention periods are non-negotiable and tiered by risk: HIPAA-adjacent Allevio logs are kept for 6 years because the HIPAA Security Rule requires it, financial write logs are kept for 7 years because financial record standards require it, and standard logs are kept for 12 months as a minimum operational baseline; deletion of any log before its retention period expires requires Dr. Lewis and legal counsel approval, regardless of who requests it or how routine the deletion appears.

## System Dependencies

**Reads from:** Krista.ai agent execution records; agops-sec-phi-guard screening results; agops-sec-permission-model tier assignments; Claude API usage/cost metadata; Monday.com AI-Ops board (open HITL items)

**Writes to:** SharePoint → AI-Ops → Audit-Logs → [Entity] → [Year] (JSONL append); SharePoint → AI-Ops → Audit-Logs → Reviews → [YYYY-WW].md (Dr. Lewis weekly review); Krista.ai notification channel (critical anomalies only)

**HITL Required:** Yes — Dr. Lewis conducts all weekly reviews; Dr. Lewis prepares and delivers all quarterly summaries to Matt Mathison; any anomaly involving PHI or financial write without HITL triggers immediate Dr. Lewis notification

## Test Cases

**Golden Path:** A Krista.ai workflow runs the meet-weekly-summary-builder skill for MBL HoldCo; audit logger captures all required fields (agent ID, entity, skill, input summary of meeting metadata, output destination SharePoint path, cost $0.0023, PHI Guard N/A for non-Allevio entity), writes the JSONL entry to MBL-HoldCo → [Year] → [Month].jsonl, and sets DR_LEWIS_FLAG=True for weekly review inclusion.

**Edge Case:** An Allevio workflow runs and the agent does not write a log entry due to a Krista.ai timeout; the missing log is detected during Dr. Lewis weekly review via a gap in the expected run sequence; Dr. Lewis manually reconstructs the entry from Krista.ai execution metadata, writes it with a ANOMALY_FLAG=True and ANOMALY_DETAIL noting the timeout, and opens a Monday.com task to investigate the root cause.

**Adversarial:** An agent run for Allevio produces an output summary field that contains a member name and diagnosis code (PHI in the log itself); the audit logger detects the pattern violation, redacts the summary to "[REDACTED — PHI detected in summary field]", flags ANOMALY_FLAG=True, notifies Dr. Lewis immediately, and logs the redaction event as a separate system-event entry in the PHI-Incidents path.

## Audit Log

The audit logger is itself subject to meta-audit: Dr. Lewis verifies quarterly that all expected log files are present, no retention-period violations have occurred, and log integrity checksums match the entries on file. This meta-audit is recorded as a system-event entry in SharePoint → AI-Ops → Audit-Logs → Security → [Year] and included in the quarterly summary delivered to Matt Mathison. Any gap in log coverage, unexpected file modification, or checksum mismatch is treated as a security incident until root cause is established and documented.

## Deprecation

This skill is deprecated when MBL Partners implements a centralized, SOC 2-compliant log management platform that automatically captures all Krista.ai and Claude API agent events with equivalent structure, retention enforcement, and anomaly detection; until that platform is live and has completed at least two quarterly audit cycles with Dr. Lewis verification, this skill remains the authoritative logging standard for all MBL agent operations. Deprecation requires Dr. Lewis written sign-off, Matt Mathison awareness, and confirmation that the replacement system meets or exceeds HIPAA 6-year retention requirements for Allevio-adjacent logs.
