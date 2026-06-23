---
name: finance-payroll-ops
description: "Manage payroll operations for MBL Partners portfolio entities. Use when the user says 'payroll', 'run payroll', 'process payroll', 'payroll run', 'payroll management', 'payroll processing', 'employee pay', 'employee compensation', 'payroll schedule', 'bi-weekly payroll', 'semi-monthly payroll', 'payroll taxes', 'payroll compliance', 'payroll records', 'payroll journal entry', 'payroll in QuickBooks', 'payroll expense', 'payroll cost', 'payroll error', 'missed payroll', 'payroll late', 'payroll correction', 'payroll stub', 'pay stub', 'direct deposit', 'ACH payroll', 'payroll funding', 'payroll reconciliation', 'payroll audit', 'payroll liability', 'employer payroll tax', 'FICA', 'federal payroll tax', 'state payroll tax', 'payroll tax deposit', 'quarterly payroll tax', '941', 'payroll tax return', 'new hire payroll setup', 'terminated employee payroll', or 'final paycheck'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--period <biweekly|semimonthly>] [--action <run|reconcile|correct|tax-deposit>]"
---

# Finance Payroll Ops

Manage payroll operations for MBL Partners portfolio entities — coordinating payroll processing through the entity's payroll provider, reconciling payroll to QuickBooks, ensuring payroll tax compliance, and managing new hire setup and terminated employee final pay. Payroll is the highest-stakes financial process: it is legally time-bound, the most important financial obligation to employees, and federally regulated.

## When to Use
- Bi-weekly or semi-monthly payroll run
- New hire payroll setup
- Terminated employee final paycheck
- Quarterly payroll tax return (Form 941)

## Payroll Operations Framework

```
PAYROLL SYSTEM STACK:
  Payroll provider: Gusto (preferred for small entities) OR ADP (if entity preference)
  QuickBooks integration: payroll provider syncs to QuickBooks for GL entries
  Dr. Lewis role: payroll approval and compliance oversight (not day-to-day payroll entry)
  Entity CEO role: provides hours/changes; approves payroll before processing
  
PAYROLL SCHEDULE:
  Standard: bi-weekly (every 2 weeks; 26 pay periods/year)
  Alternative: semi-monthly (twice/month; 24 pay periods/year)
  Each entity uses one schedule consistently; changing schedules requires 30-day notice to employees
  
PAYROLL APPROVAL PROCESS:
  Step 1: Entity CEO reviews payroll preview in Gusto/ADP (changes from prior period: new hires; terminations; PTO; commission)
  Step 2: Entity CEO approves
  Step 3: Dr. Lewis spot-check review (total payroll $ vs. prior period; any anomalies)
  Step 4: Dr. Lewis releases for processing (Gusto/ADP submits ACH debits)
  Step 5: QuickBooks sync: payroll journal entries posted (labor; payroll tax; benefits deductions)
  Processing time: 2 business days before pay date (Gusto minimum)
  
PAYROLL COMPLIANCE:
  Federal payroll taxes: FICA (Social Security 6.2%; Medicare 1.45% employee AND employer match)
  Federal income tax withholding: per W-4 elections
  State income tax (AZ): 2.5% flat rate for AZ employees (effective 2023)
  Payroll tax deposits: semi-weekly or monthly (based on lookback period; Gusto handles automatically)
  Quarterly: Form 941 (IRS); entity CEO + Dr. Lewis review before filing
  Annual: W-2 generation (Gusto); Forms 940 (FUTA); state reconciliation
  
NEW HIRE PAYROLL SETUP CHECKLIST:
  1. W-4 (federal withholding election) collected
  2. State withholding form (AZ Form A-4) collected
  3. I-9 (employment eligibility verification) — entity CEO's responsibility; Dr. Lewis confirms on file
  4. Direct deposit setup (bank account via Gusto employee portal)
  5. Benefits enrollment (if applicable; deduction setup in Gusto)
  6. First paycheck timing: next scheduled payroll run after start date (no off-cycle checks for new hires unless negotiated in offer)
  
TERMINATED EMPLOYEE:
  Final paycheck: Arizona law requires final paycheck by next regular payday OR within 7 days (whichever is sooner)
  Dr. Lewis processes final pay manually if termination is mid-cycle
  COBRA / benefits continuation: entity CEO notifies HR/benefits provider within 30 days
  QuickBooks: mark employee as terminated; retain records per employment law retention requirements
  
PAYROLL ERROR HANDLING:
  Underpayment: correct in next payroll run (if small); off-cycle if significant
  Overpayment: recover in next payroll run; inform employee; do not deduct without consent
  Missed payroll: emergency off-cycle run; Dr. Lewis + entity CEO; root cause identified immediately
```

## Output Format

```markdown
# Payroll Run Summary — [Entity] — [Pay Period]
**Pay Date:** [Date] | **Processed by:** Entity CEO + Dr. Lewis (spot-check) | **Provider:** Gusto

---

## Payroll Summary

| Item | This Period | Prior Period | Change |
|------|------------|-------------|--------|
| Total gross payroll | $X | $X | +/-$X |
| Employee count | N | N | +/-N |
| Employer payroll taxes | $X | $X | |
| Total employer cost | $X | $X | |

---

## Changes This Period
- New hire: [Name] — [Role] — start [Date] — first paycheck ✅
- [Other changes: PTO adjustments; commission additions; deduction changes]

---

## Compliance Check
- [ ] Entity CEO approved in Gusto ✅
- [ ] Dr. Lewis spot-check complete ✅
- [ ] QuickBooks sync verified ✅
- [ ] Payroll tax deposit scheduled ✅
```

## Output Contract
- Payroll is a legal obligation first and a financial transaction second — employees depend on payroll arriving on the scheduled pay date; a payroll processing error that causes a missed or late paycheck is not just a financial problem, it is a trust and legal problem; Dr. Lewis treats the payroll schedule as a hard deadline and builds in a 2-day processing buffer (submitting to Gusto by Wednesday for a Friday pay date) to avoid last-minute failures; if an entity CEO doesn't approve by the Wednesday cutoff, Dr. Lewis calls immediately — payroll is never late because of process failure
- Spot-check discipline catches payroll anomalies that could be errors or fraud — Dr. Lewis's spot-check before releasing payroll takes 5 minutes and looks for: total payroll amount significantly different from last period (without explanation); a new payee added in the current period (new hire? or unauthorized addition?); an employee with a large commission or bonus that wasn't pre-approved; an employee whose pay rate changed without Dr. Lewis's knowledge; these are the patterns that payroll fraud exploits; catching them in the approval step prevents them from becoming a problem
- HITL required: entity CEO approves payroll every period (mandatory); Dr. Lewis spot-check before release (mandatory); new hire payroll setup → Dr. Lewis confirms documents collected; terminated employee final pay → Dr. Lewis processes; any payroll error → entity CEO + Dr. Lewis immediate; quarterly 941 → Dr. Lewis reviews before filing; payroll tax deposit → Gusto handles automatically; any off-cycle payroll → entity CEO + Dr. Lewis approve

## System Dependencies
- **Reads from:** Gusto (payroll preview; employee records; tax setup); QuickBooks (GL accounts for payroll sync; prior period comparison); finance-headcount-planner (approved headcount and comp rates — basis for payroll expectations); entity CEO change requests (hours; commissions; new hires; terminations)
- **Writes to:** Gusto (payroll approval; tax configuration); QuickBooks (payroll journal entries via Gusto sync); payroll run records; new hire setup records; terminated employee final pay records; quarterly 941 review records; annual W-2 records
- **HITL Required:** Entity CEO approval → mandatory; Dr. Lewis spot-check → mandatory; new hire → document confirmation; final pay → Dr. Lewis processes; error → entity CEO + Dr. Lewis; 941 → Dr. Lewis reviews; off-cycle → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio bi-weekly payroll (June 20 pay date). 5 employees; $18,400 gross payroll (consistent with prior period ✅). Entity CEO approves in Gusto by Wednesday June 18. Dr. Lewis spot-check: total within $200 of prior period ✅; no new employees added ✅; 1 commission addition ($1,200 AE bonus — pre-approved by entity CEO email on June 15 ✅). QuickBooks sync confirmed June 18. ACH debit to entity payroll account June 18; funds released June 20. All 5 employees paid on time. Payroll tax deposit auto-scheduled by Gusto ✅.
2. **Edge case:** New AE hired June 16; entity CEO expects their first paycheck in the June 20 payroll run but onboarding documents (W-4; A-4; direct deposit) weren't collected until June 18 → Dr. Lewis: "The June 20 payroll run closes Wednesday June 18 at noon — we received the AE's documents at 3pm, which is after cutoff. The first paycheck will be in the July 3 payroll run (next bi-weekly cycle). Arizona law requires we pay wages when earned; the AE starts accruing wages June 16 and will be paid for June 16-29 on the July 3 run. This is standard; I'll confirm with the AE to set expectations. Going forward, all new hire onboarding documents need to be collected before the Thursday of the week prior to the first desired paycheck — I'll add this to the new hire checklist."
3. **Adversarial:** Entity CEO asks Dr. Lewis to process a large off-cycle bonus payment for a key employee immediately without going through Gusto payroll ("just wire it from the business account") → Dr. Lewis: "I can't process employee compensation as a direct wire from the business account — it needs to go through payroll to properly calculate and withhold payroll taxes (FICA; federal income tax; AZ state tax). If we pay an employee bonus outside of payroll, we're creating a payroll tax compliance failure: the taxes aren't withheld, we're not making the employer match, and the employee receives gross pay rather than net pay (which means they'll owe taxes they weren't expecting at year-end). An off-cycle Gusto payroll run for a bonus takes 24 hours to set up and costs a small processing fee (~$10-15). I'll set it up today. What's the bonus amount?"

## Audit Log
Bi-weekly/semi-monthly payroll run records (permanent; 4-year minimum per IRS). Entity CEO payroll approval records. Dr. Lewis spot-check records. New hire payroll setup records. Terminated employee final pay records. Payroll error and correction records. Quarterly 941 filing records. Annual W-2 and 940 records. Off-cycle payroll approval records.

## Deprecation
Payroll schedule reviewed if entity headcount changes significantly. Provider reviewed annually or if Gusto/ADP service changes. Compliance checklist reviewed when tax law changes (AZ rate; federal FICA). New hire checklist reviewed when employment law requirements change. Spot-check criteria reviewed when entity team composition changes.
