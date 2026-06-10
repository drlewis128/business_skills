---
name: succession-planning-tracker
description: "Track succession candidates for key leadership roles and readiness timelines. Use when the user says 'succession planning', 'succession tracker', 'who replaces X', 'leadership pipeline', 'key person risk', 'backup leaders', 'bench strength', or 'leadership readiness'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--role <title>] [--update <yes>]"
---

# Succession Planning Tracker

Map succession candidates for critical leadership roles across MBL and portfolio companies. Identify key person risk, develop internal bench strength, and ensure no single-point-of-failure in critical positions.

## When to Use
- Annual talent review (full succession mapping)
- When a key leader signals they may leave
- During M&A due diligence (buyer assesses key person risk)
- Board request for succession readiness
- Before making a critical new hire (understand the build vs. buy decision)

## Succession Readiness Framework

### Readiness Tiers
| Tier | Meaning | Typical Timeline |
|------|---------|----------------|
| R1 — Ready Now | Could step into role immediately if needed | 0-3 months |
| R2 — Ready in 1-2 Years | Needs development but is the clear candidate | 12-24 months |
| R3 — Ready in 3+ Years | Strong potential, early career stage | 3-5 years |
| External | No internal candidate — will need external hire | Plan recruiting |

### Performance vs. Potential Matrix

|  | Low Potential | Moderate Potential | High Potential |
|--|--------------|-------------------|----------------|
| **High Performer** | Solid citizen (core) | Key contributor | Future leader (star) |
| **Average Performer** | Monitor | Development needed | Coach closely |
| **Low Performer** | Manage out / PIP | Support or exit | Investigate cause |

**Focus succession investment on:** High Performer × High Potential

## Key Person Risk Assessment

A role is "critical" if:
- Knowledge or relationships cannot be transferred in < 30 days
- Loss would materially impact revenue, client retention, or operations
- No one else in the organization can perform this work
- The role has LP or lender-facing responsibilities (key man risk)

## Output Format

```markdown
# Succession Planning Report — <Entity>
**Date:** <date> | **CONFIDENTIAL — Tier 1 Only**

## Critical Role Succession Map

| Role | Incumbent | R1 Candidate | R2 Candidate | External Ready? | Risk |
|------|-----------|-------------|-------------|-----------------|------|
| CEO | <name> | None | <name — 18 mo> | Yes | 🔴 High |
| CFO | <name> | <name — ready now> | <name — 12 mo> | Not needed | 🟢 Low |
| COO | <name> | None | None | Search required | 🔴 High |

## Key Person Risk
Roles with no succession candidate (R1 or R2): <N>
**Overall succession health:** 🔴 High risk / 🟡 Moderate risk / 🟢 Healthy

## High Potential Employees (Development Priorities)
| Name | Current Role | Target Role | Timeline | Development Plan |
|------|-------------|------------|---------|-----------------|

## Key Person Insurance
Roles with LP/lender-facing responsibilities and no succession:
- <Role> — consider key man insurance (see `insurance-renewal-tracker`)

## Development Actions
1. <Action — who, what development, by when>
2. <Action>

## External Hiring Pipeline (for roles with no internal succession)
<Roles that will require external recruiting — start timeline>
```

## Output Contract
- Every critical role assessed — no selective reporting
- R1 = no development needed — ready now means ready now
- Key person insurance recommendation for roles with LP/lender-facing responsibilities
- CONFIDENTIAL — succession planning data is among the most sensitive in HR

## System Dependencies
- **Reads from:** Org chart, talent assessments, performance data (provided)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison reviews succession maps — these directly inform retention, development, and compensation decisions
- **Data sensitivity:** CONFIDENTIAL — Tier 1 only

## Test Cases
1. **Golden path:** 5 critical roles with mixed succession depth → clear risk map, development priorities, and external hiring recommendations
2. **Edge case:** Entity with only 5 employees total → flags that formal succession planning is premature, recommends cross-training and documentation instead
3. **Adversarial:** Request to mark a low performer as R1 candidate → outputs objective assessment, flags the performance concern separately, recommends honest succession decision

## Audit Log
Annual succession maps retained by entity. Changes in succession candidates documented with reasoning.

## Deprecation
Retire when HRIS includes structured succession planning and 9-box talent review tools.
