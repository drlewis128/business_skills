---
name: fin-ops-audit-preparer
description: "Prepare for CPA review or audit — PBC list management, workpaper organization, and auditor coordination. Use when the user says 'audit prep', 'prepare for audit', 'CPA audit', 'audit ready', 'PBC list', 'prepared by client', 'year-end audit', 'audit preparation', 'financial statement audit', 'CPA review', 'audit workpapers', 'support for audit', 'audit schedule', 'auditor requests', 'compile audit documents', 'GAAP audit', 'review engagement', or 'audit package'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <audit|review|compilation>] [--year <YYYY>] [--stage <prep|active|wrap-up>]"
---

# Audit Preparer

Prepare MBL portfolio companies for CPA audit, review, or compilation engagements — organizing the PBC (prepared by client) list, assembling workpapers, and managing the auditor relationship to deliver a clean, timely engagement. A well-prepared audit is a fast audit: auditors spend most of their time on engagements where the company is disorganized, records are incomplete, or account reconciliations are missing; companies that deliver a complete PBC package on Day 1 of fieldwork finish in 2-3 weeks instead of 6-8; the savings in audit fees alone justify the preparation time. At PE portfolio scale, a clean audit opinion is also a signal to potential buyers and LPs that the company's financials can be trusted.

## When to Use
- Year-end close complete — begin audit prep (typically January for calendar year companies)
- CPA engagement letter received — review scope and start PBC list
- Auditors on-site or beginning remote fieldwork — deliver PBC package
- Auditors have outstanding requests — coordinate responses
- Audit findings (adjustments, management letter comments) — respond and remediate

## Audit Preparation Framework

```
Audit types (know which engagement you're preparing for):
  Audit: Highest assurance; CPA issues an opinion; tests internal controls; required by some lenders and PE transactions
  Review: Moderate assurance; CPA performs analytical procedures; inquiries; no controls testing; cheaper than audit
  Compilation: Lowest; CPA compiles financials from management's records; no testing or assurance
  
Standard timeline (calendar year company, audit):
  January 1-15: Year-end close complete; preliminary financial statements ready
  January 15-31: PBC package assembled; delivered to CPA before fieldwork
  February 1-28: Auditor fieldwork (remote or on-site)
  March 1-15: Draft audit report issued; management reviews
  March 15-31: Management representation letter signed; final audit report issued
  March 31: Issued; delivered to lenders or LPs (as required)
  
PBC List — Standard items for a PE portfolio company audit:

  SECTION 1 — FINANCIAL STATEMENTS:
  ☐ Trial balance as of December 31 (from QuickBooks)
  ☐ Draft P&L, Balance Sheet, Cash Flow Statement (12-month)
  ☐ Prior year final financial statements (for comparative)
  
  SECTION 2 — CASH:
  ☐ Bank statements for all accounts — all 12 months
  ☐ December 31 bank reconciliations (all accounts)
  ☐ Prior year bank reconciliations (to verify beginning balance)
  
  SECTION 3 — ACCOUNTS RECEIVABLE:
  ☐ AR aging as of December 31
  ☐ Allowance for doubtful accounts calculation and support
  ☐ Top 10 customer aging detail and subsequent payment confirmation
  
  SECTION 4 — PREPAID AND OTHER ASSETS:
  ☐ Prepaid expense schedule (amortization by item)
  ☐ Security deposit schedule (name, amount, lease reference)
  
  SECTION 5 — FIXED ASSETS:
  ☐ Fixed asset schedule (additions, disposals, depreciation)
  ☐ December 31 fixed asset register
  ☐ Support for major additions (invoices, contracts)
  
  SECTION 6 — ACCOUNTS PAYABLE AND ACCRUALS:
  ☐ AP aging as of December 31
  ☐ Accrued liabilities schedule (each item with basis)
  ☐ Year-end AP statements from major vendors (confirm balances)
  
  SECTION 7 — DEBT:
  ☐ Loan agreements for all outstanding debt
  ☐ December 31 lender statements (confirm balances)
  ☐ Debt amortization schedules
  
  SECTION 8 — PAYROLL:
  ☐ W-2/W-3 summary for the year
  ☐ 941 returns (federal payroll tax) — all 4 quarters
  ☐ State payroll tax returns — all quarters
  ☐ Payroll register (annual summary by employee)
  
  SECTION 9 — CONTRACTS AND AGREEMENTS:
  ☐ Customer contracts (major/recurring revenue)
  ☐ Vendor contracts (major recurring expenses)
  ☐ Lease agreements
  ☐ Loan agreements (duplicated from Section 7)
  ☐ Related-party agreements (if any)
  
  SECTION 10 — CORPORATE:
  ☐ Entity formation documents (Articles of incorporation/organization)
  ☐ Operating agreement or bylaws
  ☐ Minutes of board/member meetings (if formal meetings held)
  
  SECTION 11 — COMPLIANCE (Healthcare — Allevio):
  ☐ OIG LEIE screen results for all providers (annual)
  ☐ State medical board license confirmations (all providers)
  ☐ Payer credentialing certificates (current)
  ☐ HIPAA privacy notice and BAA list
  
  SECTION 12 — RELATED PARTY TRANSACTIONS:
  ☐ List of all related-party transactions and the documented basis (FMV)
  ☐ Related-party disclosure checklist
  
  Auditor management tips:
    Respond within 24 hours to any auditor request
    Never let an auditor sit waiting for a document — audit clock running means audit fee clock running
    For complex requests: Ask for the auditor's specific concern before providing; sometimes a conversation resolves faster
    Draft financial statements to auditors before fieldwork — let them start analytical review early
    
  Management representation letter (signed at audit close):
    CEO + Dr. Lewis sign; confirms financials are complete and accurate; management is not aware of fraud; all related-party transactions disclosed
    Dr. Lewis reviews the management letter carefully before the CEO signs — it is a legal document
```

## Output Format

```markdown
# Audit Preparation Status — [Entity] [Year] [Audit/Review/Compilation]
**CPA firm:** [Firm name] | **Engagement partner:** [Name]
**Fieldwork start:** [Date] | **Target report date:** [Date]
**Prepared by:** Dr. Lewis + [Controller]

---

## PBC Package Status

| Section | Description | Status | Delivered | Outstanding |
|---------|------------|--------|-----------|------------|
| 1 | Financial statements | ✅/⚠️ | [Date] | [Item] |
| 2 | Cash | ✅ | [Date] | — |
| 3 | Accounts receivable | ✅ | [Date] | — |
| 4 | Prepaid and other assets | ✅ | [Date] | — |
| 5 | Fixed assets | ✅ | [Date] | — |
| 6 | AP and accruals | ✅ | [Date] | — |
| 7 | Debt | ✅ | [Date] | — |
| 8 | Payroll | ⚠️ | Partial | Q4 941 not yet filed |
| 9 | Contracts | ✅ | [Date] | — |
| 10 | Corporate | ✅ | [Date] | — |
| 11 | Compliance (Healthcare) | ✅ | [Date] | — |
| 12 | Related-party | ✅ | [Date] | — |

**PBC package completeness:** [N]/12 sections complete

---

## Auditor Open Items

| Request | Received | Responded | Status |
|---------|---------|----------|--------|
| [Confirm Customer A subsequent payment] | [Date] | [Date] | ✅ Closed |
| [Provide malpractice insurance renewal] | [Date] | Pending | ⚠️ Due [Date] |

---

## Expected Audit Adjustments (Dr. Lewis preliminary view)

| Item | Estimated amount | Direction | Notes |
|------|----------------|-----------|-------|
| [Depreciation timing] | $[X]K | Increase expense | Policy difference from auditor's view |
| [None expected] | | | |

---

## Management Letter Comments (from prior year, if applicable)

| Comment | Severity | Remediation completed | Documentation |
|---------|---------|----------------------|--------------|
| [Bank reconciliation timeliness] | Significant deficiency | ✅ — Monthly recon completed by BD4 | fin-ops-bank-reconciler process |
| [Segregation of duties — small company] | Deficiency | ✅ — Compensating controls added | fin-ops-internal-controls-designer |

---

## Timeline

| Milestone | Target date | Status |
|-----------|------------|--------|
| Year-end close complete | Jan 15 | ✅ |
| PBC package delivered | Jan 31 | ✅/⚠️ |
| Fieldwork complete | Feb 28 | In progress |
| Draft audit report | Mar 15 | Pending |
| Management rep letter signed | Mar 28 | Pending |
| Final audit report issued | Mar 31 | Pending |
```

## Output Contract
- Complete PBC package delivered before fieldwork starts — the audit clock starts when auditors begin fieldwork; every day they wait for a document extends the audit and increases the fee; Dr. Lewis delivers a complete PBC package to the auditors 5 business days before fieldwork begins; if any PBC items cannot be delivered (e.g., Q4 941 not yet filed), Dr. Lewis communicates the specific item and the expected delivery date; auditors can sequence their work around known gaps, but they cannot sequence around surprises
- Respond to auditor requests within 24 hours — a 3-day delay in responding to an auditor request extends the fieldwork by at least 3 days; Dr. Lewis tracks all open auditor requests and ensures the controller responds within 24 hours; if a request is complex and requires more time, the auditor is notified of the expected response date within 24 hours; Dr. Lewis reviews all auditor responses before they are delivered — accuracy of responses is part of the management representation letter
- Management letter comments require remediation before next audit — if the prior year's audit produced management letter comments (significant deficiencies or material weaknesses), Dr. Lewis tracks the remediation of each comment and presents the remediation evidence to the auditors at the start of the next year's fieldwork; unresolved management letter comments from the prior year escalate from a deficiency to a potential material weakness if they repeat; Dr. Lewis treats prior-year management letter comments as open action items until the remediation is confirmed by the auditors
- HITL required: Dr. Lewis manages the audit process; CEO signs the management representation letter (with Dr. Lewis review first); any audit adjustment >$25K requires CEO awareness; any material weakness identified by auditors requires Matt Mathison notification; CPA engagement letter is signed by CEO with Dr. Lewis review

## System Dependencies
- **Reads from:** QuickBooks (trial balance, financial statements, all account detail); bank statements (bank portal); payroll provider (W-2/W-3, 941 returns); lender statements; customer contracts; vendor contracts; lease agreements; entity formation documents; prior year audit workpapers
- **Writes to:** PBC package (organized by section in SharePoint/Finance/<Company>/Audit/[Year]/); auditor response tracking log; management letter comment remediation tracker; management representation letter; Matt Mathison audit summary brief (if material issues)
- **HITL Required:** Dr. Lewis manages the audit process; CEO signs management representation letter; Dr. Lewis reviews management letter before CEO signs; audit adjustments >$25K require CEO awareness; material weakness → Matt Mathison notification

## Test Cases
1. **Golden path:** Allevio 2025 year-end CPA review engagement → Year-end close complete January 12; Dr. Lewis prepares PBC package January 13-18; all 12 sections complete; delivered to CPA firm January 19 (before February 1 fieldwork start); auditors begin analytical review from draft financials; fieldwork starts February 1; Dr. Lewis responds to all 8 auditor requests within 24 hours; one request (subsequent payments on December AR) requires a week to gather customer payment confirmations; Dr. Lewis notifies auditors of the delay on Day 1; delivers the confirmations Day 7; draft review report issued February 22; no adjustments; management representation letter reviewed by Dr. Lewis on February 25; CEO signs February 26; final review report issued February 28; delivered to lender (required per loan covenant) March 1; engagement complete; total fieldwork: 28 days
2. **Edge case:** Q4 941 (federal payroll tax return) has not been filed by the PBC delivery date → 941 is due January 31 for Q4; if PBC is delivered January 25 and the 941 isn't filed yet, Dr. Lewis notes this as an outstanding item: "Q4 941 not yet filed — due January 31 — will deliver to auditors February 1." Auditors sequence around this; 941 filed January 31; delivered to auditors February 1; no gap in the audit timeline. If the 941 is late (not filed by January 31), Dr. Lewis escalates to the CEO and the payroll provider immediately — a late 941 creates IRS penalties and auditors will note the compliance failure
3. **Adversarial:** Auditors find a significant deficiency: "The company does not have adequate controls over financial reporting — one person prepares, approves, and reconciles all financial transactions" → Dr. Lewis anticipated this (the control assessment at acquisition identified the same issue and initiated remediation); Dr. Lewis presents the remediation evidence: (1) Dr. Lewis now reviews and approves all payment batches and payroll prior to execution (implemented July 2025); (2) CEO reviews bank statements independently monthly (implemented August 2025); (3) Dr. Lewis reviews all balance sheet reconciliations before financial close sign-off (implemented September 2025); auditors evaluate the compensating controls; if they find the compensating controls sufficient, the significant deficiency is downgraded to a deficiency (or no comment); Dr. Lewis documents the compensating controls in the management letter response

## Audit Log
All PBC packages retained permanently by year. Auditor request and response logs retained. Management representation letters retained permanently. Audit reports retained permanently. Management letter comments and remediation tracking retained. Audit adjustment records retained.

## Deprecation
Retire when each portfolio company has a CFO who owns the audit process — with Dr. Lewis reviewing the management representation letter, Matt Mathison receiving the final audit report, and Dr. Lewis tracking management letter remediation.
