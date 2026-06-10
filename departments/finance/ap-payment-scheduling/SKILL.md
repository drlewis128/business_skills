---
name: ap-payment-scheduling
description: "Optimize vendor payment timing against cash flow and early-pay discount windows. Use when the user says 'schedule AP payments', 'when should we pay vendors', 'optimize payment timing', 'capture early pay discounts', 'AP payment calendar', 'prioritize vendor payments', or 'payment scheduling'. Balances cash preservation against discount capture and relationship management."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--ap-file <path>] [--cash-balance <amount>] [--reserve <amount>]"
---

# AP Payment Scheduling

Build an optimized vendor payment schedule that captures early-pay discounts, maintains vendor relationships, and preserves minimum cash reserves.

## When to Use
- Weekly AP run scheduling
- Before a large batch payment release
- When cash is tight and payment prioritization is needed
- When reviewing discount capture opportunity vs cash position

## Logic

### Step 1 — Load AP Aging
Parse open invoices with: vendor, invoice #, amount, due date, terms (e.g., 2/10 Net 30).

### Step 2 — Calculate Discount Opportunity
For invoices with early-pay terms:
- Annualized return of discount = `(Discount% / (1 - Discount%)) × (365 / Days Saved)`
- 2/10 Net 30 = ~36.7% annualized return — almost always worth capturing if cash available

### Step 3 — Prioritize Payment Queue
| Priority | Criteria |
|----------|---------|
| 1 | Overdue (past due) — relationship and credit risk |
| 2 | Early-pay discount expiring within 48 hours |
| 3 | Strategic/critical vendors (single-source suppliers) |
| 4 | Due within 7 days |
| 5 | Due within 14 days |
| 6 | All others (pay at due date) |

### Step 4 — Cash Gate
Apply minimum reserve (default: 4 weeks OpEx). Do not schedule payments that would push cash below reserve. Flag constrained payments for Tier 1 decision.

### Step 5 — Build Payment Calendar
Map payments to specific pay dates across the next 30 days.

## Output Format

```markdown
# AP Payment Schedule — <date>
**Cash Available:** $X | **Reserve Required:** $X | **Schedulable:** $X

## Recommended Payment Run

| Pay Date | Vendor | Invoice # | Amount | Reason |
|----------|--------|-----------|--------|--------|
| Jun 10 | Vendor A | INV-123 | $5,000 | Overdue |
| Jun 10 | Vendor B | INV-456 | $12,000 | 2/10 discount expires Jun 11 — saves $240 |
| Jun 14 | Vendor C | INV-789 | $8,500 | Due Jun 15 |
...

## Deferred (below reserve threshold)
- Vendor D — INV-321 — $25,000 — Due Jun 20 — defer to Jun 18 run

## Discount Capture Summary
Total discounts captured this run: $<N>
Annualized return on early payments: <N>%
```

## Output Contract
- Never schedules payments below cash reserve threshold without Tier 1 approval
- Always shows discount capture value explicitly
- HITL required before payment release

## System Dependencies
- **Reads from:** AP aging data (QuickBooks or Bill.com export), cash balance input
- **Writes to:** Nothing (outputs schedule for AP team action)
- **HITL Required:** Before releasing any payment run

## Deprecation
Retire when Bill.com or QuickBooks implements AI-driven payment scheduling with cash flow awareness.
