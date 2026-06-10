---
name: audit-prep-package
description: "Assemble supporting schedules and documentation for external auditors. Use when the user says 'audit prep', 'audit package', 'prepare for audit', 'auditor request list', 'PBC list', 'audit support', 'compile audit documentation', or 'audit fieldwork prep'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--audit-type <financial|tax|compliance>] [--year <YYYY>]"
---

# Audit Prep Package

Assemble the Prepared by Client (PBC) documentation package for external auditors — financial audit, tax audit, or compliance audit. Well-organized audit prep cuts fieldwork time and reduces adjusting entry risk.

## When to Use
- 4-6 weeks before audit fieldwork begins
- When auditors send their initial request list
- Year-end (financial audit) or any time IRS/state contacts the company
- During M&A due diligence (buyer's auditors)

## Standard Financial Audit PBC List

### Financial Statements & Support
- [ ] Audited/draft financial statements (current and prior year)
- [ ] Trial balance — year-end
- [ ] General ledger detail — full year
- [ ] Chart of accounts with descriptions

### Cash & Banking
- [ ] Bank reconciliations — all accounts, all months
- [ ] Bank statements — all accounts, all months
- [ ] Bank confirmations (auditor will send directly — just track status)

### Accounts Receivable
- [ ] AR aging — year-end
- [ ] AR subledger reconciled to trial balance
- [ ] Revenue recognition schedule (ASC 606 if applicable)
- [ ] Top 10 customer list with contract summaries

### Accounts Payable & Accruals
- [ ] AP aging — year-end
- [ ] AP subledger reconciled to trial balance
- [ ] Accrued liabilities schedule with support
- [ ] Open purchase orders at year-end

### Debt & Equity
- [ ] Loan agreements and schedules
- [ ] Debt amortization schedules
- [ ] Cap table / equity schedule
- [ ] Minutes of board meetings (full year)
- [ ] Stock option schedule (if applicable)

### Fixed Assets
- [ ] Fixed asset schedule with additions, disposals, depreciation
- [ ] Depreciation calculation backup
- [ ] Capex invoices for major additions

### Payroll & HR
- [ ] Payroll summary by period (annual)
- [ ] W-2/W-3 copies
- [ ] Officer compensation schedule
- [ ] Related party transactions

### Tax
- [ ] Prior year tax returns (federal and state)
- [ ] Tax provision workpaper
- [ ] 1099s issued

## Output Format

```markdown
# Audit Prep Package — <entity> — <year>
**Audit Type:** Financial / Tax / Compliance
**Auditor:** <firm>
**Fieldwork Start:** <date>
**Package Due:** <date-minus-5-days>

## Item Status Tracker

| Category | Item | Status | Owner | Due | Notes |
|----------|------|--------|-------|-----|-------|
| Cash | Bank recs — all months | ✅ Complete | <name> | Jun 15 | 12 accounts |
| AR | AR aging year-end | ⚠️ In Progress | <name> | Jun 15 | |
| Debt | Loan agreements | ❌ Not Started | <name> | Jun 15 | Pull from Box |

## Blockers
1. Board minutes Q3-Q4 — legal counsel to provide — ETA: <date>

## Completion: <N>/<total> items (<pct>%)
**On track for fieldwork start: Yes / No**
```

## Output Contract
- Read-only — does not pull documents directly from systems
- Status is self-reported and must be confirmed by document owner
- HITL required before sharing any package with external auditors

## System Dependencies
- **Reads from:** Status inputs, document inventory (provided)
- **Writes to:** Nothing
- **HITL Required:** Before sharing any documents with external audit firm

## Deprecation
Retire when audit management platform (e.g., Fieldguide, AuditBoard) handles PBC tracking.
