---
name: self-serve-analytics-builder
description: "Enable non-technical users to answer their own data questions. Use when the user says 'self-serve analytics', 'let the team query data themselves', 'business users accessing data', 'self-service BI', 'Metabase setup', 'non-technical data access', 'data democratization', 'enable the team to find their own answers', 'reduce data team bottleneck', or 'empower stakeholders with data'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--tool <metabase|looker|tableau|powerbi>] [--audience <executive|operations|sales>]"
---

# Self-Serve Analytics Builder

Design and build a self-serve analytics environment so that non-technical users can answer their own data questions without waiting for Dr. Lewis to write a query. The goal is to reduce the data team bottleneck (ad hoc questions consuming 20%+ of Dr. Lewis's time) while maintaining data governance (not everyone should see everything). For MBL, Metabase is the self-serve layer on top of BigQuery — it has a GUI query builder, dashboard sharing, and role-based access control.

## When to Use
- Ad hoc data requests are consuming too much data team time
- Same questions get asked repeatedly — should be self-serve
- Matt Mathison wants to explore data without waiting for a query
- A portfolio company team needs data access but has no technical staff
- Scaling reporting from 1 person (Dr. Lewis) to the broader team

## Self-Serve Architecture for MBL

```
Architecture:
  Layer 1 — Raw data: BigQuery (raw + staging schemas)
             Access: Data engineers only (Dr. Lewis)
  
  Layer 2 — Semantic layer: dbt mart models
             Access: Metabase (read-only service account)
             Principle: All self-serve queries run against marts, never raw tables
  
  Layer 3 — Self-serve BI: Metabase
             Access: Role-based per entity
             Capabilities: Pre-built dashboards + GUI query builder + saved questions

Tool selection:
  Metabase: Best fit for MBL scale (free Community Edition on BigQuery)
             GUI query builder: non-technical users can filter and group without SQL
             Dashboards: pre-built with embedded filters
             Sharing: public links for Matt Mathison mobile access
             Alerts: email/Slack when metric crosses threshold
```

## Self-Serve Readiness Criteria

```
Before enabling self-serve on a dataset, confirm:
  1. Data is in a mart (not raw/staging) — marts have clean field names and documented metrics
  2. Field names are human-readable (no raw column names like "evt_ts_utc_ms")
  3. Metric definitions documented in data catalog
  4. Entity isolation enforced — user can only see their entity's data
  5. PII/PHI scrubbed or masked — never expose in self-serve layer
  6. No Allevio PHI accessible via Metabase (PHI never in BigQuery — confirmed)
```

## Output Format

```markdown
# Self-Serve Analytics Plan — <Entity / Scope>
**Date:** <date> | **Owner:** Dr. John Lewis
**Tool:** Metabase | **Data source:** BigQuery (mart layer)
**Audience:** <Matt Mathison / MBL team / Portfolio company team>

---

## Current Bottleneck Assessment

| Recurring question | Frequency | Time to answer (current) | Time to answer (self-serve) | Priority |
|-------------------|---------|------------------------|--------------------------|---------|
| "What's our pipeline this week?" | 3x/week | 15 min (Dr. Lewis query) | 0 min (live dashboard) | P1 |
| "How many meetings did X entity have?" | Weekly | 10 min | 0 min (dashboard filter) | P1 |
| "What's the status of [deal]?" | 2x/week | 5 min (CRM lookup) | 0 min (CRM link in dashboard) | P2 |
| "Who are our top customers by ARR?" | Monthly | 20 min (query + format) | 0 min (saved question) | P2 |

**Estimated time reclaimed:** ~12h/month for Dr. Lewis

---

## Metabase Setup

### Step 1 — Connect Metabase to BigQuery

```
Connection:
  Host: BigQuery project ID: mbl-analytics
  Service account: metabase-sa@mbl-analytics.iam.gserviceaccount.com
  Datasets to expose: marts only (marts.portfolio, marts.product, marts.ai)
  Datasets to hide: raw, staging, internal (not exposed to Metabase)

Sync frequency: Every 24 hours (schema sync)
```

### Step 2 — Field Metadata in Metabase

```
For each mart table, configure in Metabase Admin:
  entity_id → Field type: Category | Semantic: Entity | Exposed: Yes
  meeting_date → Field type: Date | Exposed: Yes
  amount_usd → Field type: Number | Semantic: Currency | Displayed as: $
  user_email → Field type: Text | Visible: Administrators only (masked from regular users)
```

### Step 3 — Collections and Permissions

```
Metabase collections:
  MBL Executive Collection
    Access: Matt Mathison, Jimmy Lindsley
    Content: Portfolio KPI dashboard, Pipeline dashboard, Weekly meeting summary

  MBL Data Team Collection
    Access: Dr. Lewis only
    Content: Data ops dashboards, pipeline health, raw query workspace

  Allevio Collection
    Access: Allevio CEO, Allevio ops lead
    Content: Allevio-only data (entity_id = 'allevio')
    Isolation: Metabase row-level security by entity_id

  HIVE Collection
    Access: HIVE GP, Dr. Lewis
    Content: HIVE KPIs, Covercy data, LP-restricted metrics
    Isolation: entity_id = 'hive'; LP data restricted to HIVE GP + Dr. Lewis
```

### Step 4 — Pre-Built Dashboards

```
Pre-build these dashboards before enabling self-serve:
  1. Portfolio KPI Dashboard (all entities, entity filter)
  2. Meeting Intelligence Dashboard (meeting counts, action item completion)
  3. Pipeline Dashboard (GoHighLevel → BigQuery)
  4. AI Product Dashboard (HITL rate, cost/session, D7 retention)
```

### Step 5 — GUI Query Builder Enablement

```
Enable Metabase "Ask a Question" for:
  Simple question mode: For Matt Mathison and non-technical users
    - Pick a table, filter, group, summarize — no SQL required
    - Limited to mart tables only (no raw/staging)
  
  Native SQL mode: For Dr. Lewis only
    - Full SQL access to all datasets
    - Not exposed to regular users

Training:
  - 30-minute walkthrough for Matt Mathison (see data-literacy-trainer)
  - Quick-reference card: "The 3 questions you can now answer yourself"
```

---

## Self-Serve FAQ (for non-technical users)

**Q: Can I break something by querying data?**
A: No. Metabase is read-only. You cannot modify any data.

**Q: Can I see data from other portfolio companies?**
A: No. Your account is scoped to your entity only. You will only see your company's data.

**Q: What if I get a number that seems wrong?**
A: Screenshot the question you asked (the filters, the table, the result) and send to Dr. Lewis. He'll investigate.

**Q: How current is the data?**
A: Data refreshes every 24 hours. It may be up to 24h behind real-time.

---

## Adoption Metrics

| Metric | Baseline (month 1) | Target (month 3) |
|--------|----------|---------|
| Active Metabase users | 0 | 4 |
| Self-serve questions answered | 0 | 20/week |
| Ad hoc requests to Dr. Lewis | 15/week | 5/week |
| Dashboard views (executive) | 0 | 3x/week by Matt |
```

## Output Contract
- Self-serve always built on mart layer — never expose raw or staging tables to non-technical users
- Entity isolation always enforced in Metabase — a portfolio company user should never see another entity's data
- PHI never in self-serve layer — Allevio PHI is never in BigQuery; even if it were, it would be masked from self-serve
- Pre-built dashboards always launched before training users — sending users to an empty Metabase instance creates confusion, not adoption
- HITL required: Dr. Lewis configures all Metabase access and permissions; LP-restricted data requires Dr. Lewis + Matt Mathison approval to expose; new self-serve capabilities reviewed by Dr. Lewis before enabling; any user reporting data inconsistency → Dr. Lewis investigates

## System Dependencies
- **Reads from:** BigQuery mart layer; Metabase configuration; data catalog (field definitions)
- **Writes to:** Metabase (dashboards, saved questions, collections, user access); documentation (SharePoint/Data/Self-Serve)
- **HITL Required:** Dr. Lewis owns Metabase configuration; data access controlled by Dr. Lewis; LP data requires Dr. Lewis + Matt Mathison; HIPAA: no PHI in self-serve layer (design-time control)

## Test Cases
1. **Golden path:** Enable self-serve for Matt Mathison → connect Metabase to BigQuery (marts only); create MBL Executive Collection; build 2 pre-built dashboards (Portfolio KPI, Meeting Intelligence); set entity filter default to 'all'; 30-minute 1:1 walkthrough with Matt; Matt can now answer 3 common questions himself (pipeline this week, meeting count by entity, AI summary count); ad hoc requests from Matt drop by 40%
2. **Edge case:** A portfolio company team lead wants to query their own data directly but isn't technically sophisticated → create a portfolio-scoped collection for their entity; pre-build the 5 most common questions as saved questions; enable Simple Question mode only (not SQL); provide the quick-reference card; 30-minute walkthrough; assign a "data champion" contact (Dr. Lewis) for questions; simple question mode + pre-built saved questions covers 80% of their needs without SQL
3. **Adversarial:** A user bypasses Metabase and requests direct BigQuery access "because Metabase is too slow" → BigQuery direct access is not granted to non-technical users regardless of performance complaints; investigate and fix the Metabase performance issue (likely missing BigQuery partitioning or clustering on the mart table); a performance problem is a fixable engineering problem; granting raw BigQuery access to non-technical users circumvents governance controls

## Audit Log
Metabase access provisioning logged. Dashboard creation and modification logged. Self-serve query volume tracked monthly (adoption metric). Entity isolation verified quarterly.

## Deprecation
Retire when MBL has a dedicated BI engineer who owns self-serve analytics end-to-end, including user training, governance, and adoption tracking.
