---
name: candidate-screening-checklist
description: "Screen a candidate against role requirements and produce a pass/fail recommendation. Use when the user says 'screen this candidate', 'candidate screening', 'resume review', 'does this candidate qualify', 'phone screen prep', 'applicant review', or 'should we move this person forward'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<role-title> [--candidate <name>] [--stage <resume|phone-screen|hiring-manager>]"
---

# Candidate Screening Checklist

Evaluate a candidate against defined role requirements and produce a structured pass/advance/decline recommendation. Consistent screening reduces bias and improves hire quality.

## When to Use
- Resume/application review (Stage 1)
- Phone screen preparation and scoring (Stage 2)
- Hiring manager screen scoring (Stage 3)
- Any time a candidate needs to be assessed against defined criteria

## Screening Stages

### Stage 1 — Resume Screen (5-10 min)
Goal: Does this person meet the baseline qualifications? Pass to phone screen or decline.

### Stage 2 — Phone Screen (20-30 min)
Goal: Confirm qualifications, assess communication, gauge interest and fit. Pass to hiring manager or decline.

### Stage 3 — Hiring Manager Screen
Goal: Deep dive on skills and experience. Assess culture alignment. Pass to interview loop or decline.

## Screening Criteria Framework

Evaluate on three dimensions:
1. **Qualifications** — Do they meet the must-have requirements from the JD?
2. **Experience Depth** — Is their experience at the right level and scope?
3. **Red Flags** — Are there signals that suggest this isn't a fit?

### Qualification Checklist
For each required qualification from the JD:
- [ ] Met
- [ ] Partially met (note gap)
- [ ] Not met (flag)

### Red Flag Signals
| Signal | Weight |
|--------|--------|
| Gap in employment unexplained | Moderate — ask about it |
| Short tenure pattern (< 1 year at each role) | Moderate — ask about reasons |
| Resume doesn't match LinkedIn | High — verify |
| Overqualified for role | Flag — assess misalignment risk |
| Salary expectations far above range | Practical — flag early |
| Application quality is poor (errors, generic) | Low-moderate signal |

### Green Flag Signals
| Signal | Weight |
|--------|--------|
| Quantified accomplishments ("grew X by Y%") | Strong — shows impact orientation |
| Progressive responsibility over time | Strong — shows growth |
| Direct industry / domain experience | Strong |
| Referral from trusted source | Strong |
| Applied directly (not via job board spray) | Moderate — shows intent |

## Phone Screen Question Bank

For Stage 2 screening:

**Opening:**
- "Tell me about your current/most recent role and what brought you to apply for this position."

**Qualifications:**
- "Walk me through how you've [done the key requirement] in a recent role."
- "What's the largest [project/team/budget] you've managed directly?"

**Motivation:**
- "What's driving your search right now?"
- "What does your ideal next role look like?"

**Logistics:**
- "What are your compensation expectations?"
- "Are you interviewing anywhere else, and what's your timeline?"
- "Can you confirm you're eligible to work in [location/jurisdiction]?"

## Output Format

```markdown
# Candidate Screen — <Name>
**Role:** <role title> | **Stage:** <resume | phone screen | hiring manager>
**Screener:** <name> | **Date:** <date>

## Recommendation: ADVANCE / DECLINE / HOLD

## Qualifications Assessment

| Requirement | Status | Notes |
|------------|--------|-------|
| <Req 1> | ✅ Met | <evidence from resume/conversation> |
| <Req 2> | ⚠️ Partial | <gap description> |
| <Req 3> | ❌ Not Met | <missing skill> |

**Required qualifications met:** <N>/<total>

## Red Flags
- <Flag if any, or "None identified">

## Green Flags
- <Positive signal with evidence>

## Compensation Alignment
**Their expectation:** $<N> | **Our range:** $<N>–$<N> | **Aligned:** Yes / No / Gap

## Summary
<2-3 sentences: why advance or decline, what to probe in next stage>

## Suggested Next Steps (if advancing)
- Focus interview on: <specific gap or area to probe>
- Suggested interviewer: <name or role>
```

## Output Contract
- Recommendation stated at the top — not buried in the summary
- Every required qualification explicitly assessed
- Compensation alignment always checked — prevents late-stage fallouts
- HITL required before any decline communication is sent to candidates

## System Dependencies
- **Reads from:** JD/role requirements, resume or phone screen notes (provided)
- **Writes to:** Nothing (screening report for HITL review)
- **HITL Required:** HR lead reviews decline recommendations; hiring manager approves all advances

## Test Cases
1. **Golden path:** Resume against operations manager JD → structured assessment with 4/5 requirements met, one gap flagged, advance recommendation with interview focus area
2. **Edge case:** Overqualified candidate → surfaces overqualification risk explicitly, recommends addressing in phone screen before advancing
3. **Adversarial:** Request to decline based on non-job-related factors → flags EEO compliance issue, redirects to job-related criteria only

## Audit Log
Screening records retained by candidate, role, and date for EEO compliance documentation.

## Deprecation
Retire when ATS (Greenhouse, Lever, Workable) includes structured screening with automated criteria matching.
