---
name: hr-total-comp-communicator
description: "Communicate total compensation and rewards to MBL Partners portfolio company employees. Use when the user says 'total compensation', 'total comp', 'total rewards', 'total comp statement', 'total rewards statement', 'employee total comp', 'compensation statement', 'benefits statement', 'comp communication', 'pay communication', 'how to communicate comp', 'explain comp to employees', 'comp philosophy', 'pay philosophy', 'compensation philosophy', 'why we pay what we pay', 'compensation transparency', 'total package', 'full package', 'full compensation', 'what the employee is really getting', 'value of benefits', 'what we spend on the employee', 'employer cost per employee', or 'benefits communication'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--employee <name>] [--action <statement|philosophy|merit-comms|offer-comms>] [--period <YYYY>]"
---

# HR Total Comp Communicator

Build total compensation statements and comp philosophy communications for portfolio company employees — making visible the full value of the employment relationship (salary + bonus + equity + benefits + employer contributions) and articulating why MBL pays what it pays. Employees who only see their paycheck undervalue their total package by 15-25%; a total comp statement corrects that and reduces attrition driven by compensation misperception.

## When to Use
- Annual merit review cycle (accompany increases with a total comp statement)
- New hire onboarding (communicate full package value on Day 1)
- An employee has raised a compensation concern or competing offer
- Establishing or communicating the compensation philosophy

## Total Compensation Communication Framework

```
TOTAL COMPENSATION STATEMENT COMPONENTS:

  BASE SALARY: $[X] / year
  
  VARIABLE COMPENSATION (annualized estimate):
    Performance bonus target: $[X] ([X%] of base)
    Commission (for commercial roles): $[X] OTE
    
  BENEFITS (employer cost, annualized):
    Medical insurance (employer portion): $[X]
    Dental insurance (employer portion): $[X]
    Vision insurance (employer portion): $[X]
    Life insurance (employer-paid): $[X]
    STD/LTD (employer-paid, if applicable): $[X]
    
  RETIREMENT:
    401(k) employer match (maximum, if contributed): $[X] ([X%] match on up to [X%] of salary)
    Note: "This is your money — if you're not contributing to capture the full match, 
    you're leaving $[X] on the table"
    
  EQUITY:
    Options/profit interests granted: [X] units/options
    Current estimated value (409A): $[X] at current FMV
    Note: equity value changes with company performance; no guarantee of value
    
  PTO AND LEAVE:
    Annual PTO value (days × daily rate): $[X]
    AZ Earned Sick Time: $[X] value
    
  EMPLOYER TAXES (FICA, FUTA, SUTA):
    Employer payroll taxes on this employee: ~$[X] (not typically shown to employees, but is real cost)
    
  TOTAL EMPLOYER INVESTMENT: $[X] / year

COMPENSATION PHILOSOPHY STATEMENT:

  MBL philosophy: "We pay at the 50th-75th percentile of market for each role and location.
  We compete for THRIVE-aligned talent — people who want to do meaningful work with high integrity.
  Pay is one part of the total value equation. Our goal is that you never leave for money alone."
  
  Transparency norms:
    Bands exist and are structured around market data (employees may ask about their band)
    Pay decisions are documented and criteria-based (not relationship-based)
    Merit increases reflect performance (not tenure alone)
    Equity is offered selectively for roles where long-term ownership aligns incentives
    
COMMUNICATING DURING MERIT CYCLE:
  Accompanying a merit increase conversation:
    "Your total compensation for [year] was $[X]. With your [X%] merit increase,
    your new base is $[X] and your total package grows to approximately $[X].
    Here's what drives that: [reference to performance conversation]."
    
  Communicating a 0% increase:
    "Your total compensation package remains at $[X]. I want to be direct with you
    about why: [specific performance context — from performance conversation].
    Here's what I need to see for you to earn a merit increase next year: [specific criteria]."
    
  Never say: "We couldn't afford more" unless that is genuinely true and the CEO has authorized
    that communication — it shifts the frame from performance to budget and removes individual agency
    
COMPETING OFFER SITUATION:
  When an employee presents a competing offer:
    Step 1: Confirm the full package (base + bonus + equity + benefits)
    Step 2: Build a total comp comparison — MBL package vs. competing offer package
    Step 3: Identify what is actually driving the consideration (money? growth? culture?)
    Step 4: Dr. Lewis + entity CEO decide whether to counter or release
    
  Total comp comparison template:
    | Item | MBL package | Competing offer |
    |------|------------|----------------|
    | Base salary | $[X] | $[X] |
    | Bonus target | $[X] | $[X] |
    | 401k match | $[X] | $[X] |
    | Medical premium (employer) | $[X] | $[X] |
    | Equity | $[X] estimated | $[X] |
    | **Total** | **$[X]** | **$[X]** |
```

## Output Format

```markdown
# Total Compensation Statement — [Employee Name] | [Entity] — [Year]
**Prepared by:** Dr. Lewis | **Confidential**

---

## Your Total Compensation Package — [Year]

| Component | Your annual value |
|-----------|-----------------|
| Base salary | $[X] |
| Performance bonus (target) | $[X] |
| Medical insurance (employer portion) | $[X] |
| Dental + vision (employer) | $[X] |
| 401(k) match (maximum) | $[X] |
| Life insurance (employer-paid) | $[X] |
| PTO value ([X days]) | $[X] |
| AZ Earned Sick Time (40 hrs) | $[X] |
| **Total employer investment** | **$[X]** |

**Your equity:** [X options/units] granted [Date] — current FMV estimate: $[X] per unit

---

## What This Means
Your paycheck reflects $[X] of this. The remaining $[X] is paid on your behalf in benefits,
retirement contributions, and employer taxes. The total value of working here is $[X]/year.
```

## Output Contract
- Total comp statements are shared annually — a total comp statement that is never shared is a missed opportunity to demonstrate the full employer investment; Dr. Lewis builds total comp statements for every full-time employee annually and recommends they be shared by managers during merit conversations; the statement is individualized (actual values, not ranges) and marked confidential
- The comp philosophy is stated simply and honestly — "we pay at market" is only true if bands are actually at market; if a band review reveals the entity is paying below market, the comp philosophy statement is updated to reflect reality ("we are currently adjusting our compensation to meet market levels — here is the timeline"); a comp philosophy that is aspirational rather than accurate erodes trust
- Competing offer comparisons include full packages — a competing offer of $10K more base may be less valuable than the MBL package when employer 401(k) match, medical premium contribution, and equity are included; Dr. Lewis always builds the full comparison before the entity CEO decides whether to counter; "they're offering $10K more" is never the full picture
- HITL required: total comp statement → Dr. Lewis prepares; annual distribution → entity CEO approves timing; competing offer comparison → Dr. Lewis builds; counter-offer decision → Dr. Lewis + entity CEO; comp philosophy updates → Dr. Lewis + entity CEO approve

## System Dependencies
- **Reads from:** HRIS (salary; tenure; benefits elections; PTO balance); hr-benefits-manager (employer premium contributions); hr-merit-review-manager (merit increase data); hr-equity-plan-manager (option grant values; current 409A); hr-salary-band-manager (band position for comp philosophy context)
- **Writes to:** Total comp statements (SharePoint → HR → Compensation → [Entity] → Total Comp Statements → [Year]); competing offer comparison documents; merit conversation prep guides for managers
- **HITL Required:** Total comp statement → Dr. Lewis prepares; annual distribution → entity CEO approves; competing offer comparison → Dr. Lewis builds; counter-offer → Dr. Lewis + CEO; comp philosophy → Dr. Lewis + CEO approve

## Test Cases
1. **Golden path:** Annual merit cycle for HIVE Lease Manager. Merit increase: 4% (to $83K). Dr. Lewis builds total comp statement: base $83K; bonus target $5K; medical employer $8,400; dental/vision employer $1,200; 401k match $2,490 (3%); life insurance $420; PTO 10 days ($3,192 value); AZ Sick Time $1,596. Total: $105,298. Statement shared by HIVE CEO at merit conversation. Employee sees the $21K gap between paycheck-visible comp and total investment.
2. **Edge case:** Column6 Account Manager presents competing offer of $98K base vs. current $86K. Dr. Lewis builds comparison: competing offer total comp $98K + $4K bonus + $3K 401k match + $7K medical = $112K. MBL total comp: $86K + $8K OTE commission + $2,580 401k match + $8,400 medical + equity estimated $15K = $119,980. Full package: MBL is actually higher. CEO presents the comparison to the employee. Employee stays.
3. **Adversarial:** Entity CEO wants to tell the team "we pay top of market" when the most recent benchmark shows Allevio is 5% below the 50th percentile → Dr. Lewis: "I can't support that language. Our benchmark shows we're 5% below 50th percentile for the Care Coordinator role family. Saying 'top of market' to employees who are in the job market will get us caught immediately. I'd suggest: 'We pay competitively and we review our bands annually against market data.' That's honest and defensible. I'll have a band review and equity adjustment proposal to you by November 30."

## Audit Log
All total comp statements retained (with year; distribution date). Competing offer comparison documents retained. Merit conversation prep guides retained. Comp philosophy document retained with version history.

## Deprecation
Total comp statement template reviewed annually when benefits costs change. Comp philosophy statement reviewed at each annual band review. Competing offer template updated when plan features change.
