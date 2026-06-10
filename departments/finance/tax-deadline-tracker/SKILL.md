---
name: tax-deadline-tracker
description: "Monitor federal, state, and local tax filing deadlines and generate prep task lists. Use when the user says 'tax deadlines', 'upcoming tax filings', 'tax calendar', 'what taxes are due', 'tax filing tracker', 'compliance calendar', or 'tax prep tasks'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--state <list>] [--period <quarter|year>]"
---

# Tax Deadline Tracker

Surface upcoming tax filing deadlines and generate preparation checklists so nothing is missed and no penalties are incurred.

## When to Use
- Beginning of each quarter
- When a new entity or state nexus is added
- During annual tax planning
- After any business structure change (new acquisition, entity formation)

## Tax Calendar Coverage

### Federal
| Filing | Frequency | Due Dates |
|--------|-----------|-----------|
| Corporate Income Tax (1120) | Annual | March 15 (S-Corps), April 15 (C-Corps), or extended |
| Partnership/LLC (1065) | Annual | March 15 or extended |
| Estimated taxes | Quarterly | Apr 15, Jun 15, Sep 15, Jan 15 |
| Payroll taxes (941) | Quarterly | Apr 30, Jul 31, Oct 31, Jan 31 |
| Annual payroll (940) | Annual | Jan 31 |
| 1099-NEC | Annual | Jan 31 (recipient), Jan 31 (IRS e-file) |
| W-2/W-3 | Annual | Jan 31 |
| Sales tax (if nexus) | Monthly/Quarterly | Varies by state |

### State (configure per entity's nexus states)
- State income tax filing deadlines
- State sales tax deadlines
- State payroll tax (SUI, SDI) deadlines
- Annual report / franchise tax deadlines

### HIVE-Specific (Oil & Gas)
- Severance tax filings (Utah — monthly)
- Production reports (monthly)
- Environmental compliance reports

## Output Format

```markdown
# Tax Compliance Calendar — <entity> — <quarter/year>
**Generated:** <date>

## Upcoming Deadlines (next 60 days)

| Days Until | Due Date | Filing | Amount (estimated) | Status | Prep Tasks |
|-----------|----------|--------|-------------------|--------|------------|
| 7 days | Jun 15 | Q2 Federal Estimated Tax | $X | ⚠️ URGENT | Calculate Q2 income, prepare payment |
| 14 days | Jun 30 | Utah Severance Tax (May) | $X | Pending | Pull production data from Covercy |
| 45 days | Jul 31 | Q2 Payroll (941) | $X | Upcoming | Verify payroll records complete |

## Prep Checklists

### Federal Estimated Tax — Jun 15
- [ ] YTD income calculated through May 31
- [ ] Q1 actual vs prior year safe harbor check
- [ ] Payment scheduled in EFTPS
- [ ] Confirmation saved to records

## Penalty Risk
- Utah severance tax: $X/day penalty after due date
- 941 deposits: 2-15% of unpaid tax
```

## Output Contract
- Deadlines are always verified dates, not approximations — note when extension is in effect
- Penalty amounts stated are estimates — actual penalties vary
- HITL required before any tax payment is made

## System Dependencies
- **Reads from:** Entity configuration, state nexus list (provided or configured), Covercy (HIVE production data)
- **Writes to:** Nothing
- **HITL Required:** Before authorizing any tax payment

## Deprecation
Retire when tax compliance platform (e.g., Avalara, TaxJar, or CPA-managed calendar) covers this automatically.
