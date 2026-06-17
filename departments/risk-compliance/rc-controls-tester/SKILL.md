---
name: rc-controls-tester
description: "Test internal controls for design and operating effectiveness. Use when the user says 'test controls', 'controls testing', 'internal controls test', 'control effectiveness', 'audit testing', 'test AP controls', 'test payroll controls', 'test access controls', 'control gap', 'segregation of duties test', 'walkthrough testing', 'sample testing', 'controls review', 'are our controls working', or 'control validation'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--control-area <AP|payroll|access|IT|billing|financial>] [--entity <company name>] [--test-type <design|effectiveness|both>]"
---

# Controls Tester

Test internal controls at MBL portfolio companies — evaluating both control design (is the control designed to prevent or detect the risk?) and operating effectiveness (is the control actually working as designed?). A control that looks good on paper but is routinely bypassed or overridden provides no actual risk reduction; a control that is tested and verified to be operating effectively is a real defense. Controls testing is the core activity that makes the internal audit function meaningful beyond documentation review.

## When to Use
- Executing an audit from the rc-audit-plan-builder
- A specific control area needs verification (AP, payroll, access, billing)
- A risk event has occurred — what controls should have caught this?
- Preparing for an external audit — documenting that controls are operating effectively
- A new process has been implemented — do the controls designed for it actually work?

## Controls Testing Framework

```
Control types:
  Preventive controls: Stop errors or fraud before they occur
    Examples: Bill.com dual-approval workflow; MFA enforcement; access restrictions
    Testing: Configuration verification (system screenshot/export); observe control in action
    
  Detective controls: Find errors or fraud after they occur
    Examples: Bank reconciliation; audit log review; quarterly user access review
    Testing: Sample review; walkthrough with owner; exception testing
    
Test types:
  Walkthrough: Follow one transaction from start to finish; verify controls at each step
  Design test: Does the control, as designed, address the risk it's supposed to prevent?
  Effectiveness test: Is the control actually operating as designed? (Sample of transactions, configurations)
  
Sample sizes (practical for portfolio scale):
  Small population (<50 transactions/month): Test all or sample 10-15
  Medium population (50-200): Sample 15-25
  Large population (>200): Sample 25-40; stratify to cover high-value transactions
  Configuration controls (IT): Test the configuration; 1 item if deterministic
  
Key control areas and tests:

ACCOUNTS PAYABLE / PAYMENT CONTROLS:
  Control: Dual approval for payments above threshold (Bill.com workflow)
    Design test: Is the workflow configured to require dual approval for >$1K? Pull Bill.com settings screenshot
    Effectiveness test: Sample 15 payments >$1K from prior 3 months; verify each has 2 approvals in Bill.com log
    Red flag: Any payment >$1K with only 1 approval; any payment not in Bill.com (paid outside workflow)
    
  Control: Vendor banking information change requires phone verification
    Design test: Is there a documented procedure for bank info changes?
    Effectiveness test: Were any vendor banking changes made in the past 6 months? Test each one: is there a documented phone call log?
    Red flag: Bank info change with no documented phone verification (BEC fraud vector)
    
  Control: W-9 on file before payment
    Effectiveness test: Sample 20 vendors paid in the past year; verify W-9 on file for each
    Red flag: Any vendor paid without W-9 on file
    
PAYROLL CONTROLS:
  Control: Payroll changes authorized by approved person
    Effectiveness test: Sample 10 payroll rate changes from prior year; verify each has written authorization from CEO or Dr. Lewis
    Red flag: Rate change without authorization; rate change that differs from offer letter
    
  Control: Terminated employee payroll access ended on termination date
    Effectiveness test: Select 5 employees terminated in past 6 months; verify final payroll period correct; verify no payroll disbursement after termination
    Red flag: Paycheck issued after termination date
    
  Control: No ghost employees (employees on payroll who don't exist)
    Effectiveness test: Reconcile payroll roster to HR roster (personnel files) monthly; any mismatch investigated
    Red flag: Employee on payroll with no personnel file; employee not accessible for verification
    
USER ACCESS CONTROLS:
  Control: Terminated employees removed from all systems within 1 business day
    Effectiveness test: List of terminated employees from past 6 months; check each in: Entra ID (account disabled?), QuickBooks (deactivated?), Bill.com (removed?), AdvancedMD (removed? — Allevio)
    Red flag: Any active account for a terminated employee; "disabled" vs. "deleted" matters (disabled prevents login; deleted removes risk of future re-enable)
    
  Control: User access is least-privilege (users have only the access their role requires)
    Design test: Are roles in AdvancedMD/QuickBooks/Bill.com configured to limit access by function?
    Effectiveness test: Sample 5 users; verify their actual access matches their role requirements
    Red flag: Billing staff with access to clinical notes; AP staff with approval authority they shouldn't have
    
  Control: Shared accounts do not exist
    Effectiveness test: Review Entra ID user list for any non-person accounts with shared credentials; review AdvancedMD for shared logins
    Red flag: Any "shared" or "generic" login used by multiple people (audit trail destruction; HIPAA violation at Allevio)
    
BILLING CONTROLS (Allevio):
  Control: Claims submitted match services documented in AdvancedMD
    Effectiveness test: Sample 20 claims submitted to Medicare/Medicaid; trace each back to clinical encounter documentation; verify CPT code and ICD-10 code match the documentation
    Red flag: Claim for service with no encounter note; upcoded CPT code (billed for more complex service than documented); unbundling
    
  Control: Only credentialed providers' services billed under their NPI
    Effectiveness test: Sample 10 claims billed under each provider's NPI; verify the provider was the rendering provider for that encounter
    Red flag: Claim billed under Provider A's NPI for an encounter Provider A did not perform
```

## Output Format

```markdown
# Controls Testing Report — <Control Area>
**Entity:** [Company] | **Date:** [Date] | **Tester:** Dr. John Lewis
**Control area:** [AP / Payroll / Access / Billing / IT]
**Testing period:** [Date range of transactions sampled]

---

## Controls Tested

| # | Control | Risk addressed | Test type | Test performed | Sample size | Result |
|---|---------|--------------|----------|--------------|-----------|--------|
| 1 | Dual approval for payments >$1K | Unauthorized payment / Fraud | Effectiveness | Sample 15 payments >$1K; verify 2 approvals in Bill.com log | 15 | ✅ Pass / ❌ Fail |
| 2 | W-9 on file before payment | 1099 compliance; vendor vetting | Effectiveness | Sample 20 vendors paid in past year; verify W-9 | 20 | |
| 3 | Terminated user access removal | Data breach; unauthorized access | Effectiveness | 5 terminated employees from past 6 months; check all systems | 5 | |
| 4 | Shared accounts check | Audit trail; HIPAA (AdvancedMD) | Design + Effectiveness | Entra ID and AdvancedMD user review | Full | |

---

## Findings

### Finding F001: [Control failed]
**Severity:** 🔴 High / 🟡 Medium / 🟢 Low
**Control:** [Which control]
**Observation:** [Specific observation — what was found; not general concern]
**Evidence:** [What was reviewed; screenshot reference; transaction ID]
**Risk:** [What could happen if this is not fixed]
**Recommendation:** [Specific remediation action]
**Remediation owner:** [Name]
**Due date:** [Date]
**Verification required:** Yes — Dr. Lewis will re-test this control in [N] days

### Finding F002: [Control passed but design gap found]
**Severity:** 🟡 Medium
[Same structure]

---

## Controls Passed

| Control | Evidence | Conclusion |
|---------|---------|-----------|
| Dual approval >$1K | All 15 sampled payments had 2 distinct approvers; Bill.com audit log confirms; no self-approvals | ✅ Operating effectively |
| [Control] | [Evidence] | |

---

## Segregation of Duties Assessment

| Process | Initiate | Approve | Record | Custody | SoD Adequate? |
|---------|---------|--------|--------|--------|--------------|
| AP — Invoice | [Role] | [Role] | [Role] | N/A | ✅ / ❌ |
| Payroll | [Role] | [Role] | [Role] | [Payroll system] | ✅ / ❌ |
| Expense reimbursement | Employee | Mgr | Controller | Check | ✅ |

**SoD gaps identified:** [N] — [Description of gap and risk]

---

## CEO Summary

Controls tested: [N]. Controls passing: [N] (✅ operating effectively). Findings: [N] — [High: N / Medium: N / Low: N].
High findings: [What — remediation owner and deadline].
No decisions required / Decision required: [What].
```

## Output Contract
- Findings describe what was observed, not what is feared — "a payment could potentially be approved by only one person" is a design assessment, not a finding; "payment #2847 for $4,200 to [Vendor] on [Date] has only one approval in the Bill.com audit log — the approval threshold requires 2 approvals above $1,000" is a finding; specific, evidenced observations are testable; general concerns are debatable; every finding in the report can be independently verified from the audit evidence
- Control testing is not the same as process observation — watching the controller process invoices and asking "how do you make sure the payment is approved?" is not a test; pulling the Bill.com payment history for the past 3 months and checking each payment over $1,000 for a second approver name in the audit log is a test; Dr. Lewis uses systems and records to test controls, not management representations; "management says controls are in place" is a starting point, not a conclusion
- High findings are remediated before the next audit quarter — a finding that stays open quarter after quarter is a control environment failure; Dr. Lewis tracks all open findings in the findings tracker; High findings have 30-day remediation deadlines; at 30 days, Dr. Lewis re-tests the control; if the finding is not remediated, it is escalated to the CEO and Matt Mathison; the cycle of testing, finding, remediating, and verifying is what makes the audit program effective
- HITL required: Dr. Lewis conducts all controls testing; High findings escalated to CEO within 48 hours; fraud indicators escalated immediately to CEO, Matt Mathison, and attorney; findings remediation verified by Dr. Lewis (re-test before closing); Billing findings at Allevio (false claims risk) require attorney review

## System Dependencies
- **Reads from:** Bill.com payment logs, QuickBooks records, Entra ID user/access logs, AdvancedMD audit trail, payroll records (from HR/payroll system), personnel files (HR), rc-audit-plan-builder (scope of what to test)
- **Writes to:** Controls testing report (SharePoint/RC/<Company>/InternalAudit/Testing/); findings tracker; CEO findings summary; Matt Mathison audit summary; remediation tracking
- **HITL Required:** Dr. Lewis tests; High findings to CEO within 48 hours; fraud indicators: CEO + Matt Mathison + attorney immediately; billing false claims: attorney review; remediation verified by Dr. Lewis re-test

## Test Cases
1. **Golden path:** AP controls test for MBL Partners → Sample: 15 payments over $1K from past 3 months; Test 1: Bill.com dual approval; Results: 14 of 15 had 2 distinct approvers — 1 payment for $2,800 (legal invoice) had only 1 approval (Dr. Lewis approved; controller did not); Controller confirms this was a system configuration issue where legal invoices were routing to an inactive approval queue; High finding: SoD gap on legal invoices; Remediation: Bill.com routing corrected within 2 days; Dr. Lewis re-tested: Pass; Test 2: W-9 on file; 3 of 20 vendors paid without W-9 on file (all three are small recurring vendors paid under $600 in the year — below 1099 threshold; risk is low but procedural gap); Medium finding: obtain W-9s as vendors are next paid; Test 3: Bank info changes; 1 change in past 6 months; documented phone call log exists ✅; CEO briefed on findings; both findings in remediation
2. **Edge case:** During user access testing, discover an AdvancedMD login belonging to a provider who left Allevio 45 days ago → Immediate action: this is a High finding with HIPAA implications; the account should have been disabled on termination (it-offboarding-deprovision); disable the account immediately (don't wait for the report); check the AdvancedMD audit log: did the account have any activity after the provider's last day? If yes: HIPAA access without authorization — potential breach assessment; document the timeline; escalate to CEO immediately; if the audit log shows activity, escalate to CEO + attorney + HIPAA breach assessment protocol; this finding goes into both the controls testing report and the HIPAA incident log
3. **Adversarial:** "Can't we just rely on the external auditors for controls testing?" → External auditors test controls to determine their reliance approach for the financial statement audit; they are not testing to protect the company — they are testing to determine how much they can rely on the controls to reduce their audit work; the internal audit tests controls to protect the company: unauthorized payments, ghost employees, HIPAA access violations, billing accuracy; external auditors do not test HIPAA controls, OIG LEIE compliance, or billing accuracy to Medicare/Medicaid standards; internal and external audit are complementary, not substitutes

## Audit Log
Controls testing reports retained permanently. Evidence supporting findings retained permanently. Findings tracking log retained permanently. Remediation verification records retained. Attorney engagement for fraud/billing findings retained permanently. CEO and Matt Mathison finding notifications retained.

## Deprecation
Retire when portfolio companies have dedicated internal audit functions with formal controls testing methodologies — with Dr. Lewis reviewing HIPAA controls testing at Allevio and high-risk financial controls testing annually. Matt Mathison quarterly findings summary is a permanent governance requirement.
