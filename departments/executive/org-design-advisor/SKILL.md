---
name: org-design-advisor
description: "Advise on organizational structure design for growth, efficiency, or post-acquisition alignment. Use when the user says 'org design', 'org structure', 'how should we structure the team', 'reporting structure', 'org chart design', 'span of control', 'org chart review', or 'how should we organize'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<org-context> [--entity <name>] [--size <N-employees>] [--trigger <growth|acquisition|efficiency>]"
---

# Org Design Advisor

Evaluate and recommend organizational structures for MBL entities at different growth stages or in response to an acquisition or efficiency initiative.

## When to Use
- Post-acquisition (integrate two orgs into one)
- Rapid growth (current structure won't scale)
- Efficiency drive (too many layers, too-wide spans)
- New function launch (how do we structure this team?)
- Annual org review (does the structure still fit the strategy?)

## Org Design Principles

### Core Design Questions
1. What's the primary axis of organization? (Function / Geography / Product / Customer)
2. What decisions need to be made daily — and who should make them?
3. What's the right span of control?
4. Where should the center of gravity sit? (Centralized vs. decentralized)

### Span of Control Guidelines
| Manager Type | Ideal Span | Max Span |
|-------------|-----------|---------|
| Operational manager (routine, similar work) | 8-12 | 15 |
| Knowledge worker manager (complex, varied) | 5-7 | 10 |
| Senior executive | 5-8 | 10 |
| Front-line service | 10-20 | 25 |

**Warning signs:**
- < 3 direct reports: over-management (consolidate)
- > 15 direct reports for knowledge workers: under-management (add layer)

### Common Structural Models

| Model | Best For | Tradeoffs |
|-------|----------|-----------|
| **Functional** | Early stage, single product/market | Clear expertise; siloed cross-function |
| **Divisional** | Multiple products or geographies | Autonomy; duplication |
| **Matrix** | Complex products with shared resources | Flexibility; ambiguity |
| **Pod/Squad** | Product or digital teams | Speed; inconsistency |
| **Holding company** | MBL's model — separate entities | Flexibility; governance overhead |

## Output Format

```markdown
# Org Design Recommendation — <Entity>
**Trigger:** <growth|acquisition|efficiency> | **Current Size:** <N> | **Date:** <date>

## Current State Assessment
[Description of current structure, key spans, observed issues]

## Core Design Recommendations

### 1. Recommended Primary Structure: <Functional / Divisional / Matrix>
**Rationale:** <Why this fits the entity's stage and strategy>

### 2. Proposed Structure (Outline)
<Org chart in text outline format>
CEO / Managing Partner
├── CFO / Finance
│   ├── Controller
│   └── AP/AR (shared services)
├── COO / Operations
│   ├── [Entity] Operations Lead
│   └── ...
└── ...

### 3. Span of Control Assessment
| Leader | Current Reports | Recommended | Action |
|--------|----------------|-------------|--------|
| CEO | 9 direct | 6-7 | Delegate 2 to COO |

### 4. Critical Roles to Fill/Change
| Gap | Why Critical | Priority |
|-----|-------------|---------|
| COO | CEO span too wide | P1 |

### 5. Implementation Sequence
[Don't reorganize all at once — sequence matters]

## Trade-Offs Accepted
<What this structure optimizes for and what it sacrifices>

## 90-Day Implementation Plan
<How to get from current to recommended structure>
```

## Output Contract
- Always provides a "why this structure" rationale — not just an org chart
- Trade-offs always acknowledged — no structure is perfect
- Implementation sequence included for any structure change with >20 people
- HITL required before any org structure change is communicated to employees

## System Dependencies
- **Reads from:** Current org chart and headcount data (provided), strategy context
- **Writes to:** Nothing (recommendations for Matt and HR review)
- **HITL Required:** Matt Mathison reviews and approves all org structure changes

## Test Cases
1. **Golden path:** 25-person entity post-acquisition → functional structure recommendation with clear rationale and 90-day implementation plan
2. **Edge case:** CEO with 14 direct reports → flags excessive span, recommends adding COO and grouping functions logically
3. **Adversarial:** Request to design org that eliminates a specific person's role → designs for function, not individuals; flags if the recommended structure happens to affect specific roles

## Audit Log
Org design recommendations retained by entity and date. Implemented org changes documented with effective date.

## Deprecation
Review annually as entities scale. Small-company structures almost always need redesign at 20, 50, and 150 employees.
