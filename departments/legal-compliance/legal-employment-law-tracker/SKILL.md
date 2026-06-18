---
name: legal-employment-law-tracker
description: "Track and enforce employment law compliance for MBL portfolio companies. Use when the user says 'employment law', 'wage and hour', 'exempt vs non-exempt', 'overtime', 'FLSA', 'at-will employment', 'termination', 'wrongful termination', 'discrimination', 'harassment', 'ADA accommodation', 'FMLA leave', 'leave of absence', 'employment compliance', 'minimum wage', 'pay stub requirements', 'final paycheck', 'I-9 compliance', 'employment eligibility', 'classification', 'employee vs contractor', '1099 vs W-2', 'WARN Act', 'layoff notice', or 'labor law'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--state <AZ|UT|CA|other>] [--issue <classification|termination|leave|accommodation|wage-hour>] [--action <assess|advise|escalate>]"
---

# Employment Law Tracker

Track and enforce employment law compliance for MBL portfolio companies — covering wage and hour, classification, termination, leave, accommodation, and anti-discrimination requirements. Employment litigation is the most common legal risk for small to mid-size companies: misclassified contractors, unpaid overtime, wrongful termination claims, and harassment claims can each cost $50K-$500K+ when they escalate to litigation. Dr. Lewis maintains employment law compliance across the portfolio and escalates to employment counsel for any claim, threat of litigation, or complex compliance question.

## When to Use
- Classifying a worker as employee vs. independent contractor
- Terminating an employee (any termination — ensure compliance before action)
- Responding to an employee complaint (discrimination, harassment, retaliation)
- Employee requests leave (FMLA, ADA accommodation, state-mandated leave)
- Setting pay and overtime policy for any portfolio company
- A current or former employee threatens legal action

## Employment Law Framework

```
JURISDICTION NOTE:
  Portfolio company states:
    Allevio: Arizona (primary); may have employees in other states as it grows
    HIVE Partners: Utah (Uinta Basin operations)
    Column6: Arizona (primary); possibly California if LA/SF-based staff
  California employment law is the most restrictive — if Column6 has any CA employees,
    California-specific rules apply (higher minimum wage; CCPA; CFRA; stronger protections)
  Employment counsel must be engaged for California employment issues

EMPLOYEE vs. INDEPENDENT CONTRACTOR CLASSIFICATION:

  Federal standard (IRS + FLSA):
    Economic realities test:
      1. Permanency of relationship (ongoing = employee signal)
      2. Integration into business (core function = employee signal)
      3. Investment (low investment by worker = employee signal)
      4. Control (detailed control = employee signal)
      5. Profit/loss opportunity (limited = employee signal)
      6. Skill and initiative (specialized unique skill = contractor signal)
    IRS 3-factor test: Behavioral control; financial control; type of relationship
    
  Arizona standard: Similar to federal; Arizona follows IRS common law rules
  Utah standard: Similar to federal
  
  Misclassification risk:
    If a contractor is later determined to be an employee:
      Back taxes (employer share FICA, FUTA) — typically 3-7 years
      Unpaid overtime (if worked >40 hrs/week)
      Unpaid benefits (if company offers benefits to employees)
      Civil penalties
    Rule of thumb: If the worker does core business work, is supervised, works regular hours,
      and cannot work for competitors — they are likely an employee
    ANY classification question → Dr. Lewis reviews → employment counsel advises

WAGE AND HOUR COMPLIANCE:

  Exempt vs. Non-Exempt (FLSA):
    Exempt employees: Not entitled to overtime
      Tests (must meet BOTH salary and duties test):
        Salary: ≥$684/week ($35,568/year) — federal minimum
        Duties: Executive, Administrative, or Professional (specific tests per category)
    Non-exempt employees: Entitled to overtime (1.5× regular rate for hours >40/week)
    
  Arizona minimum wage: $14.70/hour (2026); indexed to inflation annually
  Utah minimum wage: $7.25/hour (federal minimum — no state increase)
  
  Pay stub requirements:
    Arizona: Must include gross wages, deductions, net wages, hours worked (non-exempt)
    Utah: Must include hours worked, gross wages, deductions (if >$500 in a pay period)
    
  Final paycheck:
    Arizona: Termination — within 7 days or next regular payday (whichever is sooner)
      Involuntary: Next business day in some interpretations; to be safe, 7 days max
    Utah: Involuntary termination — within 24 hours; voluntary — next regular payday
    
  Record retention: Payroll records → 3 years; wage determination records → 2 years

ANTI-DISCRIMINATION AND HARASSMENT:
  Protected classes (federal): Race; color; national origin; sex (including pregnancy; gender identity); religion; disability; age (40+); genetic information
  Arizona adds: Marital status (state law)
  Complaint procedure: All complaints must be documented and investigated promptly
    Step 1: Receive complaint in writing (even if initially verbal — convert to written)
    Step 2: Notify Dr. Lewis within 24 hours of any formal complaint
    Step 3: Dr. Lewis notifies Matt Mathison; engages employment counsel
    Step 4: Conduct investigation (neutral investigator; document findings)
    Step 5: Take action based on findings (discipline, termination, policy change)
    Step 6: No retaliation against complainant — monitor and document
    
FMLA AND LEAVE:
  Federal FMLA: Applies to employers with ≥50 employees within 75 miles
    Current portfolio companies likely below threshold — monitor as companies grow
    At 50 employees: FMLA compliance immediately required
    FMLA grants: 12 weeks unpaid leave per year for qualifying reasons
    
  Arizona: Arizona Family Leave Act (AFLA) — applies to employers with ≥50 employees
  Arizona Earned Paid Sick Leave: ALL employers regardless of size
    Accrual: 1 hour per 30 hours worked; up to 40 hours/year (employers with <15 employees)
    Cannot retaliate for use of sick leave
    
ADA ACCOMMODATION:
  Americans with Disabilities Act: Applies to employers with ≥15 employees
  Current portfolio companies likely at or near threshold
  Reasonable accommodation: Engage in "interactive process" with employee
    Document all conversations about accommodation
    Employment counsel required for any accommodation denial
    
TERMINATION CHECKLIST (any employee):
  □ Document performance issues in writing before termination (performance management)
  □ Review all documentation (PIPs, warnings) — is there a paper trail?
  □ Check for protected class status, recent complaints, or leave requests (retaliation risk)
  □ Final paycheck timing confirmed (Arizona: 7 days max; Utah: 24 hours involuntary)
  □ COBRA notice within 14 days (if company offers health insurance)
  □ Access revoked same day as termination
  □ Return of company property documented
  □ Separation agreement? (if offering severance, get a signed release; engage employment counsel)
  □ Unemployment: Do not contest unless clear misconduct (contesting in bad faith = bad faith claim risk)
```

## Output Format

```markdown
# Employment Law Assessment — [Issue Type]
**Entity:** [Portfolio Company] | **State:** [AZ/UT/CA/other] | **Date:** [Date]
**Issue:** [Classification / Termination / Leave / Complaint / Wage-hour]
**Recommendation:** COMPLIANT / RISK — REMEDY NOW / ESCALATE TO COUNSEL

---

## Issue Summary

[2-3 sentence description of the situation and what is being evaluated]

---

## Legal Analysis

**Applicable law:** [FLSA / Arizona / Utah / FMLA / ADA / Other]
**Key facts:** [Facts relevant to the legal question]
**Legal standard:** [What the law requires]
**Assessment:** [Does the current practice / situation meet the standard?]

---

## Risk Assessment

**Risk level:** High / Medium / Low
**Estimated exposure if claim filed:** $[X] - $[X] (litigation range)
**Statute of limitations:** [When the claim window closes]

---

## Action Required

| Action | Owner | Due |
|--------|-------|-----|
| [Specific step] | CEO / Dr. Lewis / Employment counsel | [Date] |

---

## Escalation

[If escalating to employment counsel: Reason for escalation + specific question for counsel]
```

## Output Contract
- Terminations require preparation — never terminate an employee on impulse; the paper trail matters: a termination that cannot be documented with prior written performance feedback, warnings, or policy violations is a wrongful termination claim waiting to happen; Dr. Lewis reviews every termination before action is taken; if the CEO wants to fire someone today who received no prior written warnings, Dr. Lewis will advise on risk and recommend at minimum a written counseling or PIP before termination; emergency terminations (cause — misconduct, theft, violence) can proceed without prior warnings, but must be documented thoroughly and employment counsel engaged immediately
- Retaliation claims outlast the underlying claim — an employee who files a discrimination complaint and is then terminated within 90 days has a strong retaliation claim regardless of whether the original discrimination claim had merit; the timing creates the appearance of retaliation; Dr. Lewis monitors for this pattern: before terminating any employee who has (a) recently filed a complaint, (b) requested leave, or (c) reported a safety issue, Dr. Lewis requires employment counsel review first; the cost of the counsel review is far less than defending a retaliation claim
- Employment counsel is not optional for claims — when a current or former employee threatens legal action, files an EEOC charge, or sends a demand letter, Dr. Lewis's role immediately shifts from advisor to coordinator: engage employment counsel within 24 hours; preserve all relevant records and communications; do not make any statements about the claim without counsel review; do not offer settlements or apologies without counsel involvement; the company's CEO may want to "just talk to the person and resolve it" — Dr. Lewis will advise against any direct communication until counsel is involved
- HITL required: Dr. Lewis advises; CEO makes all employment decisions (hiring, termination, discipline); Dr. Lewis reviews before any termination action; Matt Mathison informed of any formal complaint, threatened litigation, or EEOC filing; employment counsel required for any claim, retaliation risk situation, ADA accommodation denial, or California employment issue; Dr. Lewis does not make legal determinations about employment law — he identifies the risk, applies the framework, and routes to counsel when the stakes exceed the policy threshold

## System Dependencies
- **Reads from:** Employee file (performance documentation, written warnings, PIPs, accommodation requests); payroll records (QuickBooks — for wage and hour review); I-9 records (employment eligibility verification); offer letters and employment agreements; employee handbook (policies that may be relevant to the employment law question); HR system (hr-onboarding-coordinator; hr-offboarding-manager)
- **Writes to:** Employment law assessment memo; termination documentation; complaint investigation records; accommodation decision records; employment counsel engagement memo; Matt Mathison notification memo (for any formal complaint or threatened litigation)
- **HITL Required:** Dr. Lewis reviews; CEO decides; employment counsel required for claims, complex classification questions, ADA accommodation denials, FMLA administration (at 50-employee threshold), California employment issues, or any situation where litigation is a realistic risk; Matt Mathison notified of any EEOC charge, threatened litigation, or formal complaint; no termination proceeds without Dr. Lewis review

## Test Cases
1. **Golden path:** Allevio is paying a clinical coordinator $32K/year and classifying them as exempt → Dr. Lewis reviews: Federal salary threshold is $35,568/year; at $32K, this employee does not meet the salary basis test and cannot be exempt; Result: employee is misclassified; must be reclassified as non-exempt immediately; Exposure: if the employee worked >40 hours/week without overtime, back overtime is owed for up to 2 years (3 years if willful); Action: (1) Reclassify to non-exempt immediately; (2) Conduct overtime audit for prior 2 years — how many hours did the employee actually work?; (3) Calculate back overtime owed; (4) Pay back wages proactively (reduces willfulness risk); (5) Adjust salary to $35,568+ if the company wants to maintain exempt status; CEO informed; back wages calculated and paid within 30 days
2. **Edge case:** HIVE has been using an independent contractor to manage their field operations for 14 months — he works daily, follows HIVE's schedule, uses HIVE equipment, and doesn't work for any other company → Dr. Lewis flags: "This contractor is likely an employee under the economic realities test. He works daily on a permanent arrangement (permanency); his work is integral to HIVE's operations (integration); he uses our equipment (low investment); he follows our schedule and direction (behavioral control); he has no other clients (economic dependence). The risk of misclassification is high. If reclassified, HIVE owes: back employer-side FICA (~7.65% × compensation × months); back unemployment taxes; potentially back overtime if he worked >40 hrs/week. I recommend engaging employment counsel to advise on the reclassification — we can either properly convert him to W-2 employment now and limit prospective risk, or continue and accept the growing liability. My recommendation is to convert to employment. CEO decision required." Employment counsel engaged; contractor converted to W-2 employee
3. **Adversarial:** A Column6 employee files a formal harassment complaint against her manager; the CEO wants to terminate the manager immediately → Dr. Lewis intervenes: "We cannot terminate the manager before completing an investigation. If we terminate him immediately following the complaint, we create a paper trail that shows: complaint filed → manager terminated within days. The terminated manager has grounds for a wrongful termination claim (assuming we don't have independent documented cause); and critically, if the investigation finds the complaint was not credible, we've already taken an irreversible action. Here's the protocol: (1) Separate the manager and complainant immediately (put manager on administrative leave with pay during investigation); (2) Engage employment counsel within 24 hours — they will advise on the investigation; (3) Conduct a neutral investigation; (4) Make the termination decision based on the investigation findings. This takes 2-3 weeks and costs $5-15K in counsel fees. It is far cheaper than a wrongful termination claim ($50K-$200K) or a harassment lawsuit ($100K+)." CEO agrees; process followed

## Audit Log
All employment law assessments retained by employee and date. Termination documentation retained (7 years post-termination). Complaint investigation records retained permanently. Accommodation decisions retained (7 years). Payroll records and classification documentation retained (3 years per FLSA; 7 years for MBL). Any EEOC charges or demand letters retained permanently. Employment counsel engagement records retained.

## Deprecation
Retire when each portfolio company has an HR Director or People Operations leader with employment law expertise — with Dr. Lewis retaining oversight of employment claims, EEOC matters, and high-risk terminations across the portfolio, and employment counsel engaged for active litigation.
