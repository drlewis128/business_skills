---
name: hr-benefits-manager
description: "Manage employee benefits programs for MBL Partners portfolio companies. Use when the user says 'benefits', 'employee benefits', 'benefits enrollment', 'open enrollment', 'health insurance', 'medical insurance', 'dental insurance', 'vision insurance', '401k', '401(k)', 'retirement plan', 'PTO', 'paid time off', 'sick leave', 'FMLA', 'leave benefits', 'benefits package', 'benefits plan', 'benefits administration', 'benefits renewal', 'carrier', 'insurance carrier', 'broker', 'benefits broker', 'COBRA', 'benefits continuation', 'HSA', 'FSA', 'dependent care FSA', 'qualifying life event', 'new hire benefits', 'benefits window', 'ACA', 'ACA compliance', 'ERISA', 'summary plan description', 'SPD', 'benefits cost', 'employer contribution', or 'benefits benchmarking'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <enrollment|renewal|audit|cobra|event>] [--event <new-hire|qualifying-event|open-enrollment|termination>]"
---

# HR Benefits Manager

Administer employee benefits programs across MBL Partners portfolio companies — managing health insurance, retirement, paid leave, and supplemental benefits through enrollment cycles, qualifying life events, and annual renewal. Benefits administration is a legal fiduciary function (ERISA) with strict deadlines; a missed COBRA notice or an incorrect carrier invoice creates liability that exceeds the cost of the benefits themselves.

## When to Use
- Open enrollment period for any portfolio entity
- New hire benefits enrollment window (30 days from start date)
- A qualifying life event requires mid-year plan change
- Annual carrier contract renewal
- A departing employee triggers COBRA

## Benefits Administration Framework

```
STANDARD MBL PORTFOLIO COMPANY BENEFITS PACKAGE:

  HEALTH INSURANCE:
    Medical: employer-sponsored group health plan; ACA-compliant
    Dental: group dental; typically 80/20 (employer/employee) up to annual max
    Vision: group vision; annual exam + frames/contacts allowance
    Employer contribution target: ≥70% of employee-only premium
    Dependent coverage: available at employee cost
    
    Entity-specific notes:
      Allevio: as an MSO managing employer health programs, Allevio's own employee benefits
        should reflect the same quality standards they sell to employer clients
      HIVE: smaller team; use a small-group carrier (Uinta Basin local availability matters)
      Column6: tech company culture expects solid benefits; HSA-eligible HDHP + HSA popular
    
  RETIREMENT (401k):
    Plan type: SAFE HARBOR 401(k) preferred (avoids ADP/ACP testing)
    Employer match: minimum 3% match on first 3% of salary (Safe Harbor minimum)
    Vesting: Safe Harbor match is 100% immediately vested
    Enrollment: new hire eligible first day or first month (entity decision)
    Annual 401(k) audit: required if >100 participants; Dr. Lewis tracks plan asset threshold
    
  PAID TIME OFF (PTO):
    MBL standard: 10 days PTO + federal holidays for year 1; increases at 3 and 5 years
    AZ Earned Sick Time (Prop 206): 40 hours per year minimum (AZ employees)
    UT Paid Sick Leave: 24 hours per year (UT employees)
    PTO payout at separation: AZ earned sick time must be paid; accrued vacation per entity policy
    
  SUPPLEMENTAL (optional; entity decision):
    Life insurance: 1× base salary employer-paid; additional voluntary
    STD/LTD: Short-term and long-term disability; entity-funded or voluntary
    EAP: Employee Assistance Program (low cost; high value; Dr. Lewis recommends all entities)
    
ENROLLMENT WINDOWS:
  New hire: 30 days from start date (HARD deadline; no extensions)
    After 30 days: next open enrollment only (unless qualifying life event)
    Dr. Lewis sends reminder at Day 25 if enrollment not confirmed
  Open enrollment: annual; typically October-November effective January 1
  Qualifying life event (QLE): marriage; divorce; birth/adoption; loss of other coverage
    QLEs: 30-60 days to enroll depending on carrier; Dr. Lewis handles immediately
    
CARRIER RECONCILIATION (monthly):
  Compare carrier invoice to HRIS enrollment data
  Common errors: terminated employees still on plan; new hires not added; premium changes not applied
  Discrepancy: resolve before paying invoice; Dr. Lewis signs off
  Overpayments: pursue credits from carrier; never just accept overbilling

ACA COMPLIANCE:
  ALE (Applicable Large Employer): ≥50 FTE triggers ACA employer mandate
  Current portfolio: all entities likely below 50 FTE but monitor as they grow
  Reporting: ALE must file 1094-C/1095-C by March 31
  If not ALE: still must offer ACA-compliant plans (minimum essential coverage; no annual limits)
  Dr. Lewis tracks FTE count for ACA threshold annually (October)

COBRA:
  Triggered by: termination; reduction in hours; divorce; loss of dependent eligibility
  Employer notice to COBRA administrator: within 30 days of qualifying event
  COBRA administrator to participant notice: within 14 days of employer notice
  Dr. Lewis triggers COBRA administrator notice same day as separation (per hr-offboarding-manager)
  COBRA duration: 18 months for termination/hours reduction; 36 months for death/divorce/dependent
```

## Output Format

```markdown
# Benefits Administration Summary — [Entity] — [Period/Event]
**Action:** [New hire enrollment / Open enrollment / QLE / Renewal / COBRA]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Enrollment Status (New Hire or Open Enrollment)

| Employee | Medical | Dental | Vision | 401(k) | Status |
|----------|---------|--------|--------|--------|--------|
| [Name] | Enrolled | Enrolled | Waived | 6% elected | ✅ Complete |
| [Name] | Enrolled | Waived | Waived | Eligible; not enrolled | ⚠️ 401k pending |

---

## Carrier Invoice Reconciliation (Monthly)

| Carrier | Invoice amount | Expected amount | Discrepancy | Resolved |
|---------|--------------|----------------|------------|---------|
| [Carrier] | $[X] | $[X] | $[X] over | [Y/N] |

---

## ACA FTE Count
**Current FTE:** [X] | **ALE threshold:** 50 | **ALE status:** Not ALE / ALE — 1094-C required

---

## COBRA Triggers This Period
| Employee | Event type | Employer notice sent | COBRA admin notified |
|----------|-----------|--------------------|--------------------|
| [Name] | Termination | [Date] | [Date] |
```

## Output Contract
- New hire enrollment window is 30 days with no extensions — a new hire who misses the 30-day window is not eligible to enroll until the next open enrollment (unless a QLE occurs); Dr. Lewis sends a reminder at Day 25 if enrollment has not been confirmed; if the employee claims they were not informed of the window, the entity is exposed to a fairness complaint; documentation of the 30-day window communication is retained; the entity cannot waive the 30-day window without creating a precedent and a potential ERISA fiduciary issue
- Carrier invoices are reconciled before payment — paying a carrier invoice without reconciling it against HRIS enrollment data means paying for coverage for terminated employees and potentially not paying for new hires; Dr. Lewis reconciles every carrier invoice against HRIS data before the invoice is approved for payment; discrepancies are resolved with the carrier before payment; credits for overpayments are documented and tracked
- COBRA notifications are triggered within the same day as a separation — a missed COBRA notification window creates substantial ERISA liability ($110/day per qualified beneficiary penalty); Dr. Lewis does not rely on an HR admin to trigger COBRA — it is a Day-of-termination action in the offboarding checklist with Dr. Lewis confirmation
- HITL required: new hire enrollment → Dr. Lewis confirms window communicated; carrier invoice → Dr. Lewis reconciles and approves before payment; COBRA trigger → Dr. Lewis confirms same day as separation; QLE enrollment → Dr. Lewis processes within 5 days of notification; ACA FTE count → Dr. Lewis reviews annually October; open enrollment decisions (plan changes) → entity CEO approves; 401(k) employer match rate → entity CEO approves; Safe Harbor election → Dr. Lewis + legal confirm

## System Dependencies
- **Reads from:** hr-offboarding-manager (COBRA trigger); hr-onboarding-planner (new hire start date; enrollment window); HRIS (enrollment data; FTE count); carrier portal (invoice; enrollment confirmation); hr-compliance-calendar (ACA deadlines; 401k audit threshold)
- **Writes to:** Enrollment records (HRIS); COBRA trigger notification; carrier enrollment changes; monthly reconciliation log (SharePoint → HR → Benefits → [Entity] → Reconciliation); ACA FTE count log; 1094-C/1095-C filing (if ALE)
- **HITL Required:** New hire window → Dr. Lewis confirms; carrier invoice → Dr. Lewis reconciles + approves; COBRA → Dr. Lewis triggers same day; QLE → Dr. Lewis processes ≤5 days; ACA FTE → Dr. Lewis reviews October; plan changes → entity CEO approves; match rate → CEO approves

## Test Cases
1. **Golden path:** Allevio hires a new Care Coordinator. Dr. Lewis sends benefits enrollment guide Day 1. Carrier portal link and enrollment deadline (Day 30) in writing. Employee enrolls in medical + dental + 401(k) at 5%. Dr. Lewis confirms enrollment in carrier portal and HRIS by Day 28. Next monthly invoice: reconciled — new employee appears on invoice. Clean.
2. **Edge case:** HIVE employee has a baby (qualifying life event) and wants to add spouse and child to health plan → Dr. Lewis: "QLE window is 30 days from birth date. I need: birth certificate copy; application to add dependents to the health plan. I'll submit the enrollment change to [carrier] within 5 days of receiving the documents. Coverage for new dependents is retroactive to birth date per HIPAA special enrollment."
3. **Adversarial:** Column6 CEO wants to terminate an employee immediately but the HR admin didn't trigger COBRA the same day → Dr. Lewis: "I'm triggering COBRA notification to our COBRA administrator right now — this is time-sensitive. Our obligation is to notify the administrator within 30 days of the qualifying event (today's termination). I'm sending the notification today and logging the timestamp. For future separations, COBRA trigger is on my same-day checklist — this will not happen again."

## Audit Log
All enrollment records retained (ERISA: 6 years). Carrier reconciliation records retained (6 years). COBRA trigger logs retained with timestamps (ERISA). ACA FTE count logs retained (IRS: 3 years). QLE documentation retained. Open enrollment records retained.

## Deprecation
Benefits package reviewed annually at carrier renewal. ACA compliance tracking reviewed when FTE count approaches 50. Safe Harbor election reviewed if plan design changes. COBRA notification procedures updated when ERISA regulations change.
