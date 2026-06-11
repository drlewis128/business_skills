---
name: salary-band-builder
description: "Build salary bands for a role or level using market data. Use when the user says 'salary band', 'pay range', 'compensation band', 'salary range', 'build a pay structure', 'what should we pay for this role', 'comp band', or 'market pay analysis'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<role-title-or-level> [--market <national|regional|industry>] [--entity <name>]"
---

# Salary Band Builder

Build salary bands for roles or levels based on market data. Bands set the ceiling and floor for compensation decisions — without them, pay is inconsistent, inequitable, and defended poorly in hiring.

## When to Use
- Establishing pay structure for a new role or entity
- Annual compensation review (are bands still market-competitive?)
- Before posting a job (must have a range, increasingly required by law)
- When an employee claims they're underpaid vs. market
- Post-acquisition (harmonize two different pay structures)

## Market Data Sources

### Primary Sources (Recommended)
- **Radford / Aon** — Technology and life sciences comp surveys; expensive but gold standard
- **Willis Towers Watson (WTW)** — Broad industry surveys
- **Mercer** — Multi-industry compensation surveys
- **Culpepper** — Compensation planning surveys
- **SHRM Compensation Data** — HR benchmarks

### Accessible Secondary Sources (Use with caution — lower rigor)
- **Levels.fyi** — Tech roles only; biased toward top-paying companies
- **Glassdoor / LinkedIn Salary** — Self-reported; directionally useful
- **Bureau of Labor Statistics (OES)** — Government data; lags market 1-2 years
- **Indeed Salary** — Broad job market data; directionally useful

Recommendation: Use 2-3 sources and triangulate. No single source is perfect.

## Band Construction

### Percentile Benchmarks
| Percentile | Strategy | Use When |
|-----------|---------|---------|
| 25th | Below market | Cost-constrained; strong non-cash comp |
| 50th (median) | Market rate | Competitive; most common approach |
| 75th | Above market | Competing for scarce talent; retention-critical roles |
| 90th | Premium | Tech companies, high-competition roles |

### Band Width
Typical band width (max – min as % of midpoint):
- Narrow band (10-20%): Single role, tight market definition
- Standard band (40-60%): Most roles; allows hire-to-grow range
- Wide band (60-80%): Broadband compensation; covers multiple levels

### Band Zones
| Zone | % of Range | Meaning |
|------|-----------|---------|
| Entry (Min) | 80-90% of midpoint | New hire with no experience in role |
| Competitive | 90-110% of midpoint | Experienced, fully contributing |
| Premium (Max) | 110-120% of midpoint | Top performer, exceptional skills |

## Output Format

```markdown
# Salary Band — <Role or Level>
**Entity:** <entity> | **Market:** <national/regional> | **Effective Date:** <date>
**Level:** <level> | **Track:** IC / Management

## Market Data Summary

| Source | 25th %ile | 50th %ile | 75th %ile | Notes |
|--------|---------|---------|---------|-------|
| <Source 1> | $<N> | $<N> | $<N> | <date of data> |
| <Source 2> | $<N> | $<N> | $<N> | |
| **Blended** | **$<N>** | **$<N>** | **$<N>** | |

## Recommended Band

**Market Target:** <25th / 50th / 75th> percentile
**Strategy:** <Market rate / Premium / etc.>

| Band Component | Annual |
|---------------|--------|
| Minimum | $<N> |
| Midpoint | $<N> |
| Maximum | $<N> |
| Band Width | <N>% |

## Band Zones

| Zone | Range | Use |
|------|-------|-----|
| Entry | $<N>–$<N> | New hire; developing |
| Competitive | $<N>–$<N> | Experienced; fully proficient |
| Premium | $<N>–$<N> | Top performer; exceptional skills |

## Geographic Adjustments (if applicable)
| Location | Adjustment | Adjusted Midpoint |
|---------|-----------|-----------------|
| National baseline | — | $<N> |
| San Francisco / NYC | +25-35% | $<N> |
| Phoenix / Austin | -5-10% | $<N> |
| Remote | +0-15% (market-dependent) | $<N> |

## Internal Equity Check
<Current employees in this role and their position in the band>

| Employee | Current Salary | Band Position |
|---------|--------------|--------------|
| <Name> | $<N> | Competitive zone |
| <Name> | $<N> | ⚠️ Below minimum — review |
```

## Output Contract
- Market data source always cited with recency date — no undocumented assumptions
- Band always includes min, mid, and max — not just a midpoint
- Any current employee below band minimum always flagged immediately
- Pay transparency law compliance noted (CO, NY, WA, CA require range in postings)
- HITL required: Finance and HR approve band before it's communicated or used in offers

## System Dependencies
- **Reads from:** Market data (provided or from compensation survey), role level (from `job-leveling-framework`)
- **Writes to:** Nothing (band document for HITL approval)
- **HITL Required:** Matt Mathison or Dr. Lewis approves all bands before use; Finance confirms band fits within payroll budget

## Test Cases
1. **Golden path:** Finance analyst band → blended 50th-percentile target, standard 50% width, 3 internal employees mapped to band positions
2. **Edge case:** New market with limited data (e.g., healthcare in rural market) → notes data limitations, recommends conservative approach, flags for 6-month review
3. **Adversarial:** Request to set band minimum above actual market to justify current high-paying employee → flags internal equity risk, recommends honest market-based band with retention-focused justification for outlier if needed

## Audit Log
Salary bands retained by role, market, and effective date. Annual review cycle documented.

## Deprecation
Retire when compensation management platform (Radford, Mercer, Payscale) provides band management with market refresh and internal equity analysis.
