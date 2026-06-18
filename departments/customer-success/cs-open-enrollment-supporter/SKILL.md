---
name: cs-open-enrollment-supporter
description: "Manage open enrollment support for Allevio employer group customers. Use when the user says 'open enrollment', 'OE support', 'benefits open enrollment', 'enrollment season', 'Allevio open enrollment', 'OE preparation', 'open enrollment materials', 'enrollment kickoff', 'OE kickoff', 'benefits enrollment', 'employee enrollment', 'enrollment support', 'OE communications', 'enrollment materials', 'OE materials', 'help with open enrollment', 'enrollment guide', 'benefits fair', 'open enrollment meeting', 'OE meeting', 'enrollment period', 'annual enrollment', or 'benefits renewal and enrollment'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--account <employer group name>] [--plan-year <YYYY>] [--enrollment-dates <start to end>] [--action <plan|prepare|support|close>]"
---

# CS Open Enrollment Supporter

Manage open enrollment support for Allevio employer group customers — guiding the HR Director through the employer-side open enrollment process with the materials, communications, and logistical support they need to enroll their employees confidently and accurately. Open enrollment is the highest-stakes CS moment in the Allevio relationship; it is the moment when the employer's commitment becomes employee enrollment; a smooth open enrollment is remembered as a success story; a broken one becomes a renewal churn driver.

## When to Use
- 90 days before open enrollment start (begin OE planning)
- When an employer asks "what do we do for open enrollment?"
- After a plan change or renewal (new OE materials needed)
- When employee enrollment is below target (intervention during active OE)
- OE post-mortem (what worked; what to improve for next year)

## Open Enrollment Framework

```
OPEN ENROLLMENT TIMELINE:

  ALLEVIO PLAN YEAR CALENDARS:
    January 1 plan year: OE window typically October 1 – November 15
      Begin OE support: July 1 (90 days before OE window opens)
    July 1 plan year: OE window typically April 1 – May 15
      Begin OE support: January 1 (90 days before OE window opens)
  
  90 DAYS BEFORE OE WINDOW OPENS:
    □ OE kickoff call with HR Director (45 minutes):
        Confirm plan year dates and OE window
        Confirm any plan design changes from the renewal
        Identify new employees hired since last OE (census update)
        Identify any employees who will be waiving coverage this year
        Schedule the employee benefits meeting (if requested by the employer)
        Assign OE material delivery date: 30 days before OE window opens
    □ Update the census file: request updated employee roster from HR Director
    □ Plan design review: confirm all plan terms are finalized before OE materials are printed
    
  60 DAYS BEFORE OE WINDOW OPENS:
    □ OE material package delivered to HR Director:
        Summary of Benefits and Coverage (SBC) — one per plan option
        Employee enrollment guide: How to enroll; what to expect; key dates
        Frequently Asked Questions (FAQ) document:
          What does my deductible mean? What's covered? How do I find a doctor?
          Allevio-specific: How does the clinical care coordination work?
          How do I use the telehealth benefit?
        HR Director's OE Admin Guide: How to process employee elections in the system
        HIPAA notice (if required based on plan type)
    □ Review materials with HR Director before distribution:
        Confirm all plan details are accurate
        Confirm spelling of the HR Director's name and company name on all materials
        Confirm the date range is correct on every document
        HIPAA review: Dr. Lewis reviews all materials with member-facing information
          for HIPAA compliance before distribution
    □ Custom employee communication (if HR Director requests):
        Allevio will draft a benefits announcement email for the HR Director to send to employees
        "Your 2026 Benefits — Here's What You Need to Know"
        HR Director approves before sending
    
  30 DAYS BEFORE OE WINDOW OPENS:
    □ Confirm materials have been distributed to employees
    □ Confirm employee benefits meeting is scheduled (if applicable)
    □ Pre-enrollment check: Are all current-year enrollees in the system accurately?
      Any employees who were hired since last OE and not enrolled?
    □ Set up a dedicated OE support inbox or phone line:
        Allevio CS rep is primary contact for HR Director questions during OE
        Employees with plan questions are directed to Allevio member services
        
  DURING OPEN ENROLLMENT WINDOW:
    □ Weekly update to HR Director: "How many enrollments are in so far? Any issues?"
    □ Employee benefits meeting support (if requested):
        Allevio CS rep or clinical team rep attends (in-person or virtual)
        Presents: What your Allevio plan covers; how to use clinical care coordination;
          how to use telehealth; how to find a network provider
        HR Director leads; Allevio supports; employees ask questions
    □ HR Director issue response: Same-day for any HR Director question during OE
    □ Employee enrollment tracking: CS rep tracks enrollment % against the prior year
      Alert Dr. Lewis if enrollment is tracking below 75% of prior year with 2 weeks remaining
      
  OE CLOSE AND TRANSITION:
    □ Final enrollment count: Confirm with HR Director within 5 days of OE close
    □ Census file submission: Updated member census submitted to Allevio
      within 5 business days of OE close — this activates coverage on January 1 or July 1
    □ New member communication: All newly enrolled members receive a welcome package
      (Member ID card; benefit summary; how to access clinical care coordination)
    □ OE post-mortem (2 weeks after OE close):
        What questions came up most? → Update FAQ for next year
        Were there any enrollment issues? → What caused them?
        Was the HR Director satisfied with the process? → Pulse check within 14 days of OE close

  HIPAA COMPLIANCE DURING OE:
    □ Employee-facing materials: Do not include any individual health information
    □ Enrollment forms: Handled by the HR Director (HIPAA authorizes employer access to enrollment data)
    □ Clinical care coordination information: Describe the service generically in materials;
      do not include any examples of specific health conditions in marketing materials
    □ Dr. Lewis reviews all OE materials for HIPAA compliance before distribution
```

## Output Format

```markdown
# Open Enrollment Support Plan — [Employer Group] | [Plan Year]
**Plan year:** [Date] | **OE window:** [Start] – [End]
**CS rep:** [Name] | **OE kickoff date:** [Date]

---

## OE Timeline

| Milestone | Date | Status | Notes |
|-----------|------|--------|-------|
| OE kickoff call with HR Director | [Date -90] | ✅/⏳/❌ | |
| Census file updated | [Date -90] | ✅/⏳/❌ | |
| OE materials package delivered | [Date -60] | ✅/⏳/❌ | |
| Dr. Lewis HIPAA review complete | [Date -60] | ✅/⏳/❌ | |
| Materials distributed to employees | [Date -30] | ✅/⏳/❌ | |
| OE window opens | [Start date] | ✅/⏳/❌ | |
| Mid-OE check-in (75% enrollment target) | [Mid-date] | ✅/⏳/❌ | |
| OE window closes | [End date] | ✅/⏳/❌ | |
| Final census submitted | [Date +5] | ✅/⏳/❌ | |
| OE post-mortem | [Date +14] | ✅/⏳/❌ | |

---

## Enrollment Tracking

| Week | Enrolled so far | % of expected | Status |
|------|----------------|--------------|--------|
| Week 1 | [N] | [X]% | |
| Week 2 | [N] | [X]% | |

---

## OE Issues Log

| Issue | Date raised | Who raised it | Resolution | Status |
|-------|------------|--------------|-----------|--------|
| [Issue] | [Date] | HR Director / Employee | [Resolution] | ✅/⏳ |
```

## Output Contract
- HIPAA compliance is gate zero — no OE materials reach employees without Dr. Lewis's HIPAA review; the OE materials contain plan benefit descriptions, which may be generic, but they are also accompanied by enrollment forms and clinical service descriptions that must comply with HIPAA's restrictions on disclosure; Dr. Lewis reviews every Allevio OE material package before it is sent to the employer for distribution; a material that reaches an employee that has not been reviewed is a compliance failure
- 60-day delivery is non-negotiable — HR Directors need 60 days before OE opens to review materials, coordinate with payroll, and communicate with employees; late material delivery reduces enrollment rates and damages the relationship; if materials are not delivered 60 days before OE open, Dr. Lewis is notified immediately; if delivery will be more than 45 days before OE open, Dr. Lewis calls the HR Director personally to acknowledge the delay and set expectations
- Census accuracy is the foundation — an OE process built on an inaccurate census creates wrong member IDs, incorrect coverage, and billing errors on January 1 or July 1; Dr. Lewis requires that the census file be updated 90 days before OE and confirmed again within 5 business days of OE close; any discrepancy between the OE enrollment count and the census is resolved before coverage goes live
- HITL required: Dr. Lewis reviews all OE materials for HIPAA compliance before distribution; if enrollment tracking falls below 75% of prior year with 2 weeks remaining, Dr. Lewis is notified immediately; Dr. Lewis approves any customized employee benefit communication drafted by the CS team; census submission requires Dr. Lewis confirmation that it matches the OE enrollment count; the OE post-mortem is shared with the CEO (it informs the Allevio product and service improvement plan for the following year)

## System Dependencies
- **Reads from:** cs-renewal-coordinator (plan terms finalized; renewal date; pricing confirmed — must be final before OE materials are built); AdvancedMD (current member census; enrollment system access); prior year OE materials (SharePoint/CustomerSuccess/Allevio/OpenEnrollment/[Account]/[PriorYear]/); cs-success-plan-builder (target enrollment rate; member count target for the plan year)
- **Writes to:** OE materials package (SharePoint/CustomerSuccess/Allevio/OpenEnrollment/[Account]/[PlanYear]/); OE milestone tracker (GoHighLevel CRM — each milestone logged with date and status); updated census file (AdvancedMD — submitted within 5 business days of OE close); OE post-mortem (SharePoint/CustomerSuccess/Allevio/OpenEnrollment/[Account]/[PlanYear]/PostMortem.pdf); cs-kpi-dashboard (enrollment rate vs. prior year; TTV for new enrollees)
- **HITL Required:** Dr. Lewis HIPAA review of all OE materials before distribution; Dr. Lewis notified if enrollment below 75% of prior year at mid-OE; Dr. Lewis approves customized employee communications; census submission requires Dr. Lewis confirmation; OE post-mortem shared with CEO

## Test Cases
1. **Golden path:** 135-member employer group; January 1 plan year; OE window October 1 – November 15 → OE kickoff call July 1: confirm plan design (2-plan option this year — adding a HSA-compatible plan); census updated; 138 active employees (3 new since last OE); OE materials delivered by August 1 (60 days before OE); Dr. Lewis HIPAA review: passes; materials distributed to employees August 15; HR Director hosts employee benefits meeting September 15 (Allevio CS rep attends virtually; 22 employees in attendance; 8 questions about the new HSA plan); OE opens October 1; week 1: 67 enrolled (49% — on pace); week 2: 98 enrolled (71%); week 3: 121 enrolled (88%); OE closes November 15: 131 enrolled (95%); census submitted November 20; OE post-mortem: "Biggest question was the HSA contribution process — add a one-pager on HSA setup to the OE package next year"
2. **Edge case:** 2 weeks before OE opens, the HR Director emails: "We just acquired a small company — can we add 12 employees to the plan?" → Dr. Lewis: "Mid-OE additions for acquired employees are possible but require a special enrollment process — they are not part of the main OE. Here's the path: (1) The 12 acquired employees need a qualified life event enrollment (acquisition constitutes a qualifying event); (2) They have 30 days from the acquisition date to enroll; (3) Their census is submitted separately from the main OE; (4) I'm calling the HR Director today to walk her through the process — this is too complicated for an email." Call made; process explained; 12 employees enrolled via special enrollment; coverage begins on time
3. **Adversarial:** HR Director wants to skip the employee benefits meeting: "We just send an email and let employees figure it out — it saves time" → Dr. Lewis: "I understand the time pressure. The challenge with the email-only approach is that enrollment rates typically drop 15-20% when employees don't have a chance to ask questions — and employees who don't enroll sometimes blame HR when they need care. An employee benefits meeting doesn't have to be long — a 20-minute virtual session with 10 minutes of Q&A covers the 90% of questions that employees have. Allevio will prepare the slides and lead the session — you just need to introduce us. Total time from you: 5 minutes. Want me to send a 20-minute agenda you can review?" HR Director agrees; virtual meeting scheduled; enrollment rate 93% (comparable to prior year in-person meeting)

## Audit Log
All OE milestone records retained by account and plan year. Dr. Lewis HIPAA review records retained. OE materials packages retained. Enrollment tracking data retained. Census submission records retained. OE post-mortem documents retained. Any mid-OE enrollment alerts and Dr. Lewis notifications retained.

## Deprecation
Retire when Allevio has a dedicated member enrollment team that manages the OE process end-to-end — with Dr. Lewis reviewing OE materials for HIPAA compliance annually and the CEO reviewing the OE post-mortem as part of the Allevio annual operating review.
