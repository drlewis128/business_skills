---
name: hr-payroll-processor
description: "Process and verify payroll for a portfolio company. Use when the user says 'process payroll', 'run payroll', 'payroll processing', 'payroll verification', 'payroll review', 'payroll errors', 'payroll audit', 'payroll reconciliation', 'missed payroll', 'payroll change', 'payroll run', 'salary change in payroll', or 'verify the payroll'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <biweekly|semimonthly|monthly>] [--pay-date <YYYY-MM-DD>] [--action <process|verify|audit>]"
---

# HR Payroll Processor

Process and verify payroll for MBL portfolio companies — ensuring every employee is paid accurately, on time, and in compliance with federal and state payroll laws. Payroll is a legal obligation: late or incorrect payroll creates FLSA liability, state wage claim exposure, and erodes employee trust faster than almost any other operational failure. The payroll process must be reliable, verified before each run, and reconciled to financial records after each cycle.

## When to Use
- Processing a regular payroll cycle (bi-weekly or semi-monthly)
- Verifying a payroll run before submission to catch errors
- Auditing payroll for accuracy, fraud risk, or compliance
- A payroll change has occurred (new hire, termination, rate change, address change)
- A payroll error has been identified after the fact
- Matt Mathison asks about payroll costs or compliance for a portfolio company

## Payroll Processing Framework

```
Payroll run sequence:

Step 1 — CHANGES REVIEW (3-5 days before pay date):
  New hires: added to payroll
  Terminations: removed; final pay calculated
  Rate changes: effective date confirmed and applied
  Address changes: state withholding implications checked
  PTO adjustments: approved PTO deducted from balance
  One-time payments: bonuses, commissions, expense reimbursements

Step 2 — VERIFICATION (before submission):
  Total payroll amount vs. prior period: >5% variance triggers review
  Headcount vs. HR records: payroll headcount must match HR headcount
  New employees: pay rate matches offer letter
  Terminated employees: removed from regular payroll; final pay correct
  Hours (hourly employees): approved timesheets vs. payroll entries

Step 3 — SUBMISSION (by deadline set by payroll provider):
  Most providers need submission 2-3 business days before pay date
  Direct deposit file transmitted
  Tax deposits: federal payroll taxes deposited per schedule

Step 4 — RECONCILIATION (after pay date):
  Payroll expense recorded in QuickBooks
  Payroll tax liability cleared
  Payroll register retained in employee files
  Variance from budget flagged if >$500

Key risk: Ghost employee / unauthorized rate change
These are the two most common forms of payroll fraud.
Payroll verification always checks: headcount vs. HR records,
rate changes since last run vs. approved changes log.
```

## Output Format

```markdown
# Payroll Processing Checklist — <Company Name>
**Pay period:** [Start date] to [End date]
**Pay date:** [Date]
**Payroll cycle:** [Bi-weekly / Semi-monthly / Monthly]
**Provider:** [ADP / Gusto / Paychex / other]
**Processor:** Dr. John Lewis | **Date processed:** <Date>

---

## Step 1: Changes This Payroll Period

| Change type | Employee | Change detail | Effective date | Approved by |
|------------|---------|-------------|--------------|-----------|
| New hire | [Name] | $[X]/year, started [date] | [Date] | Dr. Lewis |
| Termination | [Name] | Last day [date]; final pay $[X] | [Date] | Dr. Lewis |
| Rate change | [Name] | $[X] → $[X]/year | [Date] | Matt Mathison |
| One-time payment | [Name] | $[X] bonus/commission | This period | Dr. Lewis |
| No changes | — | — | — | — |

**Changes audit:** All changes compared to approved change log. Unrecognized changes = 🔴 Flag immediately.

---

## Step 2: Pre-Submission Verification

| Check | Status | Notes |
|-------|--------|-------|
| Total payroll amount vs. prior period | ✅ Within 5% / ⚠️ [X%] variance — review | $[X] this period vs. $[X] prior |
| Payroll headcount vs. HR records | ✅ [N] employees match / 🔴 Mismatch — [detail] | |
| New employee pay rate matches offer letter | ✅ / 🔴 [Name]: payroll shows $[X], offer letter shows $[X] | |
| Terminated employee removed from regular payroll | ✅ / 🔴 | |
| Final pay for terminated employee: correct | ✅ / 🔴 | Includes [PTO payout / no payout per policy] |
| Approved rate changes applied correctly | ✅ / 🔴 | |
| Hourly employee hours match approved timesheets | ✅ / 🔴 / N/A (salaried only) | |
| One-time payments match approved amounts | ✅ / 🔴 | |
| Direct deposit accounts: no recent changes without employee verification | ✅ / ⚠️ Review [Name] | |

**Pre-submission status:** ✅ Clear to submit / 🔴 Hold — resolve [specific issue] before submitting

---

## Step 3: Submission Record

| Detail | Value |
|--------|-------|
| Submitted to [Provider] | [Date and time] |
| Submission confirmation number | [#] |
| Total gross payroll | $[X] |
| Total net payroll (direct deposit) | $[X] |
| Total employer taxes | $[X] |
| Pay date | [Date] |

---

## Step 4: Post-Payroll Reconciliation

| Item | Amount | Status |
|------|--------|--------|
| Gross payroll posted to QuickBooks | $[X] | ✅ / 🔴 Not yet |
| Payroll tax deposit (federal) — EFTPS | $[X] | ✅ / 🔴 Due [date] |
| State payroll tax deposit | $[X] | ✅ / 🔴 Due [date] |
| Payroll register filed to SharePoint | ✅ / 🔴 | |
| Variance vs. payroll budget | $[X] over/under | 🟢 <$500 / 🟡 $500-$2K / 🔴 >$2K — investigate |

---

## Payroll Error Resolution (if applicable)

**Error identified:** [Description — who affected, what incorrect, how discovered]
**Correction method:** [Supplemental payroll run / Offset in next payroll / Other]
**Correction amount:** $[X]
**Timeline:** [Corrections issued within 1 business day for underpayments / Next payroll for overpayments]
**Employee notified:** ✅ / 🔴 — [Method and date]
**FLSA note:** Underpayments must be corrected promptly; underpaying an employee violates FLSA minimum wage and overtime rules.
```

## Output Contract
- Headcount verification every run — the most important fraud prevention control in payroll is comparing payroll headcount to HR records before each run; a ghost employee is a payroll entry with no corresponding HR record; this check takes 5 minutes and catches the most common form of payroll fraud before it is paid out
- Variance threshold review — a payroll that is >5% larger than the prior period without an explanation is a flag; the explanation might be valid (a bonus run, a new hire, a rate change), but it must be confirmed; an unexplained variance is investigated before submission, not after
- Direct deposit change verification — a common fraud vector is changing an employee's direct deposit to a fraudulent account (social engineering or insider fraud); any direct deposit change in the current pay period is verified against an employee request received directly from the employee through a verified channel (not email alone); a direct deposit change Dr. Lewis did not approve or verify with the employee is held until confirmed
- Tax deposits on schedule — federal payroll tax deposits (semi-weekly or monthly depending on lookback liability) are due on federal deposit schedules regardless of cash flow; missing a payroll tax deposit triggers an IRS penalty that begins accruing immediately; Dr. Lewis tracks the deposit schedule and executes deposits without exception
- HITL required: Dr. Lewis processes and verifies all payroll runs; any rate change or bonus payment over $5K requires Matt Mathison awareness; new hires and terminations in the payroll are confirmed against HR records before submission; unrecognized changes are held until confirmed; payroll tax deposits are never delayed

## System Dependencies
- **Reads from:** HR records (headcount, rates, new hires, terminations), approved change log, approved timesheets (hourly), PTO records (approved and used), prior payroll register, offer letters
- **Writes to:** QuickBooks (payroll expense entry), payroll provider system, payroll register (SharePoint/HR/<Company>/Payroll/); federal and state tax deposit (EFTPS)
- **HITL Required:** Dr. Lewis processes and verifies; Matt Mathison aware of changes >$5K; unrecognized changes held; tax deposits non-negotiable

## Test Cases
1. **Golden path:** Allevio semi-monthly payroll (18 employees, $82K semi-monthly gross) → Changes: 1 new hire (bookkeeper, $52K/year = $2,167/period); 1 rate change (coordinator, $58K → $62K = +$167/period); no terminations; verification: headcount 18 (HR records: 18 ✅); new hire rate $2,167 matches offer letter ✅; rate change matches Dr. Lewis-approved change ✅; gross $82K vs. prior $80K = +2.5% — explained by new hire + rate change ✅; no direct deposit changes this period ✅; submitted to Gusto Day -3; confirmation received; pay date on time; QuickBooks entry posted; EFTPS deposit scheduled and confirmed
2. **Edge case:** A payroll run reveals an employee has been receiving $200/biweekly more than their documented rate for 4 months → this is an overpayment of approximately $2,400; do not simply deduct from next paycheck without notice (violates wage laws in many states); process: (a) confirm the correct rate from the offer letter and any documented rate changes; (b) notify the employee of the overpayment and the correction plan; (c) in most states, overpayments can be recouped from future paychecks, but the state law and payment amount per paycheck must be checked (California has strict limits on paycheck deductions); document the overpayment, the correction plan, and employee acknowledgment before any deduction
3. **Adversarial:** Cash is tight and a CEO asks to delay payroll by 5 days → this is a wage violation in virtually every state; employees are legally entitled to be paid on the agreed pay date; respond: "Delaying payroll is not an option I can support. In Arizona and Utah, failing to pay employees on the scheduled payday is a wage law violation that exposes the company to employee wage claims and state penalties. If cash is the issue, let's look at the cash position, accounts receivable, or a short-term credit facility today. I can have a cash position report to you in an hour. Payroll cannot be delayed."

## Audit Log
All payroll registers retained by period and year. Pre-submission verification checklists retained. Change logs retained. Tax deposit confirmations retained. Payroll error corrections documented. Variance investigations retained. Overpayment recovery plans documented.

## Deprecation
Retire when each portfolio company has a dedicated controller or payroll administrator who owns payroll processing with Dr. Lewis's role shifting to payroll oversight and exception review rather than direct execution of each payroll run.
