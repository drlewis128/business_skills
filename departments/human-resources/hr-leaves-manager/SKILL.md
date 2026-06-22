---
name: hr-leaves-manager
description: "Manage employee leaves of absence for MBL Partners portfolio companies. Use when the user says 'FMLA', 'leave of absence', 'medical leave', 'parental leave', 'maternity leave', 'paternity leave', 'family leave', 'ADA leave', 'accommodation', 'reasonable accommodation', 'disability leave', 'short-term disability', 'long-term disability', 'sick leave', 'AZ sick time', 'UT sick leave', 'bereavement leave', 'jury duty', 'military leave', 'USERRA', 'leave request', 'employee leave', 'leave approval', 'leave documentation', 'intermittent leave', 'continuous leave', 'reduced schedule leave', 'return to work', 'fitness for duty', 'leave expiration', 'leave exhausted', or 'extended absence'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--employee <name>] [--entity <mbl|allevio|hive|column6>] [--type <fmla|ada|az-sick|bereavement|military|personal>] [--action <request|approve|track|return>]"
---

# HR Leaves Manager

Manage all employee leaves of absence — FMLA, ADA accommodations, state sick leave, military leave, and bereavement — ensuring legal compliance, proper documentation, and seamless return-to-work. Leave management is an area where legal obligations are complex and employee-specific; mishandling a leave request creates liability far larger than the cost of correctly managing the leave.

## When to Use
- An employee requests a leave of absence of any type
- A medical condition creates an accommodation request
- An employee is returning from leave and return-to-work needs to be managed
- AZ or UT state sick leave obligations need to be confirmed

## Leave Management Framework

```
LEAVE TYPES AND ELIGIBILITY:

  FMLA (Federal Family and Medical Leave Act):
    Eligibility: ≥12 months employed AND ≥1,250 hours in past 12 months AND entity has ≥50 employees
    Note: most MBL portfolio entities have <50 employees; FMLA may NOT apply
    When it does apply: 12 weeks of unpaid, job-protected leave in a 12-month period
    Qualifying reasons: serious health condition (employee or immediate family); birth/adoption; 
      qualifying military exigency
    Intermittent or reduced schedule leave: also covered (complex to administer)
    Notice: Dr. Lewis designates FMLA within 5 business days of receiving sufficient information
    Cannot waive FMLA by mutual agreement — it is a federal right
    
  ADA ACCOMMODATIONS (ADA: ≥15 employees; applies to all MBL entities except smallest):
    Qualifying disability: physical or mental impairment that substantially limits a major life activity
    Interactive process: required — cannot just deny without engaging
    Steps:
      1. Employee requests accommodation (or observable need is apparent)
      2. Dr. Lewis acknowledges and initiates interactive process
      3. Request supporting documentation (medical certification — 15-day response window)
      4. Identify whether reasonable accommodation exists without undue hardship
      5. Implement accommodation or document why undue hardship precludes it
    Accommodation examples: modified schedule; remote work; equipment modification; leave extension
    Leave as ADA accommodation: may extend beyond FMLA expiration (common complexity)
    Allevio: clinical roles may have essential functions (direct patient contact) that limit accommodations
    
  AZ EARNED SICK TIME (Prop 206 — all AZ employers):
    Accrual: 1 hour per 30 hours worked; max 40 hours/year (small business <15 = 24 hours paid; 
      ≥15 employees = 40 hours paid)
    Allevio (AZ-based): 40 hours paid sick time per year; must be available for use
    Use: employee illness; family member illness; domestic violence; public health emergency
    No prior approval required for foreseeable absences with 5-day notice
    Cannot retaliate for sick time use
    
  UT SICK LEAVE:
    No state-mandated paid sick leave in Utah
    HIVE provides sick leave per company policy; Dr. Lewis ensures policy is documented and consistent
    Recommend: minimum 24 hours/year to match market (hr-benefits-manager)
    
  BEREAVEMENT LEAVE:
    MBL policy: 3 days paid for immediate family; 1 day for extended family
    Immediate family: spouse/partner; parent; child; sibling; grandparent; in-law
    Extended family: aunt/uncle; cousin; close friend (with CEO + Dr. Lewis approval)
    No state requirement in AZ or UT for bereavement; MBL policy is above minimum
    
  MILITARY LEAVE (USERRA):
    Federal law; applies regardless of entity size
    Up to 5 years cumulative absence for military service
    Job protection upon return; cannot be discriminated against for military status
    Health continuation during leave (entity pays same portion as active employees)
    
  PERSONAL LEAVE:
    Not required by law; per company policy
    MBL standard: up to 30 days unpaid personal leave with entity CEO + Dr. Lewis approval
    Position is held; coverage planned; no guarantee if business need changes significantly
    
LEAVE PROCESS:
  Step 1: Employee requests (verbal or written)
  Step 2: Dr. Lewis determines applicable leave type(s) (can overlap — FMLA + ADA simultaneously)
  Step 3: Dr. Lewis provides notice of rights and certification request (within 5 days for FMLA)
  Step 4: Employee provides medical certification (within 15 business days)
  Step 5: Dr. Lewis approves and tracks leave; notifies manager (without diagnosis — just expected duration)
  Step 6: Return-to-work: confirm return date; fitness-for-duty clearance if required (serious health condition)
  Step 7: Reinstatement: same or equivalent position; same pay; same benefits (FMLA)
  
MANAGER COMMUNICATION:
  Tell manager: employee is on approved leave; expected return date; who covers
  Do NOT tell manager: diagnosis; details of health condition; accommodation specifics
  HIPAA (Allevio + general medical privacy): health information is confidential; Dr. Lewis retains; 
    managers get only operational information (absence duration; coverage needs)
```

## Output Format

```markdown
# Leave Record — [Employee Name] | [Entity] — [Leave Type]
**Start date:** [Date] | **Expected return:** [Date] | **Duration:** [X weeks]
**Leave type:** FMLA / ADA / AZ Sick Time / Bereavement / Military / Personal
**FMLA eligible:** ☐ Yes (entity ≥50 FTE) / ☐ No (entity <50 FTE)

---

## Documentation Checklist
- [ ] Request received: [Date]
- [ ] Rights notice provided: [Date] (within 5 business days for FMLA)
- [ ] Medical certification requested: [Date] | Due from employee: [Date + 15 business days]
- [ ] Certification received and sufficient: ☐ Yes / ☐ Incomplete — follow-up needed
- [ ] Leave approved: [Date] | Approved by: Dr. Lewis

---

## Manager Notification
**Communicated:** [Date] — Duration: [X weeks]; Coverage: [Plan]; Return: [Expected date]
**Disclosed:** Expected return only (NO diagnosis; NO medical details)

---

## Return-to-Work
- [ ] Return date confirmed: [Date]
- [ ] Fitness-for-duty clearance: ☐ Required (FMLA serious health condition) / ☐ N/A
- [ ] Position: Same / Equivalent (FMLA reinstatement right preserved)
- [ ] ADA accommodation ongoing: ☐ Yes — [Accommodation] / ☐ No
```

## Output Contract
- Leave type designation happens quickly — an employee who mentions a medical condition, family member illness, or disability when explaining an absence triggers legal obligations; Dr. Lewis designates the appropriate leave type within 5 business days of receiving sufficient information; waiting for the employee to specifically invoke "FMLA" is not required — if Dr. Lewis has enough information to know a qualifying reason exists, designation must occur; failure to designate FMLA when eligible is an FMLA violation
- Health information stays with Dr. Lewis — managers receive duration and coverage information only; a manager who asks "what's wrong with them?" receives: "That's confidential medical information. I can tell you the expected duration and how we're planning coverage."; an entity CEO who needs to know for business planning receives the same limited information unless the employee has consented to disclosure; this applies at every entity including Allevio where HIPAA adds an additional confidentiality layer
- ADA interactive process cannot be terminated unilaterally — a "no" to an accommodation request without engaging in the interactive process is an ADA violation; Dr. Lewis ensures the interactive process is documented (dates; what was discussed; what was considered; why a specific accommodation was approved or declined with documented undue hardship rationale); "we don't do that here" is not an undue hardship — undue hardship requires evidence of significant difficulty or expense
- HITL required: leave type designation → Dr. Lewis determines within 5 business days; ADA interactive process → Dr. Lewis + entity CEO; accommodation decision → Dr. Lewis + entity CEO; FMLA designation for entity ≥50 FTE → Dr. Lewis confirms entity size; return-to-work fitness clearance → Dr. Lewis reviews (not manager); military leave USERRA rights → Dr. Lewis confirms compliance; leave extension beyond FMLA → Dr. Lewis + entity CEO + legal counsel

## System Dependencies
- **Reads from:** hr-benefits-manager (COBRA during leave; benefits continuation rules); hr-compliance-calendar (AZ sick time; FMLA deadlines; USERRA); hr-onboarding-planner (leave accrual start); legal-employment-law-tracker (ADA; FMLA; USERRA; AZ Prop 206; UT sick leave)
- **Writes to:** Leave record (SharePoint → HR → Leaves → [Entity] → [Employee]); manager notification (operational details only); benefits continuation instruction to carrier; payroll adjustment (unpaid leave; salary continuation if applicable); return-to-work record; Dr. Lewis leave tracking log
- **HITL Required:** Leave type → Dr. Lewis within 5 days; ADA process → Dr. Lewis + CEO; accommodation decision → Dr. Lewis + CEO; FMLA designation → Dr. Lewis; return-to-work → Dr. Lewis reviews; military USERRA → Dr. Lewis confirms; leave extension → Dr. Lewis + CEO + legal

## Test Cases
1. **Golden path:** Allevio Care Coordinator requests 6 weeks medical leave (surgery + recovery). Entity has 22 employees — no FMLA. Dr. Lewis designates: ADA leave (disability accommodation) + AZ Earned Sick Time (40 hours). Medical certification requested within 5 days. Received 10 days later. ADA accommodation: 6-week leave approved (entity can cover clinically). Manager notified: "Jane will be out approximately 6 weeks starting Monday. Here's our coverage plan." Return date confirmed week 5. Fitness-for-duty clearance requested (ADA serious impairment). Cleared. Return on schedule.
2. **Edge case:** Employee requests bereavement leave for a close friend (not on standard immediate family list) → Dr. Lewis: "Our policy covers immediate and extended family. A close friend is outside policy, but you can request an exception. I'll bring it to the entity CEO. Given the circumstances, I recommend we approve 1 day paid — it's the right thing to do and it's consistent with the 'R' in THRIVE. If you need more time, we can discuss using PTO. I'll have an answer for you within 24 hours."
3. **Adversarial:** Manager says "we need to know what's wrong with them — we can't plan without knowing the diagnosis" → Dr. Lewis: "I understand the operational pressure. I can't share the diagnosis — that's protected health information, and sharing it would violate the employee's medical privacy and expose the entity to legal risk. What I can give you is the expected return date, the functional limitations (if any, such as 'light duty only' or 'no lifting over 20 lbs'), and a coverage plan. That's everything you need to manage the team. Let's focus on the coverage plan — I'll have that for you today."

## Audit Log
All leave records retained for 3 years (FMLA); for the duration of employment + 1 year (ADA). Medical certifications retained separately (confidential medical file — not personnel file). ADA interactive process records retained. Return-to-work documentation retained. Manager notification records retained (operational details only — no medical). AZ sick time accrual and usage records retained 4 years (Prop 206).

## Deprecation
FMLA eligibility thresholds reviewed if federal law changes. ADA accommodation standards reviewed every 2 years. AZ sick time accrual rules updated if Prop 206 changes. UT leave policy reviewed if UT adopts state-mandated sick leave.
