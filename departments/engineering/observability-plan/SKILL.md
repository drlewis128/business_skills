---
name: observability-plan
description: "Design observability infrastructure for engineering systems. Use when the user says 'observability', 'monitoring plan', 'how do we know if this is working', 'metrics and logging', 'tracing', 'what should we monitor', 'monitoring strategy', 'how do we detect problems', 'logs metrics traces', or 'system visibility'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--service <name>] [--stack <rust|node|python>] [--mode <design|review|implement>]"
---

# Observability Plan

Design observability infrastructure for MBL engineering systems. Observability is how you know what your system is doing — in real-time and historically. Without it, you discover problems from user complaints, not from monitoring. For MBL's agent systems, observability is also how you understand agent behavior, Claude API usage, and audit trail for compliance purposes.

## When to Use
- New service is being built — design observability before it goes to production
- A production incident took longer than it should — missing visibility was the cause
- Adding Claude API or Krista.ai integration — need to observe LLM behavior and costs
- Allevio compliance requires audit trail and PHI access logging
- Quarterly observability review — are current monitors catching real problems?

## Three Pillars of Observability

```
LOGS — What happened (events)
  Structured JSON logs with consistent fields
  Include: timestamp, level, service, correlation_id, user_id, action, duration
  Avoid: PHI in logs; secrets in logs; unstructured text logs

METRICS — How the system is behaving (numbers over time)
  Key metrics: request rate, error rate, latency (P50/P95/P99), CPU, memory
  Business metrics: agent invocations, Claude API calls, tokens used, cost/day

TRACES — How requests flow through the system (distributed request paths)
  Each request gets a trace_id; spans track individual operations
  Essential for: agent loops with multiple tool calls, multi-service systems
```

## Standard Metrics Checklist

### For Every HTTP Service
```
RED Metrics (the minimum):
  - Request Rate: requests/second by endpoint
  - Error Rate: 4xx and 5xx % by endpoint
  - Duration: P50, P95, P99 latency by endpoint

Additional:
  - Active connections
  - Database query duration
  - External API call duration (Claude, Monday.com, etc.)
```

### For Agent Systems (OpenFang)
```
- Agent loop invocations/hour
- Agent completion rate (success/failure)
- Tool calls per agent loop
- Claude API tokens (input/output) per invocation
- Claude API cost per day
- Agent loop latency (P50/P95)
- Prompt cache hit rate (should be >50% with caching enabled)
- Human-in-the-loop events triggered (count + resolution time)
```

### For HIPAA (Allevio)
```
- PHI access events (count by user, by record type) — required audit log
- Failed authentication attempts (potential breach indicator)
- Unusual access patterns (off-hours, bulk access) — alert on anomalies
- Backup success/failure
- Encryption status (all PHI-at-rest volumes encrypted)
```

## Alert Design Principles

```
Good alerts:
  - Actionable: there is something a human can do right now
  - Specific: the alert message tells you what to investigate
  - Calibrated: fires on real problems, not noise (target: <5 false positives/week)

Bad alerts:
  - "CPU > 80%" — not actionable without context; almost always noise
  - Alert without a runbook — who answers it? What do they do?
  - Everything is P1 — alert fatigue; engineers stop responding

Alert structure:
  [Severity] [Service] [What's wrong]: [Value] vs [Threshold] | [Runbook link]
  Example: [P2] MBL-API high error rate: 4.2% vs <1% threshold | [runbook link]
```

## Output Format

```markdown
# Observability Plan — <Service/System>
**Date:** <date> | **Designer:** Dr. John Lewis
**Service:** <name> | **Entity:** <MBL / portfolio>
**Stack:** Rust/Axum / Node / Python

---

## Observability Summary

**Current state:** No observability / Basic logging / Partial / Comprehensive
**Gap severity:** Critical (flying blind) / Moderate / Minor
**Implementation priority:** P1 / P2 / P3

---

## Logging Design

**Format:** Structured JSON (required)
**Library:** `tracing` (Rust) / `winston` (Node) / `structlog` (Python)

**Required fields in every log entry:**
```json
{
  "timestamp": "ISO 8601",
  "level": "info|warn|error",
  "service": "meeting-intelligence",
  "correlation_id": "uuid",
  "action": "meeting.summarize",
  "duration_ms": 234,
  "user_id": "uuid"
}
```

**Fields to NEVER log:**
- Any PHI (patient name, DOB, diagnosis) — Allevio
- API keys, tokens, passwords
- Full request/response bodies containing PII

**Log retention:** 90 days (standard); 6 years (Allevio HIPAA compliance logs)

---

## Metrics Design

| Metric | Type | Collection | Alert Threshold |
|--------|------|-----------|----------------|
| HTTP request rate | Counter | Prometheus / Azure Monitor | Alert if drops to 0 (service down) |
| HTTP error rate | Gauge | Prometheus | Alert if >2% (P2), >5% (P1) |
| HTTP latency P95 | Histogram | Prometheus | Alert if >500ms sustained 5 min |
| Claude API tokens/day | Counter | Custom in-app | Alert if >10% above baseline |
| Claude API cost/day | Gauge | Anthropic usage API | Alert if >$50/day |
| Agent loop success rate | Gauge | Custom in-app | Alert if <95% |
| DB query latency P95 | Histogram | Prometheus | Alert if >100ms |

---

## Tracing Design

**Instrumentation:** OpenTelemetry (standard; supported by most backends)
**Trace propagation:** W3C TraceContext headers
**Sampling:** 100% in development; 10% in production (adjust based on volume)

**Required spans:**
- HTTP request span (parent)
- Database query spans (child)
- Claude API call spans (child — include token count, model, cache hit)
- Tool execution spans (child — for agent loops)

---

## Alert Definitions

| Alert Name | Metric | Threshold | Severity | Runbook |
|-----------|--------|---------|---------|---------|
| HighErrorRate | HTTP error rate | >2% for 5 min | P2 | [link] |
| ServiceDown | Request rate | 0 for 2 min | P1 | [link] |
| HighLatency | P95 latency | >500ms for 5 min | P2 | [link] |
| ClaudeAPIBudget | Daily cost | >$50 | P2 | [link] |
| PHIAccessAnomaly | PHI access count | >2 std dev from baseline | P2 | [link] |

---

## Dashboards

**Engineering dashboard:** Error rate, latency, request rate by endpoint — for on-call
**Claude API dashboard:** Tokens, cost, cache hit rate — for Dr. Lewis weekly review
**HIPAA audit dashboard:** PHI access events, authentication failures — for compliance

---

## Implementation Plan

| Step | Owner | Sprint | Notes |
|------|-------|--------|-------|
| Add structured logging | [name] | N | Replace current println! / console.log |
| Instrument HTTP layer | [name] | N | Middleware auto-instruments |
| Add Claude API metrics | Dr. Lewis | N | Custom instrumentation |
| Configure alerts | Dr. Lewis | N | Start with 4 core alerts |
| Create dashboards | [name] | N+1 | After metrics flowing for 1 week |
```

## Output Contract
- PHI logging exclusion always documented — Allevio logs must never contain PHI
- Alert runbooks always linked — every alert must have a runbook before going live
- Claude API cost monitoring always included for services using Claude — cost visibility prevents bill shock
- Log retention always specified with compliance requirement — HIPAA = 6 years for Allevio
- HITL required: Dr. Lewis approves alert definitions before they go live; HIPAA audit dashboard reviewed monthly by Dr. Lewis; PHI access anomaly alerts reviewed by Dr. Lewis within 24 hours of firing

## System Dependencies
- **Reads from:** Service code, existing logging configuration, current alerting rules
- **Writes to:** Observability configuration (monitoring platform); alert runbooks (SharePoint/Engineering)
- **HITL Required:** Dr. Lewis reviews alert thresholds and runbooks; PHI anomaly alerts require Dr. Lewis review; Claude API cost alerts require Dr. Lewis action

## Test Cases
1. **Golden path:** Observability plan for Meeting Intelligence API → structured logging with tracing crate; 7 metrics (RED + Claude API); 5 alerts with runbooks; 2 dashboards (engineering + Claude API); HIPAA not applicable; estimated 3 sprint stories (logging, metrics, alerts)
2. **Edge case:** Allevio service handles PHI → additional requirements: PHI access log table in DB (not in log files); access anomaly alert; 6-year retention policy; compliance dashboard; separate alert escalation to Dr. Lewis for any PHI access anomalies
3. **Adversarial:** Engineer says "we log everything, we have observability" → logging everything without structure is not observability; confirm: are logs structured JSON? Is there a correlation_id for request tracing? Are there metrics with alert thresholds? Can you answer "what is the P95 latency of this endpoint right now?" without manual log parsing?

## Audit Log
Observability design documents retained. Alert definition changes logged. HIPAA audit logs retained per compliance requirement (6 years for Allevio).

## Deprecation
Retire when service has comprehensive observability implemented and maintained by a dedicated platform engineering function.
