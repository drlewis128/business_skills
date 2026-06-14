---
name: distribution-network-planner
description: "Design and optimize distribution networks for product delivery. Use when the user says 'distribution network', 'distribution plan', 'how to distribute product', 'fulfillment network', 'warehouse location strategy', 'distribution center', 'last mile delivery', 'fulfillment strategy', 'distribution optimization', or 'delivery network design'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--scope <design|optimize|audit>]"
---

# Distribution Network Planner

Design and optimize distribution networks — how products move from suppliers or warehouses to end users at the right cost, speed, and service level. Distribution network design is a strategic decision that determines cost structure, delivery speed, and customer experience for years. For MBL's portfolio, distribution planning applies to Allevio (clinical supplies to multiple care sites), HIVE (equipment and materials to Uinta Basin well sites), and Column6 (digital content delivery — different from physical logistics).

## When to Use
- Adding a new delivery location (new Allevio clinic site, new HIVE well)
- Evaluating whether to use a 3PL (third-party logistics) vs. direct delivery
- Distribution costs are growing faster than revenue — optimize
- Matt Mathison asks about logistics strategy for a portfolio company
- Portfolio company acquisition — assess distribution as part of operational due diligence

## Distribution Network Design Principles

```
Key design decisions:
  1. Centralized vs. decentralized storage:
     Centralized: One warehouse; lower inventory cost; higher delivery cost; longer delivery time
     Decentralized: Multiple warehouses/hubs; higher inventory cost; lower delivery cost; faster delivery
     Decision driver: Number of delivery locations × delivery frequency × urgency

  2. Make-to-stock vs. make/procure-to-order:
     Allevio: Stock supplies at each clinic site (just-in-case) vs. central warehouse + frequent delivery (leaner)
     HIVE: Stock common parts at site (just-in-case) vs. supply from central yard (more efficient)

  3. 3PL vs. own distribution:
     Use 3PL when: Volume doesn't justify owned assets; geographic diversity exceeds your reach
     Own when: Volume is high enough; speed/control is critical; unique requirements (cold chain)

  4. Last-mile strategy:
     Direct delivery by carrier: Standard; scalable; works for most MBL portfolio scenarios
     Own fleet: Justified only for very high frequency, same-day, or specialized delivery
     Pickup: Rarely used in B2B supply chain; useful for emergency parts (HIVE field pickup)
```

## Output Format

```markdown
# Distribution Network Plan — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / Column6>
**Current distribution cost:** $X/year | **Target:** $X/year
**Delivery locations:** <N>

---

## Current Distribution Map

| Delivery location | Address | Delivery frequency | Items delivered | Current cost/delivery | Service issues |
|-----------------|---------|------------------|----------------|---------------------|---------------|
| Allevio Clinic A | [Address] | Weekly | Clinical consumables | $X | Occasional late delivery |
| Allevio Clinic B | [Address] | Bi-weekly | Clinical consumables | $X | None |
| HIVE Well Site 1 | Uinta Basin, UT | Weekly | Materials + parts | $X | Distance = high cost |
| HIVE Well Site 2 | Uinta Basin, UT | As-needed | Emergency parts | $X | Very high cost ($X/delivery) |

**Total annual distribution cost:** $X
**Total deliveries per year:** <N>

---

## Network Design Alternatives

### Option A: Current State (Baseline)
Direct delivery from central storage to each location via parcel carrier.
- Cost: $X/year (baseline)
- Service level: X% on-time
- Flexibility: High (easy to add new locations)
- Weakness: High cost per delivery for remote HIVE sites; cold chain inconsistent

### Option B: Regional Distribution Hub
Add a regional hub near the cluster of delivery locations; consolidated delivery from hub.

For Allevio (multiple clinic sites in a metro area):
- Hub: Small leased storage space in Phoenix metro ($X/year)
- Delivery: 1× weekly consolidated run to all clinics from hub (vs. parcel per clinic)
- Reduction: Delivery cost from $X to $X/year (-X%)
- Investment: Hub lease + setup (~$X)
- Payback: <N> months

For HIVE (Uinta Basin sites):
- Regional yard: Use existing HIVE site as distribution point for other well sites
- Consolidated delivery: Weekly truck run covers multiple well sites in one trip
- Reduction: Emergency delivery frequency drops; cost per unit decreases

### Option C: 3PL Partnership
Outsource warehousing and distribution to a 3PL with existing regional infrastructure.
- 3PL candidates: [Regional 3PL with healthcare experience / HIVE-region logistics provider]
- Cost: $X/year (variable with volume; no fixed infrastructure investment)
- Service level: Defined in 3PL SLA
- Advantage: Fast to deploy; scales; 3PL handles compliance for clinical cold chain
- Risk: Less control; relationship management required; price escalation risk

---

## Network Optimization Recommendations

**Recommendation: Option B (Regional Hub) for Allevio; Option C (3PL) for HIVE**

**Allevio rationale:**
- 3 clinic sites within 15 miles of each other; Hub consolidation reduces 3 deliveries to 1/week
- Cold chain compliance can be maintained in a leased refrigerated hub
- Payback: <N> months
- Cold chain risk is better managed in-house than via 3PL for HIPAA-covered clinical supplies

**HIVE rationale:**
- Uinta Basin is remote; HIVE well sites are distributed over a large area
- A 3PL with regional oil and gas logistics experience is more efficient than Dr. Lewis managing carrier relationships for remote sites
- 3PL handles hazmat compliance, reducing OSHA liability for MBL

---

## Key Distribution KPIs

| KPI | Target | Current | Trend |
|-----|--------|---------|-------|
| On-time delivery rate | ≥95% | X% | ↑/↓/→ |
| Distribution cost as % of total supply cost | <8% | X% | |
| Cold chain compliance (Allevio) | 100% | X% | |
| Emergency delivery frequency (% of deliveries) | <5% | X% | |
| Average lead time (order to delivery) | <X days | X days | |
| Delivery cost per location | $X target | $X actual | |

---

## Implementation Roadmap

| Phase | Action | Timeline | Owner | Cost |
|-------|--------|---------|-------|------|
| 1 | Evaluate 3PL options for HIVE; issue RFP | 30 days | Dr. Lewis | $0 |
| 2 | Identify hub location for Allevio; secure lease | 45 days | Dr. Lewis | $X setup |
| 3 | Migrate Allevio deliveries to hub model | 60 days | Dr. Lewis | $X transition |
| 4 | HIVE 3PL contract signed; transition complete | 90 days | Dr. Lewis | $X/year |
| 5 | Monitor KPIs; adjust | 90 days ongoing | Dr. Lewis | — |
```

## Output Contract
- Cost vs. service level tradeoff always explicit — the cheapest distribution option is rarely optimal; the right option optimizes total cost + service level + compliance
- Cold chain always flagged separately for Allevio — temperature compliance is a regulatory requirement, not just a preference
- 3PL vs. own always evaluated — the default should not be "we always use parcel" or "we always use 3PL"; match the decision to the scale and requirements
- Implementation roadmap always included — a distribution plan without an implementation timeline stays theoretical
- HITL required: Dr. Lewis designs network and recommends option; Matt Mathison approves capital investment (hub lease) and strategic 3PL contracts; HIVE GP approves HIVE distribution changes; Allevio clinical compliance co-approves cold chain changes; 3PL contract signing by authorized signatory

## System Dependencies
- **Reads from:** Current delivery records (logistics coordinator), demand forecasting (by location), carrier invoices, entity operational data
- **Writes to:** Distribution network plan (SharePoint/Operations/Supply Chain); carrier contracts; 3PL contracts
- **HITL Required:** Dr. Lewis designs; Matt Mathison approves capital investment and strategic contracts; HIVE GP for HIVE operations; Allevio compliance for cold chain; authorized signatory for contracts

## Test Cases
1. **Golden path:** Design Allevio distribution network for 4 clinic sites → Current: 4 separate parcel deliveries/week = $X/year; Option B hub: $X/year hub lease + 1 weekly consolidated run = $X/year total (-30%); cold chain: refrigerated hub unit installed; payback: 8 months; Allevio clinical compliance approves hub plan; Matt Mathison approves lease commitment; implementation in 60 days; on-time delivery target maintained
2. **Edge case:** A new Allevio clinic site is far from the existing hub cluster — hub model no longer works as well → add the new site to the analysis; if the new site is isolated, consider a hybrid: hub for the cluster + direct parcel for the remote site; the hub model doesn't need to cover 100% of sites to deliver savings; calculate the optimal coverage threshold
3. **Adversarial:** A vendor proposes a distribution model that locks MBL into a 5-year exclusive 3PL contract with significant penalties → long-term exclusivity with high penalties is a distribution lock-in risk; require termination for convenience; cap penalties at 3 months of fees; negotiate step-down (longer the relationship, lower the penalty); 5-year lock-in without performance-based exit is unacceptable

## Audit Log
Network design alternatives retained. Cost analysis documented. Contract commitments retained. KPI tracking maintained quarterly.

## Deprecation
Retire when portfolio companies have dedicated supply chain and logistics teams managing distribution network design as an ongoing function.
