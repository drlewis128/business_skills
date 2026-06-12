---
name: employment-law-advisor
description: "Navigate employment law issues for MBL portfolio companies. Use when the user says 'employment law', 'termination', 'how to fire someone', 'at-will employment', 'FMLA', 'ADA', 'discrimination claim', 'wrongful termination', 'employee complaint', 'wage and hour', 'overtime', 'non-compete', 'offer letter', 'employment agreement', or 'HR legal question'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--topic <termination|discrimination|wage-hour|FMLA|ADA|non-compete|offer-letter>] [--state <AZ|UT|CA|all>]"
---

# Employment Law Advisor

Navigate employment law issues for MBL portfolio companies. Employment law is one of the highest-frequency legal risk areas for operating companies — wrongful termination, wage and hour violations, discrimination claims, and FMLA mishandling are the most common sources of employee litigation. This skill provides guidance on employment law issues, identifies when outside counsel must be engaged, and ensures HITL approval for all termination and discipline decisions.

## When to Use
- Pre-termination review — is this legally sound?
- Employee complaint or HR dispute requiring legal guidance
- FMLA, ADA, or leave of absence handling
- Wage and hour question (overtime, exempt vs. non-exempt, final paycheck)
- Offer letter and employment agreement review
- Non-compete and non-solicitation drafting or enforcement

## CRITICAL: HITL Required for ALL Terminations

```
BEFORE FIRING ANY EMPLOYEE — STOP AND CHECK:
  ✅ Is the employee in a protected class? (Age 40+, pregnancy, disability, 
     national origin, race, religion, sex — all are protected under federal law)
  ✅ Has the employee recently filed a complaint, taken protected leave, 
     or raised a legal issue? (Retaliation claims add automatic risk)
  ✅ Is the reason documented? (Verbal performance issues = no documentation = high risk)
  ✅ Has the process been followed consistently for similarly situated employees?
  ✅ Is a severance offer appropriate? (Reduces litigation risk; requires ADEA waiver if 40+)

ENGAGE OUTSIDE EMPLOYMENT COUNSEL before termination if:
  - Employee is 40+ (ADEA)
  - Employee is on FMLA or ADA accommodation
  - Employee recently filed an HR complaint or discrimination claim
  - Employee is in California (CA is extremely employee-protective)
  - Severance is over $25K
  - There is ANY ambiguity about the legal risk
```

## Employment Law Landscape by State

| State | Key Issues | Risk Level |
|-------|-----------|-----------|
| **Arizona** | At-will; no state non-compete ban; minimum wage $14.35/hr (2024); final paycheck due at next regular pay period for voluntary resignation, within 7 working days for involuntary | Low-Medium |
| **Utah** | At-will; non-competes enforceable (max 1 year); minimum wage $7.25/hr; primary HIVE Partners state | Low-Medium |
| **California** | Non-competes void; PAGA (Private Attorneys General Act) creates massive wage/hour exposure; strict final paycheck rules (same day if fired); extremely employee-protective | Very High |

## Output Format

```markdown
# Employment Law Issue Assessment — <Entity>
**Date:** <date> | **Issue type:** Termination / Discrimination / FMLA / Wage-Hour / Other
**Employee situation:** <brief description — no names in this document>
**Entity:** <name>
**State:** <AZ / UT / CA>
**Prepared by:** Dr. John Lewis

---

## Issue Overview

**Situation:** <factual summary>
**Immediate risk:** Low / Medium / High
**Outside counsel required:** Yes / No / Assess further

---

## Legal Analysis

### Applicable Law
<Key federal and state laws that apply>

### Risk Assessment

| Risk Factor | Present? | Risk Added |
|-----------|---------|----------|
| Protected class member | Yes / No | If yes: High |
| Recent complaint or protected activity | Yes / No | If yes: Retaliation risk — High |
| Leave of absence (FMLA/ADA) | Yes / No | If yes: High — engage counsel |
| Documentation of performance issues | Yes / No | If no: Medium |
| Consistent treatment vs. similarly situated employees | Yes / No | If no: Medium |
| California jurisdiction | Yes / No | If yes: Elevated by 2x |

**Overall termination risk:** Low / Medium / High / Very High

---

## FMLA Analysis (If Leave Issue)

| Factor | Answer |
|--------|--------|
| Employer covered? (50+ employees in 75-mile radius) | Yes / No |
| Employee eligible? (12 months tenure, 1,250 hours) | Yes / No |
| Qualifying reason? | Yes / No |
| FMLA leave balance remaining? | <hours/days> |
| ADA interactive process required? | Yes / No (if disability underlies condition) |

---

## Recommended Actions

| Action | Priority | Owner | Due |
|--------|---------|-------|-----|
| Engage employment counsel before proceeding | Critical (if high risk) | Dr. Lewis | Today |
| Document performance issues going forward | High | HR manager | Immediately |
| Review prior discipline history for consistency | High | HR | Before any action |
| Assess severance offer | Medium | Dr. Lewis + outside counsel | Before termination |

---

## Final Paycheck Rules (If Termination Proceeding)

| State | Involuntary Termination | Voluntary Resignation |
|-------|------------------------|---------------------|
| Arizona | Within 7 working days (or next payday, whichever is earlier) | Next regular pay period |
| Utah | Within 24 hours of demand (or next regular payday) | Next regular pay period |
| California | Same day as termination | Within 72 hours (or same day if 72 hr notice given) |

**Include in final paycheck:** All earned wages + accrued but unused vacation/PTO (per company policy and state law)
```

## Output Contract
- HITL required for every termination — no employee should be terminated without Dr. Lewis review for portfolio companies
- Protected class status always assessed — the most common termination litigation trigger is failure to identify and manage protected class risk
- FMLA and ADA always checked when leave or disability is involved — both create independent legal obligations
- California always flagged as elevated risk — any California employees require California-specific employment counsel
- Outside counsel always engaged for complex situations: protected class + recent complaint, FMLA/ADA, CA jurisdiction
- Retaliation risk always assessed — terminating an employee who recently raised a complaint is presumptively retaliatory and very difficult to defend

## System Dependencies
- **Reads from:** Employee personnel file, prior discipline records, FMLA/leave records, complaint history (provided by HR)
- **Writes to:** Employment law issue assessment (for Dr. Lewis and outside counsel)
- **HITL Required:** Dr. Lewis reviews all termination decisions; outside employment counsel for high-risk matters; HR manager executes; Matt Mathison informed of significant employment claims

## Test Cases
1. **Golden path:** Pre-termination review for an underperforming employee → employee is 42 years old (ADEA risk), no prior written warnings (documentation gap), no protected activity or recent complaints; recommendation: issue formal written warning now with performance improvement plan; terminate only if PIP fails and is documented; avoid termination today — risk is Medium-High without documentation
2. **Edge case:** Employee on FMLA leave is not performing and needs to be terminated → CANNOT terminate while on protected FMLA leave for the condition underlying the leave; must wait until leave ends; if performance issues predated leave request and are documented, proceed with PIP on return; engage employment counsel immediately
3. **Adversarial:** Manager wants to fire an employee "because they're not a culture fit" → "culture fit" is not a legally sound termination reason and is a proxies for discrimination claims; require documented, objective performance reasons; if the termination decision cannot survive the question "why this person vs. everyone else?" — don't proceed without counsel

## Audit Log
Employment issue assessments retained in confidential HR files. Termination documentation retained for 7 years. Severance agreements retained permanently.

## Deprecation
Retire when entity hires in-house HR counsel or General Counsel with employment law expertise, supplemented by a dedicated employment law firm on retainer.
