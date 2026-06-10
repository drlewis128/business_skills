---
name: equipment-maintenance-scheduler
description: "Build and track equipment maintenance schedules to prevent failures and compliance gaps. Use when the user says 'equipment maintenance', 'maintenance schedule', 'preventive maintenance', 'equipment service', 'maintenance tracker', 'equipment upkeep', or 'when is the next service due'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<entity-or-equipment-type> [--entity <name>] [--criticality <critical|standard|non-critical>]"
---

# Equipment Maintenance Scheduler

Build and track preventive maintenance schedules for operational equipment. Unscheduled failures cost 3-10x more than planned maintenance — this skill eliminates surprise breakdowns.

## When to Use
- Setting up a new equipment maintenance program
- Reviewing overdue maintenance items
- Before an equipment failure causes operational disruption
- Compliance requirements (safety inspections, certifications)
- Annual operations planning (budget maintenance costs)

**Most relevant entities:**
- **HIVE Partners** — oil & gas field equipment, pumps, generators, tanks
- **Allevio** — medical equipment (regulatory compliance required), facility equipment
- **MBL** — IT infrastructure, office equipment

## Equipment Criticality Classification

| Level | Criteria | Maintenance Approach |
|-------|---------|---------------------|
| **Critical** | Failure stops operations or poses safety risk | Preventive + predictive; no deferred maintenance |
| **Standard** | Failure causes significant inconvenience | Scheduled preventive maintenance |
| **Non-critical** | Failure has minimal impact | Reactive maintenance acceptable |

## Maintenance Types

### Preventive (Scheduled)
Done on a fixed schedule regardless of condition.
- Examples: Oil changes, filter replacements, lubrication, calibration
- Frequency: Daily / Weekly / Monthly / Quarterly / Annual

### Predictive (Condition-Based)
Done when condition monitoring indicates maintenance needed.
- Examples: Vibration analysis, oil analysis, thermal imaging
- Requires baseline measurements and threshold definitions

### Corrective (Reactive)
Done after failure. Acceptable only for non-critical equipment.

### Regulatory / Compliance
Required by regulation or certification regardless of condition.
- Examples: Fire extinguisher inspections, elevator certificates, boiler inspections
- Hard deadlines — failure to inspect = compliance violation

## Maintenance Schedule Record Format

```yaml
equipment_id: EQUIP-<NNN>
name: <equipment name>
entity: <HIVE | Allevio | MBL>
location: <physical location>
criticality: Critical | Standard | Non-critical
manufacturer: <name>
model: <model>
serial_number: <SN>
in_service_date: <YYYY-MM-DD>
warranty_expiry: <YYYY-MM-DD>
maintenance_tasks:
  - task: <description>
    frequency: Daily | Weekly | Monthly | Quarterly | Annual | Custom
    last_completed: <YYYY-MM-DD>
    next_due: <YYYY-MM-DD>
    estimated_hours: <N>
    vendor_or_internal: <Vendor name or "Internal">
    compliance_required: Yes | No
    notes: <any notes>
```

## Output Format

```markdown
# Equipment Maintenance Schedule — <Entity>
**Updated:** <date> | **Next Review:** <date>

## Critical Equipment — Maintenance Summary

| Equipment | Criticality | Last Service | Next Due | Status | Compliance? |
|-----------|------------|-------------|---------|--------|------------|
| <Name> | Critical | <date> | <date> | 🟢 On Track | Yes |
| <Name> | Critical | <date> | <date> | 🔴 OVERDUE | Yes — URGENT |

## Overdue Items (Immediate Action Required)

### <Equipment Name> — OVERDUE by <N> days
**Task:** <maintenance task>
**Last completed:** <date>
**Compliance required:** Yes/No
**Action:** Schedule with <vendor/contact> by <date>

## Upcoming (Next 30 Days)

| Equipment | Task | Due Date | Vendor | Est. Cost |
|-----------|------|---------|--------|-----------|
| <Name> | <task> | <date> | <vendor> | $<N> |

## Maintenance Budget (Projected This Quarter)
| Category | Estimated Cost |
|---------|---------------|
| Preventive maintenance | $<N> |
| Compliance inspections | $<N> |
| **Total Q<N>** | **$<N>** |
```

## Output Contract
- Overdue items always surface at top — especially compliance-required inspections
- Critical equipment with overdue maintenance escalated immediately
- Every item has a specific next-due date — no open-ended "soon"
- HITL required before any maintenance spend > $500 is approved

## System Dependencies
- **Reads from:** Equipment list, maintenance records (provided)
- **Writes to:** Maintenance schedule (with HITL for spend)
- **HITL Required:** Operations lead approves all unplanned maintenance spending > $500; regulatory inspections require Dr. Lewis notification

## Test Cases
1. **Golden path:** HIVE field equipment list → full maintenance schedule with overdue items flagged and quarterly cost projection
2. **Edge case:** Equipment with no maintenance history → builds schedule from manufacturer recommendations, flags that first service is overdue-by-default
3. **Adversarial:** Deferred maintenance to save money on critical equipment → flags risk, quantifies cost of unplanned failure vs. planned maintenance, escalates to Dr. Lewis

## Audit Log
Maintenance records retained permanently per equipment item. Compliance inspection certificates logged by date.

## Deprecation
Retire when CMMS (Computerized Maintenance Management System) handles scheduling, work orders, and compliance tracking.
