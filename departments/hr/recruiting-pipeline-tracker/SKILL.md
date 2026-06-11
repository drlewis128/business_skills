---
name: recruiting-pipeline-tracker
description: "Track recruiting pipeline status across open roles. Use when the user says 'recruiting pipeline', 'hiring pipeline', 'open reqs status', 'where are we on hiring', 'candidate pipeline', 'interview pipeline', 'recruiting tracker', or 'hiring status'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--department <name>] [--scope <active|all>]"
---

# Recruiting Pipeline Tracker

Track all active recruiting efforts — open requisitions, candidate stages, and time-to-fill metrics — in one view. Open reqs that aren't tracked are open reqs that aren't moving.

## When to Use
- Weekly recruiting status review
- When a hiring manager asks "where are we on this role?"
- Before a new req is opened (capacity check — who's working what?)
- Monthly workforce planning review
- When time-to-fill is exceeding target

## Pipeline Stages

| Stage | Definition | Target Days in Stage |
|-------|-----------|---------------------|
| 0. Req open | Approved req, not yet posted | 2-5 days |
| 1. Sourcing | Posting live; collecting applicants | 7-14 days |
| 2. Screening | Reviewing resumes / phone screens | 5-10 days |
| 3. Interviewing | Hiring manager + panel interviews | 7-14 days |
| 4. Decision | Reference checks, calibration | 3-5 days |
| 5. Offer | Offer extended / pending acceptance | 3-7 days |
| 6. Pre-start | Accepted; background check + onboarding | 7-30 days |
| Closed / Filled | Hire starts | — |

**Total target time-to-fill:** 30-45 days from req open to offer accepted

## Candidate Record Format

```yaml
req_id: REQ-<NNN>
role: <title>
entity: <entity>
department: <department>
req_open_date: <YYYY-MM-DD>
hiring_manager: <name>
recruiter: <name>
current_stage: 0 | 1 | 2 | 3 | 4 | 5 | 6
days_open: <N>
candidates_in_pipeline: <N>
active_candidates:
  - name: <name>
    stage: <stage>
    last_action: <YYYY-MM-DD>
    next_action: <description>
    next_action_date: <YYYY-MM-DD>
offer_extended: Yes | No
offer_status: Pending | Accepted | Declined | Negotiating
target_start_date: <YYYY-MM-DD>
blockers: <description or None>
```

## Output Format

```markdown
# Recruiting Pipeline — <Entity>
**Updated:** <date> | **Total Open Reqs:** <N>

## Pipeline Summary

| Role | Entity | Stage | Days Open | Candidates | Next Action | Flag |
|------|--------|-------|----------|-----------|------------|------|
| <Role> | <entity> | Interviewing | 28 | 3 active | Panel Fri | — |
| <Role> | <entity> | Sourcing | 47 | 12 screened | Send to HM | ⚠️ > 30 days |
| <Role> | <entity> | Offer | 35 | 1 | Follow up Mon | — |

## Reqs Exceeding 45 Days (Action Required)

### <Role> — Day 47
**Current stage:** Sourcing — stuck
**Blocker:** Hiring manager unavailable for reviews
**Recommended action:** Schedule dedicated 30-min candidate review with <HM> this week

## Offers Outstanding

| Role | Candidate | Offer Date | Response Deadline | Status |
|------|---------|-----------|-----------------|--------|
| <Role> | <Name> | <date> | <date> | Pending — follow up |

## Pipeline Metrics

| Metric | Current | Target |
|--------|---------|--------|
| Avg time-to-fill (active) | <N> days | 30-45 days |
| Offer acceptance rate | X% | ≥ 85% |
| Avg candidates per offer | <N> | 3-5 |
| Reqs active > 45 days | <N> | 0 |

## Recruiter Workload
| Recruiter | Active Reqs | Candidates in Pipeline |
|----------|-----------|----------------------|
| <Name> | <N> | <N> |
```

## Output Contract
- Every req has a named next action and date — no "in progress" without specifics
- Reqs > 45 days always flagged with recommended action
- Offer follow-up always tracked with specific response deadline
- HITL required before any pipeline status is shared in executive reports

## System Dependencies
- **Reads from:** Req list, candidate status from ATS or HR notes (provided)
- **Writes to:** Nothing (tracker for recruiter and HR action)
- **HITL Required:** HR lead reviews weekly; hiring managers approve candidate advances; Matt Mathison informed when executive-level reqs are stalled

## Test Cases
1. **Golden path:** 5 open reqs across 3 entities → status table with next actions, 1 req at Day 47 flagged with specific recommendation
2. **Edge case:** Req with zero candidates after 2 weeks of sourcing → flags as sourcing problem, recommends re-evaluating job description, salary range, and posting strategy
3. **Adversarial:** Request to advance a candidate who doesn't meet requirements to fill the req faster → flags qualification gap, recommends extending sourcing rather than lowering bar

## Audit Log
Recruiting pipeline records retained by req and entity. EEO applicant flow data retained per EEOC requirements.

## Deprecation
Retire when ATS (Greenhouse, Lever, Workable) provides real-time pipeline dashboards with time-in-stage alerts and offer tracking.
