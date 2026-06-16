---
name: hr-employment-law-advisor
description: "Provide employment law guidance for HR decisions. Use when the user says 'employment law', 'is this legal', 'HR legal question', 'can we fire someone for', 'exempt or non-exempt', 'FMLA question', 'ADA accommodation', 'EEOC', 'employment discrimination', 'at-will employment', 'wrongful termination', 'employment law compliance', 'labor law', 'wage and hour law', 'is it legal to', 'legal question about an employee', or 'HR compliance question'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--topic <termination|accommodation|leave|discrimination|wage-hour|classification>] [--state <AZ|UT|CO|TX|other>]"
---

# HR Employment Law Advisor

Provide employment law guidance for HR decisions at MBL portfolio companies — helping Dr. Lewis and managers understand what the law permits, prohibits, and requires in common employment situations. This skill covers practical employment law orientation, not legal advice. For any decision with significant legal exposure (termination, accommodation denial, disciplinary action for protected activity), the guidance from this skill is a starting point that informs the question to ask an employment attorney, not a substitute for attorney review.

## When to Use
- A manager asks "can we do [X]?" and the legal answer is unclear
- An employment action (termination, discipline, accommodation) may have legal implications
- A state-specific employment law question arises (Arizona, Utah, Colorado, Texas)
- An employee asserts a legal right (FMLA, ADA, FLSA) and Dr. Lewis needs to understand the company's obligations
- A new HR policy needs legal orientation before attorney review
- Dr. Lewis is preparing questions for an employment attorney consultation

## Employment Law Framework

```
Key federal employment laws — what they cover:

TITLE VII (Civil Rights Act):
  - Prohibits discrimination based on race, color, religion, sex, national origin
  - Applies to employers with 15+ employees
  - Covers hiring, firing, pay, promotion, training, classification
  - Sexual harassment is sex discrimination under Title VII
  - EEOC enforces; 300-day filing deadline (AZ has a EEOC-AZAG work-sharing agreement)

ADA (Americans with Disabilities Act):
  - Prohibits discrimination against qualified individuals with disabilities
  - Requires reasonable accommodation unless undue hardship
  - Applies to employers with 15+ employees
  - "Disability" is broadly interpreted post-ADA Amendments Act (2008)
  - Interactive process required: employer and employee must discuss accommodation together

ADEA (Age Discrimination in Employment Act):
  - Prohibits discrimination against employees 40+
  - Applies to employers with 20+ employees

FLSA (Fair Labor Standards Act):
  - Sets minimum wage, overtime, and child labor rules
  - Exempt vs. non-exempt classification determines overtime obligation
  - Employers who misclassify non-exempt employees as exempt are liable for back wages + damages
  
FMLA (Family and Medical Leave Act):
  - 12 weeks of unpaid, job-protected leave per year for qualifying reasons
  - Applies to employers with 50+ employees within 75 miles of the worksite
  - Qualifying: serious health condition (self or family), birth/adoption, qualifying military exigency
  - Employee must be employed for 12 months and have worked 1,250+ hours in prior year
  - Runs concurrently with any state leave (check state law)

NLRA (National Labor Relations Act):
  - Applies to non-union employers too
  - Employees have the right to discuss wages and working conditions
  - Cannot prohibit employees from discussing pay with each other
  - Retaliation for discussing wages = NLRA violation

Key state laws — portfolio company states:

ARIZONA:
  - At-will employment state (employer can terminate for any lawful reason or no reason)
  - Arizona Civil Rights Act mirrors Title VII but lower threshold (15 employees)
  - Arizona Earned Paid Sick Time Act: all employers (any size) must provide 1 hour per 30 hours worked
    (up to 40 hrs/yr for employers with <15 employees; up to 40 hrs/yr for employers with 15+ employees)
  - Arizona minimum wage: $14.70/hour (2025); adjusted annually
  - Arizona E-Verify mandate: all employers must use E-Verify (A.R.S. § 23-214)
  - No state FMLA (federal FMLA only if employer qualifies by size)

UTAH:
  - At-will employment state
  - Utah Antidiscrimination Act: covers race, color, sex, pregnancy, age (40+), religion, national origin,
    disability, sexual orientation, gender identity
  - Utah minimum wage: $7.25/hour (federal minimum)
  - No state FMLA; no state paid sick leave mandate
  - HIVE Partners operations primarily in Utah (Uinta Basin)

COLORADO:
  - At-will but with stronger employee protections than most states
  - Colorado HELP Rules: salary history ban; pay range disclosure required in job postings
  - Colorado FMLA: FAMLI Act (Family and Medical Leave Insurance) — paid leave program effective 2024
  - Colorado minimum wage: $14.42/hour (2025)
  - Colorado Healthy Families and Workplaces Act: paid sick leave for all employers
  - Colorado EPEWA: pay transparency in all job postings, including remote roles that could be filled in CO

TEXAS:
  - At-will employment state
  - Texas minimum wage: $7.25/hour (federal minimum)
  - No state paid sick leave mandate (some city ordinances preempted by state law)
  - No state FMLA beyond federal

Employer size thresholds:
  1-14 employees: FLSA, NLRA, I-9, E-Verify (AZ), AZ sick leave, AZ civil rights
  15+ employees: + Title VII, ADA, ADEA begins at 20 employees
  50+ employees: + FMLA (within 75 miles of worksite)
```

## Output Format

```markdown
# Employment Law Guidance — <Topic>
**Company:** <Entity> | **State(s):** [Arizona / Utah / Colorado / Texas / Other]
**Topic:** [Termination / Accommodation / Leave / Classification / Other]
**Employees in company:** [N — to apply correct size thresholds]
**Prepared by:** Dr. John Lewis | **Date:** [Date]

---

## Question

[Exact question from manager or Dr. Lewis — specific and factual]

---

## Legal Orientation

**Applicable law(s):**
- [Federal law 1]: [Brief description of what it says about this situation]
- [State law if applicable]: [What it adds or changes]

**Company size threshold check:**
- This company has [N] employees → Covered by: [List applicable laws]
- NOT yet covered by: [Laws that require higher threshold — e.g., FMLA if < 50 employees]

**Answer to the question (general orientation):**
[Direct answer: Yes / No / Depends on [X] / This requires attorney review]

**Key analysis:**
[Factual explanation — what the law permits, requires, or prohibits in this situation]

**What the company must do:**
- [Specific obligation 1 — if any]
- [Specific obligation 2]

**What the company may do:**
- [Permitted action 1]

**What the company must NOT do:**
- [Prohibited action 1 — with consequence]

---

## Risk Assessment

| Risk | Level | Note |
|------|-------|------|
| EEOC charge / discrimination claim | 🔴 High / 🟡 Moderate / 🟢 Low | [Specific risk factor] |
| Wage and hour liability | | |
| Wrongful termination exposure | | |
| State agency claim | | |

---

## Attorney Review Required?

[Yes — this decision has significant legal exposure. Before acting, Dr. Lewis should consult employment attorney with: (1) [specific question 1], (2) [specific question 2]]

[No — this is a routine HR decision within established legal parameters. Document the business reason for the action and proceed.]

---

## Action Steps

1. [Specific next step — what Dr. Lewis does now]
2. [Document this]
3. [Consult attorney (if needed)]
4. [Communicate to manager]

---

## Documentation Required

- [ ] [Document the business reason for the action in writing before taking it]
- [ ] [Employee file notation]
- [ ] [Attorney communication (if applicable)]
```

## Output Contract
- This is orientation, not legal advice — every output includes a clear statement of what this skill provides (legal orientation based on statutory law) and what it does not provide (legal advice for a specific factual situation); for any significant employment action (termination, accommodation denial, classification change), the output always specifies whether employment attorney review is required before acting
- State law always checked — federal law is the floor; state laws often provide greater employee protections; Arizona, Utah, Colorado, and Texas employment laws are checked for every question because MBL portfolio companies operate in these states; a question answered correctly under federal law may have a different answer under Colorado law (e.g., pay transparency, FAMLI paid leave)
- Protected class flag — if the situation involves an employee in a protected class (race, sex, age 40+, disability, religion, national origin, pregnancy, sexual orientation, gender identity in covered states) and an adverse action is being considered, the risk level escalates immediately; the timing of adverse actions relative to protected class events matters (discipline within 30 days of FMLA leave = retaliation risk regardless of documented business reason)
- At-will is not unlimited — at-will means the employer can terminate for any lawful reason or no reason, but NOT for an illegal reason; the exceptions are large: cannot terminate for exercising FMLA rights, filing workers' comp, reporting discrimination, discussing wages, or whistleblowing; "we're at-will, we can do anything" is a common manager misconception that leads to wrongful termination claims
- HITL required: Dr. Lewis reviews and delivers all employment law guidance; attorney consultation is required before significant employment actions in protected class or FMLA contexts; Matt Mathison notified when guidance reveals significant company exposure; all employment actions with legal risk are documented with business reasons before execution

## System Dependencies
- **Reads from:** Company employee count (to apply size thresholds), state(s) of operation, specific factual situation, prior ER case history if relevant
- **Writes to:** Guidance memo (SharePoint/HR/<Company>/Legal Guidance/ — retained); attorney referral notes; manager briefing
- **HITL Required:** Dr. Lewis delivers all guidance; employment attorney required for 🔴 risk situations before action; Matt Mathison notified for significant legal exposure; attorney review logs retained

## Test Cases
1. **Golden path:** Allevio manager asks "Can we terminate an employee who has been on FMLA for 12 weeks and still isn't back?" → Orientation: FMLA protects the 12-week period; at the end of leave, employer is generally entitled to require return to the same or equivalent position; however, if the employee has a disability (likely if 12 weeks isn't enough), ADA kicks in and requires an interactive process for additional accommodation (more leave may be reasonable accommodation); the right answer is: do NOT terminate without first engaging in an ADA interactive process; ask the employee what they need and what their timeline looks like; get a medical certification of expected return or restrictions; involve attorney before any termination decision; 🔴 risk — terminating at end of FMLA without ADA interactive process is a high-exposure scenario; attorney consultation required before action
2. **Edge case:** HIVE Partners Utah — employee discusses their salary with coworkers and manager says "that's against company policy" → This is an NLRA violation in progress; employees have a legal right to discuss wages and working conditions regardless of any company policy; respond immediately: advise the manager that the company's policy (if it exists) is unenforceable and potentially an unfair labor practice; do not discipline or retaliate against the employee; rescind or revise any policy that prohibits wage discussions; this applies even to non-union employers
3. **Adversarial:** A CEO says "we're at-will so I can terminate anyone anytime — I don't need a reason" → Partially correct — at-will means no reason is required, but an illegal reason (protected class, retaliation, exercising legal rights) creates liability even without an employment contract; guide toward best practice: always document a legitimate business reason before terminating, even at-will employees; a documented performance history, attendance record, or business reason is the defense against a wrongful termination or discrimination claim; "we didn't need a reason" is a weak defense against "you fired me 2 weeks after I filed a harassment complaint"

## Audit Log
All employment law guidance memos retained by date and topic. Attorney referrals documented. Significant risk assessments retained. Employment actions taken following guidance documented with business reasons.

## Deprecation
Retire when portfolio companies have retained employment counsel on a standing basis who can answer routine HR legal questions directly, and Dr. Lewis's role transitions to oversight of the attorney relationship rather than first-line legal orientation.
