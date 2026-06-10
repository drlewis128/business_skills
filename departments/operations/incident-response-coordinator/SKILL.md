---
name: incident-response-coordinator
description: "Coordinate an operational or IT incident response with structured triage and communication. Use when the user says 'incident response', 'system down', 'outage', 'we have an incident', 'production down', 'critical issue', 'incident coordination', or 'we need to triage this'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<incident-description> [--severity <P1|P2|P3>] [--type <it|ops|financial|security>]"
---

# Incident Response Coordinator

Structure the response to an operational or IT incident — triage, assign, communicate, and resolve. Structured incident response reduces time-to-resolution and prevents recurrence.

## When to Use
- Any system outage or significant operational disruption
- Security incident (see also `security-incident-responder` for cyber-specific)
- Financial data integrity issue
- Vendor failure that affects operations
- Any event that requires escalation and coordinated response

## Severity Classification

| Level | Name | Example | Response Time |
|-------|------|---------|--------------|
| P1 | Critical | System-wide outage, data breach, revenue impact | Immediate — 15-min updates |
| P2 | High | Significant feature down, customer-facing degradation | 1-hour response, 2-hour updates |
| P3 | Medium | Internal tool issue, non-critical system degradation | 4-hour response, daily updates |
| P4 | Low | Minor bug, cosmetic issue | Standard backlog |

## Incident Response Phases

### Phase 1 — Declare and Triage (0-15 min)
1. Declare the incident — assign an Incident Commander
2. Classify severity (P1-P4)
3. Assemble response team (relevant technical + business stakeholders)
4. Open an incident channel (Teams/Slack) for communications
5. Assess blast radius: what/who is affected?

### Phase 2 — Contain and Diagnose (15-60 min)
1. Implement immediate mitigation (stop the bleeding)
2. Diagnose root cause (parallel track to mitigation)
3. Communicate status update to affected parties
4. Escalate if P1 is not contained in 30 minutes

### Phase 3 — Resolve
1. Implement fix
2. Verify resolution (confirm with affected users)
3. Update all stakeholders

### Phase 4 — Post-Incident (within 24-48 hours)
1. Conduct post-mortem (see `post-mortem-drafter`)
2. Document incident timeline
3. Identify and assign prevention actions
4. Review and close incident record

## Escalation Matrix

| Severity | Notify Immediately | Notify Within 1 Hour |
|---------|-------------------|---------------------|
| P1 | Dr. Lewis + Matt Mathison | All affected entity leads |
| P2 | Dr. Lewis | Relevant entity lead |
| P3 | Technical team | Entity lead (if external impact) |
| P4 | Assigned team | — |

## Output Format

```markdown
# Incident Report: INC-<YYYYMMDD>-<NNN>
**Declared:** <time> | **Severity:** P<N> | **Type:** IT / Ops / Security
**Incident Commander:** <name>

## Summary
<What happened — 2 sentences, factual>

## Impact Assessment
- Systems/services affected: <list>
- Users affected: <N>
- Revenue impact: $X estimated / Unknown
- Data affected: Yes / No / Unknown

## Timeline
| Time | Event |
|------|-------|
| <time> | Incident detected |
| <time> | Incident declared |
| <time> | Mitigation applied |
| <time> | Root cause identified |
| <time> | Resolved |

## Root Cause
<What caused this — stated as known fact or working hypothesis>

## Resolution
<What was done to resolve>

## Status Updates Sent
| Time | Audience | Channel | Message Summary |
|------|----------|---------|----------------|

## Next Steps (Post-Incident)
- [ ] Post-mortem scheduled: <date/time>
- [ ] Prevention actions: <list with owners>
- [ ] Incident formally closed: <date>
```

## Output Contract
- Severity classification made immediately — drives response pace
- Impact always assessed before deep diagnosis (know the blast radius first)
- Status updates to affected parties sent per severity schedule
- HITL required before any P1 external communication

## System Dependencies
- **Reads from:** Incident description (provided), system status, escalation matrix
- **Writes to:** Incident record (output); Teams/Slack channel coordination guidance
- **HITL Required:** Dr. Lewis approves P1 external communications; Matt Mathison notified on all P1 incidents

## Test Cases
1. **Golden path:** P2 IT outage — QuickBooks inaccessible → structured triage, correct escalation, status update template
2. **Edge case:** Incident discovered 4 hours after it started → timeline reconstructed from available data, flags delayed detection as root cause factor
3. **Adversarial:** Team wants to skip post-mortem → incident record kept open until post-mortem is scheduled and completed

## Audit Log
All incidents logged with INC-ID. P1 and P2 incidents retained with full timeline and post-mortem link.

## Deprecation
Retire when incident management platform (PagerDuty, OpsGenie) handles structured incident response.
