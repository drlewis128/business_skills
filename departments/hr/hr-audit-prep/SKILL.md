---
name: hr-audit-prep
description: "Prepare for an HR compliance audit by assessing readiness across key areas. Use when the user says 'HR audit', 'HR compliance audit', 'I-9 audit', 'DOL audit', 'EEOC audit', 'prepare for HR audit', 'HR audit readiness', or 'what would an auditor look for'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--audit-type <I9|DOL|EEOC|state|general>] [--urgency <proactive|imminent>]"
---

# HR Audit Prep

Prepare for or conduct a pre-emptive HR compliance audit. Government audits (DOL, EEOC, ICE) can happen with little notice — being audit-ready is the only way to avoid surprises.

## When to Use
- Proactive annual HR compliance self-audit
- Before an M&A deal closing (diligence on HR practices)
- After receiving an audit notice (immediate prep)
- After acquiring a new company (assess inherited compliance risk)
- When a legal change makes prior practices potentially non-compliant

## HR Audit Areas and Key Documents

### Area 1: I-9 / Employment Eligibility
- All active employees have completed I-9s
- All I-9s were completed timely (Section 1 by Day 1; Section 2 within 3 days)
- Re-verification completed for all expiring work authorizations
- I-9s for terminated employees retained within required schedule
- See `i9-verification-tracker`

### Area 2: Wage and Hour (FLSA / DOL)
- All employees correctly classified (exempt vs. non-exempt)
- Non-exempt employees paid OT for hours > 40 in workweek
- Minimum wage met in all jurisdictions
- Accurate timekeeping records maintained (3 years)
- Tip credit rules followed (if applicable)
- Youth employment rules followed (if applicable)

### Area 3: FMLA Compliance
- Eligible employees receive timely FMLA designation notices
- FMLA records maintained (3 years)
- No interference with or retaliation for FMLA use
- See `leave-tracker`

### Area 4: EEO / Anti-Discrimination
- Harassment policy in place and communicated
- Anti-discrimination policy in place
- Harassment training conducted (CA requires annual)
- EEO-1 filed (if required — 100+ employees)
- No discriminatory job postings
- Consistent application of discipline

### Area 5: Worker Classification
- Contractors correctly classified (IRS 20-factor test, ABC test in CA)
- No misclassified employees as contractors
- Contractors not performing work of regular employees with no business reason
- See `contractor-vs-employee-classifier`

### Area 6: OSHA / Safety
- OSHA 300 log maintained and posted annually
- Required safety posters displayed
- Hazard communication (right to know) compliance
- Industry-specific regulations followed (HIVE: oil and gas; Allevio: healthcare)
- See `workers-compensation-tracker`

### Area 7: Pay Equity
- Compensation practices defensible (band-based, documented)
- No systemic pay gaps by gender, race, or protected class
- See `salary-band-builder` and `workforce-diversity-tracker`

## Audit Readiness Scoring

For each area: Green (fully compliant) / Yellow (gaps, correctable) / Red (material violation)

## Output Format

```markdown
# HR Audit Readiness Assessment — <Entity>
**Date:** <date> | **Audit Type:** <type> | **Urgency:** Proactive / Imminent

## Overall Readiness: READY / NEEDS WORK / NOT READY

## Area-by-Area Assessment

| Area | Status | Key Finding | Action Required |
|------|--------|------------|----------------|
| I-9 Compliance | 🟡 Yellow | 3 missing Section 2 dates | Investigate and remediate immediately |
| Wage and Hour | 🔴 Red | 2 potential misclassified exempt employees | Legal review before audit |
| FMLA | 🟢 Green | No issues found | — |
| EEO | 🟡 Yellow | Training not completed for 2 employees | Complete before audit |
| Worker Classification | 🟢 Green | No contractors > 12 months | — |
| OSHA | 🟡 Yellow | 2026 300A not yet posted | Post immediately |
| Pay Equity | 🟢 Green | No material gaps identified | — |

## Critical Issues — Remediate Before Audit

1. **FLSA Misclassification Risk** — 2 employees classified as exempt may not meet duties test.
   Action: Legal review of job descriptions and actual job duties. Timeline: Immediate.

2. **I-9 Section 2 Missing (3 records)**
   Action: Locate original I-9s; if not found, initiate late completion with current date and notation. Timeline: 5 days.

## Document Preparation Checklist

For an imminent audit, gather:
- [ ] All active I-9s + terminated I-9s (within retention window)
- [ ] Payroll records (3 years) for all current and recent employees
- [ ] OSHA 300 logs (5 years)
- [ ] Job descriptions for exempt-classified employees
- [ ] FMLA designation notices and certifications
- [ ] Training completion records
- [ ] Employment posters (confirmation posted at all locations)
- [ ] EEO-1 filings (last 3 years)

## Audit Response Protocol (If Auditor Arrives)
1. Contact legal counsel immediately — before speaking with auditor
2. Cooperate professionally — do not obstruct or delay
3. Document everything produced and all auditor communications
4. Do not volunteer information beyond what is requested
5. Contact Dr. Lewis within 1 hour of any government audit notice
```

## Output Contract
- Red items always require immediate action — never deferred pending audit date
- Legal counsel always recommended for imminent audits
- Document checklist always provided for imminent audits
- HITL required: Dr. Lewis notified of any government audit notice; legal counsel engaged for all audits

## System Dependencies
- **Reads from:** HR records, I-9 files, payroll data, OSHA logs (provided or from linked skills)
- **Writes to:** Nothing (audit readiness report for HITL review)
- **HITL Required:** Legal counsel reviews before any audit response; Dr. Lewis and Matt Mathison notified of all government audits

## Test Cases
1. **Golden path:** Proactive annual audit → 7-area assessment with 2 Yellow items and specific remediation plan, no Red items
2. **Edge case:** DOL audit notice received (imminent) → produces prioritized document list, immediate legal counsel recommendation, Red items escalated to Dr. Lewis same day
3. **Adversarial:** Request to destroy HR records before an audit → refuses as potential obstruction, explains retention requirements and legal risk

## Audit Log
HR audit readiness assessments retained by entity and date. Remediation action completion documented.

## Deprecation
Retire when HR compliance platform provides continuous compliance monitoring with automated audit trail and readiness scoring.
