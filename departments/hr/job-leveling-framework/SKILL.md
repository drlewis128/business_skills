---
name: job-leveling-framework
description: "Build or apply a job leveling framework to classify roles consistently. Use when the user says 'job leveling', 'career levels', 'role classification', 'job grades', 'what level is this role', 'build a leveling system', 'career ladder', or 'job band framework'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--role <title>] [--track <ic|management>]"
---

# Job Leveling Framework

Build or apply a consistent job leveling framework to classify roles across an organization. Without a leveling system, compensation is arbitrary, promotions are political, and career paths are unclear.

## When to Use
- Building a compensation and career structure from scratch
- Post-acquisition harmonization (two companies with different level systems)
- Classifying a new role before writing the job description
- Determining the right level for a promotion decision
- Annual compensation review (are roles classified correctly?)

## Leveling Dimensions

Rate each role on three dimensions:
1. **Scope** — What is the breadth and scale of impact?
2. **Complexity** — How ambiguous and novel are the problems?
3. **Autonomy** — How much guidance is needed vs. self-directed?

## Standard Level Framework

### Individual Contributor (IC) Track

| Level | Title | Scope | Complexity | Autonomy | Experience (Typical) |
|-------|-------|-------|-----------|---------|---------------------|
| IC1 | Associate / Junior | Team; well-defined tasks | Structured, known solutions | Needs close guidance | 0-2 years |
| IC2 | Specialist / Analyst | Team; expanding tasks | Some ambiguity | Works with periodic guidance | 2-4 years |
| IC3 | Senior Specialist | Department; owns workstreams | Moderate ambiguity | Works independently | 4-7 years |
| IC4 | Lead / Staff | Cross-department; leads projects | High ambiguity; novel problems | Self-directed; influences others | 7-12 years |
| IC5 | Principal / Expert | Cross-company; strategic impact | Complex, first-principles thinking | Sets direction; minimal oversight | 12+ years |

### Management Track

| Level | Title | Scope | Span | Complexity | Experience (Typical) |
|-------|-------|-------|------|-----------|---------------------|
| M1 | Manager | Team (3-8 direct) | Direct management | Manages known complexity | 5-8 years + 1-2 yr managing |
| M2 | Senior Manager | Large team or multiple teams | Multi-level | Manages strategic complexity | 8-12 years + 3-5 yr managing |
| M3 | Director | Department or business unit | Multiple managers | Organizational complexity | 12-15 years + 5+ yr managing |
| M4 | VP / Sr. Director | Multiple departments or entity | Executive scope | Enterprise-level complexity | 15+ years + 8+ yr managing |
| M5 | C-Suite / Partner | Company-wide | Full executive | Sets company direction | 20+ years |

## Role Classification Process

For a given role:
1. **Define scope:** Does this role impact a task, team, department, or company?
2. **Define complexity:** Are problems routine, somewhat ambiguous, or novel?
3. **Define autonomy:** Does the person need daily guidance, periodic check-ins, or operates independently?
4. **Map to level:** Match the dimension scores to the framework
5. **Sanity check:** Does this level make sense for the responsibilities? The title? The market?

## Level Calibration Questions

When in doubt between two levels, ask:
- Could this person train the level below? (If yes, they're at the higher level)
- Does this person set direction, or follow it? (Director sets; manager executes)
- How often does their manager review their work? (Daily = junior; rarely = senior+)
- What's the cost of their mistake? (Individual = junior; team = mid; company = senior+)

## Output Format

```markdown
# Job Leveling Assessment — <Role Title>
**Entity:** <entity> | **Department:** <department> | **Date:** <date>

## Dimension Assessment

| Dimension | Score (1-5) | Rationale |
|---------|------------|----------|
| Scope | <N>/5 | <brief explanation> |
| Complexity | <N>/5 | <brief explanation> |
| Autonomy | <N>/5 | <brief explanation> |
| **Average** | **<N>/5** | |

## Level Recommendation
**Recommended Level:** <Level> — <Title>
**Track:** IC / Management

**Rationale:** <2-3 sentences explaining why this level fits based on the dimensions above>

## Comparable Roles (Internal)
<List similar roles and their current levels for consistency check>

## Market Data
**Typical market level for this role:** <Level range>
**Notable differentiators from market average:** <if any>
```

## Output Contract
- Level recommendation always supported by dimension scoring — never just by title
- Both IC and management tracks always presented (let the hiring manager choose)
- Sanity check against internal peers always performed
- HITL required before any leveling decision affects compensation or title

## System Dependencies
- **Reads from:** Role description, org chart context (provided)
- **Writes to:** Nothing (leveling assessment for HITL review)
- **HITL Required:** HR lead and hiring manager agree on level before posting or communicating to employee; Finance confirms compensation range for the level

## Test Cases
1. **Golden path:** New operations analyst role → dimension scoring, IC2 recommendation with rationale, market level confirmation
2. **Edge case:** Role spans IC and Management track depending on team structure → presents both options with trade-offs, recommends decision based on org design intent
3. **Adversarial:** Request to inflate level to justify a higher salary offer → flags that leveling inflation creates internal equity issues, recommends addressing compensation via range adjustment rather than level inflation

## Audit Log
Level assessments retained by role and date. Level changes tracked in HRIS for compensation equity analysis.

## Deprecation
Retire when HRIS includes a job architecture module with leveling definitions, compensation bands, and career path mapping.
