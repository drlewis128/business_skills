---
name: headcount-tracker
description: "Track headcount across entities and departments vs. plan. Use when the user says 'headcount', 'headcount tracker', 'how many people do we have', 'headcount vs plan', 'employee count', 'staff count', 'headcount report', or 'headcount by department'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name|all>] [--as-of <YYYY-MM-DD>] [--view <actuals|vs-plan|by-department>]"
---

# Headcount Tracker

Track current headcount by entity, department, and role type against the approved headcount plan. Headcount is one of the largest cost drivers — tracking it accurately is table stakes for financial control.

## When to Use
- Monthly headcount reporting to Matt Mathison / Finance
- Comparing actual vs. approved headcount plan
- Before a new hire req is approved (available headcount slots?)
- During annual planning (headcount budget for next year)
- Post-acquisition (what did we just inherit?)

## Headcount Categories

| Category | Definition |
|---------|-----------|
| **FTE** | Full-time employees on payroll (≥ 32 hours/week) |
| **Part-Time** | Employees on payroll < 32 hours/week |
| **Contractor** | 1099 / C2C workers; not on payroll |
| **Open Reqs** | Approved positions not yet filled |
| **Budgeted HC** | Total headcount approved in annual plan |

## Key Metrics

### Headcount Metrics
- **Total Active HC** = FTE + Part-Time (on payroll, active)
- **FTE Equivalent (FTEE)** = FTE + (PT hours / 40)
- **Open Req Count** = Approved + unfilled positions
- **Contractor Count** = Active contractors (not on payroll)
- **Headcount vs. Plan** = Actual HC ÷ Budgeted HC

### Financial Impact
- **Fully-Loaded HC Cost** = HC × avg fully-loaded cost per head
- **Over/Under Plan** = (Actual – Budgeted) × avg cost = financial variance

## Headcount Record Format

```yaml
entity: <entity>
as_of: <YYYY-MM-DD>
department: <department>
role: <role title>
employee_count:
  fte: <N>
  part_time: <N>
  contractors: <N>
plan:
  budgeted_fte: <N>
  open_reqs: <N>
notes: <any context>
```

## Output Format

```markdown
# Headcount Tracker
**As of:** <date> | **Entities:** <list>

## Portfolio Summary

| Entity | FTE | PT | Contractor | Total Active | Open Reqs | Budgeted | vs. Plan |
|--------|-----|----|-----------|-----------|---------|---------|---------| 
| MBL Partners | <N> | <N> | <N> | <N> | <N> | <N> | +<N> / -<N> |
| Allevio | <N> | <N> | <N> | <N> | <N> | <N> | |
| HIVE Partners | <N> | <N> | <N> | <N> | <N> | <N> | |
| **Total** | **<N>** | **<N>** | **<N>** | **<N>** | **<N>** | **<N>** | |

## Department Breakdown — <Entity>

| Department | FTE | Open Reqs | Budgeted | Over/Under |
|-----------|-----|----------|---------|-----------|
| Finance | <N> | <N> | <N> | <+/- N> |
| Operations | <N> | <N> | <N> | |
| Clinical (Allevio) | <N> | <N> | <N> | |

## Headcount Variances (Actuals vs. Plan)

### Over Plan
- <Department>: <N> over — reason: <new hire not in original plan, acquisition>

### Under Plan
- <Department>: <N> under plan — <N> open reqs active. Budget being held vs. forecast.

## Contractor vs. Employee Flag
<N> contractors active. Any contractor > 12 months should be evaluated for FTE conversion risk (IRS co-employment / classification).

## Open Reqs Pipeline
| Req | Entity | Department | Stage | Target Start |
|----|--------|-----------|-------|------------|
| <Role> | <entity> | <dept> | Interviewing | <date> |
```

## Output Contract
- Contractors always separated from FTE count — different legal and cost treatment
- Over-plan headcount always flagged with reason
- Contractor tenure > 12 months always flagged for classification review
- HITL required before any headcount data is shared in board or LP reporting

## System Dependencies
- **Reads from:** HRIS data, approved headcount plan, open req list (provided or from `job-requisition-writer`)
- **Writes to:** Nothing (report for HITL review)
- **HITL Required:** Finance lead and HR verify before headcount data is included in executive or board reporting

## Test Cases
1. **Golden path:** Portfolio-wide headcount pull → table by entity and department, 3 open reqs, 2 contractors flagged at 14+ months
2. **Edge case:** Post-acquisition entity with headcount in different system → flags data source inconsistency, presents what's available with caveat
3. **Adversarial:** Request to exclude contractor count to make headcount look smaller → refuses, includes all worker categories, flags the omission request as a reporting integrity issue

## Audit Log
Monthly headcount snapshots retained by entity and date for trend analysis and LP/board reporting.

## Deprecation
Retire when HRIS and financial planning platform integration provides real-time headcount vs. plan dashboards.
