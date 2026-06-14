---
name: supply-chain-cost-optimizer
description: "Identify and capture supply chain and procurement cost savings. Use when the user says 'reduce supply chain costs', 'procurement savings', 'cost reduction', 'find savings in procurement', 'supply chain cost optimization', 'how can we spend less on supplies', 'vendor cost reduction', 'cost savings initiative', 'supply chain EBITDA improvement', or 'supplier cost reduction'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-half: "[--entity <MBL|Allevio|HIVE|all>] [--target <$amount|%>] [--timeline <90days|6months|annual>]"
---

# Supply Chain Cost Optimizer

Identify and capture supply chain and procurement cost savings across MBL's portfolio. Procurement cost reduction is one of the highest-leverage EBITDA improvement levers available to a PE firm — every dollar saved flows directly to the bottom line. For MBL, a 10% reduction in portfolio procurement spend generates $X of EBITDA improvement at no revenue risk. The goal is to find savings that don't sacrifice quality, supply security, or compliance.

## When to Use
- Matt Mathison wants to improve portfolio EBITDA through cost reduction
- Portfolio company acquisition — assessing procurement savings opportunity
- Annual procurement savings target needs to be identified and planned
- A specific category looks like it's overpaying vs. market
- Contract renewal approaching — prep for negotiation

## Cost Reduction Levers

```
Lever 1: Supplier consolidation (highest impact for fragmented spend):
  Mechanism: Consolidate 5-10 suppliers per category into 2-3 preferred suppliers
  Savings: 10-20% via volume leverage
  Best for: Medical supplies (Allevio), field services (HIVE), technology (MBL)
  Risk: Dependency on fewer suppliers — manage with backup supplier program

Lever 2: Competitive bidding (best for categories without market discipline):
  Mechanism: Run RFQ/RFP; let market set the price
  Savings: 8-15% vs. incumbent pricing without negotiation
  Best for: Any category not bid in the last 3 years
  Risk: Lowest; incumbent usually matches or improves

Lever 3: Contract negotiation (highest confidence on known contracts):
  Mechanism: Negotiate price, terms, escalation, volume discounts
  Savings: 5-12% on existing contracts
  Best for: Large contracts approaching renewal
  Risk: Lowest; no disruption to supply

Lever 4: Demand management (eliminate waste):
  Mechanism: Reduce consumption; eliminate low-value spend; standardize specs
  Savings: 5-15% of category spend
  Best for: Slow-moving inventory, tail spend, over-specified items
  Risk: Lowest if focused on waste, not quality-critical items

Lever 5: Payment terms improvement (working capital benefit):
  Mechanism: Extend payment terms from Net 30 to Net 45-60
  Benefit: Improved cash flow (not a cost reduction per se)
  Best for: Large suppliers who value the relationship
  Risk: May require giving something in return

Lever 6: Portfolio-level aggregation (PE-specific leverage):
  Mechanism: Negotiate on behalf of Allevio + HIVE + MBL combined as a portfolio buyer
  Savings: 10-20% additional via combined volume
  Best for: Common categories across portfolio (technology, insurance, office supplies)
  Risk: Requires coordination across entities
```

## Output Format

```markdown
# Supply Chain Cost Optimization Plan — <Entity / Portfolio>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Portfolio>
**Total spend analyzed:** $X | **Target savings:** $X / X%
**Timeline:** <90 days / 6 months / Annual>

---

## Spend Analysis (baseline)

| Category | Annual spend | # Suppliers | Under contract? | Last bid | Savings opportunity |
|---------|------------|------------|----------------|---------|-------------------|
| Medical supplies (Allevio) | $X | 8 | 30% | >3 years | 🔴 High — consolidate + RFQ |
| Field services (HIVE) | $X | 6 | 60% | 2 years | 🟡 Medium — renegotiate |
| Technology/SaaS (MBL) | $X | 14 | 80% | 18 months | 🟢 Low — optimization |
| Professional services | $X | 9 | 20% | >5 years | 🔴 High — competitive bid |
| Office/admin (all) | $X | 15 | 0% | Never | 🔴 High — consolidate + catalog |
| **Total** | **$X** | | | | |

---

## Savings Pipeline

| # | Initiative | Category | Lever | Estimated savings | Confidence | Timeline | Owner |
|---|-----------|---------|-------|-----------------|-----------|---------|-------|
| 1 | Medical supply consolidation (8→3 suppliers) | Medical | Consolidation | $X (15%) | High | 90 days | Dr. Lewis |
| 2 | Professional services RFQ | Prof. services | Competitive bid | $X (12%) | High | 60 days | Dr. Lewis |
| 3 | AdvancedMD contract renegotiation | Clinical software | Negotiation | $X (8%) | Medium | 45 days | Dr. Lewis |
| 4 | Tail spend cleanup (C-tier) | Office/admin | Demand mgmt | $X (5%) | High | 30 days | Dr. Lewis |
| 5 | Portfolio tech aggregation (MBL+Allevio+HIVE) | Technology | Aggregation | $X (18%) | Medium | 120 days | Dr. Lewis |
| **TOTAL** | | | | **$X** | | | |

**Target savings: $X** | **Pipeline: $X (X% coverage)**

---

## Initiative Detail

### Initiative 1: Medical Supply Consolidation

**Current state:** 8 suppliers; $X total spend; average unit price $X
**Target state:** 3 preferred suppliers (Cardinal Health + 2 backup); negotiated pricing

**Methodology:**
1. Spend analysis: Identify top 80% of medical supply spend by category (done)
2. Supplier consolidation design: 3 preferred suppliers cover 95% of needs
3. RFQ: Issue to 6 candidates; award to 3
4. Contract negotiation: Volume commitment in exchange for -15% pricing
5. Implement preferred supplier program; deprecate 5 tail suppliers

**Financial model:**
- Current annual spend: $X
- Target price reduction: -15%
- Estimated annual savings: $X
- Implementation cost: ~20h Dr. Lewis time = $X (one-time)
- Net savings Year 1: $X
- Net savings Year 2-3: $X/year (ongoing)

**Risks:**
- Supply continuity: Managed via 3 preferred suppliers + backup protocol
- Quality: Cardinal Health is incumbent with known quality; RFQ screens new suppliers on quality standards

---

## Savings Tracking

| Initiative | Q1 savings | Q2 savings | Q3 savings | Q4 savings | Annual | Cumulative |
|-----------|-----------|-----------|-----------|-----------|--------|-----------|
| Medical consolidation | — | $X | $X | $X | $X | $X |
| Professional services RFQ | $X | $X | — | — | $X | $X |
| AdvancedMD renegotiation | — | $X | $X | $X | $X | $X |
| Tail spend cleanup | $X | $X | $X | $X | $X | $X |
| Tech aggregation | — | — | $X | $X | $X | $X |
| **Total** | **$X** | **$X** | **$X** | **$X** | **$X** | **$X** |

**Savings vs. target:** $X / $X (X%)

---

## ROI Summary (for Matt Mathison)

Total investment: <N> hours Dr. Lewis time + any transition costs = $X
Total savings (3-year): $X
3-year ROI: $X / $X = X×
EBITDA impact (Year 1): +$X
EBITDA impact (Year 2): +$X (annualized savings run-rate)
```

## Output Contract
- Savings always quantified with confidence level — high/medium/low based on data quality and execution risk
- EBITDA impact always calculated — Matt Mathison cares about EBITDA, not procurement metrics
- ROI always shown — the investment to capture the savings must be worth the effort
- Savings tracking always included — claimed savings are meaningless without a verified tracking mechanism
- HITL required: Dr. Lewis identifies and sizes opportunities; Matt Mathison reviews and approves the savings plan; supplier negotiations >$25K require Matt Mathison; portfolio aggregation initiatives require Matt Mathison sign-off on cross-entity coordination; savings declared only after verified against baseline pricing

## System Dependencies
- **Reads from:** QuickBooks (spend by vendor), Bill.com (invoice history), supplier contracts, market pricing data
- **Writes to:** Cost optimization plan (SharePoint/Finance/Procurement); savings tracker; EBITDA improvement plan
- **HITL Required:** Dr. Lewis develops; Matt Mathison approves plan and targets; >$25K negotiations Matt Mathison involved; savings verified vs. baseline before reporting

## Test Cases
1. **Golden path:** Portfolio-wide supply chain cost optimization → $X total portfolio spend analyzed; 5 initiatives identified; total savings pipeline: $X (14% of analyzed spend); Initiative 1 (medical consolidation): highest confidence, quickest; Matt Mathison reviews and approves plan; Q2: Initiative 1 + 4 completed = $X savings verified; Q3: remaining initiatives launched; Year-end: $X total savings achieved vs. $X target
2. **Edge case:** Supplier consolidation saves 15% but the new preferred supplier has a 4-week longer lead time → model the total cost including the additional inventory carrying cost for 4 weeks of demand at safety stock level; if the carrying cost >30% of the savings, the consolidation may not be as attractive as modeled; adjust the opportunity size; safety stock increase to cover the longer lead time needs to be part of the plan
3. **Adversarial:** A savings initiative requires switching a supplier that an entity CEO is personally attached to → the entity CEO's preference is a factor, not a veto; present the financial case clearly; if the savings are substantial ($X/year), the entity CEO should be able to articulate why their preferred supplier should retain the business despite an inferior cost/quality outcome; if they can't, the incumbent should participate in the competitive process; the PE value creation mandate requires rigor

## Audit Log
Savings pipeline retained. Savings verification documented (actual vs. projected). Matt Mathison approval of savings plan retained. EBITDA impact by initiative documented.

## Deprecation
Retire when MBL has a dedicated procurement team with a formal category management program that continuously identifies and captures savings without Dr. Lewis's direct involvement.
