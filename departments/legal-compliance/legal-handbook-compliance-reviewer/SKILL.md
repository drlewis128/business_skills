---
name: legal-handbook-compliance-reviewer
description: "Review employee handbooks for legal compliance for MBL portfolio companies. Use when the user says 'employee handbook', 'handbook review', 'HR handbook', 'handbook compliance', 'handbook update', 'policy manual', 'employee policy', 'workplace policy', 'update the handbook', 'handbook legal review', 'at-will policy', 'workplace policies', 'handbook policies', 'FMLA policy', 'PTO policy', 'workplace harassment policy', 'discrimination policy', 'drug testing policy', 'social media policy', or 'handbook acknowledgment'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--state <AZ|UT|CA|other>] [--action <review|update|create>] [--last-review <year>]"
---

# Handbook Compliance Reviewer

Review employee handbooks for legal compliance for MBL portfolio companies — identifying outdated policies, legally required disclosures, and missing protections before they become employment claims. An employee handbook is both a legal protection (documents company policies; establishes at-will employment) and a legal risk (promises that are not kept can be enforced as implied contracts). Dr. Lewis reviews handbooks annually to ensure they reflect current law and company practice.

## When to Use
- Annual handbook review (target: each January before any law changes take effect)
- A new state law changes an employment requirement (Arizona minimum wage; new leave laws)
- A portfolio company is acquired and its handbook needs to be reviewed or harmonized
- A portfolio company has never had a formal handbook (create one)
- An employment claim reveals a policy gap in the handbook

## Handbook Review Framework

```
REQUIRED AND RECOMMENDED HANDBOOK POLICIES:

  LEGALLY REQUIRED OR STRONGLY RECOMMENDED:
  
    At-will employment statement:
      Required in: AZ, UT (at-will states)
      Language: "Employment with [Company] is at-will, meaning that either the employee or
        the Company may end the employment relationship at any time, for any reason or no reason,
        with or without advance notice."
      Critical: The handbook must NOT contain language that creates implied contract rights
        (e.g., "employees will be terminated only for cause" — this modifies at-will status)
      Disclaimer: Handbook is not a contract; can be modified at any time
      
    Anti-discrimination and harassment:
      Required by: Title VII; ADA; ADEA; state law equivalents
      Must include: Protected categories (race, color, sex, national origin, religion, age, disability,
        pregnancy, genetic information)
      Add: Sexual orientation and gender identity (protected in AZ and UT by federal case law)
      Process: How to report discrimination or harassment; who to report to; investigation process
      Non-retaliation: Explicit prohibition on retaliation for reporting
      
    Wage and hour policies:
      Overtime: FLSA requirements for non-exempt employees; who is exempt
      Minimum wage: Arizona $14.70/hr (2026); Utah $7.25/hr (federal minimum — no state increase)
        REVIEW ANNUALLY: Arizona minimum wage adjusts annually; handbook must reflect current rate
      Timekeeping: How employees record time; rounding policies; off-the-clock work prohibition
      
    Leave policies:
      FMLA: Required disclosure for employers with 50+ employees (MBL companies likely below threshold;
        confirm — if below 50 employees, FMLA does not apply)
      Arizona paid sick leave (ESTA): Required for all employers in Arizona
        Accrual: 1 hour per 30 hours worked; capped at 40 hours/year for employers with <15 employees;
          capped at 40 hours/year (with carryover) for 15+ employees
      PTO policy: Document whether PTO is vacation + sick combined or separate; accrual; carryover
      
    Safety policies:
      OSHA general duty: Employer's obligation to provide a safe workplace
      HIVE specific: Oil and gas field safety policies; PPE requirements; incident reporting
      Allevio specific: Healthcare infection control; HIPAA breach reporting (workforce obligation)
      
    Workplace policies:
      Confidentiality: Employees' obligation to protect company confidential information
      Technology use: Company equipment; email; internet; expectation of no privacy on company systems
      Social media: Policy on representing the company on social media; prohibited disclosures
      Drug and alcohol: Drug-free workplace policy; testing policy (where legally permitted)
      Weapons: Workplace violence prevention; weapons policy
      
    Separation policies:
      Final paycheck: State-law final paycheck timelines (employees should know their rights)
      COBRA: General reference to COBRA availability upon separation
      Return of property: Obligation to return company property upon separation

HANDBOOK LEGAL RISKS — COMMON MISTAKES:
  
  ❌ Progressive discipline language that implies cause is required:
    "Employees will be given a verbal warning, then written warning, before termination"
    → This can be read as a promise that termination will only follow the specific steps;
      undermines at-will status; creates claims when the steps are not followed
    Fix: "The Company may use progressive discipline at its discretion, but is not required to do so"
    
  ❌ "Family feeling" or job security language:
    "We consider our employees family and are committed to long-term employment relationships"
    → Can be used as evidence of implied job security promise
    Fix: Remove this language from the handbook entirely
    
  ❌ Out-of-date leave policies:
    Arizona minimum wage and paid sick leave requirements change annually
    Handbooks not reviewed in 2+ years likely contain outdated rates or requirements
    
  ❌ Missing sexual harassment reporting procedure:
    Required by federal law to have a complaint procedure; failure = EEOC claim risk
    
  ❌ Overbroad social media policy:
    NLRA protects employees' right to discuss wages, hours, and working conditions
    A social media policy that prohibits discussing these topics is an unfair labor practice
    Fix: Narrow the policy to prohibit disclosing trade secrets and confidential business information
```

## Output Format

```markdown
# Employee Handbook Compliance Review — [Entity]
**Reviewed by:** Dr. Lewis | **Date:** [Date] | **State(s):** [AZ/UT/other]
**Last reviewed:** [Date or "Not previously reviewed"] | **Handbook version:** [Date of current handbook]

---

## Compliance Status

| Policy Area | Status | Issue | Action |
|-------------|--------|-------|--------|
| At-will statement | ✅ / ❌ / ⚠️ | [Issue] | [Required fix] |
| Anti-harassment / EEO | ✅ / ❌ | — / [Missing reporting procedure] | [Fix] |
| AZ minimum wage ($14.70/hr, 2026) | ✅ / ❌ | [Outdated rate: $14.35] | Update rate |
| AZ paid sick leave (ESTA) | ✅ / ❌ | [No ESTA policy] | Add ESTA policy |
| Progressive discipline implied contract | ✅ / ❌ | ["Will be terminated only for cause"] | Remove/modify |
| Social media NLRA compliance | ✅ / ❚⚠️ | [Overbroad prohibition] | Narrow policy |
| HIPAA workforce obligations (Allevio) | ✅ / ❌ | [No HIPAA policy] | Add HIPAA section |

---

## Required Updates

| Priority | Update | Due | Owner |
|---------|--------|-----|-------|
| 🔴 | Remove implied cause language — creates termination claims | Immediately | Dr. Lewis |
| 🔴 | Update AZ minimum wage to $14.70/hr | By February 1 | Dr. Lewis |
| 🟡 | Add ESTA paid sick leave policy | By April 1 | Dr. Lewis |
| 🟡 | Narrow social media policy for NLRA compliance | By April 1 | Dr. Lewis |

---

## Employee Re-Acknowledgment Required?

**[Yes / No]** — [If material changes were made, employees must sign an updated acknowledgment form]
**Distribution method:** [Email + SharePoint / Paper / HRIS system]
```

## Output Contract
- Annual review is mandatory — Arizona's minimum wage adjusts annually; state leave laws change; federal case law evolves; a handbook that is not reviewed annually is silently becoming non-compliant; Dr. Lewis conducts a handbook review in January of each year as part of the annual compliance calendar; the goal is to begin each year with a handbook that is current, legally accurate, and consistently applied; the review takes 2-3 hours; the employment claims it prevents can cost $75K+
- Progressive discipline language is the most dangerous policy to get wrong — a handbook that contains an implied promise of progressive discipline before termination (warning → written warning → termination) can be enforced as a contractual limitation on the employer's at-will right to terminate; the company that terminates an employee for cause without following the handbook's progressive discipline steps may face a breach-of-implied-contract claim even in an at-will state; Dr. Lewis specifically checks all disciplinary and termination sections for language that implies a required sequence of steps before termination
- After any material handbook update, employees must re-acknowledge — if the handbook is materially updated (new policies added; existing policies changed), the employees must sign a new acknowledgment form confirming they received and read the updated handbook; the acknowledgment is what makes the handbook enforceable; a handbook that employees never acknowledged is legally weaker; Dr. Lewis issues a re-acknowledgment when material changes are made and tracks completion (every active employee must acknowledge)
- HITL required: Dr. Lewis reviews; employment counsel for any significant policy changes or when a new policy area is being added for the first time; CEO approves the final handbook before distribution; Dr. Lewis distributes the acknowledgment form and tracks completion; Matt Mathison is briefed on any significant policy changes that affect executive compensation or benefits; Dr. Lewis does not make legal representations about handbook compliance without employment counsel's review for any significant legal question

## System Dependencies
- **Reads from:** Current handbook (all pages); state employment law tracker (legal-employment-law-tracker — current minimum wage; leave requirements; new laws); prior EPLI claims (any claims that revealed handbook gaps); Arizona ESTA current requirements (adjusted annually); NLRA guidance on social media policies; employment counsel guidance on industry-specific policies (HIPAA for Allevio; OSHA for HIVE)
- **Writes to:** Updated handbook (SharePoint/HR/<Company>/Handbook/[Year]_Handbook.pdf); acknowledgment form (SharePoint/HR/<Company>/Handbook/[Year]_HandbookAcknowledgment.pdf); acknowledgment tracking log (who has signed; who has not); compliance review memo (documenting what was reviewed and what was changed)
- **HITL Required:** Dr. Lewis reviews; employment counsel for significant policy changes; CEO approves and signs off on the final handbook; Dr. Lewis distributes and tracks acknowledgments; Matt Mathison informed of any significant policy changes; Dr. Lewis does not publish a handbook without CEO approval; Dr. Lewis does not provide legal opinions on handbook compliance — employment counsel advises on legally gray areas

## Test Cases
1. **Golden path:** Annual January handbook review for Allevio → Dr. Lewis reviews: At-will statement: ✅ Present and correct; Anti-harassment: ✅ Reporting procedure included; AZ minimum wage: ❌ Handbook says $14.35 (last year's rate); current is $14.70 — update required; AZ ESTA paid sick leave: ✅ Policy included; accrual rates correct; Progressive discipline: ⚠️ Section says "typically, employees will receive a warning before termination" — modify to "The Company may, at its discretion, use progressive discipline"; HIPAA workforce obligations: ✅ Section included; Social media: ✅ Narrowly drafted; NLRA-compliant; Recommended changes: 2 (minimum wage update; progressive discipline language); CEO approves; updated handbook distributed; all Allevio employees sign acknowledgment within 30 days; acknowledgment log complete
2. **Edge case:** HIVE's handbook has not been reviewed since 2023 — Dr. Lewis identifies 5 substantive gaps: (1) AZ minimum wage outdated (HIVE has no AZ employees, but the handbook says "Arizona minimum wage" — remove or specify Utah applies); (2) No OSHA field safety section (HIVE has oil and gas field operations; OSHA compliance section is required and currently absent); (3) Drug testing policy: mentions random testing but Utah O&G random testing requirements should be specifically cited; (4) Progressive discipline: explicit "for cause" language — major risk; (5) No remote work policy (added during COVID; never formalized); Employment counsel engaged to draft the OSHA safety section and correct the progressive discipline language; other changes made by Dr. Lewis; CEO approves; all HIVE employees re-acknowledge the updated handbook
3. **Adversarial:** During an employment claim defense, the plaintiff's attorney argues that Allevio's handbook created an implied promise of continued employment because it states "we are committed to a long-term employment relationship with our employees" → Dr. Lewis immediately instructs litigation counsel: "This language was in the handbook when the plaintiff was hired; it is the operative version. Our defense position: this language expresses an aspiration, not a contract promise; it appears immediately after the at-will disclaimer; Arizona courts have held that aspirational language does not override a clear at-will statement. However, we need to remove this language from the current handbook immediately — it is a risk for every other employee and every future claim." Handbook updated during the pending litigation; language removed; re-acknowledgment distributed to all current employees; prior version preserved for the current claim's defense

## Audit Log
All handbook versions retained by year. Annual review records retained (what was reviewed; what was changed; date). Acknowledgment forms retained by employee and year (as part of the employment record). Employment counsel advice retained. CEO approval records retained. Any employment claims that cited handbook provisions retained with the specific provision at issue.

## Deprecation
Retire when each portfolio company has a dedicated HR function with employment counsel on retainer who conducts the annual handbook review — with Dr. Lewis reviewing the handbook for executive-level policy consistency and Matt Mathison approving material compensation or benefits policy changes.
