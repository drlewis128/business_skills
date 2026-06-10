---
name: okr-tracker
description: "Track OKR progress and surface at-risk objectives. Use when the user says 'OKR update', 'OKR status', 'quarterly objectives', 'key results update', 'are we on track', 'OKR review', 'objective status', or 'update OKRs'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--entity <name>]"
---

# OKR Tracker

Monitor quarterly OKR progress, calculate completion rates, surface at-risk key results, and generate the weekly status update for leadership review.

## When to Use
- Weekly OKR check-in (recommended cadence)
- Mid-quarter OKR review (identify off-track items early)
- End of quarter grading and retrospective
- Before the quarterly planning session (assess prior quarter outcomes)

## OKR Framework

### Objective
A qualitative, inspirational statement of what you want to achieve this quarter. Not a metric — a direction.

### Key Result
A specific, measurable outcome that proves the objective was achieved. 3-5 per objective. Must pass the "would a skeptic agree?" test.

### Confidence Scoring
| Score | Meaning |
|-------|---------|
| 1.0 | Done / certain to hit |
| 0.7 | On track |
| 0.5 | At risk — needs attention |
| 0.3 | Behind — escalate |
| 0.0 | Not started or will miss |

Target end-of-quarter score: 0.7 average (70%). Consistent 1.0 means goals were set too easy.

## Status Format Per Key Result

```
KR: <Key Result text>
Target: <metric> by <date>
Current: <metric> as of <date>
Progress: <X>% of target
Confidence: <0.0–1.0>
Status: 🟢 On Track | 🟡 At Risk | 🔴 Behind | ✅ Done
Blocker (if any): <blocker>
Owner: <name>
```

## Output Format

```markdown
# OKR Status — <Entity> — <Quarter> <Year>
**Week:** <N> of 13 | **Reviewed:** <date>

## Overall Health
| Metric | Value |
|--------|-------|
| Total Objectives | <N> |
| Total Key Results | <N> |
| Average Confidence | <X.X> |
| On Track (≥0.7) | <N> (<pct>%) |
| At Risk (0.4–0.69) | <N> (<pct>%) |
| Behind (<0.4) | <N> (<pct>%) |

## Objectives

### O1: <Objective>
**Confidence: 0.7** | **Owner:** <name>

| Key Result | Target | Current | Confidence | Status |
|-----------|--------|---------|------------|--------|
| KR1: <text> | <target> | <current> | 0.8 | 🟢 |
| KR2: <text> | <target> | <current> | 0.4 | 🟡 |

**Blocker on KR2:** <blocker — action needed>

## At-Risk Key Results — Escalation Required
1. O<N>/KR<N>: <key result> — Confidence <X> — <action required>

## Decisions Needed This Week
<OKRs where a leadership decision is needed to unblock progress>
```

## Output Contract
- Every key result has a named owner
- At-risk items (confidence < 0.5) surface to escalation section automatically
- End-of-quarter grading includes retrospective notes
- HITL required before any OKR is marked as abandoned or scope-changed

## System Dependencies
- **Reads from:** OKR database or tracker (Monday.com, provided input), weekly update inputs from owners
- **Writes to:** Monday.com OKR board items (with HITL)
- **HITL Required:** Before any objective is removed, changed in scope, or marked failed

## Test Cases
1. **Golden path:** 3 objectives, 12 KRs, mixed status → full scorecard with confidence averages and at-risk escalations
2. **Edge case:** KR that was on track but missed due to external factor → surfaces with blocker context, recommends scope discussion
3. **Adversarial:** All KRs at 1.0 confidence in week 3 → flags goals as likely too easy, recommends stretch addition

## Audit Log
Weekly OKR snapshots retained for quarter retrospective. Confidence trend tracked week-over-week for each KR.

## Deprecation
Retire when Monday.com OKR boards with automated reporting replace manual tracking.
