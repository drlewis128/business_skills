---
name: change-management-controller
description: "Manage IT change requests, CAB review, and change risk assessment. Use when the user says 'IT change management', 'change request', 'CAB review', 'change control', 'change approval', 'planned maintenance', or 'change freeze'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <standard|normal|emergency>] [--action <submit|review|approve>]"
---

# Change Management Controller

Manage IT change requests from submission through approval, implementation, and post-change review. Uncontrolled changes are the #1 cause of preventable IT incidents. Change management is not bureaucracy — it's how you prevent a Friday night configuration change from taking down production on Monday morning.

## When to Use
- Submitting a change to a production system, network, or critical application
- Running a Change Advisory Board (CAB) review
- Planning a maintenance window
- Post-change review after an unexpected incident
- Change freeze management (end-of-year, M&A close period, etc.)

## Change Types

| Type | Definition | Approval Required | Testing Required |
|------|-----------|-----------------|----------------|
| **Standard** | Pre-approved, low-risk, repeatable changes (e.g., password reset, software install on approved list) | Pre-approved; no per-instance review | Standard checklist |
| **Normal** | Non-emergency change with meaningful risk; requires CAB review | CAB + IT Manager | Required before production |
| **Emergency** | Production system down or critical security patch; immediate action required | IT Manager verbal → CAB retroactive | Post-implementation only |

## Risk Assessment Matrix

| Impact × Likelihood | Low likelihood | Medium likelihood | High likelihood |
|--------------------|----|----|----|
| **Low impact** | Low risk | Low risk | Medium risk |
| **Medium impact** | Low risk | Medium risk | High risk |
| **High impact** | Medium risk | High risk | Do not proceed without full CAB |

## Output Format

```markdown
# Change Request — CR-<NNN>
**Entity:** <MBL entity> | **Type:** Standard / Normal / Emergency
**Submitted by:** <name> | **Date:** <date>
**Target implementation:** <date/time> | **Rollback deadline:** <date>

---

## Change Summary

**System/component affected:** <e.g., Production database server SRV-001>
**Change description:** <What is changing, in plain language>
**Business reason:** <Why this change is needed>
**Risk if not implemented:** <What happens if we don't do this>

---

## Risk Assessment

| Dimension | Assessment |
|---------|----------|
| Impact if fails | High / Medium / Low |
| Likelihood of failure | High / Medium / Low |
| Risk level | High / Medium / Low |
| Estimated downtime | <minutes/hours> or None |
| Systems/users affected | <N> users / <system list> |

---

## Implementation Plan

| Step | Action | Owner | Duration | Verification |
|------|--------|-------|---------|-------------|
| 1 | Pre-change backup | IT Tech | 30 min | Backup confirmed |
| 2 | Maintenance window communicated to users | IT Manager | 24 hrs before | Email sent |
| 3 | [Change step 1] | IT Engineer | <N> min | [Verification test] |
| 4 | [Change step 2] | IT Engineer | <N> min | [Verification test] |
| 5 | Post-change testing | IT Tech | 15 min | All tests passed |

---

## Rollback Plan

**Rollback trigger:** If [specific condition] is observed within [timeframe]
**Rollback procedure:**
1. [Step 1 to undo the change]
2. [Step 2]
**Rollback time estimate:** <N> minutes

---

## CAB Review

**Reviewers:** <names> | **Review date:** <date>
**Decision:** Approved / Rejected / Deferred
**Conditions:** <any conditions attached to approval>

---

## Post-Implementation Review

**Outcome:** Successful / Partial / Failed / Rolled Back
**Actual downtime:** <N> minutes
**Issues encountered:** <None / description>
**Follow-up actions:** <None / list>
```

## Output Contract
- Rollback plan always required for Normal and Emergency changes — no change proceeds without exit
- Implementation steps always have named owners and verification criteria
- Post-implementation review always completed within 24 hours of change
- HITL required: IT Manager approves all Normal changes; Dr. Lewis approves any change affecting financial systems or with > 4 hours potential downtime

## System Dependencies
- **Reads from:** System architecture and dependencies (provided or from IT documentation)
- **Writes to:** Change log (maintained in IT ticketing system)
- **HITL Required:** CAB reviews Normal changes; IT Manager approves Emergency changes; Dr. Lewis notified for any change affecting financial systems, customer-facing systems, or with high risk rating

## Test Cases
1. **Golden path:** Normal change — database server patch during Sunday maintenance window → risk assessment (Medium), rollback plan (restore from backup), CAB approval Thursday, IT Manager confirmed, post-change report Monday
2. **Edge case:** Emergency change during business hours (critical security patch — active exploitation) → IT Manager verbal approval, implementation begins immediately, users notified of brief outage, CAB retroactive review next day
3. **Adversarial:** Developer wants to push untested code to production without a change request ("it's a small fix") → blocked; all production changes require a change request; emergency classification available if business-critical, but testing checklist still required

## Audit Log
All change requests retained with full timeline, CAB decision, implementation result, and post-review outcome.

## Deprecation
Retire when entity deploys an ITSM platform (ServiceNow, Jira Service Management) with native change management workflow, CAB scheduling, and automated post-change review.
