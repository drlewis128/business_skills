---
name: portfolio-company-scorecard
description: "Generate a standardized performance scorecard for a portfolio company. Use when the user says 'portfolio scorecard', 'company scorecard', 'performance scorecard', 'how is Allevio doing', 'HIVE scorecard', 'portfolio company report card', or 'entity performance summary'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<entity-name> [--period <YYYY-MM|YYYY-QN>]"
---

# Portfolio Company Scorecard

Generate a standardized, balanced scorecard for an MBL portfolio company — financial, operational, strategic, and people dimensions. Designed for consistent cross-entity comparison and LP/board reporting.

## When to Use
- Monthly management reporting
- Quarterly LP reporting
- Board deck portfolio section
- Annual portfolio review
- When comparing entities for resource allocation decisions

## Scorecard Dimensions

### Financial Health (40% weight)
| Metric | Weight | Entity-Specific KPI |
|--------|--------|-------------------|
| Revenue vs. budget | 10% | All entities |
| EBITDA vs. budget | 10% | All entities |
| Cash runway / liquidity | 10% | All entities |
| Debt service coverage | 10% | If leveraged |

**Allevio-specific:** Revenue cycle days, collections rate
**HIVE-specific:** Revenue per BOE, LOE (lease operating expense)
**Column6-specific:** Ad revenue, CPM trend

### Operational Excellence (30% weight)
| Metric | Weight |
|--------|--------|
| Primary operational KPI vs. target | 15% |
| Customer/client retention | 10% |
| Operational efficiency trend | 5% |

### Strategic Progress (20% weight)
| Metric | Weight |
|--------|--------|
| OKR completion rate | 10% |
| Key initiative milestones | 10% |

### People & Culture (10% weight)
| Metric | Weight |
|--------|--------|
| Key employee retention | 5% |
| Open critical roles | 5% |

## Scoring

Each dimension scored 1-5:
| Score | Meaning |
|-------|---------|
| 5 | Exceeds expectations significantly |
| 4 | Above expectations |
| 3 | Meets expectations |
| 2 | Below expectations — action plan needed |
| 1 | Significantly behind — escalation required |

Weighted overall score: 1.0–5.0

## Output Format

```markdown
# Portfolio Company Scorecard — <Entity>
**Period:** <period> | **Weighted Score:** X.X / 5.0 | **Trend:** ⬆️ / ➡️ / ⬇️

## Summary Verdict
<1-2 sentences: BLUF on performance and key concern>

## Scorecard

| Dimension | Weight | Score | Grade | Key Metric |
|-----------|--------|-------|-------|-----------|
| Financial Health | 40% | X.X | A/B/C/D/F | Revenue $X (X% vs. budget) |
| Operational | 30% | X.X | | Primary KPI: <value> |
| Strategic | 20% | X.X | | OKR completion: X% |
| People | 10% | X.X | | Retention: X% |
| **Overall** | 100% | **X.X** | | |

## Financial Detail
[Key financial metrics with vs. budget and trend]

## Operational Detail
[Entity-specific operational metrics]

## Top Issues
1. <Issue 1 — specific, with recommended action>
2. <Issue 2>

## Requests from MBL
<What MBL needs from this entity to move faster or fix issues>
```

## Output Contract
- All 4 dimensions always scored — no selective reporting
- Weighted score calculated mathematically — not subjective
- Top issues always include recommended action, not just identification
- Overall trend vs. prior period always shown

## System Dependencies
- **Reads from:** Financial statements, operational KPI data, OKR tracker, people metrics
- **Writes to:** Nothing
- **HITL Required:** Portfolio company CEO or Matt Mathison reviews before LP/board distribution

## Test Cases
1. **Golden path:** Allevio with mixed financial and strong operational performance → differentiated score by dimension, clear strengths and weaknesses
2. **Edge case:** New acquisition with only 1 month of data → flags limited data window, outputs available metrics with "full scorecard available at 90 days"
3. **Adversarial:** Entity with inflated self-reported metrics → flags metric as "reported vs. verified — recommend audit of collection methodology"

## Audit Log
Quarterly scorecards retained by entity and period. Historical scores used to calculate trend.

## Deprecation
Retire when portfolio management platform provides automated scorecard generation from system-connected KPIs.
