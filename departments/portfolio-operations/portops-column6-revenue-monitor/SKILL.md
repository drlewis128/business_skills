---
name: portops-column6-revenue-monitor
description: "Column6 revenue monitor, IO pipeline tracker, booked vs running revenue, gross margin check Column6, agency tier health report, churn risk by agency, monthly revenue briefing Matt Mathison, CTV revenue ops, mobile gaming revenue tracking, Column6 gross margin breach escalation, Siprocal revenue monitor, ad tech revenue dashboard, IO stage pipeline, revenue vs plan variance Column6, agency spend by tier, Column6 revenue operations review, portfolio company revenue health, Column6 financial performance briefing, agency revenue concentration, Column6 revenue pacing"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "period (e.g. June 2026), focus area (e.g. gross margin / agency tier / IO pipeline)"
---

# Column6 Revenue Monitor

Column6 (Siprocal) operates on an IO (Insertion Order) based revenue model across CTV, Mobile, and Gaming channels, making pipeline stage visibility and margin discipline the two most critical levers for financial health. This skill produces the monthly revenue briefing for Matt Mathison and triggers immediate escalation when aggregate gross margin falls below the 35% threshold.

## When to Use

- Monthly revenue close review for Column6 / Siprocal
- Gross margin spot-check when a large campaign completes or a new IO is signed
- Preparing the monthly revenue briefing for Matt Mathison
- Agency tier health review when a Tier 1 agency shows spend decline
- Pipeline review ahead of a board or investor update

## Column6 Revenue Monitor Framework

```
REVENUE MODEL OVERVIEW
  IO-based revenue: agency commits volume via signed IO; revenue recognized on delivery
  Channel split: CTV (highest CPM / margin), Mobile (volume), Gaming (emerging, variable GM)
  Agency tiers: Tier 1 >$500K ARR | Tier 2 $100K-$500K ARR | Tier 3 <$100K ARR
  Gross margin floor: 35% aggregate -- breach requires immediate escalation to Matt Mathison

IO PIPELINE MONITORING
  Stages: Prospect > Proposed > Signed > Running > Completed
  Track: IO count per stage | total pipeline value | weighted close probability | avg deal size
  Flag: stalled IOs (>14 days in Proposed without movement)
  Output: pipeline waterfall by stage with $ value and deal count

BOOKED VS RUNNING REVENUE
  Booked: sum of signed IO value not yet started + IOs currently running
  Running: IOs actively delivering impressions as of report date
  Pacing metric: (delivered impressions / contracted impressions) x (elapsed days / total IO days)
  Alert threshold: pacing <85% at IO midpoint triggers account manager review

GROSS MARGIN MONITORING
  Campaign-level GM% = (IO revenue - direct campaign costs) / IO revenue
  Direct costs: DSP fees, data costs, ad serving fees, publisher payouts
  Aggregate GM% = sum of all campaign margins weighted by revenue
  Target: 35% aggregate; <35% = IMMEDIATE escalation to Matt Mathison
  Log: all campaigns below 30% for root cause review

REVENUE VS PLAN VARIANCE
  Monthly actuals vs approved plan: $ variance and % variance
  Breakout by channel: CTV / Mobile / Gaming vs channel plan
  Root cause categories: IO volume shortfall | CPM miss | underdelivery | agency churn
  Flag: >10% miss requires written root cause memo to Matt Mathison within 5 business days

AGENCY TIER HEALTH
  Tier 1 (>$500K ARR): track MoM spend delta; red flag if >15% MoM decline
  Tier 2 ($100K-$500K): monitor IO renewal cadence; alert if 60 days without new IO
  Tier 3 (<$100K): track net new adds and churn rate; T3 churn >20% MoM = review
  Concentration: top 3 agencies should not exceed 60% of total revenue (HHI watch)

CHURN RISK BY AGENCY
  Risk signals: declining spend trend (3+ months), delayed IO execution, unresolved billing disputes
  Competitive pressure flags: known competitor activity, RFP losses, agency consolidation
  Risk scoring: High / Medium / Low with recommended intervention per tier
  Output: churn risk register with owner, last contact date, and next action

MONTHLY REVENUE BRIEF TEMPLATE FOR MATT MATHISON
  See Output Format section below
```

## Output Format

```markdown
# Column6 Revenue Brief -- [Month Year]
**Prepared by:** Dr. John Lewis | **Distribution:** Matt Mathison (primary), Entity CEO (CC)

## BLUF
[2-3 sentences: revenue vs plan, gross margin status, single most important risk]

## Revenue Summary
| Metric | Actual | Plan | Variance |
|--------|--------|------|----------|
| Total Revenue | $X | $X | +/-X% |
| CTV Revenue | $X | $X | +/-X% |
| Mobile Revenue | $X | $X | +/-X% |
| Gaming Revenue | $X | $X | +/-X% |
| Gross Margin % | X% | 35% | [OK / BREACH] |

## IO Pipeline
| Stage | Count | $ Value |
|-------|-------|---------|
| Prospect | X | $X |
| Proposed | X | $X |
| Signed | X | $X |
| Running | X | $X |
| Completed MTD | X | $X |

## Gross Margin Detail
[Campaign-level GM table for any campaign <35%]
[Aggregate GM status: OK or ESCALATION REQUIRED]

## Agency Tier Health
[Tier 1 / Tier 2 / Tier 3 summary table with spend and health status]

## Churn Risk Register
[Agency | Risk Level | Signal | Recommended Action | Owner]

## Variance Root Cause
[If >10% miss: written root cause and remediation plan]

## Recommended Actions
1. [Action -- Owner -- Due Date]
2. [Action -- Owner -- Due Date]
```

## Output Contract

- Gross margin status must appear in the BLUF, not buried in a table. Matt Mathison reads the first three sentences and forms a mental model of Column6 health before reviewing detail -- if a breach exists he needs to know immediately so he can decide whether to intervene before the end of the business day. A breach buried on page two is equivalent to no alert at all.
- The IO pipeline waterfall must show both count and $ value per stage. Count alone masks a situation where a single large IO is hiding a volume collapse; $ value alone hides a pipeline bloated with small, low-probability deals that will never close. Both dimensions are required for an accurate forward revenue view.
- Any Tier 1 agency with a >15% MoM spend decline must appear in the Churn Risk Register with a named owner and a next action dated within 7 days. Revenue concentration in ad tech is high risk -- losing a single Tier 1 agency can eliminate 15-25% of monthly revenue, and no lagging indicator will surface that risk faster than the monthly brief acting as an early warning system.

## System Dependencies

**Reads from:** Column6 / Siprocal IO management system, CRM (agency spend history), campaign delivery platform, finance system (actuals vs plan)
**Writes to:** Monthly revenue brief (Matt Mathison distribution), churn risk register, gross margin escalation log
**HITL Required:** Gross margin breach escalation (Dr. Lewis reviews before notifying Matt Mathison); Tier 1 churn risk interventions (entity CEO approval before agency outreach)

## Test Cases

- **Golden path:** All IOs pacing at 95%+, aggregate GM at 38%, revenue 5% ahead of plan -- brief produces clean scorecard with no escalations and two proactive pipeline observations.
- **Edge case:** A large Tier 1 IO ($400K) completes mid-month and is not replaced -- monthly revenue appears on-plan at the 15th but will miss by 25% at month end; skill must project forward and flag as at-risk before month close.
- **Adversarial:** A campaign with inflated CPM sold at thin margin is classified as healthy by count but drags aggregate GM below 35%; skill must catch the aggregate breach even when individual deal metrics appear acceptable in isolation.

## Audit Log

Every revenue briefing generated by this skill is logged with: timestamp, reporting period, aggregate GM% at time of report, whether a gross margin escalation was triggered, which agencies appeared in the churn risk register, and the name of the human reviewer who approved the brief before distribution. Logs are retained for 24 months to support investor reporting, fund audit, and retrospective analysis of revenue forecasting accuracy against actuals.

## Deprecation

This skill is deprecated when Column6 migrates its IO management and campaign delivery data into a unified MBL portfolio data warehouse that provides automated revenue dashboards -- at that point the manual data assembly steps are eliminated and this skill is replaced by an alert-only variant that monitors the warehouse and triggers escalations without producing a full brief from raw inputs.

---
*MBL Partners Portfolio Operations -- Column6 / Siprocal Revenue Intelligence*
*HITL Chain: Dr. Lewis > Column6 CEO > Matt Mathison*
