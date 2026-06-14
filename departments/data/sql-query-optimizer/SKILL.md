---
name: sql-query-optimizer
description: "Optimize SQL queries for performance and correctness. Use when the user says 'slow query', 'optimize SQL', 'query is timing out', 'fix this SQL', 'SQL performance', 'query optimization', 'explain this query', 'rewrite this SQL', 'query plan', 'index optimization', 'N+1 query', or 'database performance'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--db <postgres|bigquery|mysql>] [--issue <slow|incorrect|n+1|memory>]"
---

# SQL Query Optimizer

Diagnose and optimize SQL queries for performance, correctness, and maintainability. Slow queries are usually caused by one of a handful of problems: missing indexes, N+1 patterns, suboptimal joins, or fetching more data than needed. This skill provides a structured diagnostic process for any SQL performance issue, plus common query patterns for MBL's data stack (PostgreSQL + BigQuery).

## When to Use
- A query is timing out or running for >10 seconds
- A dashboard is loading slowly
- An ETL pipeline is taking too long to run
- A query is producing incorrect results
- Code review: a new query needs performance assessment before deployment
- Building an analytics query from scratch — write it right the first time

## Query Diagnostic Framework

```
Step 1: EXPLAIN ANALYZE (PostgreSQL) / EXPLAIN (BigQuery)
  Run EXPLAIN ANALYZE on the query to see the query plan
  Look for:
    - Sequential scans on large tables (usually means missing index)
    - Nested loop joins on large datasets (usually means missing index or bad join order)
    - High estimated vs. actual row counts (stale statistics)
    - Sort operations on large datasets (add index or reduce dataset first)

Step 2: Identify the bottleneck
  Which step in the query plan is the most expensive?
  Is it a table scan, a join, a sort, or an aggregation?
  Fix the most expensive step first

Step 3: Apply the fix
  Missing index → CREATE INDEX
  N+1 pattern → rewrite as JOIN or subquery
  Cartesian product → add missing JOIN condition
  Fetching too much data → add WHERE clause earlier, or SELECT only needed columns
  Sorting on large dataset → add index on the ORDER BY column, or aggregate before sorting

Step 4: Verify improvement
  Re-run EXPLAIN ANALYZE after the fix
  Confirm actual execution time improved
  Check correctness: does the result still match expected output?
```

## Common Performance Patterns

```sql
-- ANTI-PATTERN 1: Selecting all columns when only some are needed
-- Bad:
SELECT * FROM meetings JOIN summaries ON meetings.id = summaries.meeting_id;

-- Better:
SELECT meetings.title, summaries.content, summaries.created_at
FROM meetings 
JOIN summaries ON meetings.id = summaries.meeting_id;

-- ANTI-PATTERN 2: Filtering after a join (should filter before)
-- Bad:
SELECT m.title, s.content
FROM meetings m
JOIN summaries s ON m.id = s.meeting_id
WHERE m.entity = 'MBL';

-- Better (filter in CTE first):
WITH mbl_meetings AS (
  SELECT id, title FROM meetings WHERE entity = 'MBL'
)
SELECT m.title, s.content
FROM mbl_meetings m
JOIN summaries s ON m.id = s.meeting_id;

-- ANTI-PATTERN 3: N+1 in a loop (ORM problem — avoid correlated subqueries)
-- Bad:
SELECT *, 
  (SELECT COUNT(*) FROM action_items WHERE meeting_id = m.id) as item_count
FROM meetings m;

-- Better:
SELECT m.*, COALESCE(ai.item_count, 0) as item_count
FROM meetings m
LEFT JOIN (
  SELECT meeting_id, COUNT(*) as item_count
  FROM action_items
  GROUP BY meeting_id
) ai ON m.id = ai.meeting_id;
```

## Output Format

```markdown
# SQL Query Optimization — <Query Description>
**Date:** <date> | **DB:** PostgreSQL / BigQuery
**Problem:** Slow / Incorrect / Memory / N+1

---

## Original Query

```sql
[Paste original query here]
```

**Current performance:** <execution time, if known>
**Problem observed:** <timeout / incorrect results / etc.>

---

## Diagnostic Findings

**EXPLAIN ANALYZE output (key lines):**
```
Seq Scan on meetings (cost=0.00..145.20 rows=5820 width=148) (actual time=0.023..12.842 rows=5820 loops=1)
  Filter: (entity = 'MBL')
  Rows Removed by Filter: 12043
```

**Root cause:** Sequential scan on `meetings` table (17,863 total rows) with `entity` filter — missing index on `entity` column

**Other issues found:**
- [Additional issue if any]

---

## Optimized Query

```sql
-- Add index first:
CREATE INDEX idx_meetings_entity ON meetings(entity);

-- Optimized query:
WITH mbl_meetings AS (
  SELECT id, title, created_at
  FROM meetings
  WHERE entity = 'MBL'  -- now uses index
)
SELECT 
  m.title,
  m.created_at,
  s.content,
  COALESCE(ai.item_count, 0) as action_item_count
FROM mbl_meetings m
LEFT JOIN summaries s ON m.id = s.meeting_id
LEFT JOIN (
  SELECT meeting_id, COUNT(*) as item_count
  FROM action_items
  GROUP BY meeting_id
) ai ON m.id = ai.meeting_id
ORDER BY m.created_at DESC;
```

**Performance improvement:** <Xms → Yms; X× faster>
**Correctness verified:** [How verified — sample result comparison]

---

## Index Recommendations

| Table | Column | Index type | Rationale |
|-------|--------|-----------|---------|
| meetings | entity | B-tree | Frequent WHERE filter; high cardinality |
| summaries | meeting_id | B-tree | FK join column |
| action_items | meeting_id | B-tree | FK join column |

---

## BigQuery-Specific Notes (if applicable)

- **Partition by date:** If querying time-series data, always filter on the partition column (usually `_PARTITIONTIME` or a date field) to reduce data scanned
- **Clustering:** Use `CLUSTER BY` on frequently-filtered columns to reduce scan cost
- **Avoid SELECT *:** BigQuery bills by bytes scanned; SELECT * is expensive on wide tables
```

## Output Contract
- EXPLAIN ANALYZE always run before diagnosis — guessing the bottleneck without the query plan is unreliable
- Root cause always stated — "slow query" without a cause produces trial-and-error fixes
- Before and after performance always compared — quantify the improvement
- Correctness check always done after optimization — a fast query with wrong results is worse than a slow correct one
- HITL required: Dr. Lewis reviews query changes before they're deployed to production databases; any schema changes (indexes, partitions) require Dr. Lewis approval; query changes affecting financial data require Dr. Lewis approval

## System Dependencies
- **Reads from:** Database query plan (EXPLAIN ANALYZE), production database (read-only for analysis)
- **Writes to:** Optimized query implementation; index migration script (reviewed before execution)
- **HITL Required:** Dr. Lewis approves schema changes; production query changes reviewed before deployment

## Test Cases
1. **Golden path:** Dashboard query timing out on meetings table → EXPLAIN shows sequential scan on 17K row meetings table filtered by entity; fix: CREATE INDEX on entity column; query rewrites pre-filter using CTE; performance: 12.8s → 0.3s; correctness: sample output matches original 10 of 10 records spot-checked
2. **Edge case:** Query is fast in development (100 rows) but slow in production (5M rows) → this is the classic "works locally" problem; always profile queries against production-scale data before deploying; in development, add `LIMIT 100` to simulate production load when the real data is small; the query plan can change dramatically at scale
3. **Adversarial:** Developer says "the query is fast enough at 2 seconds — why optimize?" → 2 seconds per query × 50 dashboard refreshes per day × 10 users = 1000 queries × 2s = 33 minutes of CPU time per day; also, a 2-second query response time creates a poor dashboard experience; for analytical queries, target <500ms for dashboard performance; for batch ETL, optimize for throughput, not latency

## Audit Log
Query optimizations documented with before/after performance. Index additions logged with rationale. Schema changes logged with migration script reference.

## Deprecation
Retire when MBL has a dedicated data engineering function with established query review and optimization practices.
