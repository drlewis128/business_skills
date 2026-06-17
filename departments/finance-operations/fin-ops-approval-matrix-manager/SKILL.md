---
name: fin-ops-approval-matrix-manager
description: "Maintain and enforce the financial approval authority matrix. Use when the user says 'approval matrix', 'approval authority', 'who approves', 'approval level', 'approval threshold', 'spending authority', 'authorization matrix', 'delegation of authority', 'who can approve', 'approval policy', 'expense approval', 'invoice approval authority', 'payment approval', 'approval exception', 'approval limit', 'spending limit', or 'authorization level'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--amount <$>] [--type <invoice|expense|contract|wire|hire>] [--action <lookup|update|audit|exception>]"
---

# Approval Matrix Manager

Maintain and enforce the financial approval authority matrix for MBL portfolio companies — defining who can approve what at which dollar threshold, ensuring the matrix is followed, and managing exceptions. The approval matrix is the foundational internal control: every financial commitment flows through an approval process proportional to its size and risk. Without a clear, enforced matrix, approvals accumulate in the CEO's inbox (slowing operations), or are bypassed entirely (creating fraud risk). Dr. Lewis maintains the matrix, trains new employees on it, audits compliance quarterly, and manages exceptions with full documentation.

## When to Use
- An employee asks "who needs to approve this?" — look up the threshold
- A new employee is onboarded — communicate their approval authority
- A quarterly control audit — sample invoices and confirm approval compliance
- A matrix exception is requested (emergency approval outside normal process)
- The company grows and thresholds need updating
- A portfolio company is newly acquired — establish or document the approval matrix

## Approval Matrix Framework

```
STANDARD APPROVAL MATRIX — MBL PORTFOLIO COMPANIES:

  OPERATING EXPENSES (invoices, vendor payments):
    <$1,000: Controller (Tier 3)
    $1,000-$4,999: CEO (Tier 2)
    $5,000-$24,999: CEO + Dr. Lewis (Tier 1+2)
    >$25,000: Dr. Lewis + Matt Mathison (Tier 0+1)
    
  WIRE TRANSFERS (all wires require additional verification):
    <$10,000: Dr. Lewis
    >$10,000: Dr. Lewis + Matt Mathison
    Note: Wire phone verification required for all wires regardless of amount
    
  CONTRACTS AND COMMITMENTS:
    <$10,000 annual value: CEO
    $10,000-$49,999 annual value: CEO + Dr. Lewis
    >$50,000 annual value: CEO + Dr. Lewis + Matt Mathison
    Multi-year contracts: Add one approval level (e.g., >$10K annual becomes CEO + Dr. Lewis)
    
  EMPLOYEE COMPENSATION:
    Salaries <$75,000: CEO
    Salaries $75,000-$150,000: CEO + Dr. Lewis
    Salaries >$150,000: CEO + Dr. Lewis + Matt Mathison
    Salary changes (any amount): CEO written authorization
    Bonuses <$5,000: CEO
    Bonuses >$5,000: CEO + Matt Mathison
    
  CAPITAL EXPENDITURES (equipment, leasehold improvements):
    <$5,000: CEO
    $5,000-$24,999: CEO + Dr. Lewis
    >$25,000: CEO + Dr. Lewis + Matt Mathison
    Note: Capitalization threshold is $2,500 — all capex reviewed by Dr. Lewis to confirm capitalization vs. expense treatment
    
  WRITE-OFFS AND ADJUSTMENTS:
    AR write-off <$500: Dr. Lewis
    AR write-off $500-$4,999: CEO + Dr. Lewis
    AR write-off >$5,000: Matt Mathison notification required
    Inventory/asset write-off <$5,000: CEO + Dr. Lewis
    Inventory/asset write-off >$5,000: Dr. Lewis + Matt Mathison
    
  BANKING AND TREASURY:
    Wire >$10,000: Matt Mathison
    Credit facility changes (new facility, size change): Matt Mathison
    Investment account changes: Matt Mathison
    Bank account opening/closing: Matt Mathison + CEO
    
  LEGAL AND COMPLIANCE:
    Regulatory filings: Dr. Lewis reviews; CEO signs
    Legal settlements <$10,000: CEO + Dr. Lewis
    Legal settlements >$10,000: CEO + Dr. Lewis + Matt Mathison

SELF-APPROVAL PROHIBITION:
  No person may approve their own expense report, invoice, or payment
  CEO expense reports reviewed by Dr. Lewis
  Dr. Lewis expense reports reviewed by the CEO or Matt Mathison
  Controller expense reports reviewed by Dr. Lewis
  
ABSENCE COVERAGE:
  If the CEO is unavailable (>72 hours): Dr. Lewis covers CEO-level approvals up to $25,000
  If Dr. Lewis is unavailable (>72 hours): Matt Mathison or designated backup covers Dr. Lewis-level approvals
  Coverage designation must be documented (email or SharePoint); not assumed
  
EXCEPTIONS (emergency approvals outside the normal matrix):
  Emergency exception: A payment is required urgently before normal approvers are available
  Process:
    Step 1: Document why the exception is required (specific reason, urgency, amount, vendor)
    Step 2: Obtain verbal authorization from the next-level approver (phone call)
    Step 3: Document the verbal authorization (email confirmation within 24 hours)
    Step 4: Ratification: At the next opportunity, obtain written approval from all required approvers
    Step 5: Log the exception in the exception register (SharePoint/Finance/<Company>/Controls/ExceptionRegister/)
  Limit: No more than 3 exceptions per quarter per entity; if exceptions are recurring, the matrix threshold needs adjustment
  No exceptions allowed for: Wires >$10K; Matt Mathison approvals; period-prior entries
  
ANNUAL MATRIX REVIEW:
  Review timing: Each January, Dr. Lewis reviews the matrix with the CEO and Matt Mathison
  Update triggers: Company growth (revenue >50% YoY); organizational change (new CFO, controller); portfolio company acquisition
  Communicate changes: Updated matrix distributed to all employees within 5 business days; training for employees whose thresholds changed
```

## Output Format

```markdown
# Approval Authority Lookup — [Entity]
**Date:** [Date] | **Transaction type:** [Invoice / Wire / Contract / Compensation / CapEx]
**Amount:** $[X] | **Vendor/Payee:** [Name]

---

## Required Approval

| Threshold | Approver | Status |
|-----------|---------|--------|
| $[X] falls in range: $[X]-$[X] | [Controller / CEO / CEO + Dr. Lewis / Dr. Lewis + Matt] | Required |

**Required approvers:** [List] — all signatures/confirmations required before payment

---

# Approval Matrix — [Entity] (Full Reference)
**Version:** [N] | **Last reviewed:** [Date] | **Approved by:** Dr. Lewis + Matt Mathison

| Transaction Type | <$1K | $1K-$5K | $5K-$25K | >$25K |
|-----------------|------|---------|---------|-------|
| Operating invoices | Controller | CEO | CEO + Dr. Lewis | Dr. Lewis + Matt |
| Capital expenditures | Controller | CEO | CEO + Dr. Lewis | Dr. Lewis + Matt |
| Contracts (annual value) | CEO | CEO | CEO + Dr. Lewis | CEO + Dr. Lewis + Matt |
| Employee salaries | — | CEO (<$75K) | CEO + Dr. Lewis | CEO + Dr. Lewis + Matt |
| Wire transfers | — | Dr. Lewis | Dr. Lewis | Dr. Lewis + Matt |
| AR write-offs | Dr. Lewis (<$500) | CEO + Dr. Lewis | CEO + Dr. Lewis | Matt notification |

**Self-approval prohibited for all types**

---

# Exception Register — [Entity] [Quarter]

| Date | Approver | Amount | Vendor | Reason | Verbal Auth | Written Ratification |
|------|---------|--------|--------|--------|------------|---------------------|
| [Date] | CEO | $8,200 | [Vendor] | CEO unavailable in hospital | Dr. Lewis (phone 6/14) | CEO email 6/15 ✅ |

**Exception count this quarter:** [N] of 3 maximum
```

## Output Contract
- The matrix is the law, not a guideline — an approval matrix that is routinely bypassed is worse than no matrix, because it creates the false impression of control while providing none; Dr. Lewis audits approval compliance quarterly (random sample of 15 invoices from the quarter — were they approved at the correct level?); any invoice that was approved at a level below the required threshold is a control failure; Dr. Lewis investigates why it happened, provides retraining, and documents the remediation; a second occurrence by the same person results in CEO escalation
- No self-approval, ever — the most common small company approval control failure is the CEO approving the CEO's own expenses; Dr. Lewis reviews CEO expense reports; if the CEO has approved their own expense, Dr. Lewis sends it back for re-review; the CEO's approval authority is real and broad, but not self-referential; Dr. Lewis's expense reports are reviewed by the CEO or Matt Mathison; this is non-negotiable because self-approval is how expense fraud starts
- Exceptions are logged and limited — an exception to the approval matrix is not a violation if it is documented, verbally authorized by the next-level approver, and ratified in writing within 24 hours; exceptions are expected in real business operations (emergencies happen); but 8 exceptions per quarter at the same company signals that the matrix thresholds are wrong, not that the matrix should be overridden repeatedly; Dr. Lewis monitors the exception register and recommends threshold adjustments when exceptions are recurring
- HITL required: Dr. Lewis maintains the matrix; CEO and Matt Mathison approve any changes to the matrix thresholds; quarterly compliance audit conducted by Dr. Lewis; exception register reviewed monthly; all exceptions logged and ratified in writing; any invoice that appears to have been self-approved is investigated by Dr. Lewis immediately

## System Dependencies
- **Reads from:** Current approval matrix (SharePoint/Finance/<Company>/Controls/ApprovalMatrix/); Bill.com approval log; invoice register; contract register; HR compensation records; exception register; quarterly compliance audit records
- **Writes to:** Updated approval matrix (version-controlled); exception register; quarterly compliance audit report; CEO and Matt Mathison matrix update notifications; new employee approval authority training documentation
- **HITL Required:** Dr. Lewis maintains and enforces; CEO and Matt Mathison approve matrix changes; quarterly audit by Dr. Lewis; exception register reviewed monthly; self-approval violations flagged to CEO immediately

## Test Cases
1. **Golden path:** Allevio — new employee asks "who approves the $4,200 IT vendor invoice I received?" → Dr. Lewis pulls up the approval matrix: $4,200 falls in the $1,000-$4,999 range for operating invoices; required approver: CEO; Dr. Lewis confirms: "The CEO needs to approve this invoice before we can pay it. Upload it to Bill.com and route it to the CEO for approval. Once approved, it'll go into the next Tuesday ACH batch. Let me know if you have questions about the process." Employee routes to CEO; CEO approves; invoice goes through the standard AP process; no exception needed; Dr. Lewis adds this interaction to the quarterly training log as evidence of the matrix being applied correctly
2. **Edge case:** The HIVE CEO is unavailable (traveling internationally) and a vendor has issued a $7,800 invoice that must be paid by Friday to avoid a 15% late fee ($1,170 penalty) → The $7,800 invoice requires CEO + Dr. Lewis approval; CEO is unavailable; Dr. Lewis emails the CEO and attempts a phone call; if the CEO confirms by email ("Approved — go ahead"), Dr. Lewis treats the email as written approval and logs it; if the CEO is completely unreachable (>72 hours), Dr. Lewis can cover CEO-level approvals up to $25,000 per the absence coverage policy; Dr. Lewis documents the coverage: "CEO unavailable — travel; Dr. Lewis covering per absence policy; invoice #[N] $7,800 approved by Dr. Lewis; CEO ratification requested upon return"; pays the invoice to avoid the late fee; CEO ratifies when back; exception logged in the register; Dr. Lewis notes that the $1,170 penalty avoidance was the correct economic decision
3. **Adversarial:** A sales operations manager submits an invoice for a $32,000 software platform, arguing it's "in the budget so it's already approved" → Dr. Lewis explains: "Budget approval and payment approval are different things. The budget authorized the spending category, but the specific invoice requires approval from Dr. Lewis and Matt Mathison ($32,000 is above the $25,000 threshold). I'll route this to both of us — please confirm the vendor is on our active vendor list and that the contract has been countersigned." The sales ops manager may be frustrated, but the budget approval does not substitute for the transaction-level approval matrix; Dr. Lewis routes the invoice to Matt Mathison with the relevant contract and confirms the contract value was approved (at which level); if Matt Mathison confirms approval, the invoice processes through the standard payment run; Dr. Lewis notes that the sales ops manager needs approval matrix training (this was likely an education gap, not a bad-faith attempt to bypass the matrix)

## Audit Log
Current approval matrix retained (version-controlled). All previous versions retained. Quarterly compliance audit reports retained. Exception register retained. CEO and Matt Mathison matrix approval records retained. Training records for new employees retained. Self-approval incidents and remediation records retained.

## Deprecation
Retire when each portfolio company has a controller who maintains the approval matrix and audits compliance — with Dr. Lewis reviewing the quarterly audit results and Matt Mathison approving any threshold changes.
