---
name: agops-perf-latency-monitor
description: "Monitor agent workflow latency for MBL Partners and portfolio entities. Use when you need to measure end-to-end workflow time from trigger to output delivery, break down per-step latency in a multi-step agent pipeline, check SLA compliance for prep sheets or weekly summaries, alert on latency threshold breaches, diagnose a slow agent run, identify whether latency is caused by large context windows or slow API response or output destination failure, produce workflow latency dashboards, track latency trends over time, benchmark before-and-after optimization changes, report SLA performance to Dr. Lewis, set new SLA thresholds for a workflow class, investigate a Monday.com or email delivery delay, measure Krista.ai orchestration overhead, audit batch window timing compliance, compare real-time vs batch latency profiles, generate latency root cause analysis reports, or validate that a new skill meets its SLA before production deployment."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[workflow-id|skill-name|all] [period: today|7d|30d|custom] [action: status|alert|rca|sla-report]"
---

# Agent Performance Latency Monitor

Measure, track, and alert on end-to-end latency for all MBL Partners agent workflows — from the moment a trigger fires through every processing step to final output delivery — so that Dr. John Lewis can enforce SLAs, identify performance regressions, and optimize the workflows Matt Mathison and the portfolio depend on. Latency is the user-visible face of agent reliability; this skill ensures it stays within defined bounds.

## When to Use

- A pre-meeting prep sheet has not arrived within the 5-minute SLA window and the root cause — large context, API slowdown, or delivery destination failure — must be identified and resolved before the next scheduled run.
- A new skill is being validated for production deployment and must demonstrate SLA compliance across at least 5 test runs before Dr. Lewis approves it for the live workflow schedule.
- A latency alert fires for any workflow, and a per-step breakdown is needed to determine whether the bottleneck is the Krista.ai orchestration layer, the Claude API call, the output formatting step, or the downstream delivery system (Monday.com, Outlook, Slack).
- The monthly latency trend report is due and all workflow classes must be reviewed for SLA compliance rate, p95 latency, and any degradation patterns that require optimization action.

## Agent Performance Latency Monitor Framework

```
LATENCY MONITORING FRAMEWORK — MBL PARTNERS AGENT OPERATIONS

═══════════════════════════════════════════════════════════
SECTION 1: SLA DEFINITIONS BY WORKFLOW CLASS
═══════════════════════════════════════════════════════════
  WORKFLOW CLASS          | SLA TARGET | ALERT THRESHOLD | CRITICAL THRESHOLD
  ─────────────────────────────────────────────────────────────────────────
  Real-Time Alerts         | < 1 min    | > 2 min          | > 5 min
  Pre-Meeting Prep Sheets  | < 5 min    | > 8 min          | > 15 min
  On-Demand Analysis       | < 10 min   | > 15 min         | > 30 min
  Weekly Summaries         | < 15 min   | > 25 min         | > 45 min
  Batch Reports (monthly)  | < 60 min   | > 90 min         | > 180 min
  Cost / Budget Reports    | < 30 min   | > 45 min         | > 90 min

  SLA COMPLIANCE TARGETS
    - p50 (median) latency: at or below SLA target
    - p95 latency: at or below 2× SLA target
    - SLA breach rate: < 5% of runs per 30-day period per workflow class
    - Critical threshold breach: 0 tolerance → immediate Dr. Lewis alert

═══════════════════════════════════════════════════════════
SECTION 2: LATENCY MEASUREMENT ARCHITECTURE
═══════════════════════════════════════════════════════════
  MEASUREMENT POINTS (instrument at each boundary)
    T0: Trigger received by Krista.ai orchestration layer
    T1: Skill invocation begins (Krista.ai → Claude API call initiated)
    T2: Claude API first token received (time to first token)
    T3: Claude API response complete (full generation done)
    T4: Output post-processing complete (formatting, validation, HITL gate)
    T5: Output delivered to destination (Monday.com / Outlook / Slack / log)

  PER-STEP LATENCY BREAKDOWN
    Orchestration overhead:  T1 - T0  (Krista.ai routing + skill setup)
    API queue time:          T2 - T1  (time in Anthropic API queue)
    Time to first token:     T2 - T1  (Claude generation start lag)
    Generation time:         T3 - T2  (full response generation duration)
    Post-processing time:    T4 - T3  (formatting + validation + HITL check)
    Delivery time:           T5 - T4  (output destination write latency)
    END-TO-END (E2E):        T5 - T0  (the SLA-measured value)

  INSTRUMENTATION REQUIREMENTS
    - Each run emits a structured latency record (JSON) to the monitoring log
    - Record fields: run_id, workflow_class, entity, model, token_count (in/out),
      cache_hit, T0–T5 timestamps, E2E_ms, SLA_target_ms, SLA_status [PASS|BREACH]
    - Records are append-only; no in-place modification

═══════════════════════════════════════════════════════════
SECTION 3: ALERT PROTOCOLS
═══════════════════════════════════════════════════════════
  ALERT THRESHOLD BREACH (E2E > alert threshold)
    - Log alert event with run_id and per-step breakdown
    - Notify Dr. Lewis via preferred channel within 5 minutes
    - Do not pause workflow automatically (alert only)
    - Dr. Lewis determines whether to retry, pause, or investigate

  CRITICAL THRESHOLD BREACH (E2E > critical threshold)
    - Log critical event immediately
    - Notify Dr. Lewis within 2 minutes (highest-priority channel)
    - If workflow is automated and recurring: pause next scheduled run
    - Generate preliminary RCA (Section 4) automatically
    - Dr. Lewis reviews and decides resume/remediate before next run

  SLA BREACH RATE ALERT (> 5% breach rate in 30-day rolling window)
    - Weekly SLA compliance report flags the workflow class
    - Dr. Lewis reviews optimization options (agops-cost-optimizer, prompt changes)
    - Threshold not adjusted without documented rationale and Dr. Lewis approval

═══════════════════════════════════════════════════════════
SECTION 4: ROOT CAUSE ANALYSIS (RCA) FRAMEWORK
═══════════════════════════════════════════════════════════
  RCA DECISION TREE

  IF orchestration overhead (T1-T0) > 30 sec:
    → Suspect: Krista.ai routing delay, skill cold start, queue backlog
    → Action: Check Krista.ai status; review skill startup time; check concurrency

  IF API queue time (T2-T1) > 60 sec:
    → Suspect: Anthropic API rate limit, high-demand period, large model queue
    → Action: Check Anthropic status page; review rate limit headroom;
               consider model downgrade to less-queued tier

  IF generation time (T3-T2) is high relative to output token count:
    → Suspect: Very large input context (cache miss increases processing time),
               Complex reasoning in prompt, Streaming disabled
    → Action: Check context size; verify cache hit; enable streaming if supported

  IF post-processing time (T4-T3) > 60 sec:
    → Suspect: HITL gate waiting (expected for Matt Mathison outputs),
               Output validation failure requiring retry, Formatting error loop
    → Action: If HITL gate: expected; if validation failure: check output schema

  IF delivery time (T5-T4) > 30 sec:
    → Suspect: Monday.com API throttle, Outlook send delay, Slack rate limit,
               Network issue between Krista.ai and destination
    → Action: Check destination system status; retry delivery; check credentials

  CONTEXT SIZE LATENCY CORRELATION
    - Large context (> 50K tokens) adds significant generation time
    - Cache miss on large system prompt adds ~500ms–2s queue processing
    - Track: context_tokens_in vs. generation_time_ms for regression detection

═══════════════════════════════════════════════════════════
SECTION 5: LATENCY TREND TRACKING AND REPORTING
═══════════════════════════════════════════════════════════
  DAILY METRICS (automated, written to monitoring store)
    - Runs completed: N | SLA pass: N | SLA breach: N | Breach rate: X%
    - p50 / p95 / p99 E2E latency by workflow class
    - Slowest run: [run_id, E2E_ms, root cause if RCA triggered]

  WEEKLY SUMMARY (Dr. Lewis review)
    - SLA compliance rate by workflow class (7-day)
    - Latency trend chart (p50 / p95 by day)
    - Alerts and critical events in period
    - Open optimization actions

  MONTHLY TREND REPORT
    - 30-day SLA compliance rate per workflow class
    - P95 latency trend (improving / stable / degrading)
    - RCA resolution rate (% of alerts with documented root cause)
    - Latency impact of any architecture changes in period
    - Recommendations for next month
```

## Output Format

```markdown
## Agent Latency Report — [Workflow Class|All] | [Period]

**Generated:** [timestamp]  **Reviewed by:** Dr. John Lewis

### SLA Compliance Summary
| Workflow Class | SLA Target | p50 E2E | p95 E2E | Breach Rate | Status |
|----------------|-----------|---------|---------|-------------|--------|
| Real-Time Alerts | <1 min | Xs | Xs | X% | ✓ PASS |
| Prep Sheets | <5 min | Xs | Xs | X% | ✓ PASS |
| Weekly Summaries | <15 min | Xs | Xs | X% | ⚠ WATCH |
| Batch Reports | <60 min | Xs | Xs | X% | ✓ PASS |

### Step-Level Latency Breakdown (most recent run or avg)
| Step | Avg Duration | % of E2E | Status |
|------|-------------|----------|--------|
| Orchestration (T0→T1) | Xs | X% | ✓ |
| API Queue (T1→T2) | Xs | X% | ✓ |
| Generation (T2→T3) | Xs | X% | ✓ |
| Post-Processing (T3→T4) | Xs | X% | ✓ |
| Delivery (T4→T5) | Xs | X% | ✓ |
| **E2E Total** | **Xs** | **100%** | |

### Alerts This Period
[None | Alert ID, workflow, E2E time, SLA target, step breakdown, RCA, status]

### Root Cause Analysis (if triggered)
**Run:** [run_id] | **Class:** [workflow] | **E2E:** Xs (SLA: Xs)
- Bottleneck step: [step name] — Xs ([X]% of E2E)
- Root cause: [diagnosis from RCA decision tree]
- Remediation: [action taken / recommended]
- Status: [Resolved / Open — Dr. Lewis review required]

### Recommendations
1. [Specific action with expected latency improvement]
```

## Output Contract

- **Every latency measurement is recorded at actual clock boundaries (T0 through T5) with millisecond precision, and no step is estimated or interpolated — if instrumentation is missing for a step, that step is flagged as "unmetered" in the report rather than filled with a proxy value.** Accurate per-step data is the only way to perform meaningful RCA and distinguish Krista.ai orchestration issues from Claude API performance issues from delivery destination problems. Unmetered steps are escalated to Dr. Lewis as an instrumentation gap requiring a fix before the next production run.

- **SLA thresholds are treated as hard operational commitments, not aspirational targets — any breach is logged, any critical breach triggers immediate Dr. Lewis notification, and the breach rate is tracked as a key performance indicator for the overall MBL AI operations program.** The 5-minute SLA for pre-meeting prep sheets exists because Matt Mathison's schedule does not accommodate late prep materials; a prep sheet that arrives after the meeting has started is a zero-value output regardless of its quality. Latency reliability is therefore a direct proxy for the program's operational credibility.

- **RCA reports are generated automatically for every alert-threshold breach and are never closed without a documented root cause and disposition from Dr. Lewis, even if the breach was a one-time anomaly.** Pattern recognition across RCA records — multiple breaches with the same root cause — is the mechanism by which systemic latency problems are surfaced and escalated to architecture-level fixes. An undocumented breach is a missed data point; Dr. Lewis's RCA library is a living record of the MBL AI operations system's performance history.

## System Dependencies

**Reads from:**
- Krista.ai orchestration run logs (T0, T1 timestamps, workflow metadata)
- Claude API response metadata (T2, T3 timestamps, token counts, cache status)
- Output destination delivery receipts (T5 timestamp — Monday.com, Outlook, Slack)
- SLA definition registry (maintained by Dr. Lewis; updated per workflow class)
- agops-cost-tracker (token counts for context-size / latency correlation)

**Writes to:**
- Latency monitoring store (structured JSON records per run, append-only)
- Alert log (threshold breaches with per-step breakdown)
- RCA log (root cause analyses with Dr. Lewis disposition)
- Weekly and monthly latency trend reports (staged for Dr. Lewis review)
- agops-cost-optimizer (latency bottleneck data for scheduling recommendations)

**HITL Required:**
- All critical threshold breach notifications (Dr. Lewis — within 2 minutes)
- All RCA reports before workflow is resumed after a critical breach (Dr. Lewis)
- Monthly latency trend reports before distribution (Dr. Lewis)
- Any SLA threshold adjustment (Dr. Lewis — documented rationale required)

## Test Cases

**Golden Path:** Weekly meeting intelligence summary runs on schedule. T0 fires at 02:00 MT. Krista.ai routes to the skill in 4 seconds (T1). Claude API first token arrives at T2 (12 seconds after T1, Sonnet model, 8,200 input tokens, cache hit). Full generation completes at T3 (58 seconds total generation). Post-processing and HITL gate complete at T4 (22 seconds). Monday.com delivery confirmed at T5 (8 seconds). E2E = 104 seconds. SLA target = 15 minutes. Status: PASS. Latency record written; no alert triggered.

**Edge Case:** Pre-meeting prep sheet trigger fires, but the source calendar event has 14 attendees with full LinkedIn and CRM context injected — input context balloons to 68,000 tokens. Cache miss (first run with this attendee set). Generation time is 4 minutes 12 seconds. Total E2E = 4 minutes 51 seconds — within the 5-minute SLA but in the warning band. Monitor logs the run, notes the large context as a contributing factor, and generates a low-severity advisory suggesting context truncation for attendee sets > 10 people. No alert is fired; no workflow is paused.

**Adversarial:** Monday.com API returns 429 (rate limited) at the delivery step (T4→T5). The skill retries 3 times (30-second backoff each time). After the third retry the delivery still fails. E2E exceeds the critical threshold. Monitor fires the critical alert to Dr. Lewis within 2 minutes, pauses the next scheduled run of this workflow, and generates an RCA attributing the failure to Monday.com API throttling. Dr. Lewis reviews, manually delivers the output via an alternate channel, investigates the rate limit cause, and clears the hold with a documented disposition.

## Audit Log

Every latency measurement event — run record written, alert fired, critical breach triggered, RCA generated, Dr. Lewis HITL disposition recorded, SLA threshold updated — is appended to an immutable audit log with ISO 8601 timestamps, run ID, workflow class, entity, and the specific values that triggered any alert or review. The audit log serves as the operational record for the MBL AI agent program's reliability history and is available for review in monthly ops briefings and quarterly ROI packages. Records are retained for 24 months.

## Deprecation

This skill is deprecated when Krista.ai or a successor orchestration platform natively instruments all five measurement points (T0–T5), enforces the SLA thresholds defined here, fires alerts to Dr. Lewis at the defined severity levels, and produces per-step RCA breakdowns without a separate monitoring skill. Before deprecation, Dr. Lewis must validate that the platform-level monitoring captures the same data fidelity, that the alert channel and response time match the current protocol, and that the historical latency records are migrated or accessible. A 30-day parallel-run period is required.
