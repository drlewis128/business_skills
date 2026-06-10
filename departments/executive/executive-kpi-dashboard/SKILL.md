---
name: executive-kpi-dashboard
description: "Generate a cross-entity executive KPI dashboard for leadership review. Use when the user says 'executive dashboard', 'KPI dashboard', 'top metrics', 'leadership metrics', 'what are the key numbers', 'dashboard for Matt', or 'executive metrics view'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--period <YYYY-MM>] [--entities <all|mbl|allevio|hive|column6>]"
---

# Executive KPI Dashboard

Generate a single-pane-of-glass executive KPI view across MBL Partners and portfolio companies. Designed for Matt's weekly or monthly leadership review — fast signal, not noise.

## When to Use
- Weekly leadership review (quick view)
- Monthly management reporting
- Before any board or LP communication
- When Matt asks "what are the key numbers this month?"

## MBL Portfolio KPIs

### MBL Partners (Parent)
| KPI | Target | Actual | Trend |
|-----|--------|--------|-------|
| Total portfolio EBITDA | Budget | Actual | ⬆️ ➡️ ⬇️ |
| Active deal pipeline (LOIs) | Target | Count | |
| Cash on hand (consolidated) | Minimum | Actual | |
| LP relationship health | Green | Status | |

### Allevio (Healthcare / MSO)
| KPI | Target | Actual | Trend |
|-----|--------|--------|-------|
| Revenue | Budget | Actual | |
| EBITDA margin | Target % | Actual % | |
| Patient / client volume | Target | Actual | |
| Revenue cycle days outstanding | ≤ 45 days | Actual | |
| Collections rate | ≥ 95% | Actual % | |

### HIVE Partners (Oil & Gas)
| KPI | Target | Actual | Trend |
|-----|--------|--------|-------|
| Revenue | Budget | Actual | |
| EBITDA | Budget | Actual | |
| Production (BOE/day) | Target | Actual | |
| Revenue per BOE | $X | Actual | |
| LOE (Lease Operating Expense) | ≤ $X/BOE | Actual | |
| Distributions to LPs (YTD) | Target | Actual | |

### Column6 / Siprocal (CTV / Mobile)
| KPI | Target | Actual | Trend |
|-----|--------|--------|-------|
| Ad revenue | Budget | Actual | |
| EBITDA | Budget | Actual | |
| CPM trend | Target | Actual | |
| Platform impressions | Target | Actual | |

## Dashboard Status Coding
| Status | Meaning |
|--------|---------|
| 🟢 | On or above target |
| 🟡 | 5-15% below target — monitor |
| 🔴 | >15% below target — action required |
| ⬜ | No data available this period |

## Output Format

```markdown
# Executive KPI Dashboard — <Period>
**Prepared:** <date> | **For:** Matt Mathison

## Portfolio Health Overview
| Entity | Status | Revenue | EBITDA | Top Signal |
|--------|--------|---------|--------|------------|
| MBL | 🟢 | On plan | +8% | Pipeline active |
| Allevio | 🟡 | -7% | -14% | Rev cycle lag |
| HIVE | 🟢 | +3% | +11% | Production up |
| Column6 | 🔴 | -22% | -31% | Ad market soft |

## Detail by Entity

### Allevio
[KPI table with period, target, actual, trend, note]

### HIVE Partners
[KPI table]

### Column6
[KPI table]

## Exception Report (Red and Yellow Items)
| Entity | KPI | Target | Actual | Gap | Action |
|--------|-----|--------|--------|-----|--------|
| Column6 | Revenue | $X | $X | -22% | Review ad ops strategy |

## Data Completeness
| Entity | Data Status | Source |
|--------|------------|--------|
| Allevio | ✅ Current | Mgmt accounts May 2026 |
| HIVE | ✅ Current | Covercy export |
| Column6 | ⚠️ Estimate | Preliminary — finalize by <date> |
```

## Output Contract
- Every entity appears in every dashboard — no selective reporting
- Data source and freshness always noted
- Exception report (red/yellow items) always included even if brief
- HITL required before LP or board distribution

## System Dependencies
- **Reads from:** Entity financial snapshots, operational KPI inputs (provided), portfolio company scorecard outputs
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison reviews before sharing with LPs or board

## Test Cases
1. **Golden path:** All entities with current data → full cross-entity dashboard in one output
2. **Edge case:** One entity's data 15 days stale → flags stale data, uses prior data with "estimate" label and timestamp
3. **Adversarial:** All entities underperforming simultaneously → surfaces cross-portfolio risk pattern, recommends leadership-level strategic discussion

## Audit Log
Monthly KPI dashboards retained by period. Used as source for LP reporting and board materials.

## Deprecation
Retire when portfolio management platform generates real-time cross-entity dashboards with automated data pulls from QuickBooks, Covercy, and other systems.
