---
name: purchase-order-manager
description: "Create, manage, and track purchase orders. Use when the user says 'create a PO', 'purchase order', 'issue a PO', 'approve a purchase order', 'PO process', 'how do we buy things', 'buying authorization', 'purchasing process', 'PO approval', or 'track purchase orders'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--mode <create|review|approve|track>] [--entity <MBL|Allevio|HIVE|Column6>]"
---

# Purchase Order Manager

Create, review, approve, and track purchase orders to ensure all spending is authorized, documented, and reconciled. Purchase orders are the operational backbone of procurement — they commit spend before the invoice arrives, create a paper trail for finance, and enable three-way matching (PO → receipt → invoice) that catches billing errors and fraud. For MBL, POs are managed in QuickBooks and Bill.com.

## When to Use
- Creating a PO for a new purchase from an approved supplier
- Reviewing a PO submitted by a team member for approval
- Tracking outstanding POs against budget
- Reconciling invoices against existing POs
- Setting up the PO process for a portfolio company that doesn't have one

## Purchase Authority Matrix (MBL Standard)

```
Authority levels:
  <$1,000:   Department budget holder — no PO required; expense report
  $1,000-$5,000:   Department head approval; PO required
  $5,001-$25,000:  Dr. Lewis approval; PO + 3 competitive quotes required
  $25,001-$100,000: Matt Mathison approval; PO + RFQ required
  >$100,000:  Matt Mathison + Board notification; PO + full RFP required

Emergency exceptions:
  Any amount — emergency purchase documented; formal approval within 48h
  HIVE field emergency — HIVE GP approves same-day; Dr. Lewis notified

Recurring contracts:
  Approved annual contracts: PO issued per order; approval not required per-PO
  Renewal >10% increase: Re-approves at same authority level as new purchase
```

## Output Format

```markdown
# Purchase Order — <PO Number>
**Date issued:** <date> | **Issuer:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Column6>
**PO Number:** <PO-ENTITY-YYYY-NNN>

---

## PO Details

| Field | Value |
|-------|-------|
| Supplier | <Supplier name> |
| Supplier contact | <Name, email, phone> |
| Ship-to address | <Delivery location> |
| Bill-to address | <Entity billing address> |
| Payment terms | Net <30/45> |
| Currency | USD |
| Required delivery date | <date> |

---

## Line Items

| # | Description | Quantity | Unit | Unit price | Total |
|---|------------|---------|------|-----------|-------|
| 1 | <Item/service description> | <N> | <each/hour/month> | $X | $X |
| 2 | <Item/service description> | <N> | | $X | $X |
| | | | | **Subtotal** | $X |
| | | | | Tax (if applicable) | $X |
| | | | | **PO Total** | **$X** |

---

## Authorization

| Role | Name | Date | Status |
|------|------|------|--------|
| Requestor | <Name> | <date> | Approved |
| Budget holder | <Name> | <date> | Approved |
| Dr. Lewis (if >$5K) | Dr. John Lewis | <date> | ✅ Approved / Pending |
| Matt Mathison (if >$25K) | Matt Mathison | <date> | ✅ Approved / Pending |

---

## Budget Reference

| Budget line | Allocated | Committed (POs) | Invoiced | Remaining |
|------------|---------|----------------|---------|---------|
| <Category/department> | $X | $X | $X | $X |
| **After this PO** | | $X | | **$X remaining** |

---

## Receipt & Invoice Matching

| Step | Status | Date | Notes |
|------|--------|------|-------|
| PO issued | ✅ Complete | <date> | |
| Goods/services received | ⏳ Pending | | |
| Receipt confirmed | ⏳ Pending | | |
| Invoice received | ⏳ Pending | | |
| 3-way match: PO = Receipt = Invoice | ⏳ Pending | | |
| Approved for payment | ⏳ Pending | | |
| Payment released (Bill.com) | ⏳ Pending | | |

---

## Open PO Tracker

| PO # | Supplier | Entity | Total | Issued date | Expected delivery | Status |
|------|---------|--------|-------|------------|-----------------|--------|
| PO-MBL-2026-001 | Microsoft | MBL | $X | <date> | <date> | ✅ Delivered |
| PO-ALV-2026-004 | Cardinal Health | Allevio | $X | <date> | <date> | ⏳ In transit |
| PO-HIV-2026-002 | [Contractor] | HIVE | $X | <date> | <date> | ⚠️ Overdue |

**PO aging:**
- On time: <N> POs
- Overdue (<14 days): <N> POs — action required
- Overdue (>14 days): <N> POs — escalate
```

## Output Contract
- PO always issued before payment approved — a PO issued after the invoice is not a PO; it's retroactive authorization
- 3-way match always required before payment — PO amount, receipt, and invoice must match within tolerance before Bill.com releases payment
- Budget remaining always calculated — a PO that exceeds budget must be flagged before approval
- Purchase authority matrix always applied — PO submitted without proper approval is rejected regardless of legitimacy
- HITL required: Dr. Lewis approves all POs $5K-$25K; Matt Mathison approves >$25K; payment in Bill.com released only after 3-way match and Dr. Lewis sign-off; no payment without PO (with documented exceptions for <$1K expenses)

## System Dependencies
- **Reads from:** Budget tracker (QuickBooks), supplier registry, contracts (SharePoint/Legal)
- **Writes to:** QuickBooks (PO creation), Bill.com (payment workflow), procurement tracker (SharePoint)
- **HITL Required:** Dr. Lewis approves $5K-$25K; Matt Mathison approves >$25K; 3-way match confirmed before payment; any PO exceptions documented and approved

## Test Cases
1. **Golden path:** Create PO for Allevio medical supplies ($8,500) → PO-ALV-2026-007; line items: 3 line items; budget check: $42K remaining in medical supplies budget (sufficient); Dr. Lewis approval (>$5K threshold); supplier confirmed; PO issued to Cardinal Health; delivery in 7 days; receipt confirmed on delivery date; invoice received ($8,500 — matches PO); 3-way match pass; Bill.com payment approved; payment released Net 30
2. **Edge case:** Invoice amount doesn't match PO amount (invoice is $200 higher) → 3-way match fails; do not approve payment; contact supplier for a corrected invoice or credit memo; if the additional charge is legitimate (additional freight, for example), create a change order to the PO; never pay an invoice that doesn't match the PO without documented authorization
3. **Adversarial:** A team member creates an expense report for a purchase that should have been on a PO (>$1K) to avoid the PO process → POs and expense reports are different controls; an expense report that looks like a split purchase to avoid the PO threshold is a policy violation; review expense reports for patterns of near-threshold spending; enforce the PO policy; the PO process exists to protect the company, not to create bureaucracy

## Audit Log
All POs retained in QuickBooks. 3-way match results documented. Payment approvals logged in Bill.com. Exceptions documented with approver and rationale.

## Deprecation
Retire when MBL implements a procurement platform (Coupa, SAP Ariba, or equivalent) with automated PO creation, approval workflows, and 3-way matching built in.
