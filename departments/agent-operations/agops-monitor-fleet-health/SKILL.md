---
name: agops-monitor-fleet-health
description: "Monitor the health of all active MBL agents. Use when: agent fleet health check needed, weekly fleet dashboard for Dr. Lewis, agent running behind schedule, agent quality score declining, agent cost spiking unexpectedly, HITL compliance rate dropping, quarterly fleet summary for Matt Mathison, agent inventory audit needed, new agent added to fleet, agent decommissioned from fleet, fleet-wide anomaly detected, agent last-run timestamp stale, output quality regression detected, per-entity agent health breakdown needed, agent schedule drift detected, fleet cost trending above budget, agent producing stale outputs, fleet health KPI review, weekly ops report includes agent status, agent monitoring setup for new portfolio entity"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[weekly-check | quarterly-summary | entity:<name> | agent:<agent-id> | anomaly-scan]"
---

# agops-monitor-fleet-health

Monitor the health, performance, and cost of every active agent in the MBL Partners agent fleet. This skill produces the authoritative weekly fleet dashboard for Dr. Lewis and the quarterly executive summary for Matt Mathison, covering all agents across MBL HoldCo, Allevio, HIVE, and Column6.

## When to Use

- Weekly fleet health review is due and Dr. Lewis needs a structured status report covering all active agents, their last-run timestamps, output quality scores, and cost-per-run.
- An anomaly is suspected — an agent has not fired on schedule, a cost-per-run spike is detected, HITL compliance rate has dropped, or output quality has trended down across two or more consecutive runs.
- A quarterly fleet summary for Matt Mathison is being prepared, requiring a non-technical executive view of fleet status, ROI, and risk posture.
- A new agent has been deployed or decommissioned and the fleet inventory register must be updated to reflect current state.

## agops-monitor-fleet-health Framework

```
════════════════════════════════════════════════════════
SECTION 1 — FLEET INVENTORY SNAPSHOT
════════════════════════════════════════════════════════
INPUTS:
  - Agent registry (SharePoint → AI-Ops → Agent-Registry.xlsx or Krista.ai agent list)
  - Last-run logs per agent (Krista.ai run history; Claude API usage logs)
  - Schedule definitions (cron or event-driven trigger per agent)

FOR EACH AGENT:
  agent_id          | human-readable name
  entity            | MBL HoldCo | Allevio | HIVE | Column6
  purpose           | one-line function description
  trigger_type      | scheduled | event-driven | on-demand
  schedule          | cron expression or trigger event
  last_run_ts       | ISO-8601 timestamp of most recent execution
  last_run_status   | SUCCESS | PARTIAL | FAILED | SKIPPED
  is_healthy        | YES | NO | DEGRADED

THRESHOLD — FLAG STALE:
  scheduled agents: last_run_ts > (expected_interval × 1.5)
  event-driven: no run in past 7 days AND triggering events have occurred

════════════════════════════════════════════════════════
SECTION 2 — PER-AGENT HEALTH METRICS
════════════════════════════════════════════════════════
FOR EACH AGENT, COMPUTE OVER ROLLING 30 DAYS:
  success_rate          | % of runs ending SUCCESS
  output_quality_score  | 1–10; human-rated or automated rubric
  cost_per_run_usd      | Claude API tokens × rate + Krista orchestration
  cost_30d_usd          | rolling 30-day total
  cost_trend            | FLAT | RISING | FALLING (week-over-week)
  hitl_compliance_rate  | % of HITL-required runs that triggered HITL gate
  hitl_bypass_count     | any run where HITL was skipped — flag CRITICAL if > 0

QUALITY SCORING RUBRIC:
  9–10  Accurate, complete, actionable; no corrections needed
  7–8   Minor corrections needed; core content sound
  5–6   Significant rework needed before delivery
  1–4   Output unreliable; escalate to Dr. Lewis immediately

════════════════════════════════════════════════════════
SECTION 3 — ANOMALY DETECTION
════════════════════════════════════════════════════════
RUN ANOMALY SCAN — FLAG ANY OF THE FOLLOWING:

  SCHEDULE DRIFT:
    agent has not run within 1.5× its expected interval
    → severity: P2 if < 2× interval; P1 if > 2× interval

  QUALITY REGRESSION:
    output_quality_score declined ≥ 2 points over 3 consecutive runs
    → severity: P2; trigger review of prompt, context, or data source

  COST SPIKE:
    cost_per_run_usd > 2× 30-day rolling average for that agent
    → severity: P2; check for context window bloat or runaway loops

  HITL BYPASS:
    hitl_bypass_count > 0 for any HITL-required agent
    → severity: P0; halt agent; alert Dr. Lewis immediately

  FLEET COST OVERRUN:
    fleet_cost_30d_usd > monthly_budget_usd × 0.85 before month-end
    → severity: P1; notify Dr. Lewis; prepare variance explanation

  DATA SOURCE FAILURE:
    agent run succeeded but input data was stale/missing
    → severity: P1; trace upstream data dependency

════════════════════════════════════════════════════════
SECTION 4 — ENTITY HEALTH BREAKDOWN
════════════════════════════════════════════════════════
GROUP METRICS BY ENTITY:
  MBL HoldCo | Allevio | HIVE | Column6

PER ENTITY REPORT:
  agent_count       | total agents active
  healthy_count     | agents with is_healthy = YES
  degraded_count    | agents with is_healthy = DEGRADED
  failed_count      | agents with is_healthy = NO
  entity_cost_30d   | sum of all agent costs for entity
  open_anomalies    | count of flagged anomalies

ALLEVIO SPECIAL RULE:
  ANY Allevio agent with PHI-adjacent output → HITL required; compliance < 100% = P0

════════════════════════════════════════════════════════
SECTION 5 — WEEKLY FLEET DASHBOARD (DR. LEWIS)
════════════════════════════════════════════════════════
AUDIENCE: Dr. John Lewis (internal; not for Matt Mathison)
CADENCE: Weekly, Monday morning

DASHBOARD CONTENT:
  - Fleet health summary (total agents; % healthy)
  - Top 3 anomalies requiring action this week
  - Cost summary: week-over-week delta; month-to-date vs. budget
  - HITL compliance rate fleet-wide
  - Agents requiring intervention (ranked by severity)
  - Recommended actions (max 5; prioritized)

════════════════════════════════════════════════════════
SECTION 6 — QUARTERLY FLEET SUMMARY (MATT MATHISON)
════════════════════════════════════════════════════════
AUDIENCE: Matt Mathison (Managing Partner); non-technical
CADENCE: Quarterly; prepared by Dr. Lewis; HITL required before delivery

EXECUTIVE SUMMARY CONTENT:
  - How many agents are running across MBL and portfolio
  - Overall fleet health rating (GREEN / YELLOW / RED)
  - Top 3 agents by value delivered (qualitative + quantitative)
  - Cost vs. value narrative (is AI spend producing ROI?)
  - Incidents in the quarter (count; resolution; prevention)
  - Roadmap: agents launching next quarter
```

## Output Format

```markdown
# MBL Agent Fleet Health Report
**Date:** {{date}}  **Period:** {{period}}  **Prepared by:** Dr. John Lewis

## Fleet Summary
| Metric | Value |
|--------|-------|
| Total Active Agents | {{count}} |
| Healthy | {{healthy}} ({{healthy_pct}}%) |
| Degraded | {{degraded}} |
| Failed / Offline | {{failed}} |
| Fleet Cost (30d) | ${{cost_30d}} |
| HITL Compliance Rate | {{hitl_pct}}% |

## Open Anomalies
| Agent | Entity | Anomaly Type | Severity | Recommended Action |
|-------|--------|-------------|----------|--------------------|
| {{agent}} | {{entity}} | {{type}} | {{P0/P1/P2}} | {{action}} |

## Per-Entity Health
| Entity | Agents | Healthy | Degraded | Failed | Cost (30d) |
|--------|--------|---------|----------|--------|------------|
| MBL HoldCo | | | | | |
| Allevio | | | | | |
| HIVE | | | | | |
| Column6 | | | | | |

## Recommended Actions This Week
1. {{action_1}}
2. {{action_2}}
3. {{action_3}}

## HITL Bypass Incidents
{{none | detail each bypass event with agent, timestamp, and resolution}}
```

## Output Contract

- **Fleet health data is only as current as the underlying run logs.** This skill reads from Krista.ai run history and Claude API usage logs; if those systems are delayed or incomplete, the dashboard will reflect that lag. Dr. Lewis must validate that log sources are current before treating the report as authoritative, and any stale-log condition must itself be flagged as an anomaly in the report.

- **The quarterly summary for Matt Mathison is HITL-gated without exception.** Dr. Lewis reviews and approves the executive summary before it is delivered. The summary must translate technical fleet metrics into business-value language: cost is framed as investment, agent count is framed as operational leverage, and incidents are framed with resolution and prevention — not raw failure counts that create unwarranted concern.

- **HITL bypass detection is a hard safety control, not a soft metric.** Any run where a HITL-required agent delivered output without human review is logged as a P0 incident regardless of whether the output appears correct. This rule exists because correctness cannot be verified post-delivery without a human in the loop, and MBL's compliance posture — especially for Allevio PHI-adjacent outputs and any financial write — requires an unbroken audit chain.

## System Dependencies

**Reads from:**
- Krista.ai — agent run history, schedule definitions, trigger logs
- Claude API usage dashboard — token counts, cost per run, model used
- SharePoint → AI-Ops → Agent-Registry.xlsx — authoritative agent inventory
- Monday.com — agent task delivery confirmations (output destination health)

**Writes to:**
- SharePoint → AI-Ops → Fleet-Health → Weekly-Reports/ — weekly dashboard artifacts
- SharePoint → AI-Ops → Fleet-Health → Quarterly-Summaries/ — Matt Mathison packages

**HITL Required:**
- Quarterly fleet summary before delivery to Matt Mathison (Dr. Lewis approves)
- Any P0 anomaly finding before agent halt is executed

## Test Cases

**Golden Path — Weekly Fleet Check:**
All agents ran on schedule in the past 7 days. Success rate ≥ 95% fleet-wide. No HITL bypasses. Cost within 10% of 30-day average. Output: clean dashboard with GREEN status, no anomalies, recommended actions are routine maintenance.

**Edge Case — Data Source Lag:**
Krista.ai run logs are 18 hours delayed due to a platform update. Several agents appear offline when they actually ran successfully. Expected behavior: skill flags the log-lag itself as an anomaly, marks affected agents as UNKNOWN (not FAILED), and instructs Dr. Lewis to verify directly before taking remediation action.

**Adversarial — HITL Bypass Detected:**
An Allevio agent delivered output to an end-user without triggering the HITL gate because a configuration error bypassed the approval step. Expected behavior: skill detects hitl_bypass_count > 0, escalates immediately to P0, halts the agent, drafts an incident notification for Dr. Lewis, and logs the event to SharePoint → AI-Ops → Incidents before any other output is produced.

## Audit Log

Every fleet health report generated by this skill is written to SharePoint → AI-Ops → Fleet-Health → Audit-Log/ with a timestamp, the identity of the requestor, the data sources queried, and a hash of the report content. The audit log is append-only and reviewed by Dr. Lewis monthly to ensure that fleet monitoring itself has not been bypassed or tampered with. Quarterly summaries delivered to Matt Mathison are additionally logged with his acknowledgment timestamp once received.

## Deprecation

This skill is deprecated when MBL adopts a dedicated agent observability platform (e.g., a purpose-built monitoring dashboard within Krista.ai or a third-party tool) that natively produces fleet health reports with equivalent or superior coverage. Before deprecation, Dr. Lewis must verify that the replacement system captures HITL compliance tracking, PHI-adjacent output flagging for Allevio, and the cost anomaly detection rules encoded here. Deprecation requires a 30-day parallel run and sign-off from Dr. Lewis.
