---
name: vendor-payment-terms-optimizer
description: "Analyze vendor payment terms and recommend optimal payment timing to maximize cash flow and capture early-pay discounts. Use when the user says 'optimize vendor payments', 'should we pay early', 'early pay discount', 'payment terms analysis', 'Net 30 vs Net 60', 'vendor terms negotiation', or 'cash flow from AP terms'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<vendor-list-or-invoice> [--cash-balance <amount>] [--cost-of-capital <pct>]"
---

# Vendor Payment Terms Optimizer

Evaluate vendor payment terms across the AP portfolio and recommend optimal pay timing — capturing early-pay discounts where the annualized return exceeds cost of capital, and stretching terms where it benefits cash flow.

## When to Use
- Monthly AP planning cycle
- Cash flow tight periods (stretch terms on non-critical vendors)
- When a vendor offers an early-pay discount
- Vendor negotiation prep (understand your leverage on terms)
- Building the weekly payment run

## Core Math — Discount Annualization

**Formula:** `(Discount % / (1 - Discount%)) × (365 / Days Saved)`

| Terms | Annualized Return | Take the discount? |
|-------|------------------|--------------------|
| 2/10 Net 30 | ~36.7% | YES — almost always |
| 1/10 Net 30 | ~18.4% | YES if cost of capital < 18% |
| 2/10 Net 60 | ~14.9% | Depends on cost of capital |
| 1/15 Net 45 | ~12.3% | Borderline |

Default cost of capital assumption: 10% unless provided. Override with `--cost-of-capital`.

## Decision Framework

### Take the Discount
- Annualized return > cost of capital AND
- Cash reserves above 30-day operating minimum

### Pay on Due Date
- No discount offered OR
- Annualized return < cost of capital OR
- Cash reserve constraint

### Negotiate Extended Terms
- Vendor is non-critical (no single-source dependency)
- Current terms are Net 30 — can we get Net 45 or Net 60?
- Works best with large vendors who value the relationship

### Never Stretch
- Strategic vendors (sole-source or critical infrastructure)
- Vendors with late fees > cost of capital
- Vendors where early pay unlocks better pricing tiers

## Output Format

```markdown
# Vendor Payment Terms Optimization
**Run Date:** <date> | **Cash Balance:** $X | **Cost of Capital:** X%

## High-Priority: Capture These Discounts
| Vendor | Invoice | Terms | Discount | Annualized Return | Action | Deadline |
|--------|---------|-------|----------|------------------|--------|----------|
| Acme Corp | INV-1234 | 2/10 Net 30 | $480 | 36.7% | ✅ PAY BY <date> | Jun 15 |

**Total discounts available this cycle:** $X

## Pay on Due Date (No discount or not worth capturing)
| Vendor | Invoice | Terms | Due Date | Amount |
|--------|---------|-------|----------|--------|

## Stretch Opportunity (Non-critical vendors)
| Vendor | Current Terms | Recommend | Cash Savings (30 days) |
|--------|---------------|-----------|------------------------|
| Generic Supplies Co | Net 30 | Negotiate Net 60 | $X in float |

## Cash Flow Impact Summary
- Paying all early discounts: cash out $X by <date>, saves $X
- Recommended payment schedule net cash impact: $X

## Negotiation Targets
Vendors where terms improvement has highest impact:
1. <Vendor> — currently Net 30, request Net 60 → saves $X/month in float
```

## Output Contract
- All discount recommendations include both the dollar savings and the annualized return
- Never recommends stretching strategic/single-source vendors
- HITL required before any payment run is executed

## System Dependencies
- **Reads from:** AP aging and invoice data (QuickBooks / Bill.com), cash balance
- **Writes to:** Nothing (outputs payment schedule recommendation)
- **HITL Required:** Before executing any payment run

## Test Cases
1. **Golden path:** AP list with mixed terms → correctly identifies 2/10 discounts to capture and stretch candidates
2. **Edge case:** Cash balance below 30-day operating minimum → flags all discounts as "hold — cash constraint" even if annualized return is high
3. **Adversarial:** All vendors show "Net 30" with no discount → outputs stretching and negotiation recommendations only, no false discount flags

## Audit Log
Payment run recommendations tagged with run date, cash balance input, and cost of capital used. Track captured vs. missed discounts monthly.

## Deprecation
Retire when AP automation platform (Bill.com advanced or similar) handles dynamic early-pay optimization natively.
