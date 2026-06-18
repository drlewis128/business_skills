---
name: fin-internal-controls
description: "Design, document, and test the internal controls framework for MBL entities. Use when the user says 'internal controls', 'financial controls', 'controls framework', 'segregation of duties', 'SOD', 'fraud prevention', 'fraud risk', 'prevent fraud', 'financial fraud', 'financial risk', 'control environment', 'control testing', 'control weakness', 'control deficiency', 'control gap', 'compensating control', 'dual control', 'authorization control', 'approval control', 'access control', 'financial access', 'QuickBooks access', 'Bill.com access', 'bank access', 'financial system access', 'controls audit', 'controls review', 'internal audit', 'control review', 'control design', 'SOX', 'compliance controls', 'management override', 'financial oversight', 'financial governance', 'check fraud', 'wire fraud', 'payment fraud', 'ACH fraud', 'authorized payments', 'unauthorized payments', 'dual approval', or 'four-eyes principle'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--focus <design|test|review|incident>] [--area <ap|ar|payroll|cash|revenue|expense|financial-reporting>] [--action <assess|implement|test|report>]"
---

# Fin Internal Controls

Design, document, and test the internal controls framework for MBL entities — ensuring that every significant financial risk has a control, every control is operating effectively, and any control weakness is remediated before it becomes a financial loss or an audit finding. Internal controls are the immune system of the financial operation: they prevent fraud, catch errors, and ensure that financial statements are accurate. For MBL, the controls framework must be proportionate — a small portfolio company doesn't need full SOX controls, but it does need the basic controls that protect against the most common failure modes: embezzlement, payment fraud, payroll fraud, and management override.

## When to Use
- New entity acquisition (establish controls framework as part of integration)
- Annual controls review (typically tied to the annual audit)
- A control incident or suspected fraud occurs
- Auditors identify a control weakness or deficiency
- Matt Mathison asks how protected the entities' finances are

## Internal Controls Framework

```
CORE CONTROL CATEGORIES:

  1. AUTHORIZATION CONTROLS:
     Every significant financial transaction requires explicit authorization
     AP payments (Bill.com approval matrix per fin-ap-manager)
     Payroll changes (new employees; rate changes; bank account changes — pre-approved roster)
     New vendor approvals (Dr. Lewis approval before first payment)
     Capital expenditures (per exec-capital-allocation thresholds)
     Journal entries >$25K (Dr. Lewis approval)
     Bank account access (Dr. Lewis + entity CEO only for significant accounts)
     
  2. SEGREGATION OF DUTIES (SOD):
     No one person should control a transaction end-to-end
     
     IDEAL SOD:
       Person A: creates the transaction (invoice receipt; payroll change request)
       Person B: approves the transaction (Dr. Lewis; entity CEO per threshold)
       Person C: executes the payment (Bill.com automated; payroll processor)
       
     SMALL ENTITY REALITY (limited staff — use compensating controls):
       SOD is often not fully achievable in entities with 3-5 accounting staff
       Compensating controls when SOD is limited:
         Dr. Lewis independent review of all payments weekly
         Bank statement reconciliation by someone not involved in payments
         Surprise audits on expense reports and vendor payments (quarterly)
         
  3. RECONCILIATION CONTROLS:
     Bank reconciliation: monthly (Dr. Lewis reviews sign-off)
     QuickBooks to bank: must reconcile before period lock
     AP aging to vendor statements: quarterly
     Payroll register to bank: every payroll cycle
     AR aging: monthly; write-offs require authorization
     
  4. ACCESS CONTROLS:
     Financial system access is role-appropriate (not everyone has admin access)
     QuickBooks:
       Admin: Dr. Lewis + entity CEO
       Data entry: bookkeeper (no ability to approve or process payments)
       Read-only: as needed for management reporting
     Bill.com:
       Approver: Dr. Lewis + entity CEO (per threshold matrix)
       Entry: AP clerk / bookkeeper (cannot approve own entries)
     Bank accounts:
       Signatories: entity CEO + Dr. Lewis (dual approval for wire/ACH above threshold)
       Online banking admin: Dr. Lewis monitors; entity CEO for operational access
       
  5. FINANCIAL REPORTING CONTROLS:
     Month-end close checklist (fin-entity-close): completed and signed off
     Period lock: after sign-off, prior periods cannot be modified without Dr. Lewis approval
     Financial statement review: Dr. Lewis reviews before sharing with Matt or board
     Journal entry authorization: all JEs documented (who; what; why; supporting doc)
     
  6. FRAUD PREVENTION CONTROLS:
     Vendor addition: new vendor requires Dr. Lewis approval before first payment
     Bank account change: vendor bank account change requires phone verification (not email only)
     Payroll: employee bank account change requires signed authorization + supervisor verification
     Duplicate payment detection: Bill.com configured to flag duplicate vendor/amount/period
     Unusual payment review: any payment to an individual (not a business) flagged for review

CONTROL TESTING (ANNUAL):

  For each key control, test whether it is operating effectively:
  
  Test method: Pull a sample of 10-25 transactions from the period and verify:
    AP payments: was every payment above threshold approved by the correct person?
    Payroll: were all rate changes authorized before implementation?
    New vendors: was every new vendor approved before the first payment?
    JEs: does every journal entry have documentation and authorization?
    Bank rec: was bank reconciliation completed and signed off monthly?
    
  Control testing result:
    EFFECTIVE: control is operating as designed; no exceptions
    EXCEPTION: control was not operating for some transactions (quantify; assess risk)
    NOT EFFECTIVE: control is not operating reliably; remediate immediately
    
  Deficiency levels:
    Control deficiency: control didn't work for a small number of transactions; low risk
    Significant deficiency: control didn't work for a pattern; higher risk; remediate with 30 days
    Material weakness: control failure that could lead to material financial misstatement; remediate immediately; notify Matt and auditors

INCIDENT RESPONSE (suspected fraud or control failure):

  If a financial anomaly is detected:
    1. Preserve evidence: do not delete, modify, or confront the individual
    2. Document: what was found; when; by whom; amount at risk
    3. Notify Matt Mathison: same day (even if not yet confirmed fraud)
    4. Legal counsel: involved immediately for any suspected fraud
    5. Forensic accountant: if the amount is material (>$50K), engage a forensic accountant
    6. Law enforcement: Matt's decision after legal counsel advice
    7. Insurance: notify D&O / crime insurance carrier (if crime policy is in place)
    8. Recovery: pursue recovery through insurance and/or legal action
```

## Output Format

```markdown
# Internal Controls Review — [Entity Name] — [Year]
**Prepared by:** Dr. Lewis | **For:** Entity CEO + Dr. Lewis + Auditors

---

## Controls Assessment Summary

| Control area | Status | Last tested | Key exceptions | Risk level |
|-------------|--------|------------|---------------|-----------|
| AP authorization | ✅ Effective | [Date] | 0 exceptions in 20 tested | Low |
| Payroll | ✅ Effective | [Date] | 1 exception (rate change; remediated) | Low |
| Vendor addition | ⚠️ Exception | [Date] | 2 new vendors paid without pre-approval | Medium |
| Bank reconciliation | ✅ Effective | Monthly | — | Low |
| Access controls | ✅ Effective | [Date] | — | Low |

---

## Control Deficiencies

| Control | Deficiency type | Exception count | Risk | Remediation | Status |
|---------|---------------|----------------|------|-------------|--------|
| Vendor addition | Control deficiency | 2 of 15 tested | Medium | Reminder to AP team; added approval requirement to process doc | Resolved |

---

## Fraud Risk Heat Map

| Risk | Likelihood | Impact | Control | Status |
|------|-----------|--------|---------|--------|
| Fictitious vendor | Low | High | New vendor approval required | ✅ Controlled |
| Payroll ghost employee | Low | High | Roster reconciliation | ✅ Controlled |
| Management override | Low | High | Dr. Lewis independent review | ✅ Controlled |
```

## Output Contract
- Prevention beats detection — the controls framework is designed to prevent financial losses, not just detect them after the fact; a control that catches a fraud 6 months in is better than no control, but a control that prevents the fraud from starting is best; the most valuable controls are the approval matrix (nothing above threshold moves without authorization), the vendor addition control (no payment to a new entity without Dr. Lewis approval), and the bank account change verification (no payment redirected without phone verification); these three controls prevent the most common fraud vectors in SMB environments
- Segregation of duties with compensating controls — perfect SOD is not achievable in a 3-person accounting function; Dr. Lewis designs compensating controls that provide equivalent protection: weekly independent review of all payments; monthly surprise audit of expense reports; quarterly vendor statement reconciliation; and the fundamental control that Dr. Lewis (independent of day-to-day operations) is reviewing the financial data and has the ability to stop any payment at any time; this compensating structure provides effective fraud prevention even without perfect SOD
- No control exceptions without escalation — a control test that finds 2 of 20 AP payments lacking the required authorization is not "mostly fine"; it is a control exception that requires: (a) understanding whether any of the unauthorized payments were improper; (b) understanding why the control failed (was the approver out? Was the process unclear?); and (c) remediation (process update; training; enforcement); Dr. Lewis does not allow control exceptions to be explained away; he investigates, remediates, and retests
- HITL required: any suspected fraud or material control failure → Matt Mathison same day + legal counsel; material weakness → Matt + auditors immediately; annual controls testing → Dr. Lewis reviews results; control framework changes require Dr. Lewis approval; access control changes (QuickBooks admin; Bill.com approver) require Dr. Lewis approval; new entity controls setup (post-acquisition) is a Day 1 priority; all control testing results included in the annual audit package

## System Dependencies
- **Reads from:** QuickBooks access logs and journal entry records; Bill.com payment approvals and workflow records; bank statements (bank reconciliation and payment verification); payroll records (roster; change log); fin-ap-manager (authorization matrix); fin-payroll-reviewer (payroll controls)
- **Writes to:** Controls assessment reports (SharePoint → Finance → [Entity] → Controls → [YYYY]); control testing workpapers; audit schedules (internal control section); Matt Mathison notifications (control incidents; material weakness); incident log (SharePoint → Finance → [Entity] → Controls → Incidents)
- **HITL Required:** Suspected fraud → Matt + legal same day; material weakness → Matt + auditors immediately; annual controls assessment reviewed by Dr. Lewis; access control changes → Dr. Lewis approval; new entity controls → Day 1 priority, Dr. Lewis confirms in place; control exceptions → investigate + remediate before signing off; all control test results included in audit documentation

## Test Cases
1. **Golden path:** Annual controls review for Column6; tested 5 control areas with 20-item samples each; AP authorization: 20/20 compliant (Bill.com approval matrix is working; all payments above threshold had correct approvals); payroll: 19/20 — one rate change (Q2) was implemented before the approval email was formally archived (remediated: updated the process so rate changes can't be processed in payroll until approval documentation is uploaded to SharePoint); new vendor: 20/20 compliant; bank reconciliation: all 12 months signed off; access controls: reviewed user list — found one terminated employee still had read-only QuickBooks access (removed immediately; no payment access was involved). Control assessment: Effective with one control exception (payroll process documentation — remediated). Presented to Column6 CEO and external auditors.
2. **Edge case:** Bookkeeper notifies Dr. Lewis of a suspicious invoice from a vendor that didn't exist 3 months ago, paid $8,400 via Bill.com, but the approval chain shows the entity CEO approved it → Dr. Lewis: "Preserving evidence — not contacting anyone yet. Here's what I know: $8,400 payment to [Vendor] (created 3 months ago); entity CEO approval in Bill.com. Two scenarios: (1) Legitimate: the entity CEO engaged a new vendor; the approval is genuine; this is a vendor addition control gap (new vendor paid without Dr. Lewis pre-approval per our policy). (2) Suspicious: the entity CEO is involved; the vendor may not be legitimate. I'm doing the following before any conclusions: (1) verifying the vendor exists (Google; Secretary of State business lookup; website); (2) pulling the approved invoice and any supporting documentation; (3) calling Matt Mathison today — regardless of the answer, a $8.4K payment that bypassed the vendor addition control is a Matt Mathison notification. If the vendor doesn't exist or the documentation doesn't support the payment, we engage legal immediately."
3. **Adversarial:** Auditors identify that the entity's bank reconciliation was not completed for 3 months (Q2) due to a staff transition → Dr. Lewis: "This is a significant deficiency — not a material weakness, but it could be if we don't remediate immediately. Three months of unreconciled bank statements means 3 months where fraudulent transactions or errors could have gone undetected. Here's the remediation plan: (1) Complete all 3 months of bank reconciliations this week — I'll review personally; (2) confirm there are no fraudulent or unauthorized transactions in the unreconciled period; (3) identify: why did the staff transition create a 3-month gap? Was there no backup reconciler? Update the process: Dr. Lewis completes the reconciliation if the primary reconciler is unavailable for >2 weeks; (4) document the deficiency, the remediation, and the testing results for the auditors. The auditors will note this in their findings; the note will also include our remediation response. Matt Mathison is being informed today."

## Audit Log
Annual controls assessment results retained. Control testing workpapers retained 7 years. Control exception and remediation records retained. Fraud incident records retained permanently. Access control change logs retained. Auditor findings and management responses retained.

## Deprecation
Retire when MBL has a dedicated Internal Auditor or Controller who manages the internal controls framework — with Dr. Lewis providing the oversight governance layer and Matt Mathison retaining accountability for the overall control environment and material weakness disclosures.
