---
name: alert-threshold-designer
description: "Design alert thresholds to reduce noise and catch real problems. Use when the user says 'alert thresholds', 'alert tuning', 'too many false alerts', 'alert fatigue', 'what should the threshold be', 'alert is too noisy', 'calibrate the alerts', 'when should this alert fire', 'P95 threshold', or 'alert configuration'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--service <name>] [--metric <metric-name>] [--mode <design|tune|review>]"
---

# Alert Threshold Designer

Design and tune alert thresholds for MBL engineering services. Alert thresholds are wrong in two directions: too tight (fires on normal variance, creating alert fatigue) or too loose (misses real problems until users complain). This skill uses signal-to-noise methodology to calibrate thresholds that fire on actionable problems and stay silent during normal operations.

## When to Use
- New service is going to production and needs alerting from Day 1
- On-call engineer is ignoring alerts because they fire too often (alert fatigue)
- An incident occurred but no alert fired (threshold was too loose)
- After a significant traffic or load change — previous thresholds may no longer fit
- Monthly alerting health review (% of alerts that resulted in actual incidents)

## Threshold Design Methodology

```
Step 1 — Collect baseline data
  Run the service under normal load for at least 1 week
  Record: mean, standard deviation, P95, P99, min, max for each metric
  Note: daily and weekly patterns (traffic spikes, scheduled jobs)

Step 2 — Define "normal" range
  Normal = mean ± 2-3 standard deviations
  Use P95/P99 for latency (not mean — mean hides tail latency problems)
  Account for known cycles (Monday morning spikes, end-of-month batch)

Step 3 — Set threshold above the noise floor
  Alert threshold = highest point of "normal" × 1.2-1.5 buffer
  Too tight: alert fires during routine traffic spikes
  Too loose: alert fires only after significant damage is done

Step 4 — Test the threshold
  Replay historical data: would this threshold have caught past incidents?
  Would it have fired during normal traffic peaks?
  Adjust until the signal-to-noise ratio is acceptable (>80% of alerts = real problems)

Step 5 — Add time duration to reduce noise
  Single datapoint spike → WARN, not page
  Sustained threshold breach → PAGE
  Standard: alert fires if metric exceeds threshold for 5+ consecutive minutes
```

## Standard Threshold Reference

### HTTP APIs

| Metric | Typical Baseline | Alert (P2) | Alert (P1) | Duration |
|--------|----------------|-----------|-----------|---------|
| Error rate | 0.1-0.5% | >2% | >5% | 5 min |
| P95 latency | 100-300ms | >500ms | >2s | 5 min |
| P99 latency | 300-800ms | >1s | >5s | 5 min |
| Request rate | Varies | Drops >50% from baseline | Drops to 0 | 2 min |

### Database

| Metric | Typical Baseline | Alert (P2) | Alert (P1) | Duration |
|--------|----------------|-----------|-----------|---------|
| Query latency P95 | 5-50ms | >100ms | >500ms | 5 min |
| Connection pool usage | 20-60% | >80% | >95% | 2 min |
| Replication lag | <1s | >30s | >5min | 3 min |
| Disk usage | <70% | >80% | >90% | 15 min |

### Claude API (Agent Systems)

| Metric | Typical Baseline | Alert (P2) | Alert (P1) | Duration |
|--------|----------------|-----------|-----------|---------|
| Daily cost | Establish week-1 baseline | >baseline × 1.5 | >baseline × 3 | Daily |
| Error rate | <1% | >5% | >15% | 5 min |
| Response latency P95 | 2-8s (varies by model) | >15s | >30s | 5 min |
| Rate limit hits | 0 (ideally) | >10/hour | >50/hour | 1 hour |

### Infrastructure (Azure)

| Metric | Typical Baseline | Alert (P2) | Alert (P1) | Duration |
|--------|----------------|-----------|-----------|---------|
| CPU utilization | 20-60% | >80% | >95% | 10 min |
| Memory utilization | 40-70% | >85% | >95% | 5 min |
| Disk I/O latency | <5ms | >50ms | >200ms | 5 min |

## Output Format

```markdown
# Alert Threshold Design — <Service/Metric>
**Date:** <date> | **Designer:** Dr. John Lewis
**Service:** <name> | **Baseline collection period:** <N> days

---

## Baseline Analysis

| Metric | Mean | Std Dev | P95 | P99 | Max (14d) |
|--------|------|---------|-----|-----|-----------|
| HTTP error rate | 0.3% | 0.15% | 0.8% | 1.2% | 2.1% |
| HTTP P95 latency | 145ms | 45ms | 280ms | 420ms | 890ms |
| DB query P95 | 12ms | 8ms | 42ms | 78ms | 245ms |

**Traffic pattern notes:** Monday 9am spike 2× baseline; Friday 3pm 1.5× baseline; otherwise stable

---

## Recommended Thresholds

| Alert | Metric | P2 Threshold | P1 Threshold | Duration | Rationale |
|-------|--------|-------------|-------------|---------|-----------|
| HighErrorRate | HTTP error % | >2% | >5% | 5 min | Max observed normal: 2.1%; threshold set above with buffer |
| HighLatency | HTTP P95 ms | >500ms | >2,000ms | 5 min | Baseline P95 280ms; 500ms = problem with buffer |
| DBSlow | DB query P95 ms | >100ms | >500ms | 5 min | Baseline 42ms; 100ms = index or load problem |
| ServiceDown | Request rate | 0 for 2 min | N/A (same) | 2 min | 0 requests = down, not a threshold question |

---

## Alert Message Templates

```
P2: [Meeting Intelligence] High error rate: 3.2% (threshold: 2%) — sustained 6 min
    Runbook: https://sharepoint.../runbooks/high-error-rate
    Dashboard: https://...

P1: [Meeting Intelligence] SERVICE DOWN — 0 requests for 3 minutes
    Runbook: https://sharepoint.../runbooks/service-down
    Page Dr. Lewis: 602-880-6491
```

---

## Historical Validation

**Would these thresholds have caught past incidents?**
| Incident | Date | Max metric value | Would alert have fired? |
|---------|------|----------------|----------------------|
| DB connection exhaustion | 2026-04-12 | Error rate: 18% | ✅ P1 would have fired at 5 min |
| Deploy with bad config | 2026-03-28 | Error rate: 45% | ✅ P2 at 2 min |

**False positives at these thresholds?**
| Traffic event | Date | Max metric value | Would alert have fired? |
|-------------|------|----------------|----------------------|
| Monday morning spike | 2026-06-10 | P95: 320ms | ❌ No alert (good) |
| End-of-month batch | 2026-05-31 | Error rate: 1.8% | ❌ No alert (good) |

**Signal-to-noise estimate:** >90% of alerts would correspond to real problems
```

## Output Contract
- Historical validation always performed — thresholds not validated against history are guesses
- Duration always specified — instantaneous threshold breaches almost always produce false positives
- Alert message templates always included — on-call engineers shouldn't have to compose the message
- Baseline collection always documented — thresholds without baselines are arbitrary
- HITL required: Dr. Lewis reviews and approves alert thresholds before going live; P1 alerts always reviewed by Dr. Lewis

## System Dependencies
- **Reads from:** Monitoring platform (Azure Monitor, Prometheus); historical metric data; past incident log
- **Writes to:** Alert configuration in monitoring platform; alert runbooks (SharePoint/Engineering)
- **HITL Required:** Dr. Lewis approves all alert configurations; P1 alert changes require explicit approval

## Test Cases
1. **Golden path:** Design thresholds for MBL Meeting Intelligence API → 14 days of baseline data: mean error rate 0.3%, P95 latency 145ms; set P2 error threshold at 2% (3 min), P1 at 5% (3 min); P2 latency at 500ms (5 min), P1 at 2000ms; validated against 3 past incidents (all caught); 2 traffic spikes (no false positives)
2. **Edge case:** Service has only been running for 3 days — not enough baseline data → set conservative starting thresholds using industry reference values (P2: 2% errors, P1: 5%); review and tune after 2 weeks of data; document that thresholds are provisional
3. **Adversarial:** Team sets CPU >80% as a P1 alert → CPU >80% is almost never actionable without more context; what is the service doing? Is it recovering? Is there user impact?; relabel as P3 or remove entirely; CPU alerts only useful when paired with latency or error rate degradation; teach the on-call engineer what's actually actionable

## Audit Log
Alert threshold configurations retained with rationale. Changes to thresholds logged. Signal-to-noise reviews conducted quarterly.

## Deprecation
Retire when observability platform supports ML-based anomaly detection (automatic baseline learning and threshold adjustment).
