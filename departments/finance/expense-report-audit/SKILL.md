---
name: expense-report-audit
description: "Review submitted expense reports for policy violations and anomalies before reimbursement. Use when the user says 'audit expense reports', 'expense report review', 'check expenses against policy', 'expense policy violations', 'review T&E', 'approve expenses', or 'find policy exceptions in expenses'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<expense-report-file | paste expense data>"
---

# Expense Report Audit

Review employee expense reports against company policy before reimbursement approval. Catches policy violations, missing receipts, and anomalous spending before they become payroll issues.

## When to Use
- Before approving any expense reimbursement
- Monthly expense audit across all reports
- When an expense report contains an exception flag

## Policy Checks

### Documentation Requirements
- [ ] Receipt attached for every expense > $25
- [ ] Business purpose stated for each expense
- [ ] Attendees listed for all meals/entertainment
- [ ] Expense date within 60 days of report submission

### Per-Category Limits (configure per company policy)
| Category | Limit | Notes |
|----------|-------|-------|
| Meals — individual | $75/day | Alcohol separate, requires approval |
| Meals — client entertainment | $150/person | Business purpose required |
| Hotels | $250/night | Major cities: $350/night |
| Airfare | Coach required | Business class requires VP approval |
| Ground transport | Actual cost | Ride-share acceptable; no luxury vehicles |
| Personal items | $0 | Not reimbursable |

### Red Flags
- Round dollar amounts (e.g., $100.00 exactly — possible estimate)
- Weekend charges without travel approval
- Duplicate dates with same merchant
- Personal merchant category (spa, gym, personal subscription)
- Expense > approved limit with no exception documentation

## Output Format

```markdown
# Expense Report Audit — <employee> — <period>
**Total Claimed:** $X | **Approved:** $X | **Flagged:** $X | **Rejected:** $X

## ✅ Approved Items
<N> items totaling $X — policy compliant

## ⚠️ Flagged — Manager Review Required
| Date | Merchant | Amount | Issue | Recommendation |
|------|----------|--------|-------|---------------|
| Jun 3 | Morton's Steakhouse | $320.00 | Client meal — no attendee list | Request attendee list before approving |

## ❌ Rejected — Policy Violation
| Date | Merchant | Amount | Reason |
|------|----------|--------|--------|
| Jun 5 | Netflix | $15.99 | Personal subscription — not reimbursable |

## Summary for Approver
Approve: $X | Pend for info: $X | Reject: $X
```

## Output Contract
- Never rejects without citing specific policy section
- Flagged items pending documentation — not rejected
- HITL required — AP manager must review before processing

## System Dependencies
- **Reads from:** Expense report data (uploaded or pasted)
- **Writes to:** Nothing
- **HITL Required:** AP manager reviews flagged items before reimbursement

## Deprecation
Retire when expense platform (Expensify, Concur) implements AI policy checking.
