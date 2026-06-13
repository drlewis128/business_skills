---
name: pricing-model-advisor
description: "Advise on pricing models and packaging for products. Use when the user says 'how should we price this', 'pricing model', 'pricing strategy', 'what should we charge', 'subscription vs usage-based', 'freemium model', 'pricing tiers', 'packaging the product', 'monetization strategy', or 'pricing decision'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--model <subscription|usage|one-time|freemium>] [--mode <design|review|test>]"
---

# Pricing Model Advisor

Advise on pricing models and packaging for MBL and portfolio products. Pricing is a product decision, not a finance decision — it defines who you're for, how you grow, and what behaviors you incentivize. The wrong pricing model can make a great product fail (complexity, misaligned incentives, wrong segment). The right model can accelerate adoption and retention without changing a line of code.

## When to Use
- New product or feature is ready to monetize — what model and price point?
- Current pricing is causing churn or blocking adoption — diagnose and redesign
- Evaluating a portfolio company's pricing model — is it aligned with value delivered?
- Competitor changed pricing — evaluate response
- Expanding to a new customer segment — does the current model fit?

## Pricing Model Comparison

| Model | How it works | Best for | Risk |
|-------|-------------|---------|------|
| **Per-seat subscription** | Fixed price per user/month | B2B SaaS; predictable revenue | Resisted at large orgs (seat counting) |
| **Usage-based** | Pay for what you use (API calls, messages, transactions) | Variable-consumption products; API products | Revenue unpredictability; budget anxiety |
| **Flat monthly/annual** | One price for all users | Simple products; small teams | Undercharges large orgs |
| **Tiered packaging** | Multiple tiers (Starter/Pro/Enterprise) | Broad market; feature-based upsell | Tier confusion; cannibalization |
| **Value-based** | Price tied to value delivered (% savings, transactions processed) | High-value B2B outcomes | Difficult to measure and sell |
| **Freemium** | Free base + paid premium | Consumer; B2B with viral loop | CAC of converting free users |

## Pricing Psychology Principles

```
Anchoring: Show the highest tier first — it makes lower tiers feel reasonable
Decoy effect: A poorly-priced middle tier makes the high tier look attractive
Price-to-value alignment: Price should correlate with value delivered, not cost to build
Annual discounting: 10-20% for annual prepay drives better retention and cash flow
Simplicity: 3 tiers max for B2B; more = analysis paralysis
Round numbers: $99/mo feels very different from $100/mo in B2C; less so in B2B
```

## Value-Based Pricing Framework

```
Step 1 — Identify the economic value delivered
  "This product saves the user X hours/month at $Y/hour = $Z/month of value"
  Or: "This product drives X additional revenue at Y% margin = $Z/month of value"

Step 2 — Price as a fraction of value (typically 10-25%)
  Rationale: customer keeps 75-90% of the value; you capture 10-25%
  Example: $2,000/month value → $200-500/month price point is defensible

Step 3 — Validate with willingness-to-pay research
  Direct question (low accuracy but directional): "What would you pay?"
  Van Westendorp: 4 price questions (too cheap / acceptable / getting expensive / too expensive)
  Conjoint analysis: most accurate; rank trade-offs between features and price

Step 4 — Test in market
  Price experiments require clear methodology; don't run during launch (confounds)
  A/B test price if traffic supports statistical significance
```

## Output Format

```markdown
# Pricing Model Recommendation — <Product>
**Date:** <date> | **Advisor:** Dr. John Lewis
**Product:** <name> | **Entity:** <entity>
**Target segment:** <specific customer type>

---

## Recommendation

**Model:** <pricing model>
**Price point:** $<amount> per <unit>
**Packaging:** <tiers or single tier>
**Rationale:** <2-3 sentences connecting to value delivered>

---

## Value Analysis

**Value delivered to customer:**
- <Value driver 1>: $<amount>/month in <savings/revenue>
- <Value driver 2>: $<amount>/month
- **Total estimated value:** $<amount>/month

**Target price as % of value:** <N>%
**Implied price:** $<amount>/month
**Recommended price:** $<amount>/month (<higher or lower than implied — why>)

---

## Packaging Options

### Option A — Single tier (Recommended if segment is homogeneous)

**Price:** $<amount>/month or $<amount>/year (save <N>%)
**Includes:** <What's in the package>
**Limit/fair use:** <If applicable>

### Option B — Tiered (Recommended if segments differ significantly)

| Tier | Price/mo | Who it's for | Key features |
|------|---------|-------------|-------------|
| Starter | $<amount> | <segment> | <features> |
| Pro | $<amount> | <segment> | Starter + <additions> |
| Enterprise | Custom | Large accounts | Pro + <additions + SLA> |

---

## Competitive Benchmark

| Competitor | Their price | What they include | Our position |
|-----------|-----------|-----------------|-------------|
| [Comp A] | $<price> | [Feature set] | Premium / Parity / Below |
| [Comp B] | $<price> | | |

---

## Pricing Risks

| Risk | Likelihood | Mitigation |
|------|-----------|-----------|
| Price too high — adoption barrier | Medium | Offer trial; annual vs. monthly |
| Price too low — revenue opportunity missed | Low | Monitor expansion revenue potential |
| Pricing cannibalization (tiers) | Medium if tiered | Make tier differentiation obvious |

---

## Pricing Test Plan (if uncertain)

**What we'll test:** <specific pricing variable>
**Methodology:** A/B test at <N>% of traffic / Van Westendorp survey with <N> respondents
**Duration:** <N> weeks
**Decision rule:** If conversion at $X is within 10% of $Y, choose $X (higher)
```

## Output Contract
- Value analysis always completed before price recommendation — pricing without value analysis is arbitrary
- Competitive benchmark always included — pricing in a vacuum creates market positioning problems
- Annual pricing always considered — annual prepay improves retention and cash flow
- HITL required: Dr. Lewis approves pricing recommendations; Matt Mathison approves price points for portfolio products; any price change >20% requires explicit approval; price tests require Dr. Lewis oversight

## System Dependencies
- **Reads from:** Customer value interviews, competitive pricing data, current revenue and churn metrics
- **Writes to:** Pricing recommendation document (SharePoint/Product); pricing page copy
- **HITL Required:** Dr. Lewis approves; Matt Mathison approves portfolio product pricing; price changes require explicit sign-off

## Test Cases
1. **Golden path:** Price Meeting Intelligence for MBL → Value: saves Matt Mathison 4 hrs/week at $500/hr loaded cost = $2,000/month value; price at 15% = $300/month; comparable tools: $50-200/month (lower value, less integrated); recommend $250/month annual ($3,000/year); simple single tier (one entity, small team); Dr. Lewis approves
2. **Edge case:** Customer says the price is too high → two possibilities: (1) value is not landing — re-examine positioning; (2) price is genuinely too high — check willingness-to-pay research; don't lower price until you've checked whether the value case is being made effectively
3. **Adversarial:** Team wants to price based on cost-plus (cost to build + margin) → cost-plus ignores value delivered and market positioning; if the cost is $10/month and you charge $12/month, you've left $288/month on the table if customers would pay $300; price based on value delivered, not cost to serve

## Audit Log
Pricing decisions retained with rationale. Price changes documented. Test results retained.

## Deprecation
Retire when entity has a dedicated revenue operations or product finance function with ongoing pricing strategy management.
