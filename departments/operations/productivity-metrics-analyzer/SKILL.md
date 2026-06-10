---
name: productivity-metrics-analyzer
description: "Analyze team or individual productivity metrics and surface insights. Use when the user says 'productivity metrics', 'team productivity', 'output analysis', 'are we productive', 'efficiency metrics', 'throughput analysis', 'productivity report', or 'how efficient is the team'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<team-or-process> [--period <YYYY-MM>] [--metric-type <output|time|quality|capacity>]"
---

# Productivity Metrics Analyzer

Analyze operational team productivity metrics to surface efficiency trends, capacity gaps, and improvement opportunities.

## When to Use
- Monthly operational review (team performance)
- When a team feels overwhelmed but output isn't increasing
- Before adding headcount (prove the bottleneck first)
- After a process change (did productivity improve?)
- When a team's output is inconsistent or unpredictable

## Productivity Measurement Frameworks

### Output-Based (Preferred)
Measure actual outputs produced per unit of time.
- Invoices processed per day
- Patients seen per provider per day
- Support tickets resolved per week
- Projects completed per sprint

**Advantage:** Directly tied to business results
**Challenge:** Must define what counts as "output" clearly

### Time-Based
Measure time spent on activities vs. total available.
- % time on billable/productive activities
- Meetings as % of work hours (flag if > 30%)
- Context-switching: avg number of task switches per day

**Caution:** Hours worked ≠ output produced

### Quality-Based
Measure error rates and rework.
- Error rate per output unit (invoices coded wrong, patient billing errors)
- Rework rate (% of outputs that needed correction)
- First-pass quality rate

### Capacity vs. Load
Measure workload vs. capacity.
- Task backlog size and trend
- On-time completion rate
- Tasks in progress vs. team WIP limit

## Warning Signals

| Signal | Possible Cause |
|--------|---------------|
| Output declining while hours increase | Burnout, poor tooling, distractions |
| Output consistent but errors increasing | Rushing, unclear standards, training gap |
| High WIP, low completion | Too many priorities, coordination failures |
| High variance in output | Process inconsistency, skill variance |
| Meeting hours > 30% of workday | Meeting overload — protect focus time |

## Output Format

```markdown
# Productivity Analysis — <Team/Process>
**Period:** <period> | **Entity:** <entity> | **Date:** <date>

## Productivity Summary

| Metric | This Period | Prior Period | Target | Trend |
|--------|-----------|------------|--------|-------|
| Output volume | <N> | <N> | <N> | ⬆️ |
| Quality rate | X% | X% | ≥ 95% | ⬆️ |
| On-time delivery | X% | X% | ≥ 90% | ➡️ |
| Rework rate | X% | X% | < 5% | ⬇️ ✅ |

## Capacity Analysis
Available capacity: <N> hours/week
Productive time: <N> hours/week (X%)
Meeting time: <N> hours/week (X%)
Admin/overhead: <N> hours/week

**Effective productive hours:** <N> hours/week

## Findings
1. <Finding with evidence>
2. <Finding>

## Recommendations
1. <Specific action to improve productivity — with owner and timeline>
```

## Output Contract
- Output volume and quality always tracked together — output without quality is misleading
- Recommendations tied to specific findings — no generic "do better" suggestions
- Capacity analysis distinguishes productive time from meeting/admin overhead
- HITL required before any productivity findings are communicated to individual employees

## System Dependencies
- **Reads from:** Output data, time tracking (if available), quality metrics (provided)
- **Writes to:** Nothing
- **HITL Required:** Manager reviews before sharing findings with individual team members

## Test Cases
1. **Golden path:** Finance team with invoice processing metrics → output, quality, and rework analysis with specific improvement recommendations
2. **Edge case:** Team with no quantitative data available → switches to qualitative assessment framework, flags need to establish baseline metrics
3. **Adversarial:** Request to use meeting attendance as primary productivity metric → flags that attendance ≠ output, recommends output-based primary metrics instead

## Audit Log
Monthly productivity analyses retained by team and period. Improvement action tracking.

## Deprecation
Retire when HRIS / project management platform provides automated team productivity dashboards.
