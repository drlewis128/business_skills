---
name: portops-column6-agency-health
description: "Column6 agency health, agency portfolio review Siprocal, agency relationship health score, agency tier breakdown Column6, spend per agency tracker, agency contact mapping, agency renewal tracking Column6, competitive exposure by agency, new agency pipeline Column6, agency HHI concentration, agency relationship owner mapping, lapsed agency reactivation, Tier 1 agency spend decline, agency churn Column6, agency portfolio concentration risk, agency revenue by tier, Column6 agency briefing, agency health scorecard, Siprocal agency management, monthly agency health report Column6"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "reporting month (e.g. June 2026), focus (e.g. Tier 1 spend review / new pipeline / competitive exposure)"
---

# Column6 Agency Health

Column6's revenue is agency-driven, making the health and concentration of the agency portfolio the single most important leading indicator of future revenue stability. This skill produces the monthly agency health briefing for the Column6 entity CEO and flags concentration risk, relationship decay signals, and competitive displacement threats before they materialize in revenue results.

## When to Use

- Monthly agency portfolio review for Column6 / Siprocal entity CEO
- Quarterly concentration risk assessment for Matt Mathison or investor reporting
- Proactive review when a Tier 1 agency has not submitted a new IO in 45+ days
- New agency pipeline review in advance of a sales team planning session
- Competitive displacement risk assessment when a competing platform announces a new feature or partnership

## Column6 Agency Health Framework

```
AGENCY PORTFOLIO OVERVIEW
  Total agency count: active (IO in last 90 days) vs lapsed (no IO in 91-180 days) vs churned (>180 days)
  Tier breakdown: Tier 1 (>$500K ARR) | Tier 2 ($100K-$500K) | Tier 3 (<$100K)
  HHI concentration index: (sum of each agency's revenue share squared) x 10,000
    HHI <1500: healthy diversification | 1500-2500: moderate concentration | >2500: high concentration risk
  New agencies added YTD: count and aggregate first-IO value

SPEND PER AGENCY
  Monthly spend per agency: actual IO delivery value recognized in the period
  TTM (trailing twelve months) spend per agency: full relationship value context
  Spend trend: 3-month rolling average vs prior 3-month average; flag >15% decline
  Spend vs committed IO value: signed IOs worth $X but only $Y has run -- indicates pipeline health
  Top 10 agencies by TTM spend: ranked table with tier, relationship owner, and trend indicator

RELATIONSHIP HEALTH SCORING
  Score 1-5 for each agency (5 = strongest):
    5 -- Active IOs, payment current, expanding spend, exec relationship established
    4 -- Active IOs, payment current, stable spend, no open issues
    3 -- IOs present but declining spend or one open issue (billing, delivery complaint)
    2 -- No active IO in 30-60 days, or two+ open issues
    1 -- No active IO >60 days, payment dispute, or formal complaint open
  Score inputs: recency of IOs, payment history, relationship tenure, feedback sentiment, complaint log
  Score output: agency-level and portfolio-average health score

CONTACT MAPPING
  Per agency: primary relationship owner (Column6 account manager), exec sponsor, backup contact
  Last contact date: last meaningful interaction (call, email, in-person meeting)
  Contact frequency target: Tier 1 weekly | Tier 2 bi-weekly | Tier 3 monthly
  Flag: any Tier 1 agency with last contact >7 days, any Tier 2 >14 days

RENEWAL AND REACTIVATION PIPELINE
  Renewal: IOs expiring in 30 / 60 / 90 days with renewal conversation status
    (not started / in progress / committed)
  Reactivation: lapsed agencies (91-180 days no IO) with outreach status and estimated re-engagement value
  Renewal risk: IOs expiring in 30 days with no renewal conversation = high risk
    alert account manager + entity CEO
  Reactivation priority: rank lapsed agencies by TTM historical spend; target top 5 for structured re-engagement

COMPETITIVE EXPOSURE
  Identify agencies known to be running budgets with competing CTV/Mobile/Gaming platforms
  Revenue at risk: estimate agency spend on Column6 that could migrate to competitor
  Competitive displacement risk: High (actively testing competitor) / Medium (competitor in conversation) / Low
  Counter-strategy per high-risk agency: differentiation points, exclusive inventory, pricing flexibility window

NEW AGENCY PIPELINE
  Prospects in outreach: agency name, vertical, estimated IO value, source (referral / outbound / inbound)
  Stage: Contacted | Meeting Scheduled | Proposal Sent | First IO Negotiating | Closed Won
  Expected first IO value and anticipated channel (CTV / Mobile / Gaming)
  Pipeline conversion rate: prospects to first IO (trailing 90 days) -- target >20%

MONTHLY AGENCY HEALTH BRIEF TEMPLATE
  See Output Format section below
```

## Output Format

```markdown
# Column6 Agency Health Brief -- [Month Year]
**Prepared by:** Dr. John Lewis | **Distribution:** Column6 Entity CEO

## BLUF
[2-3 sentences: portfolio health summary, concentration risk status, top agency risk or opportunity]

## Portfolio Overview
| Metric | Value |
|--------|-------|
| Active Agencies | X |
| Lapsed Agencies (91-180d) | X |
| HHI Concentration Index | X ([Low/Moderate/High]) |
| Avg Portfolio Health Score | X/5 |
| New Agencies Added MTD | X |

## Spend by Tier
| Tier | Count | Monthly Spend | TTM Spend | Trend |
|------|-------|---------------|-----------|-------|
| Tier 1 (>$500K ARR) | X | $X | $X | [Up/Flat/Down] |
| Tier 2 ($100K-$500K) | X | $X | $X | [Up/Flat/Down] |
| Tier 3 (<$100K) | X | $X | $X | [Up/Flat/Down] |

## Top 10 Agencies by TTM Spend
[Agency | Tier | TTM Spend | Health Score | Relationship Owner | Trend]

## Relationship Flags
[Agencies with Health Score 1 or 2, or contact gap exceeding tier target]

## Renewal / Reactivation Pipeline
[IOs expiring 30/60/90 days | Renewal status | Reactivation targets]

## Competitive Exposure
[Agency | Risk Level | Competitor | Revenue at Risk | Counter-Strategy]

## New Agency Pipeline
[Agency | Stage | Est. First IO | Source]

## Recommended Actions
1. [Action -- Owner -- Due Date]
```

## Output Contract

- The HHI concentration index must appear in the overview section adjacent to the BLUF, not only in a detailed appendix. Revenue concentration is an existential risk for an agency-dependent business -- if the top three agencies represent 70% of revenue and one defects, the entity may not recover within the fiscal year. The entity CEO and Matt Mathison must see this metric prominently every month so concentration reduction becomes a persistent strategic priority rather than a reactive fire drill.
- Contact mapping must include last contact date for every Tier 1 and Tier 2 agency, and gaps exceeding the tier target must be surfaced as explicit flags. Relationship decay in agency sales is invisible until it is irreversible -- an agency that has not been contacted in 21 days by a Tier 1 account manager is already receiving competitor attention, and the only way to catch it is systematic contact recency tracking rather than relying on account manager self-reporting.
- The new agency pipeline conversion rate (trailing 90 days, prospects to first IO) must be calculated and reported each month. Column6 cannot rely solely on expanding existing agency relationships to grow revenue -- the pipeline conversion rate tells the entity CEO whether the sales motion is working at the top of the funnel, and a declining conversion rate requires intervention (pricing, ICP refinement, or sales training) before it collapses pipeline output.

## System Dependencies

**Reads from:** CRM (agency contact records, IO history, spend data), IO management system (active and expired IOs), finance system (payment history, billing disputes), sales pipeline tool (new agency prospects)
**Writes to:** Monthly agency health brief (entity CEO distribution), competitive exposure register, renewal/reactivation priority list, contact gap alerts (account managers)
**HITL Required:** Competitive exposure High-risk agency counter-strategy (entity CEO approves before account manager executes); reactivation outreach to lapsed Tier 1 agencies (entity CEO reviews script before outreach); any agency relationship escalation to Matt Mathison

## Test Cases

- **Golden path:** 40 active agencies, HHI at 1200, all Tier 1 contacted within 7 days, 3 renewals committed for next 30 days, 5 new agencies in late-stage pipeline -- brief produces a healthy scorecard with two proactive expansion recommendations and no escalations.
- **Edge case:** HHI spikes to 2800 because Column6 signed a single mega-agency IO that now represents 35% of monthly revenue -- brief must flag the concentration risk even though the revenue metric looks strong, because the risk of a single relationship disrupting the business is now critical and requires a diversification action plan.
- **Adversarial:** An account manager updates a Tier 1 agency health score to 5 in the CRM despite the agency having no new IO in 50 days and an open billing dispute -- skill must calculate the health score from objective inputs (IO recency, payment history, complaint log) rather than accepting the CRM score field as authoritative.

## Audit Log

Every monthly agency health brief is logged with: generation timestamp, reporting month, total agency count by tier, HHI index at time of report, number of agencies flagged for contact gaps, number of competitive exposure flags at High risk level, and confirmation of entity CEO receipt. All competitive exposure entries are retained for 24 months to enable retrospective analysis of whether flagged competitive risks materialized into revenue loss and whether counter-strategies were effective.

## Deprecation

This skill is deprecated when Column6 implements a CRM-native agency health dashboard with automated health score calculation, contact gap alerting, and concentration risk monitoring -- at that point the skill transitions to a monthly exception escalation trigger for Dr. Lewis rather than a full briefing production workflow driven from manual data aggregation.

---
*MBL Partners Portfolio Operations -- Column6 / Siprocal Agency Intelligence*
*HITL Chain: Dr. Lewis > Column6 CEO > Matt Mathison*
