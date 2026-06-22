---
name: hr-eeo-tracker
description: "Track equal employment opportunity compliance and workforce diversity for MBL Partners portfolio companies. Use when the user says 'EEO', 'equal employment opportunity', 'EEO compliance', 'EEO-1', 'EEO-1 filing', 'workforce diversity', 'diversity metrics', 'diversity data', 'protected class', 'discrimination prevention', 'EEOC compliance', 'employment discrimination', 'diversity reporting', 'inclusive hiring', 'fair hiring', 'disparate impact', 'adverse impact', 'accommodation request', 'disability accommodation', 'religious accommodation', 'pregnancy accommodation', 'Pregnant Workers Fairness Act', 'PWFA', 'affirmative action', 'pay equity', 'gender pay gap', 'pay gap analysis', or 'workforce composition'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <report|audit|analyze|accommodate>] [--metric <composition|pay-equity|pipeline|eeo-1>]"
---

# HR EEO Tracker

Track EEO compliance, workforce diversity metrics, and accommodation requests across MBL Partners portfolio companies — ensuring hiring, promotion, pay, and separation decisions do not produce disparate impact by protected class, and that accommodation requests receive legally required interactive process. EEO compliance is not a reporting exercise; it is a decision audit system.

## When to Use
- Annual EEO-1 filing assessment (if entity reaches ≥100 employees)
- Hiring or promotion decision audit for disparate impact
- Accommodation request is received
- Pay equity analysis is needed
- Workforce diversity metrics are requested

## EEO Framework

```
PROTECTED CLASSES (federal + AZ/UT):
  Federal (Title VII; ADA; ADEA; GINA; PWFA; USERRA):
    Race; color; national origin; sex; religion; disability; age (40+); genetic information;
    pregnancy/childbirth/related conditions; military/veteran status
  AZ state additions:
    Sexual orientation (AZ anti-discrimination orders for state contractors; municipal coverage varies)
  UT state additions:
    Sexual orientation and gender identity (Utah Antidiscrimination Act — applies to employers ≥15)
    
EEO-1 FILING:
  Threshold: ≥100 employees — most MBL portfolio entities are below; confirm annually
  If entity reaches 100: Dr. Lewis registers with EEOC STARTS portal; files by annual EEOC deadline
  Categories: job category (10 EEO-1 categories) × race/sex data
  Source: self-identified data from new hire forms; no guessing by manager
  Dr. Lewis confirms FTE count each October; if approaching 100, begin EEO-1 readiness
  
DISPARATE IMPACT AUDIT (hiring and promotion):
  What to check: if a decision criterion results in significantly different selection rates 
    by protected class → potential disparate impact even without discriminatory intent
  Four-fifths (4/5) rule: if selection rate for any protected group is <80% of highest group = flag
  When to run: after each hiring batch (≥10 applicants); annually for promotion decisions
  Dr. Lewis conducts; entity CEO reviews
  
ACCOMMODATION REQUEST PROCESS:
  Disability (ADA): see hr-leaves-manager for full interactive process
  Religious accommodation: employer must accommodate unless undue hardship
    Hardship standard for religion is lower than ADA (de minimis cost = undue hardship)
    Examples: schedule change; shift swap; prayer time; dress code modification
    Cannot require employee to disclose specific religious beliefs
  Pregnancy (PWFA — federal, effective June 2023):
    Reasonable accommodation for known limitations related to pregnancy, childbirth, 
      or related medical conditions
    Lower threshold than ADA: accommodation required unless "significant difficulty or expense"
    Temporary removal from duties as accommodation (even if no permanent disability)
    
PAY EQUITY MONITORING:
  Definition: equal pay for substantially similar work regardless of protected class
  AZ Equal Pay: no specific state law; federal EPA (Equal Pay Act) applies (sex-based pay differences)
  UT: no state equal pay law stronger than federal EPA
  MBL standard: annual pay equity review — compare compa-ratios by protected class within job band
  Goal: no statistically significant compa-ratio difference by race or sex within band and level
  If gap identified: investigate root cause (market timing? performance? tenure?); 
    remediate where not justified; document analysis
  
HIRING AUDIT:
  Periodic review of hiring decisions for:
    Interview panel composition (single-assessor risk)
    Score variance by protected class (are women/minorities scored lower without business justification?)
    Offer rate vs. pipeline composition
  Recommended: audit after every 5+ person hiring cohort
  
DOCUMENTATION:
  All accommodation requests: documented (request; interactive process; decision; rationale)
  Hiring decisions: documented criteria; scores; business justification for selection
  Pay equity analysis: documented with findings and remediation actions
  Retained: per EEOC retention requirements (1 year from decision; 2 years for personnel records)
```

## Output Format

```markdown
# EEO Compliance Report — [Entity] — [Year]
**FTE count:** [X] | **EEO-1 required:** ☐ Yes (≥100) / ☐ No (<100)
**Reviewed by:** Dr. Lewis | **Date:** [Date]

---

## Workforce Composition

| EEO-1 Category | Total | Male | Female | White | Black | Hispanic | Asian | Other |
|---------------|-------|------|--------|-------|-------|---------|-------|-------|
| Exec/Sr. Manager | | | | | | | | |
| Prof/Technical | | | | | | | | |
| Admin/Support | | | | | | | | |

*(Data from self-identification forms — not manager-estimated)*

---

## Pay Equity Analysis

| Job band | N | Avg compa-ratio (Male) | Avg compa-ratio (Female) | Gap | Explained? |
|---------|---|----------------------|------------------------|-----|-----------|
| L2 | | | | | |

---

## Accommodation Requests This Period

| Request type | Date | Interactive process | Outcome |
|-------------|------|-------------------|---------|
| [Disability/Religious/Pregnancy] | | ☐ Complete / ☐ In progress | Approved / Modified / Declined (with documented undue hardship) |

---

## Disparate Impact Flags
- [ ] Hiring cohort reviewed: [Date]; no 4/5 rule violations identified / [violation noted + remediation]
- [ ] Promotion decisions reviewed: [Date]

---

## Actions Required
[Any remediation; accommodation follow-up; pay gap correction]
```

## Output Contract
- Pay equity analysis compares compa-ratios within band and level — a raw salary comparison across the full entity will produce misleading results (VP pays more than coordinators, obviously); the analysis must control for job band, level, and tenure to isolate unexplained variance; Dr. Lewis runs the analysis within each salary band; a statistically meaningful gap (>5% compa-ratio difference by sex or race within the same band) triggers investigation and documented root cause; gaps explained by documented performance, tenure, or market timing are acceptable if the explanation is consistent; gaps that cannot be explained are remediated
- Self-identification data is the only permissible source for race/sex data — managers cannot estimate or record race/sex for employees; employees self-identify on new hire forms; if an employee declines to self-identify, that is their right; Dr. Lewis records "not provided" — never an estimated value; EEO-1 data built from manager estimates would constitute a fabricated federal filing
- Accommodation requests trigger interactive process within 5 business days — an accommodation request that sits on a manager's desk for 2 weeks without being routed to Dr. Lewis is an ADA or PWFA violation; every manager is trained that accommodation requests go to Dr. Lewis immediately — not after the manager decides whether it's "reasonable"; Dr. Lewis starts the interactive process clock; the manager's role is to flag, not to decide
- HITL required: pay equity analysis → Dr. Lewis conducts; entity CEO reviews; pay gap remediation → Dr. Lewis + entity CEO (>$25K total → Matt Mathison); accommodation request → Dr. Lewis within 5 business days; accommodation decision → Dr. Lewis + entity CEO; EEO-1 filing → Dr. Lewis files; disparate impact flag → Dr. Lewis + entity CEO investigate; hiring audit finding → Dr. Lewis + entity CEO address

## System Dependencies
- **Reads from:** hr-salary-band-manager (compa-ratio by band for pay equity); hr-compensation-benchmarker (market reference for pay gap analysis); hr-hiring-scorecard (selection decisions for disparate impact audit); HRIS (workforce composition; self-identification data); hr-leaves-manager (accommodation overlap with leave)
- **Writes to:** EEO compliance report (SharePoint → HR → EEO → [Entity] → [Year]); pay equity analysis (confidential; Dr. Lewis + entity CEO); accommodation records (Dr. Lewis file; separate from personnel file); EEOC STARTS portal (EEO-1 if applicable); entity CEO remediation plan
- **HITL Required:** Pay equity analysis → Dr. Lewis; remediation → Dr. Lewis + CEO + (Matt if >$25K); accommodation → Dr. Lewis within 5 days; EEO-1 filing → Dr. Lewis; disparate impact → Dr. Lewis + CEO investigate; hiring audit → Dr. Lewis + CEO

## Test Cases
1. **Golden path:** Column6 annual EEO review. FTE: 9 (no EEO-1 required). Pay equity analysis by band: L3 (5 employees; 3M / 2F). Male avg compa-ratio: 1.02; Female avg compa-ratio: 0.96. Gap: 6 pp — investigate. Root cause: 1 female employee hired 8 months ago (lower tenure = lower starting point per band); 1 female employee on developing performance path (lower merit increase). Both explainable and documented. No remediation required; monitor at next cycle.
2. **Edge case:** Employee requests a religious accommodation — Fridays off at sundown (observant Shabbat) → Dr. Lewis: "I'm initiating the interactive process. Religious accommodations are required unless they impose more than a de minimis cost. Fridays off at sundown — does the role require Friday afternoon presence? If the team can cover client calls on Fridays after 3 PM and this employee handles them the following Monday, this accommodation likely doesn't impose undue hardship. Let me confirm coverage feasibility with the entity CEO and respond within 5 business days. I will not ask the employee about the specifics of their religious beliefs — only the accommodation needed."
3. **Adversarial:** Entity CEO says "I want to see the hiring scorecard data broken down by race to check for bias, before we make an offer" → Dr. Lewis: "I understand the intent — you want to make sure we're not biased. But selectively pulling race data to review before an offer is made actually creates a disparate treatment risk. The scorecard data should drive decisions; reviewing race before the offer decision introduces race as a factor, which is the opposite of what we want. I'll run a post-cohort disparate impact audit after we've completed this hiring cycle — that's the right analysis, done in the right order."

## Audit Log
EEO-1 filings retained permanently. Pay equity analyses retained 3 years. Accommodation requests and interactive process records retained for duration of employment + 1 year. Self-identification forms retained per EEOC schedule (1-2 years from personnel action). Disparate impact audit records retained 2 years. Hiring decision records retained 1 year (EEOC; longer if claim filed).

## Deprecation
Protected class list reviewed when federal or AZ/UT law changes. PWFA process reviewed as EEOC guidance matures. EEO-1 threshold reviewed annually. Pay equity standard reviewed every 2 years.
