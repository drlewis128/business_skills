---
name: operations-kpi-dashboard
description: "Generate an operational KPI dashboard for a business unit or entity. Use when the user says 'ops dashboard', 'operational KPIs', 'operations metrics', 'ops report', 'what are our operational metrics', 'ops performance', or 'operational performance summary'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM>] [--sector <healthcare|oil-gas|ctv|pe>]"
---

# Operations KPI Dashboard

Generate an operational KPI dashboard for MBL portfolio entities, surfacing performance against targets and flagging operational issues requiring attention.

## When to Use
- Monthly operations review
- Before the weekly operating review (WOR)
- When a department head needs a performance snapshot
- Board and LP reporting (operational section)
- M&A due diligence (what does this company actually measure?)

## Entity-Specific KPI Libraries

### Allevio (Healthcare / MSO)
| KPI | Target | Definition |
|-----|--------|-----------|
| Patient / client volume | Budget | Total encounters or cases per period |
| Revenue per visit/case | Target | Revenue generated per unit of service |
| Revenue cycle days (A/R days) | ≤ 45 days | Average days from service to payment |
| Collections rate | ≥ 95% | Collected / billed |
| Denial rate | ≤ 5% | Denied claims / submitted |
| Provider utilization rate | ≥ 85% | Scheduled / available hours |
| New patient acquisition | Target | New patients per period |
| Patient satisfaction (NPS or score) | Target | |

### HIVE Partners (Oil & Gas)
| KPI | Target | Definition |
|-----|--------|-----------|
| Production (BOE/day) | Plan | Barrels of oil equivalent per day |
| Revenue per BOE | $X | Revenue / production volume |
| LOE (Lease Operating Expense) | ≤ $X/BOE | Operating cost per BOE |
| Uptime / availability | ≥ 95% | Well operating vs. scheduled time |
| Workover completions | Plan | Planned vs. actual workovers |
| CapEx spend vs. plan | Budget | YTD spend vs. plan |
| Distribution yield (LP) | Target | Cash distributed to LPs |

### Column6 / Siprocal (CTV / Digital)
| KPI | Target | Definition |
|-----|--------|-----------|
| Ad revenue | Budget | Total advertising revenue |
| Impressions served | Target | Volume of ads delivered |
| CPM (Cost per thousand) | Target | Revenue per 1,000 impressions |
| Fill rate | ≥ 85% | Impressions sold / available |
| Publisher partners active | Target | Active supply partners |
| Platform uptime | ≥ 99.9% | System availability |

### MBL / General Operations
| KPI | Target | Definition |
|-----|--------|-----------|
| Open headcount vs. plan | Budget | Unfilled roles vs. approved headcount |
| Active projects on track | ≥ 80% | Green projects / total |
| Vendor payment timeliness | ≥ 95% on time | Paid on due date or early |
| IT system uptime | ≥ 99.5% | Availability of business-critical systems |

## Output Format

```markdown
# Operations KPI Dashboard — <Entity> — <period>
**Updated:** <date> | **Source:** <data source>

## KPI Scorecard

| KPI | Target | Actual | Variance | Trend | Status |
|-----|--------|--------|---------|-------|--------|
| <KPI 1> | <target> | <actual> | +/-X% | ⬆️/➡️/⬇️ | 🟢/🟡/🔴 |

## Performance Summary
**KPIs on target:** <N>/<total> (<pct>%)
**Top performer:** <KPI with biggest positive variance>
**Biggest concern:** <KPI with biggest negative variance>

## Narrative
<2-3 sentences on operational performance this period>

## Action Items from Dashboard
| KPI | Issue | Owner | Action | Due |
|-----|-------|-------|--------|-----|
```

## Output Contract
- All entity-specific KPIs shown — no cherry-picking
- Trend direction shown (3-period trend minimum when data allows)
- "Biggest concern" always explicitly named
- HITL required before dashboard is distributed externally

## System Dependencies
- **Reads from:** Entity operational data (provided), financial system exports
- **Writes to:** Nothing
- **HITL Required:** Entity lead reviews before Matt or LP distribution

## Test Cases
1. **Golden path:** Allevio with all KPIs current → full scorecard with variance, trend, and narrative
2. **Edge case:** HIVE with partial month production data → outputs available data with "partial period" flag, projects full month
3. **Adversarial:** All KPIs cherry-picked to show only green → rejects selective input, requires full KPI set or flags missing KPIs

## Audit Log
Monthly KPI dashboards retained by entity and period.

## Deprecation
Retire when operational systems (AdvancedMD for Allevio, production reporting for HIVE) provide automated dashboard feeds.
