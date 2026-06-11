---
name: leave-tracker
description: "Track employee leave requests, balances, and compliance for FMLA and state leave programs. Use when the user says 'leave tracker', 'FMLA tracker', 'employee leave', 'leave of absence', 'leave balance', 'maternity leave', 'medical leave', 'leave request', or 'PTO tracker'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<employee-name> [--leave-type <FMLA|state|PTO|medical|parental>] [--entity <name>]"
---

# Leave Tracker

Track employee leave requests, FMLA eligibility, leave balances, and state-specific leave compliance. Leave mismanagement is one of the top sources of HR legal claims — and also a leading driver of employee dissatisfaction when handled poorly.

## When to Use
- Employee requests leave of absence
- Tracking FMLA usage and remaining entitlement
- State leave law compliance (CA, CO, NY, WA, etc. have specific programs)
- PTO balance tracking at year-end (use-it-or-lose-it vs. carry-over policy)
- Managing intermittent leave (recurring medical leave in small increments)

## Leave Types

### FMLA (Federal)
- **Eligibility:** 12 months employed, 1,250 hours in past 12 months, 50+ employees within 75 miles
- **Entitlement:** Up to 12 weeks unpaid per 12-month period
- **Qualifying reasons:** Serious health condition (employee or family member), birth/adoption/foster placement, military exigency
- **Military caregiver:** Up to 26 weeks for covered servicemember care
- **Notice requirements:** 30 days advance notice when foreseeable; as soon as practicable when not
- **Employer response:** Determine eligibility within 5 business days of request

### State Paid Family and Medical Leave (PFML)
State programs vary significantly:
| State | Program | Weekly Benefit | Max Duration |
|-------|---------|---------------|-------------|
| California | CA SDI/PFL | Up to 70% of wages | 8 weeks bonding; 52 weeks disability |
| Colorado | CO FAMLI | Up to 90% of wages | 12 weeks + 4 additional |
| New York | NY PFL | Up to 67% of AWW | 12 weeks |
| Washington | WA PFML | Up to 90% of wages | 12 weeks + 2 additional |

### PTO / Vacation Leave
Per company policy — varies by entity and role level.

### Other Leave Types
- Personal leave (unpaid, company discretion)
- Jury duty (typically paid, varies by state)
- Bereavement (varies by policy and some states mandate)
- Military leave (USERRA — protected, up to 5 years)
- Voting leave (varies by state)

## Leave Tracker Record Format

```yaml
employee: <name>
entity: <entity>
leave_type: FMLA | State-PFML | PTO | Medical | Parental | Military | Personal
start_date: <YYYY-MM-DD>
expected_return: <YYYY-MM-DD>
intermittent: Yes | No
fmla_eligible: Yes | No | TBD
fmla_weeks_used_ytd: <N>
fmla_weeks_remaining: <N>
state_leave_applicable: Yes | No | <state program>
state_leave_benefit: <amount or TBD>
pay_status: Paid | Unpaid | Supplemented (STD + PTO)
paperwork_received: Yes | No | Partial
approval_status: Approved | Pending | Denied | Pending Medical Certification
return_to_work_confirmed: Yes | No | Pending
notes: <any notes>
```

## Output Format

```markdown
# Leave Tracker — <Entity>
**Updated:** <date>

## Active Leaves

| Employee | Leave Type | Start | Return | FMLA Weeks Used | Status | Action |
|---------|-----------|-------|--------|----------------|--------|--------|
| <Name> | FMLA + CA PFL | <date> | <date> | 6 of 12 | Approved | — |
| <Name> | Medical | <date> | TBD | Eligibility TBD | Pending cert | Request cert by <date> |

## Upcoming Leaves
<Leave requests for future dates>

## Leave Compliance Flags

### FMLA Eligibility Determination Due
**Employee:** <Name>
**Request received:** <date>
**Determination deadline:** <date> (5 business days)
**Action:** HR to assess eligibility and send designation notice

### Medical Certification Outstanding
**Employee:** <Name>
**Cert requested:** <date>
**Cert due:** <date> (15 calendar days)
**Action:** Follow up with employee if cert not received

## FMLA Balance Summary

| Employee | Entitlement | Used YTD | Remaining |
|---------|------------|---------|----------|
| <Name> | 12 weeks | 6 weeks | 6 weeks |

## PTO Balance Summary
<PTO accruals and balances if tracked here>

## Year-End Notes
<Carry-over, use-it-or-lose-it, payout obligations>
```

## Output Contract
- FMLA eligibility determinations always tracked with 5-day response deadline
- Medical certification deadlines always flagged (15-day employee deadline)
- State leave benefits noted alongside FMLA — employees often have both
- HITL required before any leave is denied; denials require HR review and documentation

## System Dependencies
- **Reads from:** Employee eligibility data, leave requests, medical certifications (provided)
- **Writes to:** Nothing (tracker for HR action)
- **HITL Required:** HR lead reviews all denials and complex leave situations; legal review for any leave that intersects with ADA accommodation

## Test Cases
1. **Golden path:** Employee requests 8-week parental leave in CA → FMLA + CA PFL coordination mapped, pay status clarified, return date confirmed
2. **Edge case:** Employee requests intermittent FMLA for chronic condition → intermittent tracking established, manager notified of protected absences (without diagnosis details)
3. **Adversarial:** Manager requests employee's medical diagnosis from certification → clarifies that employer is entitled to functional limitations and duration, NOT diagnosis; redirects appropriately

## Audit Log
Leave records retained in employee file. FMLA designation notices and certifications retained for audit.

## Deprecation
Retire when HRIS includes leave management with FMLA eligibility calculation, state leave coordination, and pay integration.
