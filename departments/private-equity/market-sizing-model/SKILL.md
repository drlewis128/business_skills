---
name: market-sizing-model
description: "Build a market sizing model (TAM/SAM/SOM) for a market or opportunity. Use when the user says 'market size', 'TAM SAM SOM', 'how big is the market', 'market sizing', 'addressable market', 'market opportunity', or 'size this market'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<market-description> [--approach <top-down|bottom-up|both>] [--entity <name>]"
---

# Market Sizing Model

Build a structured TAM / SAM / SOM market sizing analysis for investment decisions, board presentations, or strategic planning.

## When to Use
- Deal screening (validate market opportunity for target)
- Board or LP presentation (justify market opportunity claim)
- New initiative evaluation (is this worth pursuing?)
- Competitive positioning (where is the white space?)

## Sizing Approaches

### Top-Down
Start from the total market (industry reports, research firms) and narrow down:
- Total industry revenue → addressable segment → winnable share

Best for: Established markets with published research (healthcare, oil & gas, advertising)

### Bottom-Up
Start from unit economics and scale up:
- Customer count × revenue per customer = market size
- Or: number of providers × average spend = market size

Best for: New markets, niche segments, or validating top-down estimates

### Both (Recommended)
Run both approaches and reconcile. Significant divergence indicates an error or an assumption worth surfacing.

## Three Tier Definitions

| Tier | Name | Definition |
|------|------|-----------|
| TAM | Total Addressable Market | The total revenue opportunity if 100% market share |
| SAM | Serviceable Addressable Market | The portion of TAM your product/service can reach given geographic, channel, or model constraints |
| SOM | Serviceable Obtainable Market | Realistic market share achievable in 3-5 years |

## MBL Context by Sector

**Healthcare / MSO (Allevio):**
- TAM: Total US MSO / medical practice management market
- SAM: Geographic footprint × practice size targets
- SOM: Attainable practices in target markets given capacity

**Oil & Gas (HIVE):**
- TAM: Total Uinta Basin production capacity
- SAM: HIVE's acreage and operational footprint
- SOM: Production targets given capex plan

**CTV / Digital (Column6):**
- TAM: Total US CTV/mobile advertising spend
- SAM: Programmatic addressable segment
- SOM: Realistically winnable given platform and partnerships

## Output Format

```markdown
# Market Sizing Analysis — <Market>
**Date:** <date> | **Entity:** <entity> | **Approach:** <top-down|bottom-up|both>

## Market Definition
<What market are we sizing? Specific definition matters.>

## Top-Down Analysis
| Tier | Calculation | Size |
|------|------------|------|
| TAM | Total US healthcare IT spend × MSO segment % | $XB |
| SAM | TAM × geographic filter × addressable practice size | $XB |
| SOM | SAM × realistic market share at Year 5 (X%) | $XM |

**Assumptions:**
- <Key assumption 1 with source>
- <Key assumption 2>

## Bottom-Up Analysis (if run)
| Tier | Calculation | Size |
|------|------------|------|
| TAM | <N> practices nationwide × $X avg revenue | $XB |
| SAM | <N> practices in addressable region × $X | $XB |
| SOM | <N> win rate × <N> year pipeline capacity | $XM |

## Reconciliation
Top-down SOM: $XM | Bottom-up SOM: $XM | Difference: X%
<If divergent: flag the assumption driving the gap>

## Key Sensitivities
| Assumption | Base | Bull | Bear |
|-----------|------|------|------|
| Market share (Year 5) | 3% | 5% | 1% |
| Market growth rate | 8% | 12% | 4% |

**SOM Range:** $XM (bear) to $XM (bull)

## Conclusion
<1-2 sentences: Is this a large enough market to justify the investment / initiative?>
```

## Output Contract
- Both approaches run when market has sufficient data for bottom-up
- Key assumptions sourced (not fabricated)
- SOM range (bear/bull) always included — point estimates are misleading
- HITL required before market sizing is used in IC or LP presentations

## System Dependencies
- **Reads from:** Context provided, publicly available market data (if web search enabled)
- **Writes to:** Nothing
- **HITL Required:** Before using in board/IC/LP context — verify key assumptions with domain expert

## Test Cases
1. **Golden path:** US CTV advertising market — both approaches run, reconciled within 20% → clean analysis with sensitivity table
2. **Edge case:** Highly niche market with no public research → flags limited data, runs bottom-up only, flags assumptions clearly
3. **Adversarial:** Request to size market to hit a predetermined target number → runs honest analysis, outputs actual sizing, flags if conclusion doesn't support the stated objective

## Audit Log
Market sizing analyses retained by market and date. Key assumptions documented for reuse in future analyses.

## Deprecation
Retire when deal management platform integrates market intelligence data for automated sizing.
