---
name: hris-data-auditor
description: "Audit HRIS employee data for accuracy, completeness, and compliance gaps. Use when the user says 'HRIS audit', 'employee data audit', 'HR data quality', 'is our HRIS accurate', 'employee record audit', 'HR data cleanup', or 'audit employee records'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <all|active|terminated>] [--focus <compensation|compliance|contact|all>]"
---

# HRIS Data Auditor

Audit employee records in the HRIS for accuracy, completeness, and compliance-critical fields. Inaccurate HR data cascades into payroll errors, compliance failures, and incorrect benefits.

## When to Use
- Annual HR data audit
- Post-acquisition (inherited employee records need validation)
- Before payroll system migration
- After a payroll error to find root cause
- When regulatory reporting is due (EEO-1, ACA, etc.)

## Audit Dimensions

### 1. Employment Data Completeness
Every active employee record must have:
- [ ] Legal name (matches I-9)
- [ ] Social Security Number (or equivalent for non-US)
- [ ] Date of birth
- [ ] Hire date
- [ ] Job title and code
- [ ] Department and cost center
- [ ] Manager (reporting relationship)
- [ ] Employment type (FTE / PT / contractor)
- [ ] FLSA classification (exempt / non-exempt)
- [ ] Work location (state matters for taxes)
- [ ] Employment status (active / leave / terminated)

### 2. Compensation Data Accuracy
- [ ] Base salary / hourly rate matches approved offer or last salary action
- [ ] Effective date of last compensation change recorded
- [ ] Pay frequency correct (bi-weekly, semi-monthly, monthly)
- [ ] Bonus target documented (if applicable)
- [ ] Commission structure recorded (if applicable)

### 3. Benefits Enrollment Accuracy
- [ ] Benefits elections match payroll deductions
- [ ] Dependents on file (if family coverage)
- [ ] COBRA records for terminated employees

### 4. Compliance-Critical Fields
- [ ] I-9 completion date on file
- [ ] I-9 re-verification dates for work authorization with expiry
- [ ] FMLA eligibility properly tracked (12 months + 1,250 hours)
- [ ] ADA accommodation records (if any)
- [ ] EEO data (race, gender — self-reported, voluntary)
- [ ] Leave records (FMLA, state leave)

### 5. Terminated Employees
- [ ] Termination date recorded
- [ ] Termination type (voluntary / involuntary / layoff)
- [ ] Final paycheck date
- [ ] COBRA notification date
- [ ] System access revocation date
- [ ] Non-compete / NDA status

## Common HRIS Data Errors
| Error Type | Risk |
|-----------|------|
| Wrong state for remote employees | Incorrect state tax withholding |
| FLSA classification wrong | Overtime liability |
| Missing I-9 completion dates | I-9 audit failure |
| Comp in system doesn't match payroll | Payroll over/under payment |
| Terminated employees with active system access | Security risk |
| Missing manager field | Org chart and approval workflow failures |

## Output Format

```markdown
# HRIS Data Audit — <Entity>
**Date:** <date> | **Scope:** <active employees | all> | **Records Reviewed:** <N>

## Data Quality Summary

| Field Category | Records Complete | Records Incomplete | Accuracy Rate |
|---------------|-----------------|-------------------|--------------|
| Employment Data | <N> | <N> | X% |
| Compensation | <N> | <N> | X% |
| Benefits Enrollment | <N> | <N> | X% |
| Compliance Fields | <N> | <N> | X% |

## Critical Issues (Compliance or Payroll Risk)

1. **<Employee Name>** — Work location shows AZ but employee is remote in CO. State tax withholding is incorrect.
   Action: Update work location, notify payroll to correct withholding.

2. **<Employee Name>** — I-9 completion date missing from record.
   Action: Locate I-9 form in file and enter date; if I-9 not found, initiate correction process.

## Incomplete Records (Fix Within 30 Days)

| Employee | Missing Field | Priority |
|---------|-------------|---------|
| <Name> | Manager field blank | High |
| <Name> | EEO data not collected | Low |

## Terminated Employees with Active System Access
- <Name> — terminated <date>, Microsoft 365 access still active. IT to revoke immediately.

## Recommendations
1. <Specific data quality improvement action>
```

## Output Contract
- Compensation mismatches always flagged as critical (payroll risk)
- Wrong state for remote employees always flagged (tax liability)
- Terminated employee with active access always flagged as security issue
- HITL required before any data corrections are made in HRIS

## System Dependencies
- **Reads from:** HRIS export or employee data (provided), payroll records for comparison
- **Writes to:** Nothing (audit report for HR action)
- **HITL Required:** HR lead reviews and approves all data corrections; payroll corrections require Finance lead sign-off

## Test Cases
1. **Golden path:** 50-employee HRIS audit → finds 3 remote workers with wrong state (tax issue), 2 missing I-9 dates, 1 terminated employee with active access
2. **Edge case:** Post-acquisition with chaotic records → prioritizes compliance-critical fields first (I-9, FLSA, tax), flags everything else for 90-day cleanup
3. **Adversarial:** Request to audit and delete records for former employees without retention check → refuses deletion, explains FLSA 3-year and I-9 3-year retention requirements

## Audit Log
HRIS audit reports retained by entity and date. Correction log maintained with who changed what and when.

## Deprecation
Retire when HRIS platform includes automated data quality scoring and compliance field validation.
