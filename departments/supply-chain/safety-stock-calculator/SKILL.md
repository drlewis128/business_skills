---
name: safety-stock-calculator
description: "Calculate safety stock levels for inventory items. Use when the user says 'safety stock', 'how much buffer inventory', 'safety stock calculation', 'minimum stock levels', 'buffer stock', 'calculate safety stock', 'what is the right safety stock', 'inventory buffer', 'how much extra to keep', or 'prevent stockouts'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--item <description>] [--service-level <95|99>] [--lead-time <days>]"
---

# Safety Stock Calculator

Calculate scientifically defensible safety stock levels for inventory items that balance service level targets against carrying cost. Too little safety stock = stockouts and operational disruption. Too much = capital tied up in inventory and increased obsolescence risk. For MBL's portfolio, patient-critical items at Allevio should target 99% service level; HIVE production-critical equipment should target 95-99%; and general operational items can target 90-95%.

## When to Use
- Setting initial safety stock levels for a new inventory management plan
- Recalibrating safety stock after demand variability changes
- After a stockout — did we have enough safety stock?
- After a demand forecast improvement — update safety stock to match
- Onboarding new inventory items into the management system

## Safety Stock Formula

```
Standard safety stock formula (accounts for demand and lead time variability):

  Safety Stock = Z × √(Lead_time × σ_demand² + Demand_avg² × σ_lead_time²)

Where:
  Z = service level Z-score:
    90% service level → Z = 1.28
    95% service level → Z = 1.65
    99% service level → Z = 2.33
    99.9% service level → Z = 3.09

  σ_demand = standard deviation of daily demand (from historical data)
  Lead_time = supplier lead time in days
  σ_lead_time = standard deviation of lead time (from historical data)
  Demand_avg = average daily demand

Simplified formula (when lead time is stable):
  Safety Stock = Z × σ_demand × √Lead_time

Simple rule of thumb (when no historical data):
  Safety Stock = Demand_avg × (Lead_time + review_period_days) × safety_factor
  safety_factor: Critical items = 1.5; Standard items = 1.0; Low-risk = 0.5

Reorder Point (combines safety stock with lead time demand):
  Reorder Point = (Demand_avg × Lead_time) + Safety Stock
```

## Output Format

```markdown
# Safety Stock Calculation — <Item / Category>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Entity:** <Allevio / HIVE / Column6>
**Item:** <SKU and description>
**Service level target:** <90% / 95% / 99% / 99.9%>

---

## Item Data

| Parameter | Value | Source |
|---------|-------|--------|
| SKU | <SKU-001> | Inventory system |
| Description | <Item name> | |
| Average daily demand | <N> units/day | 12-month average |
| Demand std deviation (σ_d) | <N> units/day | Historical demand data |
| Supplier lead time (avg) | <N> days | Supplier data |
| Lead time std deviation (σ_lt) | <N> days | Historical PO data |
| Unit cost | $X | Current PO price |
| Is this patient-critical? (Allevio) | Yes / No | Clinical assessment |
| Is this production-critical? (HIVE) | Yes / No | Operations assessment |

---

## Safety Stock Calculation

**Service level selected:** 99% (Z = 2.33) — Patient-critical item at Allevio

**Full formula:**
```
Safety Stock = Z × √(Lead_time × σ_demand² + Demand_avg² × σ_lead_time²)
             = 2.33 × √(14 days × (2.1)² + (8.5)² × (1.3)²)
             = 2.33 × √(14 × 4.41 + 72.25 × 1.69)
             = 2.33 × √(61.74 + 122.10)
             = 2.33 × √183.84
             = 2.33 × 13.56
             = 31.6 → Round up to 32 units
```

**Reorder Point:**
```
Reorder Point = (Demand_avg × Lead_time) + Safety Stock
              = (8.5 units/day × 14 days) + 32 units
              = 119 + 32
              = 151 units
```

**Reorder quantity (EOQ or standard lot):** <N> units (based on economic order quantity or supplier minimum)

---

## Results Summary

| Metric | Value | Notes |
|--------|-------|-------|
| Safety stock | 32 units | At 99% service level |
| Reorder point | 151 units | Order when stock falls to 151 |
| Days of supply (safety stock) | 3.8 days | At average demand |
| Carrying cost of safety stock | $X/year | Unit cost × holding rate (20%/year) |
| Stockout cost (if applicable) | $X/event | Estimated cost per stockout |
| **Recommendation** | **Accept the carrying cost** | Stockout cost >> carrying cost |

---

## Sensitivity Analysis

| Service level | Z-score | Safety stock | Carrying cost/year | Stockouts/year (expected) |
|------------|--------|-------------|-------------------|--------------------------|
| 90% | 1.28 | 18 units | $X | ~4.8 |
| 95% | 1.65 | 23 units | $X | ~2.4 |
| **99% (selected)** | **2.33** | **32 units** | **$X** | **~0.5** |
| 99.9% | 3.09 | 42 units | $X | ~0.05 |

**Decision rationale for 99% service level:**
- This is a patient-critical clinical supply at Allevio
- A stockout = patient care disruption
- The incremental cost of 99% vs. 95% service level = $X/year in carrying cost
- The expected cost of additional 2 stockouts/year at 95% = $X (emergency freight + disruption)
- 99% is clearly justified

---

## Batch Calculation (Multiple Items)

| SKU | Item | Avg demand/day | Std dev | Lead time (days) | Service level | Safety stock | Reorder point |
|-----|------|---------------|---------|-----------------|-------------|------------|--------------|
| SKU-001 | [Critical item] | 8.5 | 2.1 | 14 | 99% | 32 units | 151 units |
| SKU-002 | [Standard item] | 15.2 | 3.8 | 7 | 95% | 17 units | 124 units |
| SKU-003 | [Low-risk item] | 42.0 | 8.5 | 3 | 90% | 19 units | 145 units |

**Total safety stock carrying cost (all items):** $X/year
```

## Output Contract
- Service level always justified by item criticality — a 99% service level for office supplies is capital waste; a 90% service level for patient-critical clinical supplies is a risk; always match service level to criticality
- Full calculation always shown — not just the result; the calculation enables validation and recalibration as inputs change
- Sensitivity analysis always included — it makes the cost of each service level decision explicit; lets Dr. Lewis and Matt Mathison make an informed tradeoff
- Reorder point always calculated from safety stock — safety stock without a reorder point is incomplete
- HITL required: Dr. Lewis calculates; Allevio clinical lead confirms patient-critical classification; HIVE operations confirms production-critical classification; safety stock levels for patient-critical and production-critical items reviewed by entity operations before implementation

## System Dependencies
- **Reads from:** Historical demand data (inventory system or QuickBooks), historical PO lead time data, unit costs
- **Writes to:** Safety stock levels in inventory system; reorder point settings; inventory plan
- **HITL Required:** Dr. Lewis calculates; entity operations confirms criticality classification; safety stock implementation reviewed by Dr. Lewis; significant changes require entity lead sign-off

## Test Cases
1. **Golden path:** Calculate safety stock for Allevio clinical consumables (5 A-items) → Item 1: 99% service level (patient-critical); avg demand 8.5/day; σ=2.1; lead time 14 days; safety stock = 32 units; reorder point = 151 units; batch calculated for all 5 items; total carrying cost: $X/year; Allevio clinical lead confirms criticality; settings implemented in inventory system
2. **Edge case:** No historical demand data available for a new item → use simple rule of thumb (safety_factor approach); set initially at Demand_avg × Lead_time × 1.5 for critical items; collect 3 months of actual demand data; recalculate with statistical formula after data is available; overstock slightly for the first 3 months — the cost of over-stocking is less than the risk of a stockout for a new critical item
3. **Adversarial:** Finance team wants to reduce safety stock across the board to free up working capital → safety stock reduction is a COGS reduction that creates operational risk; model the tradeoff explicitly: reducing Allevio critical items from 99% to 95% service level saves $X in carrying cost but creates an expected 2 additional stockouts/year at $X cost each = net loss; for non-critical items, reducing from 95% to 90% may make financial sense; present the analysis; don't accept a blanket reduction order without the analysis

## Audit Log
Safety stock calculations retained per item. Service level justifications documented. Recalibration history tracked. Stockout incidents linked to safety stock adequacy review.

## Deprecation
Retire when inventory management system has automated safety stock calculation with statistical demand sensing and service level optimization built in.
