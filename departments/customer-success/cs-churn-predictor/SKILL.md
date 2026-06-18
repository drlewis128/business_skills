---
name: cs-churn-predictor
description: "Predict and prevent customer churn for MBL portfolio companies. Use when the user says 'churn', 'churn prediction', 'predict churn', 'churn risk', 'who might leave', 'customers at risk', 'churn signals', 'churn indicators', 'early warning churn', 'leading churn indicators', 'identify churn risk', 'churn model', 'at risk of churning', 'about to cancel', 'might not renew', 'cancellation risk', 'losing a customer', 'prevent churn', 'churn prevention', 'customer retention risk', 'is this customer going to leave', or 'churn analysis'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--action <analyze|predict|report|prioritize>]"
---

# CS Churn Predictor

Predict and prevent customer churn for MBL portfolio companies — identifying early warning signals before a customer signals dissatisfaction, scoring churn risk across the portfolio, and routing the right intervention to the right account at the right time. The goal of churn prediction is to surface issues when there is still time to fix them — not to document why customers left. Dr. Lewis reviews churn risk scores alongside health scores weekly.

## When to Use
- Weekly portfolio review (which accounts are showing churn signals?)
- Building the churn model for a new portfolio company
- A specific account is behaving unusually (unexplained signals)
- Post-churn analysis (after a customer leaves — what signals did we miss?)

## Churn Prediction Framework

```
CHURN SIGNAL CATEGORIES (each signal is a data point — signals compound):

  BEHAVIORAL SIGNALS (what the customer is doing or not doing):
    □ Declining engagement — slower response times; skipped QBRs; reduced contact
    □ Reduced utilization — Allevio: member count declining; Column6: IO frequency declining
    □ Inbound silence — customer who used to email frequently has gone quiet
    □ Product use changes — Allevio: members not accessing clinical care; Column6: no new creative submitted
    □ Champion change — the person who bought stopped being the main contact

  FINANCIAL SIGNALS (the economic relationship is straining):
    □ Late payments — one late payment is a yellow flag; two is a red flag
    □ Payment disputes — any dispute, even resolved, is a churn signal
    □ Pricing objection surfaced — customer mentioned cost concerns in any context
    □ Budget change — customer indicated budget pressures in their organization
    □ Claim ratio high — Allevio: employer's claim ratio >85% = high cost relative to value received

  RELATIONSHIP SIGNALS (something changed in the human relationship):
    □ Champion departure — HR Director left (Allevio); media buyer changed (Column6)
    □ Sponsor gone — executive who approved the purchase left the company
    □ Negative sentiment — customer used language like "concerned," "frustrated," "disappointed"
    □ Complaint history — one unresolved complaint; or two complaints in 6 months even if resolved
    □ Competitive activity — customer mentioned a competitor; or is known to be evaluating alternatives

  CONTEXTUAL SIGNALS (the customer's world changed):
    □ Organizational change — merger; acquisition; layoff; restructure at the customer
    □ Industry headwind — Allevio employer in a declining industry; Column6 agency lost a major brand client
    □ Regulatory change — affecting the customer's ability to use our product/service
    □ Economic change — recession signal affecting the customer's business

CHURN RISK SCORING MODEL (by entity):

  ALLEVIO:
    Score 0-100; combine signals:
      Member count declining 3+ months: +25 points
      Claim ratio >85%: +20 points
      Champion departed (new HR Director not yet engaged): +20 points
      Last QBR skipped: +10 points
      Late payment (last 6 months): +10 points
      Pricing objection surfaced: +10 points
      Negative sentiment detected in communications: +15 points
      Competitor mentioned: +20 points
    
    Thresholds:
      Low risk (0-24): Green — standard QBR cadence; no additional intervention
      Medium risk (25-49): Yellow — increase contact to bi-weekly; investigate primary signal
      High risk (50-74): Red — CEO-led intervention; save strategy required
      Critical (75+): Emergency — CEO personal outreach within 24 hours; renewal in danger
      
  COLUMN6:
    Score 0-100:
      No IO in 90 days: +25 points
      Campaign VCR <80% (recent): +20 points
      Media buyer changed: +20 points
      Performance complaint raised: +25 points
      Pricing objection: +15 points
      Competitor mentioned: +20 points
      Last email response >5 days: +10 points
      
    Thresholds: same Low/Medium/High/Critical as above
      
  HIVE:
    Score 0-100:
      Competing operator contact confirmed: +35 points
      Landowner expressed renewal uncertainty: +30 points
      Active payment dispute: +25 points
      Communication gap >60 days: +15 points
      Legal counsel engaged by landowner: +50 points (immediate Critical regardless of total)
      
    Thresholds: same as above

POST-CHURN ANALYSIS PROTOCOL:
  Within 30 days of any churn event:
    1. When did the first churn signal appear? (look backward — what did we miss?)
    2. What was the primary cause? (service failure? price? competitor? organizational change?)
    3. Was it preventable? (yes / no / partially)
    4. What would we do differently?
    5. Update the churn model: add or weight signals based on what we learned
  CEO reviews post-churn analyses for any account >$100K ACV
  Matt Mathison reviews post-churn analyses for any account >$150K ACV
```

## Output Format

```markdown
# Churn Risk Analysis — [Entity] | [Month YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Total accounts:** [N]

---

## Churn Risk Distribution

| Risk level | Count | % of accounts | ARR at risk |
|-----------|-------|--------------|------------|
| Low (0-24) | [N] | [X]% | — |
| Medium (25-49) | [N] | [X]% | $[X]K |
| High (50-74) | [N] | [X]% | $[X]K |
| Critical (75+) | [N] | [X]% | $[X]K |

---

## High and Critical Risk Accounts

| Account | Risk score | Primary signals | Action | Owner | Timeline |
|---------|-----------|----------------|--------|-------|---------|
| [Account A] | 72 | Champion gone + claim ratio 87% | CEO call | CEO | 48 hours |
| [Account B] | 55 | No IO 95 days + VCR 78% | Performance call + relationship reset | Dr. Lewis | This week |

---

## Trend (Last 90 Days)

| Month | Low | Medium | High | Critical |
|-------|-----|--------|------|---------|
| [Month -2] | | | | |
| [Month -1] | | | | |
| [This month] | | | | |
```

## Output Contract
- A churn risk score is a probability, not a verdict — a score of 72 doesn't mean the customer is leaving; it means there are enough signals that a proactive intervention this week is worth more than waiting for a renewal conversation in 90 days; Dr. Lewis presents churn risk scores to the CS team as action triggers, not verdicts — the response to a high score is a call, not a panic
- Signals must be logged when observed — a champion departure that isn't logged in CRM is a churn signal that doesn't get scored; Dr. Lewis requires the CS team to log all churn-relevant events in GoHighLevel CRM as they occur; a weekly data entry requirement: any account where something changed this week gets a CRM activity log entry; the churn model is only as good as the data feeding it
- Post-churn analysis is mandatory — every churn event is a learning event; Dr. Lewis requires a written post-churn analysis within 30 days of any churn; the analysis updates the churn model; over time, the model reflects the specific patterns that predict churn in each MBL portfolio company
- HITL required: CS rep logs signals weekly; Dr. Lewis reviews all High and Critical scores; CEO is notified immediately for any Critical score; post-churn analyses for >$100K ACV accounts require CEO review; post-churn analyses for >$150K ACV accounts require Matt Mathison review; any intervention strategy for a High or Critical account requires Dr. Lewis direction before the CS rep takes action

## System Dependencies
- **Reads from:** CRM activity logs (GoHighLevel — contact frequency; last activity; complaint history; champion status); cs-health-score-tracker (health score and trend — strong correlation with churn risk); AdvancedMD member count and claim ratio (Allevio); Column6 IO log and campaign performance data; Covercy payment records (HIVE); QuickBooks payment history (late payments; disputes); QBR notes (sentiment signals from recent conversations)
- **Writes to:** Churn risk score (GoHighLevel CRM — score field; date; primary signals); weekly churn risk report (SharePoint/CustomerSuccess/<Company>/ChurnReports/[YYYY-MM]_ChurnRisk.pdf); CEO Critical alert (immediate notification when any account scores Critical); post-churn analysis (SharePoint/CustomerSuccess/<Company>/PostChurnAnalyses/[Account]_[Date]_PostChurn.pdf); churn model update log (when signals are added or weighted based on post-churn analysis)
- **HITL Required:** Dr. Lewis reviews High and Critical risk accounts weekly; CEO notified immediately for any Critical score; any save strategy for High/Critical accounts requires Dr. Lewis direction; post-churn analyses for >$100K ACV require CEO review; >$150K ACV require Matt Mathison review; churn model updates require Dr. Lewis approval

## Test Cases
1. **Golden path:** Monthly Allevio churn risk review → Account A: member count declined 3 months (score: 25); claim ratio reached 87% (score: +20 = 45); HR Director has stopped attending QBRs (score: +10 = 55) → High risk; Dr. Lewis: "This account went from Medium to High in 30 days — three signals are compounding. We need to move now. I'm scheduling a call with the CFO (not the HR Director — we need executive contact) for this week. Agenda: (1) acknowledge the claim ratio is higher than we'd like; (2) show them our clinical care intervention plan for their highest-cost members; (3) ask if there's anything they're seeing that we should know about. I'll prep the talking points." Call scheduled; CFO reveals the HR Director is planning to retire (explains the disengagement); CFO introduces Dr. Lewis to the incoming HR Director; churn risk score drops to 25 (Medium) after re-engagement; renewal secured at Day -45
2. **Edge case:** Column6 — no IO in 85 days (score: 20); media buyer responded in 4 days on last email (score: 10 — below threshold); no complaint history; no pricing objection — total score: 30 (Medium risk); but the media buyer's response included the phrase "we're consolidating our media buys for Q4" → Dr. Lewis: "That phrase is a competitive signal, even at low score. Consolidating media buys means they're choosing vendors — and we're not sure if we're in or out. I'm adding: 'competitive activity mentioned' (+20) = 50 (High risk). Upgrade now. This needs a meeting this week — not an email — to understand where Column6 sits in their Q4 plan. I'll join the call." Meeting reveals Column6 is one of three vendors being evaluated; relationship investment at this point wins the Q4 IO; risk score returns to Low
3. **Adversarial:** After a $180K Allevio account churns, the CS rep says "there was nothing we could do — they were acquired and the new company has a different benefits provider" → Dr. Lewis: "I hear you, and acquisition is a real churn cause we can't always prevent. But let's look at the signal log. [Reviews CRM.] I see the member count was declining 4 months ago. An acquisition typically doesn't cause member count decline that early — member count usually stays stable until the close. So either the acquisition was in process for 4 months and we didn't know, or there was a separate issue. Was there any contact in the last 4 months beyond the monthly report email? [CRM shows no QBRs, no calls, no check-ins for 5 months.] That's the lesson: 4 months of silence is a churn signal regardless of the reason. We wouldn't have stopped the acquisition — but we would have known it was coming 4 months earlier. Adding 'no contact for 90+ days' as a signal to the model now." Churn model updated; post-churn analysis written; CEO reviews

## Audit Log
All churn risk scores retained by account, entity, date, and primary signals. Critical alert records retained. Post-churn analysis documents retained permanently. Churn model update logs retained (what changed; when; why; Dr. Lewis approval). Churned customer records retained with root cause classification.

## Deprecation
Retire when each portfolio company has a dedicated CS platform that automates churn prediction from behavioral and financial signals — with Dr. Lewis reviewing the churn model quarterly and the CEO receiving a monthly churn risk summary.
