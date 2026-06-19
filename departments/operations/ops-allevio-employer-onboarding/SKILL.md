---
name: ops-allevio-employer-onboarding
description: "Manage Allevio employer group onboarding process from signed contract to fully active group. Use when the user says 'employer onboarding', 'onboard an employer', 'onboard employer group', 'new employer group', 'employer group setup', 'employer group activation', 'employer group launch', 'employer group go-live', 'new group setup', 'group onboarding', 'group launch', 'group setup', 'enrollment onboarding', 'open enrollment onboarding', 'OE onboarding', 'benefits setup', 'benefits onboarding', 'census onboarding', 'roster onboarding', 'member roster', 'initial roster', 'group kick-off', 'employer kick-off', 'employer welcome', 'implementation', 'implementation timeline', 'onboarding timeline', 'onboarding checklist', 'onboarding tracker', 'onboarding status', or 'Allevio employer setup'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--group <employer-group-name>] [--action <initiate|track|escalate|complete>] [--phase <contract|setup|census|enrollment|go-live>] [--size <small|mid|large>] [--timeline <30|60|90>]"
---

# Ops Allevio Employer Onboarding

Manage Allevio employer group onboarding — the structured process from signed MSA to first live member interaction, ensuring that census data is accurate, members are enrolled, billing is configured, and the employer group has a positive launch experience. Employer onboarding is the first impression that determines whether an employer group stays with Allevio (high GRR) or exits at their first anniversary. A smooth onboarding shows the employer that Allevio's promise of operational excellence is real; a poor onboarding creates doubt that never fully heals. Dr. Lewis tracks onboarding execution at the portfolio level — he does not run individual onboardings, but he ensures the Allevio CEO has the process structure and will flag when onboardings are stalling, taking too long, or creating billing errors.

## When to Use
- A new employer group has signed an MSA and onboarding is beginning
- An onboarding is behind schedule or encountering problems
- Preparing the monthly PMPM invoice for a new group in its first months
- Employer group GRR review (poor onboarding is a GRR driver)

## Employer Onboarding Framework

```
ONBOARDING PHASES AND TIMELINE (45-day standard; large groups 60-90 days):

  PHASE 1 — CONTRACT AND SETUP (Days 1-10):
    Day 1-3: MSA countersigned; stored (SharePoint → Allevio → Contracts → Employers)
    Day 1-5: PMPM rate and billing terms entered into billing system
    Day 3-5: Employer account created in AdvancedMD
    Day 5: Kickoff call with employer HR contact + Allevio operations
    Kickoff agenda:
      - Onboarding timeline and key dates
      - Census submission instructions (format; deadline)
      - Open enrollment process (if applicable)
      - Member communication templates provided
      - Employer contact for ongoing operations identified
    Day 10: QuickBooks billing setup verified (employer entity; PMPM rate; billing cycle)
    
  PHASE 2 — CENSUS AND ENROLLMENT (Days 11-30):
    Day 15: Initial census deadline (employer submits member roster)
    Census validation (Allevio operations):
      □ Employee name; DOB; SSN or member ID
      □ Dependent information (if family coverage)
      □ Coverage tier (employee only; employee + spouse; family)
      □ Coverage effective date per employee
      Errors or missing fields → return to employer with specific corrections needed
    Day 18-22: Validated census loaded into AdvancedMD
    Day 20: Member ID cards generated and sent (or digital access provided)
    Day 25: Employer confirmation of member communications sent
    
  PHASE 3 — GO-LIVE AND FIRST BILLING (Days 31-45):
    Day 30: First eligible service date
    Day 31-35: Provider access confirmed for enrolled members
    Day 45 (or Day 1 of following month): First PMPM invoice generated
    First invoice validation:
      □ Member count matches enrolled census
      □ PMPM rate matches MSA
      □ Proration correct for mid-month starts
      □ Invoice sent to employer-designated billing contact
    Day 45: Onboarding close-out call (any open items; ongoing contact confirmed)
    
  ONBOARDING STATUS TRACKING:

  Dr. Lewis tracks all active onboardings on a status board:
    Employer name | Start date | Target go-live | Phase | Status | Blockers
    
  Status definitions:
    🟢 On track: all milestones on or ahead of schedule
    🟡 At risk: 1 milestone delayed; recovery possible within target
    🔴 Off track: >1 milestone delayed; go-live at risk; Dr. Lewis notifies Allevio CEO
    
  EMPLOYER CONCENTRATION MONITORING:
    Any single employer group >20% of total PMPM revenue: flagged to Matt Mathison
    Context: concentration risk; GRR sensitivity to a single account

FIRST INVOICE QUALITY GATE:

  Before sending any first invoice:
    □ Employer group count: invoice matches enrolled member count
    □ PMPM rate: matches signed MSA exactly (no rounding errors)
    □ Proration: calculated correctly for partial month
    □ Invoice sent to correct billing contact (confirmed in kickoff call)
    □ Payment terms match MSA (Net 30 standard)
    
  First invoice disputes are much more damaging than later disputes:
    Employer's first financial experience with Allevio sets the tone
    Any first invoice error → corrected same day and re-sent with a personal apology

EMPLOYER ONBOARDING RISKS:

  1. Census data quality (most common issue):
     Employer submits incomplete or incorrect census → delays enrollment
     Mitigation: clear census template; validation checklist; 48-hour turnaround on corrections
     
  2. Billing system mismatch:
     PMPM rate entered incorrectly → wrong first invoice
     Mitigation: rate verification against MSA before go-live
     
  3. Go-live date confusion:
     Employer believes coverage starts before it's technically live
     Mitigation: written confirmation of effective dates at kickoff; member communication review
     
  4. Key contact turnover:
     Employer HR contact leaves; new contact doesn't know Allevio processes
     Mitigation: document all contacts; establish backup contact at kickoff
```

## Output Format

```markdown
# Employer Onboarding Tracker — [Date]
**Prepared by:** Allevio Operations | **Reviewed by:** Dr. Lewis

---

## Active Onboardings

| Employer | Start date | Target go-live | Phase | Status | Blocker |
|----------|-----------|---------------|-------|--------|---------|
| [Company A] | [Date] | [Date] | Census/Enrollment | 🟢 On track | None |
| [Company B] | [Date] | [Date] | Contract/Setup | 🟡 At risk | HR contact unresponsive |
| [Company C] | [Date] | [Date] | Go-live/Billing | 🔴 Off track | Census errors; 5-day delay |

---

## First Invoices Due This Month

| Employer | Invoice amount | Member count | Rate | Status |
|----------|---------------|-------------|------|--------|
| [Company D] | $[X] | [N] | $[X]/PMPM | Validated; sending [Date] |

---

## Recently Completed

| Employer | Go-live date | Members | First invoice | Issues |
|----------|------------|---------|--------------|--------|
| [Company E] | [Date] | [N] | Sent; paid on time | None |
```

## Output Contract
- First invoice accuracy is a non-negotiable quality gate — every first invoice is checked against the MSA before it is sent; the checklist (member count; rate; proration; billing contact; payment terms) is completed before the invoice leaves Allevio; a first invoice error is not just a billing mistake — it's a trust deficit at the moment of highest new-relationship sensitivity; Dr. Lewis enforces the first invoice quality gate through the Allevio CEO; if the gate is skipped and an error occurs, the correction is same-day and includes a personal call from the Allevio CEO (not just a revised invoice)
- Census validation happens before enrollment, not after — waiting until members are enrolled to discover census errors creates rework that delays go-live, frustrates the employer, and causes coverage gaps for members who thought they had insurance; Allevio operations validates the census before loading it into AdvancedMD; errors are returned to the employer within 48 hours with specific corrections needed; the employer knows the validation step is happening and what the timeline is (communicated at kickoff)
- 🔴 Off-track onboardings go to Matt Mathison awareness — not for him to act, but so he's not surprised if the employer relationship starts with friction; Dr. Lewis's notification to Matt: "Allevio's onboarding of [Employer] is Red — go-live target was [date], now projecting [revised date] because [reason]. Allevio CEO is managing. No financial impact unless first invoice is delayed past month-end close. Keeping you informed."
- HITL required: employer concentration exceeding 20% of PMPM revenue → Matt Mathison notification at signing (before onboarding begins); first invoice disputes from new groups → Dr. Lewis must be notified; onboarding timeline extension >30 days from original target → Dr. Lewis notification to Matt Mathison; MSA rate discrepancies discovered during onboarding → stop the clock and correct the contract before billing begins; member PHI loaded into AdvancedMD must comply with HIPAA at every step of the onboarding process

## System Dependencies
- **Reads from:** MSA (SharePoint → Allevio → Contracts → Employers); AdvancedMD (enrollment status; member records); QuickBooks (billing setup verification); ops-allevio-member-experience (member satisfaction signals from new groups); fin-allevio-pmpm (PMPM revenue tracking for new groups)
- **Writes to:** Onboarding tracker (Monday.com Allevio board — new group onboarding items); AdvancedMD (member census loading); QuickBooks (billing setup for new employer group); first invoice (via AdvancedMD/billing workflow); ops-action-tracker (onboarding milestone actions); Matt Mathison notifications (concentration risk; off-track onboardings)
- **HITL Required:** Employer group >20% PMPM concentration → Matt notification before signing; first invoice → quality gate checklist completed by Dr. Lewis or Allevio CEO; off-track onboarding >30 days delayed → Matt notification; MSA rate discrepancy discovered → stop billing; correct contract first; PHI compliance at every step (HIPAA — absolute)

## Test Cases
1. **Golden path:** New employer group (45 members) signs MSA February 1; go-live target March 15. Day 3: kickoff call completed. Day 12: census submitted on time (48 members — 3 more than expected; 2 mid-month additions). Validation: all fields present; Dr. Lewis notes: "3 members are being added mid-month — proration calculation needed for first invoice." Day 18: census loaded. Day 20: member IDs sent. March 15: first service date. March 16: first invoice quality gate — member count 48 (matches); PMPM rate matches MSA; proration for 2 mid-month additions calculated correctly; invoice to correct billing contact (HR Director). Invoice sent March 16. Onboarding close-out call March 25: employer HR Director "We were impressed with the smooth process — the census validation feedback was really clear."
2. **Edge case:** An employer group submits census with 18 members who have SSN data missing → Dr. Lewis: "Census validation found 18 of 62 members have missing SSN. Allevio operations has sent a correction request to the employer HR contact with a template showing the required fields. The go-live target is at risk — we need the corrected census by [Date +3 days] to stay on timeline. If we don't receive it by [Date +5 days], go-live shifts by 1 week. I'm monitoring. Allevio CEO is aware. No action needed from Matt at this point."
3. **Adversarial:** An employer group wants to add 12 members to an already-live group mid-month and expects them to be covered immediately → Dr. Lewis: "Mid-month additions to an active group are governed by the MSA enrollment rules — additions are effective the first of the following month unless the MSA includes a provision for mid-month starts (some do; check the MSA). If the MSA allows mid-month starts: Allevio operations can process within 3-5 business days; proration applies; first invoice adjustment in the next billing cycle. If the MSA doesn't allow mid-month starts: the 12 members are effective the first of next month; communicate this clearly to the employer and manage their expectation now. Check the MSA first — don't promise something that the contract doesn't support."

## Audit Log
Onboarding timelines retained (phase completion dates; go-live date). Census validation records retained (errors found; corrections requested; validation complete). First invoice quality gate checklists retained. First invoice dispute records retained. Concentration risk flagging records retained. PHI handling records per HIPAA requirements.

## Deprecation
Retire or automate the manual tracking elements when Allevio's operations platform matures to the point where onboarding is managed within the EHR/billing system with automated milestone alerts. Dr. Lewis's oversight role (concentration monitoring; quality gate; off-track escalation) is permanent.
