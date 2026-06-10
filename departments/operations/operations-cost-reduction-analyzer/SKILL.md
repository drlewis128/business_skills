---
name: operations-cost-reduction-analyzer
description: "Analyze operational costs and identify reduction opportunities. Use when the user says 'reduce costs', 'cost reduction', 'cut spending', 'where can we save money', 'operational efficiency', 'cost optimization', 'P&L cleanup', or 'find savings'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<entity-or-cost-data> [--target-savings <amount>] [--constraint <no-headcount|no-revenue-impact>]"
---

# Operations Cost Reduction Analyzer

Analyze operational costs systematically to identify reduction opportunities without destroying the capabilities that generate revenue.

## When to Use
- When EBITDA margin needs improvement
- Budget cycle (cost efficiency review)
- Post-acquisition integration (find duplicate costs)
- When a covenant or financial target is at risk
- When Matt asks "where can we cut costs?"

## Cost Reduction Framework

### Category 1 — Zero-Waste Cuts (Cut Immediately)
Spend with no business justification:
- Unused software licenses (see `software-license-tracker`)
- Auto-renewed contracts for unused services
- Duplicate vendors providing same service
- Ghost employees or contractors (`fraud-signal-scoring`)
- Overpriced subscriptions vs. market alternatives

### Category 2 — Right-Sizing Opportunities
Spend that's real but over-provisioned:
- Too many software seats for actual users
- Excess capacity in cloud/infrastructure
- Overbuilt processes (4-person team for 2-person workload)
- Office space vs. remote headcount reality

### Category 3 — Renegotiation Targets
Spend that's justified but negotiable:
- Contracts not renegotiated in 3+ years
- Vendors with high switching costs but incumbent pricing
- Insurance premiums above market (get competing quotes)
- Professional services at premium rates

### Category 4 — Strategic Investments to Cut
High-cost programs with uncertain ROI:
- Marketing programs without attribution
- Training programs without skill development evidence
- Projects that lost their business case

### Category 5 — Do Not Cut (Protect These)
- Revenue-generating activities
- Compliance / regulatory requirements
- Customer-facing service quality
- Systems that prevent larger losses (controls, security)
- THRIVE-aligned people and culture investments

## Output Format

```markdown
# Cost Reduction Analysis — <Entity>
**Analysis Period:** <period> | **Total OpEx Reviewed:** $X | **Date:** <date>

## Opportunity Summary
| Category | Savings Potential | Effort | Risk |
|---------|-----------------|--------|------|
| Zero-waste cuts | $X | Low | Minimal |
| Right-sizing | $X | Medium | Low |
| Renegotiation | $X | Medium | Low |
| Strategic cuts | $X | High | Medium |
| **Total identified** | **$X** | | |

## Category 1 — Cut Now

| Item | Current Spend | Savings | Action |
|------|--------------|---------|--------|
| Unused Zoom seats (12 extra) | $X/yr | $X/yr | Reduce to 8 seats at renewal |
| <Software tool> | $X/yr | $X/yr | Cancel — 3% utilization |

## Category 2 — Right-Size (Next Renewal)
[opportunities]

## Category 3 — Renegotiate
[opportunities with negotiation leverage assessment]

## Do Not Cut — Protected Spend
[explanation of what is excluded and why]

## Priority Action Plan
| Priority | Action | Savings | Owner | Deadline |
|---------|--------|---------|-------|---------|
| P1 | Cancel unused licenses | $X | Dr. Lewis | This week |

## Projected EBITDA Impact
Current EBITDA: $X | Projected EBITDA (post-cuts): $X | Improvement: +$X (+X bps margin)
```

## Output Contract
- "Do Not Cut" section always present — protects against shortsighted cuts
- Every savings opportunity includes effort and risk rating — not just dollar amount
- EBITDA margin impact always calculated
- HITL required before any cost reduction that affects headcount or vendor relationships

## System Dependencies
- **Reads from:** P&L data, software license inventory, vendor contract register (provided)
- **Writes to:** Nothing (outputs analysis for Finance and Matt decision)
- **HITL Required:** Matt Mathison approves all cost reductions > $10K annually or affecting people/vendors

## Test Cases
1. **Golden path:** 40-line OpEx reviewed → $X in zero-waste cuts identified, $X in renegotiation targets, EBITDA impact calculated
2. **Edge case:** Constraint "no headcount cuts" → excludes all people-cost reduction options, flags it reduces available savings by X%
3. **Adversarial:** Request to cut customer service headcount to reduce costs below quality threshold → flags as Category 5 protected spend, does not include in recommendations

## Audit Log
Cost reduction analyses retained with before/after OpEx snapshot. Implemented savings tracked vs. identified.

## Deprecation
Retire when ERP provides automated cost efficiency recommendations based on utilization and benchmark data.
