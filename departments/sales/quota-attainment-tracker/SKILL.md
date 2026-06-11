---
name: quota-attainment-tracker
description: "Track and analyze sales quota attainment by rep and team. Use when the user says 'quota attainment', 'are we hitting quota', 'attainment report', 'how is the team performing against quota', 'quota tracking', 'who is at or above quota', or 'sales performance vs quota'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter|year>] [--view <rep|team|executive>]"
---

# Quota Attainment Tracker

Track and analyze sales quota attainment at rep and team level. Quota attainment is the primary measure of sales effectiveness — this skill structures the data, identifies performance patterns, and flags what needs coaching or escalation.

## When to Use
- Weekly pulse (are we on pace?)
- Monthly close (what did we actually hit?)
- Quarterly review for Matt Mathison
- Before comp review (attainment drives variable pay)
- When a rep is underperforming (data for coaching conversation)

## Attainment Benchmarks

| Attainment Level | Category | Action |
|----------------|---------|--------|
| ≥ 120% | Over-quota | Recognize; check for quota sandbagging |
| 100–119% | On quota | Standard positive feedback |
| 80–99% | Near miss | Coach; check pipeline coverage |
| 60–79% | Underperforming | PIP consideration; active coaching |
| < 60% | At risk | Immediate intervention or role review |

## Team Attainment Health Check

Healthy sales team: ≥ 60-70% of reps at or above quota in a given period.
If < 50% of reps hit quota: likely a structural problem (quota set wrong, market, product) — not just a rep coaching issue.

## Attainment Formula

```
Attainment % = (Closed-Won Revenue / Quota) × 100

Period attainment = closed-won deals with close date in period / quota for period

YTD attainment = Σ(monthly closed) / Σ(monthly quotas through current month)
```

## Pacing Check (Mid-Period)

```
Days elapsed this period: X of Y
Revenue to date: $N
On-pace target: $Quota × (X/Y)
Pacing gap: $Target - $Actual
Days remaining to close gap: Y - X
Required daily revenue rate: Gap / Days remaining
```

## Output Format

```markdown
# Quota Attainment Report — <Entity>
**Period:** <period> | **Date:** <date>

## Team Summary

| Metric | Value |
|--------|-------|
| Team quota | $<N> |
| Team closed (to date) | $<N> |
| Team attainment | X% |
| % of reps at quota | X% (<N> of <N>) |
| Days remaining | <N> |
| Required to hit team quota | $<N> more |

## Rep Attainment Detail

| Rep | Quota | Closed | Attainment | Status | Pipeline |
|-----|-------|--------|-----------|--------|---------|
| <Name> | $<N> | $<N> | X% | 🟢 On track | $<N> |
| <Name> | $<N> | $<N> | X% | 🟡 Near miss | $<N> |
| <Name> | $<N> | $<N> | X% | 🔴 At risk | $<N> |

## Pacing Analysis

| Rep | On-Pace Target | Actual | Pacing Variance | Risk |
|-----|--------------|--------|----------------|------|
| <Name> | $<N> | $<N> | +$<N> ahead | None |
| <Name> | $<N> | $<N> | -$<N> behind | High |

## Attainment Alerts

🔴 **<Rep> at X% with N days remaining** — Pipeline covers only X% of gap. Recommend: coaching + deal desk support.
⚠️ **<Rep> near-miss trajectory** — On pace for 88%. Needs 1 deal to close in next 2 weeks.
✅ **<Rep> on track at X%** — Continue current activity level.

## Structural Health Check
**% of reps at quota:** X% — Healthy (≥60%) / At risk (<50%)
**Assessment:** Team issue vs. individual coaching issue
```

## Output Contract
- Attainment data always shown at rep level and team level — aggregate alone hides underperformers
- Pacing gap always calculated mid-period — tells the rep what they need to close now
- Structural health check always run — distinguishes coaching problem from quota or market problem
- HITL required before attainment data is used for PIP, termination, or comp decisions

## System Dependencies
- **Reads from:** CRM closed deal data, quota assignments (provided or from Finance)
- **Writes to:** Nothing (report for HITL review)
- **HITL Required:** Dr. Lewis reviews before using attainment data for comp or personnel decisions; Matt Mathison reviews team attainment monthly

## Test Cases
1. **Golden path:** 3-rep team, Q2 mid-period → rep-level attainment, pacing analysis for each rep, structural health check shows 2/3 at quota (67% — healthy), one coaching alert
2. **Edge case:** New rep in ramp period (< 90 days) → clearly labeled as ramping, attainment tracked but compared to ramp quota (50-75% of full quota), no PIP flag
3. **Adversarial:** Request to exclude a closed deal from attainment because it was a "team effort" → includes all properly booked closed-won deals in attainment, recommends split credit policy if needed

## Audit Log
Attainment reports retained by entity, rep, and period. Attainment records used for variable comp calculation — Finance is source of truth.

## Deprecation
Retire when CRM provides automated real-time quota attainment dashboards with rep-level pacing alerts.
