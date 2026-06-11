---
name: hr-budget-tracker
description: "Track HR department budget and spending across categories. Use when the user says 'HR budget', 'people budget', 'HR spending', 'recruiting budget', 'training budget', 'HR cost tracker', 'people cost analysis', or 'HR budget vs actual'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <monthly|quarterly|annual>] [--category <all|recruiting|training|benefits-admin>]"
---

# HR Budget Tracker

Track HR department spending across all categories vs. approved budget. People costs are typically the largest expense line — tracking HR spending with financial rigor is non-negotiable.

## When to Use
- Monthly HR budget review with Finance
- Before requesting additional HR budget
- Annual HR budget planning for next year
- When recruiting or training spend is trending over budget
- Post-acquisition (understand inherited HR cost structure)

## HR Budget Categories

### Compensation and Benefits (Largest Category — Often Tracked Separately in Finance)
- Base payroll (typically owned by Finance/Payroll)
- Benefits administration costs (not the benefits themselves, but the cost to administer)

### Recruiting Costs
- Job board advertising (Indeed, LinkedIn, specialty boards)
- Applicant Tracking System (ATS) — software cost
- Background check fees
- Pre-employment assessment fees
- External recruiter / staffing agency fees (typically 15-25% of annual salary)
- Relocation assistance
- Sign-on bonuses
- Referral bonus program payouts
- Careers website maintenance

### Learning and Development
- Mandatory compliance training (LMS platform + course licenses)
- Professional development (certifications, courses)
- Leadership development programs
- Conference attendance (registration + travel)
- Tuition reimbursement (if offered)
- Coaching / executive coaching

### HR Technology (Systems)
- HRIS platform
- Performance management platform
- Engagement survey platform
- Benefits administration platform
- Payroll software (if HR-managed)

### HR Operations
- HR consulting / legal (employment attorney fees)
- HR audit and compliance consulting
- Employee relations investigations (external if needed)
- Workplace posters and compliance materials
- HR staff compensation (HR team payroll)

## Cost Per Hire Calculation
```
Cost per hire = 
  (Internal recruiting costs + External recruiting costs) / Total hires

Internal recruiting costs: HR recruiter time, hiring manager time, interview team time
External recruiting costs: job boards, background checks, agency fees, referral bonuses
```

Industry average cost per hire: $4,700 (SHRM benchmark). Knowledge workers often $8,000-15,000+.

## Output Format

```markdown
# HR Budget Tracker — <Entity>
**Period:** <period> | **Date:** <date>

## Budget vs. Actual Summary

| Category | Annual Budget | YTD Budget | YTD Actual | Variance | % Used |
|---------|-------------|-----------|-----------|---------|--------|
| Recruiting | $<N> | $<N> | $<N> | <+/- N> | X% |
| Training / L&D | $<N> | $<N> | $<N> | <+/- N> | X% |
| HR Technology | $<N> | $<N> | $<N> | <+/- N> | X% |
| HR Legal/Consulting | $<N> | $<N> | $<N> | <+/- N> | X% |
| **HR Total** | **$<N>** | **$<N>** | **$<N>** | **<+/- N>** | **X%** |

## Variances > 10% — Explain and Action

### Recruiting — <+/- N>% vs. budget
**Reason:** <explanation>
**Impact:** <headcount projection impact>
**Action:** <specific corrective action or reforecast>

## Key Metrics

| Metric | Value | Notes |
|--------|-------|-------|
| Cost per hire (YTD) | $<N> | vs. $4,700 benchmark |
| HR staff ratio | 1:<N> | (1 HR staff per N employees) |
| Benefits admin cost/employee | $<N>/yr | |
| L&D spend per employee | $<N>/yr | |

## Forecast to Year-End
**Projected full-year HR spend:** $<N>
**vs. Annual budget:** <+/- N> (<+/- X>%)

## Unplanned Spend Pending Approval
| Item | Amount | Justification |
|------|--------|--------------|
| <Item> | $<N> | <reason> |
```

## Output Contract
- All variances > 10% explained with specific reason and action
- Cost per hire always calculated and compared to benchmark
- Unplanned spend always flagged for approval before being incurred
- HITL required: Finance lead approves all HR budget variances > $5K; Matt Mathison approves unbudgeted HR spend > $25K

## System Dependencies
- **Reads from:** HR spending data, approved budget (provided or from Finance)
- **Writes to:** Nothing (budget tracker for Finance and HR review)
- **HITL Required:** Finance lead co-reviews monthly; Dr. Lewis approves any category variance > 15%

## Test Cases
1. **Golden path:** Q2 HR budget review → table with 4 categories, 1 over-budget (recruiting) with explanation and reforecast
2. **Edge case:** New entity with no established HR budget → build zero-based HR budget from industry benchmarks, present for approval
3. **Adversarial:** Request to hide an overrun by reallocating between categories without approval → refuses, surfaces the variance accurately, recommends transparent reforecast process

## Audit Log
HR budget reports retained by entity and period. Variance explanations documented for Finance audit.

## Deprecation
Retire when financial planning platform (Adaptive, Anaplan, NetSuite) integrates HR budget tracking into the main budget management workflow.
