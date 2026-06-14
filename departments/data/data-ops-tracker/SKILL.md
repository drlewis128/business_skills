---
name: data-ops-tracker
description: "Track data operations health, incidents, and delivery. Use when the user says 'data ops', 'data operations', 'data pipeline health', 'data team operations', 'data incident', 'how is the data infrastructure doing', 'data delivery', 'data team workload', or 'data ops review'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--period <weekly|monthly>] [--mode <review|incident|planning>]"
---

# Data Ops Tracker

Track the operational health of MBL's data infrastructure — pipelines, data quality, incident response, and backlog. Data operations is the unglamorous but critical work that keeps dashboards accurate and AI products reliable. When data ops is invisible (nothing broken, everything fresh), the team can focus on analytics. When it breaks, it consumes all capacity. This skill makes data ops health visible so issues can be caught and fixed proactively.

## When to Use
- Weekly data ops review — what's the state of the infrastructure?
- A pipeline broke or data is stale — incident tracking and resolution
- Monthly planning — what data infrastructure work is in the backlog?
- Data team capacity assessment — how much capacity is consumed by ops vs. analytics?
- Reporting to Matt Mathison on data infrastructure health

## Data Ops Health Dimensions

```
Pipeline health:
  % of pipelines completing successfully in the last 7 days
  Number of pipeline failures and time-to-resolve

Data freshness:
  % of dashboards with data refreshed within SLA
  Number of SLA breaches and their impact

Incident management:
  Number of incidents by severity
  Mean time to detect (MTTD)
  Mean time to resolve (MTTR)

Backlog health:
  Number of open data requests
  Age of oldest open request
  Requests completed per sprint

Capacity:
  % of data team time on ops vs. analytics/new development
  Target: <30% on ops; >70% on development/analysis
```

## Output Format

```markdown
# Data Ops Tracker — <Period>
**Prepared by:** Dr. John Lewis | **Date:** <date>

---

## Ops Health Summary

| Dimension | This period | Target | Status |
|-----------|------------|--------|--------|
| Pipeline success rate | <N>% | >99% | 🟢 |
| Data freshness SLA compliance | <N>% | >95% | 🟡 |
| Incident count | <N> | <2/week | 🟢 |
| MTTR (avg) | <N> hours | <4 hours | 🟢 |
| Open data requests >5 days | <N> | <3 | 🟡 |

---

## Pipeline Status

| Pipeline | Last run | Status | Lag | Next run | Notes |
|---------|---------|--------|-----|---------|-------|
| QuickBooks → BigQuery | <datetime> | 🟢 Success | 18h | Tonight 2am | — |
| GoHighLevel → BigQuery | <datetime> | 🟡 Delayed | 26h | Retry pending | Rate limit hit |
| Monday.com → BigQuery | <datetime> | 🟢 Success | 2h | Real-time | — |
| Krista → SharePoint | <datetime> | 🟢 Success | On creation | Event-driven | — |

---

## Incident Log

| ID | Date | Severity | Pipeline/System | Description | MTTD | MTTR | Status |
|----|------|---------|----------------|-------------|------|------|--------|
| INC-014 | <date> | 🟠 High | GoHighLevel sync | Rate limit hit; 26h data lag | 4h | 8h | ✅ Resolved |
| INC-013 | <date> | 🟡 Medium | BigQuery job | Disk quota exceeded; job failed | 1h | 2h | ✅ Resolved |
| INC-012 | <date> | 🔴 Critical | Dashboard | Wrong ARR displayed; data quality error | 6h | 14h | ✅ Resolved |

**Incident trends:** MTTR improving (12h avg last month → 8h this month); quality incidents decreasing

---

## Data Request Backlog

| ID | Request | Requestor | Priority | Received | Status | Due |
|----|---------|----------|---------|---------|--------|-----|
| REQ-022 | New HIVE entity dashboard | Matt Mathison | P1 | <date> | In progress | <date> |
| REQ-021 | Allevio RCM data integration | Allevio ops | P1 | <date> | Scoping | <date> |
| REQ-019 | Meeting sentiment analysis | Dr. Lewis | P2 | <date> | Queued | <date> |

**Backlog age:** Oldest open: 12 days (REQ-019); Target: no request open >14 days

---

## Capacity

| Category | Time this period | % of total | Target % |
|---------|----------------|-----------|---------|
| Ops/maintenance | <N> hours | 35% | <30% ⚠️ |
| Analytics/development | <N> hours | 45% | >50% |
| Ad hoc requests | <N> hours | 20% | <20% |

**Observation:** Ops burden is above target; GoHighLevel incident consumed 3 days

---

## This Week's Actions

| Action | Owner | Priority | Due |
|--------|-------|---------|-----|
| Fix GoHighLevel rate limit handling (add backoff) | Dr. Lewis | P1 | 2 days |
| Complete HIVE dashboard scoping | Dr. Lewis | P1 | This week |
| Add freshness alert for GoHighLevel pipeline | Dr. Lewis | P2 | Next week |
```

## Output Contract
- Pipeline status always per-pipeline — aggregate health scores hide which specific pipeline is broken
- Incident log always includes MTTD and MTTR — detection time is as important as resolution time
- Capacity breakdown always included — a data team that spends 80% on ops has no capacity for analytics
- Backlog age always tracked — old requests signal capacity problems or mismatched priorities
- HITL required: Dr. Lewis reviews data ops weekly; Critical incidents (INC Severity 🔴) escalated to Matt Mathison if not resolved within 4 hours; dashboard inaccuracies affecting Matt Mathison's reporting escalated immediately

## System Dependencies
- **Reads from:** Pipeline job logs (GCP/Fivetran), BigQuery freshness, incident log
- **Writes to:** Data ops tracker (SharePoint/Data/Ops); incident log; Monday.com (for requests and actions)
- **HITL Required:** Dr. Lewis reviews weekly; Critical incidents escalate to Matt Mathison; dashboard inaccuracies affecting Matt Mathison escalated immediately

## Test Cases
1. **Golden path:** Weekly data ops review → All 4 pipelines healthy; 1 medium incident (GoHighLevel rate limit, resolved in 8h); 3 open data requests (1 in progress, 1 scoping, 1 queued); capacity: 35% ops (slightly above target due to incident); action: fix GoHighLevel rate limit handling; no critical alerts; data freshness SLA: 3 of 4 dashboards within SLA (GoHighLevel dashboard lagged 26h — acknowledged)
2. **Edge case:** A data incident affected Matt Mathison's weekly report — wrong ARR displayed → immediate escalation; Dr. Lewis contacts Matt Mathison before the report is used for any decisions; correct data published as soon as fix is confirmed; root cause analysis completed within 48 hours; post-incident review to prevent recurrence; this is INC Severity 🔴 regardless of financial magnitude
3. **Adversarial:** Data ops is consistently consuming 50%+ of capacity, leaving no room for analytics → this is a structural problem; options: (1) reduce ops burden through better tooling/monitoring; (2) hire a dedicated data engineer to own ops; (3) reduce the number of pipelines/dashboards to what can be sustained; don't accept perpetual 50% ops burden as the new normal — it prevents the data function from creating value

## Audit Log
Data ops weekly reviews retained. Incident log maintained permanently. Backlog history (requests opened, closed, duration) retained.

## Deprecation
Retire when MBL has a dedicated data engineering function with automated ops monitoring, alerting, and pipeline management that doesn't require weekly manual review.
