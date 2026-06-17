---
name: fin-ops-payroll-auditor
description: "Audit payroll for accuracy — headcount, rate, hours, deductions, and tax calculations. Use when the user says 'payroll audit', 'audit payroll', 'payroll accuracy', 'payroll review', 'payroll check', 'verify payroll', 'payroll validation', 'payroll error', 'payroll discrepancy', 'payroll overpayment', 'payroll underpayment', 'ghost employee', 'payroll fraud', 'check payroll', 'payroll compliance review', 'payroll register', or 'payroll cycle review'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--pay-date <YYYY-MM-DD>] [--period <bi-weekly|semi-monthly|monthly>] [--scope <full|headcount|rates|taxes|deductions>]"
---

# Payroll Auditor

Audit payroll registers for MBL portfolio companies — verifying accuracy of headcount, pay rates, hours worked, deductions, tax withholding, and total payroll cost before payroll is submitted. Payroll is among the largest operating expenses at every portfolio company and the most sensitive to fraud; a ghost employee that goes undetected for 12 months at $60K salary is a $60K loss that will not reverse. Dr. Lewis reviews every payroll cycle before submission and conducts a more thorough quarterly payroll audit. The pre-submission review catches errors; the quarterly audit catches patterns.

## When to Use
- Pre-submission review before every payroll cycle (mandatory — 20 minute check)
- Quarterly payroll audit (thorough — 2 hours; covers the full quarter)
- After any HR change (new hire, termination, rate change, title change)
- IRS or state payroll audit notice — internal audit first to know your position
- Suspicion of payroll error or fraud (ghost employee, unauthorized rate change)

## Payroll Audit Framework

```
PRE-SUBMISSION REVIEW (before every payroll — 20 minutes):

  Step 1 — HEADCOUNT CHECK:
    Pull the payroll register for this cycle
    Count total employees on the register
    Compare to the prior payroll register count
    Any new employee: Verify against an offer letter and I-9 on file; confirm their start date
    Any missing employee: Confirm they are on approved leave or have terminated
    Any new employee not appearing who should appear: Contact HR immediately
    
  Step 2 — RATE AND SALARY CHECK:
    For each employee: Compare their pay rate to the authorized rate on file
    Any rate change since the last payroll: Confirm it is supported by a signed change form (approved by CEO for >$5K salary change)
    High-risk check: Owner/executive/family member pay rates — compare to prior period
    Bonus or one-time payment: Confirm CEO written authorization exists before payroll is submitted
    
  Step 3 — HOURS CHECK (hourly employees):
    Pull timesheet totals for each hourly employee
    Compare to the payroll register
    Overtime: Any hours over 40/week require OT pay at 1.5× (confirm payroll system calculated correctly)
    Payroll system OT calculation: (Total hours − 40) × (hourly rate × 1.5)
    Flag: Any employee with >50 hours in a week for manager sign-off
    
  Step 4 — DEDUCTIONS CHECK:
    Health insurance: Each employee's deduction matches their enrollment tier
    401(k): Deduction matches their elected percentage; verify it won't exceed the annual limit
    Garnishments: Withholding amount matches the active garnishment order
    Other deductions: Uniform, parking, loan repayment — compare to prior cycle; no new deductions without written authorization
    
  Step 5 — TAX WITHHOLDING CHECK:
    Federal income tax: Reasonable given the employee's W-4 filing status and allowances
    FICA (Social Security + Medicare): 6.2% + 1.45% of gross (employer matches)
    State income tax: Correct rate for the employee's state of residence
    Local taxes (if applicable): Correct
    Unusual tax amounts: Flag any employee with $0 federal withholding unless they claimed exempt on W-4
    
  Step 6 — TOTAL PAYROLL CHECK:
    Sum gross payroll; compare to prior period
    Acceptable variance: ±5% is normal (new hire, termination, fluctuating hours)
    Variance >10%: Investigate before submitting; do NOT submit a payroll with an unexplained >10% variance
    
  Step 7 — DR. LEWIS APPROVAL:
    After completing the above checklist → Dr. Lewis approves the payroll for submission
    No payroll is submitted without Dr. Lewis's explicit approval
    Document the approval: "Payroll [period] approved by Dr. Lewis [timestamp]"

QUARTERLY PAYROLL AUDIT (thorough — every quarter):

  1. Headcount reconciliation:
     Pull the payroll register for all payrolls in the quarter
     Reconcile against HR roster: Every person on payroll should be on the HR roster; every active employee should have been on payroll every cycle (or on approved leave)
     Terminate check: Anyone terminated in the quarter should have been removed from payroll the cycle after termination; verify no final payroll overpayment occurred
     
  2. Annual rate and total compensation audit:
     List every employee's quarterly gross pay; annualize (×4)
     Compare to their offer letter / most recent change form
     Flag if annualized compensation exceeds authorized by >5%
     
  3. Overtime patterns:
     Pull all OT hours by employee for the quarter
     Any employee with >80 hours of OT in the quarter: Discuss with manager (is this authorized? Is there a staffing need?)
     Consistent OT in the same department: May indicate understaffing; flag to CEO
     
  4. Payroll tax deposit verification:
     Confirm EFTPS deposits matched the payroll tax liability for each period
     Confirm 941 quarterly return was filed (or is on schedule)
     Confirm state payroll tax deposits were made
     
  5. Compensation concentration check:
     Top 5 earners: Are they all in expected roles? Any anomaly?
     New hires in the quarter: Rate confirmed against offer letter
     
  6. Ghost employee scan:
     Cross-reference payroll with: HR personnel file (does an I-9 exist?), email address in the company directory, physical location/supervisor
     Any employee without a confirmed HR record, email address, or known supervisor = red flag → investigate immediately
```

## Output Format

```markdown
# Payroll Audit — [Entity] [Pay Period]
**Payroll date:** [Date] | **Cycle:** [Bi-weekly / Semi-monthly / Monthly]
**Audit type:** Pre-submission review / Quarterly audit
**Audited by:** Dr. Lewis | **Status:** ✅ Approved for submission / ❌ HOLD — issues identified

---

## Pre-Submission Checklist

| Check | Status | Notes |
|-------|--------|-------|
| Headcount — matches prior period + authorized changes | ✅/⚠️/❌ | [N] employees; [N] new (confirmed); [N] terminated (removed) |
| Salary/rate — matches authorized rates | ✅/⚠️/❌ | All rates match; 1 rate change confirmed (offer letter on file) |
| Hours — OT calculated correctly | ✅/⚠️/❌ | [N] hourly employees; OT confirmed for [Name] (48 hrs) |
| Deductions — match enrollment and authorizations | ✅/⚠️/❌ | All deductions match prior period; garnishment for [Name] current |
| Tax withholding — reasonable and correct | ✅/⚠️/❌ | All withholding amounts reasonable; no $0 federal without exempt claim |
| Total payroll variance — within 5% of prior period | ✅/⚠️/❌ | $[X]K this period vs. $[X]K prior (variance: [X]% ✅) |

---

## Issues Found (if any)

| Issue | Employee (initials) | Amount | Action Required | Status |
|-------|---------------------|--------|----------------|--------|
| Rate change without change form | [Initials] | $[X]/hr increase | Confirm with CEO; hold payroll until authorized | ⚠️ HOLD |

---

## Dr. Lewis Approval

**Payroll status:** ✅ Approved — submit to [Gusto / ADP / Paychex] on [Date]
**Gross payroll this cycle:** $[X]K | **Employer taxes this cycle:** $[X]K | **Total employer cost:** $[X]K
**Approval timestamp:** [YYYY-MM-DD HH:MM] — Dr. Lewis

---

## Quarterly Audit Summary (if applicable)

| Dimension | Finding | Status |
|-----------|---------|--------|
| Headcount reconciliation | [N] employees; all match HR roster | ✅ |
| Compensation audit | All within 5% of authorized; 1 new hire confirmed | ✅ |
| OT pattern | [Name] — 85 OT hours this quarter; discuss with manager | ⚠️ |
| Payroll tax deposits | All EFTPS deposits confirmed; 941 filed ✅ | ✅ |
| Ghost employee scan | No anomalies; all employees verified in HR system | ✅ |
| Termination processing | All terminations removed on schedule | ✅ |
```

## Output Contract
- No payroll is submitted without Dr. Lewis's explicit approval — the "approve and submit" sequence for payroll is a critical control; the payroll provider can be instructed to require a confirmation step before submitting; Dr. Lewis reviews the register, completes the checklist, and approves; the controller can prepare the payroll in the system (enter hours, review deductions, preview the register) but cannot submit without Dr. Lewis's confirmed approval; this single control prevents the most common payroll fraud scenario: a controller who submits unauthorized payroll changes before Dr. Lewis can review
- A >10% variance from the prior period stops the payroll — a payroll that is 15% larger than last cycle without a clear explanation (a scheduled pay date shift, a bonus cycle, significant headcount change) is a red flag; Dr. Lewis never submits a payroll with a >10% unexplained variance; the investigation takes priority over meeting the submission deadline; if necessary, Dr. Lewis contacts the payroll provider to extend the submission window by 24 hours; the cost of a late payroll (an irritated workforce for one day) is far lower than the cost of an undetected payroll fraud
- Quarterly audits catch what pre-submission reviews miss — the pre-submission review checks the current period; the quarterly audit looks for patterns: an employee who has had small unauthorized rate increases each quarter ($0.25/hr each time, accumulating to $3/hr over 3 years); an employee who has been on payroll for 18 months but whose I-9 was never filed; OT hours that are consistently high for one supervisor's team; the quarterly audit is the pattern-detection layer that the weekly review cannot provide
- HITL required: Dr. Lewis approves every payroll before submission; any payroll issue (rate discrepancy, headcount anomaly, >10% variance) holds the payroll until resolved; CEO authorizes all bonuses and executive pay changes; CEO authorizes salary changes >$5K; ghost employee suspicion → Dr. Lewis and CEO immediately; confirmed payroll fraud → Matt Mathison by phone immediately (do not tip off the fraudster)

## System Dependencies
- **Reads from:** Payroll provider register (Gusto / ADP / Paychex preview); HR roster (active employees + authorized rates); prior period payroll register; timesheet system (hours); offer letters and change forms (SharePoint/HR/); garnishment orders; W-4 records; EFTPS deposit confirmation
- **Writes to:** Payroll approval log (SharePoint/Finance/<Company>/Payroll/ApprovalLog/); quarterly audit report; CEO notification (if anomaly found); Matt Mathison notification (if fraud suspected); 941 filing records; EFTPS confirmation records
- **HITL Required:** Dr. Lewis approves every payroll before submission; CEO authorizes all bonuses and pay changes; any anomaly holds the payroll; fraud suspicion → Dr. Lewis + CEO + Matt Mathison immediately

## Test Cases
1. **Golden path:** Allevio bi-weekly payroll, 22 employees, pre-submission review → Headcount: 22 (matches prior) ✅; 1 new hire — confirms: offer letter on file, I-9 completed, start date correct ✅; Rates: all match; 1 rate change — medical assistant rate increased from $19.50 to $20.00/hr per the CEO-approved change form ✅; Hours: 8 hourly employees; 2 with slight OT (42 hrs and 44 hrs); OT calculated correctly at 1.5× ✅; Deductions: all match enrollment; one garnishment (withholding order active, amount matches) ✅; Tax withholding: all reasonable; no $0 federal without exempt ✅; Total payroll variance: $58,400 vs. $56,200 prior (+3.9% — within 5%; explained by new hire and rate change) ✅; Dr. Lewis approves: "Payroll 2026-06-13 approved — Dr. Lewis 2026-06-11 14:22"; submitted to Gusto; payroll processes Friday
2. **Edge case:** HIVE's semi-monthly payroll shows a new employee added — but Dr. Lewis has not been notified of a new hire → Dr. Lewis does not recognize the name; the role listed is "Field Operations Coordinator" at $72K; Dr. Lewis checks the HR roster — the name is not in the roster; Dr. Lewis immediately contacts the HIVE CEO: "I'm reviewing the payroll register and see a new employee [Name] at $72K that I don't have an HR record for. Can you confirm this hire before I approve the payroll?" If the CEO confirms: get the offer letter, I-9, and add to the HR roster — then approve; if the CEO does not recognize the employee: HOLD THE PAYROLL; Dr. Lewis and CEO investigate immediately; this is the classic ghost employee scenario; payroll is held until the employee's identity and authorization are confirmed; Matt Mathison is notified if the investigation reveals fraud
3. **Adversarial:** The controller emails Dr. Lewis: "Payroll needs to submit in 30 minutes — can you approve quickly?" → Dr. Lewis does not rush the payroll approval for scheduling convenience; if Dr. Lewis cannot complete the review in the time available, Dr. Lewis contacts the payroll provider to extend the submission window by 24 hours (most providers allow this); Dr. Lewis will not approve a payroll without completing the review checklist, regardless of deadline pressure; Dr. Lewis responds: "I need to complete the review — I'll contact [Gusto/ADP] to extend the submission window. This will not delay direct deposit as long as we submit by tomorrow by 2 PM. The review will take 20 minutes. I'll send approval confirmation when done."

## Audit Log
Every payroll approval logged (timestamp, Dr. Lewis approval, gross amount). All pre-submission checklist results retained. Quarterly audit reports retained. Any anomaly investigation records retained. Ghost employee scan records retained. CEO bonus authorization records retained. All change form records retained.

## Deprecation
Retire when each portfolio company has a controller who conducts the pre-submission review — with Dr. Lewis reviewing the quarterly audit summary and approving any payroll with a variance >5% or headcount change.
