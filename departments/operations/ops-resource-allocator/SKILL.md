---
name: ops-resource-allocator
description: "Allocate resources across projects and operations work. Use when the user says 'resource allocation', 'allocate resources', 'who works on what', 'capacity allocation', 'assign resources', 'prioritize the team', 'who should do this', 'how do we allocate time', 'resource planning', 'team capacity allocation', 'portfolio resource allocation', 'how do we staff this', 'resource conflicts', 'competing priorities', or 'who has capacity'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or 'portfolio'>] [--period <current-sprint|monthly|quarterly>] [--scope <project|BAU|both>]"
---

# Ops Resource Allocator

Allocate human resources across projects and operational work at MBL portfolio companies — making visible who is doing what, where capacity is over-committed, and where there are gaps or conflicts. Resource allocation is the bridge between strategy (what we've committed to via OKRs) and execution (who is actually doing the work). Without explicit allocation, the loudest priority wins — which is usually the reactive one. With explicit allocation, Dr. Lewis can see two weeks ahead whether a commitment can be met and course-correct before it's too late.

## When to Use
- Setting up sprint resource allocation (who works on what this sprint)
- Planning quarterly resource allocation against OKRs
- A resource conflict exists — two projects need the same person at the same time
- A new project or initiative needs to be resourced and there's no obvious capacity
- Matt Mathison asks "do we have the capacity to take on [initiative]?"

## Resource Allocation Framework

```
Allocation model:
  Run capacity: BAU work that keeps the operation running (billing, payroll, vendor management, reporting)
    Target: 50-60% of capacity at a healthy, scaled operation
    Early-stage or under-resourced: Often 70-80% — limits change capacity
    
  Grow capacity: Project and initiative work that improves the operation
    Target: 30-40% of capacity
    If <20%: The team is underwater; no capacity for improvement
    If >50%: BAU is being under-served; risk of quality failures
    
  Transform capacity: Strategic work with long time horizons
    Target: 10-20% — only when the Run and Grow work are stable
    
  Dr. Lewis portfolio allocation:
    Run (across portfolio): ~30% — oversight, approvals, escalations
    Grow (project work): ~50% — building systems, skills, processes
    Transform (strategy): ~20% — AI roadmap, portfolio expansion, architecture

Allocation conflicts:
  When two projects compete for the same person:
    Step 1: Which project has the higher business impact? (Revenue, risk, compliance)
    Step 2: Can either be delayed without significant consequence?
    Step 3: Can either be resourced differently (different person, reduced scope)?
    Step 4: If neither can move — escalate to Dr. Lewis for priority decision
    
  Resource shortcuts to avoid:
    "We'll do both at once": leads to neither getting done well
    "They can work extra hours temporarily": temporary always becomes permanent
    "We'll use a contractor": only if the contractor can actually be ready in time
    
Capacity utilization benchmarks:
  >90%: 🔴 Over-utilized — quality and burnout risk; cannot absorb any disruption
  70-85%: 🟢 Target — productive with buffer for the unexpected
  <60%: 🟡 Under-utilized — may indicate wrong scope, wrong role, or wrong person
  
  Note: Knowledge workers and operations staff cannot sustain >90% indefinitely
  Sustained high utilization leads to errors, turnover, and brittle operations
```

## Output Format

```markdown
# Resource Allocation Plan — <Company Name>
**Period:** [Sprint #/ Month / Quarter] | **Dates:** [Start] to [End]
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**Team size:** [N FTE] | **Total available capacity:** [N person-days / person-weeks]

---

## Capacity Summary

| Team member | Role | Available capacity (this period) | Allocated (Run) | Allocated (Grow) | Total allocated | Utilization |
|------------|------|--------------------------------|----------------|-----------------|----------------|------------|
| [Name] | [Title] | [N days] | [N days] | [N days] | [N days] | [X%] |
| [Name] | | | | | | |
| **Total team** | | **[N days]** | **[N days]** | **[N days]** | **[N days]** | **[X%]** |

**Team capacity status:** 🟢 Balanced / 🟡 Over-allocated — [N person-days over] / 🔴 Critical — must reduce scope

---

## Run Work Allocation (BAU)

| Run task | Owner | Hours/week | Priority |
|---------|-------|-----------|---------|
| [Weekly ops reports — 3 entities] | Dr. Lewis | [N] | Always on |
| [Vendor management check-ins] | [Name] | [N] | Always on |
| [Payroll coordination — Allevio] | [Name] | [N] | Always on |
| [Monday.com maintenance] | [Name] | [N] | Always on |
| [Compliance calendar — Allevio] | Dr. Lewis | [N] | Always on |

**Total BAU hours/week:** [N hrs] = [X%] of team capacity

---

## Grow Work Allocation (Projects/OKRs)

| Project / OKR | Primary | Support | Hours this period | OKR link | Priority |
|--------------|---------|---------|-----------------|---------|---------|
| [Denial management initiative] | Dr. Lewis | [Billing mgr] | [N hrs] | [KR1.2] | 🔴 High |
| [Vendor scorecard rollout] | [Name] | — | [N hrs] | [KR2.1] | 🟡 Medium |
| [Tech stack audit] | Dr. Lewis | — | [N hrs] | — | 🟡 Medium |
| [New billing hire onboarding] | Dr. Lewis | [Name/buddy] | [N hrs] | — | 🔴 High |

**Total project hours this period:** [N hrs] = [X%] of team capacity

---

## Allocation Conflicts

| Conflict | Description | Resolution |
|---------|------------|-----------|
| [Date range] | [Dr. Lewis: vendor audit + denial initiative both need focus week of [date]] | Denial initiative takes priority (revenue impact); vendor audit deferred 1 week |
| | | |

**Unresolved conflicts requiring decision:**
- [Conflict description] — Options: [A / B] — Decision needed by: [Date]

---

## Capacity Gap Analysis

**Work that has no owner this period:**
| Task | Why it's unowned | Resolution |
|------|----------------|-----------|
| [Task] | [No capacity — lower priority] | Deferred to [next sprint/month] |
| [Task] | [Wrong skills — needs contractor or external] | Evaluate contractor [Date] |

---

## Portfolio-Level Allocation (if multi-entity view)

| Entity | Dr. Lewis hours/week | Trend | Notes |
|--------|--------------------|----|------|
| Allevio | [N hrs] | 🟢 Stable / 🟡 Increasing | |
| HIVE Partners | [N hrs] | | |
| MBL HoldCo | [N hrs] | | |
| [New initiative] | [N hrs] | | |
| **Total Dr. Lewis** | **[N hrs]** | | Target: ≤50 hrs/week |

**Dr. Lewis capacity status:** 🟢 Sustainable / 🟡 High — watch / 🔴 Over-committed

---

## Matt Mathison Call-Out (if capacity is critically over-allocated or new resources needed)

[Company / Portfolio] resource allocation [period]: capacity is [status]. [Key conflict or gap in one sentence]. [Recommended action: hire / defer / rebalance — with rationale and cost if applicable].
```

## Output Contract
- Allocation is explicit, not assumed — "everyone knows what to work on" is how conflicts and missed commitments happen; the allocation plan makes visible who is doing what, at what percentage of their capacity; implicit expectations produce explicit disappointments; the allocation plan converts implicit to explicit
- Run work is allocated first — BAU operations cannot be allowed to slip because project work crowded it out; payroll happens on schedule, billing submissions happen on schedule, compliance checks happen on schedule regardless of what's in the project backlog; the resource plan allocates Run work first, then determines how much capacity remains for Grow work; if Run work is already consuming 80% of capacity, Grow work must be reduced or deferred
- Portfolio-level allocation is tracked for Dr. Lewis — Dr. Lewis's time is the scarcest resource in the portfolio; his allocation across entities, projects, and strategic work is tracked explicitly; if a new initiative is added, Dr. Lewis identifies what it displaces; "we'll figure it out" is not a resource plan; the allocation plan makes Dr. Lewis's capacity constraints visible so Matt Mathison can make informed prioritization decisions
- HITL required: Dr. Lewis sets the allocation; CEO reviews allocation for their entity (alignment on priorities); Matt Mathison is notified when Dr. Lewis is over-committed or when a significant resource gap exists across the portfolio; hiring decisions triggered by sustained over-allocation require Matt Mathison approval; contractor engagements >$5K require Dr. Lewis approval; >$25K require Matt Mathison

## System Dependencies
- **Reads from:** Sprint backlog (Monday.com), OKR tracker (ops-okr-tracker), capacity data (headcount, PTO, leave), project schedule (ops-milestone-manager), Dr. Lewis's calendar
- **Writes to:** Resource allocation plan (SharePoint/Ops/<Company>/Planning/Resources/); sprint plan (ops-sprint-planner); Monday.com resource view; Matt Mathison capacity brief
- **HITL Required:** Dr. Lewis plans allocation; CEO reviews and aligns on priorities; Matt Mathison for over-allocation or new resource requests; hiring decisions for capacity relief require Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio quarterly resource allocation → Team: Dr. Lewis (30% Allevio allocation), billing manager (100% Allevio), 1 billing specialist (100%), office coordinator (100%); Run work: billing submissions, weekly reporting, vendor follow-up, compliance calendar — 65% of team capacity; Grow work: denial management initiative, AdvancedMD config, SOP documentation — 35% of team capacity; Utilization: all team members 75-85% (🟢); No conflicts; Quarterly projection: can complete all Q3 OKR Key Results at current allocation; Matt Mathison: no call-out needed
2. **Edge case:** A new initiative (HIPAA risk assessment) must be completed this quarter and there's no capacity → First: is this truly mandated with a deadline (regulatory) or "high priority" (leadership preference)? If mandated: re-prioritize by removing one Grow project from the quarter; present the trade-off to CEO: "To add the HIPAA risk assessment, we defer the SOP documentation project to Q4. Confirm?" If preference: add to next quarter unless CEO explicitly makes it the priority; the allocation plan forces the trade-off decision to be made explicitly by the person with the authority to make it
3. **Adversarial:** "Everyone should just work harder during busy periods" → Sustained high utilization has a cost that doesn't show up on the resource plan immediately but shows up later: errors increase, important work gets delayed, staff start to disengage, and eventually someone leaves; respond: "Working harder is a short-term bridge, not a capacity plan. If this team is routinely over 90% utilization, we have three real options: reduce scope, add capacity, or accept lower quality. Let me show you the allocation model so we can make that decision with data."

## Audit Log
All allocation plans retained by period and company. Capacity conflicts documented with resolution. Over-allocation instances documented. Dr. Lewis portfolio allocation tracked monthly. Matt Mathison capacity notifications retained. Hiring decisions triggered by allocation gaps documented.

## Deprecation
Retire when portfolio companies have operations managers who maintain their own resource allocation plans and present capacity conflicts to Dr. Lewis for priority decisions, rather than having Dr. Lewis build and maintain the allocation plan directly.
