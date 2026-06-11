---
name: benefits-enrollment-tracker
description: "Track employee benefits enrollment status and upcoming deadlines. Use when the user says 'benefits enrollment', 'open enrollment', 'benefits tracker', 'who hasn't enrolled', 'benefits deadline', 'benefits status', or 'open enrollment tracker'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <open-enrollment|new-hire>] [--deadline <YYYY-MM-DD>]"
---

# Benefits Enrollment Tracker

Track benefits enrollment status for new hires and open enrollment periods. Missed enrollment windows mean employees go uncovered — a serious employee relations and legal exposure issue.

## When to Use
- New hire benefits enrollment tracking (30-day window)
- Annual open enrollment period management
- Qualifying life event enrollment (marriage, birth, divorce — 30-day window)
- Confirming enrollment before a new benefit period starts

## Enrollment Windows

| Event | Window | Consequence if Missed |
|-------|--------|----------------------|
| New hire | 30 days from start | Must wait until next open enrollment |
| Open enrollment | Typically 2-4 weeks/year | Must wait until next year |
| Qualifying life event (QLE) | 30 days from event | Must wait until next open enrollment |

**Critical:** Missing a window cannot typically be undone. Track aggressively.

## Benefits Typically Offered

| Benefit | Notes |
|---------|-------|
| Medical | Primary coverage; often employee + dependents options |
| Dental | Often bundled or separate election |
| Vision | Often separate election |
| Life Insurance | Basic (employer-paid) + supplemental (voluntary) |
| STD / LTD | Short and long-term disability |
| 401(k) | Enrollment may be open any time; match vesting |
| FSA / HSA | Requires election during enrollment; HSA requires HDHP |
| Supplemental / Voluntary | Critical illness, accident, legal, pet insurance |

## Enrollment Status Tracking

```yaml
employee: <name>
entity: <entity>
start_date: <YYYY-MM-DD>
enrollment_type: New Hire | Open Enrollment | QLE
enrollment_deadline: <YYYY-MM-DD>
days_remaining: <N>
status: Not Started | In Progress | Submitted | Confirmed
benefits_elections:
  medical: Enrolled | Waived | Pending
  dental: Enrolled | Waived | Pending
  vision: Enrolled | Waived | Pending
  life: Enrolled | N/A | Pending
  401k: Enrolled | Pending
  hsa_fsa: Enrolled | Waived | Pending
waiver_forms_on_file: Yes | No | N/A
notes: <any notes>
```

## Output Format

```markdown
# Benefits Enrollment Tracker
**Period:** <New Hire / Open Enrollment> | **Entity:** <entity> | **Updated:** <date>

## Enrollment Deadline Summary
**Deadline:** <date> | **Days Remaining:** <N>

## Enrollment Status

| Employee | Start Date | Deadline | Days Left | Status | Action Needed |
|---------|-----------|---------|----------|--------|--------------|
| <Name> | <date> | <date> | 12 | In Progress | Follow up |
| <Name> | <date> | <date> | 3 | Not Started | ⚠️ URGENT |
| <Name> | <date> | <date> | 0 | Confirmed | ✅ Complete |

## Urgent — Deadline Within 5 Days

### <Employee Name> — 3 Days Remaining
**Status:** Not Started
**Action:** HR to contact by <tomorrow> with enrollment link and assistance offer

## Election Summary (Open Enrollment)
| Benefit | Enrolled | Waived | Pending |
|---------|---------|--------|---------|
| Medical | <N> | <N> | <N> |
| Dental | <N> | <N> | <N> |
| 401(k) | <N> | — | <N> |

## Missing Waiver Forms
Employees who waived coverage but have not returned waiver form:
- <Name> — medical waiver needed

## Notes
<Any plan changes effective next period, carrier changes, etc.>
```

## Output Contract
- Employees within 5 days of deadline always flagged as Urgent
- Missed deadlines flagged immediately — cannot be silently ignored
- Waiver forms tracked separately (required for ACA compliance documentation)
- HITL required before any enrollment is confirmed or changed in the benefits system

## System Dependencies
- **Reads from:** Employee list, enrollment status from benefits platform (provided)
- **Writes to:** Nothing (tracker for HR action)
- **HITL Required:** HR lead confirms all elections; Finance confirms 401(k) elections align with payroll deductions

## Test Cases
1. **Golden path:** 5 new hires in enrollment → tracker showing 3 complete, 1 at 3 days out (urgent), 1 at 12 days (follow-up)
2. **Edge case:** Employee misses deadline — no elections made → flags as missed, explains consequences, recommends HR contact to explain and document, QLE alternative if applicable
3. **Adversarial:** Request to enroll an employee outside their window without a QLE → refuses, explains IRS rules, recommends investigating if a QLE exists that would open the window

## Audit Log
Enrollment elections and waiver forms retained permanently per ACA and ERISA requirements. Deadline tracking logs retained by enrollment period.

## Deprecation
Retire when HRIS and benefits platform integration provides real-time enrollment tracking and automated deadline reminders.
