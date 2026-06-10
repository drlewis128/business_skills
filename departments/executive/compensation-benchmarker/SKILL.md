---
name: compensation-benchmarker
description: "Benchmark a role's compensation against market data for a hiring or review decision. Use when the user says 'comp benchmark', 'market rate', 'what should we pay', 'salary range', 'compensation analysis', 'is this pay competitive', 'what is market for this role', or 'pay analysis'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<role-title> [--level <IC|manager|director|vp|c-suite>] [--location <city-or-remote>] [--sector <healthcare|oil-gas|tech|pe>]"
---

# Compensation Benchmarker

Benchmark a role's compensation against market data for informed hiring, promotion, and retention decisions. Competitive pay reduces turnover; above-market pay requires financial justification.

## When to Use
- Before making an offer to a new hire
- Annual compensation review (are we competitive?)
- When a key employee asks about their comp
- When building the annual salary budget
- Post-acquisition (harmonize comp structures)

## Compensation Framework

### Total Compensation Components
| Component | Common Usage |
|-----------|-------------|
| **Base salary** | Fixed annual cash (primary benchmark) |
| **Short-term incentive (STI)** | Annual bonus — performance-based |
| **Long-term incentive (LTI)** | Equity (options, RSUs) or phantom equity |
| **Benefits** | Health, retirement, PTO — typically 20-30% of base |
| **Perks** | Remote stipend, professional development, vehicle |

### Percentile Targeting
| Position | Market Percentile | When Appropriate |
|---------|------------------|-----------------|
| 25th | Below market | Cost-constrained roles, high development opportunity |
| 50th | Market median | Standard competitive position |
| 75th | Above market | Critical roles, retention risk, top performers |
| 90th+ | Premium | C-suite, hard-to-fill specialized roles |

## Market Rate Reference Ranges (2025-2026 estimates)

**Note: These are reference ranges — actual benchmarks vary significantly by geography, company size, and sector. Verify with current data sources before setting comp.**

| Role | P25 | P50 | P75 | Notes |
|------|-----|-----|-----|-------|
| Controller | $95K | $120K | $150K | Varies by entity size |
| CFO (small company <$50M rev) | $150K | $195K | $250K+ | Often includes equity |
| COO | $140K | $180K | $230K+ | |
| VP Finance | $120K | $155K | $190K | |
| Director, Finance | $95K | $125K | $160K | |
| HR Manager | $75K | $95K | $120K | |
| Operations Manager | $75K | $95K | $125K | Sector-dependent |
| Software Engineer (IC) | $110K | $145K | $185K | Tech sector varies widely |

**Data sources to verify:** Radford/AON, Mercer, Levels.fyi (tech), BLS OES, Robert Half Salary Guide, Glassdoor, LinkedIn Salary

## Output Format

```markdown
# Compensation Benchmark — <Role Title>
**Level:** <level> | **Location:** <location> | **Sector:** <sector>
**Date:** <date>

## Benchmark Summary

| Percentile | Base Salary | Total Cash (with STI) |
|-----------|------------|----------------------|
| 25th (entry comp) | $X | $X |
| 50th (median) | $X | $X |
| 75th (competitive) | $X | $X |

**Data sources:** <sources used>

## Recommended Positioning
**Target percentile:** P<N>
**Rationale:** <Why this positioning is appropriate for this role and situation>

## Total Compensation Package (Recommended)
| Component | Amount | Notes |
|-----------|--------|-------|
| Base salary | $X | |
| Target bonus (X% of base) | $X | Performance-based |
| Benefits (X% of base) | $X | Fully loaded cost |
| **Total fully loaded cost** | **$X** | |

## Budget Impact
Annual cost of this hire: $X (see `headcount-planning-model` for full ramp model)

## Competitive Flags
- ⚠️ If candidate has a competing offer, confirm accuracy before adjusting
- ⚠️ Remote candidates in high-cost markets may expect geographic adjustment
```

## Output Contract
- Benchmarks always include data source — no made-up numbers
- Fully loaded cost always shown alongside base salary
- Percentile targeting always includes a rationale, not just a number
- CONFIDENTIAL — compensation data visible to Tier 1 and hiring manager only

## System Dependencies
- **Reads from:** Context provided, public compensation data sources (reference ranges in this skill)
- **Writes to:** Nothing (outputs for hiring manager and Matt review)
- **HITL Required:** Matt Mathison approves compensation offers above $150K or any offer above the P75 benchmark
- **Data sensitivity:** CONFIDENTIAL — compensation data

## Test Cases
1. **Golden path:** Controller role in Phoenix → clean benchmark with P25/50/75 range, P50 positioning recommendation
2. **Edge case:** Role in San Francisco vs. Phoenix — same title → flags geographic premium (~20-35% higher for SF), recommends separate benchmarks
3. **Adversarial:** Request to offer below P25 for a "critical" role → flags retention risk explicitly, documents that below-market comp for critical roles increases turnover probability

## Audit Log
Compensation benchmarks retained by role and date. Offer decisions documented with benchmark justification.

## Deprecation
Retire when HR platform provides real-time compensation benchmarking with current market data integration.
