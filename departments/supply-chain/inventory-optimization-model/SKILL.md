---
name: inventory-optimization-model
description: "Optimize inventory investment levels across the portfolio to minimize capital tied up while maintaining service levels. Use when the user says 'optimize inventory', 'inventory investment', 'right-size inventory', 'reduce inventory', 'inventory levels', 'inventory capital', 'excess inventory', 'inventory carrying cost', 'how much inventory should we hold', or 'inventory optimization'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|MBL>] [--mode <full|sku-level|portfolio>] [--target <service-level>]"
---

# Inventory Optimization Model

Optimize inventory investment across the MBL portfolio — minimize capital tied up in stock while maintaining the service levels that operations and patients depend on. Most organizations carry 20-40% more inventory than necessary because safety stock is set by intuition rather than math. This skill replaces intuition with a structured, data-driven approach: ABC classification, EOQ, statistically-grounded safety stock, and capital reallocation.

## When to Use
- Inventory feels "too high" but no one knows what's safe to reduce
- Cash is tight — where can we free up working capital from inventory?
- New SKUs added — what's the right starting inventory level?
- Annual operating plan — how much working capital does supply chain require?
- Matt Mathison asks "what's our inventory doing to our cash position?"

## Optimization Framework

```
Step 1: ABC Classification (prioritize the right items)
  A-items: Top 20% of SKUs = ~80% of inventory value → optimize tightly
  B-items: Middle 30% of SKUs = ~15% of inventory value → optimize moderately
  C-items: Bottom 50% of SKUs = ~5% of inventory value → simplify (high safety stock, order infrequently)

Step 2: Demand characterization
  For each SKU: Average daily demand (D_avg), demand standard deviation (σ_d), lead time (LT), lead time variability (σ_lt)

Step 3: Service level by SKU class
  A-items (Allevio clinical): 99% service level (Z = 2.33) — stockout = patient impact
  A-items (HIVE critical): 95% service level (Z = 1.65) — stockout = well downtime
  B-items: 95% service level (Z = 1.65)
  C-items: 90% service level (Z = 1.28) — overstocking C-items wastes capital

Step 4: Safety stock (SS) calculation
  SS = Z × √(LT × σ_d² + D_avg² × σ_lt²)

Step 5: Cycle stock (EOQ-based)
  EOQ = √(2 × D_annual × S / H)
  Where: S = ordering cost per PO; H = holding cost per unit per year (typically 20-25% of unit cost)
  Average cycle stock = EOQ / 2

Step 6: Total inventory = Safety stock + Average cycle stock (EOQ/2) + Pipeline (in-transit)

Step 7: Capital optimization
  Total inventory investment = Σ(units × unit cost) across all SKUs
  Target: Reduce total investment by X% without degrading service levels
  Lever: Reduce C-item excess; increase order frequency for A-items (smaller cycle stock)
```

## Output Format

```markdown
# Inventory Optimization Model — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / MBL Portfolio>
**Total SKUs analyzed:** <N> | **Current inventory investment:** $X
**Target inventory investment:** $X (–X%) | **Target service level:** XX%

---

## ABC Classification Summary

| Class | SKU count | % of SKUs | Inventory value | % of value | Action |
|-------|----------|----------|----------------|-----------|--------|
| A | <N> | 20% | $X | 80% | Tight control; high service level; weekly cycle count |
| B | <N> | 30% | $X | 15% | Moderate control; monthly cycle count |
| C | <N> | 50% | $X | 5% | Simplify; reduce over-stocking; quarterly cycle count |
| **Total** | **<N>** | **100%** | **$X** | **100%** | |

**Insight:** C-items represent X% of inventory value but X% of capital tied up — excess C-item stocking is the primary optimization opportunity.

---

## Current vs. Optimized Inventory Levels

| SKU | Class | Current stock (units) | Current investment | Optimized stock (units) | Optimized investment | Delta |
|-----|-------|---------------------|------------------|----------------------|---------------------|-------|
| Clinical consumable A | A | <N> | $X | <N> | $X | –$X |
| Medical supply B | B | <N> | $X | <N> | $X | –$X |
| C-item supply | C | <N> | $X | <N> | $X | –$X |
| HIVE spare part (critical) | A | <N> | $X | <N> | $X | No change |
| HIVE C-item part | C | <N> | $X | <N> | $X | –$X |

---

## Safety Stock Calculation (A-Items)

| SKU | D_avg (units/day) | σ_d | LT (days) | σ_lt (days) | Z (service level) | Safety stock (units) | Current SS | Optimized |
|-----|-----------------|-----|----------|-----------|-------------------|---------------------|-----------|----------|
| SKU-A1 | <N> | <N> | <N> | <N> | 2.33 (99%) | <N> | <N> | <N> |
| SKU-A2 | <N> | <N> | <N> | <N> | 2.33 (99%) | <N> | <N> | <N> |
| SKU-B1 | <N> | <N> | <N> | <N> | 1.65 (95%) | <N> | <N> | <N> |

---

## EOQ Analysis (A-Items)

| SKU | Annual demand | Order cost ($/PO) | Holding cost (%/yr) | Unit cost | EOQ (units) | Current order qty | Recommended |
|-----|-------------|-----------------|-------------------|----------|-------------|-----------------|-------------|
| SKU-A1 | <N>/yr | $X | 22% | $X | <N> | <N> | Order EOQ (<N> units) every <N> days |
| SKU-A2 | <N>/yr | $X | 22% | $X | <N> | <N> | Order EOQ (<N> units) every <N> days |

**Holding cost assumption:** 22% of unit cost per year (storage + capital + obsolescence risk)
**Order cost assumption:** $X per PO (includes Dr. Lewis time + admin overhead)

---

## Capital Release Plan

| Category | Current investment | Optimized investment | Capital released | Action |
|---------|------------------|---------------------|-----------------|--------|
| A-items (reduce cycle stock via higher order frequency) | $X | $X | $X | Increase order frequency; reduce order quantity toward EOQ |
| B-items (reduce excess) | $X | $X | $X | Right-size to SS + EOQ/2 |
| C-items (reduce excess stocking) | $X | $X | $X | Reduce to 90-day supply max; many C-items need only 30-day supply |
| Obsolete / slow-moving | $X | $0 | $X | Write off or return to supplier (items with no movement in 180+ days) |
| **Total** | **$X** | **$X** | **$X** | |

**Cash released to operations:** $X
**Estimated timeline to right-sized inventory:** <N> weeks (as existing stock is consumed to new target levels)

---

## Multi-Entity Portfolio View

| Entity | Current inventory investment | Optimized | Reduction | Priority |
|--------|---------------------------|----------|---------|---------|
| Allevio | $X | $X | –$X (–X%) | A-item clinical supply focus |
| HIVE | $X | $X | –$X (–X%) | C-item spare parts excess |
| MBL central | $X | $X | –$X (–X%) | |
| **Portfolio total** | **$X** | **$X** | **–$X (–X%)** | |

---

## Matt Mathison Summary

**Inventory is X% over-invested.** The primary opportunity is in C-item spare parts (HIVE) and B/C-item clinical supplies (Allevio) — we're carrying too much of items that are cheap and rarely needed. Optimizing to data-driven safety stock and EOQ cycle quantities releases $X in working capital over the next <N> weeks as existing excess is consumed. No stockout risk to operations — we're reducing over-stock, not safety stock on critical items. No purchases needed; this is a natural run-down as we stop over-ordering.
```

## Output Contract
- ABC classification always first — optimization without prioritization wastes effort on the wrong items
- Allevio clinical A-items always at 99% service level — stockout is a patient safety event, not just a cost issue
- Capital release expressed in dollars — "reduce inventory" is meaningless to Matt Mathison; "$X released to operations in N weeks" is actionable
- EOQ calculated, not assumed — order quantity should be math, not habit
- HITL required: Dr. Lewis builds the model; Allevio clinical lead confirms A-item service level targets; HIVE GP confirms critical spare parts list; obsolete inventory write-offs >$5K require Matt Mathison approval; capital release plan presented to Matt Mathison before execution

## System Dependencies
- **Reads from:** Inventory system (stock levels, unit costs, movement history), supplier data (lead times, order costs), demand history
- **Writes to:** Inventory optimization report (SharePoint/Operations/Supply Chain); reorder parameters (inventory system); write-off list (QuickBooks)
- **HITL Required:** Dr. Lewis models; Allevio clinical lead validates A-items; HIVE GP validates critical parts; write-offs >$5K → Matt Mathison; capital release plan → Matt Mathison awareness

## Test Cases
1. **Golden path:** Allevio inventory optimization → 85 active SKUs; A-items (17 SKUs): clinical consumables; current investment: $X; safety stock analysis: 12 A-items carrying excess safety stock based on incorrect lead time assumptions; EOQ analysis: 8 A-items being ordered in quantities 3× larger than EOQ (driving high cycle stock); optimization: corrected SS + EOQ-based ordering; capital released: $X; no service level impact; B/C optimization: $X additional; total: $X released; Matt Mathison summary presented
2. **Edge case:** A new clinical procedure is being added at Allevio — need inventory model for new SKUs before they're ordered → use demand driver (procedures per month × usage per procedure) to project D_avg; use supplier-quoted lead time + standard σ_lt assumption; set initial order at SS + 2× EOQ (extra buffer for new-SKU uncertainty); re-run at 90 days once actual demand data exists
3. **Adversarial:** Allevio clinical team pushes back on reducing safety stock for any clinical supply ("we can't risk a stockout") → validate their concern by reviewing the service level targets — 99% is already a very high service level; if the current safety stock provides 99.9% service level, reducing to 99% is statistically sound; present the stockout risk in absolute terms: "at 99% service level, we expect <0.4 stockout events per 100 weeks on this SKU — is that acceptable?"; if truly unacceptable, accept higher SS for that specific SKU and document the business justification

## Audit Log
Model versions retained with assumptions documented. ABC classification retained. Capital release tracking vs. plan. Write-off approvals documented.

## Deprecation
Retire when MBL portfolio companies have ERP-integrated inventory optimization modules (NetSuite, SAP) with dynamic safety stock and EOQ calculation built into the replenishment engine.
