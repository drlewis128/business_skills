---
name: finance-kpi-dashboard
description: "Build the Finance function KPI dashboard. Use when the user says 'finance KPIs', 'finance metrics', 'finance performance dashboard', 'finance team KPIs', 'financial operations metrics', 'finance function dashboard', 'measure the finance function', 'finance health check', 'accounting KPIs', or 'how is the finance function performing'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or 'portfolio'>] [--period <monthly|quarterly>]"
---

# Finance KPI Dashboard

Build the Finance function KPI dashboard — a view of how well the finance function itself is operating across all MBL portfolio companies. This is not the business financial dashboard (that's the management reporting suite); this is the operational scorecard for the Finance function: close speed, forecast accuracy, compliance rate, AP health, AR health, and cost efficiency. It answers: "Is Dr. Lewis running Finance well?"

## When to Use
- Monthly or quarterly — Finance function self-assessment
- Matt Mathison asks "how is the Finance function performing?"
- Annual review of Finance function capacity and effectiveness
- Benchmarking Finance performance before hiring additional finance staff
- Demonstrating Finance value to Matt Mathison beyond just "keeping the books"

## Finance KPI Categories

```
Five Finance function KPI categories:

1. CLOSE QUALITY: How accurate and fast are the books?
   → Days to close; reconciliation completion rate; restatement count

2. FORECAST ACCURACY: How reliable are our financial projections?
   → Revenue forecast accuracy; EBITDA forecast accuracy; budget vs. actual

3. COMPLIANCE RATE: Are all obligations met on time?
   → Tax deadlines; filing deadlines; audit readiness

4. WORKING CAPITAL HEALTH: Is working capital well-managed?
   → DSO trend; DPO optimization; AP overdue rate

5. FINANCE PARTNER VALUE: Is Finance enabling better decisions?
   → Analyses delivered; cost savings identified; decision support quality
```

## Output Format

```markdown
# Finance Function KPI Dashboard
**Period:** [Month / Quarter <YYYY>]
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison
**Date:** <Date>

---

## TL;DR

Finance function health: 🟢/🟡/🔴
Strongest area: [1 sentence]
Primary improvement needed: [1 sentence]
Matt Mathison action needed: [Specific — or "None this period"]

---

## Close Quality

| KPI | Target | [Entity 1] | [Entity 2] | [Entity 3] | Trend |
|-----|--------|------------|------------|------------|-------|
| Days to close (monthly) | ≤7 days | [N] days | [N] days | [N] days | ↑/→/↓ |
| Reconciliations by Day 5 | 100% | [X%] | [X%] | [X%] | |
| Restatements (YTD) | 0 | [N] | [N] | [N] | |
| Management report by Day 10 | 100% | [X%] | [X%] | [X%] | |

**Close quality grade:** 🟢/🟡/🔴

---

## Forecast Accuracy

| KPI | Target | [Entity 1] | [Entity 2] | Portfolio | Trend |
|-----|--------|------------|------------|----------|-------|
| Revenue forecast accuracy (actual vs. forecast) | ±5% | [±X%] | [±X%] | [±X%] | |
| EBITDA forecast accuracy | ±10% | [±X%] | | | |
| Annual budget delivery (on time?) | By Nov 30 | ✅/❌ | ✅/❌ | | |
| Rolling forecast frequency | Monthly | ✅/❌ | ✅/❌ | | |

**Forecast accuracy grade:** 🟢/🟡/🔴

---

## Compliance Rate

| KPI | Target | Status | Last completed | Next due |
|-----|--------|--------|---------------|---------|
| Federal tax filings — on time | 100% | [X%] | [Most recent] | [Next] |
| State tax filings — on time | 100% | [X%] | | |
| Payroll tax deposits — on time | 100% | [X%] | | |
| 1099s filed by Jan 31 | 100% by Jan 31 | ✅/❌ (annual) | | |
| Annual controls assessment | 100% of entities | [X/N complete] | | |
| Vendor W-9s on file for 1099 vendors | 100% | [X%] | | |

**Compliance grade:** 🟢/🟡/🔴

---

## Working Capital Health

| KPI | Target | [Entity 1] | [Entity 2] | Trend |
|-----|--------|------------|------------|-------|
| DSO (Days Sales Outstanding) | <[35-40] days | [N] days | [N] days | ↑/→/↓ |
| AP overdue (>5 days past due) | $0 | $[X] | $[X] | |
| DPO (optimizing payment timing?) | At-terms | [N] days | [N] days | |
| Bad debt reserve coverage | Per policy | [X%] | [X%] | |
| Cash position vs. reserve | ≥1× reserve | [X.X]× | [X.X]× | |

**Working capital grade:** 🟢/🟡/🔴

---

## Finance Partner Value

| KPI | Target | Q[N] | YTD |
|-----|--------|------|-----|
| Financial analyses delivered (unit econ, scenarios, cost reduction) | ≥[N] per quarter | [N] | [N] |
| Cost savings identified (hard savings from Finance initiatives) | $[X]/year | $[X] | $[X] |
| Decision support delivered (models, analyses on specific decisions) | ≥[N] per quarter | [N] | [N] |
| Matt Mathison satisfaction with Finance | ≥8/10 | [Rating] | |

**Finance partner value grade:** 🟢/🟡/🔴

---

## Finance Function Summary

| Category | Grade | Key finding |
|---------|-------|------------|
| Close quality | 🟢/🟡/🔴 | [1 sentence] |
| Forecast accuracy | 🟢/🟡/🔴 | |
| Compliance | 🟢/🟡/🔴 | |
| Working capital | 🟢/🟡/🔴 | |
| Partner value | 🟢/🟡/🔴 | |
| **Overall Finance health** | 🟢/🟡/🔴 | |

**Top Finance initiative for next period:** [The one thing that would most improve Finance function performance]
```

## Output Contract
- Finance function KPIs always separated from business KPIs — the finance function dashboard is about Dr. Lewis's execution of the Finance function, not about whether Allevio grew revenue; every KPI in this dashboard measures Finance function quality, not business performance
- Multi-entity view always shown — the Finance function serves multiple portfolio companies; the dashboard must show performance by entity, not just a portfolio average; Allevio at 5-day close and HIVE at 12-day close are very different situations that get hidden in an average
- Matt Mathison satisfaction always solicited — the Finance function exists to serve Matt Mathison and the portfolio CEOs; if they don't find it valuable, the metrics don't matter; ask for the rating; document it; improve on it
- Trend direction always shown — a single-period close time of 8 days means something different if it's been improving (from 14 days) vs. getting worse (from 5 days); trend context is required for every KPI
- HITL required: Dr. Lewis prepares the dashboard; Matt Mathison receives it quarterly; any grade below 🟡 requires a specific improvement plan; Matt Mathison satisfaction rating requires direct solicitation at quarter end

## System Dependencies
- **Reads from:** Close calendar (actual dates vs. targets), forecast accuracy tracking (forecasts vs. actuals), compliance calendar, QuickBooks (AR aging, AP aging), Matt Mathison direct feedback
- **Writes to:** Finance function KPI dashboard (SharePoint/Finance/Function KPIs/); quarterly OKR review
- **HITL Required:** Dr. Lewis prepares; Matt Mathison receives quarterly; low grades require improvement plan; Matt Mathison satisfaction solicited directly

## Test Cases
1. **Golden path:** Q2 2026 Finance function dashboard → Close quality: Allevio 6 days, HIVE 8 days, Column6 9 days (target 7 — 2/3 met, Column6 improving from 12 days last quarter); grade: 🟡 (improving); Forecast accuracy: revenue ±3.8% (🟢), EBITDA ±6.2% (🟢); Compliance: 100% on all filings (🟢); Working capital: Allevio DSO 37 days (🟡 — target 35), no AP overdue (🟢), all entities above reserve (🟢); Partner value: unit economics delivered ✅, $43K cost savings identified ✅, 3 decision models ✅; Matt Mathison satisfaction: 8.5/10 (asked directly, received same day); Overall: 🟢; top initiative: Column6 close time — aiming for 7 days in Q3 through bookkeeping process improvement
2. **Edge case:** Matt Mathison hasn't responded to the satisfaction question after 5 days → follow up once: "Matt — wanted to check in on the Finance function satisfaction question. Any quick sense of how you'd rate Finance support this quarter? Even a 1-2 word response helps me track the right things." If still no response, document "no response received" and use the most recent available rating; don't leave the KPI blank indefinitely
3. **Adversarial:** Dr. Lewis is tempted to grade Finance function KPIs generously because the dashboard goes to Matt Mathison → resist; the Finance function dashboard is a management tool, not a performance review designed to impress; if Column6's close took 12 days, grade it as 🔴; if a tax deadline was missed, grade it as 🔴 with a remediation plan; Matt Mathison's ability to trust Finance depends on receiving honest assessments; a Finance function that self-reports all green metrics while performance is actually mixed is the same problem as any other management team that obscures bad news

## Audit Log
Finance function dashboards retained by quarter. Matt Mathison satisfaction ratings retained. Grade trends tracked across quarters. Improvement plans and outcomes retained.

## Deprecation
Retire when the Finance function has dedicated resources at each portfolio company who own their own KPI tracking and Dr. Lewis's role shifts to portfolio-level oversight with the Finance function dashboard being automated from underlying system data.
