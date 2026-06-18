---
name: fin-payroll-reviewer
description: "Review and audit payroll for MBL Partners and portfolio companies. Use when the user says 'payroll review', 'payroll audit', 'review the payroll', 'payroll check', 'payroll verification', 'payroll reconciliation', 'payroll accuracy', 'payroll register', 'payroll journal entry', 'payroll tax', 'payroll tax deposit', 'employer taxes', 'FICA', 'federal payroll tax', 'state payroll tax', 'payroll compliance', 'payroll controls', 'payroll anomaly', 'payroll error', 'W-2', '1099', 'contractor payment', 'payroll funding', 'payroll cash', 'direct deposit', 'payroll schedule', 'payroll period', 'bi-weekly payroll', 'semi-monthly payroll', 'payroll provider', 'ADP', 'Gusto', 'payroll system', 'overtime review', or 'new hire payroll'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--period <per-pay-period|monthly|quarterly|annual>] [--action <review|audit|reconcile|verify|post>] [--focus <accuracy|taxes|compliance|controls>]"
---

# Fin Payroll Reviewer

Review and audit payroll for MBL Partners and portfolio companies — verifying that each payroll run is accurate, properly authorized, correctly recorded in QuickBooks, and that payroll tax deposits are made on schedule. Payroll is the largest single expense at most entities (50-65% of operating expense); errors here compound quickly, tax non-compliance creates penalties and IRS scrutiny, and unauthorized payroll modifications are the most common form of occupational fraud. The payroll review function is the control layer that catches these issues.

## When to Use
- Every payroll run (bi-weekly or semi-monthly; before payroll processes)
- Monthly: post-payroll journal entry review and QuickBooks reconciliation
- Quarterly: payroll tax filing review (941; state returns)
- Annual: W-2 and 1099 preparation review
- Any time a payroll anomaly is detected (new employee; rate change; unusual amount)

## Payroll Review Framework

```
PRE-PAYROLL REVIEW (before each payroll run):

  HEADCOUNT VALIDATION:
    □ Employee count matches the current headcount roster
    □ Any new employees this pay period? (Confirm start date; rate; department)
    □ Any terminations this pay period? (Confirm last day; final paycheck calculations)
    □ Any rate changes this pay period? (Approved by entity CEO for managers+; Dr. Lewis for VP+)
    
  HOURS VALIDATION (hourly employees; if applicable):
    □ Approved timesheets submitted for all hourly employees
    □ Overtime hours reviewed: is OT justified? (Allevio clinical staff OT is common during OE)
    □ Unusual hours patterns (e.g., 60 hours for an employee who normally works 40)
    
  SALARY VALIDATION:
    □ All salaried employees at correct base rate
    □ Any bonuses or commissions this period? (Commission calculations verified; approvals documented)
    □ PTO/leave pay applied correctly (paid leave vs. unpaid; state law compliance)
    
  ANOMALY FLAGS (do not process until investigated):
    🔴 Employee not on the current headcount roster
    🔴 Rate change not in the approved HR record
    🔴 Paycheck going to a different bank account than prior periods
    🔴 Duplicate SSN or employee ID
    🔴 New employee with no I-9 on file (Allevio: also confirm OIG exclusion check complete)

PAYROLL TAX COMPLIANCE:

  FEDERAL (IRS):
    □ FICA (Social Security: 6.2% employee + 6.2% employer; Medicare: 1.45% + 1.45%)
    □ Federal income tax withholding (per W-4 elections)
    □ Federal tax deposit: due within 2 business days of payroll for semi-weekly depositors
    □ 941 filing: quarterly (April 30; July 31; October 31; January 31)
    
  STATE (varies by entity location):
    □ State income tax withholding (Allevio: Arizona; HIVE: Utah; Column6: per employee location)
    □ State unemployment insurance (SUTA): quarterly filing and payment
    □ Any state-specific taxes (Colorado, California employees if any)
    
  TAX DEPOSIT FAILURE = immediate escalation:
    Missing a payroll tax deposit triggers IRS penalties (2-15% of the deposit amount)
    Dr. Lewis tracks all deposit due dates in exec-action-tracker
    Any missed deposit → Matt Mathison notification same day + penalty mitigation filing

POST-PAYROLL RECONCILIATION:

  QUICKBOOKS JOURNAL ENTRY (post within 2 business days of payroll):
    Debit: Payroll expense by department (Salaries/Wages; Clinical; G&A; Sales)
    Credit: Payroll liability (net pay); Payroll taxes payable; Benefits payable
    
  CASH RECONCILIATION:
    Payroll funding wire/ACH matches the net payroll amount
    Employer tax deposits match the calculated liabilities
    
  MONTHLY RECONCILIATION:
    Total payroll expense in QuickBooks = sum of all pay periods in the month
    Payroll expense by department = headcount plan × rate × periods
    Variance >$500 from headcount model → investigate before close

ANNUAL PAYROLL COMPLIANCE:

  W-2 PREPARATION (due January 31):
    □ All employees who received wages during the year receive W-2
    □ Box 12 codes correct (401k; health insurance; other benefits)
    □ Entity Controller reviews all W-2s before distribution
    □ W-2s filed with SSA by January 31
    
  1099-NEC PREPARATION (due January 31):
    □ All contractors paid >$600 in the year receive 1099-NEC
    □ W-9 on file for all contractors before any payment
    □ Dr. Lewis reviews all 1099s before distribution (misclassification risk)
    
  WORKER MISCLASSIFICATION RISK:
    Allevio: clinical contractors who work full-time schedules may be employees under ABC test
    HIVE: field service contractors typically qualify as independent contractors (minimal risk)
    Column6: creative contractors — review against IRS common law test
    Rule: when in doubt, classify as employee and consult counsel
```

## Output Format

```markdown
# Payroll Review — [Entity] — [Pay Period Date]
**Reviewed by:** Dr. Lewis | **Payroll provider:** [Provider] | **Process date:** [Date]

---

## Pre-Payroll Checklist

- [x] Headcount count matches roster: [N] employees
- [x] No unauthorized new employees
- [x] No unapproved rate changes
- [x] No anomalous bank account changes
- [x] OT hours reviewed and approved (if applicable)
- [ ] **HOLD: [Issue requiring investigation before processing]**

---

## Payroll Summary

| | This period | Prior period | Variance | Status |
|-|------------|-------------|---------|--------|
| Gross payroll | $[X] | $[X] | $[+/-X] | 🟢/🟡 |
| Net payroll | $[X] | $[X] | $[+/-X] | |
| Employer taxes | $[X] | $[X] | $[+/-X] | |
| Benefits | $[X] | $[X] | $[+/-X] | |

**Headcount:** [N] (prior: [N]; change: [reason])

---

## Tax Deposit Status

| Tax | Amount | Due date | Status |
|-----|--------|---------|--------|
| Federal (941) | $[X] | [Date] | ✅ Scheduled / ⚠️ Pending |
| State — [State] | $[X] | [Date] | ✅ Scheduled / ⚠️ Pending |
```

## Output Contract
- Review before processing, not after — the payroll anomaly check happens before the payroll is submitted to the payroll provider; catching an unauthorized rate change or a ghost employee before the ACH goes out prevents the problem; catching it after the ACH is a clawback exercise; Dr. Lewis reviews the pre-payroll checklist the morning before each scheduled payroll submission
- Tax deposits are non-negotiable on timing — IRS payroll tax penalties start at 2% for deposits 1-5 days late and escalate to 15% for deposits >10 days late; there is no acceptable reason to miss a payroll tax deposit; Dr. Lewis tracks every deposit due date in exec-action-tracker and confirms deposit completion within 24 hours of payroll; any missed deposit is a same-day Matt Mathison notification
- Misclassification risk is real and expensive — the IRS and state agencies actively pursue worker misclassification; an Allevio clinical contractor who works 40+ hours/week under MBL management direction may be an employee under applicable law; if reclassified, MBL owes back taxes, penalties, and potentially benefits; Dr. Lewis flags any contractor arrangement that has lasted >6 months at consistent hours for legal review (1099 volume is a red flag the IRS uses to identify misclassification)
- HITL required: rate changes for manager-level and above require entity CEO approval before payroll; rate changes for VP+ require Dr. Lewis approval; any payroll anomaly (unauthorized employee; rate change without approval; bank account change) holds the payroll until investigated; tax deposit failures go to Matt Mathison same day; annual W-2s and 1099s reviewed by Dr. Lewis before distribution; worker classification questions go to legal counsel

## System Dependencies
- **Reads from:** Payroll provider (ADP/Gusto/entity-specific — payroll register; tax reports; deposit confirmations); HR system / headcount roster (current approved employees; rates; start/end dates); QuickBooks (prior period payroll entries — basis for variance analysis); fin-budget-builder (approved headcount plan — new hires must be in the approved plan)
- **Writes to:** QuickBooks (payroll journal entries; tax liability entries); exec-action-tracker (tax deposit due dates; payroll anomaly investigations); fin-entity-close (payroll posting is a close requirement); fin-cash-flow-planner (payroll cash outflows — the single largest predictable weekly cash item)
- **HITL Required:** Rate changes VP+ require Dr. Lewis approval; payroll anomalies hold payroll until investigated; missed tax deposits require Matt Mathison notification same day; annual W-2/1099 reviewed by Dr. Lewis; worker misclassification questions require legal counsel; any payroll that processes without the pre-payroll checklist sign-off is an audit finding

## Test Cases
1. **Golden path:** Bi-weekly payroll review for Allevio (16 employees); pre-payroll checklist: headcount matches roster (16); no new employees this period; no rate changes; no bank account changes; one clinical coordinator has 6 hours of OT (approved by clinical supervisor in the timekeeping system). Gross payroll: $68,400 (vs. $67,800 prior period — $600 variance from OT). Federal tax deposit scheduled for the day after payroll: $21,850. State (Arizona) deposit: $3,420. Journal entry posted to QuickBooks within 2 business days. Payroll expense by department: Clinical $38K; G&A $22K; Sales $8.4K. All within headcount model range. Review complete — approved for processing.
2. **Edge case:** Payroll register shows a $5,200 paycheck for an employee name not on the current headcount roster → Dr. Lewis: "Payroll is on hold. I have a paycheck in the register for [Name] — this person is not on our current headcount roster. Before this payroll processes, I need to know: Is this a new hire whose onboarding paperwork wasn't completed before payroll cut-off? A contractor who was incorrectly added to the employee payroll? Or an employee who separated and should have been removed from the system? Entity Controller: I need an answer within 2 hours. If this is a legitimate new employee, send me the signed offer letter, I-9, and OIG exclusion check result. If it's an error, remove from payroll now. The payroll will not process until this is resolved." Investigation: new hire whose I-9 was completed but HR hadn't updated the roster. Legitimate. I-9 and OIG check confirmed. Payroll approved.
3. **Adversarial:** Entity CEO wants to give a bonus to an employee "this payroll" without formal documentation → Dr. Lewis: "I need the bonus documented before it goes through payroll. This isn't about bureaucracy — it's about tax compliance, budget control, and audit trail. What I need: (1) the approved amount; (2) the reason (performance; signing; retention); (3) who approved it (entity CEO approval for <$5K; Dr. Lewis for $5K-$15K; Matt for >$15K). Once I have that, I can include it in the next payroll run. If this payroll is processing today and there's no time, we can include it in the next pay period — a 2-week delay in a bonus is acceptable; an undocumented bonus in a payroll run is not. Send me the documentation and I'll make it happen."

## Audit Log
All payroll registers retained 7 years. Pre-payroll checklist sign-offs retained. Tax deposit confirmation records retained. Payroll anomaly investigation records retained. Annual W-2 and 1099 filing records retained. Worker misclassification review records retained. Bonus documentation retained.

## Deprecation
Retire when each entity has a Controller or HR/Finance specialist who manages payroll review — with Dr. Lewis providing the controls oversight (anomaly review; rate change approvals; misclassification monitoring) and Matt Mathison retained for payroll tax compliance failures and bonus approvals >$15K.
