---
name: fin-ops-sox-lite-compliance
description: "Implement SOX-lite internal controls for PE portfolio companies. Use when the user says 'SOX', 'SOX compliance', 'SOX lite', 'internal controls framework', 'ICFR', 'internal control over financial reporting', 'PE controls', 'investor controls', 'board controls', 'financial reporting controls', 'control framework', 'COSO', 'control testing', 'control deficiency', 'material weakness', 'significant deficiency', 'controls for PE', 'exit readiness controls', or 'investor-grade controls'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <assess|implement|test|report>] [--audience <internal|board|lp|auditor>]"
---

# SOX-Lite Compliance

Implement and maintain SOX-lite internal controls for MBL portfolio companies — providing the discipline of Sarbanes-Oxley Section 404 controls without the full public-company compliance burden. PE portfolio companies are not required to comply with SOX, but the underlying principles (management assessment of ICFR, documented controls, testing, remediation) are exactly what buyers expect in due diligence and what auditors look for during annual audits. Dr. Lewis applies a practical, PE-calibrated control framework that is investor-grade without being public-company sized.

## When to Use
- Establishing internal controls at a newly acquired portfolio company (100-day plan)
- Annual ICFR assessment (management assessment of controls over financial reporting)
- Preparing for exit — buyers will scrutinize internal controls; gaps reduce purchase price
- Annual audit preparation — auditors rely on management's controls (reduces audit cost)
- A control gap was identified in the quarterly finance ops review — remediate systematically
- Matt Mathison or a board member asks "what controls do we have over financial reporting?"

## SOX-Lite Control Framework

```
Five COSO components (simplified for PE portfolio companies):

  COMPONENT 1 — CONTROL ENVIRONMENT:
    The "tone at the top" — management commitment to accurate financial reporting
    Evidence:
      Code of conduct reviewed and signed by all employees annually
      Approval matrix documented and enforced (fin-ops-approval-matrix-manager)
      Segregation of duties implemented where practical; compensating controls where it's not
      Dr. Lewis and CEO personally review key financial reports (not just delegate)
    
  COMPONENT 2 — RISK ASSESSMENT:
    Identify risks to accurate financial reporting
    Annual fraud risk assessment (fin-ops-fraud-risk-assessor)
    Revenue recognition risk (Is revenue recognized in the correct period? Consistent with policy?)
    Financial close risk (Are period-end entries correct? Are estimates (accruals) supportable?)
    IT/systems risk (Is QuickBooks access restricted? Are backups occurring?)
    
  COMPONENT 3 — CONTROL ACTIVITIES:
    The specific controls that prevent or detect financial reporting errors
    
    KEY CONTROLS (tested quarterly):
    
    KC-01: BANK RECONCILIATION
      Control: Bank accounts reconciled within 5 business days of period close; approved by Dr. Lewis
      Frequency: Monthly
      Risk mitigated: Cash misappropriation; unrecorded transactions
      Evidence: Signed bank reconciliation; Dr. Lewis approval timestamp
      
    KC-02: ACCOUNT RECONCILIATIONS
      Control: All Tier 1 balance sheet accounts reconciled by BD5; approved by Dr. Lewis by BD6
      Frequency: Monthly
      Risk mitigated: Balance sheet misstatement; undetected errors
      Evidence: Signed reconciliation package; Dr. Lewis approval
      
    KC-03: JOURNAL ENTRY REVIEW
      Control: All manual JEs >$5K reviewed and approved by Dr. Lewis before posting; all JEs have memos and supporting documentation
      Frequency: Monthly (at close)
      Risk mitigated: Fraudulent journal entries; period manipulation
      Evidence: JE approval log; signed journal entries
      
    KC-04: PAYROLL REVIEW
      Control: Dr. Lewis reviews and approves every payroll register before submission
      Frequency: Every payroll cycle (bi-weekly or semi-monthly)
      Risk mitigated: Ghost employees; unauthorized pay rates; fraud
      Evidence: Payroll approval log; pre-submission checklist
      
    KC-05: VENDOR SETUP AND AP APPROVAL
      Control: All new vendors verified through the vendor setup process; all invoices approved per the approval matrix; no vendor bank details changed from email requests
      Frequency: Continuous (triggered events)
      Risk mitigated: Vendor fraud; BEC; unauthorized payments
      Evidence: Vendor setup records; Bill.com approval log; bank detail change policy
      
    KC-06: FINANCIAL STATEMENT REVIEW
      Control: Monthly financial statements reviewed by CEO; quarterly by Matt Mathison; annual by auditors
      Frequency: Monthly (CEO); quarterly (Matt Mathison); annually (auditors)
      Risk mitigated: Financial statement misstatement; management override
      Evidence: CEO financial package delivery log; Matt Mathison review confirmations; audit report
      
    KC-07: ACCESS CONTROLS
      Control: QuickBooks admin access restricted to Dr. Lewis and controller only; departing employees' access removed same day; annual access review
      Frequency: Annual review; event-triggered for departures
      Risk mitigated: Unauthorized transactions; data integrity
      Evidence: QuickBooks user access list; departure access removal confirmation
      
    KC-08: REVENUE RECOGNITION
      Control: Revenue recognized per the company's documented policy; deferred revenue reconciled monthly; material judgments (% completion, milestone recognition) reviewed by Dr. Lewis
      Frequency: Monthly
      Risk mitigated: Revenue manipulation; incorrect period recognition
      Evidence: Deferred revenue schedule; revenue recognition memo for complex arrangements
      
  COMPONENT 4 — INFORMATION AND COMMUNICATION:
    Financial information is accurate, timely, and communicated to the right people
    CEO receives financials by BD7 every month
    Matt Mathison receives quarterly portfolio brief
    Material events (fraud, restatement, control deficiency) communicated immediately
    Board receives annual audited financials and management letter comments
    
  COMPONENT 5 — MONITORING:
    Controls are tested and deficiencies are remediated
    Quarterly control testing (see below)
    Annual ICFR assessment by Dr. Lewis
    Audit findings incorporated into the control framework
    Finance ops quarterly review (fin-ops-finance-ops-review) serves as ongoing monitoring

CONTROL TESTING (quarterly — 2 hours per company):

  TEST-01 (Bank reconciliation): Review 1 bank reconciliation from the quarter; confirm it ties to the bank statement; confirm Dr. Lewis signed off; confirm no open items >30 days
  TEST-02 (Account reconciliation): Review 2 balance sheet account reconciliations; confirm they tie to the GL; confirm they have Dr. Lewis approval; confirm open items have resolution plans
  TEST-03 (Journal entry): Pull a sample of 5 JEs from the quarter; confirm each has a memo, supporting documentation, and Dr. Lewis approval for amounts >$5K
  TEST-04 (Payroll): Review 2 payroll approval logs from the quarter; confirm Dr. Lewis signature; confirm headcount matches prior period ± approved changes
  TEST-05 (Vendor/AP): Sample 5 vendor payments from the quarter; confirm each vendor is on the active list; confirm W-9 is on file; confirm approval per the approval matrix
  TEST-06 (Access): Pull the QuickBooks user list; confirm it matches the authorized list; confirm any departures in the quarter had access removed
  
DEFICIENCY CLASSIFICATION:
  Control deficiency: A control didn't operate as designed in 1 instance; low likelihood of material misstatement
    → Remediate: Retrain; document; monitor
  Significant deficiency: A control failed in multiple instances or a key control failed; could result in material misstatement
    → Remediate immediately: Fix the root cause; retest within 30 days; CEO and Matt Mathison notified
  Material weakness: A failure that could result in, or has resulted in, a material misstatement of the financial statements
    → Immediate escalation: Dr. Lewis and Matt Mathison; may require financial statement restatement; auditor notification
```

## Output Format

```markdown
# SOX-Lite ICFR Assessment — [Entity] [Year] Q[N]
**Date:** [Date] | **Assessed by:** Dr. Lewis | **Period covered:** [Quarter]

---

## Control Environment Summary

| Component | Status | Evidence |
|-----------|--------|---------|
| 1. Control environment | 🟢/🟡/🔴 | [Code of conduct signed; approval matrix enforced] |
| 2. Risk assessment | 🟢/🟡/🔴 | [Annual fraud risk assessment completed] |
| 3. Control activities | 🟢/🟡/🔴 | [8 key controls tested — see below] |
| 4. Information & communication | 🟢/🟡/🔴 | [Financials delivered BD7 all months; Matt brief current] |
| 5. Monitoring | 🟢/🟡/🔴 | [Quarterly testing complete] |

---

## Key Control Testing Results

| Control | Test | Result | Finding | Deficiency Level |
|---------|------|--------|---------|----------------|
| KC-01 Bank rec | Reviewed May rec | ✅ PASS | Ties to bank; Dr. Lewis signed | None |
| KC-02 Account recs | Reviewed AR and AP recs | ✅ PASS | Both tie; approved by BD6 | None |
| KC-03 JE review | Sample 5 JEs | ⚠️ EXCEPTION | 1 JE ($8,200) missing supporting doc | Control deficiency |
| KC-04 Payroll | Reviewed 2 payrolls | ✅ PASS | Dr. Lewis signed both | None |
| KC-05 Vendor/AP | Sample 5 payments | ✅ PASS | All vendors on list; all W-9 on file | None |
| KC-06 Fin stmt review | CEO receipt confirmed | ✅ PASS | CEO received all 3 months by BD7 | None |
| KC-07 Access | QuickBooks user list | ✅ PASS | 1 departure — access removed same day | None |
| KC-08 Revenue recognition | Deferred revenue rec | ✅ PASS | Schedule current; recognition policy applied | None |

---

## Deficiency Summary

| Deficiency | Type | Remediation | Owner | Timeline |
|-----------|------|------------|-------|---------|
| KC-03: JE missing supporting doc (1 instance) | Control deficiency | Controller to locate and attach doc; process reminder issued | Controller | 5 business days |

**Overall assessment:** No significant deficiencies. No material weaknesses. Controls are operating effectively with 1 minor control deficiency in remediation.

---

## Matt Mathison / Board Brief

**ICFR assessment — [Entity] Q[N]:** Controls are operating effectively. [N] key controls tested; 1 minor control deficiency (JE supporting documentation gap) identified and remediated. No significant deficiencies. No material weaknesses. Finance operations health supports investor-grade reporting.
```

## Output Contract
- SOX-lite is about discipline, not bureaucracy — the purpose of the control framework is accurate financial statements and fraud prevention, not compliance theater; Dr. Lewis implements controls that actually prevent errors and fraud (bank reconciliation, payroll review, JE approval, access controls) rather than controls that generate documentation without substance; if a control exists on paper but is routinely not tested or not enforced, it is worse than having no control — it creates a false sense of security; Dr. Lewis tests controls quarterly and remediates deficiencies, not just documents the controls
- Significant deficiencies require immediate escalation — a control deficiency (one instance of a control not operating) is remediated in the normal course; a significant deficiency (multiple instances or a key control failure) requires immediate CEO and Matt Mathison notification, not a note in the quarterly report; the PE governance model requires that material control issues reach the level of Matt Mathison and the board; Dr. Lewis does not wait for the quarterly report to communicate significant deficiencies
- Controls support exit value — a company with a documented, tested ICFR framework commands higher buyer confidence in due diligence; buyers and their financial advisors look for two things: (1) evidence that management can produce reliable financial statements; (2) evidence that controls prevent fraud and error; Dr. Lewis maintains the SOX-lite framework not just for internal discipline but as a strategic asset that supports the exit; a company where the auditor issues a clean opinion and the management ICFR assessment shows no significant deficiencies is meaningfully more attractive than a company where "we just used QuickBooks and trusted the bookkeeper"
- HITL required: Dr. Lewis conducts the quarterly control testing and annual ICFR assessment; CEO signs the management representation letter (if required by auditors); Matt Mathison notified of significant deficiencies and material weaknesses immediately; board receives annual ICFR summary; any potential material weakness triggers Matt Mathison by phone (not email) before any other communication

## System Dependencies
- **Reads from:** Control documentation (all 8 key controls — fin-ops skills that implement each control); quarterly finance ops review (fin-ops-finance-ops-review); annual fraud risk assessment (fin-ops-fraud-risk-assessor); internal controls design (fin-ops-internal-controls-designer); audit management letter; QuickBooks access log; payroll approval log; JE approval log; bank reconciliations
- **Writes to:** Quarterly ICFR assessment report (SharePoint/Finance/<Company>/Controls/ICFRAssessment/[Quarter]/); Matt Mathison / board brief; control deficiency log and remediation tracking; annual management representation letter (input to auditors); data room (ICFR documentation for due diligence)
- **HITL Required:** Dr. Lewis conducts all ICFR assessments; CEO signs management representation letter; significant deficiencies require immediate Matt Mathison notification; material weaknesses require Matt Mathison by phone; board receives annual ICFR summary

## Test Cases
1. **Golden path:** Allevio annual ICFR assessment — Q4 assessment with 8 controls tested → KC-01 through KC-08 all tested; 7 of 8 pass on first test; KC-07 (access controls): the QuickBooks user list shows a former bookkeeper whose access was removed after 3 days (not same-day); this is a control deficiency (one instance; the departure was during a holiday week); remediation: controller confirmed the system now has a same-day access removal process; documented; going forward monitoring increased; deficiency classified as control deficiency (not significant); overall assessment: controls operating effectively; 1 control deficiency remediated; no significant deficiencies; no material weaknesses; Matt Mathison brief sent; board receives the annual summary at Q4 board meeting; auditors receive the management assessment summary (input for their risk assessment — may reduce audit fieldwork hours)
2. **Edge case:** The quarterly testing reveals that KC-04 (payroll review) shows that 3 of 6 payrolls in the quarter were submitted without Dr. Lewis's documented pre-submission approval → This is a significant deficiency: the control failed in 3 of 6 instances (50% failure rate); a key control over payroll fraud prevention was not operating; Dr. Lewis immediately notifies the CEO: "I've found that 3 payrolls this quarter processed without my documented pre-submission review. This is a significant deficiency in our payroll controls. I need to understand what happened — did the controller submit without waiting for my approval, or was there a documentation failure?" Investigation: controller was submitting without waiting for written confirmation (had verbal awareness in some cases); remediation: payroll submission is blocked in Gusto until Dr. Lewis enters an approval code (system-enforced control); retroactive review of the 3 payrolls confirms they were accurate (no fraud); Matt Mathison notified immediately; remediation plan implemented; retest in 30 days; deficiency upgraded to significant (3 instances); remains at significant deficiency level (not material weakness because no misstatement occurred)
3. **Adversarial:** During due diligence, a potential buyer says "we need the ICFR documentation for the last 3 years" → Dr. Lewis produces: (1) 12 quarterly ICFR assessment reports; (2) 3 annual fraud risk assessments; (3) The approval matrix (current version + 2 prior versions); (4) Control deficiency log and remediation records; (5) Payroll approval logs (3 years); (6) JE approval logs (3 years); (7) Bank reconciliation package (3 years); (8) Annual external audit reports with management letter comments; the buyer's due diligence team reviews; the well-documented control framework reduces buyer concern about financial reporting risk; the control deficiency log (showing deficiencies were found, classified, and remediated) demonstrates management competence; a company with zero deficiencies ever is actually a red flag (controls weren't being tested); a company with documented deficiencies and documented remediations demonstrates a functioning control environment

## Audit Log
All quarterly ICFR assessment reports retained. All control testing evidence retained (sample selections, test results). Deficiency log retained (deficiency, classification, remediation, retest). Annual management representation letter retained. Matt Mathison notification records for significant deficiencies retained. Board ICFR summaries retained. Audit firm management letters retained.

## Deprecation
Retire when each portfolio company has a CFO who conducts ICFR assessments — with Dr. Lewis reviewing annually and Matt Mathison receiving the board-level ICFR report. Escalate to a full SOX compliance program if a portfolio company pursues a public offering (IPO or SPAC).
