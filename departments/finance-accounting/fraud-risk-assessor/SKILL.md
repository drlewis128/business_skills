---
name: fraud-risk-assessor
description: "Assess fraud risk in financial processes. Use when the user says 'fraud risk', 'fraud prevention', 'fraud assessment', 'risk of fraud', 'financial fraud', 'embezzlement risk', 'vendor fraud', 'payroll fraud', 'expense fraud', 'misappropriation risk', 'fraud control', 'could someone steal from us', or 'fraud exposure'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--focus <vendor-fraud|payroll-fraud|expense-fraud|all>] [--trigger <routine|incident|audit>]"
---

# Fraud Risk Assessor

Assess the risk of financial fraud at MBL portfolio companies — identifying where fraud could occur, how it would be detected (or not detected), and what controls reduce the risk. Most fraud at small-to-mid-size companies is perpetrated by trusted employees over extended periods, precisely because trust replaced controls. This assessment helps MBL identify the highest-risk areas before a loss occurs, not after.

## When to Use
- Annual fraud risk review — proactive assessment
- A new employee has been hired in a financially sensitive role
- A control gap has been identified that creates fraud opportunity
- Matt Mathison asks "how confident are we that no one is stealing from [Company]?"
- A financial discrepancy has been identified that could indicate fraud
- A portfolio company is being acquired — fraud risk assessment as part of diligence

## Fraud Risk Framework

```
The Fraud Triangle (why fraud happens):
  1. Opportunity: the ability to commit fraud without being caught
  2. Pressure: financial or personal pressure motivating the fraud
  3. Rationalization: the mental justification ("I'll pay it back")

Controls primarily address OPPORTUNITY — reducing the ability to commit and conceal fraud.
MBL cannot control pressure or rationalization, only opportunity.

Most common fraud types at MBL scale:

Vendor Fraud:
  - Ghost vendors (fake companies created to receive payments)
  - Billing scheme (real vendor inflates invoices; employee gets kickback)
  - Check tampering (altering payee names on checks)
  
Payroll Fraud:
  - Ghost employees (fake employees added to payroll)
  - Falsified hours / pay rates
  - Unauthorized pay rate increases

Expense Fraud:
  - Personal expenses submitted as business expenses
  - Duplicate expense submissions
  - Inflated mileage or meal claims

Asset Misappropriation:
  - Cash theft (skimming — before it's recorded)
  - Inventory theft
  - Unauthorized use of company assets (equipment, cards)

Financial Statement Fraud (management fraud):
  - Revenue inflation
  - Expense suppression
  - Improper capitalization of expenses
```

## Output Format

```markdown
# Fraud Risk Assessment — <Company Name>
**Date:** <Date> | **Prepared by:** Dr. John Lewis
**Trigger:** [Routine annual / New hire in sensitive role / Incident / Acquisition diligence]

---

## Fraud Risk Summary

| Fraud category | Inherent risk | Controls in place | Residual risk | Priority |
|---------------|-------------|------------------|--------------|---------|
| Vendor fraud | 🟢/🟡/🔴 | [Key controls] | 🟢/🟡/🔴 | |
| Payroll fraud | 🟢/🟡/🔴 | | 🟢/🟡/🔴 | |
| Expense fraud | 🟢/🟡/🔴 | | 🟢/🟡/🔴 | |
| Asset misappropriation | 🟢/🟡/🔴 | | 🟢/🟡/🔴 | |
| Financial statement fraud | 🟢/🟡/🔴 | | 🟢/🟡/🔴 | |
| **Overall fraud risk** | | | 🟢/🟡/🔴 | |

---

## Vendor Fraud Assessment

| Risk | Likelihood | Impact | Key control | Control working? |
|------|-----------|--------|------------|----------------|
| Ghost vendor (fake vendor created to receive payments) | 🟢/🟡/🔴 | High | New vendor verification (phone call to known number before first payment) | ✅ / ❌ |
| Banking information fraud (changed bank details) | 🟡 | High | Phone verification of any banking change | ✅ / ❌ |
| Inflated invoices / kickback | 🟢/🟡/🔴 | Medium | Three-way match; invoice vs. contract comparison | ✅ / ❌ |
| Duplicate invoice payment | 🟢/🟡/🔴 | Medium | Bill.com duplicate check; invoice number tracking | ✅ / ❌ |
| Check tampering | 🟢 (Bill.com ACH — minimal checks) | High | ACH preferred over checks | ✅ |

**Vendor fraud red flags (check these):**
- [ ] New vendor added by only one person with no secondary review
- [ ] Vendor address or banking info matches an employee's personal information
- [ ] Round dollar invoices from service vendors (services should have itemized costs)
- [ ] Vendor payments to a P.O. box with no physical address
- [ ] Invoice dates are always near the end of the month (timing manipulation)

---

## Payroll Fraud Assessment

| Risk | Likelihood | Impact | Key control | Control working? |
|------|-----------|--------|------------|----------------|
| Ghost employee (fake employee on payroll) | 🟢/🟡/🔴 | High | CEO approval for new employee adds; periodic headcount reconciliation | ✅ / ❌ |
| Unauthorized pay rate increase | 🟡 | Medium | Rate changes require Dr. Lewis approval; audit payroll register quarterly | ✅ / ❌ |
| Falsified hours (hourly employees) | 🟢/🟡/🔴 | Medium | Time approval by manager; cross-check to project records | ✅ / ❌ |
| Payroll account access abuse | 🟢 | High | Payroll bank account access limited | ✅ / ❌ |

**Payroll fraud red flags:**
- [ ] Employee on payroll whose name is not recognizable to the CEO
- [ ] Payroll total has grown faster than headcount count
- [ ] Pay rate for an employee differs from offer letter or employment agreement
- [ ] Employee paychecks going to same bank account as another employee

---

## Expense Fraud Assessment

| Risk | Likelihood | Impact | Key control | Control working? |
|------|-----------|--------|------------|----------------|
| Personal expense as business expense | 🟡 | Medium | Receipt review; business purpose required; Dr. Lewis review | ✅ / ❌ |
| Duplicate submission | 🟢/🟡/🔴 | Low-Medium | Expense system duplicate check; receipt matching | ✅ / ❌ |
| Inflated mileage | 🟡 | Low | Mileage log required; destination cross-check | ✅ / ❌ |
| Fake receipts | 🟢 | Medium | Original receipts required; credit card statement match | ✅ / ❌ |

---

## Financial Statement Fraud Assessment

| Risk | Likelihood | Impact | Key control | Control working? |
|------|-----------|--------|------------|----------------|
| Revenue inflation (premature recognition) | 🟢/🟡/🔴 | High | Contract-based revenue recognition; CPA review | ✅ / ❌ |
| Expense suppression (moving OpEx to CapEx) | 🟢/🟡/🔴 | Medium | Capitalization policy enforced; CPA review | ✅ / ❌ |
| Related party transactions not disclosed | 🟡 | High | Dr. Lewis identifies RPs; CPA requires RP disclosure | ✅ / ❌ |

---

## Highest-Priority Risks and Remediation

| Risk | Residual risk | Action | Owner | Timeline |
|------|--------------|--------|-------|---------|
| [Highest risk] | 🔴 | [Specific control to implement] | Dr. Lewis / CEO | Immediate |
| [Second risk] | 🟡 | | | 30 days |

---

## Matt Mathison Summary

Fraud risk assessment — [Company]: Overall residual fraud risk is 🟢/🟡/🔴. **Highest risk area:** [Specific]. **Key control gap:** [Specific gap]. **Action:** [What Dr. Lewis is doing]. **Decision needed from Matt Mathison:** [Specific — or "No decision needed — controls adequate"].
```

## Output Contract
- Red flag checklists always completed — the fraud red flag lists are detective controls; running them proactively takes 15 minutes and can surface issues that formal control testing would miss; every fraud risk assessment must complete the red flag checks, not just describe them
- Residual risk always differentiated from inherent risk — inherent risk is the fraud risk before controls; residual risk is the risk after controls; a company with high inherent vendor fraud risk but strong controls (phone verification, three-way match) has low residual risk; the distinction matters for management decisions
- Financial statement fraud always assessed for management-controlled processes — unlike most fraud (committed by employees against the company), financial statement fraud is committed by management to deceive investors, lenders, or tax authorities; it must be assessed even when management is trustworthy, because the controls are different
- Suspected actual fraud always escalated immediately — a fraud risk assessment that identifies an active fraud is not a "plan for next year" situation; if the assessment reveals a pattern that suggests active fraud (employee address matching a vendor address, duplicate invoice payments, unexplained cash discrepancies), Dr. Lewis stops the assessment and escalates to Matt Mathison and legal counsel immediately; do not confront the suspected party without legal guidance
- HITL required: Dr. Lewis prepares assessment and implements control remediations; Matt Mathison receives all fraud risk assessments; any suspected active fraud requires Matt Mathison and legal counsel immediately; external forensic accountant may be required for complex fraud investigations

## System Dependencies
- **Reads from:** QuickBooks (transaction detail, vendor list, payroll), Bill.com (vendor data and payment history), payroll records (employee list with compensation), expense reports, internal controls assessment
- **Writes to:** Fraud risk assessment (SharePoint/Finance/Controls/Fraud Risk/); remediation tracker; active fraud incident report (if applicable)
- **HITL Required:** Dr. Lewis prepares; Matt Mathison receives; suspected active fraud requires Matt Mathison + legal counsel immediately; forensic investigation requires external specialist

## Test Cases
1. **Golden path:** Allevio annual fraud risk assessment June 2026 → Vendor fraud: inherent 🟡, controls: new vendor phone verification ✅, Bill.com duplicate check ✅, invoice vs. contract comparison ✅; residual 🟢; Payroll fraud: inherent 🟢 (only 6 employees, CEO knows all personally), controls: CEO approves new adds, Dr. Lewis reviews payroll monthly; residual 🟢; Expense fraud: inherent 🟡, controls: receipt required, Dr. Lewis reviews all reports; one incident last year (personal expense submitted by mistake — returned without issue); residual 🟢; Red flag check: no vendor addresses matching employees, no duplicate invoice numbers, no unusual pay rate changes; Overall: 🟢; one improvement: implement quarterly payroll headcount reconciliation (total employees vs. HR records); Matt Mathison: "Controls healthy; one process improvement added; no fraud indicators identified"
2. **Edge case:** During the red flag check, a vendor address in Bill.com matches a home address in the payroll records for a current employee → this is a serious fraud indicator that must be investigated immediately; do not assume it's a coincidence; steps: (1) pull all payments to this vendor — amounts, dates, descriptions; (2) compare to employee role and whether there's any legitimate business reason for this employee to have a vendor relationship; (3) do NOT alert the employee — this is an active investigation; (4) escalate to Matt Mathison within the hour with the specific data; (5) Matt Mathison and legal counsel decide next steps before any internal confrontation; this is a 🔴 high-priority incident, not a routine flag to address next quarter
3. **Adversarial:** A CEO says "we trust our team completely — we don't need a fraud risk assessment" → respond with data and principle: "Fraud risk assessments aren't about not trusting anyone specific — they're about not putting any one person in a position where temptation plus opportunity could lead to a bad outcome. Most fraud is committed by trusted long-term employees precisely because trust replaced controls. The assessment takes 2 hours of Dr. Lewis's time annually and has identified [X] control improvements in prior years. The cost of detection-after-the-fact is far higher than prevention. I recommend we keep it as an annual practice."

## Audit Log
All fraud risk assessments retained by entity and date. Red flag check results documented. Remediation actions and outcomes documented. Matt Mathison notifications retained. Active fraud incidents and legal counsel involvement retained permanently. Insurance claim documentation (if applicable) retained permanently.

## Deprecation
Retire when MBL has annual external audits for all portfolio companies (full audit, not just review) that include fraud risk assessments as part of the audit procedures, and when each portfolio company has a dedicated controller who owns fraud prevention controls.
