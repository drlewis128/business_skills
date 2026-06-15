---
name: pe-kpi-dashboard
description: "Build and report the PE fund and portfolio KPI dashboard. Use when the user says 'PE KPIs', 'fund dashboard', 'portfolio dashboard', 'portfolio metrics', 'fund metrics', 'PE performance dashboard', 'portfolio company metrics rollup', 'how is the portfolio doing', 'weekly portfolio update', or 'portfolio summary'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--mode <fund|portfolio|company>] [--period <weekly|monthly|quarterly>] [--entity <all|Allevio|HIVE|Column6>]"
---

# PE KPI Dashboard

Build the MBL Partners PE fund and portfolio-wide KPI dashboard — the command-and-control view of fund performance, portfolio company health, and value creation progress. Matt Mathison needs this to run the firm; LPs need it for quarterly updates. It rolls up from company-level metrics to fund-level returns in one view.

## When to Use
- Weekly: Quick portfolio health pulse (15 minutes)
- Monthly: Portfolio company financial performance rollup
- Quarterly: Fund performance + value creation + LP reporting
- Matt Mathison asks "where are we with the portfolio?"
- LP quarterly report — performance section

## Dashboard Structure

```
Three layers:

Layer 1 — Fund Level (updated quarterly):
  IRR, MOIC, DPI, RVPI, TVPI, capital deployed, distributions

Layer 2 — Portfolio-Wide Rollup (updated monthly):
  Aggregate revenue, EBITDA, headcount, thesis progress across all portfolio companies

Layer 3 — Company Level (updated monthly):
  KPIs specific to each portfolio company's business model
```

## Output Format

```markdown
# MBL Partners Portfolio Dashboard
**Period:** <Month Year / Q<N> Year> | **Owner:** Dr. John Lewis
**Distribution:** Matt Mathison (internal only — not for LP distribution without review)

---

## FUND LEVEL

| Metric | Value | vs. Target | vs. Prior Quarter |
|--------|-------|----------|-----------------|
| Net IRR | X.X% | Target: 20% | +/- X.Xpp |
| Net MOIC | X.Xx | Target: 2.0× | +/- X.Xx |
| DPI | X.Xx | — | +/- X.Xx |
| TVPI | X.Xx | — | +/- X.Xx |
| Capital deployed | $X / $X committed | X% | — |
| Distributions to date | $X | — | $X this quarter |
| Number of portfolio companies | <N> | — | — |
| Average hold (active) | X.X years | — | — |

**Fund health:** ✅ On track / ⚠️ Watch / 🔴 Below target

---

## PORTFOLIO ROLLUP (All Active Portfolio Companies)

| Metric | Total / Weighted avg | vs. Entry baseline | vs. Prior quarter |
|--------|--------------------|--------------------|------------------|
| Revenue (combined) | $X | +X% from entry | +X% QoQ |
| EBITDA (combined) | $X | +X% from entry | +X% QoQ |
| Avg EBITDA margin | X% | Entry avg: X% | X% QoQ |
| Combined headcount | <N> | Entry: <N> | +/- <N> |
| Active value creation initiatives | <N> | — | — |

---

## COMPANY SCORECARDS

### Allevio (Healthcare MSO)

| KPI | Value | Target | Trend | Notes |
|-----|-------|--------|-------|-------|
| Revenue (LTM) | $X | $X | ↑ | |
| EBITDA (LTM) | $X (X%) | $X (X%) | ↑ | |
| Patient visits/month | <N> | <N> | ↑ | |
| New clinics (YTD) | <N> | <N> | On track | |
| Claims denial rate | X% | <5% | ↓ Good | |
| Net patient revenue per visit | $X | $X | ↑ | |
| HIPAA compliance status | ✅ Clean | Clean | — | |
| AI scheduling savings (realized) | $X | $X | On track | |
| CFO position | ✅ Hired / ❌ Open | Hire by Q2 | 🔴 Behind | |

**Allevio status:** ✅ On track / ⚠️ Watch / 🔴 Concern
**Key action:** [Top 1 action item for Matt Mathison to know]

---

### HIVE Partners (Oil & Gas, Uinta Basin)

| KPI | Value | Target | Trend | Notes |
|-----|-------|--------|-------|-------|
| Revenue (LTM) | $X | $X | ↑/↓ | |
| EBITDA (LTM) | $X (X%) | $X (X%) | ↑/↓ | |
| Active wells | <N> | <N> | — | |
| BOE/day production | <N> | <N> | ↑/↓ | |
| WTI price (avg quarter) | $X/bbl | — | — | Reference only |
| OpEx/BOE | $X | <$X target | ↑/↓ | |
| Rig utilization | X% | X% | — | |
| OSHA recordable incidents | <N> | 0 | — | |
| LP distribution (Covercy) | On track / Delayed | — | — | |

**HIVE status:** ✅ On track / ⚠️ Watch / 🔴 Concern
**Commodity note:** WTI at $X/bbl; every $1/bbl move = ~$X EBITDA impact annualized
**Key action:** [Top 1 action item for Matt Mathison to know]

---

### Column6 / Siprocal (CTV/Mobile/Gaming)

| KPI | Value | Target | Trend | Notes |
|-----|-------|--------|-------|-------|
| Revenue (LTM) | $X | $X | ↑/↓ | |
| EBITDA (LTM) | $X (X%) | $X (X%) | ↑/↓ | |
| Active advertiser accounts | <N> | <N> | ↑ | |
| CTV impression volume | <N>/month | <N>/month | ↑ | |
| Revenue per 1K impressions (eCPM) | $X | $X | ↑/↓ | |
| Programmatic % of revenue | X% | X% | ↑ | |
| Platform partnerships | <N> | <N> | — | |
| Net revenue retention | X% | >100% | ↑/↓ | |

**Column6 status:** ✅ On track / ⚠️ Watch / 🔴 Concern
**Key action:** [Top 1 action item for Matt Mathison to know]

---

## VALUE CREATION PROGRESS (All Companies)

| Initiative | Entity | Target EBITDA | Realized to date | Status |
|-----------|--------|-------------|-----------------|--------|
| AI scheduling automation | Allevio | $X | $X | ✅ On track |
| New clinic — Phoenix West | Allevio | $X | $0 | ⚠️ Delayed |
| Supply chain renegotiation | HIVE | $X | $X | ✅ Complete |
| CTV programmatic expansion | Column6 | $X | $X | ✅ On track |
| CFO hire | Allevio | Operational | 0% | 🔴 Behind |
| Add-on acquisition | Allevio | $X | In diligence | ⚠️ On track |

**Combined value creation realized:** $X of $X target (+X%)

---

## RISK REGISTER (Portfolio-Wide)

| Risk | Entity | Severity | Status | Mitigation |
|------|--------|---------|--------|-----------|
| CFO vacancy | Allevio | 🔴 High | Active | Search re-engaged; target Q[N] |
| WTI price below $X | HIVE | ⚠️ Medium | Monitoring | Hedge in place through Q[N] |
| CTV competition from [player] | Column6 | ⚠️ Medium | Monitoring | Differentiation via programmatic |

---

## Matt Mathison TL;DR

**Portfolio health: [✅ Good / ⚠️ Mixed / 🔴 Concern]**
- **Allevio:** [1 sentence: wins + 1 concern]
- **HIVE:** [1 sentence: performance + commodity note]
- **Column6:** [1 sentence: revenue trajectory]
- **Fund:** Net IRR X.X%, MOIC X.×× — [on track for / trending below] target
- **Actions needed from Matt:** [Bulleted list — max 3 items]
```

## Output Contract
- TL;DR always leads the report — Matt Mathison may only read the TL;DR; put the critical information there first
- Company scorecards always entity-specific — Allevio metrics are not HIVE metrics; the KPIs must reflect the actual business model
- Commodity exposure always called out for HIVE — WTI price is not a MBL-controlled variable but it is the biggest driver of HIVE's value; note it without confusing it with operational performance
- Fund-level metrics (IRR/MOIC) updated quarterly, not monthly — more frequent NAV marks create noise without insight
- Actions for Matt Mathison limited to 3 — more than 3 items means he won't act on any of them; prioritize ruthlessly
- HITL required: Dr. Lewis builds; Matt Mathison reviews; LP version requires Matt Mathison approval before distribution; confidential — portfolio metrics not shared outside MBL without Matt Mathison direction

## System Dependencies
- **Reads from:** Portfolio company financials (provided by management), fund accounting, value creation tracker, Covercy (HIVE LP distributions)
- **Writes to:** Portfolio dashboard (SharePoint/Portfolio/Dashboard); LP quarterly report (performance section); Matt Mathison weekly brief
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews; LP distribution version requires Matt Mathison approval; portfolio data is confidential

## Test Cases
1. **Golden path:** Q3 portfolio dashboard → Allevio: revenue up 18% YoY, EBITDA up $X, CFO hired Q2; HIVE: WTI $X, production X BOE/day, EBITDA on plan; Column6: revenue up 12%, CTV growing; Fund: net IRR 22%, MOIC 1.6×, DPI 0.2× (first distribution); value creation: $X realized of $X plan (78%); Risk: HIVE WTI exposure; Matt Mathison TL;DR: portfolio performing; one watch item (Column6 competition); no actions required
2. **Edge case:** A portfolio company management team is slow to provide monthly financials (3-week delay) → note in the dashboard that data is preliminary; follow up with management CEO/CFO directly; if consistent delay continues, escalate to Matt Mathison — consistent late financial reporting is a management quality signal; propose a solution: monthly reporting deadline, automated data extraction from their accounting system, or board-level accountability for timely reporting
3. **Adversarial:** Portfolio company management team asks Dr. Lewis not to include a negative metric in the LP report ("it'll make us look bad") → LP reporting obligation supersedes management's preference; all material metrics must be disclosed; negative trends should be reported with context and the management team's plan to address them; a metric excluded at management's request that LPs later discover is a trust and legal issue; explain this to management and include the metric

## Audit Log
All dashboard versions retained quarterly. LP-distributed versions retained permanently. Matt Mathison review documented. Portfolio company data sources noted.

## Deprecation
Retire when MBL has dedicated portfolio management and fund reporting software with automated data aggregation from portfolio companies and LP-facing reporting portal.
