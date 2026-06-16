---
name: audit-prep-coordinator
description: "Coordinate financial audit preparation. Use when the user says 'audit prep', 'prepare for an audit', 'audit preparation', 'external audit', 'financial audit', 'CPA audit', 'audit readiness', 'audit fieldwork', 'PBC list', 'prepared by client list', 'audit schedule', 'audit support', or 'get ready for the audit'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--audit-type <review|compilation|full-audit>] [--audit-date <date>]"
---

# Audit Prep Coordinator

Coordinate preparation for an external financial audit, review, or compilation — ensuring all documents, reconciliations, and workpapers are ready when the auditors arrive. An audit that starts with disorganized documentation, missing reconciliations, and surprised accountants takes longer and costs more. A well-prepared audit is completed on time, with fewer auditor questions, and produces a clean opinion.

## When to Use
- An external audit has been scheduled — preparation must begin 60-90 days in advance
- An LP or lender requires audited financial statements
- A portfolio company acquisition requires audited financials as part of the deal
- The CPA firm sends the PBC (Prepared by Client) list and someone needs to manage it
- Matt Mathison asks "when is the audit and are we prepared?"

## Audit Preparation Standards

```
Three types of CPA engagements (ascending rigor and cost):

1. Compilation: CPA presents financial statements without assurance
   Prep time: 2-4 weeks
   Common for: small private companies, bank lending

2. Review: CPA performs analytical procedures and inquiries; limited assurance
   Prep time: 4-6 weeks
   Common for: medium-sized private companies, some LP agreements

3. Full Audit: CPA tests internal controls, vouches transactions, confirms balances
   Prep time: 6-12 weeks
   Common for: large companies, PE-backed companies, regulated industries

For MBL scale: Most portfolio companies use compilation or review.
Full audit may be required for bank covenants, LP agreements, or acquisition prep.

Key principle: Prepare as if you're going to be audited even in non-audit years.
This means: reconcile everything monthly, document everything, and keep all
support for every balance sheet line item and every significant transaction.
```

## Output Format

```markdown
# Audit Preparation Tracker — <Company Name>
**Audit type:** [Compilation / Review / Full Audit]
**Auditing firm:** [CPA firm name]
**Fieldwork dates:** <Start date – End date>
**Report due date:** <Date>
**Prepared by:** Dr. John Lewis | **Coordinator:** Dr. Lewis

---

## Timeline

| Milestone | Target date | Status | Notes |
|----------|------------|--------|-------|
| PBC list received from auditors | [Date] | ✅ / 🔴 | |
| All reconciliations complete | [Date-30 days before fieldwork] | ✅ / 🔴 | |
| Adjusting journal entries finalized | [Date-21 days] | | |
| Financial statements (draft) prepared | [Date-14 days] | | |
| All PBC items submitted to auditors | [Date-7 days] | | |
| Fieldwork begins | [Fieldwork start] | | |
| Fieldwork complete | [Fieldwork end] | | |
| Draft report received | [Date after fieldwork] | | |
| Management comments (if any) | [Date] | | |
| **Final report issued** | **[Target date]** | | |

---

## PBC Checklist (Prepared by Client)

*The PBC list is provided by the auditors — this section tracks completion*

### Financial Statements and Close

| Item | Description | Owner | Due | Status | Auditor notes |
|------|------------|-------|-----|--------|--------------|
| PL-1 | Income Statement — all periods | Dr. Lewis | [Date] | ✅ / 🔴 | |
| PL-2 | Balance Sheet — all periods | Dr. Lewis | | | |
| PL-3 | Cash Flow Statement | Dr. Lewis | | | |
| PL-4 | Statement of Changes in Equity | Dr. Lewis | | | |
| PL-5 | Trial balance | Dr. Lewis | | | |
| PL-6 | Chart of accounts | Dr. Lewis | | | |

### Bank and Cash

| Item | Description | Owner | Status |
|------|------------|-------|--------|
| BK-1 | Bank statements — all months | Dr. Lewis | ✅ / 🔴 |
| BK-2 | Bank reconciliations — all months | Dr. Lewis | |
| BK-3 | Confirmation letters to banks (if full audit) | Auditors send; Dr. Lewis coordinates | |

### Accounts Receivable

| Item | Description | Owner | Status |
|------|------------|-------|--------|
| AR-1 | AR aging report at year-end | Dr. Lewis | |
| AR-2 | Client list with addresses (for confirmation letters if full audit) | Dr. Lewis | |
| AR-3 | Bad debt reserve calculation and supporting | Dr. Lewis | |
| AR-4 | List of transactions >$[X] with contract support | Dr. Lewis | |

### Accounts Payable and Accruals

| Item | Description | Owner | Status |
|------|------------|-------|--------|
| AP-1 | AP aging at year-end | Dr. Lewis | |
| AP-2 | Accrued expenses schedule with support | Dr. Lewis | |
| AP-3 | Vendor statements for largest vendors | Controller | |

### Fixed Assets / CapEx

| Item | Description | Owner | Status |
|------|------------|-------|--------|
| FA-1 | Fixed asset register (beginning, additions, disposals, depreciation) | Dr. Lewis | |
| FA-2 | Purchase support for all additions in year | Dr. Lewis | |
| FA-3 | Depreciation calculation workpaper | Dr. Lewis / CPA | |

### Payroll

| Item | Description | Owner | Status |
|------|------------|-------|--------|
| PR-1 | Payroll registers — all pay periods | Payroll service / Dr. Lewis | |
| PR-2 | W-2 copies for all employees | Payroll service | |
| PR-3 | 941 filings for all quarters | CPA | |
| PR-4 | PTO accrual calculation | HR / Dr. Lewis | |

### Legal and Contracts

| Item | Description | Owner | Status |
|------|------------|-------|--------|
| LG-1 | Entity formation documents | Dr. Lewis | |
| LG-2 | Board minutes or manager resolutions | Dr. Lewis | |
| LG-3 | Significant contracts (customer, vendor, debt) | Dr. Lewis | |
| LG-4 | Legal matters / litigation (any pending) | CEO / Legal | |
| LG-5 | Loan agreements and amortization schedules | Dr. Lewis | |

### Other

| Item | Description | Owner | Status |
|------|------------|-------|--------|
| OT-1 | Prior year audit report / CPA workpapers | Dr. Lewis | |
| OT-2 | Organizational chart | CEO | |
| OT-3 | Insurance certificates | CEO / Dr. Lewis | |

---

## Open Items / Auditor Questions

| Item | Question from auditor | Response | Status |
|------|--------------------|---------|--------|
| [Item] | [Auditor question] | [Dr. Lewis response] | ✅ Answered / 🔴 Pending |

---

## Matt Mathison Status

Audit preparation — [Company]: [X of Y] PBC items complete ([X%]). Fieldwork begins [date]. Current status: 🟢 On track / 🟡 At risk — [N] items still outstanding with [N] days until fieldwork / 🔴 Behind — need to address [specific item]. Decision needed: [Specific — or "No action needed — Dr. Lewis managing."]
```

## Output Contract
- PBC list tracked item by item — "we're working on it" is not a status; every PBC item must have an owner, a due date, and a status; the auditors will know exactly which items are outstanding when fieldwork begins
- Preparation begins 60-90 days before fieldwork — last-minute audit prep produces worse results; a reconciliation done the week before the audit to "catch up" is more likely to have errors than one done monthly as standard practice; if a company isn't reconciling monthly, audit prep is the wrong problem to solve
- Auditor questions documented and answered promptly — every auditor question creates a delay; document each question, the response, and the supporting documentation; quick, clear answers are the single biggest factor in a fast audit
- Management representation letter prepared in advance — the audit concludes with management signing a representation letter confirming that management has made all disclosures and knows of no material errors; prepare this draft 2 weeks before the expected report date; never sign without attorney review for any unusual representations
- HITL required: Dr. Lewis coordinates all PBC items and manages the audit process; Matt Mathison is informed of audit progress monthly and immediately if material issues arise; the audit opinion and any management letters are reviewed by Matt Mathison before being distributed; any proposed audit adjustment to the financial statements requires Matt Mathison awareness before acceptance

## System Dependencies
- **Reads from:** QuickBooks (financial statements, trial balance), bank statements, payroll records, all reconciliations, vendor contracts, entity formation documents
- **Writes to:** Audit prep tracker (SharePoint/Finance/Audit/<Year>/); PBC items organized by category; auditor communication log
- **HITL Required:** Dr. Lewis coordinates; Matt Mathison monthly audit update; material audit issues require Matt Mathison immediately; management representation letter reviewed by attorney; proposed adjustments require Matt Mathison awareness

## Test Cases
1. **Golden path:** Allevio 2026 annual CPA review → Audit type: review (limited assurance); fieldwork December 8-12; Dr. Lewis begins prep October 15; reconciliations all current (closed through October); PBC list received November 1 (28 items); by November 28: 26 of 28 items complete; 2 outstanding: legal letter from attorney confirming no pending litigation ($0 threshold — attorney to respond by December 5) and insurance certificates (CEO retrieving from broker by December 5); fieldwork December 8 — auditors arrive to 28/28 PBC items complete; no material issues; draft report December 20; final report issued January 5, 2027; Matt Mathison informed of timeline; no material adjustments proposed
2. **Edge case:** During audit fieldwork, the auditors identify a transaction that appears to be a related-party transaction that wasn't disclosed → immediate escalation: "Auditors have flagged a potential related-party transaction with [Name/Entity]. This was not previously identified as a related-party transaction in our disclosure schedule. I'm investigating with the CEO to determine: (1) What is the relationship? (2) Was the transaction at arm's length? (3) Did it require disclosure? I will update you by [date]." Related-party transactions require disclosure in financial statements; failure to disclose is a material misstatement; Matt Mathison must be informed immediately
3. **Adversarial:** The CPA audit takes significantly longer than expected because the books were not maintained properly during the year (missing reconciliations, unsupported entries) → this is a financial management failure; it typically results in a higher audit fee; document: "The current audit is taking [X] additional hours due to [missing reconciliations / unreconciled items / unsupported journal entries]. This will result in an additional audit fee of approximately $[X]. To prevent this in future years, I'm implementing [monthly close checklist / quarterly mini-audit / controller accountable for reconciliations by Day 5]." Document the root cause and the remediation; inform Matt Mathison of the additional cost and its cause.

## Audit Log
Audit preparation trackers retained by entity and year. PBC completion documentation retained. Auditor questions and responses retained. Management representation letters retained permanently. Audit reports retained permanently. Additional audit fees due to preparation issues documented.

## Deprecation
Retire when portfolio companies have dedicated controllers who own the audit preparation process end-to-end with an annual audit prep calendar that begins 90 days before fieldwork without Dr. Lewis's coordination involvement.
