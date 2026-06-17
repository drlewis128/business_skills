---
name: fin-ops-payroll-tax-manager
description: "Manage payroll tax compliance — 941 filings, deposit schedules, state taxes, and W-2s. Use when the user says 'payroll tax', '941', 'Form 941', 'payroll tax deposit', 'FICA', 'federal payroll tax', 'state payroll tax', 'payroll tax compliance', 'payroll tax filing', 'IRS payroll', 'W-2', 'W-3', 'payroll tax return', 'employer tax', '940', 'FUTA', 'SUTA', 'unemployment tax', 'payroll tax deadline', 'payroll tax penalty', or 'employee withholding'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--tax <federal|state|all>] [--form <941|940|W-2|state>] [--period <quarter|year>]"
---

# Payroll Tax Manager

Manage payroll tax compliance for MBL portfolio companies — ensuring timely deposit of employment taxes, accurate quarterly and annual filings, and proper W-2 issuance. Payroll tax is the area with the most severe IRS penalties in small business finance: the Trust Fund Recovery Penalty can hold individual owners and officers personally liable for unpaid payroll taxes; the IRS can pierce corporate liability and collect from Dr. Lewis or the CEO directly if the company fails to deposit payroll taxes. This is not a theoretical risk — it happens to small companies every year. Dr. Lewis treats payroll tax deposits as the highest-priority financial obligation, above vendor payments.

## When to Use
- Verifying the payroll provider is depositing taxes correctly (monthly check)
- Preparing or filing a quarterly 941 return
- A payroll tax notice arrives from the IRS or state
- Year-end: W-2 preparation and filing (January 31)
- A prior payroll tax error is discovered — assessing penalty exposure
- Evaluating whether the company meets the semi-weekly or monthly deposit threshold

## Payroll Tax Framework

```
Federal payroll taxes:
  FICA — Social Security:
    Employee share: 6.2% of gross wages up to $168,600 (2024 wage base)
    Employer share: 6.2% (matched) — this is the employer's additional cost
    Total FICA SS: 12.4% split 50/50
    
  FICA — Medicare:
    Employee share: 1.45% of all wages (no wage cap)
    Employer share: 1.45% (matched)
    Additional Medicare Tax: 0.9% on employee wages >$200K (employee only; employer does not match)
    Total FICA Medicare: 2.9% basic split 50/50
    
  Federal Income Tax (FIT) Withholding:
    Based on employee's W-4 elections; payroll software calculates
    Remitted with FICA deposits
    
  Federal Unemployment Tax (FUTA — Form 940):
    Rate: 6.0% on first $7,000 of wages per employee per year
    Credit: Up to 5.4% credit if state unemployment (SUTA) is paid on time → effective federal rate 0.6%
    Net FUTA: 0.6% × $7,000 = $42/employee/year (at full credit)
    Filing: Annual (Form 940 due January 31); quarterly deposits if liability >$500
    
Federal deposit schedule — the most critical compliance element:
  Lookback period: Determine depositor type using total payroll taxes from the prior 4 quarters:
    Monthly depositor: <$50,000 in prior 4 quarters → deposit by 15th of following month
    Semi-weekly depositor: ≥$50,000 in prior 4 quarters → 
      Payday Wednesday-Friday: Deposit by following Wednesday
      Payday Saturday-Tuesday: Deposit by following Friday
    Next-Day Rule: If any single payday deposit exceeds $100,000 → deposit next business day regardless
    
  Most MBL portfolio companies at small scale: Monthly depositors
  As payroll grows: Monitor when the $50,000 threshold is crossed → switch to semi-weekly
  
  Payroll provider handles deposits automatically (Gusto/ADP/Paychex):
    Confirm this setting is ENABLED when the payroll provider is set up
    Monthly verification: Confirm tax deposits are showing in the bank statement and IRS EFTPS account
    IRS EFTPS: employers.gov — register each entity; view deposit history; Dr. Lewis reviews monthly
    
  IRS trust fund penalty (the personal liability risk):
    Payroll taxes withheld from employee paychecks are held in trust for the IRS
    If the company fails to deposit these funds, the IRS can assess the Trust Fund Recovery Penalty (TFRP)
    TFRP = 100% of the unpaid trust fund taxes
    TFRP is assessed PERSONALLY against anyone who is "responsible and willful" — 
      this can include Dr. Lewis, the CEO, or any officer who controls the company's financial decisions
    This is not dischargeable in bankruptcy
    Priority: Payroll tax deposits are the first obligation — above vendor payments, above rent
    
Quarterly 941 filing:
  Form 941 due dates:
    Q1 (January-March): April 30
    Q2 (April-June): July 31
    Q3 (July-September): October 31
    Q4 (October-December): January 31
    
  What 941 reports: All wages paid in the quarter, FICA withheld, FIT withheld, employer FICA, 
    deposits made in the quarter, any balance due or credit
  Balance: Deposits made during the quarter should equal the total taxes shown on the 941
  
  941 preparation (when payroll provider doesn't auto-file):
    Pull payroll tax summary for the quarter from the payroll provider
    Complete 941 in IRS e-file system or payroll provider's filing module
    Review: Total wages reported; FICA calculated correctly; deposits reconciled
    Dr. Lewis reviews and approves before submission
    
State payroll taxes:
  Arizona (primary state for Allevio; relevant for HIVE and Column6 employees):
    State income tax withholding: Based on AZ Form A-4; remit per AZ DOR schedule
    State unemployment tax (SUTA): AZ rate varies (new employers: 2.0%); on first $8,000 per employee
    AZ filing: Quarterly (Form UC-018 for unemployment); annual reconciliation
    
  Multi-state employees (remote workers): 
    Each state where an employee physically works may require registration and tax withholding
    Dr. Lewis works with the payroll provider and CPA to determine nexus for each state with remote employees
    
Year-end: W-2 and W-3:
  W-2: Individual employee statement — wages, taxes withheld, benefits values
  W-3: Summary transmittal sent to SSA with W-2s
  Deadline: January 31 — both to employees and to SSA (e-file if ≥10 W-2s)
  
  W-2 accuracy check:
    Total W-2 wages: Must match annual payroll register total gross wages
    Total withholding: Must match annual 941 withholding totals
    Box 12 codes: 401(k) contributions, health insurance (Section 125), etc.
    SSN verification: Confirm employee SSNs are correct before filing
```

## Output Format

```markdown
# Payroll Tax Compliance Report — [Entity] [Quarter/Year]
**Prepared by:** Dr. Lewis + [Controller/Payroll Provider]
**Report period:** [Q1/Q2/Q3/Q4 YYYY] | **Filing deadline:** [Date]

---

## FICA and FIT Summary

| Tax | Employee share | Employer share | Total |
|-----|--------------|---------------|-------|
| Social Security (6.2% each) | $[X] | $[X] | $[X] |
| Medicare (1.45% each) | $[X] | $[X] | $[X] |
| Federal Income Tax withheld | $[X] | — | $[X] |
| **Total federal payroll taxes** | **$[X]** | **$[X]** | **$[X]** |

---

## Deposit Compliance

| Period | Deposit type | Deposit amount | Deposit date | Status |
|--------|-------------|--------------|-------------|--------|
| [Jan 2026] | Monthly — due Feb 15 | $[X] | [Date] | ✅ On time / ❌ Late |
| [Feb 2026] | Monthly — due Mar 15 | $[X] | [Date] | ✅ On time |
| [Mar 2026] | Monthly — due Apr 15 | $[X] | [Date] | ✅ On time |

**EFTPS verification:** ✅ All deposits confirmed in IRS EFTPS as of [Date]

---

## Form 941 — Q[N] [YYYY]

| Line | Description | Amount |
|------|------------|--------|
| 2 | Total wages and tips | $[X] |
| 3 | Federal income tax withheld | $[X] |
| 5a | Taxable SS wages × 12.4% | $[X] |
| 5c | Taxable Medicare wages × 2.9% | $[X] |
| 6 | Total taxes before adjustments | $[X] |
| 13 | Total deposits for the quarter | $[X] |
| 14 | **Balance due / overpayment** | **$0 ✅ / $[X]** |

**Filed:** [Date] | **Filed by:** [Payroll provider / Dr. Lewis] | **Confirmation:** [#N]

---

## State Payroll Tax — Arizona

| Tax | Quarter | Amount | Filed | Status |
|-----|---------|--------|-------|--------|
| AZ state income tax withheld | Q[N] | $[X] | [Date] | ✅ |
| AZ SUTA | Q[N] | $[X] | [Date] | ✅ |

---

## IRS Notices (if any)

| Notice | Date received | Type | Amount | Status |
|--------|-------------|------|--------|--------|
| [CP200X] | [Date] | [Deposit discrepancy] | $[X] | [Resolved [Date] / Pending] |

---

## Year-End: W-2 Status ([If applicable])

| Milestone | Deadline | Status |
|-----------|----------|--------|
| W-2 accuracy review | Jan 20 | ✅/⚠️ |
| W-2 issued to employees | Jan 31 | ✅/⚠️ |
| W-2/W-3 filed with SSA | Jan 31 | ✅/⚠️ |
```

## Output Contract
- Payroll tax deposits are the first obligation — if the company has limited cash and must choose between paying a vendor or making a payroll tax deposit, the payroll tax deposit wins every time; vendor payments can be deferred (with relationship damage); payroll tax non-deposits create Trust Fund penalties that are personally assessed against Dr. Lewis and the CEO and are not dischargeable in bankruptcy; Dr. Lewis communicates this priority explicitly to the CEO of any portfolio company that experiences cash constraints — payroll taxes are not an area to conserve cash
- Verify EFTPS deposits monthly — a payroll provider that claims to be depositing taxes may have a configuration error, a bank feed issue, or a technical failure; "we use Gusto and they handle the taxes" is not a complete control; Dr. Lewis registers each company on EFTPS (employers.gov) and verifies that the expected deposits are showing in the EFTPS account balance each month; a month where no deposit appears for a company that ran payroll is an immediate flag to the payroll provider; the company is ultimately responsible for the deposit, not the provider
- Respond to IRS notices within 30 days — IRS payroll tax notices (CP200x, CP notices, letter 3174) have response deadlines; ignoring an IRS payroll tax notice escalates to a notice of intent to levy; Dr. Lewis reviews any IRS or state tax notice within 24 hours of receipt; assesses whether it is a legitimate discrepancy or an IRS error; responds with the appropriate documentation within 30 days (or sooner if the notice deadline is shorter); Matt Mathison is notified of any IRS payroll tax notice with an amount >$1,000
- HITL required: Payroll provider (Gusto/ADP/Paychex) handles the deposit mechanics; Dr. Lewis verifies EFTPS deposits monthly; Dr. Lewis reviews and approves 941 before filing (when not auto-filed by payroll provider); Dr. Lewis responds to all IRS and state payroll tax notices; Matt Mathison notified of IRS notices >$1,000 and any Trust Fund investigation; CEO signs any IRS authorization forms

## System Dependencies
- **Reads from:** Payroll provider (quarterly payroll tax summary, deposit records); IRS EFTPS (deposit confirmation); prior 941 returns; W-4 elections on file; IRS and state notices (if received); AZ DOR filings
- **Writes to:** Form 941 (IRS e-file or payroll provider filing module); AZ state payroll tax returns; EFTPS verification records; IRS notice responses; W-2/W-3 (e-file with SSA); Matt Mathison notice alerts
- **HITL Required:** Dr. Lewis verifies EFTPS monthly and reviews/approves 941 filings; Matt Mathison notified of IRS notices >$1,000; CEO signs IRS authorization forms; payroll provider handles mechanics but Dr. Lewis owns the compliance verification

## Test Cases
1. **Golden path:** Allevio Q1 2026 payroll tax cycle → Jan-Mar: Gusto handles bi-weekly payroll and deposits payroll taxes on the monthly depositor schedule (small employer); Dr. Lewis logs into EFTPS January 20, confirms January deposit of $8,240 posted ✅; February 20 confirms $8,390 ✅; March 20 confirms $8,300 ✅; total Q1 deposits $24,930; Q1 941 preparation: Gusto generates 941 draft; Dr. Lewis reviews: total wages $328,000; FIT withheld $28,400; FICA total $50,160; combined $78,560; deposits $24,930 + $25,120 + $28,510 = $78,560; balance due $0 ✅; Dr. Lewis approves; Gusto files April 25 (before April 30 deadline); confirmation received; quarter complete
2. **Edge case:** IRS sends a CP200X notice showing that Allevio's Q3 2025 941 has a $4,200 discrepancy → Dr. Lewis receives the notice; reviews immediately: the IRS computed a different total tax than what was filed; Dr. Lewis pulls the Q3 2025 payroll records and the filed 941; discovers the issue: a $15,000 one-time bonus paid in September was not included in the 941 wages (payroll provider error); the discrepancy is legitimate ($15,000 × 28% = $4,200 tax); Dr. Lewis corrects the 941 by filing a 941-X (amended return); pays the balance $4,200 plus interest; notifies the CEO; notifies Matt Mathison (>$1,000 notice); investigates why the bonus payroll wasn't included in the payroll provider's quarterly summary; implements: Dr. Lewis manually reconciles annual payroll register to 941 filings each year before Q4 close
3. **Adversarial:** CEO wants to delay paying the Q2 payroll tax deposit by 60 days because "we're tight on cash" → This is a Trust Fund recovery penalty situation; Dr. Lewis clearly explains: "Payroll taxes are held in trust for the IRS — they're not our money to hold. If we don't deposit them by the due date, we face penalties starting at 2% and escalating to 15%, and I'm personally liable under the Trust Fund Recovery Penalty. We can defer vendor payments, negotiate with suppliers, draw on the credit line, or pursue any other option — but payroll taxes have to be deposited on time. Let me show you the other cash management options." Dr. Lewis presents the 13-week cash flow forecast and the alternative levers (accelerate collections, defer vendor AP, credit line draw); if the CEO insists on delaying the payroll tax deposit, Dr. Lewis notifies Matt Mathison immediately and refuses to authorize the delay

## Audit Log
All 941 and state payroll tax returns retained for 7 years. Deposit records (EFTPS confirmations) retained. W-2/W-3 filings retained. IRS and state notice responses retained permanently. Trust Fund compliance records retained permanently. Any payroll tax penalty assessments retained.

## Deprecation
Retire when each portfolio company has a controller and payroll provider who handle compliance mechanics — with Dr. Lewis verifying EFTPS monthly and approving quarterly 941 filings.
