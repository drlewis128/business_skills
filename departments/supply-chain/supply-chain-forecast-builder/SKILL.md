---
name: supply-chain-forecast-builder
description: "Build a supply chain forecast integrating demand, capacity, and supplier data. Use when the user says 'supply chain forecast', 'supply forecast', 'supply plan', 'integrated demand and supply', 'supply chain planning', 'S&OP', 'sales and operations planning', 'supply chain outlook', 'forward-looking supply plan', or 'capacity and demand alignment'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|all>] [--horizon <quarterly|annual>] [--mode <full|demand-only|supply-only>]"
---

# Supply Chain Forecast Builder

Build an integrated supply chain forecast that aligns demand projections with supply capacity, supplier commitments, and inventory plans. A supply chain forecast is not just a demand forecast — it's the reconciliation of "what we expect to need" with "what we can actually get and when." Without this reconciliation, organizations either over-stock (capital waste) or under-stock (operational risk). For MBL's portfolio, this is most relevant at Allevio (clinical supply vs. patient volume) and HIVE (equipment and materials vs. drilling schedule).

## When to Use
- Annual supply plan — how much to commit to suppliers for next year?
- Quarterly planning cycle — is supply aligned with expected demand?
- Major demand change anticipated — need to assess supply impact
- Supplier constraint identified — can supply meet demand?
- Matt Mathison asks "do we have enough supply to support our growth plan?"

## S&OP (Sales & Operations Planning) Light Framework

```
S&OP is the process of aligning the demand plan with the supply plan:

Month 1: Demand review
  Input: Sales forecast, usage trends, driver-based projections
  Output: Updated demand plan (units by SKU by period)

Month 2: Supply review
  Input: Demand plan, current inventory, supplier capacity, lead times
  Output: Gap analysis (where can't supply meet demand?)

Month 3: Executive alignment
  Input: Supply/demand gaps, financial impact, options
  Output: Decisions on gaps (expedite supply, defer demand, accept risk)

For MBL scale (Dr. Lewis as sole supply chain function):
  Quarterly S&OP light: Monthly is too frequent at current scale
  Output: 4-quarter rolling supply chain forecast aligned with Matt Mathison
```

## Output Format

```markdown
# Supply Chain Forecast — <Entity>
**Period:** <Q<N> <Year> - Q<N> <Year+1>> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE>
**Forecast horizon:** 4 quarters rolling
**Review date:** <date> | **Next update:** <date + 90 days>

---

## Demand Plan

### Demand Driver

**Primary driver:** <Patient visits (Allevio) / Active well-days (HIVE)>

| Quarter | Driver forecast | Confidence | Basis |
|---------|--------------|----------|-------|
| Q3 <Year> | <N> patient visits | High | Clinical schedule confirmed |
| Q4 <Year> | <N> patient visits | High | Seasonal (flu season) +15% |
| Q1 <Year+1> | <N> patient visits | Medium | Flat growth assumption |
| Q2 <Year+1> | <N> patient visits | Low | Early projection; revisit Q4 |

**Driver source:** Allevio clinical operations lead confirmed Q3-Q4; Q1-Q2 based on historical trend

---

### Demand by Category (Units)

| Category | Q3 Demand | Q4 Demand | Q1+1 Demand | Q2+1 Demand | Annual |
|---------|----------|----------|------------|------------|--------|
| Clinical consumables (A-items) | <N> | <N> | <N> | <N> | <N> |
| Medical supplies (B-items) | <N> | <N> | <N> | <N> | <N> |
| Equipment maintenance parts (HIVE) | <N> | <N> | <N> | <N> | <N> |
| **Total demand units** | **<N>** | **<N>** | **<N>** | **<N>** | **<N>** |

**Annual demand spend (at contracted prices):** $X

---

## Supply Plan

### Current Inventory Position

| Category | Current stock | Days of supply | Safety stock | Gap to safety stock |
|---------|-------------|-------------|------------|-------------------|
| Clinical consumables | <N> units | <N> days | <N> days | ✅ Adequate |
| Medical supplies | <N> units | <N> days | <N> days | ✅ Adequate |
| HIVE critical parts | <N> units | <N> days | <N> days | 🔴 Below safety stock |

---

### Supplier Supply Capacity

| Supplier | Category | Contracted capacity | Lead time | Q3 Commitment | Q4 Commitment | Risk |
|---------|---------|-------------------|----------|-------------|-------------|------|
| Cardinal Health | Clinical consumables | <N> units/quarter | 14 days | <N> | <N> | Low |
| [Supplier] | Medical supplies | <N> units/quarter | 7 days | <N> | <N> | Low |
| [Contractor] | HIVE parts | <N> units/quarter | 21 days | <N> | <N> | Medium — sole source |

**Supplier capacity constraints:**
- [Supplier] Q4 capacity: Supplier notified of potential reduction due to raw material constraint
  → Risk: Q4 supply may be limited to X% of demand
  → Mitigation: Pre-order Q4 needs by <date>; identify backup supplier

---

## Supply/Demand Gap Analysis

| Category | Q3 Demand | Q3 Supply | Gap | Action |
|---------|----------|----------|-----|--------|
| Clinical consumables | <N> | <N> | ✅ Balanced | None |
| Medical supplies | <N> | <N> | ✅ Balanced | None |
| HIVE critical parts | <N> | <N> | 🔴 -X units | Pre-order from supplier; qualify backup |

**Q4 Risk: [Supplier] constraint**
| Category | Q4 Demand | Q4 Supply (constrained) | Gap | Probability | Financial impact |
|---------|----------|----------------------|-----|------------|----------------|
| Medical supplies | <N> | <N> (if constraint realized) | -X units | 40% | $X/day operational impact |

**Recommended action:** Pre-order Q4 medical supplies by <date> at 110% of base case demand;
secure backup supplier for 20% of Q4 demand.

---

## Financial Impact

| Scenario | Annual spend | vs. Budget | Key assumption |
|---------|------------|----------|--------------|
| Bear (demand -10%) | $X | -$X | Patient visits -10% |
| Base (plan) | $X | $0 | As forecasted above |
| Bull (demand +15%) | $X | +$X | Flu season +25% + new clinic |

**Working capital required for safety stock:** $X at base demand

---

## 4-Quarter Rolling Forecast Tracker

| Metric | Q3 <Year> | Q4 <Year> | Q1 <Year+1> | Q2 <Year+1> |
|--------|----------|----------|------------|------------|
| Demand units | <N> | <N> | <N> | <N> |
| Supply commitments | <N> | <N> | <N> | <N> |
| Projected ending inventory | <N> | <N> | <N> | <N> |
| Days of supply at quarter end | <N> | <N> | <N> | <N> |
| Supply/demand balance | ✅ | 🔴 Risk | ✅ | ✅ |

---

## Matt Mathison Summary

**Supply chain is healthy for Q3.** Q4 has one supply risk: [Supplier] capacity may be constrained due to raw material tightness — probability 40%. We're pre-ordering Q4 needs early and qualifying a backup supplier. Financial exposure if constraint materializes: $X/day operational impact. Plan is in place; no action needed from Matt unless we need to approve additional pre-order spend (potential $X incremental working capital required — will confirm by <date>).
```

## Output Contract
- Demand driver always separated from SKU-level demand — the driver (patient visits, well-days) is more forecastable than raw SKU demand; use it
- Supply/demand gap always explicitly calculated — alignment can't be assumed; it must be calculated
- Matt Mathison summary always included — he doesn't read 10 pages; 3 sentences on status, risks, and actions needed from him
- 4-quarter rolling always maintained — a one-quarter forecast is not a supply plan; the rolling horizon enables supplier commitment planning
- HITL required: Dr. Lewis builds forecast; Allevio clinical lead confirms patient visit assumptions; HIVE GP confirms drilling schedule; Matt Mathison reviews quarterly; pre-orders or supply commitments >$25K require Matt Mathison approval; supply/demand gaps affecting operations escalated to entity leadership immediately

## System Dependencies
- **Reads from:** Demand history (inventory system), demand driver data (entity operations), supplier capacity data, current inventory levels
- **Writes to:** Supply chain forecast (SharePoint/Operations/Supply Chain); annual procurement plan; inventory targets
- **HITL Required:** Dr. Lewis builds; entity operations confirms demand drivers; Matt Mathison quarterly review; >$25K pre-orders → Matt Mathison; supply risk escalation → entity leadership

## Test Cases
1. **Golden path:** Q3-Q2 supply chain forecast for Allevio → Demand driver: patient visits confirmed by clinical schedule; Q3: 1,850 visits; Q4: 2,130 (flu season); Q1-Q2: projected 1,900-1,950; Supply: Cardinal Health capacity: 120% of demand — no constraint; Gap analysis: balanced Q3; Q4 supply adequate; 1 risk (alternate supplier for medical supplies); Matt Mathison summary: supply chain healthy; no action needed; next review Q4
2. **Edge case:** Demand driver (patient visits) changes significantly mid-quarter — new clinic opens → recalculate immediately; new clinic adds N visits/week from <date>; add to Q3 demand; assess whether safety stock covers the transition period; place incremental order to meet new demand; update forecast; notify Dr. Lewis and Matt Mathison
3. **Adversarial:** HIVE GP provides a drilling schedule that is "always changing" and claims forecasting is impossible → an always-changing schedule is information about forecast uncertainty, not a reason to abandon forecasting; use the most current schedule as the base case; run sensitivity analysis: if schedule changes by ±20%, what's the supply impact?; maintain a supply buffer (higher safety stock) to absorb schedule volatility; "we can't forecast" is never the answer — we can always forecast a range and plan for the uncertainty

## Audit Log
Forecast versions retained quarterly. Demand vs. actual variance tracked. Supply commitment decisions documented. Matt Mathison reviews documented. Gap analysis decisions retained.

## Deprecation
Retire when portfolio companies have dedicated supply chain planning functions with formal S&OP processes, demand planning teams, and technology platforms (SAP IBP, Oracle ASCP, or equivalent) for integrated supply chain planning.
