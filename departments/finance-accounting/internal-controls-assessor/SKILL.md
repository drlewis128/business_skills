---
name: internal-controls-assessor
description: "Assess internal financial controls. Use when the user says 'internal controls', 'financial controls', 'control assessment', 'segregation of duties', 'control environment', 'financial control review', 'assess controls', 'control gaps', 'control weakness', 'access controls', 'approval controls', 'fraud prevention controls', or 'financial governance'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <ap|ar|payroll|financial-reporting|all>] [--depth <quick|full>]"
---

# Internal Controls Assessor

Assess the internal financial controls at an MBL portfolio company — identifying where controls are working, where there are gaps, and where fraud or error risk is highest. Internal controls are the policies, procedures, and checks that ensure financial information is accurate, assets are protected, and the company's financial activities comply with law and policy. For MBL-scale businesses, the goal is not an audit-grade control environment but a right-sized control system that catches material errors and prevents the most common forms of fraud.

## When to Use
- Annual controls assessment — is the control environment still appropriate?
- Matt Mathison asks "how confident are we in [Company]'s financial controls?"
- A new portfolio company is being onboarded — baseline control assessment needed
- A financial discrepancy has been identified — controls review to find the gap
- Preparing for an audit — controls must be in place and operating
- A change in staff (controller departure, bookkeeper change) creates a control gap

## Controls Framework

```
Five control categories for MBL-scale businesses:

1. ACCESS CONTROLS: Who can access money and systems?
   - Bank accounts: who has signing authority / online access?
   - QuickBooks: who has admin access? Who can post JEs?
   - Bill.com: who can add vendors, create payments?
   - Payroll: who can change pay rates, add employees?

2. APPROVAL CONTROLS: Who must approve before money moves?
   - Invoice approval thresholds (Bill.com workflow)
   - Check signing limits
   - CapEx approval thresholds
   - Expense report approval

3. RECONCILIATION CONTROLS: Are accounts being verified?
   - Bank reconciliation: who does it? Who reviews it?
   - AR aging: reviewed monthly?
   - AP aging: reviewed monthly?
   - Payroll reconciliation: payroll register vs. bank

4. SEGREGATION OF DUTIES (SOD): No one person can complete a transaction alone
   - Ideal: Authorize ≠ Record ≠ Custody of assets
   - Reality for small companies: Some SOD gaps are unavoidable;
     compensating controls (management review, audits) reduce the risk

5. REPORTING AND OVERSIGHT: Is someone reviewing the financials?
   - Monthly financial statements: who reviews?
   - Variance analysis: who explains variances?
   - Budget vs. actual: reviewed and approved?
```

## Output Format

```markdown
# Internal Controls Assessment — <Company Name>
**Assessment date:** <Date> | **Prepared by:** Dr. John Lewis
**Scope:** [AP / AR / Payroll / Financial Reporting / All]
**Last assessment:** <Date or "First assessment">

---

## Controls Summary

| Category | Risk level | Controls in place | Gaps identified | Priority |
|---------|-----------|------------------|----------------|---------|
| Access controls | 🟢/🟡/🔴 | [Y/N — adequate] | [Y/N] | |
| Approval controls | 🟢/🟡/🔴 | | | |
| Reconciliation controls | 🟢/🟡/🔴 | | | |
| Segregation of duties | 🟢/🟡/🔴 | | | |
| Reporting and oversight | 🟢/🟡/🔴 | | | |
| **Overall control environment** | 🟢/🟡/🔴 | | | |

---

## Detailed Assessment

### 1. Access Controls

| Control point | Who has access | Appropriate? | Gap | Risk if not addressed |
|--------------|---------------|-------------|-----|----------------------|
| Bank accounts — signing authority | [Names] | ✅ / ❌ | [If gap: what] | [If no gap: N/A] |
| Bank accounts — online access | [Names] | ✅ / ❌ | | |
| QuickBooks — admin access | [Names] | ✅ / ❌ | | |
| QuickBooks — journal entry access | [Names] | ✅ / ❌ | | |
| Bill.com — admin access | [Names] | ✅ / ❌ | | |
| Bill.com — payment approval | [Names + thresholds] | ✅ / ❌ | | |
| Payroll — rate/employee changes | [Names] | ✅ / ❌ | | |
| Payroll — payroll approval | [Names] | ✅ / ❌ | | |

**Access control risks:** [Specific concerns — anyone with too much access? Former employees with lingering access?]

---

### 2. Approval Controls

| Transaction type | Threshold | Required approver | Documented? | Working? |
|----------------|---------|------------------|------------|---------|
| Vendor invoices — low | <$1,000 | [Controller] | ✅ / ❌ | ✅ / ❌ |
| Vendor invoices — medium | $1K-$10K | Dr. Lewis | ✅ | ✅ |
| Vendor invoices — high | >$10K | Matt Mathison | ✅ | ✅ / 🟡 |
| CapEx purchases | >$5K | Dr. Lewis | ✅ / ❌ | |
| CapEx purchases | >$25K | Matt Mathison | ✅ / ❌ | |
| Expense reports | All | Dr. Lewis | ✅ / ❌ | |
| Payroll changes | Any | Dr. Lewis + CEO | ✅ / ❌ | |
| New vendors | Any | Dr. Lewis | ✅ / ❌ | |
| New bank accounts | Any | Matt Mathison | ✅ / ❌ | |

**Approval control gaps:** [Any approvals bypassed or not formalized?]

---

### 3. Reconciliation Controls

| Reconciliation | Performed by | Reviewed by | Frequency | Last completed | Status |
|--------------|-------------|------------|---------|--------------|--------|
| Bank reconciliation | [Name] | [Reviewer ≠ preparer] | Monthly | [Date] | ✅ / ❌ |
| Credit card reconciliation | | | Monthly | | |
| AR aging review | | | Monthly | | |
| AP aging review | | | Monthly | | |
| Payroll reconciliation | | | Each pay period | | |
| Balance sheet reconciliation | | | Monthly | | |

**Reconciliation gaps:** [Any accounts not being reconciled? Reviewer same as preparer (SOD risk)?]

---

### 4. Segregation of Duties

| Transaction cycle | Authorizes | Records | Holds custody | SOD status |
|-----------------|-----------|---------|--------------|-----------|
| AP / Vendor payments | [Approver] | [Bookkeeper] | [Bill.com / bank] | ✅ / ❌ SOD gap |
| Payroll | [CEO] | [Payroll service] | [Payroll bank] | ✅ / ❌ |
| AR / Collections | [CEO / Billing] | [Bookkeeper] | [Bank deposit] | ✅ / ❌ |
| Journal entries | [Controller] | [Bookkeeper / QB] | N/A | ✅ / ❌ |
| Bank account reconciliation | — | [Different from poster] | — | ✅ / ❌ |

**SOD gaps:** [Identify where one person can authorize AND record AND access funds]
**Compensating controls for SOD gaps:** [What management review or auditing compensates for unavoidable SOD gaps?]

---

### 5. Reporting and Oversight

| Control | In place? | Frequency | Responsible | Working? |
|---------|----------|----------|------------|---------|
| Monthly financial statements | ✅ / ❌ | Monthly | Dr. Lewis | ✅ |
| Variance analysis (budget vs. actual) | ✅ / ❌ | Monthly | Dr. Lewis | |
| Matt Mathison financial review | ✅ / ❌ | Monthly | Matt Mathison | |
| Board financial review | ✅ / ❌ | Quarterly | Board | |
| Annual CPA review / compilation | ✅ / ❌ | Annual | CPA | |
| Independent payroll verification | ✅ / ❌ | Annual | CPA | |

---

## Control Gaps and Remediation

| Gap | Risk level | Current exposure | Remediation | Timeline | Owner |
|-----|-----------|----------------|------------|---------|-------|
| [Former employee still has QB access] | 🔴 High | [Can post unauthorized JEs] | [Remove access immediately] | Immediate | Dr. Lewis |
| [No second approver for payroll changes] | 🟡 Medium | [Single person can add ghost employees] | [Require Dr. Lewis approval for all payroll changes] | 30 days | Dr. Lewis |
| [Bank reconciliation done by same person who posts transactions] | 🟡 Medium | [Errors/manipulation could go undetected] | [Dr. Lewis reviews bank recs prepared by bookkeeper] | Immediate | Dr. Lewis |

---

## Matt Mathison Summary

Controls assessment — [Company] [date]: Overall control environment is 🟢/🟡/🔴. [N] gaps identified — [N] high priority, [N] medium. **Highest risk:** [1 sentence on the most critical gap and what's being done]. **Decision needed:** [Specific — or "No decision needed — Dr. Lewis remediating identified gaps"].
```

## Output Contract
- Access controls always verified against actual system settings, not just policy — stated policy is not the same as actual access; who has QuickBooks admin access must be verified in QuickBooks, not inferred from the org chart; former employees with lingering system access are a real and common risk
- SOD gaps always paired with compensating controls — small companies cannot achieve perfect SOD (often the same person must do multiple roles); the assessment must identify the SOD gap AND specify what compensating control reduces the risk (management review, periodic auditing, surprise bank statement review)
- High-priority gaps require immediate remediation — any control gap rated 🔴 (high risk) must have a remediation action started immediately, not "at the next review"; the most common high-risk gaps: former employee access, no second approver for payroll, same person authorizes and records payments
- Annual assessment minimum — the control environment should be assessed at least annually or whenever there's a significant staff change, system change, or financial discrepancy; controls that are documented but not operating are not controls
- HITL required: Dr. Lewis conducts the assessment; Matt Mathison receives the assessment report; high-priority gaps (🔴) require Matt Mathison notification immediately upon identification; remediation of approval threshold or bank access controls requires Matt Mathison involvement; any indication of actual fraud or intentional control bypass requires Matt Mathison and legal counsel immediately

## System Dependencies
- **Reads from:** QuickBooks (user access list), Bill.com (user access and approval workflow), bank statements (authorized signers), payroll system (user access), expense policy documents
- **Writes to:** Controls assessment (SharePoint/Finance/Controls/); remediation tracker; Matt Mathison brief
- **HITL Required:** Dr. Lewis conducts; Matt Mathison receives report; 🔴 gaps require immediate escalation; suspected fraud requires Matt Mathison + legal counsel immediately

## Test Cases
1. **Golden path:** Allevio annual controls assessment June 2026 → Access: QB admin: Dr. Lewis + controller ✅; Bill.com admin: Dr. Lewis ✅; bank signing: Matt Mathison + CEO ✅; payroll: payroll service + CEO initiates, Dr. Lewis approves ✅; Approval: all thresholds in Bill.com workflow ✅; CapEx: $5K Dr. Lewis, $25K+ Matt Mathison ✅; Reconciliations: bank recon done by controller, reviewed by Dr. Lewis ✅; AR aging reviewed monthly ✅; SOD: minor gap — controller can post JEs without second reviewer; compensating control: Dr. Lewis reviews all JEs in QB monthly; overall: 🟢 — one medium gap (JE review); remediation: Dr. Lewis adds month-end JE review step to close checklist; no high-priority gaps; Matt Mathison: "Controls healthy — one process improvement added to close checklist"
2. **Edge case:** A bookkeeper who left 6 months ago still has QuickBooks and Bill.com access → immediate action: "Former employee [Name] still has active QuickBooks and Bill.com access as of [date]. This is a 🔴 HIGH risk — they can access financial records and potentially initiate transactions. Immediate action: (1) Disable QB access within 2 hours; (2) Disable Bill.com access within 2 hours; (3) Review all QB and Bill.com activity by [Name] after [termination date] for unauthorized transactions; (4) Change bank online banking passwords if [Name] had access; (5) Matt Mathison notified." This is a crisis-level control failure; treat it as such
3. **Adversarial:** A CEO pushes back on the approval threshold, saying "requiring Dr. Lewis approval for every invoice over $1,000 slows us down" → the threshold is a control, not a bureaucratic hurdle; the response: "The $1,000 threshold exists because AP fraud and processing errors typically occur in the $500-$5,000 range — large enough to be meaningful, small enough to slip through without scrutiny. If the review process is creating delays, the fix is to improve our review speed (same-day SLA for Dr. Lewis approval), not to eliminate the control. I'll commit to reviewing all invoices in Bill.com within 4 business hours." Never eliminate an approval control because it's inconvenient — improve the execution of the control instead.

## Audit Log
All controls assessments retained by entity and date. Gap identification and remediation actions documented. Matt Mathison notifications for 🔴 gaps retained. Former employee access termination documented. Annual assessment cycle maintained.

## Deprecation
Retire when portfolio companies have dedicated controllers who own the internal control environment with quarterly self-assessments and when MBL has an annual independent controls review by the CPA firm that covers all portfolio companies systematically.
