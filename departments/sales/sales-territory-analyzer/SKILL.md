---
name: sales-territory-analyzer
description: "Analyze and optimize sales territory coverage and assignments. Use when the user says 'territory analysis', 'territory design', 'is our territory balanced', 'territory assignments', 'coverage model', 'who owns which accounts', or 'territory carve'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--reps <N>] [--model <geo|industry|named-account|hybrid>]"
---

# Sales Territory Analyzer

Analyze and optimize sales territory design and rep coverage. A bad territory carve creates burnout, inequity, and missed revenue — the wrong rep covering the wrong accounts is a structural problem that no amount of coaching fixes.

## When to Use
- Hiring a new rep (where do they fit?)
- Rep attrition (who covers their territory?)
- Annual planning (are territories still balanced after market changes?)
- Revenue is lumpy across reps and you suspect territory imbalance
- New market or segment entry (how do we assign it?)

## Territory Models

### Geographic (Geo)
- Assign accounts by state, region, or metro area
- **Best for:** Field sales; products where in-person matters
- **Risk:** Some geos have more opportunity than others — balancing is harder

### Industry / Vertical
- Assign accounts by industry (healthcare, financial services, manufacturing)
- **Best for:** Products with industry-specific value props; reps with domain expertise
- **Risk:** Some verticals are more saturated or lucrative than others

### Named Account
- Pre-assigned specific companies (typically enterprise or strategic accounts)
- **Best for:** Enterprise sales; highly consultative deals; key account focus
- **Risk:** Account assignment becomes political; requires clear naming authority

### Hybrid
- Combination (e.g., named accounts for Tier 1, geo for everyone else)
- **Best for:** Most mid-market businesses
- **Risk:** Complexity — clear rules needed to resolve conflicts

## Territory Balance Metrics

| Metric | Weight | What It Measures |
|--------|--------|-----------------|
| Total addressable accounts | 25% | Is each rep's territory a fair starting pool? |
| Weighted opportunity value | 35% | Is revenue potential balanced across territories? |
| Geographic coverage burden | 20% | Are travel/time requirements equitable? |
| Account complexity | 20% | Are large/complex accounts distributed fairly? |

## Balance Score
```
Territory Balance Score = Standard deviation of (rep territory opportunity value) / Average territory value
< 15% deviation: Well balanced
15–30%: Acceptable — monitor
> 30%: Significant imbalance — recarve
```

## Output Format

```markdown
# Sales Territory Analysis — <Entity>
**Date:** <date> | **# of Reps:** <N> | **Model:** <geo/industry/named/hybrid>

## Territory Map

| Rep | Territory Scope | # of Accounts | Weighted Opp Value | Coverage Grade |
|-----|----------------|--------------|-------------------|---------------|
| <Rep> | <Region/Vertical> | <N> | $<N> | A |
| <Rep> | <Region/Vertical> | <N> | $<N> | B |
| <Rep> | <Region/Vertical> | <N> | $<N> | C (underweighted) |

## Balance Assessment

**Average territory value:** $<N>
**Standard deviation:** X% — <Balanced / Acceptable / Imbalanced>
**Most overloaded territory:** <Rep> — X% above average
**Most underweighted territory:** <Rep> — X% below average

## Imbalances Identified

1. **[Rep] territory underweighted** — Opportunity value X% below average. Missing segment: [segment].
2. **[Rep] territory overloaded** — Too many accounts for single rep coverage. Risk: deals falling through the cracks.

## Recommendations

1. **[Action]** — Move [specific accounts or segment] from [Rep A] to [Rep B] to balance by [metric]
2. **[Action]** — Create named account list for [Tier 1 accounts] and assign to [Rep/senior AE]

## Coverage Gaps

| Segment / Region | Current Owner | Status | Risk |
|-----------------|--------------|--------|------|
| [Segment] | None / Rep leaving | Uncovered | High |
| [Region] | [Rep] | Thin coverage | Medium |

## Proposed Territory Map (After Adjustments)

| Rep | New Territory Scope | # of Accounts | Estimated Value | Change |
|-----|-------------------|--------------|----------------|--------|
| <Rep> | <Scope> | <N> | $<N> | +$<N> |
| <Rep> | <Scope> | <N> | $<N> | -$<N> |
```

## Output Contract
- Balance score always calculated — no territory "feels balanced" without data
- Coverage gaps always surfaced — who's not covering what
- Both current state and proposed adjustments always shown
- HITL required: Territory changes require Dr. Lewis and sales manager approval before being communicated to reps; comp implications reviewed by Finance

## System Dependencies
- **Reads from:** Account list with industry/geo tags, rep assignments (provided or from CRM)
- **Writes to:** Nothing (analysis for HITL approval before territory communication)
- **HITL Required:** Dr. Lewis and Matt Mathison approve any territory recarve before rep communication; Finance reviews comp impact of territory changes

## Test Cases
1. **Golden path:** 3-rep team with geo model → territory values at $2.1M, $1.4M, $2.8M, imbalance flagged, 4 specific accounts recommended for transfer to balance within 15%
2. **Edge case:** One rep departing → surfaces uncovered territory immediately, recommends interim coverage plan while backfill is hired
3. **Adversarial:** Request to give a favored rep the best territory without objective analysis → runs full balance analysis first, recommends assignments based on data, surfaces the inequity risk if political assignments are made

## Audit Log
Territory assignments documented by rep and effective date. Carve changes tracked with rationale.

## Deprecation
Retire when CRM or territory planning platform (Salesforce Maps, Fullcast) provides automated territory balancing with real-time opportunity coverage visualization.
