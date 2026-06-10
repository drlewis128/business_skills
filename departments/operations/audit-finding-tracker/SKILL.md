---
name: audit-finding-tracker
description: "Track audit findings and remediation status from internal or external audits. Use when the user says 'audit findings', 'remediation tracker', 'audit follow-up', 'management letter items', 'audit comment status', 'what findings are open', or 'audit finding close-out'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--audit-type <external|internal|regulatory>] [--status <open|all>]"
---

# Audit Finding Tracker

Track audit findings from internal audits, external financial audits, and regulatory reviews through remediation to close. Unresolved audit findings escalate at the next audit cycle.

## When to Use
- After external auditors issue a management letter
- After an internal audit (operations, IT, financial controls)
- After a regulatory inspection (HIVE — DOGM; Allevio — CMS/state)
- Monthly remediation status review
- Before the next audit cycle (close all prior year findings)

## Finding Classification

### Severity
| Level | Name | Description | Response |
|-------|------|-------------|---------|
| 1 | Critical / Material Weakness | Pervasive control failure; financial statements unreliable | Immediate action |
| 2 | Significant Deficiency | Important weakness, not pervasive | Action within 90 days |
| 3 | Control Deficiency / Comment | Improvement opportunity, minor gap | Action within 180 days |

### Finding Types
- **Control design failure:** The control doesn't exist or isn't designed to prevent the risk
- **Control operating failure:** The control exists but didn't work as designed
- **Procedural gap:** Process doesn't match documented policy
- **Documentation gap:** Process works but evidence isn't retained

## Finding Record Format

```yaml
id: AUD-<YYYYMMDD>-<NNN>
entity: <entity>
audit_type: external | internal | regulatory
audit_period: <period>
severity: 1 | 2 | 3
category: <Financial | Operational | IT | Compliance>
finding: |
  <What the auditor found>
risk: |
  <What could go wrong because of this finding>
management_response: |
  <How management agrees to remediate>
remediation_plan: |
  <Specific steps to fix the issue>
owner: <Named person>
due_date: <YYYY-MM-DD>
status: Open | In Progress | Remediated | Closed | Accepted Risk
evidence_required: |
  <What evidence will prove remediation is complete>
closed_date: <date>
auditor_acceptance: Yes | No | Pending
```

## Remediation Status Tracking

| Status | Meaning |
|--------|---------|
| Open | Finding identified, not started |
| In Progress | Remediation underway |
| Remediated | Management believes fixed, pending evidence |
| Closed | Evidence provided, auditor/management accepted |
| Accepted Risk | Conscious decision not to remediate — documented |

## Output Format

```markdown
# Audit Finding Tracker — <Entity>
**Audit:** <audit name and period> | **Updated:** <date>

## Summary
| Severity | Total | Open | In Progress | Closed |
|---------|-------|------|------------|--------|
| 1 — Critical | <N> | <N> | <N> | <N> |
| 2 — Significant | <N> | <N> | <N> | <N> |
| 3 — Comment | <N> | <N> | <N> | <N> |

## Open Critical Findings — Immediate Attention

### AUD-<ID>: <Finding Title>
**Severity:** 1 | **Owner:** <name> | **Due:** <date>
**Finding:** <summary>
**Remediation:** <plan>
**Status:** Open / In Progress
**Evidence needed:** <evidence>

## Overdue Findings
<findings past their due date>

## Action Items This Month
| Finding | Action | Owner | Due |
|---------|--------|-------|-----|
```

## Output Contract
- All open findings shown — no selective reporting
- Overdue findings always surfaced separately
- "Accepted Risk" decisions require documented Tier 1 approval
- HITL required before any finding is closed (evidence must be reviewed)

## System Dependencies
- **Reads from:** Audit reports and management letters (provided), prior finding tracker
- **Writes to:** Finding tracker updates (with HITL)
- **HITL Required:** Finance lead and Matt Mathison review all critical (Severity 1) finding remediations before closure

## Test Cases
1. **Golden path:** 8 findings from external audit → full tracker with priorities, owners, and due dates
2. **Edge case:** Finding that cannot be remediated due to system limitation → marks as "Accepted Risk" with explicit documentation of why and Tier 1 sign-off required
3. **Adversarial:** Request to mark a finding as "Closed" without evidence → rejects closure, requires evidence submission before status change

## Audit Log
Finding trackers retained by audit and entity. Remediation evidence retained permanently as audit documentation.

## Deprecation
Retire when audit management platform (AuditBoard, Fieldguide) handles finding tracking with built-in evidence workflow.
