---
name: upsell-cross-sell-identifier
description: "Identify upsell and cross-sell opportunities within existing customer accounts. Use when the user says 'upsell', 'cross-sell', 'expansion opportunities', 'grow the account', 'what else can we sell them', 'account expansion', 'increase the contract', or 'find more revenue in the account'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--type <upsell|cross-sell|both>]"
---

# Upsell / Cross-Sell Identifier

Identify and prioritize expansion revenue opportunities within existing customer accounts. Expansion revenue from existing customers carries 70%+ lower CAC than new logo revenue — identifying and acting on expansion signals is one of the highest-ROI activities in the sales motion.

## When to Use
- Quarterly account review (every customer should be evaluated for expansion)
- Customer reaches a usage threshold (e.g., 80%+ of seat capacity)
- Customer has a known new initiative or project that aligns with adjacent products
- Before a renewal conversation (propose expansion at renewal)
- When new products or services are launched (identify install base fit)

## Upsell vs. Cross-Sell

| Type | Definition | Example |
|------|-----------|---------|
| **Upsell** | Upgrade current product to a higher tier / more capacity | Upgrade from 20 to 50 seats; move from Basic to Enterprise plan |
| **Cross-sell** | Add a different product or service they don't currently have | Customer buys Product A; offer Product B or a services add-on |

## Expansion Signal Framework

### High-Value Signals (Act Now)

| Signal | What It Means | Action |
|--------|--------------|--------|
| Usage > 80% of contracted limit | Approaching capacity — needs more | Proactive upsell conversation |
| Customer hired new team/role | New use case opened up | Introduce new product |
| Customer mentioned a problem we solve | They don't know we can help | Add-on or cross-sell conversation |
| Champion got promoted | More budget authority | Expansion conversation with new authority |
| Customer expansion (new office, acquisition) | More seats or new sites needed | Territory or volume expansion |

### Medium-Value Signals (Plan and Approach)

| Signal | What It Means | Action |
|--------|--------------|--------|
| Customer expressing ROI satisfaction | Ready to justify more investment | Cross-sell conversation |
| Support tickets about a problem our other product solves | Gap in their current solution | Education + cross-sell |
| Peer / competitor using additional product | Social proof opportunity | Case study + cross-sell |

### Low-Value Signals (Track and Wait)

| Signal | What It Means | Action |
|--------|--------------|--------|
| Contract not up for X months | Wait for renewal window | Add to account plan, approach 90 days before renewal |
| Customer is in budget freeze | Timing not right | Stay warm, revisit next quarter |

## Output Format

```markdown
# Expansion Opportunity Assessment — <Account>
**Entity:** <MBL entity> | **Date:** <date> | **Current ACV:** $<N>

## Expansion Snapshot

| Metric | Value |
|--------|-------|
| Current ACV | $<N> |
| Identified expansion potential | $<N> |
| Renewal date | <date> |
| Renewal risk | Low / Medium / High |

## Upsell Opportunities

| Opportunity | Signal | Current State | Proposed Change | Estimated Value | Timing |
|------------|--------|--------------|----------------|----------------|--------|
| [Seat expansion] | Usage at 84% | 20 seats | Upgrade to 50 seats | +$<N>/yr | Immediate |
| [Tier upgrade] | Champion satisfied, requesting feature X | Basic tier | Enterprise tier | +$<N>/yr | At renewal |

## Cross-Sell Opportunities

| Product / Service | Signal | Fit | Estimated Value | Who to Approach |
|-----------------|--------|-----|----------------|----------------|
| [Product B] | Customer mentioned [problem it solves] | Strong | $<N>/yr | Champion + IT lead |
| [Service add-on] | [Usage pattern or gap] | Medium | $<N>/yr | Economic buyer |

## Recommended Approach

**Priority 1:** [Upsell or cross-sell] — Approach within [timeframe]
**Framing:** Lead with: "[Value delivered so far]" → Bridge: "Given [signal], this is the natural next step."
**Contact:** Approach [champion or economic buyer] — [why this person]
**Best vehicle:** [QBR / separate meeting / renewal conversation / email]

## Expansion Action Plan

| Action | Owner | Due | Notes |
|--------|-------|-----|-------|
| [Prepare expansion business case] | CSM | <date> | Use `roi-calculator` |
| [Schedule expansion conversation] | Rep | <date> | With champion |
| [Include in renewal proposal] | Rep | <date> | Bundle for best pricing |
```

## Output Contract
- Opportunities always prioritized by signal strength and revenue potential — not presented as flat list
- Expansion always framed in customer value (their outcome), not product features
- Action plan always specific with owner and date
- HITL required before cross-sell involves a different product team or changes the account's commercial relationship

## System Dependencies
- **Reads from:** Account usage data, product catalog, CRM account record (provided or from CS platform)
- **Writes to:** Nothing (opportunity map for HITL review and rep action)
- **HITL Required:** Dr. Lewis reviews expansion proposals > $50K; account plan updated before expansion conversation

## Test Cases
1. **Golden path:** Healthcare customer at 82% seat usage, champion recently promoted → upsell to next seat tier ($18K/yr), cross-sell to compliance add-on ($24K/yr), expansion conversation framed as "given your team's growth" at QBR
2. **Edge case:** Customer is flagged as renewal risk → do NOT lead with expansion; surfaces renewal risk first, recommends stabilizing satisfaction before expansion conversation
3. **Adversarial:** Request to cross-sell a product the customer doesn't need to hit a sales target → refuses, identifies only legitimate fit opportunities, flags that inappropriate cross-selling drives churn, not revenue

## Audit Log
Expansion opportunities logged by account and date. Outcomes (accepted, deferred, declined) tracked for expansion motion analysis.

## Deprecation
Retire when CS platform (Gainsight) provides automated expansion signal detection with playbook triggers.
