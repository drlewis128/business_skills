---
name: three-way-match
description: "Automate the three-way match of purchase order, invoice, and goods receipt with exception surfacing. Use when the user says 'three-way match', '3-way match', 'PO invoice receipt match', 'match all three documents', 'AP three-way verification', or 'run the match before payment'. The full AP control gate before any payment is released."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "--po <file> --invoice <file> --receipt <file>"
---

# Three-Way Match

The AP control gate: simultaneously verify that the purchase order, vendor invoice, and goods/services receipt all agree before payment is authorized. Catches fraud, overbilling, and delivery shortfalls.

## When to Use
- As a mandatory pre-payment check on all vendor invoices above a defined threshold
- During AP batch processing
- When auditors request evidence of payment controls
- When a vendor disputes a hold on their invoice

## Matching Logic

### Tolerance Bands (configurable)
| Amount | Price Tolerance | Qty Tolerance |
|--------|----------------|---------------|
| < $1,000 | ±$5.00 | ±0 units |
| $1,000 – $10,000 | ±0.25% | ±0 units |
| > $10,000 | ±0.1% | ±0 units |

### Match Sequence

**Step 1 — PO vs Invoice (Billing Match)**
- PO number cross-reference
- Vendor identity
- Line items: description, quantity, unit price
- Payment terms match
- Invoice date within PO validity window

**Step 2 — Invoice vs Receipt (Delivery Match)**
- All invoiced quantities confirmed received
- Receipt date plausible vs invoice date
- Service completion confirmed if services invoice

**Step 3 — PO vs Receipt (Authorization Match)**
- Received quantity ≤ PO quantity (no over-receipt)
- Received items match PO specifications
- Delivery within PO validity window

**Step 4 — Exception Classification**

| Code | Exception | Auto-action |
|------|-----------|-------------|
| E01 | Price variance above tolerance | Hold — contact vendor |
| E02 | Quantity billed > quantity received | Hold — request credit memo |
| E03 | Invoice without PO | Hold — escalate to buyer |
| E04 | Duplicate invoice number | Reject — flag for AP review |
| E05 | Receipt date after invoice date by > 30 days | Hold — verify delivery |
| E06 | Vendor name mismatch | Hold — verify vendor identity |
| PASS | All three documents agree | Approve for payment |

## Output Format

```markdown
# Three-Way Match Result
**Invoice:** #<N> | **Vendor:** <name> | **Amount:** $<total>
**PO:** #<N> | **Receipt:** #<N>

## Verdict: ✅ APPROVED FOR PAYMENT / ❌ HOLD — EXCEPTIONS FOUND

### Match Scorecard
| Check | PO | Invoice | Receipt | Status |
|-------|-----|---------|---------|--------|
| Vendor | ✅ | ✅ | — | PASS |
| Line 1 Qty | 100 | 100 | 98 | ❌ E02 — 2 units not received |
| Line 1 Price | $10.00 | $10.00 | — | PASS |
| Total | $1,000.00 | $1,000.00 | $980.00 | ❌ 2 units short |

### Exceptions
- **E02** — Invoiced 100 units but receipt confirms only 98 units delivered. Hold $20.00 (2 units × $10.00) pending delivery completion or credit memo.

### Next Action
Contact <vendor> — request credit memo for 2 undelivered units or confirm delivery date.
Payment release: $980.00 approved. $20.00 on hold.
```

## Output Contract
- Verdict is always explicit: APPROVED or HOLD (no ambiguous states)
- Exception codes are actionable and mapped to next steps
- Partial payment approvals are always explicit about the held amount
- HITL required before payment release

## System Dependencies
- **Reads from:** PO data, invoice data, receipt data
- **Writes to:** Nothing (outputs recommendation for AP team action)
- **HITL Required:** Before any payment is released from AP system

## Deprecation
Retire when ERP implements native three-way match as a system control.
