---
name: ops-capacity-planner
description: "Plan operational capacity for a team or function. Use when the user says 'capacity plan', 'capacity planning', 'do we have enough capacity', 'team capacity', 'are we over capacity', 'operational capacity', 'workload analysis', 'team bandwidth', 'can the team handle this', 'staffing capacity', 'capacity analysis', 'how much can we handle', 'capacity constraint', or 'team is overloaded'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--team <team or function name>] [--horizon <90-day|6-month|annual>]"
---

# Ops Capacity Planner

Plan operational capacity at MBL portfolio companies — understanding whether a team or function has the capacity to handle its current and projected workload, and identifying when additional capacity is needed. Capacity planning prevents two expensive failure modes: (1) running teams at >100% utilization until they burn out or make mistakes, and (2) hiring ahead of need and carrying excess cost. The goal is to stay in the 70-85% utilization zone — enough buffer to absorb surges, but not so much slack that capacity is wasted.

## When to Use
- A team reports they're overwhelmed and can't take on new work
- New projects or volume growth are expected and the team needs to assess capacity
- Matt Mathison asks "can [team] handle [new initiative]?"
- A new hire is being proposed and justification is needed
- Headcount is being reduced and the impact on capacity needs to be assessed
- Annual planning — building the capacity model for the coming year

## Capacity Planning Framework

```
Capacity fundamentals:
  Available capacity: (headcount × working hours × utilization target)
    Standard: 40 hrs/week × 50 weeks (2 weeks leave) × 80% productive = 1,600 hrs/person/year
  Required capacity: sum of time required for all work items in the period
  Utilization: (required capacity / available capacity) × 100
    70-85% — optimal zone (buffer for surges; still productive)
    >90% — at risk (any surge creates a crisis; quality suffers)
    >100% — overloaded (work is being dropped or quality is declining)
  
  Capacity gap: Required - Available = shortage (positive) or surplus (negative)

Work categorization (where does capacity go?):
  Run work: keeping the lights on (recurring operational tasks)
  Grow work: projects that improve or expand the business
  Transform work: strategic initiatives, significant changes
  
  Rule of thumb for small teams: Run 60% / Grow 30% / Transform 10%
  If run work >80% of capacity, the team has no ability to grow or improve anything.

Capacity adjustment levers:
  Increase capacity: hire (6-12 weeks to productive), reduce scope, defer projects
  Optimize capacity: automation, process improvement, delegation, tools
  Prioritize: cut low-value work to free capacity for high-value work
  Surge: temporary: contractors, overtime, cross-functional support

Healthcare note (Allevio):
  Patient-facing capacity must maintain clinical safety margins — never optimize below safe
  staffing ratios; compliance with OSHA healthcare staffing guidelines non-negotiable
  
Oil & gas note (HIVE Partners):
  Field operations capacity includes equipment availability, not just human capacity;
  downtime, maintenance windows, and seasonal factors affect production capacity
```

## Output Format

```markdown
# Capacity Plan — <Team / Function>
**Company:** <Entity> | **Date:** [Date]
**Planning horizon:** [90 days / 6 months / Annual YYYY]
**Team size:** [N FTE] | **Analyst:** Dr. John Lewis

---

## Available Capacity

| Team member | Role | FTE | Available hrs/week | Leaves/absences | Net available hrs (period) |
|------------|------|-----|------------------|----------------|--------------------------|
| [Name] | [Role] | 1.0 | 40 | [N days] | [N hrs] |
| [Name] | [Role] | 0.5 (PT) | 20 | | [N hrs] |
| **Total** | | [N FTE] | [N hrs/week] | | **[N hrs]** |

**Target utilization:** 80% of available
**Capacity available for work:** [N hrs × 80%] = **[N productive hrs]**

---

## Required Capacity (Demand)

### Run Work (recurring operational tasks)

| Task | Frequency | Hours per occurrence | Annual hours |
|------|-----------|---------------------|-------------|
| [Daily reports] | Daily × 250 days | [X hrs] | [N hrs] |
| [Weekly billing cycle] | Weekly × 50 | [X hrs] | [N hrs] |
| [Monthly close support] | Monthly × 12 | [X hrs] | [N hrs] |
| **Run work subtotal** | | | **[N hrs/year]** |
| **Run work % of total available** | | | **[X%]** |

### Grow Work (current projects)

| Project | Description | Total hrs remaining | Due date |
|---------|-------------|-------------------|---------|
| [New billing software implementation] | [Description] | [N hrs] | [Date] |
| [Process documentation initiative] | | [N hrs] | |
| **Grow work subtotal** | | **[N hrs]** | |

### Transform Work (strategic initiatives)

| Initiative | Description | Hrs required (period) |
|-----------|-------------|----------------------|
| [Annual planning] | | [N hrs] |
| **Transform work subtotal** | | **[N hrs]** |

---

## Capacity Analysis

| Category | Hours required | % of available |
|---------|---------------|---------------|
| Run work | [N hrs] | [X%] |
| Grow work | [N hrs] | [X%] |
| Transform work | [N hrs] | [X%] |
| **Total required** | **[N hrs]** | **[X%]** |
| **Available capacity** | **[N hrs]** | 100% |
| **Surplus / (Deficit)** | **[(N hrs)]** | **[(X%)]** |

**Utilization rate:** [X%] — 🟢 Optimal (70-85%) / 🟡 At risk (86-95%) / 🔴 Overloaded (>95%)

---

## Capacity Gaps by Period

| Period | Available hrs | Required hrs | Utilization | Status |
|--------|-------------|-------------|------------|--------|
| Q[N] | [N] | [N] | [X%] | 🟢 / 🟡 / 🔴 |
| Q[N+1] | [N] | [N] | [X%] | |
| Q[N+2] | [N] | [N] | [X%] | |

**Peak utilization period:** [Q/Month — X%] | **Cause:** [Specific project or volume spike]

---

## Recommendations

**Current state:** [Assessment — is the team currently OK, at risk, or overloaded?]

**If overloaded or at risk:**

Option A — Reduce demand (defer or eliminate work):
  - Defer [Project X] by [N months] → frees [N hrs]
  - Eliminate [low-value recurring task] → frees [N hrs/year]
  - Impact: [What is the business consequence of deferral?]

Option B — Increase supply (add capacity):
  - Hire 1 [role] at [salary range] fully-loaded cost $[X]/year
  - Contract support for [project] at $[X]/engagement
  - Automation of [task] at $[X] setup → saves [N hrs/year]
  - Matt Mathison approval required: [Yes — cost >$25K annual / No]

Option C — Optimize (do the same with less):
  - Process improvement for [task] — estimated [N hrs/year] reduction
  - Automation of [task] — see ops-workflow-optimizer

**Recommended approach:** [Option A/B/C or combination — specific and honest about trade-offs]

---

## Hiring Justification (if hire is recommended)

**Current capacity deficit:** [N hrs/year]
**Role proposed:** [Title]
**Fully-loaded cost:** $[X]/year
**Work this role enables:**
  - [Specific work the team cannot do today that would be done with this hire]
**Revenue or cost impact of that work:** $[X]
**ROI:** $[X impact] / $[X cost] = [X× return]
**Matt Mathison decision required:** [Yes — all Director+ hires; any hire >$75K / specify]
```

## Output Contract
- Utilization is calculated, not assumed — the analysis produces a number (X% utilization); "the team is busy" is an observation, not a capacity analysis; the number allows comparison over time and comparison across teams; teams that feel busy but are at 65% utilization have a prioritization problem, not a capacity problem; teams at 95% have a real capacity problem
- Run / Grow / Transform split always shown — if a team's available capacity is 80% consumed by run work, they cannot improve their processes, cannot take on new initiatives, and cannot develop people; this finding has structural implications (the team needs to either reduce run work via automation/optimization or add capacity to do grow and transform work); this split should be visible to Matt Mathison
- Hiring requires ROI justification — a headcount request without an ROI case is a budget request; every hire recommendation includes: specific work the hire enables, business value of that work (revenue, cost savings, risk reduction), fully-loaded cost, and the ROI calculation; "we're overwhelmed" is not an ROI case
- Healthcare and field operations have safety floors — Allevio clinical staffing cannot be optimized below safe clinical ratios; HIVE field operations cannot be run below safety-compliant staffing levels; capacity optimization at these entities has a hard floor defined by regulatory and safety requirements that Dr. Lewis notes explicitly in any capacity analysis
- HITL required: Dr. Lewis builds or reviews all capacity analyses; team managers validate time estimates; hire recommendations reviewed by company CEO before Matt Mathison; Matt Mathison approves all new hires above the $25K threshold; capacity analyses for Allevio clinical operations reviewed with clinical leadership before any staffing reduction recommendation

## System Dependencies
- **Reads from:** Payroll/HR system (headcount, FTE, leave schedules), project tracker (active work and estimated hours), process timing data, volume metrics
- **Writes to:** Capacity plan (SharePoint/Ops/<Company>/Capacity/); hiring justification (if applicable); Matt Mathison brief (if significant capacity gap or hire required)
- **HITL Required:** Dr. Lewis leads; managers validate estimates; CEO reviews before Matt Mathison; Matt Mathison approves all hires above threshold; Allevio clinical staffing decisions require clinical leadership review

## Test Cases
1. **Golden path:** Allevio billing team (3 FTEs) — VP of Operations asks "can we take on 200 more patients in Q3 without adding billing staff?" → Available: 3 FTEs × 1,600 hrs/year = 4,800 hrs × 80% = 3,840 productive hrs/year; Run work: current patient volume (340 patients × estimated 8 hrs/patient/year for billing) = 2,720 hrs (71% of capacity); Grow work: software migration project (240 hrs remaining) + process documentation (80 hrs) = 320 hrs (8%); Current total: 3,040 hrs (79% — optimal); New patients: 200 × 8 hrs = 1,600 additional hrs required; New total: 4,640 hrs = 121% utilization — overloaded; Recommendation: No — cannot absorb 200 additional patients without adding capacity; Option A: hire 1 FT billing specialist (fully-loaded $62K/year, payback in 2.3 months at current billing recovery rate); Option B: automate eligibility verification (saves ~320 hrs/year — reduces gap but doesn't close it); Recommend Option A with Option B as complement; Matt Mathison decision: all hires require approval
2. **Edge case:** A team member leaves and no replacement is planned → Model the capacity impact immediately: losing 1 FTE reduces available capacity by 1,600 hrs/year; if the team was at 80% utilization with 3 FTEs, they're now at 107% with 2 FTEs; present the impact: "Without a replacement, the team is at 107% — something will be dropped or quality will decline"; specific: "The growth work (software migration) will slip by X weeks; monthly close support quality will be at risk"; give options: backfill, defer the migration, use a contractor for the project hours while the role is being filled
3. **Adversarial:** A manager says the team is overloaded but can't quantify how much work they're doing → Build the model together; start with the run work: "What happens every week, without fail?" → list it; "What happens every month?" → list it; "What projects are active right now?" → list them; estimate time for each; if the team doesn't have time data, use a one-week time log to establish a baseline; the capacity analysis cannot be done without data — if data doesn't exist, creating a 1-week time log is the first action

## Audit Log
All capacity plans retained by company, team, and date. Utilization calculations documented. Hiring justifications retained. Matt Mathison approvals retained. Capacity reviews at 90-day intervals documented.

## Deprecation
Retire when portfolio companies have dedicated operations managers who build and maintain capacity models as part of regular planning cycles and present capacity reports to Dr. Lewis as the oversight level rather than requiring Dr. Lewis to build each model.
