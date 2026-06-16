---
name: hr-wage-hour-compliance
description: "Ensure wage and hour law compliance. Use when the user says 'wage and hour', 'overtime', 'exempt employee', 'non-exempt employee', 'FLSA', 'salary threshold', 'employee classification', 'independent contractor', 'misclassification', 'minimum wage', 'overtime pay', 'compensable time', 'off-the-clock work', 'time and a half', 'time records', 'pay stub requirements', or 'worker classification'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <classify|audit|correct|advise>] [--employee <name or role>] [--state <AZ|UT|CO|TX>]"
---

# HR Wage-Hour Compliance

Ensure wage and hour law compliance at MBL portfolio companies — FLSA classification, overtime obligations, minimum wage, and timekeeping requirements. Wage and hour violations are among the most common employment law claims and among the most expensive: back wages + liquidated damages + attorney fees. The most costly mistake is misclassifying non-exempt employees as exempt to avoid paying overtime. At portfolio company scale, even a few misclassified employees can create six-figure liability when multiplied by two-year statute of limitations and liquidated damages.

## When to Use
- A new role is being created and needs an exempt/non-exempt classification determination
- A manager asks "does this person have to track their time?"
- An employee reports being asked to work off the clock or skip overtime
- An audit of current employee classifications is needed
- A role's salary or duties have changed and classification needs review
- An independent contractor arrangement is being assessed for proper classification

## Wage-Hour Compliance Framework

```
FLSA Exempt vs. Non-Exempt determination:

To be EXEMPT from overtime, an employee must meet ALL three tests:

  1. SALARY BASIS: Paid a predetermined fixed salary that does not vary based on quality 
     or quantity of work (not paid hourly for actual hours worked)
  
  2. SALARY LEVEL: Minimum salary of $684/week ($35,568/year) as of 2024
     (Check for DOL rule updates — this threshold has been subject to ongoing litigation)
  
  3. DUTIES TEST: Performs duties that qualify for one of the exempt categories:
  
     Executive: Primary duty = management of enterprise or department; customarily directs 
     2+ employees; has authority to hire/fire or recommendations carry weight
     
     Administrative: Primary duty = office/non-manual work directly related to management 
     or general business operations; exercises discretion and independent judgment on 
     matters of significance
     
     Professional (Learned): Primary duty = work requiring advanced knowledge in a field 
     of science or learning customarily acquired by prolonged course of specialized 
     intellectual instruction
     
     Professional (Creative): Primary duty = work requiring invention, imagination, 
     originality, or talent in a recognized field of artistic or creative endeavor
     
     Computer: Software engineer, programmer, systems analyst (special rules apply — 
     may be paid hourly at $27.63+/hr and still be exempt)
     
     Outside Sales: Primary duty = making sales or obtaining orders; customarily and 
     regularly works away from employer's place of business

If an employee does NOT meet all three tests → NON-EXEMPT:
  - Must track all hours worked
  - Must be paid at least minimum wage for all hours
  - Must be paid at least 1.5x regular rate for all hours over 40 in a workweek
  - Includes all time employer "suffers or permits" work — working through lunch counts

Independent Contractor vs. Employee (ABC Test — used in several states):
  Worker is an employee UNLESS:
    A) Free from control and direction of hiring entity in performing work
    B) Work is outside usual course of hiring entity's business
    C) Worker is customarily engaged in independently established trade/business of same nature

State minimum wages (2025):
  Arizona: $14.70/hour | Colorado: $14.42/hour | Utah: $7.25/hour | Texas: $7.25/hour

Overtime rules:
  Federal (FLSA): Overtime = hours over 40 per workweek (not per day, not per biweekly)
  California (not applicable to current portfolio but note for future): daily overtime triggers

Common overtime errors:
  - Averaging two workweeks (illegal — each workweek is independent)
  - Comp time for non-government employees (illegal in private sector)
  - "We pay salary so no overtime needed" (false — salary doesn't = exempt)
  - "They agreed to waive overtime" (illegal — employees can't waive FLSA rights)
```

## Output Format

```markdown
# Wage-Hour Compliance Assessment — <Company Name>
**Action:** [Classification / Audit / Correction / Advisory]
**Date:** [Date] | **Prepared by:** Dr. John Lewis
**State(s) of operation:** [AZ / UT / CO / TX]

---

## Employee Classification Determination (if applicable)

**Employee/Role:** [Name or title]
**Current classification:** [Exempt / Non-Exempt / Independent Contractor]
**Proposed classification:** [Same or different]

**Three-test analysis:**

| Test | Result | Analysis |
|------|--------|---------|
| Salary basis | ✅ Pass / ❌ Fail | [Paid fixed salary? Or hourly?] |
| Salary level | ✅ Pass / ❌ Fail | [$[X]/week vs. $684 threshold] |
| Duties test (category) | ✅ Pass / ❌ Fail / ⚠️ Borderline | [Which exemption? Duties analysis] |

**Classification determination:** EXEMPT / NON-EXEMPT / BORDERLINE (attorney review recommended)

**If BORDERLINE:** [Specific duties concern — what makes classification uncertain]

**Recommended classification:** [Exempt / Non-Exempt]
**Rationale:** [Why this classification is appropriate based on the three tests]

**Employment attorney review:** [Required — borderline case / Not required — clear classification]

---

## Overtime Exposure Analysis (for reclassification or audit)

If any employee is reclassified from Exempt to Non-Exempt:

**Lookback period:** 2 years (3 years if violation was willful)
**Estimated overtime exposure:** 
  Average overtime hours/week: [N hrs] × 1.5 × hourly rate × 52 weeks × 2 years = $[X]
  Liquidated damages (equal to back wages): + $[X]
  **Total exposure estimate:** $[X]

**Recommended action:** [Correct proactively / Consult attorney for DOL self-audit program / Other]

---

## Off-the-Clock Work Assessment

**Issue identified:** [Description]
**Affected employees:** [N employees — non-exempt]
**Estimated time at issue:** [Hours per week]
**Exposure calculation:** [Hours × rate × 1.5 × employees × weeks = $X]

**Immediate corrective action:**
- [ ] Manager instructed: all hours must be recorded; no off-the-clock work permitted
- [ ] Timekeeping system reviewed and corrected
- [ ] Back wages calculated and paid (with attorney guidance)
- [ ] Policy communicated to all non-exempt employees

---

## Independent Contractor Review

**Worker name/role:** [Name or description]
**Current status:** Independent Contractor

**ABC Test analysis:**
A) Free from control? [Yes / No / Partially — details]
B) Work outside usual course of business? [Yes / No — details]
C) Independent business established? [Yes / No / Partially — details]

**Classification risk:** [Low — all three met / 🔴 HIGH — employee misclassification risk]

**Recommendation:** [Maintain IC status / Convert to W-2 employee immediately]
**If reclassification needed:** Exposure includes back taxes, benefits, and potential FLSA overtime

---

## Compliance Checklist

Non-exempt employees:
- [ ] Timekeeping system in place (accurate to nearest minute or nearest 1/10 hour)
- [ ] All hours recorded including pre/post shift and through lunch if work occurs
- [ ] Overtime paid in same pay period it is earned (not deferred to next period)
- [ ] Regular rate calculation includes all remuneration except statutory exclusions
- [ ] Pay stubs include: hours worked, rate, gross pay, deductions, net pay
- [ ] Minimum wage checked against state rate (Arizona: $14.70/hr as of 2025)

Exempt employees:
- [ ] Salary basis maintained — no improper deductions that destroy exempt status
- [ ] Salary level meets current DOL threshold ($684/week / $35,568/year)
- [ ] Duties test confirmed and documented
```

## Output Contract
- Borderline classifications require attorney review before finalizing — the exempt/non-exempt boundary is often unclear in the administrative exemption (the most commonly misapplied category); "exercises discretion and independent judgment on matters of significance" is a legal standard that requires analysis, not assumption; Dr. Lewis flags borderline cases and does not finalize classification without employment attorney review
- Retroactive overtime exposure is calculated before reclassification — if an employee has been misclassified as exempt and is being corrected, the lookback period creates liability for unpaid overtime that must be addressed; Dr. Lewis calculates the exposure estimate before acting so Matt Mathison understands the financial implication; the DOL Wage and Hour Division has a self-audit program that may reduce exposure if proactively disclosed
- Off-the-clock work is a zero-tolerance issue — if a manager is asking non-exempt employees to work through lunch, check emails after hours without recording time, or clock out before finishing tasks, this is an FLSA violation regardless of whether the employee "agreed" to it; employees cannot waive their FLSA rights; immediate corrective action required; back wages must be calculated and paid
- Independent contractor misclassification is high risk — a worker who controls their own hours, uses their own equipment, and works for multiple clients may be a legitimate IC; a worker who works exclusively for one company, follows the company's schedule, uses company equipment, and performs core business functions is almost certainly an employee regardless of what the contract says; misclassification creates back taxes (FICA × 2 years), benefits exposure, and FLSA overtime liability
- HITL required: Dr. Lewis determines all classifications with attorney review for borderline cases; Matt Mathison approves any reclassification that generates retroactive exposure; off-the-clock violations reported to Matt Mathison immediately; independent contractor review requires Dr. Lewis and attorney sign-off for any IC with >$25K annual contract value

## System Dependencies
- **Reads from:** Job descriptions, salary records, timekeeping system data, independent contractor agreements
- **Writes to:** Classification records (SharePoint/HR/<Company>/Compensation/); compliance checklist; retroactive exposure calculations; attorney referral documentation
- **HITL Required:** Dr. Lewis determines all classifications; attorney review for borderline cases; Matt Mathison approves reclassification with financial exposure; off-the-clock violations flagged to Matt Mathison

## Test Cases
1. **Golden path:** Allevio billing manager role — salary $58,000/year → Three-test analysis: Salary basis: yes (fixed salary); Salary level: $58,000 / 52 = $1,115/week > $684 threshold — PASS; Duties: Primary duty is managing billing team of 4 coders (Executive exemption: manages 2+ employees, makes hiring recommendations) — PASS; Classification: EXEMPT — Executive; No timekeeping required; overtime not owed; documented in compensation record
2. **Edge case:** An administrative assistant at HIVE Partners earning $34,000/year was classified as exempt → Salary test fails: $34,000 / 52 = $654/week < $684 threshold; classification is INVALID regardless of duties; must reclassify to non-exempt immediately; calculate 2-year retroactive overtime exposure (estimated 5 hrs/week × 1.5 × $16.35/hr × 104 weeks = $12,754 back wages + $12,754 liquidated damages = ~$25,500 total exposure); consult employment attorney about self-audit program; pay back wages; Matt Mathison approves financial remedy; document correction
3. **Adversarial:** A manager says "just put them on salary and we don't have to pay overtime" → This is one of the most common and costly wage-hour misconceptions; salary status does not determine overtime obligation — the three-test analysis does; respond: "Salary is only the first test. We still have to confirm the salary level meets the $684/week threshold, and we have to confirm their actual duties meet an exemption. If the duties test doesn't pass, they're non-exempt regardless of whether we pay them salary. And if we've been calling a non-exempt employee 'exempt' without paying overtime, we're looking at back wages plus equal liquidated damages for up to two years."

## Audit Log
All classification determinations retained with analysis documentation. Retroactive exposure calculations retained. Reclassification decisions and attorney approvals retained. Off-the-clock violation reports and remediation documented. IC classification reviews retained. Annual classification review completions documented.

## Deprecation
Retire when portfolio companies have HR managers and employment counsel who conduct annual FLSA audits, maintain a classification log for all positions, and have automated timekeeping systems for non-exempt employees that don't require Dr. Lewis to manually review each classification.
