---
name: revops-gtm-kpi-tracker
description: "Track go-to-market KPIs across sales, marketing, and customer success for MBL Partners portfolio entities. Use when the user says 'GTM KPIs', 'go-to-market KPIs', 'commercial KPIs', 'sales KPIs', 'marketing KPIs', 'CS KPIs', 'customer success KPIs', 'revenue KPIs', 'KPI tracking', 'KPI report', 'KPI scorecard', 'KPI dashboard', 'key performance indicators', 'KPI review', 'which KPIs matter', 'what are our KPIs', 'set KPIs', 'track KPIs', 'KPI targets', 'KPI benchmarks', 'KPI definitions', 'which metrics to track', 'GTM metrics', 'commercial metrics', 'what should we measure', 'what metrics matter for sales', 'what metrics matter for CS', 'what metrics matter for marketing', 'KPI by function', 'KPI by entity', or 'performance metrics'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|portfolio>] [--function <sales|marketing|cs|all>] [--tier <1|2|all>] [--period <monthly|quarterly|annual>]"
---

# RevOps GTM KPI Tracker

Track go-to-market KPIs across sales, marketing, and customer success for MBL Partners portfolio entities — establishing a tiered KPI framework (Tier 1: monthly executive metrics; Tier 2: quarterly operational metrics) that gives entity CEOs and Dr. Lewis the right level of visibility at the right cadence without overwhelming them with data.

## When to Use
- Monthly Tier 1 KPI report for entity CEO
- Quarterly Tier 2 KPI review for entity CEO + Dr. Lewis
- Setting KPI targets for a new entity or new fiscal year
- Diagnosing which KPI is the root cause of a commercial performance gap

## GTM KPI Framework

```
TIER 1 KPIS (MONTHLY — ENTITY CEO + DR. LEWIS):
  [These are the 8 most important commercial metrics; reported every month]
  
  1. Closed Revenue (MTD/QTD/YTD vs. target)
  2. Forecast accuracy (Commit forecast vs. actual for prior period)
  3. Pipeline coverage ratio (Stage 3+ / monthly revenue target)
  4. New MQLs (vs. monthly target)
  5. MQL → SQL conversion rate (vs. benchmark)
  6. Marketing pipeline contribution % (vs. ≥30% target)
  7. GRR trailing 12 months (vs. ≥91% target)
  8. NRR trailing 12 months (vs. ≥105% target)
  
  Reporting format: simple table; traffic light (✅⚠️🔴); vs. target and vs. prior month; BLUF

TIER 2 KPIS (QUARTERLY — ENTITY CEO + DR. LEWIS — MORE OPERATIONAL):
  Sales Tier 2:
    - Close rate from Stage 4 (qualified): % of Stage 4 deals that close; vs. entity benchmark
    - Average deal ACV: trend up or down?
    - Average days to close (total cycle): vs. benchmark
    - Sales activity volume: calls/emails/meetings per week per rep; vs. minimum
    - Win rate by competitor: which competitors are we beating / losing to?
    
  Marketing Tier 2:
    - Cost per lead (CPL) by channel: which channels are most efficient?
    - Email performance: open rate / click rate / unsubscribe rate
    - SEO / organic: keyword rankings trend; organic traffic trend
    - Event ROI: pipeline generated / event spend; by event
    - Social reach / engagement: LinkedIn performance (entity-specific)
    
  CS Tier 2:
    - NPS score (employer-level; Allevio): trend; target ≥50
    - Utilization rate (Allevio; aggregate): % of enrolled employees accessing care
    - Handoff quality score average (quarterly): target ≥3.0
    - Expansion pipeline: open expansion deal count and value
    - Time-to-value: days from contract signature to first employee using benefit (Allevio)
    
ENTITY-SPECIFIC KPI NOTES:
  Allevio:
    All utilization metrics: aggregate / de-identified employer-level; no employee-level data
    GRR/NRR: primary health metrics (subscription model)
    MQL: AZ employer ≥25 EE + 2 engagements
    Marketing pipeline contribution target: ≥30% (supplement broker channel)
    
  Column6:
    ARR proxy: annualized IO run rate (not subscription)
    Repeat IO rate (≥60%): primary retention metric (not GRR — IO-based model)
    IO value growth (second IO vs. first): expansion proxy
    MQL: agency + confirmed CTV budget ≥$250K
    
  HIVE:
    Revenue is production-based: BOE/month × realized WTI price
    KPIs: BOE/month; WTI realized price; royalty rate; new leases signed; acreage under lease
    No pipeline/MQL framework applies
    
KPI REVIEW CADENCE:
  Tier 1 (monthly): entity CEO receives report by 7th of following month; Dr. Lewis reviews before send
  Tier 2 (quarterly): entity CEO + Dr. Lewis meet by Day 20 of Q+1 month; review together
  Annual: entity CEO + Dr. Lewis + Matt Mathison: full-year KPI review; next year KPI targets set
  KPI target changes: entity CEO + Dr. Lewis must agree; any change >10% of target requires justification
```

## Output Format

```markdown
# GTM KPI Report — [Entity] — [Month] [Year]
**Tier 1 (Executive)** | **Prepared by:** Dr. Lewis | **For:** Entity CEO

---

## Tier 1 KPIs — Monthly

| KPI | MTD / Period | Target | vs. Target | vs. Prior Month | Status |
|-----|-------------|--------|-----------|----------------|--------|
| Closed Revenue | $X | $X | X% | ±X% | ✅/⚠️/🔴 |
| Pipeline Coverage | X.X× | ≥3.0× | | | |
| New MQLs | [N] | ≥20 | X% | | |
| MQL → SQL Rate | X% | ≥35% | | | |
| Mktg Pipeline Contribution | X% | ≥30% | | | |
| GRR (T12) | X% | ≥91% | | | |
| NRR (T12) | X% | ≥105% | | | |
| Forecast Accuracy (prior) | X% | ±10% | | | |

---

## BLUF
[3 bullets: win / watch / action — from the Tier 1 data above]
```

## Output Contract
- KPIs must be owned, not just reported — a KPI report that shows NRR at 97% (below 105% target) has value only if someone is responsible for taking action; Dr. Lewis assigns every Tier 1 KPI to an owner (entity CEO; CS lead; marketing lead; AE) and the quarterly Tier 2 review includes a "who is responsible and what are they doing?" section; metrics without owners are dashboards without consequences; metrics with owners and actions are management tools
- Fewer metrics reported monthly is better than more — the Tier 1 framework has exactly 8 metrics; adding a 9th metric to the monthly report dilutes focus; the Tier 1 metrics were chosen because they are the leading indicators of commercial health (pipeline coverage → forecast → revenue) and the lagging indicators of quality (GRR; NRR; forecast accuracy); everything else belongs in Tier 2; if an entity CEO asks to add a metric to Tier 1, Dr. Lewis's first question is "which of the 8 current Tier 1 metrics is less important than this new metric?" — the answer almost always reveals that the new metric belongs in Tier 2
- HITL required: Tier 1 KPI report → Dr. Lewis reviews before delivery to entity CEO; Tier 2 quarterly review → entity CEO + Dr. Lewis meet in person or Zoom; annual KPI target setting → entity CEO + Dr. Lewis + (Matt Mathison for major changes); KPI target change >10% → entity CEO + Dr. Lewis agree with written justification; Allevio utilization or NPS data → Dr. Lewis confirms aggregate-only before including in report

## System Dependencies
- **Reads from:** GoHighLevel (pipeline; MQL; closed revenue; deal stages; CS health scores); revops-forecast-builder (forecast accuracy inputs); revops-renewal-ops-manager (GRR/NRR; renewal health); mktg-analytics-manager (marketing pipeline contribution; email; channel performance); revops-revenue-data-model (KPI definitions and calculation standards)
- **Writes to:** Monthly Tier 1 KPI reports (SharePoint → [Entity] → RevOps → KPIs → [Month]); quarterly Tier 2 KPI reports; KPI target documents; Dr. Lewis portfolio KPI summary; annual KPI target setting records
- **HITL Required:** Tier 1 report → Dr. Lewis reviews; quarterly Tier 2 → entity CEO + Dr. Lewis; annual targets → entity CEO + Dr. Lewis; target change >10% → entity CEO + Dr. Lewis; Allevio utilization/NPS → Dr. Lewis confirms aggregate

## Test Cases
1. **Golden path:** Allevio August Tier 1 KPIs. Closed Revenue: $126K/$140K target (90% ⚠️ — slightly below; QTD $206K/$420K 49% on track). Pipeline Coverage: 3.1× ✅. MQLs: 22/20 ✅. MQL→SQL: 38% ✅. Marketing pipeline contribution: 31% ✅. GRR T12: 93% ✅. NRR T12: 104% ⚠️ (just below 105% target). Forecast accuracy: ±8% ✅. BLUF: Win: Pipeline coverage strong (3.1×) and GRR healthy (93%). Watch: NRR just below 105% target — expansion pipeline is thin. Action: CS lead to identify top 5 expansion opportunities in existing employer base this week; entity CEO to initiate 2 expansion conversations by August 25. Report delivered to entity CEO August 7. Tier 2 quarterly review scheduled September 18.
2. **Edge case:** Entity CEO wants to replace GRR with "logo churn rate" in Tier 1 because "GRR sounds too technical" → Dr. Lewis: "I understand — GRR can feel abstract. Let me explain why I prefer GRR over logo churn: logo churn rate treats a $120K ACV employer the same as an $18K ACV employer; GRR weights by revenue, so losing one large employer shows up more accurately than losing one small employer. For a Tier 1 metric that informs Matt Mathison's view of Allevio, GRR is the right measure. What I'll do in the dashboard: I'll label it 'Gross Revenue Retention (GRR) — what % of ARR renews each year' with a one-sentence explanation. The terminology barrier is a communication problem I can solve without changing the metric."
3. **Adversarial:** Entity CEO stops reading the Tier 1 monthly KPI report because "it's too much data" → Dr. Lewis: "If the Tier 1 report is too much, I've made it too long. The Tier 1 report should be one page: 8 metrics in a table; 3 bullets at the top; done. If it's more than one page, something is wrong with the format. Let me rebuild the format: BLUF at top (3 bullets; 5 lines max); table with 8 metrics; any critical alert in red. Total reading time: 90 seconds. If the entity CEO is still not reading it, I want to understand why — is it the format, the cadence, or the content? A CEO who doesn't read the revenue metrics report doesn't have visibility into their commercial health, and that's a risk I take seriously."

## Audit Log
Monthly Tier 1 KPI reports (permanent). Quarterly Tier 2 KPI reports (permanent). KPI target documents with entity CEO + Dr. Lewis sign-off. Annual KPI target setting records. Target change records with justification. Allevio aggregate-only data confirmation records.

## Deprecation
Tier 1 KPI set reviewed annually. Tier 2 KPIs reviewed when entity commercial model matures. Targets reviewed annually (Q4 for next year). HIVE KPIs reviewed when production model changes. Column6 KPIs reviewed when agency relationship model matures. HIPAA metric compliance reviewed when Allevio data practices change.
