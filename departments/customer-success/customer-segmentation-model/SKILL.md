---
name: customer-segmentation-model
description: "Segment customers for tiered CS coverage and resource allocation. Use when the user says 'customer segmentation', 'tiered customers', 'high-touch vs low-touch', 'segment the book of business', 'CS coverage model', 'tier customers', or 'how do we cover our customers'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--criteria <arr|health|strategic>] [--tiers <2|3|4>]"
---

# Customer Segmentation Model

Segment customers into tiers for differentiated CS coverage. Not every customer needs the same level of CSM attention — high-touch coverage for every account is unsustainable and high-tech coverage for strategic accounts is relationship suicide. Good segmentation directs resources where they create the most value.

## When to Use
- Building or rebuilding the CS coverage model
- CS team is stretched thin — need to triage where time goes
- Customer base has grown beyond a manageable 1:1 coverage model
- Planning CS headcount for next year
- Onboarding to a portfolio company to understand their CS model

## Segmentation Criteria

### Primary Criteria (Score Each)

| Criterion | Weight | High | Medium | Low |
|-----------|--------|------|--------|-----|
| ARR / ACV | 35% | > $100K | $25K–$100K | < $25K |
| Strategic value | 25% | Reference, expansion potential, portfolio visibility | Standard account | Low growth potential |
| Health risk | 20% | Red/Yellow with renewal < 90 days | Yellow stable | Green |
| Growth potential | 20% | Clear expansion path > 50% ACV | Some upside | Stable/flat |

### Tier Definitions (3-Tier Model)

| Tier | Label | Score | Coverage Model | CSM Ratio |
|------|-------|-------|---------------|----------|
| **Tier 1** | Strategic | 75–100 | High-touch: Weekly check-ins, dedicated CSM, quarterly exec review | 1 CSM : 10–15 accounts |
| **Tier 2** | Growth | 40–74 | Managed: Bi-weekly or monthly calls, shared CSM | 1 CSM : 25–40 accounts |
| **Tier 3** | Scale | < 40 | Digital/automated: Email campaigns, in-product, on-demand | 1 CSM : 80–150 accounts |

## Coverage Model by Tier

### Tier 1 (High-Touch)
- Named CSM ownership
- Weekly or bi-weekly check-in calls
- Quarterly Business Reviews (QBR)
- Success plan — formal, tracked, reviewed quarterly
- Executive relationship — CSM manager or Dr. Lewis meets exec annually
- Escalation path: CSM → CS Manager → Dr. Lewis

### Tier 2 (Managed)
- Named CSM ownership (may be shared)
- Monthly check-in calls
- Semi-annual business reviews (or QBR on request)
- Success plan — lighter weight, annual review
- Escalation path: CSM → CS Manager

### Tier 3 (Digital / Scale)
- No named CSM (community support)
- Automated onboarding and training sequences
- In-product guidance
- Office hours or group webinars (not individual calls)
- Escalation path: Support ticket → CSM for high-urgency only

## Output Format

```markdown
# Customer Segmentation Model — <Entity>
**Date:** <date> | **Model:** 3-tier | **Total accounts:** <N>

---

## Segmentation Summary

| Tier | Accounts | ARR | % of ARR | Coverage |
|------|---------|-----|---------|---------|
| Tier 1 (Strategic) | <N> | $<N> | X% | High-touch |
| Tier 2 (Growth) | <N> | $<N> | X% | Managed |
| Tier 3 (Scale) | <N> | $<N> | X% | Digital |

---

## Account-Level Tier Assignment

| Account | ACV | Strategic | Health | Growth | Score | Tier |
|---------|-----|----------|--------|--------|-------|------|
| <Account> | $<N> | High | 🟡 | High | 88 | Tier 1 |
| <Account> | $<N> | Low | 🟢 | Low | 35 | Tier 3 |

---

## CSM Coverage Recommendations

| CSM | Current Load | Tier 1 Accounts | Tier 2 Accounts | Tier 3 Accounts | Assessment |
|-----|------------|----------------|----------------|----------------|-----------|
| <CSM> | 32 accounts | 5 | 12 | 15 | Over-weighted on Tier 1 |
| <CSM> | 18 accounts | 2 | 8 | 8 | Under-loaded |

---

## Tier Change Flags

| Account | Current Tier | Recommended Tier | Reason |
|---------|------------|-----------------|--------|
| <Account> | Tier 2 | Tier 1 | ARR crossed $100K; renewal in 90 days |
| <Account> | Tier 1 | Tier 2 | ARR dropped below threshold; no expansion potential |

---

## Capacity Analysis

**Tier 1 coverage requirement:** <N> CSM FTEs
**Tier 2 coverage requirement:** <N> CSM FTEs
**Tier 3 coverage requirement:** <N> CSM FTEs (digital tools + light headcount)
**Current CSM headcount:** <N>
**Gap:** <N> CSMs needed to maintain coverage ratios
```

## Output Contract
- Segmentation always based on objective scoring — no tier assignment without data
- ARR concentration always shown — if Tier 1 is < 10 accounts but > 60% of ARR, that changes risk management
- Coverage gaps always quantified — CS headcount planning needs to match the segment model
- HITL required before tier changes affect CSM assignments or coverage commitments

## System Dependencies
- **Reads from:** CRM account data (ACV, health scores, renewal dates), CSM assignments (provided)
- **Writes to:** Nothing (segmentation model for HITL review and CS operations implementation)
- **HITL Required:** Dr. Lewis and CS Manager approve tier model before rollout; Finance reviews headcount implications; any Tier 1 account tier change requires CS Manager approval

## Test Cases
1. **Golden path:** 45-account CS book → 8 Tier 1 (accounts > $75K ACV), 22 Tier 2, 15 Tier 3, CSM capacity shows need for 1 additional CSM for Tier 1 coverage, 3 tier change recommendations
2. **Edge case:** All accounts are Tier 1 (all large ACV) → build a modified 2-tier model for high-value accounts, recommends differentiated coverage within Tier 1 based on health and growth potential
3. **Adversarial:** CSM wants their favorite account upgraded to Tier 1 without meeting the criteria → requires objective scoring, applies criteria consistently, documents the score for the account

## Audit Log
Segmentation models retained by entity and date. Tier changes tracked with rationale.

## Deprecation
Retire when CS platform provides automated customer scoring and segmentation with dynamic tier assignment based on real-time data.
