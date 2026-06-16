---
name: hr-hr-compliance-calendar
description: "Track HR compliance deadlines and required filings. Use when the user says 'HR compliance calendar', 'HR deadlines', 'required HR filings', 'compliance deadlines', 'HR annual calendar', 'what HR filings are due', 'ACA reporting', 'W-2 deadline', 'EEO-1 report', 'OSHA 300 log', 'annual compliance', 'HR reporting calendar', 'what do we need to file', 'HR compliance checklist', or 'annual HR requirements'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <annual|quarterly|monthly>] [--month <month>]"
---

# HR Compliance Calendar

Track HR compliance deadlines and required government filings at MBL portfolio companies — the legal calendar of what must be filed, posted, distributed, or updated by when. Missing HR compliance deadlines is often expensive and easily preventable. This skill maintains a standing annual calendar and generates company-specific compliance checklists based on employer size, state, and industry.

## When to Use
- Reviewing what compliance obligations are coming up for the quarter
- A new year starts and annual HR compliance deadlines need to be mapped
- A portfolio company is newly acquired and compliance obligations need to be assessed
- A specific compliance deadline is approaching and the process needs to be confirmed
- An audit question arises about whether a specific obligation was met

## Compliance Calendar Framework

```
Employer size thresholds determine which obligations apply:

1-14 employees: FLSA, I-9/E-Verify, state sick leave posting/compliance, OSHA (basic), state W/C
15+ employees: + EEO-1 (if 100+), Title VII/ADA posting
20+ employees: + ADEA posting
50+ employees: + FMLA posting, FMLA administration, ACA large employer status (100+ first year)
100+ employees: + EEO-1 annual report
Federal contractors: + VEVRAA, Section 503, OFCCP audits (additional obligations)

Healthcare industry (Allevio): Add HIPAA workforce training, OIG exclusion check schedule

Annual compliance calendar:
JANUARY
  - W-2s to employees: January 31
  - W-2s to SSA: January 31
  - 1099-NEC to contractors: January 31
  - ACA Forms 1095-B/C to employees: January 31 (if ACA large employer: 50+ FTEs)
  - ACA Forms 1094-B/C to IRS: February 28 (paper) / March 31 (electronic)
  - Update employee notices of any benefit changes effective January 1
  - Renew any employment law posters if updated (check federal and state updates)

FEBRUARY
  - ACA filing deadline (paper): February 28

MARCH  
  - ACA filing deadline (electronic): March 31

APRIL — Q1 payroll tax deposits up to date
  - Arizona TPT license renewal (check applicable entities)
  - Conduct Q1 I-9 audit spot check
  - Review AZ minimum wage compliance (effective January 1 annually)
  - Colorado: FAMLI premium recalculation (annually)

JUNE
  - EEO-1 Component 1 data collection period opens (varies year to year — watch EEOC notice)
  - Mid-year payroll tax deposit review

JULY — Q2 payroll tax deposits up to date
  - Conduct Q2 I-9 spot check and reverification calendar review
  - Update new hire packets if any law or form changed

SEPTEMBER/OCTOBER
  - EEO-1 Component 1 filing deadline (typically September/October — check EEOC announcement)
  - Open enrollment preparation: ACA notice requirements
  - Medicare Part D notice to employees with prescription drug coverage: Before October 15

NOVEMBER
  - Open enrollment (if calendar year benefits): typically November for Jan 1 effective date
  - Medicare Part D notice deadline: October 15 (prepare in October, confirm sent)

DECEMBER
  - Prepare W-2 data for year-end payroll processing
  - Final payroll of year: confirm all W-4s, direct deposit, and deduction elections current
  - OSHA 300 log annual review: confirm incidents recorded correctly
  - Year-end benefits reconciliation (ACA headcount for large employer status determination)

FEBRUARY (following year)
  - OSHA 300A summary: post in workplace February 1 through April 30

ONGOING (monthly):
  - Payroll tax deposits: dates depend on depositor schedule (monthly or semi-weekly)
  - New hire reporting to state: within 20 days of hire (federal requirement, state agencies vary)
  - I-9 completion for new hires: Section 2 within 3 business days
  - E-Verify: submit within 3 business days (Arizona mandatory; federal contractors mandatory)

ONGOING (quarterly):
  - Form 941 (Employer's Quarterly Federal Tax Return): April 30, July 31, Oct 31, Jan 31
  - State unemployment tax returns (SUTA): quarterly filing (dates vary by state)
  - Arizona: Form UC-018 (SUTA) quarterly
  - Colorado: FAMLI quarterly reports

Required posters (must be displayed in workplace — electronic if remote workforce):
  Federal: FLSA, FMLA (if 50+ employees), EEO (Title VII/ADA/ADEA), USERRA, 
           EPPA, Job Safety and Health (OSHA), Pay Transparency Nondiscrimination
  Arizona: AZ Minimum Wage, AZ Earned Paid Sick Time, AZ Right to Work, AZ Civil Rights
  Colorado: COMPS Order, Colorado FAMLI, Colorado ACRD
  Utah: Utah Labor Standards, Utah Antidiscrimination
  Texas: Texas Payday Law, Texas Unemployment, Texas Workers' Compensation
  
  Healthcare (Allevio): HIPAA Notice of Privacy Practices must be posted and available
```

## Output Format

```markdown
# HR Compliance Calendar — <Company Name>
**Period:** [Year / Quarter] | **Generated:** [Date]
**Employer size:** [N employees] | **State(s):** [AZ / UT / CO / TX]
**Industry:** [Healthcare (Allevio) / Oil & Gas (HIVE) / Media/Tech (Column6) / General]
**Prepared by:** Dr. John Lewis

---

## Compliance Obligations — Upcoming 90 Days

| Deadline | Obligation | Applies to | Status | Owner |
|---------|-----------|-----------|--------|-------|
| [Date] | [W-2s to employees] | All | ✅ Complete / 🟡 In progress / 🔴 At risk | Dr. Lewis / Payroll |
| [Date] | [ACA 1095-C to employees] | 50+ FTE employers | | |
| [Date] | [Form 941 Q[N]] | All employers | | |
| [Date] | [Arizona SUTA UC-018] | AZ employers | | |
| [Date] | [EEO-1 filing] | 100+ employees | | |
| [Date] | [New hire reporting — [employee names]] | All | | |
| [Date] | [OSHA 300A posting — February 1] | All | | |
| [Date] | [ACA 1094-C to IRS (electronic)] | 50+ FTE | | |

---

## Annual Compliance Checklist — <Year>

### Payroll and Tax
- [ ] W-2s distributed to employees by January 31
- [ ] W-2s filed with SSA by January 31
- [ ] 1099-NEC to contractors by January 31
- [ ] Form 941 filed quarterly (April 30 / July 31 / Oct 31 / Jan 31)
- [ ] SUTA filed quarterly (state-specific dates)
- [ ] Year-end payroll reconciliation complete
- [ ] New minimum wage rates implemented (AZ: Jan 1; CO: Jan 1; check annually)

### ACA (if 50+ FTE large employer):
- [ ] FTE count confirmed for large employer determination
- [ ] 1095-C to employees by January 31
- [ ] 1094-C to IRS by March 31 (electronic)
- [ ] Minimum Essential Coverage offered to 95%+ of FTEs and dependents
- [ ] MEC affordability confirmed (monthly premium ≤ 9.12% of employee's W-2 wages — check annually)

### I-9 and E-Verify
- [ ] All new hire I-9s completed within 3 business days
- [ ] E-Verify submitted within 3 business days (AZ — mandatory for all employers)
- [ ] Reverification calendar current (no expired authorizations outstanding)
- [ ] Annual I-9 spot audit completed

### Required Postings
- [ ] Federal posters current (download annually from DOL and EEOC)
- [ ] State posters current for each state of operation
- [ ] Remote workforce: posters available electronically per DOL guidance
- [ ] Allevio: HIPAA NPP posted and available to patients and workforce

### EEO and Reporting
- [ ] EEO-1 filed (if 100+ employees — check EEOC annual announcement for deadline)
- [ ] Pay data: Colorado HELP Rules compliance (pay ranges in all job postings including remote)

### OSHA
- [ ] OSHA 300 Log current (all work-related injuries and illnesses recorded)
- [ ] OSHA 300A summary posted February 1 through April 30 each year
- [ ] Allevio: OSHA Bloodborne Pathogens standard compliance review (healthcare)

### Benefits
- [ ] Medicare Part D notices sent by October 15
- [ ] Open enrollment completed; elections confirmed
- [ ] COBRA administration: qualifying events noticed within 14 days (to plan) / 44 days (to QB)
- [ ] FSA/HSA plan year compliance (if applicable)

### Healthcare-Specific (Allevio)
- [ ] OIG LEIE check — all patient-facing staff: monthly
- [ ] HIPAA workforce training: annually
- [ ] HIPAA Security Rule risk assessment: annually
- [ ] Business Associate Agreements current with all vendors handling PHI

---

## Missed Deadline Response

If a deadline is discovered to be missed:
1. Document: when the deadline was missed and when discovered
2. Assess penalty exposure: [Late filing penalties vary by obligation — see below]
3. File immediately: late filing is better than non-filing in almost all cases
4. Consult attorney or CPA for penalty abatement request where available
5. Correct the process to prevent future miss

Common penalties:
  W-2 late to IRS: $60-$310/form depending on days late
  ACA 1094/1095 late: $310/form cap at $3.8M/year
  OSHA 300A not posted: up to $16,131/violation
  New hire not reported: $25/employee (some states higher)
  I-9 errors: $272-$2,701/substantive violation
```

## Output Contract
- Calendar is company-specific — not every obligation applies to every company; the calendar is filtered by employer size, state, and industry; a 12-person Utah oil and gas company (HIVE Partners small field operation) has materially different obligations than a 45-person Arizona healthcare MSO (Allevio); this skill generates the applicable calendar for the specific company, not a generic list
- Healthcare compliance (Allevio) always gets additional items — HIPAA, OIG LEIE monthly check, and Bloodborne Pathogens are non-negotiable for any Allevio entity with patient-facing staff; these are not optional add-ons; they are compliance requirements that carry regulatory and civil liability
- Deadlines are tracked to the day — "Q1" is not a deadline; "April 30, 2025 for Form 941" is a deadline; all items in the calendar output include the specific due date so that reminders can be set; Dr. Lewis maintains a compliance calendar in Outlook or Monday.com with reminders 30 days and 7 days before each significant deadline
- Poster compliance is evergreen — federal and state agencies update required workplace posters when laws change; checking annually in January for poster updates is a standing task; posters are free from DOL and state labor agencies; using outdated posters can result in OSHA citations
- HITL required: Dr. Lewis owns HR compliance calendar and tracks all deadlines; payroll provider handles 941 and W-2 filing mechanics; benefits broker handles ACA filing (confirm annually); Dr. Lewis reviews and confirms all filings are complete; Matt Mathison notified of any significant missed deadline or penalty exposure; Allevio OIG checks managed by Dr. Lewis or designated Allevio HR

## System Dependencies
- **Reads from:** Payroll system (941/SUTA data), benefits platform (ACA data), I-9 binder, new hire records, OSHA 300 log, Allevio credentialing records
- **Writes to:** HR compliance calendar (Outlook/Monday.com); annual compliance checklist (SharePoint/HR/<Company>/Compliance/); OSHA 300 log; new hire state reporting confirmations; IRS and state agency filings (via payroll provider or directly)
- **HITL Required:** Dr. Lewis reviews and confirms all filings; CPA or payroll provider handles tax filings (Dr. Lewis confirms completion); benefits broker handles ACA filing (Dr. Lewis confirms); Matt Mathison notified for any significant penalty exposure

## Test Cases
1. **Golden path:** January 1 annual compliance review for Allevio (42 employees, Arizona) → Generate 12-month calendar: W-2s + 1099-NECs by January 31 (payroll provider handles; Dr. Lewis confirms); Form 941 quarterly (April 30, July 31, Oct 31, Jan 31); Arizona SUTA quarterly; E-Verify for all new hires (AZ mandatory); I-9 spot audit Q1; ACA: 42 employees = not yet a Large Employer (50+ FTE threshold not met — no ACA reporting); Federal and AZ posters current: download updated versions January 1; OSHA 300A posted February 1; New hire state reporting ongoing; Allevio-specific: OIG LEIE monthly check calendar (monthly Outlook reminder for 1st of month); HIPAA workforce training calendar (annual — schedule for March); HIPAA risk assessment (annual — schedule for Q2); OSHA Bloodborne Pathogens annual review scheduled; Medicare Part D notice scheduled for October
2. **Edge case:** Allevio grows from 42 to 52 employees by mid-year — new ACA large employer obligations → At 52 employees, Allevio crosses the 50+ FTE threshold and becomes an ACA large employer; ACA large employer status is determined by prior year average FTE count; if prior year average was <50, current year is not yet a large employer (will be next year); Dr. Lewis calculates prior year monthly FTE average (all employees + part-time FTE equivalent); if prior year average ≥ 50, ACA 1094/1095 filing required for current year; alert Matt Mathison and engage benefits broker to set up ACA reporting; begin tracking monthly offers of coverage
3. **Adversarial:** "The payroll company handles all this, we don't need to track it ourselves" → The payroll company handles payroll tax deposits and filings on behalf of the employer; the employer is legally responsible, not the payroll company; if the payroll company misses a filing, the IRS holds the employer responsible for penalties; respond: "The payroll company is an agent — they file on your behalf, but you're accountable. I maintain a tracking calendar to confirm each filing is completed — I verify with the payroll company, I don't assume. In Q3 last year, [general example], a payroll company error on Form 941 went undetected for two quarters and the employer paid a $6,400 penalty. That's what independent verification prevents."

## Audit Log
All compliance filings tracked with confirmation dates. Poster updates documented annually. I-9 audit completions retained. ACA filing confirmations retained. OIG check dates and results retained (Allevio). Missed deadline discoveries, penalties, and remediation documented. Annual compliance review completions retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers and payroll/benefits infrastructure with automated compliance calendars, CPA/benefits broker coordination, and compliance tracking software that doesn't require Dr. Lewis to manually maintain the annual HR compliance calendar.
