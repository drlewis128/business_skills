---
name: tail-spend-analyzer
description: "Analyze and reduce tail spend — low-value, unmanaged purchasing. Use when the user says 'tail spend', 'maverick spend', 'unmanaged purchasing', 'too many small vendors', 'vendor proliferation', 'clean up our vendor list', 'reduce supplier count', 'uncontrolled spending', 'catalog purchasing', or 'spot buying reduction'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|all>] [--threshold <spend_amount>]"
---

# Tail Spend Analyzer

Identify, analyze, and reduce tail spend — the long tail of low-value, unmanaged purchases that typically represent 20% of spend but 80% of transactions and suppliers. Tail spend is procurement's dirty secret: it's chaotic, uncontrolled, and expensive per unit because volume leverage is zero. For MBL, tail spend cleanup is a quick win: 30-60 days to identify and rationalize, 5-15% cost reduction, and significant reduction in supplier management overhead.

## When to Use
- Supplier count is growing without a strategy ("we have 200 vendors")
- Small purchases happening outside the PO process
- Finance can't reconcile all vendor invoices
- Procurement strategy calls for consolidation — start with tail spend
- Matt Mathison wants a quick procurement win

## Tail Spend Definition

```
Tail spend = the bottom 80% of suppliers by spend value
             (typically represents ~20% of total spend)

Characteristics:
  - Low individual transaction values ($50-$2,000 per transaction)
  - High transaction volume (many orders per supplier)
  - No formal contracts or preferred supplier agreements
  - Typically bypasses the PO process entirely
  - Fragmented across many individuals and cost centers

Tail spend sub-types:
  Maverick spend: Purchases made outside approved channels
                  (buying from an unapproved vendor when a preferred supplier exists)
  
  Spot buying: One-time or infrequent purchases with no recurring need
               (legitimate but worth reviewing for consolidation)
  
  Rogue spend: Purchases made without any approval
               (policy violation; often discovered on expense reports or credit cards)
```

## Output Format

```markdown
# Tail Spend Analysis — <Entity / Portfolio>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Portfolio>
**Analysis period:** <12 months>
**Total spend analyzed:** $X | **Total suppliers:** <N>

---

## Tail Spend Identification

### Spend Concentration Analysis

| Segment | Supplier count | % of suppliers | Spend | % of spend | Avg spend/supplier |
|---------|-------------|--------------|-------|------------|-------------------|
| Top 10% suppliers | <N> | 10% | $X | 80% | $X |
| Next 10-20% suppliers | <N> | 10% | $X | 15% | $X |
| **Bottom 80% (tail)** | **<N>** | **80%** | **$X** | **5%** | **$X avg** |

**Tail spend total:** $X across <N> suppliers
**Average tail supplier annual spend:** $X — below the cost to manage the relationship
**Estimated cost to manage tail (procurement + AP time):** $X/year

---

## Tail Spend Categories

| Category | Tail suppliers | Tail spend | Quick win opportunity |
|---------|-------------|-----------|---------------------|
| Office supplies | 12 vendors | $X | Consolidate to 1 office supply catalog (Staples/Amazon Business) |
| Professional services (small) | 8 vendors | $X | Consolidate project work; preferred list |
| Technology (misc.) | 15 vendors | $X | Consolidate SaaS to approved list; Amazon Business for hardware |
| Maintenance/repair (HIVE) | 9 vendors | $X | Preferred supplier for region |
| Clinical consumables (Allevio) | 6 vendors | $X | Consolidate to preferred medical supplier |
| Miscellaneous / unclassified | 22 vendors | $X | Requires categorization before action |

---

## Rationalization Options

### Option A: Preferred Supplier Catalog (recommended for commodity categories)

Create a catalog of approved products from 1-3 preferred suppliers per category.
Employees order from the catalog — no approvals needed below $X if using catalog.
Non-catalog purchases require Dr. Lewis approval.

Best for: Office supplies, commodity IT (cables, peripherals), standard maintenance parts

**Implementation:** 2-4 weeks | **Expected savings:** 8-15% | **Effort:** Medium

### Option B: P-Card / Corporate Card Program (for very small transactions)

Issue corporate cards to department heads for purchases <$500.
Monthly statement review replaces per-transaction approval.
Approved suppliers list enforced through card restrictions (MCC codes).

Best for: Travel, meals, small consumables
**Requires:** JP Morgan, Amex, or equivalent with MCC restriction capability

**Implementation:** 4-6 weeks | **Savings:** Primarily time savings | **Effort:** Medium

### Option C: Supplier Consolidation (for non-commodity categories)

Move tail suppliers to preferred suppliers in the same category.
Cancel accounts with tail suppliers; redirect to preferred.

Best for: Categories where a preferred supplier can cover tail supplier needs

**Implementation:** 4-8 weeks | **Expected savings:** 10-20% | **Effort:** High (negotiation required)

### Option D: Eliminate (for truly one-time spend)

For tail suppliers used once with no expected repeat — no action needed.
Purge from active vendor list in QuickBooks; archive.

---

## Rationalization Plan

| Tail category | Action | Target supplier(s) | Savings | Timeline |
|------------|--------|------------------|---------|---------|
| Office supplies (12 vendors) | Catalog: Amazon Business | Amazon Business | $X (12%) | 30 days |
| Misc. technology (15 vendors) | Catalog: CDW + Amazon Business | CDW, Amazon | $X (10%) | 30 days |
| Clinical consumables tail (6 vendors) | Consolidate → Cardinal Health | Cardinal Health | $X (15%) | 60 days |
| Professional services tail (8 vendors) | Preferred list + SOW requirement | 2 approved firms | $X (8%) | 90 days |
| HIVE maintenance tail (9 vendors) | Regional preferred + spot approval | 2 regional vendors | $X (10%) | 60 days |
| **Total** | | | **$X** | |

---

## Vendor Deactivation List

After rationalization, deactivate these tail vendors from QuickBooks:
(Confirm no active POs or invoices before deactivation)

| Vendor | Last activity | Annual spend | Action |
|--------|------------|------------|--------|
| [Vendor] | <date> | $X | Deactivate — moved to Amazon Business |
| [Vendor] | <date> | $X | Archive — one-time purchase; no future need |
| [Vendor] | <date> | $X | Deactivate — consolidated to Cardinal Health |

**Vendors to deactivate: <N>** | **Vendors to archive: <N>**

---

## Post-Rationalization Metrics (target 90 days out)

| Metric | Baseline | Target | 
|--------|---------|--------|
| Total active vendors | <N> | <N> (-X%) |
| Tail vendor count (bottom 80%) | <N> | <N> (-X%) |
| Tail spend as % of total | X% | <10% |
| Catalog purchases as % of tail spend | 0% | >60% |
| PO compliance rate | X% | >90% |
```

## Output Contract
- Tail spend quantification always in both suppliers and spend — the size of the tail in supplier count is different from the financial exposure
- Category analysis always before rationalization plan — different categories need different solutions; office supplies ≠ professional services
- Vendor deactivation always confirmed against active POs — deactivating a vendor with an open PO creates AP reconciliation problems
- Quick wins always identified separately from complex consolidation — 30-day wins build momentum for longer initiatives
- HITL required: Dr. Lewis designs plan; Matt Mathison approves if supplier deactivations affect >$25K in annual spend; vendor deactivations reviewed by Dr. Lewis before execution; catalog creation reviewed by Dr. Lewis; department heads notified of catalog requirements before enforcement

## System Dependencies
- **Reads from:** QuickBooks (spend by vendor, YTD), Bill.com (invoice history), expense reports
- **Writes to:** Tail spend analysis (SharePoint/Operations/Procurement); vendor deactivation list; preferred supplier catalog
- **HITL Required:** Dr. Lewis leads; Matt Mathison approves >$25K scope; deactivations reviewed; department heads informed before catalog enforcement

## Test Cases
1. **Golden path:** MBL portfolio tail spend analysis → 180 total vendors; top 36 (20%) = 80% of spend; 144 tail vendors at $X total (20% of spend); top tail opportunities: office supplies (12 vendors → Amazon Business catalog, save 12%); clinical consumables tail (6 Allevio vendors → Cardinal Health, save 15%); total tail rationalization: $X savings; 80 vendors deactivated in 90 days; tail vendor count reduced from 144 to 64
2. **Edge case:** A tail vendor is a certified diverse supplier (MBE, WBE) → don't automatically deactivate diverse tail suppliers; check if the category has a preferred diverse supplier; if consolidation to a non-diverse preferred supplier loses the diversity classification, factor that into the decision; the cost savings may be outweighed by the loss of diverse spend; document the tradeoff decision
3. **Adversarial:** Department heads resist the catalog program ("it limits our options") → the catalog program covers 95% of their actual needs; the 5% edge cases use the exception process (Dr. Lewis approval); the alternative — ordering from any vendor without controls — creates audit, tax (missing W-9s), and fraud risk; frame it as "the catalog makes buying easier and faster, not harder" — one-click ordering from an approved catalog is faster than finding a random vendor

## Audit Log
Tail spend analysis retained. Vendor deactivations documented with date and reason. Catalog adoption metrics tracked. Savings realized vs. projected tracked.

## Deprecation
Retire when MBL has a procurement platform with a built-in supplier catalog, spend analytics, and maverick spend detection that automatically flags off-catalog purchasing.
