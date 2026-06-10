---
name: employee-scheduling-optimizer
description: "Optimize employee schedules to match staffing needs with demand. Use when the user says 'employee scheduling', 'staff schedule', 'shift scheduling', 'coverage optimization', 'staffing plan', 'scheduling conflict', 'who works when', or 'build the schedule'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<team-or-location> [--entity <name>] [--period <week|month>] [--shift-type <fixed|rotating|on-call>]"
---

# Employee Scheduling Optimizer

Build optimized employee schedules that match staffing levels to demand while respecting labor constraints, employee preferences, and compliance requirements. Poor scheduling causes both coverage gaps and unnecessary overtime.

## When to Use
- Building a weekly or monthly staff schedule
- When overtime is consistently high without obvious reason
- When coverage gaps are causing customer service failures
- After a headcount change (add or reduce)
- Allevio clinical staffing optimization

**Most relevant for:**
- **Allevio** — clinical staff scheduling (patient-facing roles require specific coverage ratios)
- **HIVE** — field operations crews (rotation schedules, safety minimums)
- **MBL** — on-call coverage for operations and IT

## Scheduling Constraints Hierarchy

Always evaluate in this order:
1. **Legal / Compliance** — mandatory rest periods, overtime rules, break requirements
2. **Safety minimums** — minimum qualified staffing at all times
3. **Business coverage requirements** — peak demand coverage, overlap for handoffs
4. **Employee preferences** — preferred days, known constraints
5. **Cost optimization** — minimize overtime, distribute hours equitably

**Never optimize cost at the expense of items 1-3.**

## Demand Analysis

### Step 1: Identify Demand Pattern
Map demand by day of week and time of day:
- What are the peak hours/days?
- What is minimum coverage required at all times?
- What roles need to be present simultaneously?

### Step 2: Calculate Required Staffing
```
Required staff per shift = 
  Peak demand load / throughput per staff member
  + safety buffer (15-20%)
```

### Step 3: Map Available Staff
For each employee:
- Scheduled hours/week (FTE or PT)
- Role qualifications (what shifts can they cover)
- Availability constraints (known schedule conflicts)
- Current week vs. YTD overtime hours

### Step 4: Build Schedule
- Cover minimum staffing first (non-negotiable)
- Fill peak coverage next
- Distribute remaining hours to minimize overtime
- Identify gaps and flag if they can't be covered

## Schedule Record Format

```yaml
schedule_period: <YYYY-WNN or YYYY-MM>
entity: <entity>
location: <location>
role: <role being scheduled>
staff:
  - name: <name>
    shifts:
      - date: <YYYY-MM-DD>
        start: <HH:MM>
        end: <HH:MM>
        type: Regular | Overtime | On-Call
    weekly_hours: <N>
    overtime_hours: <N>
coverage_gaps:
  - date: <date>
    time_slot: <start-end>
    severity: Critical | Standard
    resolution: <action or "Unresolved">
```

## Output Format

```markdown
# Employee Schedule — <Team/Location>
**Entity:** <entity> | **Period:** <period> | **Published:** <date>

## Schedule Summary

| Employee | Role | Mon | Tue | Wed | Thu | Fri | Sat | Sun | Total Hrs | OT Hrs |
|---------|------|-----|-----|-----|-----|-----|-----|-----|-----------|--------|
| <Name> | <Role> | 8-4 | 8-4 | OFF | 8-4 | 8-4 | OFF | OFF | 32 | 0 |

## Coverage Analysis

| Day | Required | Scheduled | Gap |
|-----|---------|-----------|-----|
| Mon | 3 staff | 3 staff | None |
| Tue | 3 staff | 2 staff | ⚠️ 1 short |

## Coverage Gaps — Action Required

### Tuesday <date> — 1 staff short (10am-2pm)
**Options:**
1. Ask <Name> to extend shift (would create OT)
2. Move <Name>'s day off — need confirmation
3. Accept gap (assess risk impact)

## Overtime Alert
<Name>: 6 OT hours this week. YTD OT: 48 hours.
Approaching threshold — review with manager before scheduling additional OT.

## Cost Estimate
Regular hours: <N> hrs × $<avg rate> = $<N>
Overtime hours: <N> hrs × $<avg rate x 1.5> = $<N>
**Total payroll cost this period:** $<N>
```

## Output Contract
- Coverage gaps always surfaced with specific resolution options
- Overtime tracking always included — never hidden
- Payroll cost estimate always shown — scheduling has a cost
- Legal/compliance constraints always checked before publishing
- HITL required before schedule is communicated to employees

## System Dependencies
- **Reads from:** Employee availability, role requirements, demand data (provided)
- **Writes to:** Schedule artifact (with HITL for employee communication)
- **HITL Required:** Manager reviews and approves schedule before employee notification; HR reviews any schedule violating labor compliance rules

## Test Cases
1. **Golden path:** Allevio 5-person clinical team → week-long schedule with coverage analysis, one gap identified with resolution options
2. **Edge case:** Not enough staff to cover minimum requirements → flags as Critical coverage gap, recommends temp staffing or executive escalation before schedule is published
3. **Adversarial:** Schedule designed to avoid giving an employee their contracted hours → flags contract obligation, requires legal review before proceeding

## Audit Log
Schedules retained by location and period. Overtime logs maintained for labor compliance documentation.

## Deprecation
Retire when workforce management platform (Deputy, When I Work, ADP Workforce) handles scheduling, demand forecasting, and compliance natively.
