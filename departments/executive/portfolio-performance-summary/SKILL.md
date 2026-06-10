---
name: portfolio-performance-summary
description: "Compile a cross-portfolio performance summary across all MBL entities. Use when the user says 'portfolio summary', 'portfolio performance', 'how are all our companies doing', 'portfolio overview', 'consolidated portfolio view', 'cross-entity summary', or 'Matt needs a portfolio update'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--period <YYYY-MM|YYYY-QN>] [--format <brief|full|board>]"
---

# Portfolio Performance Summary

Generate a consolidated performance summary across all MBL Partners portfolio entities — designed for Matt Mathison's leadership view or for board/LP presentation.

## When to Use
- Monthly and quarterly management review
- Board meeting preparation
- LP reporting cycle
- Before any external conversation about the portfolio

## Portfolio Entities (MBL Context)

| Entity | Sector | Role |
|--------|--------|------|
| MBL Partners | PE/Holding | Parent / control |
| Allevio | Healthcare / MSO | Portfolio company |
| HIVE Partners | Oil & Gas, Uinta Basin | Portfolio company |
| Column6 / Siprocal | CTV / Mobile / Gaming | Portfolio company |

## Performance Dimensions per Entity

### Financial
- Revenue (period and YTD vs. budget)
- EBITDA (period and YTD vs. budget)
- Cash position / liquidity
- Variance from underwriting model

### Operational
- Entity-specific primary KPI (patient volume / BOE per day / ad revenue)
- Headcount vs. plan
- Key operational milestones hit or missed

### Strategic
- Progress on key initiatives
- M&A pipeline activity (Allevio)
- Investment / project status (HIVE)

### Risk
- Top 1-2 risks at each entity
- Escalated items requiring MBL attention

## Output Formats

### Brief (< 1 page)
Designed for weekly briefing or quick sync. Traffic light + 1-2 line entity summary.

### Full (2-3 pages)
Designed for monthly management review. Metrics tables + narrative per entity.

### Board Format (appendix to board deck)
Formatted for inclusion in board materials. Standardized layout across entities.

## Output

```markdown
# MBL Portfolio Performance Summary — <period>
**Format:** Brief / Full / Board | **Prepared:** <date>

## Portfolio Health Overview
| Entity | Status | Revenue vs. Plan | EBITDA vs. Plan | Top Issue |
|--------|--------|-----------------|----------------|-----------|
| Allevio | 🟡 Watch | -5% | -12% | Revenue cycle delays |
| HIVE Partners | 🟢 On Track | +3% | +8% | — |
| Column6 | 🔴 Behind | -18% | -25% | Ad market headwinds |

## MBL Partners (Parent)
[consolidated financial position, M&A pipeline status, LP relations]

## Allevio
[healthcare-specific KPIs, revenue cycle, M&A pipeline via Morgan Sills]

## HIVE Partners
[production volumes, revenue per BOE, Covercy distributions, LP status]

## Column6 / Siprocal
[CTV/mobile/gaming revenue, platform metrics, partnerships]

## Cross-Portfolio Observations
<patterns, shared risks, leverage opportunities across entities>

## Actions Required from MBL / Matt
1. <Action>
```

## Output Contract
- Every entity appears in every summary — no selective reporting
- Financial variances shown as both $ and % (both matter)
- Cross-portfolio section always included — pattern recognition across entities
- CONFIDENTIAL — board and LP formats have explicit confidentiality header

## System Dependencies
- **Reads from:** Entity financial snapshots (`financial-kpi-briefing` per entity), operational updates, portfolio company scorecard
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison reviews before LP or board distribution
- **Data sensitivity:** CONFIDENTIAL

## Test Cases
1. **Golden path:** All entities with current financials → full summary with metrics, variances, and cross-portfolio observations
2. **Edge case:** One entity's financials delayed → generates summary with "Data pending — <entity>" placeholder, does not omit that entity
3. **Adversarial:** Significant underperformance at one entity → surfaces prominently at top, does not bury in per-entity section

## Audit Log
Portfolio summaries versioned by period. Distribution to board/LPs logged with date and format.

## Deprecation
Retire when portfolio management platform provides auto-generated cross-entity rollup with real-time data pull.
