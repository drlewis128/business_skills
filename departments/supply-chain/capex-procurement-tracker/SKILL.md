---
name: capex-procurement-tracker
description: "Plan and track capital expenditure procurement. Use when the user says 'CapEx procurement', 'capital equipment purchase', 'capital expenditure', 'equipment purchase plan', 'CapEx sourcing', 'buying capital equipment', 'capital procurement', 'major equipment purchase', 'CapEx tracking', or 'asset procurement'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|MBL>] [--value <amount>] [--category <equipment|technology|facility>]"
---

# CapEx Procurement Tracker

Plan and track capital expenditure (CapEx) procurement — major equipment, technology infrastructure, and facility investments. CapEx procurement differs from OpEx in several ways: it goes through the balance sheet (depreciation), it requires a business case and board-level approval above certain thresholds, it has a longer procurement cycle, and it has a longer impact period. For MBL's portfolio, CapEx is most significant at HIVE (drilling equipment, well infrastructure) and Allevio (medical equipment, facility improvements).

## When to Use
- Buying major equipment or infrastructure (>$25K per item typically)
- Annual CapEx budget planning
- Equipment replacement decision (repair vs. replace)
- Tracking CapEx spend against the approved CapEx budget
- Matt Mathison needs visibility into portfolio CapEx commitments

## CapEx vs. OpEx Classification

```
CapEx (Capital Expenditure):
  Useful life > 1 year
  Significant purchase price (typically >$5K per item; varies by entity)
  Creates a depreciable asset on the balance sheet
  Examples: Medical equipment (Allevio), drilling rigs, compressors (HIVE),
            server infrastructure, major software implementations (MBL)
  Process: Requires business case; board approval above threshold; depreciation schedule

OpEx (Operating Expenditure):
  Consumed in <1 year OR below capitalization threshold
  Expensed immediately in P&L
  Examples: Consumables, maintenance, software subscriptions, professional services
  Process: Standard procurement policy; no separate CapEx approval needed

Capitalization policy (MBL standard):
  Threshold: Items ≥$5,000 with useful life ≥1 year → capitalize
  Below threshold: Expense as OpEx regardless of useful life
  Lumping: Multiple items of the same type purchased together → one capitalization decision
```

## Output Format

```markdown
# CapEx Procurement — <Item / Project>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / MBL>
**Item / Project:** <Description>
**Total CapEx value:** $X | **Budget status:** ✅ In approved budget / ⚠️ Budget amendment required

---

## Business Case

**What are we buying?** <Precise description of equipment/infrastructure>
**Why do we need it?** <Business problem solved; revenue or efficiency impact>
**Alternatives considered:**
1. <Alternative 1>: <Why rejected>
2. <Alternative 2>: <Why rejected>

**Financial justification:**
| Metric | Value |
|--------|-------|
| Total CapEx investment | $X |
| Annual savings or revenue enabled | $X/year |
| Simple payback period | <N> years |
| 3-year NPV (at X% discount rate) | $X |
| IRR | X% |

**Useful life:** <N> years | **Depreciation method:** Straight-line / MACRS
**Annual depreciation:** $X/year

---

## Approval Requirements

| Threshold | Required approval | Status |
|---------|-----------------|--------|
| <$25K | Dr. Lewis | ✅ Approved |
| $25K-$100K | Matt Mathison | ⏳ Pending |
| >$100K | Matt Mathison + Board notification | ⏳ Pending |
| Any HIVE well infrastructure | HIVE GP | ⏳ Pending |

**Required approvals:**
- [ ] Dr. Lewis: ✅ Approved <date>
- [ ] Matt Mathison: ⏳ Meeting scheduled <date>
- [ ] Board notification (if >$100K): ⏳ Include in next board deck

---

## Procurement Plan

| Phase | Activity | Timeline | Owner |
|-------|---------|---------|-------|
| Business case approval | Review by Matt Mathison | Week 1-2 | Dr. Lewis |
| Vendor sourcing | 3 competitive quotes / RFQ | Week 2-4 | Dr. Lewis |
| Vendor evaluation | Scorecard evaluation | Week 4-5 | Dr. Lewis |
| Contract negotiation | Terms, payment schedule, warranty | Week 5-6 | Dr. Lewis |
| Purchase order | PO issued with payment schedule | Week 6 | Dr. Lewis |
| Delivery and installation | Coordinate with vendor | Week 7-10 | Dr. Lewis + ops |
| Commissioning | Inspect; accept; put into service | Week 10 | Entity ops |
| Asset registration | Record in fixed asset register | Week 10 | Finance |

---

## Payment Schedule

| Milestone | Amount | Due date | Status |
|----------|--------|---------|--------|
| Deposit (30%) | $X | Contract signing | ⏳ |
| Delivery (40%) | $X | On delivery | ⏳ |
| Commissioning (30%) | $X | On acceptance | ⏳ |

**Total: $X** | **Note: Never pay 100% up front for major equipment**

---

## CapEx Portfolio Tracker (All Entities, Current Year)

| Entity | Project | Total CapEx | Approved? | Spent YTD | Remaining | Status |
|--------|---------|------------|---------|----------|---------|--------|
| Allevio | Medical imaging upgrade | $X | ✅ | $X | $X | In procurement |
| HIVE | Compressor replacement | $X | ✅ | $X | $X | Delivered; installing |
| MBL | Cloud infrastructure | $X | ✅ | $X | $X | Complete |
| HIVE | New well equipment | $X | ⏳ Pending | $0 | $X | Business case review |
| **Total** | | **$X** | | **$X** | **$X** | |

**CapEx budget (approved):** $X | **Spent:** $X (X%) | **Remaining:** $X
**Pending approvals:** $X — Matt Mathison review required

---

## Asset Management (post-procurement)

| Asset ID | Description | Entity | Purchase date | Cost | Useful life | Accumulated depreciation | Net book value |
|---------|-----------|--------|------------|------|------------|------------------------|--------------|
| [ID] | [Equipment] | Allevio | <date> | $X | 7 years | $X | $X |
| [ID] | [Equipment] | HIVE | <date> | $X | 10 years | $X | $X |
```

## Output Contract
- Business case always required before procurement begins — spending CapEx without a payback analysis is a governance failure
- Approval gates always enforced — CapEx above threshold proceeds only after proper approval; no retroactive approvals
- Payment milestones always staged — milestone-based payments protect against non-performance; never 100% upfront
- Asset registration always completed at commissioning — CapEx that isn't registered doesn't get depreciated correctly; creates P&L errors
- HITL required: Dr. Lewis develops business case; Matt Mathison approves $25K-$100K; Board notification >$100K; HIVE GP approves all HIVE infrastructure CapEx; vendor selection >$25K requires Matt Mathison; payments tied to acceptance milestones — Dr. Lewis confirms acceptance before final payment released

## System Dependencies
- **Reads from:** CapEx budget (QuickBooks), approved business cases, vendor proposals
- **Writes to:** Fixed asset register (QuickBooks), CapEx tracker (SharePoint/Finance/CapEx), depreciation schedule
- **HITL Required:** Dr. Lewis manages; Matt Mathison approves >$25K; Board >$100K; HIVE GP for HIVE infrastructure; acceptance milestone confirmed by Dr. Lewis before payment

## Test Cases
1. **Golden path:** Allevio medical equipment purchase ($75K ultrasound) → Business case: 7-year useful life; $X revenue enabled/year; IRR: 28%; Matt Mathison approves; RFQ: 3 quotes received; awarded to Siemens at $72K; contract signed with 30/40/30 payment schedule; delivery + installation week 8; clinical commissioning week 9; Dr. Lewis signs acceptance; final payment released; fixed asset registered; depreciation begins
2. **Edge case:** Equipment arrives damaged — do we pay the delivery milestone? → No. Delivery payment is conditional on acceptance of undamaged goods; reject the damaged shipment; document with photos; contact the vendor immediately; demand replacement or credit; do not release the delivery milestone payment until equipment is accepted in good condition; this is why milestone payments exist
3. **Adversarial:** A vendor asks for 80% upfront before production begins → this is a significant counterparty risk; for large orders, an upfront deposit should not exceed 20-30%; if the vendor requires more, investigate their financial stability; consider escrow; at minimum, get a performance bond or letter of credit; 80% upfront with no delivery = very high risk of funds loss if vendor fails

## Audit Log
Business cases retained. Approval documentation retained. CapEx contracts retained in SharePoint/Legal. Fixed asset register maintained in QuickBooks. Payment milestone approvals documented. Depreciation schedule maintained.

## Deprecation
Retire when MBL has an ERP system (NetSuite, SAP) with integrated fixed asset management, automated depreciation, and CapEx workflow approval built in.
