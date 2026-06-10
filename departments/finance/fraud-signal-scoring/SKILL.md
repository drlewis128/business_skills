---
name: fraud-signal-scoring
description: "Score financial transactions for fraud indicators using behavioral patterns. Use when the user says 'fraud detection', 'fraud risk scoring', 'suspicious transactions', 'fraud indicators', 'check for fraud', 'financial fraud review', or 'score transactions for fraud risk'. Distinct from spend-anomaly-detection — focuses specifically on fraud behavioral patterns."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<transaction-data-file | period>"
---

# Fraud Signal Scoring

Score financial transactions against known fraud behavioral patterns. Surfaces high-risk transactions for investigation — not for accusation. All findings are "requires review," not "confirmed fraud."

## When to Use
- Quarterly fraud risk review
- When an audit or internal control review is occurring
- When an anomaly is surfaced by `spend-anomaly-detection` and deeper fraud assessment is needed
- When a specific employee or vendor is under review

## Fraud Pattern Library

### Vendor Fraud Patterns
- New vendor added + paid within 5 days (no time for verification)
- Vendor address matches employee address
- Vendor bank account changed recently + large payment following change
- Vendor has no verifiable business presence (no website, no phone)
- Payments to vendor increase steadily over time with no corresponding PO increases
- Shell company indicators: generic name, PO box address, no online presence

### Employee Fraud Patterns
- Expense reimbursements to personal accounts increasing month-over-month
- Round-dollar expense amounts with no receipts
- Vendor payments approved by same person who set up the vendor (no segregation of duties)
- Multiple small payments just below approval threshold (structuring)
- Access to AP system outside business hours
- Employee with AP access + vendor relationship not disclosed

### Transaction Fraud Patterns
- Fictitious employee in payroll (name/SSN not in HR system)
- Ghost vendor — vendor in AP master with no physical address or tax ID
- Journal entries posted directly to cash accounts without supporting documentation
- Credit adjustments to vendor accounts (could mask overbilling scheme)
- ACH payments to unfamiliar routing numbers

### Segregation of Duties Violations
- Same person: creates vendor + approves invoices + releases payment
- Same person: enters JE + approves JE
- No dual control on payments > defined threshold

## Output Format

```markdown
# Fraud Signal Report — <period>
**Classification:** CONFIDENTIAL — Tier 1 Distribution Only
**Transactions Analyzed:** <N>

## High-Risk Signals (immediate investigation)
| Signal | Entity | Amount | Pattern | Risk Score |
|--------|--------|--------|---------|-----------|
| New vendor + immediate payment | XYZ LLC | $18,000 | Added Jun 1, paid Jun 3 | 92/100 |

## Medium-Risk Signals (review this week)
...

## Segregation of Duties Flags
- [Employee] has create + approve + release access in AP — single person controls full payment cycle

## Recommended Actions
1. Verify XYZ LLC — confirm business legitimacy before next payment
2. Review AP access matrix — remove release authority from <employee>

## Important Notice
These findings are risk indicators only. No finding constitutes evidence of fraud. All investigation must follow HR and legal protocols.
```

## Output Contract
- CONFIDENTIAL — output is Tier 1 only. Never share with Tier 3 users.
- Language is always "requires investigation" — never "is fraud"
- HITL required before any action is taken on findings

## System Dependencies
- **Reads from:** Transaction data, vendor master, payroll data (provided as input)
- **Writes to:** Nothing
- **HITL Required:** Mandatory before any employee or vendor action. Involve HR and legal counsel.

## Deprecation
Retire when dedicated fraud detection platform (e.g., SAP GRC, ACL/Galvanize) is deployed.
