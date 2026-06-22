---
name: hr-compliance-calendar
description: "Generate and manage the HR compliance calendar for MBL Partners portfolio companies. Use when the user says 'HR compliance calendar', 'HR deadlines', 'compliance calendar', 'HR reporting deadlines', 'what HR filings are due', 'EEO-1 deadline', 'ACA deadline', 'HR compliance tracker', 'employment law deadlines', 'I-9 deadline', 'W-2 deadline', 'AZ sick time deadline', 'COBRA deadline', 'when is X HR filing due', 'HR legal calendar', 'HR regulatory calendar', 'what HR things are due this month', 'HR filing', 'HR compliance checklist', 'HR year-end', 'HR year-end checklist', 'annual HR compliance', 'quarterly HR compliance', or 'monthly HR compliance'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--period <month|quarter|annual>] [--state <az|ut|all>] [--action <generate|check|alert>]"
---

# HR Compliance Calendar

Generate, track, and alert on HR compliance deadlines for MBL Partners portfolio companies — federal, AZ, and UT requirements — ensuring no filing, notice, or mandatory action is missed. Missed HR compliance deadlines are rarely catastrophic in isolation but accumulate into material legal exposure; a calendar that runs ahead of deadlines prevents penalties, audit findings, and employee claims.

## When to Use
- Beginning of year (generate full-year compliance calendar)
- Beginning of month (generate 30-day compliance actions)
- Pre-HR-ops-review (confirm compliance status)
- A specific deadline question arises

## HR Compliance Calendar Framework

```
ANNUAL DEADLINES:

  JANUARY:
    W-2 issued to employees: January 31 (IRS)
    1099-NEC issued to contractors: January 31 (IRS)
    ACA Form 1095-C issued to employees: January 31 (if ALE — ≥50 FTE; Dr. Lewis tracks October)
    
  FEBRUARY:
    W-2 copy filed with SSA: February 28 (paper) / March 31 (electronic)
    
  MARCH:
    ACA Form 1094-C / 1095-C filed with IRS: March 31 (electronic filing)
    
  APRIL:
    Q1 payroll tax deposits and Form 941 (IRS): April 30
    AZ Transaction Privilege Tax (if applicable): April 30
    
  JUNE:
    Q2 payroll tax: July 31
    
  SEPTEMBER:
    EEO-1 Component 1 filing opens: September (EEOC)
    Note: EEO-1 filing required for entities with ≥100 employees (MBL portfolio generally <100;
    confirm annually — if any entity reaches 100 FTE, EEO-1 becomes mandatory)
    
  OCTOBER:
    ACA applicable large employer (ALE) status confirmation: October
    Dr. Lewis counts full-time equivalents October 1 — if ≥50 ALE reporting required for next year
    
  NOVEMBER:
    OSHA 300A summary: November 1 (must be posted through April 30 next year)
    Note: OSHA 300A required for entities with ≥10 employees; most MBL portfolio entities qualify
    Benefit open enrollment windows: October 15 - November 30 (Medicare/ACA)
    
  DECEMBER:
    Year-end payroll reconciliation: December 31
    AZ minimum wage adjustment: effective January 1 (Prop 206; $14.70/hr as of 2026)
    UT minimum wage review: effective January 1 ($7.25 federal floor; no state minimum above federal)
    
MONTHLY DEADLINES:
  Payroll tax deposits: semi-weekly or monthly (per deposit schedule; confirm with payroll processor)
  AZ state income tax withholding: monthly or quarterly (per AZ DOR schedule)
  UT state income tax withholding: monthly or quarterly (per USTC schedule)
  Carrier premium reconciliation: first week of each month (verify no terminated employees on plan)
  OIG/LEIE check (Allevio): monthly for all active employees (CMS Conditions of Participation)
  Bill.com vendor payments: per AP schedule; Dr. Lewis approves
  
ONGOING / EVENT-TRIGGERED:
  New hire I-9: Section 1 on or before Day 1; Section 2 within 3 business days of start
  COBRA: employer to COBRA admin within 30 days of qualifying event; admin to participant within 14 days
  New hire benefits enrollment: 30-day window from hire date
  QLE (qualifying life event) benefits change: 30-60 days depending on carrier
  AZ final paycheck: within 7 business days of separation
  UT final paycheck: within 24 hours of separation request
  FCRA adverse action: pre-adverse notice + 5 business days before adverse action
  HIPAA breach notification (Allevio): within 60 days of discovery to HHS; state AG notification varies
  Workers' compensation incident report: within 24 hours (AZ ICA); within 7 days (UT L&E)
  OIG/LEIE hit (Allevio): immediate — automatic rescission; CEO + Dr. Lewis same-day notification
  
ALLEVIO-SPECIFIC ADDITIONS:
  OIG/LEIE screening: all new hires before Day 1; all active employees monthly
  HIPAA training: new hires by Day 5; annual re-training by anniversary date
  OSHA (clinical): bloodborne pathogens annual training; hepatitis B declination forms
  State healthcare licensing renewals: tracked by Allevio clinical lead; Dr. Lewis monitors calendar
  
HIVE-SPECIFIC:
  State oil & gas production reports: monthly to DOGM (Utah Division of Oil, Gas and Mining)
  Royalty payment: per lease terms (typically monthly; HIVE ops manages; Dr. Lewis monitors)
  Environmental compliance calendar: per EPA/state permit schedule
  
COLUMN6-SPECIFIC:
  Sales tax nexus monitoring: quarterly with Dr. Lewis + Column6 CFO
  State contractor compliance (if using 1099 talent): annually
```

## Output Format

```markdown
# HR Compliance Calendar — [Entity] — [Month/Year or Full Year]
**Generated by:** Dr. Lewis | **States:** AZ / UT | **ALE status:** ☐ Yes / ☐ No (≥50 FTE)

---

## [Month] Deadlines

| Due date | Item | Owner | Entity | Status |
|---------|------|-------|--------|--------|
| [Date] | [Filing/action] | [Dr. Lewis / Payroll / Entity CEO] | [All / Allevio / HIVE / Column6] | ☐ Pending / ✅ Complete |

---

## Upcoming 30-Day Window
[List of next 30 days' deadlines across all entities]

---

## Overdue Items
| Item | Due date | Days overdue | Action required |
|------|---------|-------------|----------------|
| [Item] | [Date] | [X days] | [Immediate action] |
```

## Output Contract
- ACA ALE status is confirmed October 1 every year — the entire ACA employer mandate compliance (1094-C / 1095-C) depends on whether the entity qualifies as an applicable large employer (≥50 full-time equivalents); Dr. Lewis confirms the FTE count for each entity on October 1; entities that cross the 50-FTE threshold need 12+ months of lead time to build ACA reporting infrastructure; missing this check results in a January deadline miss and potential IRS penalties
- OIG/LEIE monitoring for Allevio is non-negotiable monthly — CMS Conditions of Participation require that healthcare organizations verify no excluded individuals are employed; a single month's missed check that later results in an OIG audit finding creates Medicare/Medicaid repayment risk that exceeds annual HR costs; Dr. Lewis ensures the OIG/LEIE monthly check is on the Allevio compliance calendar and confirmed complete each month
- I-9 deadlines are absolute — Section 2 must be completed within 3 business days of the start date without exception; there is no grace period; ICE audit penalties per I-9 violation start at $272 per form and scale to $2,701; Dr. Lewis confirms I-9 completion is on the new hire checklist for every entity and spot-checks quarterly; Allevio has the highest risk due to clinical workforce turnover
- HITL required: ACA ALE status check → Dr. Lewis confirms October 1; OIG/LEIE monthly → Dr. Lewis reviews Allevio results; W-2 / 1099-NEC issuance → payroll processor executes; Dr. Lewis confirms; OSHA 300A → entity CEO signs; COBRA trigger → Dr. Lewis notifies admin same-day; workers' comp incident → entity CEO + Dr. Lewis within 24 hours; HIPAA breach → Dr. Lewis + legal counsel within 24 hours of discovery

## System Dependencies
- **Reads from:** hr-benefits-manager (COBRA trigger; enrollment deadlines); hr-i9-manager (I-9 completion tracking); hr-onboarding-planner (new hire compliance trigger dates); hr-offboarding-manager (separation triggers COBRA + final pay deadlines); fin-ops-payroll-processor (payroll tax deposit schedule); legal-hipaa-compliance-manager (Allevio HIPAA breach notification)
- **Writes to:** Compliance calendar (SharePoint → HR → Compliance Calendar → [Entity] → [Year]); Monday.com compliance task board; entity CEO compliance alert (30-day advance); Dr. Lewis compliance tracking log; ACA employer determination record (October)
- **HITL Required:** ACA ALE check → Dr. Lewis October 1; OIG/LEIE monthly → Dr. Lewis reviews; W-2/1099 → Dr. Lewis confirms issuance; OSHA 300A → entity CEO signs; COBRA → Dr. Lewis notifies admin; incident report → entity CEO + Dr. Lewis; HIPAA breach → Dr. Lewis + legal counsel

## Test Cases
1. **Golden path:** January 1 compliance check: W-2s and 1099-NECs due January 31. Dr. Lewis confirms payroll processor has all 2025 data by January 10. Payroll processor issues W-2s January 28. OIG/LEIE January check: Allevio 14 employees screened January 3 — all clear. I-9s: 2 new hires started January 6 — Dr. Lewis checks Section 2 completion by January 9 deadline (3 business days). All complete.
2. **Edge case:** An Allevio employee is added mid-year (June) and OIG/LEIE is not run before Day 1 → Dr. Lewis: "This needs to be run immediately — today. I'm pulling the LEIE screening now. If there's a hit, we have a Conditions of Participation violation that the employee has already been working for [X days]. Get me access to the exclusion database. This is a same-day priority."
3. **Adversarial:** Entity CEO says "we're too small to worry about OSHA 300A" → Dr. Lewis: "OSHA 300A applies to employers with ≥10 employees — every MBL portfolio entity qualifies. It's an injury and illness log, not a huge burden. Failure to post the summary from February 1 to April 30 is an OSHA violation. I'll set up the 300A tracking template for each entity and send the CEO a reminder in November."

## Audit Log
Compliance calendar retained annually. Completion records retained for each deadline (date; owner; confirmed by). ACA ALE determination records retained 3 years. OIG/LEIE monthly screening records retained permanently. I-9 completion records retained (per I-9 retention rules: 3 years from hire or 1 year from separation, whichever is later). OSHA 300A posted copies retained 5 years.

## Deprecation
Deadline dates reviewed each January for regulatory changes (IRS; EEOC; AZ; UT). ACA threshold reviewed if ALE rules change. OIG/LEIE process reviewed if CMS Conditions of Participation change.
