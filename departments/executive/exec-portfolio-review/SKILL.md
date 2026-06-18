---
name: exec-portfolio-review
description: "Run the quarterly portfolio review for MBL Partners and its entities. Use when the user says 'portfolio review', 'quarterly review', 'QR', 'portfolio performance review', 'entity review', 'portfolio check-in', 'quarterly portfolio meeting', 'entity performance', 'how is the portfolio doing', 'portfolio health', 'portfolio status', 'review the portfolio', 'quarterly business review MBL', 'MBL portfolio review', 'Allevio review', 'HIVE review', 'Column6 review', 'Matt portfolio briefing', 'quarterly entity review', 'portfolio scorecard', 'entity scorecard', 'entity status update', 'how is each company doing', 'portfolio ops review', or 'quarterly check-in on the entities'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--entity <MBL|Allevio|HIVE|Column6|all>] [--action <prepare|run|summarize|present>]"
---

# Exec Portfolio Review

Run the quarterly portfolio review for MBL Partners — synthesizing entity-level performance across Allevio, HIVE Partners, and Column6, identifying the portfolio's biggest opportunities and risks, and delivering a clear picture to Matt Mathison of where the portfolio stands vs. the annual plan. The quarterly portfolio review is the forcing function that converts monthly metric monitoring into strategic clarity: not just "what happened" but "what does this mean and what do we do about it."

## When to Use
- End of each quarter (Q1: April 15, Q2: July 15, Q3: October 15, Q4: January 15)
- Matt Mathison requests a portfolio health check before an LP or board meeting
- An entity's performance shifts significantly mid-quarter and a re-forecast is needed
- Annual planning inputs are needed (Q3 review feeds annual planning directly)

## Portfolio Review Framework

```
PORTFOLIO REVIEW STRUCTURE (3-4 hours; Dr. Lewis prepares; Matt Mathison reviews):

  SECTION 1 — PORTFOLIO HEALTH SCORECARD:
  
    For each entity (Allevio, HIVE, Column6):
      □ Revenue: Actual vs. plan ($ and % variance)
      □ Gross Revenue Retention: Actual vs. target (Allevio >90%; Column6 >70%; HIVE >85%)
      □ Net Revenue Retention: Actual vs. target (all >100%)
      □ Entity-specific north star metric (exec-vision-setting):
          Allevio: employer group GRR × claim ratio trend
          HIVE: landowner GRR × total royalties distributed
          Column6: agency NRR × Priority A relationship depth
      □ Health rating: 🟢 On plan / 🟡 Caution / 🔴 Action required
      
    Portfolio-level view:
      □ Weighted NRR across all entities (portfolio health leading indicator)
      □ Total ARR or revenue (trailing 12 months)
      □ Forward ARR at risk (renewal forecast At Risk category — cs-renewal-forecast)
      □ Capital deployed this quarter; capital remaining in plan
      
  SECTION 2 — WINS AND MISSES:
  
    For each entity: top 2-3 wins and top 2-3 misses this quarter.
    Wins are included because they identify what is replicable across entities.
    Misses are included with root cause — not "market headwinds" as an explanation,
    but specific operational or strategic failures we can correct.
    
    Rule: Every miss requires a root cause in one of these categories:
      A — Execution failure (we knew what to do, didn't do it)
      B — Plan failure (we did what we planned, but the plan was wrong)
      C — Market/external (outside our control — describe the specific event)
      D — Resource failure (we had the right plan but wrong resources to execute)
    If a miss is labeled C (external) more than twice in a row for the same metric,
    it is probably A or B — Dr. Lewis challenges the classification.
    
  SECTION 3 — ACTION ITEMS AND ACCOUNTABILITY:
  
    Review prior quarter action items: completed, in progress, missed, still pending.
    Set new action items for the coming quarter: specific owner, due date, success criteria.
    
    Rule: Any action item that was "in progress" last quarter and is "in progress" again
    this quarter without new material development is flagged for Matt Mathison.
    Perpetually-in-progress items are stopped, redesigned, or killed.
    
  SECTION 4 — FORWARD LOOK:
  
    □ What do we expect next quarter? (Entity CEO forecasts)
    □ What risks are emerging? (Leading indicators going in the wrong direction)
    □ What opportunities are available right now? (Expansion, new markets, M&A)
    □ What decisions does Matt Mathison need to make before next quarter?
    
ENTITY-SPECIFIC REVIEW INPUTS:

  Allevio:
    □ Employer group count (current vs. plan)
    □ Member count and census updates
    □ Average claim ratio (vs. target; month-over-month trend)
    □ Open enrollment pipeline (which groups renewing when; any at risk)
    □ RCM performance: AdvancedMD collections rate vs. target
    □ Clinical program metrics: high-risk member engagement rate
    
  HIVE Partners:
    □ Landowner count (current vs. plan)
    □ Leased acres and development activity
    □ Total royalties distributed this quarter
    □ Lease renewal pipeline (which leases expiring when; any at risk)
    □ Competing operator activity (Uinta Basin competitive intelligence)
    □ Production trends: oil/gas volumes vs. prior quarter
    
  Column6:
    □ Active agency relationships (Priority A/B/C/D counts)
    □ IO booking velocity: IOs signed this quarter vs. prior quarter
    □ Average VCR across all campaigns vs. target (≥92%)
    □ NRR by agency tier
    □ IO gap tracking: Priority A agencies with IO gap >30 days
    □ New brand/agency pipeline

MEETING CADENCE:
  Pre-review: Dr. Lewis prepares entity scorecards (10 days before meeting)
  Entity CEO review: Dr. Lewis reviews scorecards with each entity CEO (5 days before)
  Matt Mathison review: 2-3 hour meeting; section by section; Matt drives discussion
  Follow-up: Action items posted to Monday.com within 24 hours (exec-action-tracker)
```

## Output Format

```markdown
# MBL Portfolio Review — Q[X] [YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date]
**Reviewed with:** Matt Mathison | **Meeting date:** [Date]

---

## Portfolio Health Scorecard

| Entity | Revenue vs. Plan | GRR | NRR | North Star | Status |
|--------|----------------|-----|-----|-----------|--------|
| Allevio | $[X]M / $[Y]M ([Z]%) | [X]% | [X]% | [Metric] | 🟢/🟡/🔴 |
| HIVE | $[X]M / $[Y]M ([Z]%) | [X]% | [X]% | [Metric] | 🟢/🟡/🔴 |
| Column6 | $[X]M / $[Y]M ([Z]%) | [X]% | [X]% | [Metric] | 🟢/🟡/🔴 |
| **Portfolio** | **$[X]M / $[Y]M ([Z]%)** | — | **[X]%** | Wtd NRR | 🟢/🟡/🔴 |

---

## Entity Summaries

### Allevio 🟢/🟡/🔴
**Top 3 wins:** [Win 1] | [Win 2] | [Win 3]
**Top 3 misses:** [Miss 1] (Root cause: A/B/C/D) | [Miss 2] | [Miss 3]
**Q[X+1] outlook:** [Forward risk and opportunity]

### HIVE Partners 🟢/🟡/🔴
[Same structure]

### Column6 🟢/🟡/🔴
[Same structure]

---

## Action Items — Q[X] Carryforward

| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| [Prior quarter action] | [Name] | [Date] | ✅ Done / 🔄 In progress / ❌ Missed |

---

## New Action Items — Q[X+1]

| Action | Owner | Due | Success criteria |
|--------|-------|-----|-----------------|
| [Action] | [One person] | [Date] | [Specific, measurable] |

---

## Matt Mathison Decisions Required Before Q[X+1]

1. [Decision 1] — [Context; recommendation; deadline]
2. [Decision 2]
```

## Output Contract
- Entity CEO data before Matt Mathison review — entity CEOs provide their section inputs to Dr. Lewis at least 5 days before the Matt Mathison portfolio review; Dr. Lewis does not present entity data to Matt that has not been reviewed by the entity CEO; a surprise in the Matt meeting because the entity CEO didn't provide updated numbers is a process failure; Dr. Lewis enforces the 5-day input deadline with entity CEOs
- Root cause is mandatory for misses — "market conditions" without a specific causal mechanism is not a root cause; Dr. Lewis reviews every miss category label (A/B/C/D) and challenges any miss labeled C more than twice in a row; a business that labels every underperformance as external-cause is a business that won't improve; the root cause analysis is the most important part of the review for Matt Mathison
- Actions must be specific and owned — every action item has one owner (not "the leadership team"), a specific due date, and a specific success criterion; "work on X" is not an action item; "deliver Y to Z by [date]" is; Dr. Lewis posts all action items to Monday.com within 24 hours of the review and tracks completion each week
- HITL required: Entity CEOs provide their section inputs 5 days before; Dr. Lewis reviews all entity inputs before the Matt Mathison meeting; Matt Mathison chairs the portfolio review; Dr. Lewis challenges root cause classifications; Matt Mathison approves all new action items over Dr. Lewis's authority threshold; Dr. Lewis tracks all action items weekly between reviews

## System Dependencies
- **Reads from:** Entity financial data (QuickBooks — actual vs. budget); cs-kpi-dashboard (CS metrics by entity — GRR, NRR, NPS, health distribution); exec-renewal-coordinator at entity level (renewal pipeline and At Risk ARR); exec-okr-tracker (OKR completion status); exec-action-tracker (prior quarter action item status from Monday.com); exec-capital-allocation (capital deployed and remaining); entity CEO input packages (SharePoint/Strategy/PortfolioReviews/[YYYY]/Q[X]/[Entity]_Input.pdf)
- **Writes to:** Portfolio review deck (SharePoint/Strategy/PortfolioReviews/[YYYY]/Q[X]_PortfolioReview.pdf); Monday.com action items (exec-action-tracker — all new actions posted within 24 hours); exec-lp-reporting (portfolio review data feeds the quarterly LP report); exec-strategic-planning (Q3 review feeds annual planning discovery phase); entity CEO feedback (SharePoint/Strategy/PortfolioReviews/[YYYY]/Q[X]/[Entity]_Feedback.pdf)
- **HITL Required:** Entity CEOs provide inputs 5 days before; Dr. Lewis reviews all inputs before Matt; Matt Mathison chairs; Dr. Lewis challenges root cause classifications; Matt Mathison approves actions above his threshold; Dr. Lewis tracks actions weekly

## Test Cases
1. **Golden path:** Q2 portfolio review — Allevio: 🟢 GRR 94% (target >90%), NRR 108%; miss: new employer group sales at 70% of plan (root cause: B — plan was too aggressive for Q2 given OE seasonality; Q4-Q1 is the sales season); HIVE: 🟡 GRR 87% (target >85%), one landowner churn in Q2 (root cause: A — CS didn't execute the competing operator protocol in time); Column6: 🟢 NRR 112%, VCR 93% average; action items: Dr. Lewis to update Allevio employer group sales plan to reflect seasonality by July 1 (Matt: "I don't want to see a Q2 miss for the same reason next year"); HIVE competing operator protocol review by June 30 (Dr. Lewis: "I'll make sure the cs-landowner-communicator protocol was followed — if it wasn't, we fix the process, not just the outcome"). Meeting ends in 2 hours with clear priorities.
2. **Edge case:** Column6 entity CEO hasn't sent inputs 3 days before the review → Dr. Lewis calls directly: "I need your Q2 inputs by EOD today — I have a review with Matt in 48 hours and I'm not walking in without your numbers. What's getting in the way?" Column6 CEO: "The VCR data is delayed from the ad ops system." Dr. Lewis: "Give me what you have now, and we'll note that the VCR number is preliminary and will be confirmed by [date]. I'm not delaying the Matt review over a data timing issue." Preliminary numbers submitted; review proceeds; VCR confirmed post-review with a follow-up email to Matt.
3. **Adversarial:** An entity CEO pushes back in the Matt review: "The claim ratio increase was due to flu season — that's external, not us." Dr. Lewis (in real time): "Matt, this is the second quarter we've labeled the claim ratio miss as an external event. I want to dig on that. [Entity CEO], flu season affects all employers in our portfolio. Did the employers with Allevio clinical programs experience a similar spike? If not, the clinical engagement is the variable — not just the external event. I think this is root cause B (plan failure) or A (execution failure), not C." Matt: "Right — what's the Allevio clinical team doing differently for Q3?" Discussion redirected to actionable levers.

## Audit Log
All portfolio review materials retained by quarter and year. Entity CEO input packages retained. Matt Mathison action items retained with completion dates. Root cause classifications retained. Mid-quarter re-forecasts retained (what changed; when; why). Capital deployment decisions retained.

## Deprecation
Retire when MBL has a Chief Operating Officer who runs the portfolio review process — with Matt Mathison retaining the chair role and Dr. Lewis retaining the AI strategy and THRIVE review inputs.
