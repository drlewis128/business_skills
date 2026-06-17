---
name: fin-ops-payroll-processor
description: "Run payroll — gross-to-net calculation, deductions, payroll tax deposits, and records. Use when the user says 'run payroll', 'process payroll', 'payroll processing', 'pay employees', 'payroll run', 'payroll cycle', 'gross-to-net', 'payroll deductions', 'direct deposit', 'paycheck', 'payroll tax', 'payroll deadline', 'off-cycle payroll', 'payroll correction', 'payroll error', 'payroll taxes', 'FICA', 'payroll journal entry', or 'payroll records'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <pay period dates>] [--type <regular|off-cycle|correction>] [--provider <gusto|adp|paychex>]"
---

# Payroll Processor

Run payroll for MBL portfolio companies — executing each pay cycle accurately, depositing payroll taxes on time, and generating the journal entry for the financial close. Payroll is the most time-critical finance operations process: a late or incorrect payroll is immediately felt by every employee and is the most damaging thing that can happen to employee trust. At PE portfolio scale, payroll accuracy and timeliness are non-negotiable; the payroll provider (Gusto/ADP/Paychex) handles the gross-to-net calculation and tax deposits, but the inputs (hours, salaries, new hires, terminations, garnishments) are the company's responsibility — garbage in, garbage out. Dr. Lewis owns the final review of every payroll before submission.

## When to Use
- Processing a regular bi-weekly or semi-monthly payroll cycle
- An off-cycle payroll is needed (missed pay, expense reimbursement, bonus)
- A payroll correction is needed after submission
- Generating the payroll journal entry for the financial close
- Reviewing payroll for accuracy before transmission

## Payroll Processing Framework

```
Standard payroll schedule (bi-weekly example):
  Pay frequency: Bi-weekly (26 pay periods/year) OR Semi-monthly (24 pay periods/year)
  Processing lead time: Submit payroll 2 business days before direct deposit date
    Direct deposit Friday → Submit payroll by Wednesday 12:00 PM
    Direct deposit changes after Wednesday 12 PM are an off-cycle (higher cost and risk)
    
  Payroll processing steps:

  Step 1 — COLLECT INPUTS (by Monday for Wednesday submission):
    Hourly employees:
      Time sheets submitted and manager-approved by Friday of the pay period
      Hours by type: Regular, Overtime (>40 hours/week), PTO used, Holiday
      Overtime alert: Flag any employee with >40 hours in the week to Dr. Lewis; confirm authorized
      
    Salaried employees:
      No timesheet required for exempt salaried
      Confirm no status changes (new hire, termination, LOA, salary change) this period
      
    One-time items this cycle:
      New hires: First paycheck; confirm start date, rate, tax withholding forms (W-4), benefits enrollment
      Terminations: Final paycheck timing (state-specific — AZ: next regular pay date; varies by state)
      PTO cash-out: If applicable per company policy
      Bonus payments: CEO authorization required before adding to payroll
      Expense reimbursements: Attached to payroll with receipts (or separate off-cycle)
      Salary/rate changes: CEO-approved change form with effective date
      
    Benefit deductions (confirm monthly):
      Health insurance employee share
      Dental/vision employee share
      401(k)/retirement employee contribution (and employer match if applicable)
      FSA/HSA contributions
      Confirm deduction amounts match current benefit elections; carrier invoices reconciled
      
  Step 2 — REVIEW BEFORE SUBMISSION (Dr. Lewis pre-submission check):
    ☐ Total gross wages: Reasonable vs. last period? (>10% variance = investigate)
    ☐ New employees/terminations accurately reflected?
    ☐ Overtime hours authorized?
    ☐ Benefit deductions match enrollment?
    ☐ Any bonuses or one-time items authorized by CEO?
    ☐ Garnishments processed correctly (fin-ops-garnishment-manager)?
    
  Step 3 — SUBMIT TO PAYROLL PROVIDER:
    Submit in payroll system (Gusto/ADP/Paychex) by Wednesday 12 PM for Friday direct deposit
    Confirm: Estimated tax deposit amount (FICA, federal income tax withholding)
    Confirm: Direct deposit file will be submitted to NACHA on submission
    
  Step 4 — PAYROLL TAX DEPOSITS:
    Federal payroll tax deposit schedule (IRS deposit schedules):
      Monthly depositor: < $50K in payroll taxes the prior lookback period → Deposit by 15th of following month
      Semi-weekly depositor: ≥ $50K in prior lookback → Deposit within 3 business days of payday
    State payroll taxes: Follow state-specific deposit schedule (AZ quarterly for small employers)
    Note: Gusto/ADP/Paychex typically handles tax deposits automatically — confirm this is enabled
    
  Step 5 — POST-PAYROLL:
    Confirm all direct deposits posted (payroll system confirmation)
    Generate payroll register (list of all employees, gross pay, deductions, net pay)
    Generate payroll journal entry for QuickBooks:
      Debit: Salaries and wages expense (by department if applicable)
      Debit: Payroll tax expense (employer FICA: Social Security 6.2% + Medicare 1.45%)
      Credit: Cash (net pay disbursed)
      Credit: Payroll taxes payable (employee and employer FICA withheld; federal income tax withheld)
      Credit: Benefits payable (employee deductions not yet remitted to carriers)
    Post journal entry to QuickBooks by next business day after payroll
    
  Off-cycle payroll (use sparingly):
    Justified reasons: Final paycheck for terminated employee; payroll error correction; CEO-authorized bonus
    Cost: Payroll provider fee (~$25-50 for off-cycle); additional bank processing
    Approval: Dr. Lewis approval for any off-cycle payroll; CEO authorization for bonuses
    
  Year-end payroll tasks (December - January):
    W-2 preparation: Confirm all employee W-2s are accurate before issuing (January 31 deadline)
    ACA reporting: Confirm 1095-C forms if applicable (employer mandate for 50+ FTEs)
    Retirement plan reconciliation: Confirm all 401(k) contributions remitted to plan
```

## Output Format

```markdown
# Payroll Run — [Entity] Pay Period [Dates]
**Pay date:** [Date] | **Submission deadline:** [Date 12 PM]
**Submitted by:** [Controller] | **Reviewed by:** Dr. Lewis | **Provider:** [Gusto/ADP/Paychex]

---

## Pre-Submission Review

| Check | Status | Notes |
|-------|--------|-------|
| Time sheets approved (hourly) | ✅/❌ | [N] hourly employees |
| Overtime authorized | ✅/❌/N/A | [N] employees with OT; all authorized |
| New hires added | ✅/N/A | [Name]: start [date], rate $[X] |
| Terminations processed | ✅/N/A | [Name]: final check [date] |
| Benefit deductions confirmed | ✅/❌ | |
| Bonuses/one-time items CEO-authorized | ✅/N/A | |
| Gross wages vs. last period: reasonable? | ✅/❌ | Variance: [+/-X]% — [explanation] |

---

## Payroll Summary

| | This Period | Prior Period | Variance |
|---|------------|-------------|---------|
| Gross wages — Regular | $[X]K | $[X]K | [+/-X]% |
| Gross wages — Overtime | $[X] | $[X] | |
| Gross wages — Bonuses | $[X] | $[X] | |
| **Total gross wages** | **$[X]K** | **$[X]K** | **[+/-X]%** |
| Employee tax withholdings | −$[X]K | | |
| Employee benefit deductions | −$[X]K | | |
| **Net pay (direct deposit)** | **$[X]K** | | |
| Employer payroll tax (FICA) | $[X] | | |
| **Total payroll cost** | **$[X]K** | | |

**Employee count:** [N] active employees | [N] hourly | [N] salaried

---

## Payroll Journal Entry (QuickBooks)

| Account | Debit | Credit |
|---------|-------|--------|
| Salaries & Wages Expense | $[X]K | |
| Payroll Tax Expense (employer FICA) | $[X] | |
| Cash | | $[X]K |
| Payroll Taxes Payable | | $[X] |
| Benefits Payable | | $[X] |

---

## Tax Deposit Status

| Tax | Amount | Deposit schedule | Status |
|-----|--------|-----------------|--------|
| Federal (FICA + FIT) | $[X] | [Auto-Gusto / Semi-weekly by [date]] | ✅/❌ |
| Arizona state | $[X] | Quarterly | ✅/❌ |

---

## Post-Payroll Confirmation

**Direct deposit confirmation:** ✅ All [N] payments confirmed / ❌ [issue]
**Journal entry posted to QuickBooks:** ✅ [Date] / ❌ Pending
```

## Output Contract
- Submit 2 business days before pay date, no exceptions — a payroll submission that misses the 2-day ACH cutoff means employees don't receive direct deposit on payday; this is the most damaging operational failure for employee morale; Dr. Lewis treats the payroll submission deadline as sacred: if the controller will miss the deadline due to missing timesheets, Dr. Lewis is notified Monday so corrective action can be taken Tuesday (approve timesheets by Tuesday morning; submit payroll Tuesday PM if absolutely necessary); late timesheets are the manager's responsibility — an employee doesn't miss pay because their manager didn't approve a timesheet
- All one-time items require CEO authorization before submission — bonuses, retention payments, severance, and any unusual pay item must be CEO-authorized in writing (email is sufficient) before appearing in payroll; a controller who adds a bonus to payroll "because the CEO mentioned it" without written authorization creates an audit risk and a financial control failure; Dr. Lewis confirms all one-time items against a CEO authorization email before approving the payroll submission
- Journal entry posted by next business day — the payroll journal entry is part of the financial close and must be in QuickBooks by the business day after payday; payroll is typically the largest single expense entry in the period; if it is missing from QuickBooks, the preliminary financials will be materially misstated; Dr. Lewis includes journal entry posting as a close checklist item and reviews it as part of the BD4-BD5 balance sheet reconciliation
- HITL required: Controller collects inputs and prepares payroll; Dr. Lewis reviews and approves payroll before submission (every cycle, no exception); CEO authorizes all bonuses and one-time items; Matt Mathison is notified if total payroll increases >15% in a single period or if a bonus payment exceeds $10,000; Dr. Lewis approves all off-cycle payrolls

## System Dependencies
- **Reads from:** Time sheets (HR/payroll system), benefit enrollment records (HR system/carrier portal), CEO authorization emails (Outlook), prior payroll register (payroll provider)
- **Writes to:** Payroll provider (Gusto/ADP/Paychex — payroll submission); QuickBooks (payroll journal entry); payroll register (SharePoint/Finance/<Company>/Payroll/); tax deposit records
- **HITL Required:** Controller prepares; Dr. Lewis reviews and approves before every submission; CEO authorizes all bonuses and one-time items; Matt Mathison notified of payroll increases >15% or bonuses >$10K

## Test Cases
1. **Golden path:** Allevio bi-weekly payroll — 12 employees (8 salaried providers + 4 hourly admin) → Monday: Controller reviews time sheets for 4 hourly employees; all approved by their manager; no overtime (max 38 hours); 1 new hire (MA starting Monday, rate $22/hr — W-4 on file; benefits enrolled); payroll inputs entered in Gusto; pre-submission check: gross wages $42,800 vs. prior $40,100 = +6.7% (new hire explains increase); benefits deductions confirmed; Dr. Lewis reviews Tuesday AM and approves; submitted Tuesday 11 AM; Gusto confirms direct deposit for Friday; journal entry generated and posted to QuickBooks Friday; 12 employees receive direct deposit Friday; no issues
2. **Edge case:** Controller discovers Friday at 4pm that a terminated employee's final paycheck was not included in the prior Wednesday payroll → State law (Arizona): Final paycheck must be paid no later than the next regular pay date; since the next regular payday is in 12 days, the employee can wait; however, if the termination was involuntary (fired), Arizona requires payment by the next regular payday OR within 7 working days, whichever is sooner; Dr. Lewis advises: run an off-cycle payroll Monday to avoid any state law risk; Dr. Lewis approves the off-cycle; final paycheck issued with documentation of the error and correction
3. **Adversarial:** A manager says "add a $5,000 bonus for [employee] to this payroll — I'll get you the CEO approval later" → The bonus cannot be added without CEO authorization before submission; Dr. Lewis responds: "I need the CEO's approval before I can include this — can you get me a quick email from [CEO] confirming the $5,000 bonus for [employee] and the reason? I can hold the payroll for 30 minutes if you can get it to me." If the CEO authorization is received before the submission deadline, the bonus is included; if not, the payroll runs without the bonus and the bonus is processed as an off-cycle after CEO approval

## Audit Log
All payroll registers retained permanently (legal requirement — 4 years for payroll records; 7 years recommended). Pre-submission approval by Dr. Lewis retained. CEO authorizations for bonuses retained. Tax deposit confirmations retained. Off-cycle payroll authorizations retained. Journal entry records retained. W-4 and benefit enrollment forms retained per IRS requirements.

## Deprecation
Retire when each portfolio company has a dedicated payroll specialist or outsourced HR/payroll partner managing the process — with Dr. Lewis reviewing payroll above threshold and Matt Mathison notified of material payroll events.
