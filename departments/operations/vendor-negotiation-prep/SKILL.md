---
name: vendor-negotiation-prep
description: "Prepare a vendor negotiation brief with leverage, targets, and walk-away position. Use when the user says 'vendor negotiation', 'negotiate with vendor', 'prepare for vendor meeting', 'contract negotiation prep', 'negotiate pricing', 'vendor renewal negotiation', 'how to negotiate with X', or 'vendor negotiation strategy'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<vendor-name> [--entity <name>] [--contract-value <amount>] [--renewal-date <YYYY-MM-DD>]"
---

# Vendor Negotiation Prep

Prepare a structured negotiation brief before any vendor conversation. Going into a vendor negotiation without a brief is leaving money on the table.

## When to Use
- Before any contract renewal or new contract negotiation
- Before a vendor pricing review meeting
- When a vendor raises prices unexpectedly
- When considering switching vendors (leverage this to negotiate with incumbent)
- Annual vendor cost review (renegotiate proactively)

## Negotiation Brief Structure

### 1. Current Situation
- What does this vendor provide?
- What is the current contract value and terms?
- What is the renewal date?
- What has changed since the last negotiation?

### 2. Our Position (Strengths and Weaknesses)

**Strengths (our leverage):**
- Volume / spend size
- Long relationship / reference value
- Competitive alternatives exist
- Market pricing data showing we're overpaying
- Timing (vendor's quarter-end when they need to close)

**Weaknesses (their leverage):**
- Switching costs are high
- We're deeply integrated / dependent
- Limited alternatives exist
- Contract is coming up fast (rushed = worse deal)

### 3. Their Position (What They Want)
- Renew the contract (avoid churn)
- Upsell / expand scope
- Increase prices (inflation, cost recovery)
- Maintain reference account status

### 4. Negotiation Targets

| Term | Current | Target | Walk-Away |
|------|---------|--------|-----------|
| Annual price | $X | $X (or %) | $X (max) |
| Contract length | X years | X years | X years |
| Price escalation | X% | 0% or CPI-cap | < X% |
| Payment terms | Net X | Net Y | Net X |
| SLA/guarantee | X% uptime | X% | X% min |
| Exit clause | X months | X months | < X months |

**Walk-away position:** The point at which we are better off switching vendors or doing without. Define this before the negotiation — never let a vendor define it for you.

### 5. Alternatives
What alternatives do we have if negotiation fails?
- Named competing vendors with rough pricing
- Capability to bring in-house
- Do without (assess impact)

### 6. Concessions We Can Offer
What can we give in exchange for price concessions?
- Multi-year commitment (gives them certainty)
- Case study / reference (valuable to most vendors)
- Faster payment terms
- Expanded scope (if it benefits us too)

### 7. Opening Position
**Always open lower than your target.** Leave room to move — a vendor who gives too easily often didn't do their best.

## Negotiation Tactics Reference

| Situation | Tactic |
|----------|--------|
| Vendor inflexible on price | Shift the ask: "If we can't adjust price, what can you add?" |
| Vendor stalls | Create urgency: set a decision deadline ("We need this resolved by X") |
| Vendor says no | Flinch and go quiet — silence creates pressure to fill |
| Locked on price | Unbundle and negotiate components separately |
| Near close | Anchor a final concession: "If you can do X, we sign today" |

## Output Format

```markdown
# Vendor Negotiation Brief — <Vendor Name>
**Entity:** <entity> | **Prepared:** <date> | **Renewal Date:** <date>
**Current Contract Value:** $<N>/year | **Target Savings:** $<N> or X%

## Situation Summary
<2-3 sentences on current relationship, what's at stake, and why we're negotiating now>

## Our Leverage
1. <Strongest leverage point>
2. <Second leverage point>

## Our Vulnerabilities
1. <Key weakness — be honest>

## Negotiation Targets

| Term | Current | Opening Ask | Target | Walk-Away |
|------|---------|------------|--------|-----------|
| Annual price | $X | $Y | $Z | $W |
| Contract length | X yrs | X yrs | X yrs | X yrs |
| Escalator | X% | 0% | CPI cap | < X% |
| Exit clause | X mo | X mo | X mo | — |

**Walk-away position:** If they can't reach $<Z> with acceptable terms, we pursue <alternative vendor> beginning <date>.

## Alternatives (Know Before You Go)
1. <Alternative vendor + rough pricing>
2. <Internal option if applicable>

## Concessions Available (Give These to Get Concessions)
1. <Concession> in exchange for <what we want>

## Opening Position
Lead with: <specific opening ask and how to frame it>

## Red Lines (Do Not Cross)
1. <Non-negotiable position>

## Success Criteria
Deal is acceptable if: <specific criteria>
```

## Output Contract
- Walk-away position always defined before any negotiation
- Alternatives always listed — no negotiation without a BATNA
- Red lines explicitly stated — removes in-the-moment pressure
- HITL required before walk-away position is communicated to vendor

## System Dependencies
- **Reads from:** Current contract terms, market pricing data (provided)
- **Writes to:** Nothing (brief for HITL review before negotiation)
- **HITL Required:** Matt Mathison reviews any negotiation on contracts > $50K before the conversation happens

## Test Cases
1. **Golden path:** Annual SaaS renewal at $48K → brief with 20% reduction target, multi-year commitment as concession, and alternative vendor named
2. **Edge case:** Vendor with no real alternatives and high switching cost → honest brief that shows weak position, recommends prioritizing switching cost reduction before next renewal cycle
3. **Adversarial:** Request to misrepresent competitive pricing to pressure vendor → recommends using real competitive data instead; fabricated data can destroy credibility and relationship

## Audit Log
Negotiation briefs retained by vendor and date. Outcomes logged post-negotiation.

## Deprecation
Retire when procurement platform provides automated contract benchmarking and negotiation playbooks.
