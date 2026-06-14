---
name: data-team-capacity-planner
description: "Plan data team capacity and prioritize the data work backlog. Use when the user says 'data team capacity', 'prioritize data work', 'data backlog', 'what data work should we do', 'data team planning', 'data roadmap planning', 'how much can the data team do', 'data sprint planning', or 'data resource planning'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--period <sprint|quarter>] [--team-size <1|2|3+>]"
---

# Data Team Capacity Planner

Plan the data team's capacity and prioritize the data work backlog to ensure the highest-value work gets done within realistic constraints. Data teams are routinely overloaded with ad hoc requests, infrastructure maintenance, and analytical projects — without explicit capacity planning, the most urgent (but not most important) requests always win. For MBL, with Dr. Lewis as the primary (and often sole) data resource, capacity planning is critical to ensuring AI product data needs are met without starving executive reporting.

## When to Use
- Sprint planning for the data function
- Quarterly planning — what data work can we commit to?
- Data backlog has grown too large — triage and prioritize
- New high-priority request arrives — what gets bumped?
- Matt Mathison asks "when will X be ready?" — give him a date

## Capacity Estimation

```
Available capacity (Dr. Lewis, solo data function):
  Total weekly hours: 40h
  Data ops and maintenance: -10h/week (25% baseline ops burden)
  Ad hoc requests and meetings: -8h/week (20%)
  Available for planned work: ~22h/week

Adjust for:
  Active incident: -4-8h depending on severity (P0: -8h; P1: -4h)
  New hire onboarding: -4h/week for first 4 weeks
  Quarterly OKR review: -8h one-time
  Sprint planning capacity: estimated 22h/week ≈ 4.4 data "story points" per sprint

Story point reference:
  XS (0.5 point) = 1-2h (SQL query fix, access grant, metric definition)
  S  (1 point)  = 4-8h (new dashboard metric, staging model, data quality fix)
  M  (2 points) = 16h (new dbt mart, new pipeline source, data audit)
  L  (3 points) = 24h (new dashboard from scratch, major architecture change)
  XL (5 points) = 40h+ (new data source integration, warehouse migration)
```

## Prioritization Framework

```
Data work prioritization matrix:
  P1 (Critical — do this sprint):
    Business decision is blocked without this data
    HIPAA or compliance risk if not done
    Affects Matt Mathison's ability to manage the portfolio
    Pipeline failure impacting production

  P2 (High — do next sprint):
    OKR-aligned data work for current quarter
    Stakeholder request with a named deadline
    Significant data quality issue (not yet impacting decisions)

  P3 (Medium — do this quarter):
    Proactive improvement (new dashboard, additional monitoring)
    Data team-initiated improvement (refactoring, performance)
    Portfolio company request without hard deadline

  P4 (Low — backlog):
    Nice-to-have feature
    Speculative work ("we might need this someday")
    Low-usage improvement
```

## Output Format

```markdown
# Data Team Capacity Plan — <Sprint / Quarter>
**Period:** <Sprint N / Q<N> <Year>> | **Planner:** Dr. Lewis
**Team:** Dr. Lewis (solo) | **Available capacity:** ~22h/week

---

## Capacity Summary

| Category | Hours/week | % of total |
|---------|-----------|-----------|
| Data ops / maintenance | 10h | 25% |
| Ad hoc requests | 8h | 20% |
| **Planned work (available)** | **22h** | **55%** |

**Adjustments this period:**
- [Active P1 incident: -4h/week]
- [No adjustments]

**Effective capacity: <N>h/week / <N> story points per sprint**

---

## Planned Work (This Sprint)

| # | Item | Priority | Points | Owner | Notes |
|---|------|---------|--------|-------|-------|
| 1 | GoHighLevel pipeline rate limit fix | P1 | S (1pt) | Dr. Lewis | Unblocking CRM dashboard |
| 2 | HIVE entity dashboard | P1 | M (2pt) | Dr. Lewis | Matt Mathison request |
| 3 | Allevio analytics mart v1 | P2 | M (2pt) | Dr. Lewis | Q3 OKR |
| **Total** | | | **5pt** | | **At capacity** |

---

## Backlog (Prioritized)

| # | Item | Priority | Points | Requested by | Due date |
|---|------|---------|--------|-------------|---------|
| 1 | Meeting sentiment analysis | P2 | L (3pt) | Dr. Lewis | Q3 |
| 2 | Revenue analytics mart v2 | P2 | M (2pt) | Dr. Lewis | Q3 |
| 3 | Column6 reporting integration | P3 | L (3pt) | Column6 lead | No deadline |
| 4 | dbt test coverage improvement | P3 | S (1pt) | Dr. Lewis | — |
| 5 | Archive old dashboard cleanup | P4 | XS (0.5pt) | — | — |

**Backlog health:**
- Total backlog: <N> items / <N> story points
- P1 items waiting: <N> (target: 0)
- Oldest open request: <N> days (target: <14 days)

---

## Incoming Request Triage

| Request | From | Date received | Priority | Points | Sprint target |
|---------|------|------------|---------|--------|--------------|
| [New dashboard request] | Matt Mathison | <date> | P1 | M | This sprint — bumping P4 item |
| [Data question] | Allevio ops | <date> | P2 | XS | Async answer; no sprint needed |

---

## Quarterly Roadmap

| Sprint | Committed items | Story points | OKR impact |
|--------|--------------|-------------|-----------|
| Sprint N | GoHighLevel fix; HIVE dashboard | 5pt | KR1.1, KR2.1 |
| Sprint N+1 | Allevio mart v1; revenue analytics v2 | 5pt | KR1.2, KR2.2 |
| Sprint N+2 | Sentiment analysis; dbt improvements | 5pt | KR3.1 |
| Sprint N+3 | Column6 integration | 4pt | KR1.3 |
```

## Output Contract
- Available capacity always explicitly calculated — "we'll fit it in" without a capacity check leads to overcommitment
- Backlog always prioritized — an unprioritized backlog always means the loudest request wins
- P1 backlog must be zero at end of each sprint — critical work doesn't wait
- Incoming request triage always applied — new requests don't automatically jump the queue
- HITL required: Dr. Lewis owns capacity planning; Matt Mathison's requests always P1-P2; prioritization changes require Dr. Lewis decision; quarterly roadmap shared with Matt Mathison for alignment

## System Dependencies
- **Reads from:** Data ops tracker (backlog), OKR tracker, Monday.com (incoming requests)
- **Writes to:** Capacity plan (SharePoint/Data/Planning); Monday.com sprint board
- **HITL Required:** Dr. Lewis owns planning; Matt Mathison aligned on quarterly roadmap; any reprioritization requiring bumping Matt Mathison's requests requires Dr. Lewis communication

## Test Cases
1. **Golden path:** Sprint N capacity planning → Available: 22h/week; Planned work: GoHighLevel fix (8h) + HIVE dashboard (16h) = 24h = 5 points = at capacity; Backlog: 5 items, all P2-P4, none P1; Incoming: Matt Mathison requests Column6 dashboard (P1, 16h) → need to defer one item; defer P4 dashboard cleanup; Column6 dashboard added to sprint; Matt Mathison confirmed on timeline
2. **Edge case:** Emergency P0 incident during sprint — now capacity is consumed and planned work can't be completed → acknowledge immediately; communicate to all stakeholders whose planned items are slipping; reprioritize: keep P1 items in sprint, defer P2+; update sprint burn-down; learn from the incident to improve ops reliability and reduce future incidents
3. **Adversarial:** Every request is marked "urgent" by the requestor → urgency declared by the requestor is not the same as business priority determined by Dr. Lewis; establish priority criteria (see above); communicate that Dr. Lewis sets priority based on business impact, not urgency declarations; if Matt Mathison declares something urgent, it's P1; otherwise, priority is based on the framework

## Audit Log
Sprint capacity plans retained. Prioritization decisions documented. Backlog age tracked.

## Deprecation
Retire when MBL has a dedicated data engineering function with its own sprint planning process, product manager, and established capacity management tools.
