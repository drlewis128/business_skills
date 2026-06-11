---
name: training-needs-assessment
description: "Assess training and development needs for a team or individual. Use when the user says 'training needs', 'skills gap', 'learning needs assessment', 'training plan', 'skill gaps', 'what training do we need', 'development needs', or 'TNA'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<team-or-individual> [--role <title>] [--entity <name>] [--focus <technical|leadership|compliance|all>]"
---

# Training Needs Assessment

Identify skill gaps and training needs for individuals or teams and produce a prioritized development plan. Training without a needs assessment is guessing — and guessing wastes budget.

## When to Use
- Annual training budget planning
- Post-performance review (development areas identified → what training addresses them?)
- After a process change (new system, new workflow — what training is needed?)
- When a team is underperforming on a specific skill
- New manager transition (what does this person need to succeed?)
- Post-acquisition (what capability gaps did we inherit?)

## Assessment Dimensions

### Technical / Functional Skills
Skills specific to the role and function:
- Finance: QuickBooks, financial modeling, Excel
- Operations: Monday.com, process design, vendor management
- Clinical (Allevio): EHR systems, clinical protocols, coding
- Technology: specific platforms, programming languages, security
- Leadership: people management, coaching, delegation, conflict resolution

### Compliance Training (Non-negotiable)
Required training by law or policy:
- HIPAA (Allevio — mandatory)
- Sexual harassment prevention (California annual; other states)
- Safety / OSHA (HIVE — field operations)
- Cybersecurity awareness (all entities)
- Diversity and inclusion (policy-based)

### Professional / Soft Skills
Broadly applicable development:
- Communication and presentation
- Time management and prioritization
- Data analysis and decision-making
- Project management fundamentals

## Needs Assessment Process

### Step 1: Define Role Requirements
What skills does this role require to perform at full competency?

### Step 2: Assess Current State
For each skill area: rate the current proficiency.

| Rating | Description |
|--------|------------|
| 1 | No awareness or capability |
| 2 | Basic awareness; cannot perform independently |
| 3 | Working knowledge; performs with guidance |
| 4 | Proficient; performs independently |
| 5 | Expert; can train others |

### Step 3: Identify Gaps
Gap = Required proficiency − Current proficiency

### Step 4: Prioritize
Prioritize by:
1. Compliance (mandatory; highest priority)
2. Performance impact (gaps that most affect job outcomes)
3. Career development (gaps that limit growth)

### Step 5: Map to Training Solutions

| Gap Type | Solution |
|---------|---------|
| Technical skill, narrow | Vendor training, online course |
| Technical skill, broad | Formal course, certification |
| Leadership skill | Coaching, cohort program, mentorship |
| Compliance | Mandatory training module |
| On-the-job | Stretch assignment, job shadowing, mentorship |

## Output Format

```markdown
# Training Needs Assessment — <Team/Individual>
**Entity:** <entity> | **Role:** <role> | **Date:** <date>

## Skill Gap Summary

| Skill Area | Required | Current | Gap | Priority |
|-----------|---------|---------|-----|---------|
| <Skill 1> | 4 | 2 | -2 | 🔴 High |
| <Skill 2> | 3 | 3 | 0 | ✅ Met |
| <Skill 3> | 4 | 1 | -3 | 🔴 Compliance — mandatory |

## Compliance Training Status

| Training | Required | Completed | Deadline | Status |
|---------|---------|---------|---------|--------|
| HIPAA (Allevio) | Yes | No | <date> | 🔴 Past due |
| Harassment Prevention | Yes | Yes | Annual | ✅ Current |

## Priority Development Plan

### Priority 1 — Compliance: <Training Name>
**Gap:** Not completed; past due
**Solution:** <vendor> online module
**Timeline:** Complete by <date>
**Cost:** $<N> (or included in existing subscription)

### Priority 2 — <Skill Area>
**Gap:** Current 2/5; Required 4/5
**Root cause:** <role change, new process, etc.>
**Solution:** <specific course, certification, or on-the-job plan>
**Timeline:** <timeframe>
**Cost:** $<N>

## Training Budget Estimate
| Item | Cost | Timeline |
|------|------|---------|
| <Training> | $<N> | <date> |
| **Total** | **$<N>** | |
```

## Output Contract
- Compliance gaps always Priority 1 — no exceptions
- Every gap has a specific solution (course, program, OJT) — not just "more training"
- Budget estimate always included — development plans without cost are not real plans
- HITL required before training commitments are communicated to employee or spent

## System Dependencies
- **Reads from:** Role requirements, skill assessment data (provided), performance review data from `performance-review-facilitator`
- **Writes to:** Nothing (assessment and plan for HITL review)
- **HITL Required:** HR lead and manager review plan; Finance approves training spend over $500

## Test Cases
1. **Golden path:** Allevio clinical coordinator → HIPAA past-due flagged, 3 technical gaps identified, prioritized 90-day training plan with cost
2. **Edge case:** Individual with no skill gaps → confirms current competency, recommends advanced development for retention, flags if role progression is appropriate
3. **Adversarial:** Request to waive compliance training to save money → refuses, explains legal requirement and liability risk, finds lowest-cost compliant option instead

## Audit Log
Training assessments and completion records retained by employee and date. Compliance training certificates retained per regulatory requirement.

## Deprecation
Retire when LMS (Cornerstone, TalentLMS, Workday Learning) provides automated gap analysis and training assignment based on role and competency model.
