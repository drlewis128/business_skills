---
name: capacity-planning-model
description: "Build a capacity plan for a team or function to match workload with resources. Use when the user says 'capacity planning', 'do we have enough people', 'team capacity', 'headcount planning', 'can the team handle this', 'capacity model', 'resource capacity', or 'are we over or under capacity'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<team-or-function> [--period <quarter|annual>] [--entity <name>]"
---

# Capacity Planning Model

Determine whether a team has sufficient capacity to meet its current and projected workload — and what to do when supply doesn't match demand. Making resource decisions without a capacity model is guessing.

## When to Use
- Before adding headcount (prove need with data)
- When a team is consistently missing deadlines
- Before taking on a new client or initiative (can we absorb it?)
- Quarterly planning cycle
- Post-acquisition (what is this team's true capacity?)

## Capacity Model Framework

### Step 1: Available Capacity

```
Available hours/person/week = 
  Total work hours (40)
  - Meetings (X hrs)
  - Admin overhead (X hrs)
  - Unplanned/interrupt work buffer (10-15%)
  
Available productive hours ≈ 25-28 hrs/person/week (typical knowledge worker)
```

### Step 2: Demand Assessment

Categorize all work by type:
1. **BAU (Business as Usual)** — Regular recurring work (invoicing, reporting, maintenance)
2. **Projects** — Defined-scope work with start/end dates
3. **Interrupt** — Reactive work (support tickets, ad-hoc requests, escalations)
4. **Strategic** — New initiatives, transformations

Estimate hours for each category per week/month.

### Step 3: Capacity vs. Demand

```
Capacity utilization = Total demand hours / Total available hours

< 70%: Underutilized — assess if work is allocated correctly
70-85%: Healthy — sustainable pace with buffer for spikes
85-100%: At Risk — no buffer; any spike causes breakdown
> 100%: Overloaded — team will miss deadlines and burn out
```

### Step 4: Gap Resolution Options

| Gap Type | Options |
|---------|---------|
| Supply < Demand | Prioritize work (cut lower-value), add headcount, automate, outsource |
| Supply > Demand | Absorb new work, backfill tech debt, cross-train, reduce cost |
| Peak demand spikes | Contractors, flexible resourcing, priority shifting |

## Headcount Justification Framework

Before recommending a hire, always answer:
1. Is the work currently being done (backlog growing, or already dropped)?
2. Can the gap be closed with automation or process improvement?
3. What is the fully-loaded cost of the hire vs. the cost of not hiring?
4. What is the ramp time and when will the new hire be productive?

## Output Format

```markdown
# Capacity Plan — <Team/Function>
**Entity:** <entity> | **Period:** <period> | **Date:** <date>

## Team Capacity

| Person | Role | Available Hours/Week | Buffer (15%) | Net Capacity |
|--------|------|---------------------|-------------|-------------|
| <Name> | <Role> | 28 hrs | 4.2 hrs | **23.8 hrs** |
| <Name> | <Role> | 28 hrs | 4.2 hrs | **23.8 hrs** |
| **Team Total** | | 56 hrs | 8.4 hrs | **47.6 hrs/week** |

## Demand Assessment

| Category | Hours/Week | % of Total |
|---------|-----------|-----------|
| BAU work | <N> hrs | X% |
| Active projects | <N> hrs | X% |
| Interrupt/reactive | <N> hrs | X% |
| Strategic initiatives | <N> hrs | X% |
| **Total Demand** | **<N> hrs** | **100%** |

## Capacity Utilization

**Utilization:** <demand>/<capacity> = **X%** — 🟢 Healthy / 🟡 At Risk / 🔴 Overloaded

## Gap Analysis

**Surplus / Deficit:** <+/- N> hours/week (<+/- N> days/month)

If deficit: What gets dropped or delayed if not addressed?

## Recommendations

1. <Action to close gap — prioritize work, hire, automate, outsource>
2. <Next recommendation with owner and timeline>

### If recommending headcount:
**Justification:** <Business case with cost/benefit>
**Hire timing:** <When needed to be productive>
**Ramp assumption:** <How long until new hire is at full capacity>
```

## Output Contract
- Utilization status always shown (Green/Yellow/Red)
- Headcount recommendations always include business case, not just "we're busy"
- Automation and process improvement always considered before headcount add
- HITL required before headcount recommendations are presented to executive team

## System Dependencies
- **Reads from:** Team rosters, project lists, time allocation data (provided)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison reviews all headcount recommendations before proceeding

## Test Cases
1. **Golden path:** 3-person ops team with project workload → capacity model showing 92% utilization at risk, specific recommendation to defer low-value work
2. **Edge case:** Seasonal demand spike → identifies spike period, recommends temporary contractor rather than permanent hire
3. **Adversarial:** Request to justify a hire that the data doesn't support (team is at 60% utilization) → surfaces the data, recommends reallocation of existing capacity instead of headcount

## Audit Log
Capacity models retained by team and period for headcount planning documentation.

## Deprecation
Retire when workforce management platform provides real-time capacity tracking and demand forecasting.
