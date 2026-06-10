---
name: compliance-calendar-manager
description: "Maintain the compliance filing calendar across regulatory and operational deadlines. Use when the user says 'compliance calendar', 'what compliance filings are due', 'regulatory filings', 'filing deadlines', 'compliance deadlines', 'what do we need to file', or 'compliance checklist'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--window <30|60|90|180>] [--type <tax|regulatory|hr|corporate>]"
---

# Compliance Calendar Manager

Maintain a complete compliance filing calendar for MBL and portfolio entities. Missing a compliance deadline is rarely just a fine — it can trigger audits, lender notifications, or regulatory action.

## When to Use
- Monthly (review what's due in the next 30/60/90 days)
- Annual calendar reset (set up the new year's deadlines)
- Post-acquisition (add the acquired entity's compliance obligations)
- When a new regulatory obligation is identified

## Compliance Calendar by Category

### Federal Tax Filings (Calendar Year)

| Deadline | Form | Description | Entity |
|---------|------|------------|--------|
| Jan 15 | 1040-ES Q4 | Q4 estimated tax payment | Pass-through entities |
| Jan 31 | W-2 / W-3 | Employee wage statements | All entities with employees |
| Jan 31 | 1099-NEC | Contractor payments ≥ $600 | All entities |
| Mar 15 | 1120-S / 1065 | S-Corp and Partnership returns (no extension) | Pass-throughs |
| Apr 15 | 1120 / 1040 | Corporate and individual returns | All |
| Apr 15 | 1040-ES Q1 | Q1 estimated payment | Pass-throughs |
| Jun 15 | 1040-ES Q2 | Q2 estimated payment | |
| Sep 15 | 1040-ES Q3 | Q3 estimated payment | |
| Sep 15 | Extended 1120-S / 1065 | Extended pass-through returns | |
| Oct 15 | Extended 1120 / 1040 | Extended corporate/individual | |

### Payroll / HR Filings

| Frequency | Form | Description |
|-----------|------|------------|
| Semi-weekly or monthly | 941 deposits | Federal payroll tax deposits |
| Quarterly | 941 | Quarterly federal payroll return |
| Annually | 940 | Federal unemployment (FUTA) |
| Annually (Jan 31) | W-2 | Employee statements |

### Utah-Specific (HIVE Partners)

| Deadline | Filing | Description |
|---------|--------|------------|
| Monthly | Utah severance tax | Oil and gas production tax |
| Monthly | Utah production report | DOGM production reporting |
| Quarterly | Utah state income tax | |
| Annually | Utah annual report | Corporate/LLC annual report |

### Healthcare-Specific (Allevio)

| Deadline | Filing | Description |
|---------|--------|------------|
| Annual | CMS cost reports | Medicare/Medicaid cost reporting |
| Annual | State licensing renewals | Medical practice licenses by state |
| Ongoing | HIPAA compliance attestation | Annual HIPAA training and documentation |

### Corporate / Legal

| Deadline | Filing | Description |
|---------|--------|------------|
| Annual (varies by state) | State annual report | All entities in each state of operation |
| Annual | Registered agent renewal | Maintain registered agent in each state |
| Per BOD | Board resolutions | After board decisions requiring documentation |

## Output Format

```markdown
# Compliance Calendar — <Entity>
**Window:** Next <N> days | **Updated:** <date>

## Overdue (Past Due)
| Filing | Due Date | Days Overdue | Action |
|--------|---------|-------------|--------|
⚠️ Any item here requires IMMEDIATE escalation.

## Due This Month (0-30 days)
| Filing | Due Date | Status | Owner |
|--------|---------|--------|-------|
| Q2 941 payroll return | Jul 31 | ⚠️ Prepare now | Payroll / CPA |

## Due Next Month (31-60 days)
[upcoming items]

## Due in 60-90 Days
[planning horizon]

## Annual Obligations (Set and Monitor)
[recurring filings on annual calendar]

## Missing Information
<Any filings where entity data is needed to assess applicability>
```

## Output Contract
- Overdue items always surfaced first with immediate escalation flag
- Every item has a named owner
- Always covers all entity types in the window — no selective reporting
- HITL required before any regulatory filing is submitted

## System Dependencies
- **Reads from:** Compliance calendar data (this skill), entity-specific additions (provided), `tax-deadline-tracker`
- **Writes to:** Nothing (outputs calendar for Finance and Compliance review)
- **HITL Required:** CPA or tax advisor reviews before any regulatory filing is submitted

## Test Cases
1. **Golden path:** 90-day window for MBL portfolio → complete calendar with all filings by entity and deadline
2. **Edge case:** Recently acquired entity with unknown state filings → flags unknown items, recommends state presence audit before confirming calendar
3. **Adversarial:** Overdue filing discovered → surfaces immediately at top with escalation language, does not bury in the list

## Audit Log
Compliance calendar reviewed monthly. Filing completions documented with submission date.

## Deprecation
Retire when tax compliance platform (Bloomberg Tax, Thomson Reuters) manages the compliance calendar automatically.
