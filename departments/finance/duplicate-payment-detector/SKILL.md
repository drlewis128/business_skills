---
name: duplicate-payment-detector
description: "Cross-reference payment history to catch double-pay risk before payments are released. Use when the user says 'duplicate payment check', 'find duplicate invoices', 'duplicate payment detection', 'check for double payments', 'have we paid this before', or 'AP duplicate review'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<payment-history-file> [--new-invoice <invoice-number>]"
---

# Duplicate Payment Detector

Compare pending invoices against payment history to identify true duplicates and near-duplicates before cash leaves the company.

## When to Use
- Before every payment run (automated gate)
- When a vendor calls claiming non-payment on an invoice you've already paid
- During AP audits
- When integrating a new vendor into the AP system

## Detection Logic

### Exact Duplicates (high confidence)
- Same vendor + same invoice number → DUPLICATE (reject immediately)
- Same vendor + same amount + same date → likely DUPLICATE (hold for review)

### Near-Duplicates (medium confidence — require human review)
- Same vendor + same amount ± $1.00 within 30 days → possible DUPLICATE
- Same vendor + invoice number with slight variation (INV-123 vs INV123 vs 123) → flag
- Same vendor name with alternate spelling (Acme Corp vs ACME Corporation) → flag

### Vendor Consolidation Flags
- Multiple vendor records for the same company (same address, different names) → flag for master data cleanup

## Output Format

```markdown
# Duplicate Payment Check — <date>
**Invoices Checked:** <N>

## 🔴 CONFIRMED DUPLICATES — DO NOT PAY
| Vendor | Invoice # | Amount | Prior Payment Date | Prior Payment # |
|--------|-----------|--------|-------------------|----------------|
| Acme Corp | INV-456 | $5,000 | May 14 | CHK-2291 |

## 🟠 POSSIBLE DUPLICATES — HOLD FOR REVIEW
| Vendor | Invoice # | Amount | Concern | Match |
|--------|-----------|--------|---------|-------|
| TechCo Inc | INV-789 | $12,400 | Same vendor + $12,500 paid May 1 | 98% |

## ✅ CLEAR — No duplicates found
<N> invoices cleared for payment

## Vendor Master Issues
- "Acme Corp" and "ACME Corporation" appear to be same entity — merge recommended
```

## Output Contract
- Confirmed duplicates are blocked — never approved without explicit Tier 1 override
- All matches include the prior payment reference for easy verification
- HITL required before any override of a confirmed duplicate flag

## System Dependencies
- **Reads from:** AP payment history export, pending invoice data
- **Writes to:** Nothing
- **HITL Required:** Before overriding any DUPLICATE flag

## Deprecation
Retire when AP system has native duplicate detection as a payment control.
