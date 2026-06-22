---
name: mktg-kpi-dashboard
description: "Build and maintain marketing KPI dashboards for MBL Partners portfolio entities. Use when the user says 'marketing KPI', 'marketing metrics', 'marketing dashboard', 'marketing performance', 'marketing scorecard', 'marketing report', 'marketing reporting', 'what are our marketing numbers', 'how is marketing performing', 'marketing results', 'marketing ROI report', 'marketing performance report', 'pipeline from marketing', 'marketing-sourced pipeline', 'lead generation metrics', 'demand gen metrics', 'email metrics', 'social metrics', 'SEO metrics', 'paid media metrics', 'conversion metrics', 'campaign performance', 'marketing channel performance', 'channel attribution', 'lead volume', 'MQL volume', 'SQL volume', 'cost per lead', 'cost per MQL', 'marketing efficiency', 'marketing contribution', 'CAC', 'customer acquisition cost', or 'show me the marketing numbers'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--period <monthly|quarterly|annual>] [--action <build|update|report|review>]"
---

# Marketing KPI Dashboard

Build and maintain marketing KPI dashboards for MBL Partners portfolio entities — providing entity CEOs and Dr. Lewis with consistent, timely visibility into marketing pipeline contribution, channel performance, and ROI. Marketing reporting is the proof of marketing's business impact; without it, marketing is a cost center without accountability.

## When to Use
- Building a monthly marketing KPI report for an entity CEO
- Creating a marketing dashboard structure for a new entity marketing program
- Quarterly marketing performance review with entity CEO + Dr. Lewis
- Identifying which marketing channels are underperforming and should be adjusted

## Marketing KPI Framework

```
TIER 1 METRICS (monthly — every entity, every month):

  PIPELINE:
    Marketing-sourced MQLs: # of MQLs generated from marketing channels (vs. non-marketing)
    Marketing-sourced pipeline ($): $ value of open opportunities where first touch was marketing
    Marketing-sourced closed revenue (quarterly): $ won from marketing-sourced pipeline
    Marketing pipeline contribution %: marketing-sourced pipeline / total pipeline
    Target: ≥30% of total new business pipeline from marketing
    
  CONVERSION:
    Lead → MQL conversion rate: % of raw leads that reach MQL status
    MQL → SQL conversion rate: % of MQLs that convert to sales-qualified
    SQL → Opportunity rate: % of SQLs entering formal deal stage
    Opportunity → Close rate: win rate on marketing-sourced deals
    
  ROI:
    Marketing ROI (quarterly): revenue from marketing-sourced closes / marketing spend (12-month lag)
    Target: ≥3× ($1 spend → $3 revenue on 12-month lag)
    CAC (customer acquisition cost): total marketing spend / # new clients (rolling 12-month)
    
TIER 2 METRICS (quarterly — by channel):
  
  EMAIL:
    Open rate (target: >25%); Click rate (target: >3%); Unsubscribe rate (target: <0.5%)
    Deliverability rate; List growth rate; Sequence completion rate
    
  SOCIAL (LinkedIn primary):
    Impressions; Engagement rate; Follower growth; Link clicks
    LinkedIn paid: CTR; CPC; CPL (cost per lead)
    
  SEO:
    Organic traffic to employer/agency pages (monthly); Keyword ranking changes; Domain authority trend
    
  EVENTS:
    Leads generated at event; Pipeline from event (12-month); Event ROI (pipeline ≥3× cost)
    
  PAID MEDIA:
    By channel: CPC; CPL; CTR; ROAS (return on ad spend)
    
ENTITY-SPECIFIC METRICS:

  ALLEVIO:
    Employer pipeline contribution (% of Allevio GRR target from marketing-sourced employers)
    Employer MQL definition: AZ employer ≥25 employees; 2+ content engagements
    GRR marketing contribution: retention marketing's role in keeping existing employers (secondary metric)
    HIPAA compliance: marketing analytics (GA4 employer-only pages; no member-level data in dashboard)
    
  COLUMN6:
    Agency pipeline contribution: % of new agency relationships from marketing
    Agency NRR: tracked as marketing success proxy (marketing retains agencies through content and engagement)
    Agency MQL definition: agency confirmed CTV/programmatic budget; from marketing-sourced channel
    Self-serve CTV proof: Column6 own campaign VCR and IVT (marketing asset; tracked in dashboard)
    
  HIVE:
    Stakeholder communication deliverability: landowner letter open rate (if digital); LP letter delivery confirmation
    No demand generation metrics (HIVE growth is acquisition-driven, not marketing-driven)
    
  MBL PARTNERS:
    Thought leadership reach: Matt Mathison LinkedIn post impressions; engagement rate
    No marketing pipeline metrics (MBL deal flow is relationship and advisor-driven, not marketing-driven)

REPORTING CADENCE:
  Monthly: Tier 1 metrics → entity CEO
  Quarterly: Tier 1 + Tier 2 + recommended actions → entity CEO + Dr. Lewis
  Annual: Full marketing performance review → entity CEO + Dr. Lewis + Matt Mathison (portfolio context)
```

## Output Format

```markdown
# Marketing KPI Report — [Entity] — [Month/Quarter Year]
**Prepared by:** Marketing Lead | **To:** Entity CEO + Dr. Lewis

---

## Pipeline Health (Tier 1)

| Metric | This period | Prior period | Target | Status |
|--------|------------|-------------|--------|--------|
| Marketing MQLs | [X] | [X] | [X] | ✅/⚠️/❌ |
| Marketing pipeline ($) | $[X] | $[X] | $[X] | |
| Marketing pipeline contribution % | [X]% | [X]% | ≥30% | |
| Marketing-sourced closed revenue | $[X] | $[X] | | |
| Marketing ROI (12-mo lag) | [X]× | [X]× | ≥3× | |
| CAC | $[X] | $[X] | $[X] | |

---

## Channel Performance (Tier 2 — Quarterly)

### Email
| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Open rate | | >25% | |
| Click rate | | >3% | |
| Unsubscribe rate | | <0.5% | |

### SEO / Social / Paid [add per channel as applicable]

---

## HIPAA Compliance (Allevio)
- [ ] Dashboard data is employer-aggregate only — no member-level data included ✅
- [ ] GA4 employer-only page data confirmed — no member-page analytics in report ✅

---

## Actions Recommended
1. [Channel / program — what to do — expected impact — due date]
```

## Output Contract
- Marketing KPI reporting is non-negotiable — if marketing doesn't report its pipeline contribution, it will be reduced in budget discussions because there is no evidence of its value; Dr. Lewis requires marketing leads at all entities to produce Tier 1 metrics monthly; the monthly report takes 2 hours to produce if the data systems are configured correctly (GoHighLevel + GA4 + LinkedIn analytics); if a marketing lead says "it takes too long to pull the numbers," that is a signal that the data infrastructure needs to be fixed, not that reporting should be skipped; Dr. Lewis treats a missed monthly report as a compliance issue, not a scheduling inconvenience
- Marketing ROI uses a 12-month lag — marketing investment today produces revenue on a 12-month horizon in B2B markets with 3-6 month sales cycles; measuring marketing ROI on this month's spend vs. this month's revenue is mathematically incorrect and will always make marketing look bad; the 3× benchmark (≥$3 revenue per $1 of marketing spend on a 12-month cohort basis) is the right measurement; Dr. Lewis ensures entity CEOs understand why marketing ROI uses the 12-month lag before they question the timing of results
- Channel data is not the goal — pipeline data is — a social media manager who reports 5,000 LinkedIn impressions without also reporting how many of those became MQLs has produced an activity report, not a business impact report; Dr. Lewis requires all channel Tier 2 metrics to be connected to Tier 1 pipeline metrics quarterly; the question is always "what did this channel contribute to pipeline?" — if a channel cannot be connected to pipeline over a 12-month period, it should be reconsidered
- HITL required: dashboard data sources → Dr. Lewis reviews for Allevio HIPAA compliance before dashboard is used; quarterly marketing performance review → entity CEO + Dr. Lewis; annual marketing review → entity CEO + Dr. Lewis + Matt Mathison receives portfolio summary; budget adjustments triggered by KPI data → entity CEO approves; channel investment changes >$500 → entity CEO approves per spend thresholds

## System Dependencies
- **Reads from:** GoHighLevel (MQL data; pipeline data; lead source attribution); GA4 (website analytics; channel traffic); LinkedIn Analytics (social + paid performance); mktg-marketing-budget-manager (spend data for ROI calculation); mktg-analytics-manager (UTM tracking; channel attribution); mktg-campaign-manager (campaign-level performance)
- **Writes to:** Marketing KPI reports (SharePoint → [Entity] → Marketing → Reporting → [Period]); Monday.com (marketing KPI dashboard cards if configured); HIPAA compliance records (Allevio data sourcing confirmation); entity CEO + Dr. Lewis report distribution
- **HITL Required:** Data source HIPAA review (Allevio) → Dr. Lewis; quarterly review → entity CEO + Dr. Lewis; annual review → entity CEO + Dr. Lewis; budget adjustments → entity CEO; spend changes >$500 → entity CEO

## Test Cases
1. **Golden path:** Allevio Q2 marketing KPI report. Pipeline: 8 marketing-sourced MQLs; $240K marketing-sourced pipeline; marketing pipeline contribution 34% (vs. 30% target — above); marketing ROI 3.2× on 12-month lag (above 3× target). Email: open rate 31% (above 25% target); click rate 4.1%; unsubscribe 0.2%. SEO: 22% increase in employer-facing organic traffic. HIPAA: data confirmed employer-aggregate only; no member-level data in any metric. Action: LinkedIn paid spend performing at $180 CPL — above $120 target; recommended: reduce LinkedIn paid by 20% and reallocate to content production for SEO. Entity CEO approves adjustment.
2. **Edge case:** Marketing KPI report shows marketing pipeline contribution at 12% (vs. 30% target) for two consecutive quarters → Dr. Lewis: "This is a significant underperformance signal. Before recommending budget cuts, I want to understand: (1) is the pipeline tracking accurate — are all marketing-sourced leads correctly tagged in GoHighLevel?; (2) is the total pipeline denominator inflated by non-marketing opportunities (e.g., CEO-direct relationship deals that aren't being attributed)?; (3) has the sales cycle lengthened — are marketing-sourced deals still in pipeline but not yet closed?. If attribution is correct and pipeline contribution is genuinely 12%, we have a demand generation problem. I'll present a diagnosis to the entity CEO with 3 options: increase marketing investment; focus investment on 1-2 channels; or reset the contribution target while we rebuild the program."
3. **Adversarial:** Marketing lead presents a KPI report where the marketing ROI is calculated by dividing marketing spend by total company revenue (not marketing-sourced revenue) → Dr. Lewis: "This ROI calculation is incorrect and inflated. The 3× marketing ROI benchmark is marketing-sourced revenue (revenue from deals where the first touch was a marketing channel) divided by marketing spend on a 12-month cohort basis. Dividing by total company revenue includes deals that came from the CEO's network, partner referrals, and other non-marketing channels — that gives us an artificially high number that will lead to incorrect investment decisions. I need the GoHighLevel lead source report to confirm which revenue is truly marketing-attributed. Let's rebuild this calculation correctly before the entity CEO sees it."

## Audit Log
Monthly KPI report records retained (all entities; all periods). Quarterly review records. HIPAA data source confirmation records (Allevio). GoHighLevel attribution records. Budget adjustment decisions triggered by KPI data. Annual portfolio marketing review records.

## Deprecation
KPI dashboard metrics reviewed annually. Marketing ROI benchmark reviewed when entity growth stage changes. HIPAA data source review updated when analytics stack changes. Reporting cadence reviewed when entity marketing function matures. Channel metrics deprecated when channels are discontinued.
