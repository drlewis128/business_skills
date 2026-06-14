---
name: inventory-management-planner
description: "Plan and optimize inventory levels for a business. Use when the user says 'inventory management', 'inventory planning', 'how much inventory to keep', 'inventory levels', 'stock management', 'inventory optimization', 'we run out of stock', 'too much inventory', 'manage our inventory', or 'inventory strategy'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--focus <shortage|excess|both>]"
---

# Inventory Management Planner

Design and optimize inventory management for portfolio companies that hold physical inventory. Inventory management is the balance between too much (capital tied up, storage cost, expiration/obsolescence risk) and too little (stockouts, care delivery failures, production shutdowns). For MBL's portfolio, Allevio carries clinical/medical inventory and HIVE carries oil and gas equipment and supplies. Both have different cost profiles for stockouts: at Allevio, a stockout can affect patient care; at HIVE, a stockout can shut down a well.

## When to Use
- Portfolio company is running out of critical items (stockout problem)
- Portfolio company has too much capital tied up in slow-moving inventory
- Standing up inventory management for a newly acquired company
- Preparing for demand seasonality or a major operational change
- Switching suppliers and need to manage inventory transition

## Inventory Classification (ABC Analysis)

```
A-items (top 20% of items = 80% of value):
  Management: Tight control; frequent reorder reviews; safety stock maintained
  Review: Weekly or continuous
  For Allevio: Critical clinical supplies (PPE, consumables for active patients)
  For HIVE: High-value equipment (pumps, compressors, drilling components)

B-items (next 30% of items = 15% of value):
  Management: Moderate control; regular reorder points
  Review: Bi-weekly
  For Allevio: General medical supplies; office/admin
  For HIVE: Routine maintenance parts; chemicals

C-items (remaining 50% of items = 5% of value):
  Management: Simple min/max; bulk order; reduce variety
  Review: Monthly or on depletion
  For Allevio: Commodities (gloves, tape, basic supplies)
  For HIVE: Fasteners, consumables, shop supplies
```

## Output Format

```markdown
# Inventory Management Plan — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / Column6>
**Total SKUs managed:** <N> | **Inventory value at cost:** $X

---

## Inventory Health Assessment

### Current State

| Issue | SKUs affected | Estimated cost impact | Priority |
|-------|-------------|---------------------|---------|
| Stockouts (out of stock when needed) | <N> SKUs | $X lost revenue or care impact | 🔴 Critical |
| Slow-moving inventory (no demand >90 days) | <N> SKUs | $X capital tied up | 🟡 High |
| Expired/obsolete inventory | <N> SKUs | $X write-off | 🟡 High |
| Over-ordered (>6 months of demand on hand) | <N> SKUs | $X excess capital | 🟢 Medium |

**Total inventory optimization opportunity:** $X

---

## ABC Classification Results

| Class | SKU count | % of SKUs | Inventory value | % of value | Strategy |
|-------|---------|----------|---------------|-----------|---------|
| A | <N> | 20% | $X | 80% | Tight control; safety stock |
| B | <N> | 30% | $X | 15% | Standard reorder points |
| C | <N> | 50% | $X | 5% | Min/max; simplify |

---

## Reorder Point Calculations (A-items)

For each A-item:

| SKU | Item | Avg daily demand | Lead time (days) | Safety stock (days) | Reorder point | Reorder qty |
|-----|------|-----------------|-----------------|-------------------|--------------|------------|
| [SKU-001] | [Item] | <N> units/day | <N> days | <N> days | <N> units | <N> units |
| [SKU-002] | [Item] | <N> units/day | <N> days | <N> days | <N> units | <N> units |

**Reorder point formula:**
  Reorder Point = (Avg daily demand × Lead time) + Safety stock
  Safety stock = Z-score × σ(demand) × √Lead time
  Z-score: 95% service level = 1.65; 99% = 2.33 (use 2.33 for patient-critical items at Allevio)

---

## Slow-Moving Inventory Action Plan

| SKU | Item | Last demand date | Qty on hand | Value at cost | Action |
|-----|------|-----------------|------------|--------------|--------|
| [SKU] | [Item] | >90 days ago | <N> | $X | Return to supplier / Donate / Write off |
| [SKU] | [Item] | >180 days ago | <N> | $X | Write off — no movement likely |

**Slow-moving inventory total:** $X | **Recommended action:** Discuss write-off / return plan with Matt Mathison

---

## Stockout Prevention Plan

| SKU | Critical item? | Current on-hand | Days of supply | Safety stock | Gap | Action |
|-----|--------------|----------------|--------------|-------------|-----|--------|
| [SKU] | ✅ Critical | <N> units | <N> days | <N> days | Below safety stock | Order immediately |
| [SKU] | ❌ Not critical | <N> units | <N> days | <N> days | Adequate | Monitor |

---

## Inventory Management KPIs

| KPI | Target | Current | Trend |
|-----|--------|---------|-------|
| Stockout rate (% of orders unfillable) | <2% | X% | ↑/↓/→ |
| Inventory turnover | >6× per year | X× | |
| Days of supply on hand | 30-45 days | X days | |
| Slow-moving inventory (>90 days) | <5% of value | X% | |
| Carrying cost % of inventory value | <20%/year | X% | |
| Fill rate (% of orders filled completely) | ≥98% | X% | |

---

## Allevio Clinical Inventory Controls

Special requirements for healthcare inventory:
- [ ] Expiration date tracking: All clinical supplies tracked by lot + expiration
- [ ] FIFO (First In, First Out) enforced: Oldest stock used first
- [ ] Temperature-sensitive items: Cold chain monitoring; refrigerator/freezer logs
- [ ] Recall tracking: Supplier recall notices trigger immediate quarantine of affected lots
- [ ] Inventory accuracy: Monthly physical count; variance >2% investigated
- [ ] Regulatory reporting: Any adverse event involving a device reported per FDA requirements
```

## Output Contract
- ABC analysis always the starting point — treating all SKUs equally wastes management effort on low-value items while under-managing high-value ones
- Stockout prevention for critical items always uses 99% service level (Z=2.33) — patient care items and well-production-critical items cannot run out
- Slow-moving inventory always quantified — inventory that doesn't turn is working capital not working for the business
- Clinical inventory controls always a separate section for Allevio — expiration tracking, FIFO, and recall response are regulatory requirements
- HITL required: Dr. Lewis designs plan; write-off decisions >$5K require Matt Mathison approval; Allevio: clinical inventory procedures require Allevio clinical lead sign-off; safety stock levels for patient-critical items reviewed by Allevio clinical ops before implementation

## System Dependencies
- **Reads from:** Inventory management system or spreadsheet (entity-specific), purchase history (QuickBooks), demand history
- **Writes to:** Inventory plan (SharePoint/Operations/Supply Chain); reorder point settings in inventory system
- **HITL Required:** Dr. Lewis designs; Matt Mathison approves write-offs >$5K; Allevio clinical ops approve patient-critical safety stock levels; emergency orders reviewed by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio inventory management plan → 250 SKUs; ABC: 50 A-items ($320K), 75 B-items ($60K), 125 C-items ($20K); critical finding: 3 A-items below safety stock (order immediately); 22 SKUs with >90 days no demand ($18K slow-moving); action plan: immediate PO for 3 critical items; write-off proposal for slow-moving; reorder points set for all A-items at 99% service level; Allevio clinical ops approves safety stock levels; Matt Mathison approves $18K write-off
2. **Edge case:** HIVE has a critical piece of equipment fail and the spare part is not in inventory → emergency procurement via vendor-sourcing-plan (expedited); simultaneously add the spare part to the A-item list with a safety stock of 1 unit; the emergency is the data point that shows the inventory plan was inadequate; every stockout is an inventory planning signal
3. **Adversarial:** Operations team orders large quantities of slow-moving items "just in case" → excess inventory is a hidden cost; $100K of inventory that turns once per year = $20K carrying cost + risk of obsolescence; use the reorder point system; "just in case" ordering at MBL scale means capital inefficiency; the safety stock calculation already accounts for demand variability — that's what it's for

## Audit Log
Inventory plans versioned. Reorder point changes documented. Write-off approvals documented. Allevio: clinical inventory procedure compliance log maintained. Stockout incidents documented.

## Deprecation
Retire when the entity has an ERP system (NetSuite, SAP) or inventory management software (Fishbowl, Cin7) with automated reorder points, demand forecasting, and ABC classification built in.
