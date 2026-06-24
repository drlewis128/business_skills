---
name: agops-monitor-output-tracker
description: "Track agent outputs and their downstream usage across MBL Partners. Use when: output delivery log needed, did Matt Mathison act on weekly summary, output action rate report requested, output retention policy audit needed, Monday.com task delivery health check, output quality tracking over time, feedback loop from output consumers needed, agent output not reaching destination, output stored incorrectly or missing, downstream system not receiving agent outputs, output delivery failure detected, output quality regression over multiple runs, output consumer feedback collected, SharePoint output archive audit, output destination health check for Monday.com or Teams, delivery confirmation missing, output format breaking downstream workflow, agent output volume increasing unexpectedly, output retention period expiring, cross-entity output leakage check"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[delivery-log | action-rate | retention-audit | destination:<system> | skill:<skill-id> | feedback-loop]"
---

# agops-monitor-output-tracker

Track every output produced by MBL agents — where it was delivered, whether it was received and acted upon, whether it is retained per policy, and whether output quality is improving or degrading over time. This skill closes the loop between agent execution and real-world business impact, making output health visible and actionable for Dr. Lewis.

## When to Use

- A weekly review of output delivery is needed to confirm that all scheduled agent outputs reached their intended destinations (Matt Mathison's inbox, Monday.com boards, SharePoint archives) without silent failures.
- Matt Mathison's action rate on agent-produced outputs is being assessed — whether weekly summaries, pre-meeting prep sheets, or quarterly briefings are actually driving decisions or sitting unread.
- A retention policy audit is due and Dr. Lewis needs to confirm that agent outputs are being stored, archived, or deleted per MBL's data retention schedule, with particular attention to Allevio (HIPAA) and Column6 (CCPA) outputs.
- An output destination is suspected to be unhealthy — Monday.com tasks are not appearing, Teams notifications are not firing, or SharePoint writes are silently failing — and the root cause must be isolated.

## agops-monitor-output-tracker Framework

```
════════════════════════════════════════════════════════
SECTION 1 — OUTPUT DELIVERY LOG
════════════════════════════════════════════════════════
PER-OUTPUT RECORD (created on every agent run):
  output_id         | unique identifier (skill_id + timestamp + entity hash)
  skill_id          | originating skill
  entity            | MBL HoldCo | Allevio | HIVE | Column6
  output_type       | summary | prep-sheet | dashboard | task | alert | report
  generated_ts      | ISO-8601 timestamp of output creation
  delivery_target   | email:matt@mblpartners.com | monday:<board-id> | sharepoint:<path> | teams:<channel>
  delivery_status   | DELIVERED | FAILED | PENDING | PARTIAL
  delivery_ts       | ISO-8601 timestamp of confirmed delivery
  delivery_latency  | seconds between generation and delivery
  hitl_cleared      | YES | NO | N/A (must be YES for HITL-required outputs)

DELIVERY FAILURE PROTOCOL:
  FAILED delivery → retry once (auto); if retry fails → alert Dr. Lewis within 15 min
  PARTIAL delivery → flag for manual review; do not mark complete
  PENDING > 30 min → escalate as stale delivery

════════════════════════════════════════════════════════
SECTION 2 — OUTPUT ACTION RATE
════════════════════════════════════════════════════════
DEFINITION: "acted on" means the recipient took a downstream action
attributable to the agent output within 48 hours of delivery.

ACTION SIGNALS BY OUTPUT TYPE:
  weekly-summary    → Matt Mathison replied, forwarded, or created Monday task
  prep-sheet        → referenced in meeting transcript (Krista.ai signal)
  dashboard         → Dr. Lewis opened and downloaded within 24 hours
  task (Monday.com) → task status moved from Not Started within 7 days
  alert             → acknowledged by recipient within SLA window
  report            → recipient opened; optional: follow-up question sent

ACTION RATE CALCULATION:
  action_rate_pct = (acted_on_count / delivered_count) × 100

THRESHOLDS:
  ≥ 70%   HIGH VALUE — agent output is driving behavior
  40–69%  MODERATE VALUE — investigate timing, format, or relevance
  < 40%   LOW VALUE FLAG — escalate to Dr. Lewis; consider redesign or deprecation
  0%      DEAD OUTPUT — immediate review; agent may be producing noise

════════════════════════════════════════════════════════
SECTION 3 — OUTPUT RETENTION COMPLIANCE
════════════════════════════════════════════════════════
RETENTION POLICY MATRIX (per MBL AI governance):

  ENTITY         OUTPUT TYPE            RETENTION PERIOD    STORAGE LOCATION
  MBL HoldCo    meeting summaries       12 months           SharePoint → Meeting-Intelligence
  MBL HoldCo    financial outputs       7 years             SharePoint → Finance → AI-Outputs
  Allevio        all outputs            6 years (HIPAA min) SharePoint → Allevio → AI-Outputs (PHI-adjacent: encrypted)
  HIVE           LP-sensitive outputs   5 years             SharePoint → HIVE → AI-Outputs (access-controlled)
  Column6        CCPA-tagged outputs    3 years             SharePoint → Column6 → AI-Outputs

RETENTION AUDIT CHECKS:
  - Is output stored at the correct path for its entity and type?
  - Is the retention period correctly tagged in SharePoint metadata?
  - Are expired outputs being purged on schedule? (auto-purge or manual?)
  - Are Allevio outputs encrypted at rest?
  - Are access controls on HIVE LP outputs scoped correctly?

FLAG: any output missing retention metadata = RETENTION VIOLATION

════════════════════════════════════════════════════════
SECTION 4 — OUTPUT DESTINATION HEALTH
════════════════════════════════════════════════════════
MONITORED DESTINATIONS:
  Monday.com        | task creation API response codes; task visibility in board
  SharePoint        | write confirmation; file integrity check
  Outlook / Teams   | delivery receipt or read confirmation where available
  Krista.ai         | conversation output stored; transcript linked

HEALTH CHECK CADENCE: daily (automated) + weekly manual review

PER-DESTINATION HEALTH STATUS:
  HEALTHY:    ≥ 95% of deliveries confirmed in past 7 days
  DEGRADED:   85–94% confirmation rate; investigate API errors
  FAILING:    < 85% confirmation rate; alert Dr. Lewis; pause affected agents

COMMON FAILURE PATTERNS:
  Monday.com   → token expiry; board ID mismatch; rate limit
  SharePoint   → permission change; path rename; storage quota
  Outlook      → distribution list change; mailbox access revoked
  Krista.ai    → conversation timeout; output truncation

════════════════════════════════════════════════════════
SECTION 5 — OUTPUT QUALITY TRACKING OVER TIME
════════════════════════════════════════════════════════
QUALITY SCORE PER OUTPUT (1–10 scale):
  Source: HITL reviewer rating at approval time (Dr. Lewis or designated reviewer)
  If no HITL: automated rubric (completeness, format compliance, data accuracy)

QUALITY TREND ANALYSIS:
  Rolling 10-run average per skill
  Alert if: average drops ≥ 1.5 points over 5 consecutive runs
  Alert if: single output scores ≤ 4 (regardless of trend)

QUALITY DEGRADATION CAUSES TO INVESTIGATE:
  - Upstream data source changed format or lost fields
  - Prompt not updated after system or API change
  - Model change (e.g., claude-haiku-4-5 substituted for claude-sonnet-4-6)
  - Context window exceeded; output truncated silently
  - Skill logic has not been maintained in 60+ days

════════════════════════════════════════════════════════
SECTION 6 — FEEDBACK LOOP FROM OUTPUT CONSUMERS
════════════════════════════════════════════════════════
FEEDBACK COLLECTION POINTS:
  Matt Mathison    → prompted monthly by Dr. Lewis: "Which outputs are you using?"
  Dr. Lewis        → rates HITL-reviewed outputs at approval
  Entity leads     → quarterly survey: output relevance and actionability
  Monday.com data  → task completion rate as passive feedback signal

FEEDBACK LOOP MECHANISM:
  Collect → Log to SharePoint → AI-Ops → Output-Feedback.xlsx
  Aggregate quarterly → inform skill quality review and deprecation decisions
  Surface top feedback items to skill authors for prompt revision

ALLEVIO SPECIAL RULE:
  No feedback loop may include PHI — output references must use anonymized IDs only
```

## Output Format

```markdown
# MBL Agent Output Tracker Report
**Period:** {{period}}  **Generated:** {{date}}  **Prepared by:** Dr. John Lewis

## Delivery Summary
| Metric | Value |
|--------|-------|
| Total Outputs Generated | {{n}} |
| Successfully Delivered | {{n}} ({{pct}}%) |
| Failed Deliveries | {{n}} |
| Pending > 30 min | {{n}} |
| HITL Clearance Rate | {{pct}}% |

## Output Action Rates by Skill
| Skill | Outputs Delivered | Acted On | Action Rate | Status |
|-------|-------------------|----------|-------------|--------|
| meet-weekly-summary-builder | | | | HIGH/MOD/LOW |
| {{skill}} | | | | |

## Destination Health
| Destination | Confirmation Rate (7d) | Status | Issues |
|-------------|------------------------|--------|--------|
| Monday.com | | HEALTHY/DEGRADED/FAILING | |
| SharePoint | | | |
| Outlook | | | |
| Krista.ai | | | |

## Retention Compliance
| Entity | Outputs Stored | Missing Metadata | Expiring Soon | Violations |
|--------|---------------|-----------------|---------------|------------|
| MBL HoldCo | | | | |
| Allevio | | | | |
| HIVE | | | | |
| Column6 | | | | |

## Quality Trend Alerts
{{none | list skills with declining quality scores with current vs. prior average}}

## Recommended Actions
1. {{fix delivery failure / investigate action rate / update prompt}}
2. {{action}}
```

## Output Contract

- **Delivery confirmation is distinct from delivery success.** An output can be written to SharePoint or sent to Monday.com and still fail to reach the intended consumer — because the SharePoint path is wrong, the Monday.com board is archived, or the email distribution list has changed. This skill tracks both delivery confirmation (system-level) and consumer receipt (human-level) separately, because silent delivery failures are operationally indistinguishable from successful delivery unless both signals are monitored.

- **Output retention compliance is a legal requirement for Allevio and Column6, not an operational preference.** HIPAA mandates minimum 6-year retention for healthcare-adjacent records; CCPA grants consumers the right to request deletion within 3 years. If Allevio agent outputs are not stored with correct retention metadata and access controls, MBL is exposed to regulatory liability. This skill flags every retention violation immediately regardless of severity because the cost of a missed retention record is categorically higher than the cost of a false positive.

- **The feedback loop from Matt Mathison is the most important quality signal in the system, and it requires proactive collection.** Matt will not volunteer that a weekly summary was irrelevant — he will simply stop opening it. Dr. Lewis must actively prompt feedback monthly and interpret passive signals (declining open rates, zero action events) as feedback in their own right. This skill surfaces those passive signals explicitly so that quality degradation is detected before the output becomes completely ignored, at which point the agent is consuming cost with zero ROI.

## System Dependencies

**Reads from:**
- Krista.ai — agent run records, output generation timestamps, delivery events
- Monday.com API — task creation confirmations, task status (acted-on proxy)
- SharePoint — file write confirmations, retention metadata, access logs
- Outlook — delivery receipts where available; read confirmations (limited availability)
- SharePoint → AI-Ops → Output-Feedback.xlsx — collected consumer feedback

**Writes to:**
- SharePoint → AI-Ops → Output-Log/ — per-output delivery and action records
- SharePoint → AI-Ops → Output-Feedback.xlsx — aggregated feedback entries
- SharePoint → AI-Ops → Retention-Violations/ — flagged retention issues

**HITL Required:**
- Any retention violation finding before escalation to legal or compliance
- Any action-rate finding delivered to Matt Mathison (Dr. Lewis approves framing)
- Allevio output retention audit results (PHI-adjacent; Dr. Lewis reviews before filing)

## Test Cases

**Golden Path — Weekly Delivery Review:**
All 12 scheduled outputs for the week were delivered on time, confirmed by destination systems, and the meet-weekly-summary-builder output was acted on by Matt Mathison (he forwarded it to Jimmy Lindsley and created two Monday.com tasks). Action rate for the week: 83%. Quality scores all ≥ 7. No retention violations. Report confirms fleet GREEN.

**Edge Case — Monday.com Token Expiry:**
The Monday.com API token used by three agents expired over the weekend. Six outputs were generated but none were delivered to Monday.com boards. Expected behavior: skill detects FAILED delivery for all six outputs, raises Monday.com destination health to FAILING, alerts Dr. Lewis within 15 minutes of the first failure, pauses Monday-bound outputs until the token is refreshed, and logs the event. Outputs are queued for redelivery after token renewal.

**Adversarial — Retention Metadata Strip:**
A configuration change in SharePoint causes new AI-Ops files to be saved without retention period metadata, affecting three weeks of Allevio outputs. Expected behavior: skill detects missing metadata during retention audit, flags all affected files as RETENTION VIOLATION, logs to SharePoint → AI-Ops → Retention-Violations/, alerts Dr. Lewis, and does not wait for the quarterly audit cycle to surface the issue. HITL required before any remediation action on Allevio files.

## Audit Log

Every output delivery record is written to SharePoint → AI-Ops → Output-Log/ as an append-only structured log entry. The audit log captures output_id, delivery status, delivery timestamp, HITL clearance status, action signal (if detected), and quality score. Retention compliance checks are logged separately in SharePoint → AI-Ops → Retention-Violations/ and reviewed monthly by Dr. Lewis. The audit log is the authoritative record for any dispute about whether an agent output was delivered or acted upon.

## Deprecation

This skill is deprecated when MBL's agent infrastructure includes native output tracking — delivery confirmation, action-rate measurement, and retention compliance — within Krista.ai or a connected observability platform. Before deprecation, Dr. Lewis must verify that the replacement system captures PHI-safe Allevio output tracking, CCPA-compliant Column6 retention enforcement, and the Matt Mathison action-rate measurement mechanism. Deprecation requires sign-off from Dr. Lewis and a 30-day parallel run to confirm no audit gaps.
