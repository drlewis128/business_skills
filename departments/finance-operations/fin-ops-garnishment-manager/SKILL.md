---
name: fin-ops-garnishment-manager
description: "Process wage garnishments — child support, IRS levies, and creditor garnishments. Use when the user says 'garnishment', 'wage garnishment', 'child support garnishment', 'IRS levy', 'creditor garnishment', 'income withholding order', 'IWO', 'garnishment order', 'process garnishment', 'wage attachment', 'student loan garnishment', 'court garnishment order', 'garnishment compliance', 'garnishment calculation', 'employee garnishment', or 'withholding order'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--type <child-support|irs-levy|creditor>] [--amount <$>]"
---

# Garnishment Manager

Process wage garnishments for MBL portfolio companies — correctly handling income withholding orders (child support), IRS levies, and creditor garnishments while protecting employee privacy and maintaining legal compliance. Wage garnishments are among the most legally specific payroll obligations: the employer is a third party between the employee and the garnishing authority; failure to comply can make the employer personally liable for the amount that should have been withheld; incorrect calculation of withholding limits can expose the company to employee claims. Dr. Lewis treats every garnishment order as a priority legal obligation.

## When to Use
- The company receives an Income Withholding Order (IWO) or garnishment notice for an employee
- Calculating how much to withhold from an employee's paycheck
- Remitting garnishment funds to the appropriate agency
- An employee questions their garnishment deduction
- Multiple garnishments are received for the same employee (prioritization rules apply)

## Garnishment Processing Framework

```
Types of garnishments and their legal priority:
  
  Priority 1 — Child Support and Alimony (Income Withholding Orders, IWOs):
    Governed by: Title III CCPA (Consumer Credit Protection Act)
    Withholding limit: Up to 60% of disposable earnings (50% if supporting another family)
      Plus 5% additional if >12 weeks in arrears
    Remittance: To the state child support enforcement agency (electronic preferred)
    Response deadline: Must begin withholding no later than the first payday after 14 days of receipt
    Employer must: Begin withholding; notify the state if the employee terminates; do not fire the employee for 1 garnishment
    
  Priority 2 — Federal Tax Levy (IRS Form 668-W):
    Governed by: IRC Section 6332
    Withholding amount: IRS provides a Publication 1494 table showing how much the employee can exempt
      Exempt amount: Based on filing status and pay period (weekly, bi-weekly, etc.)
      Withholding = Disposable earnings − exempt amount per Publication 1494
    Remittance: To IRS (EFTPS or check to the address on the levy)
    Response: Must respond to the levy notice within 3 days (return the Statement of Exemptions form to IRS)
    Employer cannot: Ignore an IRS levy; penalty for non-compliance = employer is liable for the levy amount
    
  Priority 3 — State Tax Levy:
    Similar to federal tax levy; governed by state law; withholding limits vary by state
    
  Priority 4 — Creditor Garnishments (court orders):
    Governed by: Title III CCPA (disposable earnings limits)
    Withholding limit: Lesser of (a) 25% of disposable earnings OR (b) amount by which disposable earnings exceed 30× the federal minimum wage
    Priority: Below child support and tax levies
    
  Priority 5 — Student Loan Garnishments:
    Title III CCPA limits apply; 15% of disposable earnings
    Federal student loans: Administrative wage garnishment (AWG) — no court order required
    
  Disposable earnings definition:
    Gross earnings − mandatory deductions (federal, state, and local taxes + Social Security + Medicare)
    Note: Health insurance, 401(k), and other voluntary deductions are NOT subtracted for CCPA purposes
    
Withholding calculation example (bi-weekly employee):

  Gross pay: $2,800/bi-weekly
  Federal income tax: $280; FICA: $214; State tax: $84
  Mandatory deductions: $578
  Disposable earnings: $2,800 − $578 = $2,222
  
  Child support order: 40% of disposable earnings = $2,222 × 40% = $888.80/pay period
  IRS levy (simultaneously): Exempt per Publication 1494 (married, 3 allowances, bi-weekly) = $1,115
    Levy amount: $2,222 − $1,115 = $1,107 — BUT child support takes priority
    After child support: Remaining disposable = $2,222 − $888.80 = $1,333.20
    IRS levy applies to remaining: $1,333.20 − $1,115 (exempt) = $218.20
  Total withholding: $888.80 (child support) + $218.20 (IRS levy) = $1,107/pay period
  Net employee pay: $2,800 − $578 (taxes) − $1,107 (garnishments) = $1,115 (above poverty floor)
  
  Note: CCPA limits total garnishments to prevent the employee from receiving nothing
  
Processing steps:

  Step 1 — RECEIVE THE ORDER:
    Review the order type; confirm it is addressed to the correct employer (legal entity name)
    Child support IWO: Confirm state and case number
    IRS levy: Confirm employee name and SSN (match to employee records)
    
  Step 2 — NOTIFY THE EMPLOYEE (immediately):
    Inform the employee that you have received a garnishment order
    Do NOT disclose the nature of the debt or creditor beyond what is legally required
    Provide the exemption form if applicable (IRS levy: provide Publication 1494 table)
    
  Step 3 — CALCULATE THE WITHHOLDING:
    Apply the garnishment type's calculation rules (above)
    If multiple garnishments: Apply priority rules; calculate in order
    Confirm: Total withholding does not exceed CCPA limits
    
  Step 4 — BEGIN WITHHOLDING:
    Child support: Within 14 days of receipt (or first payday after)
    IRS levy: Next payroll cycle
    Creditor/other: Next payroll cycle
    
  Step 5 — REMIT TO THE APPROPRIATE AGENCY:
    Child support: To the state child support disbursement unit; by the state deadline (usually within 7 days of withholding)
    IRS levy: To IRS via EFTPS or the address on the levy; within 10 days of withholding
    Creditor: To the court or creditor's attorney per the order
    
  Step 6 — RECORD IN PAYROLL SYSTEM:
    Enter the garnishment as a deduction in the payroll system
    Label clearly (for privacy: use a generic label in payroll system if the employee can see their pay stub detail)
    
  Employment protection:
    Employee cannot be fired for ONE garnishment (all types)
    Employee can be fired for TWO or more garnishments — but Dr. Lewis recommends HR consultation before any termination for garnishments
```

## Output Format

```markdown
# Garnishment Processing — [Employee Name — CONFIDENTIAL]
**Entity:** [Company] | **Date received:** [Date] | **Processed by:** Dr. Lewis

---

## Garnishment Details

| Field | Value |
|-------|-------|
| Order type | [Child Support / IRS Levy / Creditor / State Tax] |
| Issuing authority | [State CSEA / IRS / [Court name] / [State DOR]] |
| Case number | [N] |
| Withholding start date | [Date] |
| Withholding amount | $[X]/pay period (calculated below) |
| Remittance recipient | [State disbursement unit / IRS / Attorney X] |
| Remittance deadline | Within [7/10] days of withholding |

---

## Withholding Calculation

| Step | Description | Amount |
|------|------------|--------|
| Gross pay (bi-weekly) | | $[X] |
| − Federal income tax | | −$[X] |
| − FICA (SS + Medicare) | | −$[X] |
| − State income tax | | −$[X] |
| **Disposable earnings** | | **$[X]** |
| | | |
| Garnishment type | [Child support — 40% of disposable] | |
| Withholding limit (CCPA) | [60% of disposable] | $[X] maximum |
| **Garnishment amount** | **Per the order** | **$[X]/pay period** |

---

## Multi-Garnishment Priority (if applicable)

| Priority | Garnishment | Amount | Status |
|---------|------------|--------|--------|
| 1 | Child support | $[X] | Active |
| 2 | IRS levy | $[X] | Active — calculated on remaining after Priority 1 |
| CCPA check | Total garnishments | $[X] | ≤ [X]% of disposable ✅ |

---

## Payroll System Setup

**Deduction added to payroll:** ✅ [Date] — labeled "[CS Withholding / Tax Levy Withholding]"
**Employee notified:** ✅ [Date] — [verbal notification / letter]

---

## Remittance Record

| Date | Amount | To | Method | Confirmation |
|------|--------|-----|--------|-------------|
| [Date] | $[X] | [State CSEA / IRS] | [ACH / Check] | [Confirmation #] |
```

## Output Contract
- Begin withholding by the legal deadline — child support garnishments require withholding to begin within 14 days; IRS levies apply to the next payroll cycle; missing these deadlines makes the employer liable for the amounts that should have been withheld; Dr. Lewis reviews every garnishment order within 24 hours of receipt, confirms the order type and calculation, and sets up the withholding before the next payroll is submitted; if a garnishment order is received the day of payroll submission, Dr. Lewis evaluates whether to apply it to the current cycle or the next cycle based on the legal deadline
- Remit to the correct authority on time — garnishment funds withheld from an employee's paycheck are held in trust for the garnishing authority; failing to remit (or remitting to the wrong address) creates employer liability; Dr. Lewis confirms the remittance address, method, and deadline for each garnishment order; child support funds are remitted to the state child support disbursement unit (not to the custodial parent directly); IRS levy funds go to EFTPS or the address on Form 668-W; creditor funds go per the court order
- Employee privacy — garnishment orders contain sensitive personal information; Dr. Lewis keeps garnishment records confidential and does not discuss the nature of a garnishment with other employees or managers; the payroll system label should be generic ("Withholding Order") not specific ("Child Support"); the employee is notified that a garnishment order was received and that withholding will begin, but Dr. Lewis does not advise the employee on their personal financial situation or the debt itself
- HITL required: Dr. Lewis receives and processes all garnishment orders personally; any garnishment order that is ambiguous (wrong legal entity, unclear amount calculation, conflicting orders) is reviewed with legal counsel before processing; employee notification is done by Dr. Lewis; termination decisions related to garnishments require HR and CEO involvement; Matt Mathison is not typically involved unless the situation involves an executive employee

## System Dependencies
- **Reads from:** Garnishment order (IWO, IRS Form 668-W, court order); employee payroll records (pay period, gross pay, mandatory deductions); IRS Publication 1494 (levy exemption table); state child support remittance instructions; payroll system (for deduction setup)
- **Writes to:** Payroll system (garnishment deduction configured); state child support disbursement unit (remittance); IRS EFTPS (tax levy remittance); court/creditor attorney (creditor remittance); employee notification letter; garnishment processing log (confidential — SharePoint/HR/Confidential/<Employee>/Garnishments/)
- **HITL Required:** Dr. Lewis processes all garnishments; legal counsel consulted for ambiguous orders; employee notification by Dr. Lewis; termination decisions require CEO and HR involvement

## Test Cases
1. **Golden path:** Allevio receives an IWO for a medical assistant — child support of 35% of disposable earnings → Dr. Lewis receives the IWO; confirms: correct legal entity, correct employee name and SSN; order: 35% of disposable; calculates: employee gross bi-weekly $1,800; mandatory deductions (taxes + FICA) = $290; disposable = $1,510; 35% = $528.50/pay period; CCPA limit: 60% of $1,510 = $906 — $528.50 < $906 ✅; Dr. Lewis notifies the employee personally and confidentially: "We received a withholding order from [state CSEA] and are required by law to withhold $528.50 per pay period starting next payday. This is a legal requirement and we have no discretion. Please contact [state CSEA] directly if you have questions about the order."; payroll deduction added in Gusto; first withholding on next Friday payroll; remitted to state CSEA within 7 days of withholding; remittance recorded; garnishment processing log updated
2. **Edge case:** Employee has both a child support order (35% of disposable) and an IRS levy simultaneously → Multi-garnishment priority calculation: disposable earnings $1,510; Step 1 — child support (Priority 1): 35% × $1,510 = $528.50; remaining disposable: $1,510 − $528.50 = $981.50; Step 2 — IRS levy (Priority 2): lookup Publication 1494 for bi-weekly employee, single, 1 allowance → exempt amount $610; levy amount = $981.50 − $610 = $371.50; CCPA check: total garnishments = $528.50 + $371.50 = $900; CCPA limit = 25% rule doesn't apply because tax levy and child support are priority orders; CCPA limit for these priority orders = up to 60% of disposable = $906; $900 < $906 ✅ (barely); employee net take-home after taxes and garnishments: $1,800 − $290 (taxes) − $900 (garnishments) = $610; Dr. Lewis confirms this is above the federal poverty protection floor; both garnishments set up in payroll; child support remitted to state CSEA; IRS levy remitted to EFTPS
3. **Adversarial:** Employee asks Dr. Lewis to "stop the garnishment" because they're working out a deal with the other parent → Dr. Lewis explains: "I understand this is a difficult situation, but I'm legally required to withhold and remit as long as the Income Withholding Order is active. The only way I can stop withholding is if I receive a termination notice from the [state CSEA] or a court order. If you've made an agreement with the other parent, the modification needs to go through the court system — once I receive an official termination or modification from the issuing authority, I'll update the withholding immediately." Dr. Lewis does not stop withholding based on the employee's verbal statement, regardless of the reason; the legal obligation is to the issuing authority, not to the employee; Dr. Lewis is sympathetic but firm

## Audit Log
All garnishment orders retained permanently (copy of the original order). Calculation worksheets retained. Remittance records retained permanently. Employee notification records retained. Multi-garnishment priority calculations retained. Any legal counsel consultation retained.

## Deprecation
Retire when each portfolio company has a controller or HR professional who processes garnishments — with Dr. Lewis reviewing any multi-garnishment situation or ambiguous order before processing.
