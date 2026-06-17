---
name: fin-ops-internal-controls-designer
description: "Design internal controls — segregation of duties, approval matrices, and control frameworks. Use when the user says 'internal controls', 'design controls', 'segregation of duties', 'SOD', 'approval matrix', 'control framework', 'financial controls', 'control design', 'who approves what', 'approval authority', 'finance controls', 'control environment', 'control assessment', 'controls documentation', 'COSO framework', 'approval levels', 'financial guardrails', 'control gaps', or 'build controls'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--focus <ap|payroll|cash|all>] [--stage <design|assess|document>]"
---

# Internal Controls Designer

Design and document internal controls for MBL portfolio companies — establishing the segregation of duties, approval matrices, and control procedures that prevent fraud, catch errors, and create a defensible financial control environment. Internal controls at PE portfolio companies are not bureaucracy — they are the mechanisms that protect LP capital from fraud and error. A PE-backed company that lacks basic controls (anyone can add vendors, anyone can process payments, one person controls payroll end-to-end) is not a growth opportunity; it is a fraud risk. Dr. Lewis designs the control environment to be proportionate to the company's scale: tight where the risks are highest (cash, payroll, vendor setup) and lightweight where the risks are lower.

## When to Use
- New portfolio company acquisition (Day 1 priority) — assess and establish controls
- A control gap is identified (fin-ops-audit-preparer, bank reconciliation fraud flag)
- Onboarding a new controller — document the expected control framework
- Preparing for a CPA audit — auditors will test the control environment
- A fraud event has occurred — design remediation controls

## Internal Controls Framework

```
COSO Framework applied to PE portfolio companies (simplified):
  Control Environment: Tone from the top (Dr. Lewis and CEO); competent staff; clear authorities
  Risk Assessment: Identify financial risks; assess likelihood and impact
  Control Activities: The specific policies and procedures (what we design here)
  Information & Communication: Reporting (monthly financials, KPIs, variance explanations)
  Monitoring: Bank reconciliations, audits, periodic control testing
  
Core control areas and minimum controls by area:

  CASH AND BANK CONTROLS:
    Segregation: Person who opens mail/receives checks ≠ person who records in QuickBooks ≠ person who approves payments
    At small company (5-15 employees): CEO reviews bank statements independently; controller handles recording
    Bank statement review: CEO reviews the monthly bank statement (the actual PDF) independently of the controller
    Dual signature: Wire transfers require two authorizations (controller executes + Dr. Lewis + Matt Mathison per approval matrix)
    Online banking: Limit admin access; controller has transaction rights; CEO has view-only; Dr. Lewis has view + approval
    
  ACCOUNTS PAYABLE CONTROLS:
    Vendor master: Only authorized users can add/modify vendors (controller + Dr. Lewis)
    Invoice approval matrix:
      <$1,000: Controller
      $1,000-$5,000: CEO
      $5,000-$25,000: CEO + Dr. Lewis
      >$25,000: Dr. Lewis + Matt Mathison
    Three-way match: For PO-based invoices: PO + receipt + invoice before payment
    No verbal approvals: All invoice approvals documented (Bill.com approval workflow)
    
  PAYROLL CONTROLS:
    Payroll preparer ≠ Payroll approver: Controller prepares; Dr. Lewis reviews and approves
    New hire/termination authorization: CEO authorizes in writing before payroll change
    Payroll register review: Dr. Lewis compares payroll register to headcount list each cycle
    Ghost employee check: Periodic cross-check of payroll roster to HR records (quarterly)
    
  CASH RECEIPTS / AR CONTROLS:
    Remote deposit or controlled deposit: Checks deposited by authorized staff only
    Cash receipt log: Record all checks received before deposit (date, amount, payer)
    Segregation: Person recording AR payment ≠ person handling the physical check
    Monthly AR reconciliation: AR aging to QuickBooks balance (GL reconciliation)
    
  EXPENSE REPORT CONTROLS:
    Policy: Written expense policy with clear limits (meals, travel, per diem)
    Original receipts required: No reimbursement without receipt
    Manager approval: Employee's expense reports approved by their manager (CEO approves executive expenses)
    Dr. Lewis reviews CEO expense reports
    
  GENERAL LEDGER CONTROLS:
    Period lock: Close prior periods in QuickBooks; require Dr. Lewis approval to reopen
    Journal entry approval: All manual JEs >$5,000 require Dr. Lewis approval
    Reconciliation: All BS accounts reconciled monthly (fin-ops-gl-reconciler)
    
  Approval authority matrix template:
  
    | Action | Controller | CEO | Dr. Lewis | Matt Mathison |
    |--------|-----------|-----|-----------|--------------|
    | Invoice approval <$1K | ✅ | — | — | — |
    | Invoice approval $1K-$5K | Prepare | ✅ | — | — |
    | Invoice approval $5K-$25K | Prepare | ✅ | ✅ | — |
    | Invoice approval >$25K | Prepare | — | ✅ | ✅ |
    | Wire transfer >$10K | Prepare | — | ✅ | ✅ |
    | New vendor setup | Prepare | ≤$25K | >$25K | Related party |
    | Payroll submission | Prepare | — | ✅ | Notify if >$10K bonus |
    | New hire authorization | — | ✅ | — | Executive hires |
    | Contract signing | — | ≤$25K | — | >$25K |
    | Write-off AR >$5K | — | ✅ | ✅ | Notify |
    | Period reopen | — | — | ✅ | — |
    | Budget approval | — | — | Dr. Lewis + CEO | ✅ |
    
  Control testing (quarterly, Dr. Lewis):
    Select 5 random invoices: Confirm they have the correct approval level on file
    Select 2 payroll cycles: Confirm pre-submission approval by Dr. Lewis on file
    Select 3 vendor setups: Confirm W-9 on file and approval documented
    Bank statement: Confirm CEO reviewed the bank statement independently last month
    Result: Document pass/fail for each test; address any failures immediately
```

## Output Format

```markdown
# Internal Controls Design — [Entity]
**Designed by:** Dr. Lewis | **Effective date:** [Date] | **Review date:** [Date + 1 year]

---

## Control Environment Assessment

| Dimension | Status | Notes |
|-----------|--------|-------|
| Tone at top (CEO/Dr. Lewis commitment to controls) | ✅/⚠️ | |
| Qualified controller/bookkeeper | ✅/⚠️ | |
| Written policies (AP, payroll, expense) | ✅/⚠️ | |
| IT access controls (QuickBooks, banking) | ✅/⚠️ | |
| Financial reporting cadence | ✅/⚠️ | |

---

## Approval Authority Matrix

[Insert completed authority matrix for entity]

---

## Control Gaps Identified

| Gap | Risk | Priority | Remediation | Owner | Deadline |
|-----|------|----------|------------|-------|----------|
| No CEO bank statement review | Fraud could go undetected | HIGH | CEO reviews monthly PDF | CEO | Next month-end |
| One person controls payroll end-to-end | Ghost employee / payroll fraud | HIGH | Dr. Lewis reviews before each submission | Dr. Lewis | Immediate |
| No vendor setup approval >$25K | Fraudulent vendor risk | HIGH | fin-ops-vendor-setup implemented | Dr. Lewis | Immediate |

---

## Control Procedures (by area)

### Cash & Banking
[Documented procedures per framework above]

### Accounts Payable
[Documented procedures per framework above]

### Payroll
[Documented procedures per framework above]

### AR & Cash Receipts
[Documented procedures per framework above]

---

## Quarterly Control Test Schedule

| Test | Q1 | Q2 | Q3 | Q4 |
|------|----|----|----|----|
| Invoice approval sampling | Dr. Lewis | Dr. Lewis | Dr. Lewis | Dr. Lewis |
| Payroll register review | Dr. Lewis | Dr. Lewis | Dr. Lewis | Dr. Lewis |
| Vendor setup sampling | Dr. Lewis | Dr. Lewis | Dr. Lewis | Dr. Lewis |
| Bank statement CEO review confirmation | Dr. Lewis | Dr. Lewis | Dr. Lewis | Dr. Lewis |

---

## Attestation

**Dr. Lewis:** Controls above are appropriate for [Entity]'s size and risk profile. Control testing scheduled quarterly. Last tested: [Date].
**CEO:** [Entity] management is committed to maintaining these controls.
```

## Output Contract
- Segregation of duties is non-negotiable even at small company size — the most common fraud at small companies is perpetrated by one trusted employee who controls multiple steps of a financial process (adding vendors, approving invoices, running payments, reconciling the bank); at a 10-person company, perfect segregation is impossible, but minimum segregation is achievable: the controller should not also be the person who approves their own expense reports, adds vendors, and reconciles the bank without CEO or Dr. Lewis oversight; Dr. Lewis designs compensating controls (CEO bank statement review, Dr. Lewis payroll approval, quarterly control testing) to replace segregation that can't be achieved at small scale
- Approval matrices must be documented, not verbal — a verbal understanding of "the CEO approves invoices over $1,000" is not a control; it's a policy that may or may not be followed consistently; Dr. Lewis documents the approval matrix and embeds it in the Bill.com approval workflow so it is enforced mechanically; any deviation from the matrix is visible in the Bill.com audit trail; if a controller approves a $5,000 invoice without CEO approval, the Bill.com log shows it; Dr. Lewis reviews the approval log monthly as part of the AP aging review
- Control gaps require a remediation owner and deadline — a list of control gaps with no owner or deadline is a risk register, not a control plan; every gap Dr. Lewis identifies is assigned: the specific control to implement, who is responsible for implementation, and the deadline; Dr. Lewis tracks the gap remediation quarterly; unclosed gaps after the deadline are escalated to the CEO and Matt Mathison; control environment improvement is part of the VCP for portfolio companies (improved controls → reduced audit adjustments → smoother exit process)
- HITL required: Dr. Lewis designs and maintains the control framework for all portfolio companies; CEO is briefed on the control framework and attests to their responsibility for the control environment; Matt Mathison is briefed on material control gaps at acquisition and annually; quarterly control testing performed by Dr. Lewis; any fraud event or material control failure escalated to Matt Mathison immediately

## System Dependencies
- **Reads from:** Existing QuickBooks user permissions; Bill.com approval workflow settings; HR records (for segregation assessment); bank online access permissions; prior audit management letter (if any)
- **Writes to:** Internal controls policy document (SharePoint/Finance/<Company>/Controls/); approval matrix (embedded in Bill.com workflow); QuickBooks user permissions; quarterly control test results; Matt Mathison control environment briefing
- **HITL Required:** Dr. Lewis designs and owns the control framework; CEO attests to control environment commitment; Matt Mathison briefed at acquisition and annually; all fraud events escalated to Matt Mathison immediately

## Test Cases
1. **Golden path:** New portfolio company acquisition — Day 30 controls assessment → Dr. Lewis assesses the control environment: QuickBooks — one login, controller has full admin access (high risk); Bill.com — no approval workflow, all invoices auto-approved (high risk); payroll — controller submits and approves without review (high risk); bank statement — nobody reviews independently (high risk); AR — invoices sent monthly, collections ad hoc (medium risk); Dr. Lewis designs the control matrix; implements Bill.com approval workflow (CEO approval >$1K; Dr. Lewis approval >$5K); restricts QuickBooks admin to Dr. Lewis; establishes Dr. Lewis pre-submission payroll review; CEO commits to monthly bank statement review; control gaps documented; remediation plan created; CEO briefed; Matt Mathison receives acquisition controls brief; all HIGH risks remediated within 30 days
2. **Edge case:** A small portfolio company (5 employees) where the "controller" is the CEO's spouse — same person does AP, payroll, and bank reconciliation → This is maximum segregation risk; Dr. Lewis designs compensating controls specific to this situation: (1) CEO reviews every single bank statement and bank feed transaction monthly — no delegation; (2) Dr. Lewis reviews and approves every payment batch regardless of amount; (3) Dr. Lewis reviews payroll register before every submission; (4) All vendors require Dr. Lewis approval; (5) CEO receives a separate login to view QuickBooks and Bill.com; compensating controls cannot eliminate the risk entirely but they significantly limit exposure; Dr. Lewis documents this as a HIGH risk environment and recommends hiring a third-party bookkeeper/controller as the company grows
3. **Adversarial:** CEO says "these controls slow us down — can we relax the approval requirements?" → Dr. Lewis listens to the specific objection: which approval requirement is causing friction? If the CEO is frustrated that every $800 invoice requires CEO approval — that's a legitimate feedback; Dr. Lewis may adjust the threshold to $1,500 if the CEO finds $1K too low; if the CEO wants to remove approval requirements for invoices from "trusted vendors" — that's a risk: trusted vendors are often the mechanism for fraud because the trust is relied upon to bypass controls; Dr. Lewis explains the risk and does not remove approval requirements for specific vendors; the approval workflow in Bill.com takes 30 seconds; the friction is not the approval process — it may be that the CEO is getting too many notifications; Dr. Lewis adjusts the notification settings in Bill.com without changing the approval requirements

## Audit Log
Controls design documents retained permanently. Quarterly test results retained. Control gap remediation tracking retained. Fraud event records retained permanently. CEO and Matt Mathison briefings retained. All approval matrix changes retained with effective dates.

## Deprecation
Retire when each portfolio company has a CFO or Audit Committee that owns the control environment — with Dr. Lewis participating in annual control assessments and Matt Mathison receiving the annual control environment report.
