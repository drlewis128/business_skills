---
name: reorder-point-optimizer
description: "Optimize inventory reorder points to prevent stockouts while minimizing carrying cost. Use when the user says 'reorder point', 'when to reorder', 'reorder level', 'inventory trigger', 'reorder optimization', 'set reorder points', 'when should we order more', 'inventory reorder settings', 'optimize reorder', or 'ROP calculation'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--item <SKU or description>] [--service-level <90|95|99>] [--review-period <days>]"
---

# Reorder Point Optimizer

Calculate and optimize inventory reorder points (ROPs) — the inventory level that triggers a replenishment order. The ROP ensures that new stock arrives before existing stock runs out, accounting for lead time and demand variability. Too high an ROP = excess inventory and carrying cost. Too low = stockouts. For MBL's portfolio, ROPs are most critical at Allevio (clinical supply continuity) and HIVE (drilling operations continuity).

## When to Use
- Setting up initial reorder points for a new inventory management system
- Demand or lead time has changed — recalibrate existing ROPs
- After a stockout — the existing ROP was too low
- After excess inventory identified — the existing ROP may be too high
- Building a demand planning model from scratch

## ROP Framework

```
Reorder Point (ROP) = Lead Time Demand + Safety Stock

Where:
  Lead Time Demand = Avg daily demand × Lead time (days)
  Safety Stock = calculated per safety-stock-calculator skill

Review systems:
  Continuous review: Order whenever stock falls to ROP (real-time monitoring)
    Use when: High-value items; critical clinical supplies; real-time inventory system
    ROP formula: As above

  Periodic review: Check stock level every N days; order up to max level
    Use when: Many low-value items; manual inventory management
    Order-up-to level = Demand during (review period + lead time) + Safety stock
    No traditional "ROP" — orders placed at each review period

Economic Order Quantity (EOQ): How much to order when you reorder
  EOQ = √(2 × annual demand × ordering cost / holding cost per unit)
  Typical holding cost: 20-25% of unit value per year
  Typical ordering cost: $25-$100 per order
  For many items, standard supplier lot sizes are close to EOQ — calculate both
```

## Output Format

```markdown
# Reorder Point Optimization — <Item / Category>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Entity:** <Allevio / HIVE>
**Review system:** Continuous / Periodic (every <N> days)
**Service level:** <90% / 95% / 99%>

---

## Item Parameters

| Parameter | Value | Source |
|---------|-------|--------|
| SKU | <SKU-001> | |
| Description | <Item description> | |
| Average daily demand | <N> units/day | 12-month average |
| Demand std deviation | <N> units/day | Historical calculation |
| Lead time (days) | <N> days | Supplier confirmed |
| Lead time std deviation | <N> days | Historical PO data |
| Unit cost | $X | Current pricing |
| Ordering cost | $X/order | Finance estimate |
| Annual holding rate | 20% | MBL standard |

---

## ROP Calculation

**Step 1: Safety Stock**
(From safety-stock-calculator — Z-score method)
```
Safety Stock = Z × √(LT × σ_d² + D_avg² × σ_lt²)
             = 2.33 × √(14 × 4.41 + 72.25 × 1.69)
             = 32 units (99% service level)
```

**Step 2: Lead Time Demand**
```
Lead Time Demand = Avg daily demand × Lead time
                 = 8.5 units/day × 14 days
                 = 119 units
```

**Step 3: Reorder Point**
```
ROP = Lead Time Demand + Safety Stock
    = 119 + 32
    = 151 units
```

**Interpretation:** When stock falls to 151 units, place a replenishment order.
Expected stock at delivery = 32 units (the safety stock buffer).

---

## Economic Order Quantity (EOQ)

```
Annual demand: 8.5/day × 365 = 3,103 units
Ordering cost: $45/order (Dr. Lewis time + admin)
Holding cost: $X/unit × 20%/year = $X/unit/year

EOQ = √(2 × 3,103 × $45 / $X)
    = √(X)
    = <N> units

Orders per year at EOQ: 3,103 / <N> = <N> orders/year
Average inventory at EOQ: <N>/2 + 32 (safety stock) = <N> units
```

**Compare to supplier minimum order quantity (MOQ):**
- EOQ: <N> units
- Supplier MOQ: <N> units
- Recommendation: Order <max(EOQ, MOQ)> units per order

---

## ROP Summary Table (Multi-Item)

| SKU | Item | Avg demand/day | Lead time | Safety stock (99%) | ROP | EOQ | Order frequency |
|-----|------|--------------|----------|------------------|-----|-----|----------------|
| SKU-001 | [Critical item] | 8.5 | 14 days | 32 units | 151 units | <N> units | Every <N> days |
| SKU-002 | [Standard item] | 15.2 | 7 days | 17 units | 124 units | <N> units | Every <N> days |
| SKU-003 | [Low-risk item] | 42.0 | 3 days | 19 units | 145 units | <N> units | Every <N> days |

---

## ROP Performance Monitoring

After implementing new ROPs, track:

| Metric | Baseline | Target | Review date |
|--------|---------|--------|------------|
| Stockout rate (% of orders unfillable) | X% | <2% | 30 days |
| Average stock at receipt (should ≈ safety stock) | <N> units | ≈<safety stock> | 60 days |
| Excess inventory (stock > 90-day demand) | X SKUs | 0 | 60 days |
| Average inventory value | $X | $X (target) | 60 days |

**ROP adjustment triggers:**
- Stockout occurs: ROP too low → increase safety stock or reduce lead time
- Stock at receipt >2× safety stock: ROP too high → reduce safety stock target
- Lead time changes: Recalculate immediately
- Demand trend changes by >20%: Recalculate at next monthly review

---

## Periodic Review Alternative (if no continuous monitoring)

For items without real-time inventory tracking:

**Order-up-to level (periodic review, every <N> days):**
```
Max level = Demand during (review period + lead time) + Safety stock
          = D_avg × (review_days + lead_days) + Safety stock
          = 8.5 × (7 + 14) + 32
          = 8.5 × 21 + 32
          = 178.5 + 32
          = 211 units

At each review: Order (Max level - current stock)
```
```

## Output Contract
- Full calculation always shown — not just the result; the calculation enables recalibration when inputs change
- EOQ always calculated alongside ROP — the ROP tells when to order; EOQ tells how much; both are needed for complete inventory parameters
- ROP monitoring metrics always included — a calculated ROP that's never validated against actual performance doesn't improve
- Adjustment triggers always defined — inventory parameters go stale as demand and lead times change; automatic adjustment criteria prevent gradual drift to stockouts or excess
- HITL required: Dr. Lewis calculates; Allevio clinical lead confirms patient-critical service levels; HIVE operations confirms production-critical classifications; significant ROP changes (>20% from current) reviewed by entity operations before implementation; stockout incidents trigger immediate ROP review by Dr. Lewis

## System Dependencies
- **Reads from:** Historical demand data, PO lead time history, unit costs (QuickBooks), inventory system current levels
- **Writes to:** Inventory system (ROP settings), inventory plan (SharePoint/Operations/Supply Chain)
- **HITL Required:** Dr. Lewis calculates and implements; entity operations confirms critical classification; significant changes reviewed by entity ops; stockouts trigger immediate Dr. Lewis review

## Test Cases
1. **Golden path:** Optimize ROPs for Allevio A-items (10 critical clinical supplies) → For each item: collect 12 months of daily demand data; calculate σ_demand; collect PO history for lead time and σ_lt; set 99% service level (patient-critical); calculate safety stock and ROP; EOQ calculation vs. supplier MOQ; update inventory system with new ROPs; monitor: stock at receipt ≈ safety stock for next 60 days; adjust if any stockout occurs
2. **Edge case:** Lead time for a critical item suddenly doubles (supplier delays) → recalculate ROP immediately using new lead time: ROP = D_avg × new_LT + Safety_stock; place an immediate order to bridge the gap (current ROP is too low for the new lead time); escalate to supply chain risk register; begin backup supplier qualification for this item
3. **Adversarial:** Finance wants to reduce the safety stock level for all items to reduce working capital → run the tradeoff analysis per item: cost of additional stockout risk vs. working capital reduction; for patient-critical Allevio items, the stockout cost >> carrying cost; for C-items at HIVE, the working capital reduction may be justified; don't accept a blanket policy; present item-by-item analysis; the decision should be made with full knowledge of the stockout risk being accepted

## Audit Log
ROP calculations retained per item per calculation date. ROP changes documented with rationale. Stockout incidents linked to ROP adequacy review. Parameter history tracked (demand changes, lead time changes).

## Deprecation
Retire when inventory management system has automated ROP calculation with real-time demand sensing, lead time monitoring, and EOQ optimization built in.
