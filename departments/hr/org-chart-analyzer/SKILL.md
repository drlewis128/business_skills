---
name: org-chart-analyzer
description: "Analyze an organizational structure for design effectiveness and span of control. Use when the user says 'org chart', 'org structure', 'organizational design', 'span of control', 'org analysis', 'is our org chart right', 'organizational structure review', or 'how should we be organized'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--focus <span-of-control|layers|efficiency|design>]"
---

# Org Chart Analyzer

Analyze an organizational structure for design effectiveness, management spans, reporting layers, and alignment with strategy. Organizations that don't evolve their structure as they grow create bottlenecks, duplicated effort, and manager burnout.

## When to Use
- Post-acquisition (how is this company organized, and does it make sense?)
- When an organization is growing past a structural inflection point (10→30→100 employees)
- When decision-making is slow or unclear (org structure is often the root cause)
- Annual organizational design review
- When a department is underperforming (structure may be contributing)
- Before major headcount changes (add or reduce)

## Org Design Principles

### Principle 1: Structure Follows Strategy
Organization design should be determined by what the business needs to execute its strategy. The org chart is a tool, not a goal.

### Principle 2: Optimal Span of Control

| Manager Level | Optimal Span | Rationale |
|-------------|------------|---------|
| Executive (VP+) | 4-8 direct reports | Strategic work; high-touch management |
| Manager / Director | 5-10 direct reports | Operational work; coaching-intensive |
| Team Lead | 8-15 direct reports | Execution-heavy; structured processes |

**Warning signals:**
- Span < 3: Manager may be a bottleneck or role should be reorganized
- Span > 15: Manager is likely unable to develop direct reports effectively

### Principle 3: Layers of Management
Flat organizations (fewer layers) make decisions faster. Tall organizations create coordination overhead.

| Company Size | Target Layers (IC to CEO) |
|------------|--------------------------|
| < 50 employees | 2-3 layers |
| 50-200 employees | 3-4 layers |
| 200-500 employees | 4-5 layers |
| 500+ employees | 5-6 layers max |

### Principle 4: Functional vs. Divisional vs. Matrix

| Structure | Best When | Risk |
|----------|---------|------|
| **Functional** (by department) | Single business unit; need deep functional expertise | Silos; slow cross-functional decisions |
| **Divisional** (by product/market) | Multiple distinct business units; need speed within each | Duplication of functions |
| **Matrix** (dual reporting) | Need cross-functional projects + functional depth | Complexity; authority confusion |

**MBL context:** Portfolio companies likely best as functional at entity level, with dotted-line to MBL functional leads (Finance, HR) for oversight.

## Analysis Framework

### Span of Control Assessment
For each manager:
- Count direct reports
- Classify: Optimal / Too Narrow / Too Wide
- Note: Is work complexity high or low? (High complexity = narrower span is acceptable)

### Layer Analysis
- Count layers from individual contributor to CEO
- Identify "organizational debt" — layers added without strategic intent

### Duplication / Gaps
- Are there functions duplicated across teams?
- Are there capabilities no one owns?

### Decision Rights Clarity
- Are key decisions clearly owned?
- Are there common decision bottlenecks?

## Output Format

```markdown
# Org Structure Analysis — <Entity>
**Date:** <date> | **Total HC:** <N> | **Focus:** <focus area>

## Structure Overview

**Structure Type:** Functional / Divisional / Matrix
**Management Layers:** <N> (IC to <top leader>)
**Target for this size:** <N> layers

## Span of Control Analysis

| Manager | Level | Direct Reports | Assessment | Flag |
|---------|-------|--------------|-----------|------|
| <Name> | Director | 12 | ⚠️ Wide | Consider sub-team leads |
| <Name> | Manager | 2 | ⚠️ Narrow | Consolidate or expand scope |
| <Name> | Manager | 7 | ✅ Optimal | — |

## Layer Analysis
**Current layers:** <N>
**Target for size:** <N>
**Assessment:** At target / Over-layered / Under-layered
**Over-layered impact:** <if applicable — coordination cost, slow decisions>

## Structural Issues Identified

### Issue 1: <Description>
**Evidence:** <specific org chart data>
**Impact:** <how this affects business performance>
**Recommendation:** <specific structural change>

### Issue 2: <Description>
[same structure]

## Decision Rights Gaps
- <Decision that has unclear ownership>
- <Decision that requires too many approvals>

## Recommended Structural Changes

| Change | Priority | Expected Benefit | Complexity |
|-------|---------|----------------|-----------|
| <Change> | High | <benefit> | Low / Medium / High |

## Implementation Considerations
Any structural change should be:
1. Communicated to affected employees before announcement
2. Tied to a clear rationale (strategy, growth, efficiency)
3. Implemented in stages if large (avoid massive simultaneous reorgs)
```

## Output Contract
- Span of control always assessed for every manager with named flags
- Layer count always compared to benchmark for company size
- Every structural recommendation has an expected business benefit
- HITL required before any org structure change is communicated to employees or announced

## System Dependencies
- **Reads from:** Org chart data (provided — visual or list format)
- **Writes to:** Nothing (analysis for HITL decision-making)
- **HITL Required:** Dr. Lewis and Matt Mathison approve all structural changes; HR lead manages communication plan

## Test Cases
1. **Golden path:** 40-person entity org chart → span analysis (2 managers over-spanned), 4 layers (appropriate), 1 structural recommendation with rationale
2. **Edge case:** Matrix structure with dual reporting → flags complexity, assesses decision confusion risk, recommends clearer primary/secondary reporting definition
3. **Adversarial:** Request to add a management layer to accommodate a person who wants a direct report → flags that this is "org chart inflation" driven by a person, not strategy, and recommends addressing via promotion/title or role expansion instead

## Audit Log
Org chart versions retained by entity and date for organizational history. Structural changes documented with rationale.

## Deprecation
Retire when HRIS provides visual org chart with automated span-of-control analysis and layer counting.
