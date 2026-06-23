---
name: revops-cohort-analyzer
description: "Analyze revenue cohorts for MBL Partners portfolio entities. Use when the user says 'cohort analysis', 'cohort', 'revenue cohort', 'customer cohort', 'cohort report', 'cohort retention', 'cohort churn', 'cohort LTV', 'lifetime value', 'LTV', 'customer lifetime value', 'cohort expansion', 'cohort by month', 'cohort by quarter', 'how do customers perform over time', 'revenue over time by cohort', 'do newer customers stay longer', 'retention by cohort', 'expansion by cohort', 'cohort comparison', 'cohort trend', 'cohort health', 'cohort revenue', 'cohort segmentation', 'employer cohort', 'agency cohort', 'cohort analysis report', 'when do clients expand', 'when do clients churn', 'do early cohorts perform better', or 'cohort model'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--cohort <month|quarter|source|size>] [--metric <retention|expansion|ltv|churn>] [--period <12|24|36>]"
---

# RevOps Cohort Analyzer

Analyze revenue cohorts for MBL Partners portfolio entities — grouping clients by the month or quarter they joined (or by acquisition source, size, or other dimension) and tracking their revenue trajectory over time to understand LTV, expansion curves, churn timing, and how different cohort segments perform versus each other. Cohort analysis is how you know whether you're building a better or worse business over time.

## When to Use
- Quarterly cohort analysis for entity CEO or Dr. Lewis
- Investigating whether a specific cohort is underperforming
- Building LTV assumptions for financial planning or investor materials
- Understanding when clients typically expand or churn

## Cohort Analysis Framework

```
COHORT TYPES:

  MONTHLY JOIN COHORT (PRIMARY):
    Definition: group all clients who signed their first contract in the same calendar month
    Track: monthly for as many months as data exists
    Metrics: starting ARR; ARR at month 3; 6; 12; 18; 24
    Shows: do recent cohorts ramp faster? does expansion plateau at a certain month?
    
  SOURCE COHORT:
    Group by lead source: broker-referred; marketing-sourced; outbound-sourced; inbound-organic
    Track: GRR and NRR by source cohort
    Shows: which acquisition channel produces the most valuable, longest-retaining clients?
    
  SIZE COHORT (ALLEVIO):
    Group by employer size: 25-49 EE / 50-99 EE / 100-249 EE / 250+ EE
    Track: churn rate; expansion rate; LTV by size band
    Shows: is there an employer size sweet spot that retains and expands better?
    
COHORT METRICS:

  REVENUE RETENTION CURVE:
    Plot: month 1 (starting ARR = 100%); month 3; 6; 12; 18; 24 (retained % of starting ARR)
    Healthy curve: stays ≥91% through month 12; expands above 100% by month 18+ (NRR effect)
    Declining curve: drops below 91% by month 6 → early-stage churn problem (onboarding? product fit?)
    Flat curve: stays at 100% but doesn't expand → good retention but no expansion motion
    
  LTV (LIFETIME VALUE) CALCULATION:
    Allevio LTV = ACV × (1 / annual churn rate)
    Example: $28K ACV employer; 9% annual churn rate → LTV = $28K / 0.09 = $311K
    LTV target: ≥10× CAC (cost to acquire — CAC = marketing + sales cost per new deal)
    
  EXPANSION CURVE:
    Track: at what month does a typical client begin expanding?
    Allevio: expansion typically starts at month 8-12 (headcount growth; service add-ons)
    Column6: IO growth on second campaign often 30-50% larger than first
    
COHORT DATA PULL PROCESS:
  Source: GoHighLevel (closed won records; ACV; contract date; source; employer size)
  Limitation: GHL does not natively produce cohort analysis — Dr. Lewis builds cohort model in Excel/Sheets
  Data: export Closed Won records; group by contract month; track ACV at each renewal checkpoint
  Allevio renewal ACV: AdvancedMD billing (aggregate) → CS lead provides PMPM × enrolled EE at each checkpoint
  HIPAA: cohort data is employer-aggregate (no employer names in cohort model unless internal analysis)
  
COHORT REVIEW CADENCE:
  Quarterly: entity CEO + Dr. Lewis; 30-minute review; key findings in BLUF format
  Annual: full cohort analysis with LTV calculation; Matt Mathison receives summary
  Trigger: significant churn event or GRR decline → immediate cohort analysis to identify pattern
```

## Output Format

```markdown
# Cohort Analysis — [Entity] — Q[N] [Year]
**Cohort type:** [Monthly Join / Source / Size] | **Prepared by:** Dr. Lewis

---

## Revenue Retention by Cohort (Monthly Join — Employer ARR)

| Cohort | Starting ARR | Mo 3 | Mo 6 | Mo 12 | Mo 18 | Mo 24 |
|--------|-------------|------|------|-------|-------|-------|
| Jan 2025 | $X | X% | X% | X% | X% | X% |
| Apr 2025 | $X | X% | X% | X% | X% | — |
| Jul 2025 | $X | X% | X% | X% | — | — |

---

## LTV Analysis

| Segment | Avg ACV | Churn Rate | LTV | CAC | LTV:CAC |
|---------|---------|-----------|-----|-----|---------|
| All clients | $X | X% | $X | $X | X× |
| Broker-sourced | $X | X% | $X | $X | X× |
| 50-99 EE employers | $X | X% | $X | | |

---

## Key Findings
1. [Cohort observation — what it means — recommended action]
2.
3.
```

## Output Contract
- Cohort analysis is the most honest picture of business health — aggregate GRR of 93% can hide that the Jan 2025 cohort is churning at 18% by month 12 while the Jul 2025 cohort is at 98%; if the Jan 2025 cohort represents a segment of employers that Allevio has since stopped targeting (e.g., sub-30 EE employers), the aggregate GRR of 93% overstates the health of the current book of business; cohort analysis separates the "we have improved our ICP" story from the "our overall retention is fine" story; Dr. Lewis uses cohort analysis to provide a more honest picture to entity CEOs and Matt Mathison than aggregate metrics alone can provide
- Source cohort analysis is one of the highest-leverage analyses in the RevOps toolkit — if broker-sourced clients have 96% GRR and 112% NRR while marketing-sourced clients have 87% GRR and 98% NRR, the decision to invest more in the broker referral program is made by the data, not by intuition; Dr. Lewis builds source cohort analysis every quarter specifically to inform the marketing-sales alignment conversation and the demand gen investment allocation
- HITL required: cohort model with Allevio employer data → Dr. Lewis reviews (aggregate employer-level; no PHI; no employer names in portfolio-level summaries); annual cohort analysis → entity CEO + Dr. Lewis; cohort finding that triggers strategy change → entity CEO decides; LTV calculation for investor materials → Matt Mathison reviews before sharing externally; cohort analysis trigger (churn event) → Dr. Lewis initiates within 7 days of trigger

## System Dependencies
- **Reads from:** GoHighLevel (closed won records; contract dates; ACV; lead source; employer size); AdvancedMD (Allevio aggregate billing — CS lead provides; PMPM × enrolled EE at renewal checkpoints); revops-churn-analytics (churn reason codes by cohort); revops-renewal-ops-manager (renewal data at each checkpoint); revops-win-loss-tracker (source cohort acquisition data)
- **Writes to:** Cohort analysis model (Excel/Sheets; SharePoint → [Entity] → RevOps → Cohorts → [Quarter]); cohort analysis report; entity CEO cohort briefing; Dr. Lewis LTV model; Matt Mathison annual cohort summary
- **HITL Required:** Allevio cohort data → Dr. Lewis reviews; annual analysis → entity CEO + Dr. Lewis; strategy change trigger → entity CEO; investor LTV → Matt Mathison; churn-triggered analysis → Dr. Lewis initiates

## Test Cases
1. **Golden path:** Allevio Q3 cohort analysis. Monthly join cohort (Jan 2025 cohort — 6 employers; $168K starting ARR): Mo 3: 98% ✅; Mo 6: 94% (1 employer churned; $10K ARR lost); Mo 9: 94% flat (no expansion yet); finding: Jan 2025 cohort hitting a utilization plateau at month 6. CS lead review: 3 of the 6 employers had low utilization at month 3 (not flagged until churn). Source cohort: broker-sourced cohort (all months combined): GRR 96%; NRR 109%. Marketing-sourced cohort: GRR 88%; NRR 101%. Finding: broker-sourced clients retain significantly better. Recommendation: increase broker referral program investment by $2K/quarter; maintain marketing investment but audit lead qualification criteria. Entity CEO + Dr. Lewis agree. Actions logged.
2. **Edge case:** Cohort analysis shows the 25-49 EE employer segment (small employers) has 22% annual churn vs. 6% for the 50-99 EE segment — but the entity CEO doesn't want to change the ICP because "small employers need us too" → Dr. Lewis: "I hear the mission-driven perspective, and I respect it. Here's the business reality: a 22% churn rate in the 25-49 EE segment means the average client in this segment stays for 4.5 years; a 6% churn rate in the 50-99 EE segment means the average client stays 16+ years. LTV for a small employer at $18K ACV and 22% churn = $82K. LTV for a mid-size employer at $32K ACV and 6% churn = $533K. The resource cost of acquiring, onboarding, and serving these two segments is roughly similar. I'm not recommending we exclude small employers — I'm recommending we stop actively acquiring them with direct AE time and serve them through the broker channel instead. That frees AE capacity for the segment that generates 6.5× the LTV."
3. **Adversarial:** Entity CEO argues that cohort analysis is only valid for mature companies with 3+ years of data and "we don't have enough data to draw conclusions" → Dr. Lewis: "We have 18 months of cohort data — enough to see the month 3 and month 6 retention curves, the source cohort performance difference, and the employer size churn differential. Early cohort data is imperfect, but it's directional. I'm not presenting this as a definitive statistical study — I'm presenting it as the best available evidence for investment allocation decisions we need to make now. The question isn't 'is this data perfect?' It's 'is this data better than intuition?' At 18 months, the answer is yes. We'll get a more refined picture at 24 and 36 months. But waiting 18 months for 'enough data' means making the next 18 months of investment decisions without any data."

## Audit Log
Quarterly cohort analysis models (Excel/Sheets; permanent). Cohort analysis reports. Entity CEO briefing records. Dr. Lewis LTV model versions. Allevio aggregate-only data confirmation records (no PHI in cohort model). Matt Mathison annual cohort summary records. Churn-triggered analysis records with trigger event and findings.

## Deprecation
Cohort dimensions reviewed when entity ICP or acquisition channels change. LTV formula reviewed when churn rate calculation method changes. Source cohort tracking reviewed when marketing channel mix changes significantly. Analysis cadence reviewed when entity data volume grows to support more frequent analysis.
