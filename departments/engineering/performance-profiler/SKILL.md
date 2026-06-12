---
name: performance-profiler
description: "Profile and diagnose system performance issues. Use when the user says 'slow API', 'performance problem', 'latency spike', 'high CPU', 'memory leak', 'database slow queries', 'why is this slow', 'profiling', 'performance investigation', 'response time', or 'throughput problem'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--system <name>] [--symptom <latency|cpu|memory|db>] [--mode <diagnose|profile|fix>]"
---

# Performance Profiler

Diagnose and resolve system performance issues for MBL engineering. Performance problems follow predictable patterns — 80% of incidents are caused by 20% of root causes (N+1 queries, missing indexes, unbounded result sets, connection pool exhaustion, and memory leaks). This skill provides a structured diagnostic process that finds the root cause efficiently, rather than guessing at fixes.

## When to Use
- API response times are higher than baseline
- Database queries taking longer than expected
- CPU or memory usage trending upward without clear cause
- User complaint: "the system is slow"
- Pre-release performance testing before a major deployment
- After a schema or code change introduces regression

## Diagnostic Framework

```
Step 1 — Characterize the symptom (before investigating)
  When did it start? (deployment? data growth? traffic increase?)
  Is it consistent or intermittent? (consistent = code/data; intermittent = resource contention)
  What's the scope? (one endpoint? all reads? specific user? specific entity?)
  What's the baseline? (what was the response time before this was a problem?)

Step 2 — Measure, don't guess
  Get actual numbers: response time P50/P95/P99, error rate, throughput
  Use profiling tools — do not optimize based on intuition alone
  Identify the bottleneck: is it application code, database, network, or external API?

Step 3 — Isolate the hotspot
  Top-down: start at the network boundary → application → database
  Reproduce in isolation before fixing in production
  Fix one thing at a time — multiple changes obscure root cause
```

## Common Root Causes and Diagnostics

### Database Performance

| Symptom | Root Cause | Diagnostic | Fix |
|---------|-----------|-----------|-----|
| Slow queries on large tables | Missing index | `EXPLAIN ANALYZE <query>` → seq scan | Add index on WHERE/ORDER columns |
| N+1 query pattern | ORM lazy loading | Count DB calls per request (>10 = likely N+1) | Eager load / JOIN |
| Connection pool exhausted | Pool too small or leak | Check `pg_stat_activity` for idle connections | Increase pool size; fix leak |
| Long-running transactions | Unfinished transaction holds locks | `pg_locks` + `pg_stat_activity` | Reduce transaction scope; add timeout |
| Unbounded result set | Missing LIMIT | Query returns >10K rows | Add pagination and LIMIT |

### Application Performance (Rust / OpenFang context)

```bash
# CPU profiling (Rust)
cargo build --release --features profiling
perf record --call-graph dwarf ./target/release/openfang
perf report

# Heap allocation profiling
cargo build --features dhat-heap
# or use heaptrack

# Async task stalls
tokio-console  # live view of tokio async runtime
```

| Symptom | Root Cause | Fix |
|---------|-----------|-----|
| Blocking sync call in async context | sync I/O in async fn | Use `tokio::task::spawn_blocking` |
| Arc clone in hot path | Unnecessary clones | Profile clone frequency; use references |
| String allocation in loop | Format! in tight loop | Pre-allocate or use write! to buffer |
| Channel backpressure | Consumer too slow | Add buffer; spawn more consumers |

### Claude API Performance

| Issue | Root Cause | Fix |
|-------|-----------|-----|
| High latency | Large prompt; no caching | Enable prompt caching; cache system prompt |
| Token costs high | Redundant context | Use `cache_control: ephemeral` on stable content |
| Rate limit errors | Burst pattern | Add exponential backoff; distribute requests |

## Output Format

```markdown
# Performance Investigation — <System/Endpoint>
**Date:** <date> | **Investigator:** Dr. John Lewis
**Reported symptom:** <what was reported>
**Baseline:** <expected performance>
**Observed:** <actual performance>

---

## Diagnostic Summary

**Root cause:** <specific finding>
**Impact scope:** <what's affected and how many users/requests>
**Fix complexity:** Quick fix (hours) / Medium (days) / Major (weeks)

---

## Investigation Steps Taken

1. **Characterize:** Started <when>; consistent; affects all invoice queries; baseline was <50ms, now >2s
2. **Measure:** P50: 1.8s, P95: 4.2s, P99: 8.1s — confirmed in metrics
3. **Isolate:** Database is bottleneck (app processing: 12ms; DB: 1.8s avg)
4. **Root cause:** Missing index on `invoices.company_id` — sequential scan on 2.3M row table

---

## Root Cause Analysis

**Finding:** `SELECT * FROM invoices WHERE company_id = $1 ORDER BY created_at DESC` 
performing sequential scan. Table has 2.3M rows. No index on `company_id`.

**Evidence:**
```
EXPLAIN ANALYZE output:
Seq Scan on invoices  (cost=0.00..45000.00 rows=2300000 width=256)
  Filter: (company_id = '...'::uuid)
  Rows removed by filter: 2299847
Planning time: 0.3ms  |  Execution time: 1847ms
```

---

## Fix

**Immediate:** Add index (can be done without downtime using CONCURRENTLY)
```sql
CREATE INDEX CONCURRENTLY idx_invoices_company_id 
ON invoices(company_id, created_at DESC);
```

**Estimated improvement:** 1.8s → <10ms for typical company queries

**Validation:** Re-run EXPLAIN ANALYZE after index; confirm Index Scan replaces Seq Scan

---

## Prevention

- Add index review to schema migration checklist
- Slow query log threshold: flag queries >100ms in monitoring
- PR review checklist: confirm all FK columns are indexed
```

## Output Contract
- Root cause always specific — "database is slow" is a symptom, not a root cause
- Evidence always included (EXPLAIN ANALYZE output, metrics, profiler traces)
- Fix always specific with validation step — how will you know it worked?
- Prevention always included — same root cause recurring is a process failure
- HITL required: Dr. Lewis reviews fix before production deployment; database index changes require explicit approval; fixes affecting PHI storage require compliance review

## System Dependencies
- **Reads from:** Application metrics, database query plans (`EXPLAIN ANALYZE`), profiler output, error logs
- **Writes to:** Performance investigation report (SharePoint/Engineering)
- **HITL Required:** Dr. Lewis approves production fixes; schema changes to Allevio require compliance check

## Test Cases
1. **Golden path:** Invoice query response time 2s (was <50ms) → missing index on `company_id`; `CREATE INDEX CONCURRENTLY`; response time drops to 8ms; slow query log threshold set to 100ms for future detection
2. **Edge case:** Performance regressed after a "small" code change → always check recent deployments first; diff the code change; add request timing instrumentation to isolate whether it's application or DB layer; revert if no clear fix within 2 hours if user-facing impact is high
3. **Adversarial:** Business wants to add 20 new columns to an already-slow table → adding columns doesn't directly slow queries, but wide rows increase I/O; real fix is the missing index; document that column additions are not the cause; fix the root issue, then evaluate schema normalization as a separate initiative

## Audit Log
Performance investigations retained. Root cause analysis documented. Production fixes logged with before/after metrics.

## Deprecation
Retire when entity deploys observability platform (Datadog, Honeycomb, Grafana + Tempo) with distributed tracing and automated anomaly detection.
