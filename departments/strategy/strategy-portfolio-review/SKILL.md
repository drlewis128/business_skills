---
name: strategy-portfolio-review
description: "Conduct the quarterly portfolio company review — performance, thesis, and priorities. Use when the user says 'portfolio review', 'quarterly review', 'portfolio performance', 'portfolio update', 'how are the portfolio companies doing', 'portfolio health', 'portfolio status', 'quarterly portfolio', 'portfolio check-in', 'portfolio assessment', 'portfolio scorecard', 'portfolio summary', 'review the portfolio', 'portfolio company performance', or 'Matt portfolio review'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--scope <full|brief|single-entity>] [--entity <company name>]"
---

# Portfolio Review

Conduct the quarterly MBL Partners portfolio review — assessing each portfolio company's performance against plan, thesis validity, value creation progress, and strategic priorities for the next quarter. The quarterly review is Matt Mathison's primary mechanism for staying current on portfolio health and making resource allocation decisions. At PE portfolio scale, the review must be efficient (Matt Mathison's time is the most constrained resource), honest (thesis drift discovered late is more expensive than thesis drift discovered early), and action-oriented (the review produces decisions, not just status updates).

## When to Use
- End of each quarter — Q1/Q2/Q3/Q4 portfolio review
- Matt Mathison asks "how is the portfolio doing?"
- A portfolio company needs elevated attention — ad-hoc review
- LP reporting season — prepare the portfolio summary for the LP report
- Annual planning — where does each company stand going into the year?

## Portfolio Review Framework

```
Review structure (MBL standard — all portfolio companies):

Per company (15 minutes Matt Mathison time each):
  1. Financial performance vs. plan (5 metrics max)
  2. Thesis status: Intact / Under pressure / Broken
  3. VCP progress: EBITDA impact realized vs. plan
  4. Top risk: One sentence
  5. Quarter priority: What we're focused on next 90 days
  6. Action from Matt Mathison: Nothing / Specific decision needed
  
Portfolio-level view:
  Overall health: Green / Yellow / Red
  Capital deployment: Deployed vs. available; any capital calls anticipated?
  Exit timeline update: Any company approaching exit window?
  LP distribution: Any distributions planned or delayed?
  
Portfolio company scoring (per quarter):
  Financial: On plan / Behind / Ahead — revenue, EBITDA, cash
  Thesis: Intact / Under pressure / Broken
  Execution: On track / Slipping — VCP initiatives
  Team: Stable / Risk — key person changes, turnover
  
  Green: Financial on plan or ahead; thesis intact; execution on track; team stable
  Yellow: Any one area at risk but recoverable with specific action
  Red: Two+ areas at risk; thesis under pressure; or any deal-breaker condition
  
Portfolio companies:
  Allevio (Healthcare MSO): Patient volume, payer mix, billing lag, HIPAA status
  HIVE Partners (Oil & Gas): Production BBL/day, LOE/BOE, WTI sensitivity, UT DOGM
  Column6/Siprocal (CTV/Media): Advertiser revenue, match rate, platform metrics
  MBL Partners (Corporate): AI orchestration progress, deal flow, LP relations
```

## Output Format

```markdown
# MBL Partners Portfolio Review — [Q/Year]
**Date:** [Date] | **Prepared by:** Dr. John Lewis | **Matt Mathison reviewed:** ✅ [Date]
**Portfolio health:** 🟢 Green — [N] / 🟡 Yellow — [N] / 🔴 Red — [N]

---

## Portfolio Scorecard

| Company | Revenue vs. plan | EBITDA vs. plan | Thesis | Execution | Team | Overall |
|---------|----------------|----------------|--------|-----------|------|---------|
| Allevio | [+/-X%] | [+/-X%] | ✅/⚠️/❌ | 🟢/🟡/🔴 | 🟢/🟡 | 🟢/🟡/🔴 |
| HIVE | | | | | | |
| Column6 | | | | | | |

---

## Allevio — [Q/Year]

**Financial snapshot:**
| Metric | Plan | Actual | Variance |
|--------|------|--------|---------|
| Revenue (QTD) | $[X]K | $[X]K | +/-[X]% |
| EBITDA (QTD) | $[X]K | $[X]K | +/-[X]% |
| EBITDA margin | [X]% | [X]% | |
| Patients under care | [N] | [N] | |
| Billing lag (days) | [N] | [N] | |

**Thesis status:** ✅ Intact | ⚠️ Under pressure — [specific] | ❌ Broken — [specific]

**VCP progress:**
| Initiative | Projected $ impact | Realized YTD | Status |
|-----------|------------------|-------------|--------|
| [Provider add] | +$180K | +$90K | 🟡 — 50% realized; provider started Q2 |
| [Billing lag reduction] | +$60K | +$28K | 🟢 — On track |

**Top risk:** [One sentence — specific]
**Quarter priority (Q[N]):** [One sentence — specific focus for next 90 days]
**Action from Matt Mathison:** [None needed / Specific: approve provider hire at $X compensation]

---

## HIVE Partners — [Q/Year]

**Financial snapshot:**
| Metric | Plan | Actual | Variance |
|--------|------|--------|---------|
| Production (BBL/day avg) | [N] | [N] | |
| Revenue (QTD) | $[X]K | $[X]K | |
| LOE ($/BOE) | $[N] | $[N] | |
| WTI average (QTD) | $[N] | $[N] | |
| EBITDA (QTD) | $[X]K | $[X]K | |

**Thesis status:** [same structure]
**VCP progress:** [same structure]
**Top risk:** [WTI price / UT DOGM permit / Production decline]
**Quarter priority:** [Specific]
**Action from Matt Mathison:** [None / Specific]

---

## Column6/Siprocal — [Q/Year]

[Same structure — metrics: Advertiser revenue, match rate, platform uptime, key advertiser count]

---

## Portfolio Capital Summary

| | Deployed | Available | Notes |
|-|---------|----------|-------|
| Total committed capital | $[X]M | — | |
| Deployed across portfolio | $[X]M | — | |
| Available for deployment | — | $[X]M | |
| Anticipated capital calls next 90 days | — | $[X]M | [Entity and purpose] |
| LP distributions paid YTD | $[X]M | — | |
| Planned Q[N] distributions | $[X]M | — | [Entity] |

---

## Exit Timeline Update

| Company | Target exit | Exit type | Readiness | Change from last quarter |
|---------|------------|----------|---------|------------------------|
| Allevio | [Year] | Strategic sale | 🟡 | [No change / Accelerating / Delayed] |
| HIVE | [Year] | Strategic/financial | | |
| Column6 | [Year] | Platform acquisition | | |

---

## Decisions Required from Matt Mathison

| Decision | Entity | Context | Options | Recommendation |
|---------|--------|---------|---------|----------------|
| [Provider compensation approval] | Allevio | New NP at $145K | Approve / Counter | Approve — market rate; thesis-critical |
| [CapEx hold decision] | HIVE | WTI at $62 — pause Q3 completion? | Pause / Proceed | Pause — Scenario B trigger hit |

---

## Matt Mathison Portfolio Brief (2-min version)

Portfolio [Q/Year]: [N] green, [N] yellow, [N] red. Allevio: [Status — one sentence]. HIVE: [Status — one sentence]. Column6: [Status — one sentence]. Capital: $[X]M deployed; $[X]M available; [N] LP distribution [planned/paid]. Decisions needed: [N] — [Top decision in one sentence]. Next quarter focus: [Top cross-portfolio priority in one sentence].
```

## Output Contract
- Lead with the variance, not the narrative — the Matt Mathison brief leads with what's off plan (positive or negative) and why, not with a summary of what happened; "Allevio revenue $380K — 8% below plan due to provider turnover in March; recovery on track for Q3" is information; "Allevio had a challenging quarter with provider transitions and market headwinds" is not; Dr. Lewis presents actuals, plan, variance, root cause, and recovery outlook — in that order
- One "action from Matt Mathison" per company maximum — the review should not generate a list of 8 decisions Matt Mathison needs to make for each company; if there are 8 decisions, 7 of them should have been made by the CEO or Dr. Lewis within their authority; Matt Mathison's decision gate is for significant capital commitments, thesis-level changes, and actions that affect LP distributions or returns; Dr. Lewis pre-resolves all other decisions before the quarterly review
- The review must be honest about thesis status — a portfolio company that is consistently behind plan but rated "thesis intact" is a governance failure; if the thesis depends on specific milestones being hit on a specific timeline and those milestones are slipping, the thesis is under pressure; Dr. Lewis rates thesis status based on evidence, not optimism; "under pressure" is not a failure — it is an honest assessment that triggers a response; "broken" is rare but critical to identify early enough to preserve any remaining option value
- HITL required: Dr. Lewis prepares the full portfolio review; each portfolio company CEO reviews their section for accuracy before it goes to Matt Mathison; Matt Mathison reviews quarterly; all decisions in the "Decisions Required" table require Matt Mathison response; Dr. Lewis does not proceed on any Matt Mathison decision item without explicit approval

## System Dependencies
- **Reads from:** Financial statements (QuickBooks — each entity), VCP tracking (strategy-value-creation-plan), thesis documents (strategy-investment-thesis), exit plans (strategy-exit-planner), compliance status (rc-compliance-ops-review), KPI dashboards (entity-specific)
- **Writes to:** Quarterly portfolio review document (SharePoint/Strategy/Portfolio/Reviews/[Q-Year]/); Matt Mathison portfolio brief; LP quarterly report inputs (strategy-lp-reporting); decision log; next-quarter priority commitments
- **HITL Required:** Dr. Lewis prepares; each CEO reviews their section; Matt Mathison reviews full document; all "Decisions Required" items require Matt Mathison response before Dr. Lewis acts

## Test Cases
1. **Golden path:** Q2 quarterly review → Allevio: Revenue $410K (plan $425K, -3.5%); EBITDA $74K (plan $85K, -12.9%); variance: provider vacancy 6 weeks dragged revenue and EBITDA; new provider started June 15; recovery expected Q3; thesis intact; top risk: billing lag still 42 days (target 35); quarter priority: billing lag reduction to 38 days; Matt Mathison action: none; HIVE: Production 188 BBL/day (plan 185, +1.6%); LOE $26.50/BOE (plan $28 — positive variance); WTI Q2 avg $68; EBITDA $820K (plan $740K, +10.8%); thesis intact; outperforming on LOE; top risk: WTI volatility; quarter priority: complete 1 additional well completion in Q3 window; Matt Mathison action: approve $280K Q3 completion CapEx; Column6: Revenue $1.2M (plan $1.1M, +9%); match rate 71% (plan 68%); top advertiser now 45% of revenue (concentration flag); thesis intact but concentration increasing; action from Matt Mathison: approve outreach to 3 new advertiser targets to reduce concentration; portfolio: 2 green (HIVE, Column6), 1 yellow (Allevio — below plan but recovering); capital: $X deployed; no distributions this quarter; Matt Mathison reviews and approves HIVE CapEx and Column6 advertiser outreach
2. **Edge case:** HIVE EBITDA is positive but a UT DOGM permit violation has been discovered → This is a regulatory event that changes the risk profile regardless of financial performance; the thesis (O&G production in Uinta Basin) depends on regulatory good standing; the permit violation creates potential production halt, remediation cost, and permit revocation risk; HIVE status changes from Green to Yellow immediately; Dr. Lewis adds to the portfolio review as a special item: "HIVE — Regulatory event: UT DOGM permit violation [Date]; remediation plan in progress; attorney engaged; production continues pending resolution; worst-case cost $85K; Matt Mathison action: approve remediation budget and attorney engagement"; Matt Mathison reviews and approves
3. **Adversarial:** CEO of Allevio wants to present their own section of the portfolio review to Matt Mathison directly, bypassing Dr. Lewis's assessment → The CEO presenting their own performance creates a principal-agent conflict — the CEO has incentive to frame performance favorably; Dr. Lewis's role is to provide Matt Mathison with an independent assessment, not to relay the CEO's narrative; Dr. Lewis discusses this with Matt Mathison: the CEO is welcome to add commentary or present alongside the review, but the financial actuals, thesis status, and Dr. Lewis's risk assessment remain Dr. Lewis's independent view; Matt Mathison wants both perspectives and decides how to structure the review; Dr. Lewis does not cede the independent assessment function

## Audit Log
Quarterly portfolio reviews retained permanently (PE fund track record). CEO review confirmation records retained. Matt Mathison approval/decision records retained. Thesis status history retained (timeline of when thesis status changed). VCP realization records retained quarterly.

## Deprecation
Retire when MBL develops a portfolio operations function with dedicated monitoring — with Dr. Lewis preparing the strategic and compliance portions while a CFO or portfolio ops team prepares the financial analysis.
