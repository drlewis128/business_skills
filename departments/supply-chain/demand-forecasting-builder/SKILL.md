---
name: demand-forecasting-builder
description: "Build demand forecasts to drive inventory and procurement planning. Use when the user says 'demand forecast', 'forecast demand', 'how much will we need', 'predict demand', 'sales forecast for inventory', 'procurement forecast', 'demand planning', 'order forecasting', 'anticipate demand', or 'plan for demand'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--horizon <monthly|quarterly|annual>] [--method <statistical|driver|bottom-up>]"
---

# Demand Forecasting Builder

Build demand forecasts that drive inventory, procurement, and capacity planning decisions. Demand forecasting is the upstream input to all supply chain planning — the inventory, reorder points, supplier purchase volumes, and logistics capacity all follow from an accurate forecast. Without a forecast, you're buying based on what you needed last month, not what you'll need next month. For MBL's portfolio, demand forecasting is most relevant at Allevio (clinical supply consumption driven by patient volume) and HIVE (field equipment and materials driven by drilling schedule).

## When to Use
- Setting safety stock levels for the next quarter
- Planning supplier purchase volumes for contract negotiations
- Anticipating a demand change (seasonal, operational, new program)
- Building a procurement budget
- After a stockout — what drove the demand miss?
- Before a product launch — how much should we stock?

## Forecasting Methods

```
Historical average:
  Best for: Stable, low-variability demand; commodities
  Method: Average of last N periods (12-month rolling)
  Accuracy: Good for stable items; poor for trending or seasonal items

Trend-adjusted:
  Best for: Items with consistent growth or decline
  Method: Linear regression on historical data; project the trend
  Use: Allevio if patient volume growing; HIVE if drilling program expanding

Seasonal decomposition:
  Best for: Items with recurring seasonal patterns
  Method: Separate trend + seasonal index; project both
  Use: Clinical supplies with flu/respiratory season spikes

Driver-based (recommended for MBL):
  Best for: Supply tied to a business driver
  Method: Forecast the driver first (patient visits, well count), then apply consumption rate
  Examples:
    Allevio: Patient visit forecast × supplies per visit = supply demand
    HIVE: Well count forecast × materials per well = material demand
  Advantage: More accurate when the driver is more forecastable than raw demand

Collaborative (best for high-value items):
  Best for: Major purchases where supplier insight helps
  Method: Share your internal forecast with key suppliers; get their capacity plans; reconcile
  Use: Annual contract quantities for Tier A suppliers
```

## Output Format

```markdown
# Demand Forecast — <Entity / Category>
**Period:** <Month / Quarter / Year> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / Column6>
**Category:** <Clinical supplies / Field equipment / Product licenses>
**Forecasting method:** Historical average / Trend-adjusted / Driver-based

---

## Driver Analysis (Driver-Based Forecast)

**Primary demand driver:** <Patient visits / Active wells / Active users>

| Period | Driver forecast | Basis | Confidence |
|--------|---------------|-------|-----------|
| Q1 <Year> | <N> patient visits | Allevio clinical schedule + historical seasonality | High |
| Q2 <Year> | <N> patient visits | Clinical schedule + 5% growth assumption | Medium |
| Q3 <Year> | <N> patient visits | Summer dip; seasonal adjustment | Medium |
| Q4 <Year> | <N> patient visits | Flu season spike; +15% assumption | Low |

**Consumption rate:** <X units of [item] per patient visit> (based on last 12 months average)

---

## Forecast by Item (Top A-items)

| SKU | Item | Q1 Forecast | Q2 Forecast | Q3 Forecast | Q4 Forecast | Annual | Confidence |
|-----|------|------------|------------|------------|------------|--------|-----------|
| [SKU-001] | [Item] | <N> | <N> | <N> | <N> | <N> | High |
| [SKU-002] | [Item] | <N> | <N> | <N> | <N> | <N> | Medium |
| [SKU-003] | [Item] | <N> | <N> | <N> | <N> | <N> | Low |

**Total forecasted spend (A-items):** $X

---

## Bear / Base / Bull Scenarios

| Scenario | Assumption | Q1 demand | Annual demand | Annual spend |
|---------|-----------|----------|--------------|-------------|
| Bear | Patient visits -10% (COVID variant; reduced scheduling) | <N> | <N> | $X |
| Base | Patient visits +5% (plan assumption) | <N> | <N> | $X |
| Bull | Patient visits +15% (new clinic opened; referral spike) | <N> | <N> | $X |

**Planning recommendation:** Order to base; maintain safety stock for bull; carry no buffer for bear

---

## Forecast Accuracy Tracking

| Period | Forecasted | Actual | % Error | Bias | Root cause |
|--------|-----------|--------|---------|------|-----------|
| Q1 <Year> | <N> | <N> | X% | Over/Under | [Cause if >15% error] |
| Q2 <Year> | <N> | <N> | X% | | |

**MAPE (Mean Absolute Percentage Error):** X% (target: <15% for A-items; <25% for B-items)
**Bias:** <Consistently over or under? Indicates systematic error in method>

**Forecast accuracy improvement actions:** <If MAPE >15%: describe method adjustment>

---

## Supplier Order Plan (from forecast)

| Supplier | Item | Q1 order qty | Q2 order qty | Order timing | Notes |
|---------|------|------------|------------|-------------|-------|
| Cardinal Health | [Item] | <N> | <N> | 6 weeks before quarter start | Lead time 4-6 weeks |
| [Supplier] | [Item] | <N> | <N> | 2 weeks before quarter start | Standard lead time |

**Annual contract quantity to commit:** <N> units (for volume pricing)
```

## Output Contract
- Driver-based method always recommended over simple historical average — driver visibility (patient visits, well schedule) is typically better than raw demand visibility
- Three scenarios always produced for budget planning — base for operations, bull for safety stock, bear for budget floor
- Forecast accuracy always tracked — a forecast that's never checked against actuals never improves
- Supplier order plan always derived from forecast — the forecast is useless if it doesn't drive purchasing decisions
- HITL required: Dr. Lewis builds forecast; Allevio clinical lead confirms patient volume assumptions; HIVE GP confirms drilling schedule assumptions; Matt Mathison reviews annual demand plan for budget impact; scenario planning reviewed before annual contract negotiations

## System Dependencies
- **Reads from:** Demand history (inventory system or QuickBooks), driver data (patient visits, well schedule, user counts), supplier lead times
- **Writes to:** Demand forecast (SharePoint/Operations/Supply Chain); annual procurement plan; safety stock inputs
- **HITL Required:** Dr. Lewis builds; Allevio clinical confirms patient volume driver; HIVE GP confirms drilling driver; Matt Mathison reviews budget impact; annual contract quantities require Matt Mathison approval before commitment

## Test Cases
1. **Golden path:** Allevio Q3 clinical supply demand forecast → Driver: patient visits; Q3 forecast: 1,850 visits (seasonal summer dip; flu season starts Q4); consumption rate: 3.2 gloves/visit, 0.8 syringes/visit; Q3 forecast: 5,920 gloves, 1,480 syringes; order plan: 6 weeks before Q3 start; safety stock: +15% for bear scenario; supplier: Cardinal Health PO placed; Allevio clinical lead confirmed patient visit assumptions; forecast accuracy from Q2: 11% MAPE (good)
2. **Edge case:** A new clinical program at Allevio creates a demand spike for a supply category not previously tracked → add the new category; establish a baseline consumption rate from the first 4 weeks of the program; use that as the initial rate; revisit after 3 months of data; when driving new demand from a new program, the first forecast is always going to be wrong — build extra safety stock until the consumption rate stabilizes
3. **Adversarial:** Forecast shows demand declining but operations team insists on maintaining current inventory levels "in case we need it" → this is inventory creep — the slow accumulation of excess stock driven by loss aversion; the forecast is the evidence; validate the decline hypothesis (has demand actually declined over 3+ periods?); if yes, reduce safety stock to match the new demand level; the cost of holding excess inventory is real (carrying cost + obsolescence risk); the forecast is the guide, not comfort-level guessing

## Audit Log
Demand forecasts versioned by period. Forecast vs. actual variance tracked. Supplier order plans linked to forecast. Annual contract quantities documented with forecast basis.

## Deprecation
Retire when Allevio or HIVE implements an ERP or inventory planning system with automated demand sensing, statistical forecasting, and driver-based planning modules.
