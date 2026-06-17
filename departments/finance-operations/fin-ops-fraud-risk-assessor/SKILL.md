---
name: fin-ops-fraud-risk-assessor
description: "Assess fraud risk — identify red flags, preventive controls, and detection mechanisms. Use when the user says 'fraud risk', 'assess fraud', 'fraud prevention', 'fraud detection', 'internal fraud', 'occupational fraud', 'fraud red flags', 'embezzlement risk', 'fraud controls', 'fraud assessment', 'anti-fraud', 'fraud indicators', 'fraud audit', 'suspicious transactions', 'fraud exposure', 'fraud vulnerability', 'fraud mitigation', 'financial fraud', or 'fraud review'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--area <ap|payroll|ar|expenses|all>] [--trigger <routine|incident|acquisition|audit>]"
---

# Fraud Risk Assessor

Assess fraud risk for MBL portfolio companies — identifying the specific fraud vulnerabilities in the AP, payroll, AR, and expense processes, designing preventive controls, and establishing detection mechanisms that catch fraud early when it occurs. Fraud in small PE portfolio companies is not rare — the ACFE (Association of Certified Fraud Examiners) reports that companies with fewer than 100 employees have the highest median fraud loss ($200,000 per incident) because the small-company control environment is weaker. The typical fraud is perpetrated by a trusted employee who has been with the company for years, not by an outsider. Dr. Lewis takes fraud risk seriously at every portfolio company and treats the controls designed in fin-ops-internal-controls-designer as the primary preventive layer.

## When to Use
- New portfolio company acquisition — assess fraud risk as part of Day 30 due diligence
- A bank reconciliation or expense audit surfaces a suspicious transaction
- A key financial employee departs unexpectedly
- Quarterly control testing (fin-ops-internal-controls-designer) reveals a control gap
- An IRS notice or audit triggers investigation
- Matt Mathison requests a fraud risk review

## Fraud Risk Assessment Framework

```
Fraud triangle: Every fraud requires all three elements:
  1. Pressure: Financial need, lifestyle inflation, external pressure
  2. Opportunity: Access to assets and weak or absent controls
  3. Rationalization: "I'll pay it back," "they owe me," "no one will notice"
  
Controls address Opportunity — the only element the employer can control directly

Highest-risk fraud schemes at small PE portfolio companies (ranked by frequency and cost):

  RANK 1 — Billing Schemes (AP Fraud):
    Definition: Employee creates fictitious vendor; submits fake invoices; approves payment to themselves
    How it works: Employee adds a new vendor (their own LLC or a relative's); codes invoices for 
      "consulting services" or "IT support" with no actual services delivered; approves the payment 
      if they have approval authority; or submits for CEO approval with inadequate scrutiny
    Detection: Vendor master audits; duplicate address/bank account detection; 
      invoices with no associated PO or contract; vendors with only one approver and no competing bids
    Prevention: Segregation of duties (vendor setup ≠ invoice approval ≠ payment execution);
      Dr. Lewis quarterly vendor audit; W-9 requirement; annual vendor list review
    Red flags: New vendor added just before a large invoice; vendor at residential address; 
      vendor has no website or online presence; invoice amounts just below approval thresholds
      
  RANK 2 — Payroll Fraud:
    Subtype A — Ghost employees: Non-existent employee added to payroll; wages paid to fraudster
    Subtype B — Pay rate manipulation: Employee changes their own pay rate in the payroll system
    Subtype C — Hours inflation: Timesheet submitted with more hours than worked
    Detection: Payroll register comparison to HR headcount list (Dr. Lewis review each cycle);
      manager approval of timesheets before submission; Dr. Lewis pre-submission payroll review
    Prevention: Dr. Lewis reviews payroll register against HR roster before every submission;
      only CEO can add new employees to payroll; pay rate changes require CEO written authorization
    Red flags: Employee whose pay rate changed without corresponding CEO authorization;
      employee working unusually high overtime consistently; paycheck going to an address or bank 
      account different from normal
      
  RANK 3 — Expense Reimbursement Fraud:
    Definition: Employee submits personal expenses as business expenses; falsifies receipts; 
      submits duplicate receipts
    Detection: Expense report audit (fin-ops-expense-auditor) with receipt validation;
      duplicate receipt detection; unusual expense patterns
    Prevention: Require original itemized receipts; manager approval before finance;
      Dr. Lewis reviews all CEO expense reports; periodic expense audit sampling
    Red flags: Round-number expenses; expenses at non-business hours or locations;
      same restaurant/vendor appearing frequently on expense reports (personal habit);
      expense totals that arrive just below approval thresholds
      
  RANK 4 — Cash Skimming (AR Fraud):
    Definition: Employee intercepts cash or checks from customers; records only a portion;
      keeps the difference
    Risk: Highest at Allevio (patient cash co-pays); lower at HIVE and Column6 (no cash transactions)
    Detection: AR reconciliation; mystery shopping; direct confirmation from customers;
      bank reconciliation (cash should match receipts)
    Prevention: Segregate cash handling from AR recording; deposit same day;
      use a cash receipt log; restrict cash handling to multiple employees simultaneously
    Red flags: Customers who paid but whose accounts still show as outstanding;
      patterns of small, round-number credits or write-offs; patient complaints about balance discrepancies
      
  RANK 5 — Financial Statement Fraud:
    Definition: Management deliberately misrepresents financial statements (inflate revenue, hide losses)
    Risk: Low at portfolio company level when Dr. Lewis and Matt Mathison have independent access to QuickBooks
    Detection: Monthly financial review by Dr. Lewis; variance explanations; CPA review/audit;
      independent bank statement review by CEO and Dr. Lewis
    Prevention: Independent financial oversight by Dr. Lewis; CPA engagement; LP reporting with FMV
    Red flags: Consistent favorable variances that Dr. Lewis cannot explain from operational data;
      requests to delay or modify close timing; requests to reclassify expenses
      
Risk scoring framework:

  For each fraud type: Score Likelihood (1-3) × Impact (1-3) = Risk Score (1-9)
  Likelihood: 1=Low (strong controls); 2=Medium; 3=High (weak/no controls)
  Impact: 1=<$10K; 2=$10K-$100K; 3=>$100K
  
  Priority: Risk Score 7-9 = Immediate control implementation; 4-6 = Within 90 days; 1-3 = Annual review
  
Response when fraud is suspected or confirmed:

  SUSPECTED:
    Do not discuss suspicion with the employee or their colleagues
    Preserve evidence: Do not delete transactions; do not warn the employee
    Dr. Lewis conducts quiet investigation: pull all transactions involving the suspected employee;
      look for the specific scheme; confirm with documentary evidence
    
  CONFIRMED:
    Stop the access: Revoke system access (QuickBooks, Bill.com, bank, payroll) immediately
    Notify CEO and Matt Mathison immediately — not in writing first, call first
    Preserve evidence: Secure documents before the employee can destroy them
    Engage outside counsel (Dr. Lewis recommendation): Small business fraud cases often involve 
      employee theft that may warrant law enforcement referral and/or civil recovery action
    Insurance: Check if the company has employee dishonesty coverage (often called fidelity bond);
      file a claim if covered
    Employee action: HR decision by CEO + Matt Mathison (termination, law enforcement referral);
      Dr. Lewis provides the financial evidence
```

## Output Format

```markdown
# Fraud Risk Assessment — [Entity]
**Date:** [Date] | **Trigger:** [Routine / Acquisition / Incident / Control test gap]
**Assessed by:** Dr. Lewis

---

## Risk Summary

| Fraud type | Likelihood (1-3) | Impact (1-3) | Risk score | Priority |
|-----------|-----------------|-------------|-----------|---------|
| Billing / AP fraud | [1-3] | [1-3] | [1-9] | Immediate/90-day/Annual |
| Payroll fraud | [1-3] | [1-3] | [1-9] | |
| Expense reimbursement fraud | [1-3] | [1-3] | [1-9] | |
| Cash skimming (AR) | [1-3] | [1-3] | [1-9] | |
| Financial statement fraud | [1-3] | [1-3] | [1-9] | |

**Highest priority:** [Billing scheme — Risk Score 8 — weak vendor controls]

---

## Specific Vulnerabilities Identified

| Vulnerability | Fraud type enabled | Control gap | Remediation |
|--------------|-------------------|------------|------------|
| One person can add vendors AND approve invoices | Billing fraud | High | Segregate: Controller adds; Dr. Lewis/CEO approves all new vendors |
| Payroll register not reviewed before submission | Payroll fraud | High | Dr. Lewis reviews payroll register vs. HR headcount before every cycle |
| No expense report audit process | Expense fraud | Medium | Implement fin-ops-expense-auditor process monthly |
| Patient co-pays handled by one person | Cash skimming | Medium | Require two-person cash handling; daily cash receipt log |

---

## Control Remediation Plan

| Control gap | Remediation action | Owner | Deadline | Status |
|------------|-------------------|-------|---------|--------|
| Vendor setup segregation | Restrict vendor add/modify to controller only; all new vendors require Dr. Lewis approval | Dr. Lewis | Immediate | ✅/⚠️ |

---

## Suspicious Activity Log (if applicable)

| Date | Description | Amount | Status |
|------|------------|--------|--------|
| [Date] | [Vendor "TechAdvance LLC" added and paid without authorization] | $12,000 | Under investigation |

---

## Matt Mathison Brief (if fraud is confirmed or suspected)

[BLUF: Suspected/confirmed fraud at [Entity]. Amount: $[X]. Scheme: [description]. Evidence: [summary]. Action taken: [access revoked; counsel engaged; law enforcement notified if applicable]. Next steps: [recovery options; insurance claim; HR action].]
```

## Output Contract
- Do not tip off the suspected fraudster — when Dr. Lewis suspects fraud, the investigation is conducted quietly: reviewing transactions, pulling reports, and confirming the scheme with documentary evidence before any action is taken; asking the suspected employee "can you explain this transaction?" before confirming the fraud gives them the opportunity to destroy evidence, transfer funds, or construct a false explanation; the first the employee learns of the investigation is when their access is revoked and they are confronted; Dr. Lewis understands this creates discomfort but it is the approach that protects the company's ability to recover the loss and pursue legal action
- Matt Mathison is notified immediately when fraud is confirmed — not after the investigation is complete, not after the HR action — Matt Mathison is notified by phone when fraud is confirmed; Dr. Lewis calls Matt Mathison personally; the call includes: what the fraud is, how much was taken, how it was discovered, what access has been revoked, and what legal and recovery options Dr. Lewis recommends; Matt Mathison makes the decision about law enforcement referral, civil recovery, and insurance claim; Dr. Lewis provides the financial evidence package; Dr. Lewis does not communicate publicly about the fraud (to other employees, vendors, or customers) without Matt Mathison direction
- Fraud risk assessment at every acquisition — a company being acquired into the MBL portfolio has an unknown fraud risk; Dr. Lewis conducts a fraud risk assessment in the first 30 days of ownership (or as part of pre-acquisition due diligence for larger deals): Who has access to what? Can one person add a vendor and approve an invoice? Has the prior owner reviewed all expense reports, including their own? Has the payroll roster been compared to the HR headcount list recently? The assessment identifies gaps and initiates the control remediation; it is not accusatory — it is a standard process that protects MBL's investment
- HITL required: Dr. Lewis conducts and owns all fraud risk assessments; any suspected fraud is escalated to Dr. Lewis immediately (controller, CEO, or bookkeeper can flag but cannot conduct the investigation independently); confirmed fraud is escalated to Matt Mathison by phone immediately; Dr. Lewis makes the outside counsel recommendation; CEO and Matt Mathison make the law enforcement referral and HR action decisions

## System Dependencies
- **Reads from:** QuickBooks (all transactions — vendor payments, payroll, AR); Bill.com (approval records, vendor master, payment history); payroll system (payroll register, HR roster); bank statements (all accounts); expense reports; vendor W-9 file; insurance policies (fidelity bond coverage)
- **Writes to:** Fraud risk assessment report (SharePoint/Finance/<Company>/Controls/FraudRisk/); suspicious activity log; evidence preservation package; Matt Mathison notification; outside counsel brief; insurance claim documentation
- **HITL Required:** Dr. Lewis owns all fraud investigations; Matt Mathison notified immediately when fraud is confirmed; CEO and Matt Mathison decide on law enforcement referral, HR action, and insurance claim; outside counsel engaged on Dr. Lewis recommendation with CEO/Matt Mathison approval

## Test Cases
1. **Golden path:** Quarterly fraud risk assessment — Allevio routine review → Dr. Lewis conducts the assessment; billing scheme: one controller can add vendors AND approve invoices — HIGH likelihood × HIGH impact = Risk Score 9; immediate remediation: restrict vendor add to Dr. Lewis approval; payroll fraud: Dr. Lewis reviews register vs. HR headcount each cycle — LOW likelihood × MEDIUM impact = Risk Score 2; expense fraud: CEO expense reports reviewed by Dr. Lewis — LOW likelihood = Risk Score 2; cash skimming: patient co-pays collected at front desk with no dual control — MEDIUM likelihood × LOW impact = Risk Score 4; risk summary delivered to CEO; billing scheme remediation implemented same day; cash skimming remediation plan: add a second front-desk employee to all cash transactions or implement a card-only policy (eliminate cash co-pays); Matt Mathison receives the quarterly control brief
2. **Edge case:** Bank reconciliation surfaces a $3,200 ACH debit to "Adobe Systems" — no corresponding invoice in Bill.com → Dr. Lewis conducts a quiet investigation; pulls the ACH origination detail from the bank; confirms the ACH originated from the Allevio operating account; searches QuickBooks for any Adobe vendor or invoice — nothing found; reviews Bill.com — no Adobe vendor in the approved list and no invoice; this is either (a) an unauthorized vendor payment from outside the Bill.com workflow, (b) an ACH initiated directly from the bank by someone with bank login access, or (c) a bank error; Dr. Lewis checks the bank login activity log: who had online banking access? If a current employee initiated the ACH directly without going through Bill.com, that is a fraud indicator; Dr. Lewis investigates who has bank admin access; notifies CEO; if the investigation confirms unauthorized bank access, confirms with Matt Mathison and revokes bank access for the suspected individual immediately; engages outside counsel
3. **Adversarial:** CEO says "this is [long-term employee], I've known her for 15 years — she would never steal from us" → Trust and tenure are the most common rationalizations that allow fraud to go undetected for years; the ACFE reports that the median fraud duration before detection is 14 months; the most trusted employees have the most opportunity; Dr. Lewis responds: "I understand — and I hope the investigation confirms there's a legitimate explanation. But my responsibility is to investigate and let the evidence decide. If there's a good explanation for these transactions, we'll find it quickly and close this out. If there isn't, we need to know before the loss grows." Dr. Lewis conducts the investigation; if the evidence confirms fraud, the finding is presented to the CEO and Matt Mathison with documentation; the decision about HR action is theirs, not Dr. Lewis's; Dr. Lewis provides the evidence, not the verdict

## Audit Log
All fraud risk assessments retained. Suspicious activity log retained permanently. Investigation evidence packages retained permanently. Matt Mathison notifications retained permanently. Outside counsel communications retained permanently. Law enforcement referral records retained permanently. Insurance claim records retained permanently.

## Deprecation
Retire when each portfolio company has an Audit Committee or CFO who owns fraud risk management — with Dr. Lewis participating in annual risk assessments and Matt Mathison receiving the annual fraud risk briefing.
