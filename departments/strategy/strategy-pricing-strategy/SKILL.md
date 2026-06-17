---
name: strategy-pricing-strategy
description: "Develop or evaluate a pricing strategy — pricing models, rate setting, and revenue optimization. Use when the user says 'pricing strategy', 'set our prices', 'pricing model', 'how should we price', 'pricing analysis', 'rate card', 'fee schedule', 'pricing review', 'underpriced', 'overpriced', 'price increase', 'pricing optimization', 'value-based pricing', 'competitive pricing', 'pricing structure', 'raise our rates', or 'pricing for service'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--service <product or service name>] [--action <build|review|increase|competitive-analysis>]"
---

# Pricing Strategy

Develop or evaluate pricing strategy for MBL portfolio companies — setting rates that reflect value delivered, sustain target margins, support the investment thesis, and position the company competitively. Pricing is one of the highest-leverage decisions a company makes: a 1% price increase on $5M revenue yields $50K directly to EBITDA with zero additional cost. At PE portfolio scale, most portfolio companies inherited pricing set by a founder who was afraid to lose customers; the correct response is systematic review, not caution. Pricing decisions must be grounded in value delivered (not cost + markup), market positioning, competitive dynamics, and contract structure — not what feels comfortable.

## When to Use
- A portfolio company has not reviewed pricing in 12+ months
- A CEO asks "are we priced right?"
- Adding a new service line that needs a rate card
- Evaluating whether to raise rates (timing, amount, customer communication)
- A competitor changes their pricing and the CEO asks how to respond
- Pre-exit — ensuring pricing reflects value and is sustainable for a buyer

## Pricing Framework

```
Pricing inputs — what drives the right price:

  1. VALUE DELIVERED:
     What is this service worth to the customer in dollar terms?
     Allevio primary care: Patient saves 4+ hours vs. fragmented care; access to same-day appointments
       Value proxy: What does the patient's employer pay per employee for managed care access? → benchmark
     HIVE O&G production: Price received is WTI-basis; non-discretionary (commodity)
     Column6 CTV: eCPM benchmarks vs. competing ad inventory for the same viewer; IAB standard

  2. COST FLOOR:
     Minimum price that sustains target EBITDA margin
     Formula: Price floor = (Variable cost per unit) / (1 - target margin%)
     If target EBITDA margin = 20% and variable cost per patient visit = $120:
       Price floor = $120 / (1 - 0.20) = $150 per visit
       Below $150/visit → below margin target → must address cost or increase price

  3. COMPETITIVE BENCHMARKS:
     What do comparable providers charge in the same market?
     Allevio: AZ primary care visit rates (Medicare rate card; commercial payer contracts; direct-pay market)
     Column6: Open RTB CPM rates by content category; IAB benchmark data
     Caution: matching competitors is a strategy for being average; price to value, not to average

  4. PRICING POWER:
     Can you raise prices without losing significant volume?
     Indicators of pricing power: High switching cost; differentiated service; waitlist (demand > supply); no readily available substitute
     Allevio: Same-day access, continuity of care, AZ relationships = moderate pricing power
     Low pricing power indicators: Commodity; many substitutes; customers easily switch; brand is weak

  5. PRICING STRUCTURE (how you charge, not just what you charge):
     Per-visit vs. subscription (PMPM) vs. retainer vs. episodic vs. value-based
     Healthcare direction: Payers and CMS are moving toward value-based contracts (PMPM, quality metrics)
       Allevio should evaluate direct employer contracts at PMPM rates — higher margin than fee-for-service
     Column6: CPM/CPC/CPA pricing; CPM is simplest; CPA (cost per acquisition) commands premium but requires measurement

  Pricing implementation checklist:
    [ ] Current price vs. cost floor — is current price above floor? If not, fix first
    [ ] Price vs. market benchmark — where do we sit in the range?
    [ ] Time since last price increase — if >12 months, a review is overdue
    [ ] Contractual lock-ins — which customers are locked at old rates? When do contracts renew?
    [ ] Increase approach — across-the-board vs. new customers only vs. tiered by volume
    [ ] Customer communication plan — 30-60 days notice; frame on value added, not cost
    [ ] Elasticity estimate — what volume loss is acceptable if prices increase X%?
```

## Output Format

```markdown
# Pricing Strategy — [Company Name] / [Service Line]
**Date:** [Date] | **Analyst:** Dr. Lewis | **Action:** [Build / Review / Increase / Competitive response]

---

## Pricing Summary

**Current pricing:** $[X] per [unit/visit/month/CPM]
**Cost floor (at [X]% target EBITDA):** $[X] per [unit]
**Market range (comparable providers):** $[Low]-$[High] per [unit]
**Current position in market range:** [Bottom / Middle / Top quartile]
**Last price increase:** [Date or "Unknown — over 12 months"]

**Recommendation:** [Increase to $[X] effective [Date] / Current pricing adequate / Move to PMPM structure / Redesign rate card]

---

## Value Analysis

**What is this service worth to the customer?**
[Evidence-based: what the patient/client/advertiser would pay for the next-best alternative; cost of NOT getting this service]

**Value-to-price gap:** [Is the price significantly below the value delivered? Pricing power opportunity.]
**Customer sensitivity estimate:** [High / Medium / Low] — [Evidence: contract renewal rates, customer feedback, wait list]

---

## Margin Analysis

| Metric | Current | Target | Gap |
|--------|---------|--------|-----|
| Revenue per unit | $[X] | $[X] | |
| Variable cost per unit | $[X] | $[X] | |
| Contribution per unit | $[X] | $[X] | |
| EBITDA margin | [X]% | [X]% | |
| Monthly EBITDA impact of $[Y] price increase | +$[X]K | | |

---

## Competitive Benchmarks

| Competitor / Benchmark | Price | Notes |
|----------------------|-------|-------|
| Market low | $[X] | [Discount or volume player] |
| Market median | $[X] | |
| Market high (premium) | $[X] | [Differentiated service] |
| Our current price | $[X] | [Position: bottom quartile] |

---

## Price Increase Plan (if recommending increase)

**Proposed increase:** From $[X] to $[X] ([X]% increase)
**Implementation:**
- New customers: Effective immediately [Date]
- Existing customers: 60-day notice; effective [Date] at contract renewal
- Contracts locked until [Date]: Address at renewal cycle

**Customer communication approach:**
[30-60 day advance notice; frame on expanded service, quality, or access; offer annual contract at current rates for committed customers]

**Volume risk:** If [X]% of customers exit at new pricing, impact = -$[X]K/year revenue. Net: +$[X]K EBITDA after assumed attrition.

---

## Matt Mathison Brief

[Company] pricing analysis: Current price $[X]/[unit]; cost floor $[X]; market median $[X]; last increase [date or unknown]. [Company] is in the [bottom / middle / top] quartile of the market. Recommendation: [Increase to $[X] — $[X]K annual EBITDA impact / Maintain / Move to value-based structure]. Attrition risk: [Low / Medium — acceptable given net EBITDA improvement]. Implementation: [Effective date; existing customer notice period]. Action from Matt Mathison: [None / Approve price increase / Discuss value-based contracting with [specific payer]].
```

## Output Contract
- Pricing decisions are grounded in value and margin, not in avoiding customer complaints — the most common pricing mistake at PE portfolio companies is pricing that hasn't kept up with the value delivered; Dr. Lewis quantifies the value-to-price gap and the cost floor before making a pricing recommendation; "customers will complain" is not evidence of overpricing; customers' willingness to pay revealed through renewal rates, waitlists, and churn rates is evidence; Dr. Lewis presents the evidence, not the fear
- The margin floor is a hard constraint, not a guideline — if current pricing is below the cost floor for the target EBITDA margin, the pricing must increase (or costs must decrease); this is not a judgment call; the margin floor calculation is presented explicitly so the CEO understands why the price is where it is and what happens at current pricing if volumes shift; below-floor pricing means the business is underwriting customer relationships at a loss, which compounds at scale
- Healthcare pricing requires payer contract awareness — Allevio's pricing is partially determined by payer contracts (Medicare rates, commercial insurance fee schedules); Dr. Lewis distinguishes between contracted rates (non-discretionary), direct-pay rates (discretionary), and employer PMPM contracts (opportunity); the price increase strategy for contracted patients requires navigating payer renegotiation cycles; for direct-pay patients, price changes are at-will; Dr. Lewis maps which revenue streams are locked and which are discretionary before making pricing recommendations
- HITL required: Dr. Lewis produces the pricing analysis and recommendation; CEO reviews for customer relationship context and competitive intelligence; price increases affecting existing contracts require CEO approval and the customer communication plan; price increases that could affect >10% of revenue require Matt Mathison review; new pricing structures (PMPM, value-based) require Matt Mathison review as they affect the investment thesis

## System Dependencies
- **Reads from:** Payer contracts and fee schedules (Allevio), competitive market data (strategy-competitive-intelligence), financial statements (QuickBooks — current margin by service line), customer contract terms and renewal dates, IAB CPM benchmark data (Column6)
- **Writes to:** Pricing analysis (SharePoint/Strategy/<Company>/Pricing/); rate card updates; customer communication plan; annual plan update (if pricing change materially affects revenue forecast); Matt Mathison pricing brief
- **HITL Required:** Dr. Lewis analyzes; CEO approves price changes and communication plan; payer contract rate changes require payer negotiation process (not unilateral); Matt Mathison reviews new pricing structures or changes affecting >10% of revenue

## Test Cases
1. **Golden path:** Allevio direct-pay pricing review → Current direct-pay rate: $85/visit; cost per visit (variable): $65; cost floor at 20% margin: $65/(1-0.20) = $81.25; current rate $85 is barely above floor at 4.5% margin on direct-pay; market range for Phoenix primary care direct-pay: $95-$150 (Allevio is below median); last rate increase: 2022 (4 years ago); recommendation: increase direct-pay to $105/visit ($20 increase, 23.5%); margin at $105: ($105-$65)/$105 = 38% — above target; communication: 60-day notice letter; frame on new same-day access system and expanded NP availability; annual EBITDA impact at current direct-pay volume (30 visits/month): $7.2K/year; volume risk: if 15% of direct-pay exits, net impact still +$6.1K; CEO reviews and approves; implementation date: 60 days from notice; Matt Mathison notified (not material enough to require decision)
2. **Edge case:** Column6 CPM pricing is below open RTB market median and advertisers are buying at quota → Below-market pricing in an RTB environment means Column6 is effectively subsidizing advertiser ROI; if impression inventory is clearing at quota (advertisers are buying all available inventory at current CPM), that is evidence of underpricing — demand exceeds supply at current price; pricing power exists; recommendation: increase CPM floor by 15-20% and test whether advertiser demand holds; if match rate stays above 85% at the new floor, the price increase captured with no volume loss; if match rate drops below 80%, consider a tiered CPM structure (premium content at higher CPM + standard at current CPM); Column6 CEO implements and monitors for 30 days; report results to Dr. Lewis and Matt Mathison
3. **Adversarial:** CEO resists any price increase because "we'll lose customers to competitors" → This is the correct question to test, not to accept; Dr. Lewis provides: (1) current customer churn rate — if <5% annually, there is no evidence customers are price-sensitive; (2) waitlist — if the practice has a waitlist, demand exceeds supply at current price; (3) competitor pricing — if competitors are at $105 and Allevio is at $85, customers choosing Allevio at $85 are choosing on quality, not price; increasing to $100 tests whether they stay; (4) net EBITDA math — if 10% of customers exit at the higher price, what is the net EBITDA impact? At 10% attrition + $20 increase: revenue per remaining patient increases while fixed costs stay flat → likely EBITDA positive even at 10% attrition; Dr. Lewis presents the math; the CEO can decide with facts

## Audit Log
All pricing analyses retained. Rate change decisions retained with date, amount, rationale, and who approved. Customer communication templates retained. Post-increase volume and EBITDA impact retained (actual vs. projected). Payer contract rate negotiations retained.

## Deprecation
Retire when portfolio companies have a VP of Revenue or commercial lead who owns pricing strategy — with Dr. Lewis reviewing the EBITDA margin impact and Matt Mathison approving material pricing structure changes.
