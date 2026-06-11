---
name: hr-compliance-calendar
description: "Generate and track HR compliance deadlines for federal and state requirements. Use when the user says 'HR compliance calendar', 'HR deadlines', 'compliance calendar', 'HR reporting deadlines', 'what HR filings are due', 'EEO-1 deadline', 'ACA deadline', or 'HR compliance tracker'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--year <YYYY>] [--states <list>] [--employee-count <N>]"
---

# HR Compliance Calendar

Generate and track HR compliance filing deadlines by entity, jurisdiction, and employee count. Missing an HR compliance deadline can result in fines, penalties, and legal exposure.

## When to Use
- Beginning of each calendar year (build the full year calendar)
- Before quarter-end (what's due in the next 90 days?)
- Post-acquisition (what new compliance obligations did we inherit?)
- When entering a new state with employees
- When crossing a headcount threshold (50 employees triggers FMLA, WARN Act, etc.)

## Federal HR Compliance Calendar

### Annual Filings

| Deadline | Filing | Requirement | Notes |
|---------|--------|------------|-------|
| January 31 | W-2s to employees | All employers | IRS Form W-2 |
| January 31 | 1099-NECs | Employers with contractors | IRS |
| February 28 | 1099 paper filing to IRS | < 250 forms, paper | March 31 for e-file |
| March 31 | 1099 e-file to IRS | ≥ 250 forms | |
| March 31 | ACA 1095-C to IRS | 50+ employees (ALE) | Employee copy by March 1 |
| April 30 | EEO-1 filing opens | 100+ employees or federal contractors | EEOC |
| June 30 | EEO-1 filing closes | 100+ employees or federal contractors | EEOC — typical year |
| July 31 | Form 5500 | Retirement plan with 100+ participants | DOL |
| September 30 | VETS-4212 | Federal contractors | |
| October 15 | Medicare Part D notice | Employers with group health plans | Annual notice to employees |
| October 31 | Form 5500 extension deadline | With extension | |
| January 31 (next year) | ACA 1095-C to employees | 50+ employees | |

### Quarterly / Ongoing Filings
| Deadline | Filing | Requirement |
|---------|--------|------------|
| Last day of month after quarter | Form 941 | Federal payroll taxes (quarterly) |
| Ongoing | I-9 re-verification | Employees with work authorization expiring |
| Within 5 days of hire | New hire reporting | All states require reporting new hires to state |

## State-Specific Requirements (Flag by State)

| State | Requirement |
|-------|------------|
| California | Pay Data Report (SB 973) — due May 8 | DFEH/CRD |
| California | CPRA privacy notices | Ongoing |
| Colorado | Salary range disclosure in job postings | Ongoing |
| New York | Pay transparency | Ongoing |
| New York | SHIELD Act privacy | Ongoing |
| Washington | L&I quarterly reporting | Quarterly |
| Illinois | BIPA biometric data compliance | Ongoing |

## Headcount Threshold Triggers

| Threshold | Compliance Obligation Triggered |
|-----------|-------------------------------|
| 1+ employees | Federal and state payroll taxes, workers' comp, new hire reporting |
| 15+ employees | Title VII, ADA, ADEA |
| 20+ employees | COBRA |
| 50+ employees | FMLA, ACA employer mandate (ALE), WARN Act (100+) |
| 100+ employees | EEO-1 reporting |
| Federal contractor | VEVRAA, Section 503, Executive Order 11246 |

## Output Format

```markdown
# HR Compliance Calendar — <Entity>
**Year:** <year> | **States:** <list> | **Employee Count:** <N> | **Updated:** <date>

## Q<N> Deadlines — Next 90 Days

| Deadline | Filing | Status | Owner | Notes |
|---------|--------|--------|-------|-------|
| <date> | W-2 distribution | 🔴 Due in 15 days | HR/Payroll | Confirm vendor preparing |
| <date> | EEO-1 | 🟡 Due in 45 days | HR | Need headcount data from HRIS |
| <date> | Form 941 Q1 | 🟢 Due in 90 days | Finance | Typically handled by payroll provider |

## Overdue Items — Immediate Action
<Any past-due filings>

## Threshold Alerts
<If entity is approaching a headcount threshold that triggers new obligations>

## Full Year Calendar
[Month-by-month listing]

## New Obligations This Year
<Any law changes or new state entry that creates new compliance requirements>
```

## Output Contract
- Deadlines always shown with days remaining — not just dates
- Overdue items always surfaced first
- Headcount thresholds always monitored — approaching 50 or 100 employees triggers prep
- HITL required: Finance and HR confirm calendar before year-start; legal review recommended for new state entry

## System Dependencies
- **Reads from:** Entity jurisdiction, headcount data, prior year filing status (provided)
- **Writes to:** Nothing (calendar for HR and Finance action)
- **HITL Required:** HR lead and Dr. Lewis review annually; legal counsel confirms state-specific requirements

## Test Cases
1. **Golden path:** AZ-based entity, 65 employees → full year calendar with ACA (ALE), EEO-1, FMLA, and quarterly 941 deadlines highlighted
2. **Edge case:** Entity growing from 45 to 55 employees this year → flags FMLA and ACA ALE thresholds about to be crossed, lists new obligations and effective dates
3. **Adversarial:** Request to skip EEO-1 filing ("it's optional") → clarifies it's mandatory for 100+ employers and federal contractors, documents that skipping creates EEOC exposure

## Audit Log
Annual compliance calendars retained by entity and year. Filing confirmation dates logged.

## Deprecation
Retire when HR compliance platform provides automated regulatory calendar with jurisdiction-specific alerts and filing integration.
