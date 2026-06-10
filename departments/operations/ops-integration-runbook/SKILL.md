---
name: ops-integration-runbook
description: "Build or execute an integration runbook for connecting two systems or onboarding a new operational tool. Use when the user says 'integration runbook', 'system integration', 'connect these systems', 'integration guide', 'how do we integrate X', 'new system setup', 'integration checklist', or 'runbook for integrating'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<system-a> <system-b> [--entity <name>] [--integration-type <api|webhook|file|manual>]"
---

# Ops Integration Runbook

Build a structured runbook for integrating two operational systems or deploying a new tool into the MBL technology stack. Undocumented integrations are the top source of "it just broke and nobody knows why" incidents.

## When to Use
- Deploying a new software tool (pre-implementation planning)
- Connecting two systems via API, webhook, or file transfer
- Post-acquisition system integration planning
- Documenting an existing undocumented integration (before it breaks)
- Handing off an integration to someone else

**Core systems to integrate against:**
- **Krista.ai** — primary orchestration layer; most new integrations should route through Krista
- **Microsoft 365** (Outlook, Teams, SharePoint) — identity and comms backbone
- **Monday.com** — task and project tracking; integration target for action items
- **QuickBooks** — financial system of record; HITL required for all writes
- **GoHighLevel** — CRM for MBL and North Vista

## Runbook Sections

### 1. Integration Overview
- **Systems:** System A ↔ System B
- **Purpose:** What does this integration accomplish?
- **Data flow direction:** A → B / B → A / Bidirectional
- **Integration type:** API / Webhook / File transfer / Manual process
- **Trigger:** What initiates data movement (event, schedule, manual)?
- **Owner:** Who is responsible for this integration's health?

### 2. Prerequisites
Before starting integration work:
- [ ] API credentials obtained and stored securely
- [ ] Sandbox/test environments available
- [ ] Network access / firewall rules confirmed
- [ ] Data mapping documented (field A in System A = field B in System B)
- [ ] Error handling requirements defined
- [ ] HITL checkpoints identified (what requires human review before action?)
- [ ] Rollback plan documented

### 3. Data Mapping

For each data element transferred:
```yaml
field_mapping:
  - source_system: <System A>
    source_field: <field name>
    target_system: <System B>
    target_field: <field name>
    transformation: <none | format | calculation | lookup>
    required: Yes | No
    validation_rule: <any validation applied>
```

### 4. Integration Steps (Execution)

Numbered, sequential steps with:
- Step description
- System being acted on
- Expected result
- How to verify success
- What to do if it fails

### 5. Error Handling

| Error Type | Detection | Response | Owner |
|-----------|-----------|---------|-------|
| Authentication failure | API returns 401/403 | Alert, retry with fresh token | Integration owner |
| Data validation failure | Field missing/wrong type | Log, skip record, alert | Integration owner |
| Downstream system unavailable | Timeout / 5xx | Queue for retry, alert | Operations lead |
| Duplicate record | Duplicate check failed | Merge or reject per business rule | HITL |

### 6. Testing Checklist
- [ ] Happy path: valid data flows end-to-end
- [ ] Null/empty fields: integration handles gracefully
- [ ] Duplicate detection: no double records created
- [ ] Error injection: downstream unavailable — queuing works
- [ ] Volume test: <N> records per batch processes without timeout
- [ ] Rollback test: integration can be disabled cleanly without data loss

### 7. Monitoring and Alerting
- What signals indicate the integration is healthy?
- What signals indicate failure?
- Who gets alerted and how?
- How often is integration health reviewed?

### 8. Rollback Plan
If the integration causes unexpected issues:
- How to disable it without breaking downstream systems
- Whether to flush queued data or hold it
- Who makes the rollback decision

## Output Format

```markdown
# Integration Runbook — <System A> ↔ <System B>
**Entity:** <entity> | **Integration Type:** <type> | **Owner:** <name>
**Version:** 1.0 | **Created:** <date> | **Last Updated:** <date>

## Integration Purpose
<One paragraph: why this integration exists and what it does>

## Architecture

```
<System A> —[trigger]→ <Integration layer / Krista.ai> —[action]→ <System B>
                            ↓
                    [Error queue / DLQ]
```

## Prerequisites
- [ ] <prereq 1>
- [ ] <prereq 2>

## Data Mapping
| Source | Source Field | Target | Target Field | Transform |
|--------|-------------|--------|-------------|----------|
| <A> | <field> | <B> | <field> | none |

## Execution Steps
1. <Step> — **System:** <system> | **Verify:** <how> | **If fails:** <action>
2. <Step>

## Error Handling
<Error table>

## Testing Checklist
<Checklist>

## Monitoring
Health check: <method and frequency>
Alert channel: <how failures are surfaced>

## Rollback
Disable: <specific steps>
Decision authority: <who decides to rollback>
```

## Output Contract
- Rollback plan always documented — never deploy without it
- HITL checkpoints always identified before any integration that writes to financial systems
- Error handling always defined — no "it'll work or we'll deal with it"
- Every integration has a named owner responsible for its health

## System Dependencies
- **Reads from:** Integration requirements and credentials (provided)
- **Writes to:** Nothing (runbook artifact for HITL review and implementation)
- **HITL Required:** Dr. Lewis reviews all runbooks for integrations writing to QuickBooks, Bill.com, or financial systems before deployment; Matt Mathison reviews any integration affecting LP or investor data

## Test Cases
1. **Golden path:** Monday.com → Krista.ai webhook for task updates → full runbook with data mapping, 6-step execution plan, and monitoring setup
2. **Edge case:** Integration with no available sandbox environment → flags as high risk, requires production rollback plan before proceeding
3. **Adversarial:** Integration that bypasses Krista.ai orchestration layer → recommends routing through Krista for auditability and centralized error handling

## Audit Log
Integration runbooks versioned by date. Deployment and change events logged with owner and reason.

## Deprecation
Retire when iPaaS platform (Zapier, Make, Boomi) handles integration documentation and runbooks as part of the integration definition itself.
