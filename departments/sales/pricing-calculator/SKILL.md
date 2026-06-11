---
name: pricing-calculator
description: "Calculate pricing and model deal economics for a sales opportunity. Use when the user says 'price this deal', 'pricing model', 'what should we charge', 'calculate pricing', 'deal economics', 'pricing options', 'build a pricing table', or 'how do we price this'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--model <per-seat|usage|flat|tiered>] [--entity <name>] [--deal-size <small|mid|enterprise>]"
---

# Pricing Calculator

Model deal pricing and economics for a sales opportunity. Pricing is a strategic decision — this skill structures the inputs, applies the right model, and outputs a defensible number with margin visibility.

## When to Use
- Building a pricing proposal for a prospect
- Evaluating deal economics before discount approval
- Designing a new pricing tier or package
- Creating deal desk inputs for executive approval
- Annual pricing review (is our pricing still right for the market?)

## Pricing Models

### Per-Seat / Per-User
```
Price = (# of seats) × (price per seat) × (contract term in months)
Volume discount: ≥ 50 seats = 5%, ≥ 100 seats = 10%, ≥ 250 seats = 15%
```

### Usage-Based
```
Price = Base platform fee + (usage units × rate per unit)
Usage tiers: 0-1000 units @ $X; 1001-10000 @ $Y; 10001+ @ $Z (negotiate)
```

### Flat / Project-Based
```
Price = (Estimated hours × loaded hourly rate) + materials + margin
Target gross margin: 40-60% for services; 70%+ for software
```

### Tiered / Package
```
Core / Standard / Premium — each tier adds capabilities
Price anchored to value delivered at each tier, not just features
```

## Deal Economics Framework

### Gross Margin Check
```
GM% = (Revenue - COGS) / Revenue × 100
Floor: Don't go below 40% GM without executive approval
Alarm: Any deal requiring custom work that drops GM below 30% → deal desk
```

### Customer Lifetime Value vs. CAC
```
LTV = (Annual recurring revenue) × (average customer lifespan in years)
CAC = Total sales + marketing spend / # of new customers acquired
Healthy ratio: LTV ≥ 3× CAC
```

## Discount Framework

| Discount Level | Authority | Condition |
|----------------|-----------|-----------|
| 0-10% | Rep | Standard negotiation flexibility |
| 11-20% | Sales Manager | Multi-year commitment or strategic account |
| 21-30% | VP Sales + Finance | Volume deal or competitive displacement |
| > 30% | CEO + Finance | Executive sign-off required; document rationale |

## Output Format

```markdown
# Pricing Model — <Entity/Product> for <Prospect>
**Date:** <date> | **Deal Owner:** <rep name> | **Pricing Model:** <model type>

## Pricing Configuration

| Input | Value |
|-------|-------|
| # of users / units | <N> |
| Contract term | <N> months |
| Billing frequency | Monthly / Annual |
| Base price | $<N>/unit |
| Volume tier discount | X% |

## Deal Economics

| Metric | Value |
|--------|-------|
| Gross revenue (list) | $<N> |
| Discount applied | X% — $<N> |
| **Net revenue (contract value)** | **$<N>** |
| Estimated COGS | $<N> |
| **Gross margin** | **X%** |
| ACV (annual contract value) | $<N> |
| TCV (total contract value) | $<N> |

## Pricing Options to Present

| Option | Price | Term | ACV | Notes |
|--------|-------|------|-----|-------|
| Core | $<N>/mo | 12 mo | $<N> | Minimum viable |
| **Standard ★** | $<N>/mo | 12 mo | $<N> | **Recommended** |
| Premium | $<N>/mo | 12 mo | $<N> | Full suite |
| Annual prepay discount | $<N> (save X%) | 12 mo | $<N> | Cash flow positive |

## Discount Authority Check
**Requested discount:** X% → Authority: <Rep / Manager / VP / Executive>
**Approval required:** Yes / No

## Deal Desk Flag
[ ] Deal is under standard pricing — no escalation needed
[ ] Deal requires manager approval — discount > 10%
[ ] Deal requires deal desk review — see `deal-desk-reviewer`
```

## Output Contract
- Gross margin always calculated and displayed — no deal leaves without a margin check
- Discount authority always flagged — reps cannot approve their own discounts beyond tier
- Three pricing options always shown when applicable
- HITL required: Dr. Lewis reviews any deal with > 20% discount; Finance reviews custom pricing

## System Dependencies
- **Reads from:** Pricing model inputs (provided), deal context from `sales-pipeline-tracker`
- **Writes to:** Nothing (model for HITL review)
- **HITL Required:** Dr. Lewis approves discounts > 20%; Finance must review any deal with custom COGS or services components

## Test Cases
1. **Golden path:** 75-seat SaaS deal, 24-month term → list price, 10% volume discount, GM at 68%, three tier options, annual prepay option, no deal desk required
2. **Edge case:** Deal with large services component that drops GM below 40% → flags margin risk, requires deal desk review, recommends scoping services separately
3. **Adversarial:** Request to approve a 40% discount without executive sign-off → refuses, outputs proper approval chain, escalates to deal desk

## Audit Log
Pricing models retained by deal and version. Discounts approved by authority level recorded for Finance reconciliation.

## Deprecation
Retire when CPQ (Configure, Price, Quote) platform handles dynamic pricing with built-in approval workflows and margin guardrails.
