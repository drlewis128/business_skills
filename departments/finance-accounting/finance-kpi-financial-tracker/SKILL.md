---
name: finance-kpi-financial-tracker
description: "Track financial KPIs for MBL Partners portfolio entities. Use when the user says 'financial KPIs', 'finance KPIs', 'financial metrics', 'key financial metrics', 'gross margin', 'EBITDA', 'EBITDA margin', 'operating margin', 'revenue per employee', 'CAC', 'customer acquisition cost', 'LTV to CAC', 'LTV:CAC', 'financial performance metrics', 'financial benchmarks', 'are we hitting our financial targets', 'financial KPI report', 'financial KPI dashboard', 'financial metric tracking', 'financial scorecard', 'how are we doing financially', 'financial health metrics', 'profitability metrics', 'efficiency metrics', 'unit economics', 'burn multiple', 'revenue efficiency', 'financial ratios', 'financial KPI trend', 'financial benchmark comparison', 'what KPIs should we track', 'financial metric definitions', or 'financial performance scorecard'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--period <monthly|quarterly|annual>] [--action <report|define|benchmark|trend>]"
---

# Finance KPI Financial Tracker

Track financial KPIs for MBL Partners portfolio entities — defining the key financial metrics for each entity, setting targets grounded in business model and stage, measuring actual performance monthly and quarterly, and surfacing trend data that shows whether each entity is improving, flat, or declining on financial health. Financial KPIs are the leading indicators of whether the business model is working.

## When to Use
- Monthly financial KPI update (part of entity P&L close)
- Quarterly financial KPI scorecard for entity CEO and Matt Mathison
- Setting financial KPI targets for the annual budget cycle
- Benchmarking entity performance against industry standards

## Financial KPI Framework

```
FINANCIAL KPIs BY ENTITY:

  ALLEVIO (MSO/Healthcare):
    Tier 1 — Monthly:
      Gross Margin: (Revenue - COGS) / Revenue | Target: ≥40% | Benchmark: MSO/benefits 35-45%
      PMPM Revenue: total revenue / enrolled employees / months | Track trend (improving with scale)
      Revenue per Enrolled Employer: ARR / enrolled employers | Track for ICP size validation
      Monthly Burn Rate: net cash outflows | Target: declining toward breakeven
      
    Tier 2 — Quarterly:
      EBITDA Margin: EBITDA / Revenue | Target: positive by end of year 2
      CAC (Customer Acquisition Cost): total sales + marketing spend / new employers signed
        Allevio benchmark: ≤$8K CAC per employer (≤1 year payback at avg $26K ACV)
      LTV:CAC ratio: LTV ($26K ACV / 9% churn = $289K) / CAC | Target: ≥10×
      Revenue per AE: total revenue / number of quota-carrying AEs | Track for productivity
      
    HIPAA note: ALL Allevio financial KPIs are calculated from aggregate enrollment and billing data;
      no per-member financial analysis; no individual health-cost correlation
      
  COLUMN6 (CTV Platform):
    Tier 1 — Monthly:
      Gross Margin: (IO Revenue - Media COGS) / IO Revenue | Target: ≥35%
      Average IO Size: total IO revenue / number of IOs | Track for deal size trend
      Repeat IO Rate: IOs from existing agencies / total IOs | Target: ≥60%
      Revenue per AE: track for AE productivity
      
    Tier 2 — Quarterly:
      EBITDA Margin: target: positive by end of year 2
      CAC: (sales + marketing spend) / new agencies signed | Benchmark: ≤$12K per agency
      LTV:CAC: LTV (avg $180K annual IO / 18% annual churn = $1M LTV) / CAC | Target: ≥10×
      Gross Revenue Retention: IO-based; track repeat bookings vs. lapsed agencies
      
  HIVE PARTNERS (Oil & Gas):
    Tier 1 — Monthly:
      LOE per BOE: Lease Operating Expense / BOE produced | Benchmark: <$18/BOE Uinta Basin
      Realized WTI vs. trigger: actual WTI received | Flag if <$58/bbl 2+ consecutive months
      Net Operating Revenue: Production Revenue - LOE | Track trend
      
    Tier 2 — Quarterly:
      EBITDA: after G&A; track vs. LP distribution coverage
      Cash-on-Cash Return: cumulative distributions / invested capital | LP-focused metric
      Reserve-to-Production ratio: total estimated reserves / annual production | Capital health
      
BENCHMARKING SOURCES:
  Allevio: MSO/direct primary care (DPC) industry benchmarks; small employer benefits data
  Column6: CTV/programmatic industry reports (IAB; eMarketer); peer CTV platform benchmarks
  HIVE: DOGM Utah production cost data; EIA Uinta Basin LOE benchmarks
  
KPI TRACKING CADENCE:
  Monthly: Tier 1 KPIs updated; included in entity P&L and portfolio dashboard
  Quarterly: all Tier 1 and Tier 2 KPIs; entity CEO KPI review with Dr. Lewis (30 min)
  Annual: full KPI target reset for next year; entity CEO + Dr. Lewis + Matt Mathison
```

## Output Format

```markdown
# Financial KPI Scorecard — [Entity] — [Quarter Year]
**Prepared by:** Dr. Lewis | **Period:** [Quarter]

---

## Tier 1 — Monthly Financial KPIs

| KPI | Target | M1 Actual | M2 Actual | M3 Actual | Q Avg | Trend | Status |
|----|--------|---------|---------|---------|------|-------|--------|
| Gross Margin | ≥40% | X% | X% | X% | X% | ↑/→/↓ | ✅/⚠️/🔴 |
| PMPM Revenue | $X | $X | $X | $X | | | |
| Monthly Burn | Declining | $X | $X | $X | | | |

---

## Tier 2 — Quarterly Financial KPIs

| KPI | Target | Q Actual | vs. Prior Quarter | Status |
|----|--------|---------|-----------------|--------|
| EBITDA Margin | Pos by Yr2 | X% | | |
| CAC | ≤$8K | $X | | |
| LTV:CAC | ≥10× | X× | | |

---

## Key Findings
1. [KPI trend observation — what it means — recommended action]
```

## Output Contract
- CAC and LTV:CAC are the most important efficiency metrics for early-stage portfolio entities — gross margin tells you about unit economics today; CAC:LTV tells you whether the customer acquisition engine is sustainable; a CAC of $8K and an LTV of $289K means every $1 spent on sales and marketing returns $36 over the life of the relationship — that's a fantastic business to invest in; if CAC is $14K and LTV is $289K, the ratio is still good (20×) but the investment thesis changes — you're spending more to acquire but the lifetime value still more than justifies it; if CAC is $8K and LTV is $60K (because churn is 35%), the business has a fundamental churn problem that no amount of sales efficiency can fix
- Financial KPI targets should be tied to the entity's business model, not generic SaaS or tech benchmarks — Allevio's 40% gross margin target is appropriate for a healthcare delivery business (where clinical costs are real); comparing it to a 70% SaaS gross margin is misleading; Column6's 35% gross margin is appropriate for a media business with real inventory costs; Dr. Lewis sets entity-specific targets based on business model, stage, and what the best operators in each entity's specific industry achieve — not what the best SaaS company in the world achieves
- HITL required: KPI target setting → entity CEO + Dr. Lewis agree; any Tier 1 KPI Red for 2 consecutive months → entity CEO + Dr. Lewis immediate; EBITDA negative for 3+ consecutive months → Matt Mathison informed; CAC trending >150% of target → entity CEO marketing/sales strategy review; LTV:CAC below 5× → entity CEO + Dr. Lewis review of either acquisition cost or churn; annual KPI reset → entity CEO + Dr. Lewis + Matt Mathison

## System Dependencies
- **Reads from:** QuickBooks (P&L data for all KPI calculations); revops-gtm-kpi-tracker (revenue and retention KPIs — cross-reference); finance-entity-pl-reporter (P&L → KPI calculation inputs); Covercy (HIVE production and LOE data); entity CEO CAC inputs (sales + marketing spend by period)
- **Writes to:** Financial KPI scorecards (SharePoint → [Entity] → Finance → KPIs → [Quarter]); portfolio dashboard KPI section; board report KPI scorecard section; entity CEO KPI briefings; annual budget KPI target documentation
- **HITL Required:** KPI targets → entity CEO + Dr. Lewis; Tier 1 Red 2 months → entity CEO + Dr. Lewis; EBITDA negative 3 months → Matt Mathison; CAC >150% target → entity CEO; LTV:CAC <5× → entity CEO + Dr. Lewis; annual reset → entity CEO + Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Allevio Q3 2026 financial KPI scorecard. Gross margin: 42.3% (✅ above 40%). PMPM revenue: $42.50 (+$1.20 vs. Q2 — pricing improvement ✅). Burn rate: -$6K/month (positive cash generation ✅). EBITDA margin: -6.4% (trending toward positive; plan was -10% ✅). CAC: $6,800 per employer (✅ below $8K target; broker-sourced employers cost $4,200 → pulling average down). LTV:CAC: $289K / $6,800 = 42.5× ✅. Key finding: broker-referred employers have 40% lower CAC than direct AE-sourced employers; recommendation to increase broker referral investment.
2. **Edge case:** Column6 gross margin drops to 24% in Q2 (target 35%) because a large agency IO required premium inventory at higher media cost → Dr. Lewis: "The 24% gross margin in Q2 is a significant miss vs. the 35% target — an 11-point gap. I want to understand: was the premium inventory cost for this specific IO predictable at the time of booking? If yes, why was the IO booked at a margin that would pull gross margin below 35%? If no (media costs increased after IO signature), what is the contract structure — is Column6 absorbing costs it should pass through? The answer determines whether this is a pricing issue (systematic; needs process change), a forecasting issue (one-time; need better margin modeling before IO sign), or a contract terms issue (one-time; need better cost pass-through language). Entity CEO and Dr. Lewis review this week."
3. **Adversarial:** Entity CEO argues that LTV:CAC is a "venture metric" and not appropriate for their business → Dr. Lewis: "LTV:CAC is appropriate for any business where you acquire a customer, serve them over time, and the value of the relationship is the key investment thesis. That describes Allevio exactly: you spend $6-8K to acquire an employer; you retain them for 10+ years at $26-32K ACV; the ratio tells you the investment efficiency of that acquisition. The alternative — looking only at CAC without LTV — tells you what you spent but not whether it was worth spending. A VC uses LTV:CAC because it tells them whether a company can scale efficiently. An owner-operator uses it for the same reason: it tells you whether adding more sales capacity will generate more value or just more cost. I'll keep tracking it."

## Audit Log
Quarterly financial KPI scorecards. Monthly Tier 1 KPI records. Entity CEO KPI review records. KPI target setting records (entity CEO + Dr. Lewis approval). Red status escalation records. Annual KPI target documentation. Matt Mathison escalation records. Benchmark source references.

## Deprecation
KPI definitions reviewed annually. Targets reviewed at annual budget cycle. Benchmark sources reviewed annually. Entity-specific KPIs reviewed when business model changes. CAC/LTV calculation methodology reviewed when acquisition channel mix changes significantly.
