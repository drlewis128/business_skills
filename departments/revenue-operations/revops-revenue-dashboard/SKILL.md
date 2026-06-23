---
name: revops-revenue-dashboard
description: "Build and maintain the revenue dashboard for MBL Partners portfolio entities. Use when the user says 'revenue dashboard', 'GTM dashboard', 'commercial dashboard', 'pipeline dashboard', 'sales dashboard', 'revenue metrics', 'dashboard report', 'revenue overview', 'what are our revenue numbers', 'portfolio revenue', 'entity revenue summary', 'revenue snapshot', 'revenue health', 'commercial performance', 'portfolio commercial summary', 'how is revenue doing', 'revenue report for Matt', 'revenue report for the board', 'revenue scorecard', 'KPI dashboard', 'revenue KPIs', 'commercial KPIs', 'revenue tracking', 'how are we tracking to target', 'monthly revenue report', 'quarterly revenue report', 'revenue update', 'commercial update', or 'revenue briefing'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|portfolio>] [--period <monthly|quarterly>] [--audience <entity-ceo|dr-lewis|matt-mathison>] [--action <build|update|present>]"
---

# RevOps Revenue Dashboard

Build and maintain the revenue dashboard for MBL Partners portfolio entities — delivering a structured, BLUF-first commercial performance summary that gives entity CEOs and Matt Mathison real-time visibility into pipeline, revenue, and retention without having to navigate raw CRM reports. The dashboard is the commercial single source of truth for leadership.

## When to Use
- Monthly revenue dashboard for entity CEO
- Quarterly portfolio commercial summary for Matt Mathison
- Pre-board or pre-investor revenue briefing
- Ad hoc commercial performance question from Dr. Lewis or Matt Mathison

## Revenue Dashboard Framework

```
DASHBOARD STRUCTURE (BLUF-FIRST):

  SECTION 1 — EXECUTIVE SUMMARY (BLUF):
    Three bullets maximum: what's working; what needs attention; recommended action
    Numbers-driven: specific metrics, not adjectives
    No more than 5 lines total before the data sections
    
  SECTION 2 — REVENUE PERFORMANCE:
    MTD closed revenue vs. monthly target ($ and %)
    QTD closed revenue vs. quarterly target
    YTD closed revenue vs. annual target
    Forecast (Commit / Upside): from revops-forecast-builder
    
  SECTION 3 — PIPELINE HEALTH:
    Coverage ratio (Stage 3+ / monthly target): vs. benchmark (≥3.0× Allevio; ≥3.5× Column6)
    Stage distribution (% in early vs. late stages)
    New pipeline created MTD / QTD
    Pipeline velocity trend (avg days to close; vs. prior quarter)
    
  SECTION 4 — RETENTION METRICS:
    GRR (trailing 12 months): vs. ≥91% target
    NRR (trailing 12 months): vs. ≥105% target
    Upcoming renewals at risk (count; ARR at risk)
    
  SECTION 5 — DEMAND GEN:
    MQL volume MTD vs. target
    MQL → SQL conversion rate vs. benchmark
    Top-performing lead source this month
    
  SECTION 6 — MARKETING ROI:
    Marketing pipeline contribution %: vs. ≥30% target
    Marketing ROI (12-month lag): vs. ≥3× benchmark
    
ENTITY-SPECIFIC CONSIDERATIONS:
  Allevio: all data is aggregate employer-level (HIPAA); no employee-level data in dashboard
  Column6: IO-based revenue; include repeat IO rate; no client company names in reports to Matt Mathison unless approved
  HIVE: production-based; include WTI spot and realized price; BOE/month; royalty revenue
  
DASHBOARD CADENCE:
  Monthly entity dashboard: Dr. Lewis builds by the 5th of each month (prior month data)
  Entity CEO receives: 5th-7th of each month
  Quarterly portfolio dashboard: Dr. Lewis builds by the 10th of Q end+1 month
  Matt Mathison receives: 10th-12th of each quarter
  
HIPAA (ALLEVIO):
  Dashboard sent to Matt Mathison: aggregate metrics only (ARR; GRR; NRR; pipeline; MQL)
  No employer company names in portfolio-level dashboard without entity CEO permission
  No employee-level data anywhere in any dashboard
  Dr. Lewis reviews all Allevio data in dashboard before send
```

## Output Format

```markdown
# Revenue Dashboard — [Entity / Portfolio] — [Month] [Year]
**Prepared by:** Dr. Lewis | **For:** [Entity CEO / Matt Mathison] | **Data as of:** [Date]

---

## EXECUTIVE SUMMARY
- **Win:** [Top positive metric this month — specific number]
- **Watch:** [Top concern — specific metric and gap]
- **Action:** [One recommended action — owner — timeframe]

---

## Revenue Performance

| Metric | Actual | Target | % of Target | vs. Prior Month |
|--------|--------|--------|------------|----------------|
| MTD Closed Revenue | $X | $X | X% | ±X% |
| QTD Closed Revenue | $X | $X | X% | |
| YTD Closed Revenue | $X | $X | X% | |
| Forecast (Commit) | $X | | | |

---

## Pipeline Health

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Coverage ratio | X.X× | ≥3.0× | ✅/⚠️ |
| New pipeline MTD | $X | $X | |
| Avg days to close | X days | [Benchmark] | |

---

## Retention

| Metric | Trailing 12M | Target | Status |
|--------|-------------|--------|--------|
| GRR | X% | ≥91% | ✅/⚠️ |
| NRR | X% | ≥105% | |
| Renewals at risk (next 60d) | $X ARR / [N] accounts | | |

---

## Demand Gen

| Metric | MTD | Target | Status |
|--------|-----|--------|--------|
| MQL volume | [N] | ≥20 | ✅/⚠️ |
| MQL → SQL conversion | X% | ≥35% | |
| Top lead source | [Source] | | |

---

## Marketing ROI
Pipeline contribution: X% (target ≥30%)  |  Marketing ROI: X× (target ≥3×)
```

## Output Contract
- BLUF is not optional at the executive level — entity CEOs and Matt Mathison receive hundreds of business communications per month; a revenue dashboard that begins with a page of methodology explanation, data definitions, and context-setting has already lost 50% of its audience before the numbers appear; Dr. Lewis writes the executive summary first (3 bullets: win, watch, action) and puts it at the top; this is not a style preference — it is a discipline that signals that the preparer has done the work of synthesis and is delivering a decision-relevant briefing, not a data dump
- The dashboard never hides bad news — a month where coverage ratio is at 1.8× and GRR dropped to 87% is a month that needs honest reporting; the BLUF "Watch" bullet and the "Action" bullet exist precisely for this scenario; Dr. Lewis reports what the data shows, frames the recommended action clearly, and lets the entity CEO decide; a dashboard that cherry-picks good metrics and buries concerning ones is worse than no dashboard — it creates false confidence and delays necessary action; THRIVE Integrity applies to every number in the dashboard
- HITL required: Allevio data in dashboard → Dr. Lewis reviews before send (aggregate only; no employer names without permission; no employee data); Matt Mathison portfolio dashboard → Dr. Lewis reviews and signs off; any dashboard presented to LPs or investors → Matt Mathison reviews; HIVE WTI sensitivity in dashboard → Dr. Lewis validates WTI price assumption; quarterly portfolio dashboard → Dr. Lewis builds and presents personally

## System Dependencies
- **Reads from:** GoHighLevel (pipeline; MQL; deal stages; closed revenue; retention health); revops-forecast-builder (forecast inputs); revops-renewal-ops-manager (GRR/NRR; at-risk renewals); mktg-analytics-manager (marketing ROI; pipeline contribution; MQL volume); revops-revenue-data-model (metric definitions; calculation standards)
- **Writes to:** Monthly entity dashboard (SharePoint → [Entity] → RevOps → Dashboard → [Month]); quarterly portfolio dashboard (SharePoint → Portfolio → RevOps → Dashboard → [Quarter]); Dr. Lewis delivery email to entity CEO and/or Matt Mathison
- **HITL Required:** Allevio data → Dr. Lewis reviews; Matt Mathison dashboard → Dr. Lewis; LP/investor presentation → Matt Mathison; HIVE WTI → Dr. Lewis validates; quarterly portfolio → Dr. Lewis builds and presents

## Test Cases
1. **Golden path:** Allevio July revenue dashboard. BLUF: Win: GRR 94% (above 91% target — retention is strong); Watch: Coverage ratio 2.4× (below 3.0× target — pipeline needs attention this month); Action: Entity CEO and AE to add 6 Stage 3-4 deals this week to restore coverage ratio. Revenue: MTD closed $14K (10% of $140K monthly target — July is a slow close month; QTD $56K of $420K Q3 target — on track). Pipeline: $312K Stage 3+ / $140K target = 2.4× ⚠️. Retention: GRR 94% ✅; NRR 107% ✅; 1 account at renewal risk next 30d ($18K ARR — Yellow health score). Demand Gen: MQL 17/20 target (⚠️ slight miss; broker referrals strong this month; event gap). Marketing ROI: pipeline contribution 33% ✅; marketing ROI 3.1× ✅. Dashboard delivered to entity CEO July 7.
2. **Edge case:** Matt Mathison asks for a specific Allevio employer name in the portfolio dashboard because he remembers hearing about a "big employer deal closing this quarter" → Dr. Lewis: "I can confirm we have an employer deal of $X ACV expected to close this quarter and it's in Stage 7. I won't include the employer name in the portfolio dashboard document without the entity CEO's confirmation that they're comfortable sharing that prospect's identity at the portfolio level. In the dashboard I'll note: '$X ACV Stage 7 opportunity — expected close by [date].' If Matt needs the name for a specific reason (e.g., he has a connection there), I'll loop in the entity CEO and make the introduction directly."
3. **Adversarial:** Entity CEO asks Dr. Lewis to adjust the coverage ratio target downward ("3× is too hard to hit in this market") → Dr. Lewis: "I understand the pressure. But the 3× target is not arbitrary — it's derived from our close rate. If we close 35% of Stage 4 qualified deals, we need 3× pipeline to hit our monthly number. If we lower the coverage target without also improving the close rate, we're accepting a higher probability of missing the revenue target. What I can do: if the close rate has genuinely improved (and I can run that analysis), the required coverage ratio decreases. Let me pull the trailing 12-month close rate from Stage 4 and we'll recalculate the required coverage ratio from the math. If the close rate is 45% now, the required coverage ratio is closer to 2.2×. But I need the data to support the change — not just the feeling that 3× is too hard."

## Audit Log
Monthly entity revenue dashboards retained permanently. Quarterly portfolio dashboards retained permanently. Dr. Lewis delivery records (date; recipient; version). Allevio data review confirmation records. Matt Mathison delivery records. LP/investor presentation records. Dashboard version history. Any data correction records post-delivery.

## Deprecation
Dashboard structure reviewed annually. Metric targets reviewed when entity growth stage changes. HIPAA data handling reviewed when regulations change. Portfolio dashboard reviewed when portfolio composition changes. Delivery cadence reviewed when entity CEO or Matt Mathison preferences change.
