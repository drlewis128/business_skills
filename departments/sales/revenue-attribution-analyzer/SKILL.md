---
name: revenue-attribution-analyzer
description: "Analyze and attribute revenue to sales and marketing sources. Use when the user says 'revenue attribution', 'where did this revenue come from', 'what drove the sales', 'attribution model', 'marketing vs sales attribution', 'source analysis', 'pipeline source', or 'which channels are working'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-QN>] [--model <first-touch|last-touch|multi-touch>]"
---

# Revenue Attribution Analyzer

Analyze and attribute closed revenue to its sources — channels, campaigns, reps, and motions. Without attribution, you're spending money without knowing what's working. This skill provides a structured view of where revenue comes from so MBL and portfolio companies can double down on what drives returns.

## When to Use
- Quarterly review of which sources are producing revenue
- Marketing / Sales budget decision (where to invest next quarter)
- New channel evaluation (is this partnership worth continuing?)
- Pre-board reporting (show LP investors what's driving revenue)
- When two teams disagree on who "gets credit" for a deal

## Attribution Models

### 1. First-Touch Attribution
Credit 100% to the first channel that touched the prospect.
**Best for:** Understanding what generates awareness and initial demand.
**Weakness:** Ignores everything that happened after first touch.

### 2. Last-Touch Attribution
Credit 100% to the final action before the deal closed.
**Best for:** Understanding what closes deals.
**Weakness:** Ignores everything that happened before the last touch.

### 3. Multi-Touch Attribution (Recommended)
Distribute credit across all touchpoints in the buyer journey.
Common models:
- **Linear:** Equal credit to all touches
- **U-shaped:** 40% first touch, 40% last touch, 20% split across middle
- **W-shaped:** 30% first touch, 30% mid-funnel (opportunity creation), 30% last touch, 10% other

### 4. Revenue Share by Source Type
Regardless of model, categorize all closed revenue by source type:
- Outbound SDR / AE prospecting
- Inbound / marketing (specify: SEO, paid, content, event)
- Partner / channel referral
- Customer referral
- Upsell / cross-sell (existing customer)

## Attribution Output: Source Analysis

```
Revenue by source:
- Source A: $Xk (X% of total)
- Source B: $Xk (X% of total)
...
CAC by source (where data exists):
- Source A: $X per new dollar ARR
- Source B: $X per new dollar ARR
Most efficient source: [Source] — lowest CAC, highest LTV
```

## Output Format

```markdown
# Revenue Attribution Analysis — <Entity>
**Period:** <period> | **Model:** <first-touch/last-touch/multi-touch> | **Date:** <date>

## Total Revenue Overview

| Metric | Value |
|--------|-------|
| Total closed revenue | $<N> |
| New logo revenue | $<N> |
| Expansion / upsell revenue | $<N> |
| # of deals closed | <N> |

## Revenue by Source

| Source | Revenue | % of Total | # of Deals | Avg Deal Size | CAC (if known) |
|--------|---------|-----------|-----------|--------------|---------------|
| Outbound (rep-sourced) | $<N> | X% | <N> | $<N> | $<N> |
| Inbound / Marketing | $<N> | X% | <N> | $<N> | $<N> |
| Customer referral | $<N> | X% | <N> | $<N> | Lowest |
| Partner / channel | $<N> | X% | <N> | $<N> | $<N> |
| Expansion (existing) | $<N> | X% | <N> | $<N> | $<N> |

## Most Efficient Sources (Revenue per $ Invested)

1. **[Source]** — $<N> revenue / $<N> spend = [X:1 ratio]
2. **[Source]** — [Ratio]

## Channel Trends (vs. Prior Period)

| Source | Prior Period | Current Period | Change |
|--------|-------------|---------------|--------|
| Outbound | X% | X% | <trend> |
| Inbound | X% | X% | <trend> |
| Referral | X% | X% | ⬆️ Growing |

## Attribution Insights and Actions

1. **Insight:** [Most efficient source / fastest growing / most expensive]
   **Action:** [Invest more / cut / test new approach]

2. **Insight:** [Referrals close faster and have lower CAC than outbound]
   **Action:** [Launch structured referral program — see `referral-ask-generator`]

## Disagreements / Multi-Credit Deals

| Deal | Sales Claim | Marketing Claim | Attribution Decision |
|------|------------|----------------|---------------------|
| <Account> | Outbound prospecting | Event lead | Multi-touch: 60% Sales / 40% Marketing |

## Recommended Budget Implication
**Increase investment:** [Source X] — lowest CAC, growing
**Reduce or test:** [Source Y] — highest CAC, declining close rate
```

## Output Contract
- Revenue always broken down by source type — no single attribution bucket
- CAC always calculated where spend data is available
- Prior period comparison always shown — trends matter more than snapshots
- Multi-credit deals always resolved with documented methodology
- HITL required before attribution data is used for budget allocation or headcount decisions

## System Dependencies
- **Reads from:** CRM deal records with source tags, marketing spend data (provided)
- **Writes to:** Nothing (analysis for HITL review)
- **HITL Required:** Dr. Lewis and Finance jointly review before using attribution data to cut or increase budgets; Matt Mathison reviews for board/LP reporting

## Test Cases
1. **Golden path:** Q2 attribution, 3 sources, multi-touch model → outbound 45%, referrals 30% (lowest CAC), inbound 25%, recommendation to invest more in referral program
2. **Edge case:** No source tagging in CRM → cannot produce accurate attribution, flags data gap, recommends immediate CRM hygiene sprint to tag deals with source, provides framework to tag retroactively from available notes
3. **Adversarial:** Sales team wants 100% credit for all revenue, including a deal that came from a marketing campaign → applies multi-touch model, documents methodology, rejects single-touch attribution for deals with clear multi-source journeys

## Audit Log
Attribution analyses retained by entity and period. Attribution methodology documented consistently for year-over-year comparison.

## Deprecation
Retire when CRM or marketing attribution platform (HubSpot, Marketo, Triple Whale) provides real-time multi-touch attribution with automated source tagging.
