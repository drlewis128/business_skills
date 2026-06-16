---
name: hr-leave-management
description: "Manage employee leave requests and compliance. Use when the user says 'FMLA', 'medical leave', 'family leave', 'ADA leave', 'leave of absence', 'maternity leave', 'paternity leave', 'parental leave', 'disability leave', 'leave request', 'leave management', 'intermittent leave', 'extended absence', 'state leave law', 'leave entitlement', 'pregnancy leave', 'bereavement leave', or 'military leave'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <FMLA|ADA|state|military|parental|bereavement>] [--employee <name>] [--state <AZ|UT|CO|TX>]"
---

# HR Leave Management

Manage employee leave requests at MBL portfolio companies — FMLA, ADA accommodation leave, state leave laws, military leave, and company-provided leave. Leave management is one of the highest-compliance-risk areas of HR: failure to notify an employee of FMLA eligibility, failure to engage in the ADA interactive process, or retaliation for taking protected leave all generate significant legal exposure. The standard is proactive: when an employee indicates they may need time off for a qualifying reason, Dr. Lewis takes the initiative to notify them of their rights rather than waiting for them to ask.

## When to Use
- An employee requests medical leave or extended time off
- A manager reports an employee has been absent for an extended period
- An employee indicates they or a family member has a serious health condition
- A pregnancy, birth, or adoption situation is raised
- An employee's regular absences may qualify as FMLA intermittent leave
- Military service leave is requested
- An ADA accommodation involves modified schedule or reduced hours (leave as accommodation)

## Leave Management Framework

```
Leave types — federal and state:

FMLA (Federal — Family and Medical Leave Act):
  Who qualifies: Employee worked for employer 12+ months AND 1,250+ hours in prior year
  Employer threshold: 50+ employees within 75-mile radius of worksite
  Entitlement: 12 weeks unpaid, job-protected leave per year
  Qualifying reasons:
    - Serious health condition of employee or immediate family (spouse, child, parent)
    - Birth, adoption, or foster placement of a child
    - Qualifying exigency for military family member
    - Care for covered servicemember with serious injury/illness (up to 26 weeks)
  Key rules:
    - Leave can be intermittent (reduced schedule or individual days) for medical necessity
    - Employer must notify employee of FMLA eligibility within 5 business days of learning
      of a potentially qualifying reason — this is mandatory, not optional
    - Employer may require substitution of accrued PTO concurrent with FMLA
    - Position restoration: same or equivalent position upon return
    - Health benefits continue during FMLA at same terms
  Arizona/Utah/Texas: No state FMLA supplement; federal only
  Colorado: FAMLI (Family and Medical Leave Insurance Act) — state-run paid leave program
    - Effective 2024; up to 12 weeks paid leave (16 weeks for pregnancy + bonding)
    - Applies to employers with 10+ employees
    - Funded by premium contributions (employer + employee share)

ADA Leave as Accommodation:
  When FMLA is exhausted or employee doesn't qualify: ADA may require additional leave
  as a reasonable accommodation for a disability
  Interactive process required: employer and employee discuss what accommodation is needed
  Undue hardship standard: only defense to providing accommodation
  Indefinite leave is generally not a reasonable accommodation; time-limited additional 
  leave often is (courts have found 1-6 additional weeks reasonable in various cases)

Military Leave (USERRA):
  Applies to all employers (no size threshold)
  Returning veterans: restoration to position or like seniority, status, pay, and benefits
  Leave is unpaid but health benefits may be continued at full cost for up to 24 months
  Cannot discriminate against employees for military service obligations

State-specific leave (current portfolio states):
  Arizona: AZ Earned Paid Sick Time Act (all employers) — accrues at 1 hr/30 hrs worked;
           can be used for employee or family member illness or public health emergency
           No state family/medical leave beyond EPSLA
  Colorado: FAMLI (10+ employees) — 2024; paid leave; funded by premiums
            Colorado HFWA: expanded paid sick leave (all employers)
  Utah: No state paid leave; federal FMLA only
  Texas: No state paid leave; federal FMLA only

Company-provided leave at MBL default:
  Bereavement: 3 days paid (immediate family); 1 day (extended family); flexible for significant travel
  Jury duty: Full pay for duration (up to 2 weeks); beyond 2 weeks — coordinate with Matt Mathison
  Parental: Company-provided beyond FMLA/state — establish per company; recommend at least 2 weeks paid
```

## Output Format

```markdown
# Leave Management — <Employee Name>
**Company:** <Entity> | **State:** [AZ / UT / CO / TX]
**Leave type requested:** [FMLA / ADA / Military / State / Parental / Bereavement / Other]
**Date request received:** [Date] | **Case manager:** Dr. John Lewis
**Employee eligible for FMLA:** [Yes — 12+ months, 1,250+ hours / No — explain / Check employer threshold]

---

## Eligibility Determination

**Company employee count (within 75 miles):** [N — Is FMLA triggered? Yes (50+) / No (<50)]

**FMLA eligibility check:**
- Employment duration: [Months] → ✅ 12+ months / ❌ Less than 12 months
- Hours worked in prior 12 months: [Hrs] → ✅ 1,250+ / ❌ Less than 1,250
- **FMLA eligible:** ✅ Yes / ❌ No

**Colorado FAMLI check (if applicable):**
- Company 10+ employees in CO? [Yes / No]
- FAMLI eligible? [Yes / No]

---

## FMLA Notice Requirements (mandatory within 5 business days)

If employee may qualify:
- [ ] **Eligibility Notice** sent: [Date] — tells employee whether they are eligible
- [ ] **Rights and Responsibilities Notice** sent: [Date] — tells employee their rights
- [ ] **Designation Notice** sent: [Date] — designates time as FMLA once confirmed

**Medical Certification requested:** [Yes — due date: [Date, 15 calendar days from request] / No]
**Medical Certification received:** ✅ / 🔴 Pending / ❌ Not received — follow up

---

## Leave Plan

**Leave start date:** [Date]
**Estimated return date:** [Date or "Indefinite — periodic recertification required"]
**Leave format:** [Continuous / Intermittent — [schedule if known] / Reduced schedule]
**FMLA weeks used:** [N] of 12 available (rolling 12-month basis)
**FMLA weeks remaining:** [12 - N]
**PTO substitution:** [Yes — company requires concurrent PTO use / No]
**Health benefits during leave:** [Continue at same terms — employee portion still owed]

**State leave coordination:**
- Colorado FAMLI: [Benefit period filed: [Date] / Not applicable]
- AZ Sick Leave concurrent? [Yes / No]

---

## Return to Work

**Return date:** [Date]
**Position:** Same position / Equivalent position — [title, same pay and benefits]
**Medical clearance required:** [Yes — fitness for duty certification required / No]
**Accommodation on return:** [None / ADA accommodation — [description]]

**If FMLA exhausted and employee not returning:**
- ADA interactive process initiated: [Yes / No — not a disability situation]
- Additional leave considered as ADA accommodation: [Yes — [amount] / No — undue hardship or not disability]
- If termination is considered: employment attorney review required before action

---

## ADA Accommodation Leave (if FMLA exhausted or not eligible)

**Disability determination:** [Yes — employee has condition that substantially limits major life activity / No]
**Interactive process initiated:** [Date]
**Accommodation requested by employee:** [Description]
**Accommodation proposed by employer:** [Description]
**Undue hardship analysis:** [Required if accommodation is denied]
**Accommodation agreed:** [Yes — document agreement / No — undue hardship documented with attorney]

---

## Leave Record Summary

| Event | Date | Notes |
|-------|------|-------|
| Leave request received | [Date] | |
| FMLA eligibility notice sent | [Date] | |
| Medical certification requested | [Date] | |
| Medical certification received | [Date] | |
| FMLA designation issued | [Date] | |
| Leave begins | [Date] | |
| Expected return | [Date] | |
| Actual return | [Date] | |
| FMLA weeks charged | [N] | |
```

## Output Contract
- FMLA notice is proactive and mandatory — when an employee indicates they need leave for a potentially qualifying reason (a serious health condition of themselves or a family member, a new child, a military family situation), the employer is legally required to notify them of their FMLA rights within 5 business days; waiting for the employee to ask about FMLA is not compliant; an employer who fails to provide FMLA notice when it should have — and the employee suffers a consequence — may be liable for FMLA interference even if the employee would have qualified
- Designation notice is required — once the employer has enough information to determine FMLA applies, it must designate the time as FMLA retroactively if needed; telling an employee "we'll see if this qualifies" without designating is not compliant; the employer designates, not the employee; employees cannot volunteer to waive FMLA designation
- Position restoration is non-negotiable during protected leave — an employee on FMLA leave cannot be terminated for the absence or have their position eliminated specifically because they took leave; if a legitimate RIF happens while an employee is on leave, they are treated the same as if they were present; terminating someone on FMLA leave requires significant documentation of a non-leave business reason and employment attorney review before action
- ADA interactive process is required after FMLA exhaustion — "your FMLA is up, you're terminated" is a legally dangerous approach without first determining whether the employee has a disability requiring ADA accommodation; the interactive process is a legal requirement; Dr. Lewis initiates it before making any termination decision following FMLA exhaustion; the conversation: "Your FMLA leave has ended. I'd like to talk with you about your current situation and what you need to return to work."
- HITL required: Dr. Lewis manages all FMLA administration; Matt Mathison notified for any leave situation involving potential termination or significant coverage disruption; employment attorney consulted before terminating any employee within 30 days of FMLA or during ADA interactive process; Colorado FAMLI claims filed with state; military leave situations reviewed with attorney for USERRA compliance

## System Dependencies
- **Reads from:** Employee records (hire date, hours worked), time/attendance system, medical certifications, state leave program (Colorado FAMLI portal)
- **Writes to:** Leave case file (SharePoint/HR/<Company>/Leave Management/); FMLA notices and designation letters; return-to-work documentation; ADA interactive process records; Colorado FAMLI claim filings
- **HITL Required:** Dr. Lewis manages all leave; FMLA designation decisions by Dr. Lewis; ADA interactive process managed by Dr. Lewis; termination after FMLA exhaustion requires attorney; Matt Mathison notified when leave creates operational disruption or leads to termination consideration

## Test Cases
1. **Golden path:** Allevio front desk coordinator (2 years, full time) — calls in Monday saying her mother had a stroke and she needs to take care of her → Dr. Lewis notifies FMLA eligibility within 5 business days: employee qualifies (24 months, full time); leaves of absence for care of parent with serious health condition is FMLA qualifying; Eligibility Notice + Rights Notice sent; medical certification requested from employee's physician (due in 15 days); physician certifies: "patient requires ongoing care, family assistance needed for 6-8 weeks"; FMLA designated; employee uses concurrent PTO (first 2 weeks) per company policy; 4 weeks remain as unpaid FMLA; at week 7, employee requests 1 additional week (not yet at 12 weeks); granted — 7 of 12 weeks used; returns with medical clearance; same position restored; leave closed
2. **Edge case:** An employee has used all 12 FMLA weeks and cannot return — they have MS (a disability) and need an additional 6 weeks of leave → FMLA is exhausted; ADA now governs; Dr. Lewis initiates interactive process: "I understand your FMLA leave has ended. I want to discuss your situation and what you need to return to work." Employee requests 6 more weeks; Dr. Lewis consults employment attorney; attorney advises: 6 additional weeks is likely a reasonable accommodation for MS absent significant operational hardship (only 1 person in the role); approve additional 6-week ADA accommodation leave; document the interactive process in writing; if at the end of 6 weeks the employee still cannot return, reinitiate the interactive process rather than automatically terminating
3. **Adversarial:** A manager says "she took 12 weeks of FMLA, still won't come back — just terminate her" → Cannot proceed without ADA interactive process; respond: "Before we can make a termination decision, we're legally required to determine if she has a disability and if there's an accommodation that would let her return. That's not optional — it's the ADA interactive process. I'll reach out to her this week to have that conversation. If she can't return even with accommodation or if accommodation would be an undue hardship, we can make a termination decision at that point, but only after we've documented the process. Employment attorney will review before we act."

## Audit Log
All leave cases retained by employee and date — confidential. FMLA notices and designation letters retained. Medical certifications retained in confidential file separate from personnel file. ADA interactive process documentation retained. Return-to-work records retained. Colorado FAMLI filings retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers trained in FMLA and ADA administration, with leave management software (FMLA case tracking, designation notifications, certification tracking) and employment attorney on retainer for leave-related decisions.
