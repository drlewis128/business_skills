---
name: cs-renewal-forecast
description: "Build and maintain the CS-side renewal ARR forecast for MBL portfolio companies. Use when the user says 'renewal forecast', 'renewal ARR forecast', 'CS renewal forecast', 'forecast renewals', 'renewal pipeline forecast', 'renewal ARR', 'how much ARR is renewing', 'renewal revenue forecast', 'upcoming renewals forecast', 'renewal visibility', 'renewal outlook', 'what renewals are coming', 'renewing ARR this quarter', 'renewal ARR this month', 'renewal run rate', 'forecast the renewal book', 'renewal risk and opportunity', 'renewal financial forecast', 'renewal coverage', or 'forecast renewal revenue'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4|monthly|annual>] [--action <build|update|report|alert>]"
---

# CS Renewal Forecast

Build and maintain the CS-side renewal ARR forecast for MBL portfolio companies — giving the CEO and Matt Mathison a forward-looking view of which ARR is at risk and which is committed, so that cash flow projections, hiring decisions, and growth planning are grounded in reality. The renewal forecast is the CS function's most important financial contribution; a CS team that can't forecast renewals accurately is a CS team the CEO can't plan around.

## When to Use
- Monthly (update the rolling 90-day renewal forecast)
- Quarterly (build the full-quarter renewal plan for Matt Mathison)
- A large renewal changes status (update the forecast immediately)
- Annual planning (build the 12-month renewal calendar and ARR risk model)

## Renewal Forecast Framework

```
FORECAST CATEGORIES (CS assigns each renewal to one category):

  COMMITTED (confidence ≥85%):
    The customer has signaled intent to renew verbally or in writing
    Health score: Green
    No pricing objection surfaced
    No active escalation
    Example: "Customer said 'we're definitely renewing' at the last QBR; health score 22/25"
    
  PROBABLE (confidence 60-84%):
    The customer is likely to renew but there are minor concerns
    Health score: Green or high Yellow
    One of: slight pricing sensitivity; minor performance issue resolved; new contact not fully engaged
    Example: "New HR Director in place 3 months; relationship at 3/5; value story is strong but hasn't been presented to the new HR Director yet"
    
  AT RISK (confidence 25-59%):
    Significant churn signals present; renewal is uncertain
    Health score: Yellow or Red
    One or more of: pricing objection; competitive threat; performance issue; champion gap
    Example: "Claim ratio has been above target for 3 months; HR Director is not responding to outreach; CEO-led intervention in progress"
    
  LOST (confidence <25%):
    Customer has indicated they will not renew; or churn signals are so strong that renewal is unlikely
    Health score: Red
    Example: "HR Director confirmed they are going back to their prior carrier at open enrollment"
    
FORECAST MODEL:
  Weighted ARR = Committed × 95% + Probable × 70% + At Risk × 30% + Lost × 0%
  Compare to target GRR: if Weighted ARR ÷ Beginning Period ARR < GRR target, flag immediately
  
  ARR at risk = At Risk ARR + Lost ARR (this is the number the CEO needs to act on)
  
RENEWAL FORECAST UPDATES:
  Weekly: CS rep updates any renewal that changed status
  Monthly: Dr. Lewis reviews and validates the forecast; publishes to CEO
  Quarterly: Full renewal pipeline review with the CEO
  Immediately: Any renewal moving from Committed to At Risk (or to Lost) triggers an immediate CEO alert

ENTITY-SPECIFIC RENEWAL TIMING:

  ALLEVIO:
    Most renewals tied to plan year start (January 1 or July 1)
    January 1 renewals: decision window is September-November
    July 1 renewals: decision window is March-May
    Open enrollment timing creates a natural deadline — employer must decide before enrollment opens
    At Risk signal for Allevio: renewal not confirmed by Day -60 from open enrollment start
    
  COLUMN6:
    Pre-committed annual agreements: renewal follows the agreement end date
    IO-based relationships: "renewal" = re-booking cadence; tracked as booking velocity
    At Risk signal for Column6: no IO in 90+ days; no confirmed next IO in discussion
    
  HIVE:
    Lease terms are 3-5 years; renewal is a major transaction (not an annual admin task)
    Renewal forecast starts 12 months before lease end date (not 90 days)
    At Risk signal for HIVE: competing operator contact confirmed; landowner non-responsive >60 days
```

## Output Format

```markdown
# Renewal Forecast — [Entity] | [Month/Quarter YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Forecast period:** [Rolling 90 days / Quarter / Annual]

---

## ARR Summary

| Category | Count | ARR | Confidence |
|---------|-------|-----|-----------|
| Committed | [N] | $[X]K | ≥85% |
| Probable | [N] | $[X]K | 60-84% |
| At Risk | [N] | $[X]K | 25-59% |
| Lost | [N] | $[X]K | <25% |
| **Total renewing ARR** | [N] | **$[X]K** | |
| **Weighted forecast** | — | **$[X]K** | |
| **ARR at risk** | [N] | **$[X]K** | |

---

## Renewal Detail

| Account | ACV | Renewal date | Status | Primary signal | Action |
|---------|-----|------------|--------|---------------|--------|
| [Account A] | $[X]K | [Date] | Committed | QBR confirmed intent | Renewal docs pending |
| [Account B] | $[X]K | [Date] | At Risk | Champion departed + claim ratio 86% | CEO intervention in progress |
| [Account C] | $[X]K | [Date] | Probable | New HR Director; value story not yet presented | Dr. Lewis meeting scheduled |

---

## GRR Forecast

**Beginning ARR:** $[X]K
**Weighted renewal forecast:** $[X]K
**Forecasted GRR:** [X]% (target: >90%)
**Gap to GRR target:** [X]K needs to move from At Risk to Committed/Probable to hit target
```

## Output Contract
- Forecast is honest, not optimistic — a renewal forecast that puts every account in "Committed" because "I think they're going to renew" is not a forecast; it is wishful thinking; Dr. Lewis requires that forecast categories are assigned based on specific evidence (what did the customer say? what does the health score show?); an account in "Committed" without a verbal or written signal from the customer is a "Probable" — not a "Committed"; the forecast categories are signals to the CEO, not goals
- Status changes are immediate — when a Committed account becomes At Risk (health score drops; competitor appears; champion leaves), the CEO is notified within 24 hours of the change; a forecast that was sent Monday showing $180K as Committed and then has that same $180K churn on Friday without any interim warning is a forecast failure; Dr. Lewis requires immediate notification of any status change on renewals >$50K ACV
- At Risk ARR is the number the CEO acts on — the CEO needs to see the At Risk number clearly; it is the ARR the CS team needs help saving; it determines which interventions get the CEO's time and attention; Dr. Lewis presents the At Risk number first in any renewal forecast conversation with the CEO
- HITL required: Dr. Lewis validates the forecast monthly before it goes to the CEO; any Committed → At Risk change >$50K ACV triggers immediate CEO notification; Matt Mathison receives the quarterly renewal forecast and the annual 12-month renewal calendar; Dr. Lewis does not accept a renewal forecast that has not been updated in more than 7 days; renewal status changes require Dr. Lewis review before being finalized

## System Dependencies
- **Reads from:** GoHighLevel CRM (contract end dates; renewal status field; last customer contact; health score); cs-health-score-tracker (current health by account — feeds forecast category); cs-churn-predictor (churn risk score — At Risk category calibration); cs-renewal-coordinator (what stage is each renewal at? Day -120? Day -60? Docs sent?); QuickBooks (ACV for each account; beginning ARR for the period)
- **Writes to:** Renewal forecast report (SharePoint/CustomerSuccess/<Company>/Forecasts/[YYYY-MM]_RenewalForecast.pdf); GoHighLevel CRM (renewal status field — updated when category changes); CEO immediate alert (for >$50K ACV Committed → At Risk changes); Matt Mathison quarterly forecast (SharePoint/Portfolio/[Quarter]_[YYYY]_PortfolioCSForecast.pdf); cs-kpi-dashboard (renewal rate; at-risk ARR; weighted forecast vs. GRR target)
- **HITL Required:** Dr. Lewis validates monthly; immediate CEO notification for Committed → At Risk >$50K ACV; Matt Mathison receives quarterly and annual forecasts; Dr. Lewis does not allow a forecast to be sent to the CEO that hasn't been updated in 7+ days; status category changes require Dr. Lewis validation before finalization

## Test Cases
1. **Golden path:** Monthly Allevio renewal forecast — January renewals (4 accounts, $387K combined ACV): Account A $147K — Committed (HR Director confirmed at QBR, Green health); Account B $98K — Probable (new HR Director in place 3 months, value story presentation scheduled next week); Account C $91K — Committed (2-year renewal signed 6 weeks early); Account D $51K — At Risk (claim ratio 88%, champion not responding); Weighted forecast: ($147K×0.95) + ($98K×0.70) + ($91K×0.95) + ($51K×0.30) = $139.7K + $68.6K + $86.5K + $15.3K = $310.1K; Forecasted GRR: $310.1K ÷ $387K = 80.1% (below the 90% target); CEO briefed: "We have a $51K at-risk renewal and Account D is the primary risk — the CEO-led intervention needs to happen this week. If we save Account D, GRR goes to 93.2%." CEO intervention initiated immediately
2. **Edge case:** A "Committed" account ($120K ACV) sends an email during the week saying "we're exploring our options this year" — a competitive signal that was not present in the last forecast → Dr. Lewis alerted by CS rep immediately; Dr. Lewis: "This is a Committed → At Risk change on a $120K account. I'm updating the forecast now and sending the CEO an alert. This is not a wait-until-Friday update. CEO gets the alert today." Forecast updated; CEO alerted; save plan initiated within 24 hours; forecast reflects the new At Risk status immediately
3. **Adversarial:** CS rep wants to call an account "Probable" when it's actually At Risk — "I don't want to alarm the CEO about every account that's a little wobbly" → Dr. Lewis: "The CEO's job is to decide which accounts get executive attention. If we call something Probable when it's At Risk, the CEO doesn't know to show up for the save — and if that account churns, the CEO will ask why they weren't told. The categories protect both of us: Committed means we're confident; At Risk means we need CEO involvement. If an account has claim ratio >85%, a champion departure, and hasn't attended the last 2 QBRs, that's not 'a little wobbly' — that's At Risk. The forecast is honest, not comfortable."

## Audit Log
All renewal forecast documents retained by entity, period, and date. CEO alert records retained (what changed; when notified; response action). Matt Mathison quarterly and annual forecast records retained. Status change records retained (when each account moved between categories and why).

## Deprecation
Retire when each portfolio company has a CRM or CS platform that automatically generates renewal forecasts from contract dates and health scores — with Dr. Lewis reviewing and validating the forecast monthly and the CEO receiving a standing weekly renewal risk update.
