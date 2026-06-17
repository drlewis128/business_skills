---
name: fin-ops-benefits-reconciler
description: "Reconcile employee benefits — carrier invoices, payroll deductions, and enrollment accuracy. Use when the user says 'benefits reconciliation', 'reconcile benefits', 'carrier invoice', 'health insurance reconciliation', 'benefits billing', '401k reconciliation', 'benefits audit', 'employee benefits billing', 'insurance premium reconciliation', 'benefits deductions', 'open enrollment audit', 'HSA reconciliation', 'FSA reconciliation', 'dental reconciliation', 'vision reconciliation', 'benefits discrepancy', 'wrong benefits charge', or 'benefits billing error'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--benefit <health|dental|vision|401k|hsa|all>] [--period <MM-YYYY>]"
---

# Benefits Reconciler

Reconcile employee benefits for MBL portfolio companies — confirming that carrier invoices match enrolled employees, payroll deductions match elections, and the company is not over- or under-paying for benefits. Benefits billing errors are common and expensive: carriers continue billing for terminated employees for months; open enrollment changes take weeks to propagate correctly; a new hire is enrolled at 30 days but the carrier starts billing at 60 days; the company's payroll deductions don't match the carrier invoice; these discrepancies accumulate into material overcharges. Dr. Lewis catches and corrects these errors monthly as part of the financial close.

## When to Use
- Monthly close — reconcile all carrier invoices before posting benefits expense
- A new employee is enrolled in benefits (confirm carrier enrollment is correct)
- A terminated employee — confirm carrier billing stops immediately
- Open enrollment — reconcile the new plan year elections to carrier invoices
- A carrier invoice appears higher than expected

## Benefits Reconciliation Framework

```
Benefits reconciliation logic:
  Carrier invoice (what the carrier says we owe)
  vs. 
  Internal enrollment roster (who we believe is enrolled, per payroll system/HR records)
  
  Discrepancy types:
    Carrier billing for a terminated employee: Carrier is behind; credit request required
    Carrier not billing for a newly enrolled employee: May catch up retroactively; confirm enrollment
    Premium rate discrepancy: Carrier charged the wrong tier (employee-only vs. employee + family)
    Missing dependent: Enrollment system shows dependent; carrier not billing for dependent
    
Common benefit types to reconcile:

  HEALTH INSURANCE (primary — highest dollar value):
    Carrier: [UnitedHealthcare / BCBS / Cigna / Aetna / AZ Blue Cross etc.]
    Invoice: Monthly premium by employee + tier (individual, employee + spouse, family)
    Payroll deduction: Employee's share withheld from paycheck; employer pays the rest
    Reconciliation: Carrier invoice total = (Employer share × enrolled employees) + (Employee share matches payroll deductions)
    
    Terminated employee billing: Most carriers bill the full month regardless of termination date mid-month
    The employer must request a pro-rated credit for the remaining days after termination
    COBRA notification: Required within 44 days of qualifying event (termination); carrier or third-party administrator typically handles
    
  DENTAL AND VISION:
    Same reconciliation process as health insurance; smaller dollar values but same billing error patterns
    
  401(k) / RETIREMENT PLAN:
    Employee deferrals: Match payroll register deferral amounts to 401(k) plan recordkeeper report
    Employer match: Calculate employer match per the plan document; confirm it was transmitted correctly
    Transmission deadline: Employee 401(k) deferrals must be remitted to the plan within 15 business days of payday (IRS rule); employer should target 7 business days; late remittance is a DOL violation
    Annual reconciliation: Total contributions to plan for the year (W-2 Box 12 Code D) must match plan records
    
  HSA / FSA:
    Employee elections per open enrollment; per-pay-period contributions
    HSA: Employee owns; contributions must not exceed annual IRS limit ($4,150 individual / $8,300 family for 2024)
    Employer contributions to HSA (if any): Confirm they match the benefit plan design
    FSA: Use-it-or-lose-it (with grace period); reconcile employee elections to plan deductions
    
Monthly reconciliation process:

  Step 1: Receive carrier invoice (typically arrives 1st-5th of each month for the current month's coverage)
  Step 2: Pull the current enrollment roster from the HR system or payroll provider
  Step 3: Line-by-line comparison: Carrier's roster vs. internal roster
    ☐ Same employees? (Carriers and HR system should match)
    ☐ Same tier for each employee? (Individual, employee+1, family)
    ☐ Same premium rates? (Open enrollment rates in effect for this plan year)
    ☐ Terminated employees: Are they still on the carrier invoice?
    ☐ New hires: Are they on the carrier invoice at the correct start date?
  Step 4: Calculate: Employer share = Total invoice − Total employee deductions (from payroll)
  Step 5: Confirm: Employee deductions on the last payroll register match the expected deduction amounts
  Step 6: Post the employer share to QuickBooks (debit Employee Benefits Expense; credit AP or Cash)
  Step 7: Flag any discrepancy and request a credit/correction from the carrier
  
Open enrollment reconciliation (November-December for January 1 plan year):
  New rates effective January 1
  New elections from employees (if plan design changed)
  Confirm: January carrier invoice reflects new rates and updated elections
  Update payroll deductions to reflect new employee shares effective January 1
  Watch for: Employees who didn't submit elections defaulting to prior year elections (or losing coverage)
```

## Output Format

```markdown
# Benefits Reconciliation — [Entity] [Month] [Year]
**Reconciled by:** [Controller] | **Reviewed by:** Dr. Lewis | **Date:** [Date]

---

## Health Insurance Reconciliation — [Carrier Name]

| Employee | Tier | Carrier invoice | Internal roster | Match? | Issue |
|---------|------|----------------|----------------|--------|-------|
| [Name A] | Individual | $542 | $542 | ✅ | — |
| [Name B] | Employee + Family | $1,380 | $1,380 | ✅ | — |
| [Terminated — Smith, J.] | Individual | $542 | Not enrolled | ❌ | Terminated 5/31; carrier still billing |
| [New hire — Jones, M.] | Individual | Not on invoice | $542 enrolled | ⚠️ | Starting 6/15; may appear on July invoice |

**Carrier invoice total:** $[X]
**Internal roster expected total:** $[X]
**Discrepancy:** $542 (Smith, J. — terminated)
**Credit request:** Submitted to [Carrier] on [Date] for $542 (June coverage for Smith, J. terminated 5/31)

---

## Employer vs. Employee Share

| | Monthly |
|---|---------|
| Total carrier invoice (health) | $[X] |
| − Employee payroll deductions (health) | −$[X] |
| **Employer health insurance expense** | **$[X]** |

**QuickBooks entry:** ✅ Posted [Date] / ❌ Pending

---

## 401(k) Reconciliation

| | Pay period 1 | Pay period 2 | Total |
|---|------------|------------|-------|
| Employee deferrals — payroll | $[X] | $[X] | $[X] |
| Employer match | $[X] | $[X] | $[X] |
| **Total contributions** | | | **$[X]** |

**Transmitted to plan by:** [Date] (within 7 business days of payday ✅ / ❌ Late — investigate)
**Match with plan recordkeeper:** ✅ / ❌ Discrepancy — $[X]

---

## Issues and Credit Requests

| Issue | Amount | Action | Status |
|-------|--------|--------|--------|
| Smith, J. terminated 5/31 — still on June invoice | $542 | Credit request submitted | Pending |
| Jones, M. not yet on June invoice | $0 | Monitor July invoice | Pending |

---

## Monthly Benefits Expense Summary

| Benefit | Employer cost | Posted to QuickBooks |
|---------|-------------|---------------------|
| Health insurance | $[X]K | ✅ |
| Dental | $[X] | ✅ |
| Vision | $[X] | ✅ |
| 401(k) employer match | $[X] | ✅ |
| **Total benefits expense** | **$[X]K** | ✅ |
```

## Output Contract
- Terminate coverage immediately and request a credit — when an employee is terminated, the carrier must be notified immediately; most carriers continue billing until they receive a termination notification, and most bill the full month even if the employee was terminated on Day 5; Dr. Lewis expects the controller to notify the carrier within 24 hours of any termination and to request a pro-rated credit for the days after termination; uncorrected termination billing accumulates: 3 terminated employees × $600/month × 3 months of uncorrected billing = $5,400 of overpaid premiums; carriers will issue credits but only when asked
- 401(k) deferrals must be remitted within 7 business days — the DOL requires that employee 401(k) deferrals be remitted to the plan as soon as they can reasonably be segregated from company funds, and no later than 15 business days after the payroll period; Dr. Lewis targets 7 business days; late remittances are a DOL violation that triggers a prohibited transaction — the company must self-correct and file Form 5330 (which includes an excise tax on the late amount); Dr. Lewis monitors 401(k) remittance dates with the same attention as payroll tax deposits
- Monthly reconciliation catches errors before they compound — a carrier billing error caught in Month 1 results in a $600 credit request; the same error undetected for 6 months results in a $3,600 credit request, a carrier that is reluctant to issue such a large retroactive credit, and a financial restatement if the excess was already recorded as expense; Dr. Lewis requires monthly benefits reconciliation as part of the financial close (between BD2 and BD4) so that the benefits expense recorded in QuickBooks is accurate
- HITL required: Controller performs the monthly reconciliation; Dr. Lewis reviews any reconciliation with a total discrepancy >$500; credit requests >$1,000 are approved by Dr. Lewis before submission; 401(k) remittance dates confirmed by Dr. Lewis; any DOL violation (late 401(k) remittance) escalated to Dr. Lewis immediately for self-correction; open enrollment changes reviewed by Dr. Lewis after each annual open enrollment to confirm the January invoices reflect the new elections

## System Dependencies
- **Reads from:** Carrier invoices (health, dental, vision — carrier portal or mail); HR enrollment records (payroll provider or HRIS); payroll deduction amounts (payroll register); 401(k) recordkeeper reports; prior month reconciliation
- **Writes to:** QuickBooks (employer benefits expense entries); carrier credit requests (email/carrier portal); 401(k) plan remittance (plan recordkeeper portal); reconciliation file (SharePoint/Finance/<Company>/Benefits/[Month]/); DOL self-correction documentation (if applicable)
- **HITL Required:** Controller reconciles; Dr. Lewis reviews discrepancies >$500 and approves credit requests >$1,000; 401(k) remittance timing confirmed by Dr. Lewis; DOL violations escalated to Dr. Lewis immediately

## Test Cases
1. **Golden path:** Allevio June 2026 benefits reconciliation → Carrier invoice received June 3: total $8,240 for 12 employees; controller pulls HR enrollment roster: 12 employees enrolled ✅; tier comparison: all match ✅; premium rates: match January open enrollment rates ✅; no terminated employees on invoice ✅; no new hires in June (next hire starts July 1) ✅; total matches ✅; employer share: $8,240 invoice − $1,640 employee payroll deductions = $6,600 employer expense; QuickBooks entry posted: Debit Employee Benefits $6,600; Credit AP $6,600; 401(k): June deferrals $4,800 + employer match $960 = $5,760; transmitted to Fidelity June 19 (7 business days after June 13 payday ✅); recordkeeper confirms $5,760 received; reconciliation complete; all clean
2. **Edge case:** Open enrollment was in November; January invoice arrives and the premium is $450 more than December because 2 employees upgraded from individual to employee + family coverage → Controller verifies: both employees submitted election change forms in November; HR records show the upgrade was approved; the carrier invoice reflects the new tier at the new plan year rate; the discrepancy vs. prior month is expected and documented; payroll deductions are updated in the January payroll (employee share of family tier is $280/month vs. $110/month for individual); no credit request needed — this is a valid plan change; the January QuickBooks entry reflects the new higher employer expense; close complete
3. **Adversarial:** A terminated employee calls 3 months after their termination and says they never received COBRA paperwork → Allevio's COBRA obligation: notify the terminated employee of COBRA rights within 14 days of the qualifying event notification to the plan; if COBRA paperwork was not sent, Allevio is in violation; Dr. Lewis immediately contacts the benefits broker or COBRA administrator: was the notification sent? If yes — provide proof of mailing to the employee; if no — issue the COBRA election notice immediately and document the delay; the employee has 60 days from receipt of the COBRA notice to elect coverage, and if they have had medical claims in the intervening 3 months without coverage, they may be able to back-elect COBRA (retroactively); Dr. Lewis notifies the CEO and Matt Mathison of the potential COBRA compliance gap; implements: add COBRA notification confirmation to the termination checklist

## Audit Log
All carrier invoices and reconciliations retained. Credit requests and carrier responses retained. 401(k) remittance confirmations retained. COBRA notification records retained permanently. Open enrollment documentation retained by plan year. DOL self-correction records retained permanently (7 years minimum).

## Deprecation
Retire when each portfolio company has an HR/benefits administrator who manages carrier billing — with the controller reconciling monthly and Dr. Lewis reviewing discrepancies >$500.
