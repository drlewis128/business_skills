---
name: resource-allocation-optimizer
description: "Optimize resource allocation across competing priorities and initiatives. Use when the user says 'resource allocation', 'prioritize the work', 'who should work on what', 'resource conflict', 'allocation plan', 'too many priorities', 'resource optimization', or 'how do we allocate the team'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<team-or-context> [--priorities <list>] [--entity <name>] [--period <quarter|month>]"
---

# Resource Allocation Optimizer

Allocate people, budget, and time across competing priorities to maximize impact. The constraint is always real — this skill makes it explicit and optimizes within it.

## When to Use
- Quarterly planning (allocate team capacity to initiatives)
- When more work exists than capacity to do it
- When a new initiative must be absorbed without new headcount
- When competing stakeholders are each claiming 100% of the same person
- Post-acquisition (rationalize two teams doing similar work)

## Allocation Principles

### Principle 1: Explicit Over Implicit
All resource allocation should be written down. Implicit allocations always lose to whoever asked last or loudest.

### Principle 2: 80/20 for BAU vs. Strategic
- BAU (keep the lights on): aim for 60-70% of capacity
- Strategic initiatives: 20-30% of capacity
- Buffer (interrupts, unplanned): 10-15% of capacity

Skewing 100% to BAU means no growth. Skewing 100% to strategic means operations breaks.

### Principle 3: Protect Maker Time
Knowledge workers need 4-hour uninterrupted blocks to do deep work. Protect at least 2 per week per person.

### Principle 4: One Priority Owner Per Initiative
Each initiative has one person accountable for its progress. Shared ownership equals no ownership.

### Principle 5: Allocation Follows Strategy
Higher strategic priority = more resources. If the stated top priority gets 10% of resources, the allocation is the real strategy.

## Allocation Process

### Step 1: Inventory Resources
- People: Name, role, available capacity (hrs/week after BAU and meetings)
- Budget: Discretionary budget per period (if applicable)

### Step 2: Inventory Priorities
For each initiative or workstream:
- Strategic importance (1-5, assigned by Tier 1)
- Estimated effort (hrs/week)
- Hard deadline (if any)
- Dependencies (blocked by or blocks other work)

### Step 3: Rank and Allocate
- Sort priorities by strategic importance × deadline urgency
- Allocate highest-ranked priorities first
- When capacity runs out, explicitly list what is deferred, not resourced, or deprioritized

### Step 4: Surface Conflicts
- If any person is allocated > 85% capacity, flag
- If any high-priority item has no owner or insufficient resources, flag
- If any two stakeholders claim the same person for conflicting priorities, escalate to Tier 1

## Output Format

```markdown
# Resource Allocation Plan — <Team>
**Entity:** <entity> | **Period:** <period> | **Date:** <date>

## Resource Summary

| Person | Role | Available Hours/Week | Allocated | Utilization |
|--------|------|---------------------|-----------|-------------|
| <Name> | <Role> | 25 hrs | 22 hrs | 88% 🟡 |
| <Name> | <Role> | 25 hrs | 20 hrs | 80% 🟢 |

## Allocation by Initiative

| Initiative | Priority | Owner | Hours/Week | % of Team | Status |
|-----------|---------|-------|-----------|-----------|--------|
| <Initiative 1> | P1 | <Name> | 10 hrs | 20% | Resourced |
| <Initiative 2> | P2 | <Name> | 8 hrs | 16% | Resourced |
| <Initiative 3> | P2 | — | 12 hrs | — | ⚠️ Under-resourced |

## BAU Allocation
<Team BAU work>: 30 hrs/week (60% of team capacity)

## Resource Conflicts + Flags

⚠️ **<Name> at 88% utilization** — one unplanned event will cause spillover.
  Recommendation: Defer <lower-priority task> or add buffer by scoping down <initiative>.

❌ **<Initiative> has no owner** — P2 initiative with no assigned resource.
  Decision needed: Assign owner or explicitly defer to next quarter.

## Deferred Work (Not Resourced This Period)
The following items are not resourced and will not advance this period:
- <Item> — Reason: insufficient capacity. Revisit in <period>.

## Decisions Needed from Tier 1
1. <Conflict or resource decision requiring Matt Mathison or Dr. Lewis direction>
```

## Output Contract
- Every deferred item is listed explicitly — no silent deprioritization
- Resource conflicts always escalated, never left ambiguous
- Every initiative has a named owner or is flagged as unowned
- HITL required before allocation plan is distributed to team members

## System Dependencies
- **Reads from:** Team roster, project/initiative list, priority rankings (provided)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison reviews all allocation plans that affect strategic initiative resourcing

## Test Cases
1. **Golden path:** 4-person team with 6 initiatives → allocation plan showing 2 deferred, 4 resourced, with one conflict flagged for Tier 1 decision
2. **Edge case:** Single-person team asked to own 5 concurrent priorities → surfaces that this is impossible, recommends explicit sequencing
3. **Adversarial:** Request to "fit everything in" when math doesn't support it → refuses to show an impossible plan, presents the real constraint and asks which item gets cut

## Audit Log
Allocation plans retained by team and period. Deferred items tracked to ensure they're revisited.

## Deprecation
Retire when project management platform (Monday.com) provides resource-load visualization and conflict detection natively.
