---
name: invoice-reconciliation
description: "Match invoices to purchase orders and receipts, flagging discrepancies for resolution. Use when the user says 'reconcile invoices', 'match invoice to PO', 'invoice discrepancy', 'invoice doesn't match PO', 'reconcile AP', 'find invoice mismatches', or 'check invoices against purchase orders'. Core AP control skill."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<invoice-data | file> [--po-file <path>] [--receipt-file <path>]"
---

# Invoice Reconciliation

Match invoices against POs and goods receipts to surface discrepancies before payment. Prevents overpayment, duplicate payment, and paying for undelivered goods.

## When to Use
- Before approving any vendor invoice for payment
- During month-end AP review
- When a vendor disputes a payment or claims non-payment

## Process

### Step 1 — Load Documents
Accept three inputs (any combination):
- Invoice data (from `invoice-ingestion` output or raw)
- Purchase Order data
- Goods Receipt / Delivery Confirmation

If only invoice is provided, flag that PO and receipt are needed for full reconciliation.

### Step 2 — Match Fields

| Invoice Field | PO Field | Match Check |
|--------------|----------|-------------|
| Vendor name | Vendor name | Exact or fuzzy match |
| PO number | PO number | Exact match required |
| Line item descriptions | PO line descriptions | Semantic match |
| Line item quantities | PO quantities | ≤ PO qty (no overbilling) |
| Unit prices | PO unit prices | ≤ contracted price |
| Total | PO total | Within tolerance (default: ±$0.01 or ±0.1%) |
| Invoice date | PO delivery window | Within acceptable range |

### Step 3 — Receipt Confirmation
If goods receipt available:
- Do received quantities match invoiced quantities?
- Are all invoiced line items confirmed as received?
- Receipt date vs invoice date plausible?

### Step 4 — Classify Each Match

| Status | Meaning |
|--------|---------|
| ✅ MATCHED | All fields reconcile within tolerance |
| ⚠️ PARTIAL | Minor discrepancy within tolerance band — flag but may approve |
| ❌ DISCREPANCY | Material mismatch — hold payment pending resolution |
| 🔄 DUPLICATE | Invoice number already processed in system |
| ❓ NO PO | Invoice has no corresponding PO — escalate |

## Output Format

```markdown
# Invoice Reconciliation Report
**Invoice:** #<number> | **Vendor:** <name> | **Amount:** $<total>
**Date:** <today>

## Match Status: ✅ MATCHED / ⚠️ PARTIAL / ❌ DISCREPANCY

| Field | Invoice | PO | Status |
|-------|---------|-----|--------|
| Vendor | <name> | <name> | ✅ |
| PO # | <num> | <num> | ✅ |
| Line 1 qty | 10 | 10 | ✅ |
| Line 1 price | $50.00 | $48.00 | ❌ +$2.00 overbilled |
| Total | $500.00 | $480.00 | ❌ $20.00 variance |

## Discrepancies
1. Unit price variance on Line 1: invoiced $50.00 vs PO $48.00 — **$20.00 overbilled total**

## Recommended Action
Hold invoice #<number>. Contact <vendor> to reissue corrected invoice at contracted price.
```

## Output Contract
- Every discrepancy is itemized with dollar impact
- MATCHED invoices are approved for payment routing
- DISCREPANCY invoices are held — never auto-approved
- HITL required before any payment release

## System Dependencies
- **Reads from:** Invoice data, PO data, receipt data (provided as input or file)
- **Writes to:** Nothing (read-only analysis)
- **HITL Required:** Before releasing payment on any reconciled invoice

## Deprecation
Retire when ERP system natively performs three-way match with alerting.
