---
name: sales-territory-planner
description: "Design or review a sales territory plan for rep coverage and account assignment. Use when the user says 'territory plan', 'sales territory', 'account assignment', 'territory design', 'who owns which accounts', 'territory coverage', 'territory split', or 'territory planning'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--reps <N>] [--territory-type <geographic|vertical|account-size|named>]"
---

# Sales Territory Planner

Design or review a sales territory plan that gives each rep a fair, equitable opportunity to hit quota while maximizing coverage of the addressable market. Bad territory design creates the illusion that you have a sales problem when you actually have a planning problem.

## When to Use
- Annual territory planning (realign territories with strategy)
- When adding or removing sales reps (rebalancing)
- When certain reps consistently miss and others consistently crush (inequitable distribution)
- Post-acquisition (how do you integrate new accounts?)
- When entering a new market or vertical

## Territory Design Models

### Geographic (Best for Field Sales / Local Service)
Territory = geographic region (state, metro, zip code range).
- Simple to understand and manage
- Works well when travel time matters
- Risk: geographies have unequal density of ICP accounts

### Vertical / Industry (Best for Product-Market Specialists)
Territory = industry vertical (e.g., healthcare, oil & gas, fintech).
- Reps develop deep domain expertise
- Better ICP-matching conversation quality
- Risk: unequal market sizes by vertical

### Account Size (Best for Enterprise + SMB Split)
Territory = company size range (e.g., enterprise: $100M+, mid-market: $10-100M, SMB: <$10M).
- Natural motion/cycle difference by segment
- Different value prop and process by segment
- Risk: top-heavy or bottom-heavy distribution

### Named Accounts (Best for High-Touch Enterprise)
Territory = named list of specific accounts.
- Maximum focus on highest-value opportunities
- Requires regular account hygiene
- Risk: reps hold unworked accounts just in case

## Territory Design Criteria

For any territory model, evaluate:
1. **Revenue potential** — How many ICP accounts are in this territory, and what's the total addressable revenue?
2. **Equity** — Are territories roughly equal in potential, or is one rep the "golden territory" winner?
3. **Coverage** — Are all ICP accounts assigned to a rep?
4. **Travel efficiency** (if geographic) — Can reps cover territory without excessive travel?
5. **Account load** — How many accounts is each rep responsible for? (Typical: 50-150 named accounts per rep, depending on deal size)

## Output Format

```markdown
# Territory Plan — <Entity>
**Date:** <date> | **# of Reps:** <N> | **Model:** <geographic | vertical | size | named>

## Territory Assignments

| Rep | Territory / Segment | # of Accounts | Estimated ARR Potential | Notes |
|-----|---------------------|--------------|----------------------|-------|
| <Name> | <territory> | <N> | $<N> | |
| <Name> | <territory> | <N> | $<N> | |

## Coverage Analysis

**Total ICP accounts in market:** <N>
**Total accounts assigned:** <N>
**Coverage:** X% of addressable market

**Unassigned accounts:** <N> — Recommendation: <house account / assign to top rep / deprioritize>

## Equity Analysis

| Rep | ARR Potential | % of Total | Quota | Coverage Ratio |
|-----|-------------|-----------|-------|--------------|
| <Name> | $<N> | X% | $<N> | <N>x |
| **Avg** | $<N> | | $<N> | |

**Variance:** Highest potential is <N>x lowest. <Flag if > 2x — inequitable>

## Recommendations
1. <Specific rebalancing action if territories are inequitable>
2. <Coverage gaps — what's unworked>
3. <Account load adjustments if any rep is over/under-loaded>
```

## Output Contract
- Equity analysis always performed — unequal territories produce misleading performance data
- Coverage rate always shown — dark territories are lost revenue
- Account load always assessed — overloaded reps underwork every account
- HITL required: Matt Mathison and Dr. Lewis approve territory plan before rep notification

## System Dependencies
- **Reads from:** Account list, ICP definition from `icp-builder`, rep roster, quota plan (provided)
- **Writes to:** Nothing (territory plan for HITL approval)
- **HITL Required:** Dr. Lewis approves all territory plans; Finance confirms quota alignment

## Test Cases
1. **Golden path:** 3 reps, vertical model → healthcare / oil & gas / cross-sector assignment, equity analysis showing balanced ARR potential
2. **Edge case:** One vertical significantly larger than others → recommends splitting the large vertical or adjusting quota to compensate for territory inequality
3. **Adversarial:** Request to give a specific rep the best territory for non-performance reasons → flags equity issue, documents trade-off, escalates to Dr. Lewis

## Audit Log
Territory plans retained by entity and year. Account assignments tracked in CRM.

## Deprecation
Retire when CRM provides territory management module with automated account assignment, coverage analysis, and equity scoring.
