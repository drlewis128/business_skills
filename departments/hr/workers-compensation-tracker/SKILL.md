---
name: workers-compensation-tracker
description: "Track workers' compensation claims and return-to-work status. Use when the user says 'workers comp', 'workers compensation', 'workplace injury', 'comp claim', 'injury tracker', 'OSHA recordable', 'return to work', or 'lost time incident'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--claim <claim-number>] [--status <open|all>]"
---

# Workers' Compensation Tracker

Track workers' compensation claims, OSHA recordability, and return-to-work status. Workers' comp claims directly impact insurance premiums — active case management reduces claim duration and cost.

## When to Use
- Any workplace injury or illness occurs
- Tracking open claims through closure
- OSHA 300 log maintenance (required for 10+ employees)
- Annual OSHA 300A summary posting (Feb 1 – Apr 30)
- Return-to-work program management
- Experience modification rate (EMR) review

**Most critical for:**
- **HIVE Partners** — field operations with physical injury risk (heavy equipment, lifting, chemical exposure)
- **Allevio** — clinical staff (needlesticks, patient handling, repetitive motion)

## Immediate Response Protocol (Any Injury)

1. **Ensure medical care** — Provide first aid; send to approved medical provider for anything beyond minor first aid
2. **Secure the scene** — Prevent further injury; preserve evidence
3. **Report to HR within 24 hours** — Never delay injury reporting
4. **Complete incident report** — Before end of day if possible
5. **File workers' comp claim** — With carrier within 24-72 hours depending on state
6. **Determine OSHA recordability** — Not all injuries are OSHA-recordable

## OSHA Recordability Determination

An injury/illness is OSHA-recordable if it results in:
- Days away from work
- Restricted work or job transfer
- Medical treatment beyond first aid
- Loss of consciousness
- Diagnosis by a healthcare professional

**Not recordable:** First aid only (bandages, OTC medication, simple observation)

## OSHA First Aid vs. Medical Treatment

| First Aid (Not Recordable) | Medical Treatment (Recordable) |
|---------------------------|-------------------------------|
| Bandages, wound closure strips | Prescription medication |
| OTC medication (non-prescription) | Sutures |
| Hot/cold therapy | Physical therapy (> 1 visit) |
| Non-prescription eye drops | Chiropractic treatment (> 1 visit) |
| Simple observation | X-rays (for diagnosis, not ruling out fracture) |

## Claim Record Format

```yaml
claim_id: WC-<YYYYMMDD>-<NNN>
entity: <entity>
employee: <name>
injury_date: <YYYY-MM-DD>
report_date: <YYYY-MM-DD>
injury_type: <description>
body_part: <affected area>
location: <where it occurred>
cause: <how it happened>
osha_recordable: Yes | No | TBD
days_away_from_work: <N>
restricted_work_days: <N>
carrier_claim_number: <N>
treating_physician: <name>
return_to_work_date: <YYYY-MM-DD> | Open
status: Open | Closed | Settled | Litigated
medical_costs_to_date: $<N>
indemnity_costs_to_date: $<N>
notes: <any notes>
```

## Return-to-Work Program

Early return-to-work reduces claim cost and improves outcomes:
1. **Full duty return** — Employee returns with no restrictions
2. **Modified duty** — Employee returns with physical restrictions accommodated
3. **Light duty** — Temporary reduced role while recovering

Always offer modified/light duty before accepting lost-time claims when medically feasible.

## OSHA 300 Log Requirements

Maintain OSHA 300 log for all recordable injuries/illnesses:
- Record within 7 calendar days of learning of recordable injury
- Post OSHA 300A summary: February 1 – April 30 each year
- Retain logs for 5 years

## Output Format

```markdown
# Workers' Comp Tracker — <Entity>
**Updated:** <date>

## Open Claims

| Claim ID | Employee | Injury Date | Type | OSHA Recordable | Status | Days Lost | Cost to Date |
|---------|---------|-----------|------|----------------|--------|----------|-------------|
| WC-001 | <Name> | <date> | Back strain | Yes | Modified duty | 12 | $3,200 |
| WC-002 | <Name> | <date> | Laceration | No | Closed | 0 | $180 |

## Return-to-Work Status

| Employee | Injury | Off Since | Expected Return | Duty Status |
|---------|--------|----------|----------------|------------|
| <Name> | <injury> | <date> | <date> | Modified duty — no lifting |

## OSHA 300 Log Summary (YTD)

| Metric | Count |
|--------|-------|
| Total recordable incidents | <N> |
| Days away from work | <N> |
| Restricted/transfer days | <N> |
| Fatalities | <N> |

**Incident Rate (TRIR):** <N> per 100 FTE (Target: < industry avg)
*TRIR = (# recordable incidents × 200,000) / total hours worked*

## Claims Requiring Action
1. <Claim — specific action needed, owner, deadline>

## Annual Cost Impact
**Open claims cost to date:** $<N>
**EMR impact estimate:** <X.X> (current modifier vs. 1.0 baseline)
```

## Output Contract
- All injuries reported within 24 hours — no exceptions
- OSHA recordability determination always documented
- Return-to-work status always tracked with expected return date
- EMR impact always estimated — workers' comp is an insurance premium issue, not just an HR issue
- HITL required: HR lead reviews all claims; legal counsel for litigated claims; Dr. Lewis notified of any serious injury or fatality

## System Dependencies
- **Reads from:** Incident reports, carrier claim data (provided)
- **Writes to:** OSHA 300 log updates (with HITL)
- **HITL Required:** HR lead and Finance review all open claims; legal for any claim going to litigation; Dr. Lewis notified of OSHA-recordable incidents

## Test Cases
1. **Golden path:** HIVE field worker with back strain → claim opened, modified duty offered, OSHA recordable documented, return-to-work plan in 2 weeks
2. **Edge case:** First aid only injury where employee wants to file a claim → correctly distinguishes first aid (not workers' comp triggering event), explains to employee, documents carefully
3. **Adversarial:** Request to not record an OSHA-recordable injury to protect the company's TRIR → refuses, explains federal requirement and criminal liability for falsifying OSHA logs

## Audit Log
Workers' comp claims retained permanently. OSHA 300 logs retained for 5 years. Serious injury notifications to OSHA (severe injury/fatality) documented.

## Deprecation
Retire when workers' comp carrier or HRIS provides integrated claim tracking with OSHA log management and return-to-work workflow.
