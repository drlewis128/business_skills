---
name: fpa-pricing-analytics-model
description: "Analyze pricing strategies and model the financial impact of pricing changes. Use when the user says 'pricing analysis', 'price increase', 'price decrease', 'pricing model', 'pricing strategy', 'raise rates', 'PMPM analysis', 'CPM analysis', 'pricing power', 'pricing study', 'what should we charge', 'rate analysis', 'fee analysis', 'pricing optimization', 'revenue per unit', 'price sensitivity', 'price elasticity', 'pricing impact', 'pricing waterfall', 'pricing review', or 'contract rate analysis'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--product <pmpm|campaign|boe>] [--change <+X%|-X%>] [--action <model|analyze|recommend>]"
---

# Pricing Analytics Model

Analyze pricing strategies and model the financial impact of rate changes for MBL portfolio companies — quantifying how price changes flow through to revenue, margin, and EBITDA. Pricing is among the highest-leverage levers in any business: a 5% price increase that can be held falls almost entirely to EBITDA (no variable cost), while a 5% revenue decline from lost volume reduces revenue without proportionally reducing fixed costs. Dr. Lewis models both the revenue uplift from a price increase and the volume risk that price increases carry, and presents the net EBITDA impact across scenarios.

## When to Use
- Annual contract renewal — should rates be increased? By how much?
- A portfolio company CEO asks "what would a 10% price increase do to EBITDA?"
- Competitive pricing analysis — are we priced relative to market?
- A new service or product launch — what price maximizes EBITDA?
- Pricing compression concern — a customer is pushing back on current rates
- Sensitivity analysis requires pricing as one of the variables

## Pricing Analytics Framework

```
PRICING FRAMEWORK BY ENTITY:

  ALLEVIO — PMPM Rate Analysis:
    Current rate: $[X]/PMPM (contract-specific; blended rate across all employer groups)
    Rate levers:
      1. New contract rates: What rate do new employer groups pay? (negotiated at onboarding)
      2. Annual escalators: Do existing contracts have rate escalation clauses? CPI-linked? Fixed %?
      3. Tier pricing: Does Allevio offer different rates by group size, coverage scope, or risk?
    Market rate benchmarks: $75-110 PMPM for comparable direct primary care models (MGMA)
    Allevio's rate positioning: Currently at $[X] vs. $82 sector median
    
    Price increase scenarios:
      Scenario A: 5% rate increase on all contracts at renewal
        Revenue impact: Members × (PMPM × 1.05) vs. current = +$[X]/member/month
        Volume risk: If [X] employer groups cancel due to rate increase = −[X] members
        Net EBITDA impact: Revenue uplift − volume loss × EBITDA margin
        
      Scenario B: Raise rates for new contracts only (grandfathering existing)
        Revenue impact: Only new member revenue at higher rate; existing unchanged
        No volume risk from existing contracts
        Takes 12-18 months to fully blend up the portfolio rate
        
      Scenario C: Tiered pricing (large groups at lower PMPM; small groups at higher PMPM)
        Rationale: Smaller groups have higher per-member cost to service; should pay higher PMPM
        Risk: Large groups may resist if they realize smaller groups pay more
        
    Price floor: Below what rate does Allevio lose money per member?
      Clinical cost per member per month (CPMM) = direct cost ÷ member count
      Break-even PMPM = CPMM + (fixed G&A ÷ member count)
      Target margin: PMPM − CPMM = at least 30% gross margin
      
  HIVE PARTNERS — WTI-Linked Pricing:
    HIVE is a price-taker (WTI market price) — no pricing power in the traditional sense
    However, Dr. Lewis analyzes the realized price relative to WTI (the differential):
      WTI posted price − Uinta Basin differential − HIVE-specific quality/transportation adjustments
      If HIVE's realized price is significantly below WTI, renegotiating the gathering agreement may help
    Hedging as a form of pricing optimization:
      Forward hedging fixes a portion of production at a known price
      Locks in margin in a volatile market; limits upside if prices rise
      Decision: Hedge only if at-risk cash position warrants certainty vs. optionality
    WTI pricing analysis: Dr. Lewis models EBITDA at WTI from $45 to $80 (see sensitivity analysis)
    
  COLUMN6 / SIPROCAL — CPM and Campaign Rate Analysis:
    CPM = Cost per thousand impressions (what advertisers pay Column6)
    CPC = Cost per click (alternative pricing for direct response campaigns)
    Revenue per campaign = Total impressions delivered × CPM ÷ 1,000
    Average campaign value = Total revenue ÷ Number of campaigns
    
    CPM pricing levers:
      Inventory type: CTV commands $18-45 CPM; digital/display commands $4-12 CPM
      Mix strategy: More CTV inventory in the sales mix lifts the blended CPM
      Direct vs. programmatic: Direct-sold campaigns (to brands directly) carry 20-30% premium vs. programmatic
      Targeting: Premium targeting data (first-party data, behavioral) supports higher CPMs
      
    Campaign value levers:
      Upsell: Offer larger packages (more impressions, longer flight, multi-screen)
      Cross-sell: Add digital/social to CTV campaigns
      Contract length: Multi-quarter commitments warrant a slight discount; but improve revenue visibility
      
    Price increase risk: Unlike Allevio, Column6 operates in a competitive programmatic market
      Programmatic CPMs are set by market clearing prices (demand exceeds supply → CPM rises)
      Direct-sold campaigns are negotiable → pricing power exists in the direct sales channel
      
PRICING IMPACT MODEL:
  Revenue waterfall: Current rate → New rate → Volume adjustment → Net revenue change → EBITDA impact
  Price elasticity estimate:
    For Allevio PMPM: Low elasticity (healthcare is not price-shopped the same way consumer goods are)
      Assumption: 5% PMPM increase → <5% member churn (net positive revenue effect)
      Assumption: >10% PMPM increase in one renewal → meaningful churn risk (>15% member loss)
    For Column6 CPM: High elasticity in programmatic (buyers can substitute to other inventory)
      Assumption: 10% CPM increase in direct-sold → <10% volume impact
      Assumption: 10% CPM increase in programmatic → significant volume impact (buyers redirect budget)
    Note: Elasticity assumptions are estimates — track actual volume response after any price change
```

## Output Format

```markdown
# Pricing Analysis — [Entity] | [Product/Rate Type]
**Current rate:** $[X] / [unit] | **Proposed change:** [+/−X]% or specific new rate
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Pricing Impact Model

| Scenario | New Rate | Volume Change | Net Revenue | EBITDA Impact | Recommendation |
|----------|---------|--------------|------------|--------------|---------------|
| Do nothing | $[X] | 0% | $[X]K | $0 | — |
| +5% rate | $[X] | −[X]% churn | $[X]K | +$[X]K | ✅ Recommended |
| +10% rate | $[X] | −[X]% churn | $[X]K | +$[X]K | ⚠️ |
| +15% rate | $[X] | −[X]% churn | $[X]K | +$[X]K | ❌ |

---

## Pricing vs. Market

| Rate Type | Current | Market Median | Top Quartile | vs. Median |
|-----------|---------|--------------|-------------|-----------|
| [PMPM / CPM / realized price] | $[X] | $[X] | $[X] | [X]% below/above |

---

## Break-Even Rate Analysis

| Metric | Amount |
|--------|--------|
| Direct cost per [member/impression/BOE] | $[X] |
| Allocated fixed cost per unit | $[X] |
| Break-even rate (0% margin) | $[X] |
| Current rate | $[X] |
| Margin at current rate | [X]% |
| Target margin | [X]% |
| Rate required for target margin | $[X] |

---

## Recommendation

**Proposed rate:** $[X] ([+/−X]% change) — [Phase-in approach or effective date]
**Expected EBITDA uplift:** $[X]K annually (net of estimated volume impact)
**Key risk:** [Volume risk — if more than [N] groups/campaigns/BOE lost, break-even is negative]
**Monitoring:** Track volume response in first 60 days after rate change
```

## Output Contract
- Always model the volume response — a price increase analysis that only shows the revenue uplift without modeling the volume loss risk is not a pricing analysis; Dr. Lewis always models both: what do we gain from the higher rate? and what do we lose if customers leave?; the net EBITDA impact is the number that matters, not the gross revenue impact of the price increase; a 10% price increase that causes 12% member churn has a negative net EBITDA impact even though the nominal rate went up
- Price to market, not to budget — the pricing decision should be grounded in what the market will bear (benchmarked against comparables) and what the cost structure requires (minimum margin), not in what the company needs to hit a budget target; pricing to budget creates a circular problem (raise prices to hit budget → lose volume → miss budget → need to raise prices again); Dr. Lewis benchmarks the rate against market before recommending any rate change
- Phased increases for large jumps — if the analysis supports a price increase larger than 5-8%, Dr. Lewis recommends a phased approach: 5% this year, 5% next year; a single large jump carries more volume risk than two smaller ones over two years; the phased approach also gives the sales team time to manage the relationship and justify the increase with improved service
- HITL required: Dr. Lewis models the pricing scenarios; CEO approves pricing changes (pricing is a CEO decision — Dr. Lewis provides the analysis, not the decision); Matt Mathison informed of any material rate change (>5% increase across the portfolio, or any change that could affect exit EBITDA assumptions); changes to pricing model assumptions in the rolling forecast after any rate change are made by Dr. Lewis; customer-specific rate negotiations handled by the CEO and sales team

## System Dependencies
- **Reads from:** QuickBooks (current revenue by customer/contract — for blended rate calculation); customer contracts (for current rates and escalator clauses); Allevio member roster (members by employer group for concentration analysis); Column6 campaign data (CPM by campaign, by channel); fpa-unit-economics-modeler (current margin per unit at current pricing); fpa-benchmarking-analyzer (market rate benchmarks); industry pricing surveys (MGMA for healthcare; IAB for CTV)
- **Writes to:** Pricing analysis (SharePoint/Finance/<Company>/Pricing/[Date]_PricingAnalysis.xlsx); rolling forecast update (if pricing change is implemented); annual budget (pricing assumptions); board package (pricing context — when a rate change materially affects the EBITDA trajectory); customer contract amendments (when rate change is agreed with customer — legal document, not a financial deliverable but triggered by the pricing decision)
- **HITL Required:** Dr. Lewis models; CEO decides on rate changes; CEO communicates rate changes to customers; Matt Mathison informed of any pricing change that materially affects the EBITDA run rate or exit valuation; Dr. Lewis does not communicate rate changes to customers (that's the CEO's relationship); Dr. Lewis does not implement pricing changes without CEO authorization

## Test Cases
1. **Golden path:** Allevio annual contract renewal — 4 employer groups renewing in Q1, total 420 members, current PMPM $85, market median $87, top quartile $92 → Dr. Lewis models: at $87 PMPM (market median): 420 members × ($87 − $85) × 12 = $10,080 revenue uplift; volume risk: $87 is at market median — minimal churn risk (estimated <5% = 21 members lost); net: ($87 × 399 members) − ($85 × 420 members) = $34,713 − $35,700 = wait — let me correct: at $87 with 399 members = $34,713 × 12 = $416K/year; at $85 with 420 members = $35,700 × 12 = $428K/year; at $87 with 420 members (no churn) = $36,540 × 12 = $438K/year; net impact: +$10K/year if no churn, −$12K/year if 21 members lost; Dr. Lewis recommendation: "Increase to $87 for these 4 renewals. At market median, churn risk is minimal. Net EBITDA impact is +$8-10K annually (after assuming 5% low churn). I recommend communicating the increase at least 60 days before renewal with a service quality narrative."
2. **Edge case:** Column6 CEO wants to increase direct-sold CTV CPM from $28 to $38 in one move — a 35% jump → Dr. Lewis models: current revenue 3 direct campaigns/month × 1.5M impressions × $28 CPM = $126K/month; at $38 CPM with 0% volume loss = $171K/month; estimated volume risk at 35% jump: 30-40% campaign loss (buyers have alternatives); at 40% volume loss: 1.8 campaigns/month × 1.5M × $38 = $102K/month — below current; Dr. Lewis recommendation: "A 35% CPM jump in a single step carries too much volume risk. Estimated net revenue impact could be negative if we lose 30%+ of direct campaigns. I recommend: Phase 1 now — raise to $31 (10.7% increase, well within the 10% elasticity range, estimated <10% volume impact); Phase 2 in 6 months — raise to $35 if Phase 1 holds. Phase 3 if market supports: $38+. This gets us to $38 in 12-18 months with minimal revenue disruption." CEO agrees to the phased approach
3. **Adversarial:** The Allevio CEO proposes a 20% PMPM increase across all contracts in the next renewal cycle because "we need to hit the EBITDA budget" → Dr. Lewis declines the analysis framing: "A 20% PMPM increase from $85 to $102 is well above top-quartile pricing ($92) and would put us at the highest rate in the direct primary care market. The volume risk at that level is significant — I'd estimate 25-35% member churn, which at current scale is 250-350 members. That churn would reduce revenue by $2.5-3.5M annually — far more than the PMPM uplift. The right way to hit the EBITDA budget is not through aggressive pricing that kills volume; it's through controlled member growth and cost management. I can model a 5% increase this cycle combined with a cost reduction initiative that gets us to the budget number without the volume risk." Dr. Lewis redirects to a solution that achieves the goal without destroying the business

## Audit Log
All pricing analyses retained by entity and date. Rate changes and effective dates documented. Actual volume response tracked for 90 days after any rate change (actual vs. expected churn). Customer-by-customer rate history retained. Benchmark sources retained (MGMA, IAB, competitor intelligence).

## Deprecation
Retire when each portfolio company has a VP of Sales or Head of Revenue Operations who owns pricing decisions — with Dr. Lewis modeling the EBITDA impact of any material rate change and Matt Mathison informed of changes affecting the exit valuation thesis.
