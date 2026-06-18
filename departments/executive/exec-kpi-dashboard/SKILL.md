---
name: exec-kpi-dashboard
description: "Build and maintain the executive KPI dashboard for MBL Partners and portfolio entities. Use when the user says 'executive dashboard', 'exec dashboard', 'KPI dashboard', 'portfolio KPIs', 'executive KPIs', 'Matt dashboard', 'Matt briefing dashboard', 'portfolio metrics', 'executive metrics', 'portfolio scorecard', 'executive scorecard', 'management dashboard', 'build a dashboard', 'KPI report', 'weekly KPI report', 'monthly KPI report', 'portfolio health dashboard', 'entity metrics', 'entity KPIs', 'MBL dashboard', 'management scorecard', 'leadership KPIs', 'business performance dashboard', 'what are our KPIs', 'what metrics matter', 'portfolio performance metrics', 'entity performance metrics', or 'health dashboard'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6|all>] [--cadence <weekly|monthly|quarterly>] [--action <build|update|deliver|review>] [--audience <Matt|CEO|board|LP>]"
---

# Exec KPI Dashboard

Build and maintain the executive KPI dashboard for MBL Partners and portfolio entities — providing Matt Mathison and entity CEOs with a clear, consistent picture of the metrics that matter most, at the frequency they need to make good decisions. The executive dashboard is not a data dump; it is a curated view of the 10-12 indicators that, when tracked together, tell the real story of how the portfolio is performing. Every metric on the dashboard is there because losing track of it would cost MBL money, relationships, or competitive position.

## When to Use
- Weekly: Preparing Matt Mathison's Monday morning portfolio briefing (exec-ceo-briefing)
- Monthly: Portfolio KPI report for Matt Mathison and entity CEOs (by 15th of each month)
- Quarterly: Input to portfolio review (exec-portfolio-review)
- A new entity joins (define its dashboard metrics from day one)
- A metric goes Red for the first time (build the context and narrative before Matt sees it)

## KPI Dashboard Framework

```
MBL PORTFOLIO EXECUTIVE DASHBOARD:

  TIER 1 — PORTFOLIO-LEVEL (Matt Mathison weekly view):
  
    | Metric | Formula | Target | Frequency | Source |
    |--------|---------|--------|-----------|--------|
    | Portfolio NRR | Wtd NRR across all entities | >100% | Monthly | Entity finance |
    | Portfolio GRR | Wtd GRR across all entities | >85% | Monthly | Entity finance |
    | Forward ARR at risk | Sum of At Risk + Lost from all entity renewal forecasts | <10% of total ARR | Monthly | cs-renewal-forecast |
    | Capital deployed | YTD vs. plan | Per annual plan | Monthly | QuickBooks |
    | THRIVE flag count | Active THRIVE decision concerns across portfolio | 0 | Weekly | exec-decision-framework |
    
    Matt Mathison weekly view format:
    - 5 portfolio metrics (above)
    - 1 entity each week on rotation for a deeper spotlight (A-H-C-repeat)
    - Any 🔴 metric triggers a call with Dr. Lewis before Matt reviews the dashboard

  TIER 2 — ENTITY-LEVEL (Entity CEO monthly + Matt Mathison quarterly):
  
    ALLEVIO:
    | Metric | Target | Status | Month-over-month |
    |--------|--------|--------|-----------------|
    | Employer group count | Per plan | [N] | [+/-] |
    | Enrolled members | Per plan | [N] | [+/-] |
    | Average claim ratio | <80% (lower = better; benchmark-dependent) | [X]% | [trend] |
    | Employer group GRR | >90% | [X]% | [trend] |
    | NRR | >100% | [X]% | [trend] |
    | Clinical program enrollment (% high-risk) | ≥30% | [X]% | [trend] |
    | Member telehealth utilization | ≥15% | [X]% | [trend] |
    | RCM collections rate | >95% | [X]% | [trend] |
    
    HIVE PARTNERS:
    | Metric | Target | Status | Month-over-month |
    |--------|--------|--------|-----------------|
    | Landowner count | Per plan | [N] | [+/-] |
    | Leased acres | Per plan | [N] | [+/-] |
    | Total royalties distributed | Per plan ($K) | $[X]K | [trend] |
    | Landowner GRR | >85% | [X]% | [trend] |
    | NRR | >100% | [X]% | [trend] |
    | Lease renewals on track | ≥90% of upcoming leases engaged | [X]% | [trend] |
    | Competing operator contacts | 0 | [N] | [trend] |
    
    COLUMN6:
    | Metric | Target | Status | Month-over-month |
    |--------|--------|--------|-----------------|
    | Active agency relationships | Per plan | [N] | [+/-] |
    | Priority A agency count | Per plan | [N] | [+/-] |
    | Average VCR | ≥92% | [X]% | [trend] |
    | IO booking velocity (new IOs signed) | Per plan | [N] | [+/-] |
    | Agency NRR | >90% | [X]% | [trend] |
    | Agency GRR | >70% | [X]% | [trend] |
    | Priority A IO gap >30 days | 0 | [N] | [trend] |

  TIER 3 — LEADING INDICATOR ALERTS (Weekly, any entity):
  
    These trigger an immediate Dr. Lewis notification regardless of cadence:
    □ Any entity GRR drops below its target for 2 consecutive months
    □ Any entity NRR drops below 100%
    □ Allevio: claim ratio increases >5 points month-over-month
    □ HIVE: competing operator contact with a landowner >$50K/year royalty
    □ Column6: Priority A agency IO gap >30 days
    □ Any entity: forward ARR at risk exceeds 15% of total ARR
    □ Portfolio: capital deployed exceeds plan by >10%

DASHBOARD DELIVERY FORMAT:

  Matt Mathison weekly (Monday by 8 AM):
    - 3-sentence BLUF: what's the headline from the portfolio this week
    - Tier 1 portfolio metrics with traffic light status
    - One entity spotlight (rotation: Allevio week 1, HIVE week 2, Column6 week 3, repeat)
    - Any active Tier 3 alerts with status (when flagged, what's being done)
    - One decision Matt needs to make this week (if any)
    Format: Email or shared doc — not a long deck; Matt reads this in 3 minutes
    
  Matt Mathison monthly (by 15th of each month):
    - Full Tier 2 entity scorecard for all three entities
    - Month-over-month trend for every metric
    - Narrative paragraph per entity (wins, misses, outlook) — BLUF format
    - Forward ARR at risk total and any accounts Matt should know about
    - Capital deployment status
    
  LP/Board quarterly:
    - Portfolio health snapshot (Tier 1 metrics only)
    - Entity health status (🟢/🟡/🔴 with one-line narrative per entity)
    - Capital deployed vs. plan
    - No entity-specific data that could identify individual portfolio companies to outside parties
```

## Output Format

```markdown
# MBL Executive Dashboard — [Week/Month/Quarter] [YYYY]
**Prepared by:** Dr. Lewis | **Delivered:** [Date]
**Audience:** Matt Mathison

---

## Portfolio Health — BLUF

[3 sentences: what's the headline, what's working, what needs attention]

---

## Tier 1 — Portfolio Metrics

| Metric | Current | Target | Status | Trend |
|--------|---------|--------|--------|-------|
| Portfolio NRR | [X]% | >100% | 🟢/🟡/🔴 | ↑/↓/→ |
| Portfolio GRR | [X]% | >85% | 🟢/🟡/🔴 | ↑/↓/→ |
| Forward ARR at risk | $[X]K / [Y]% of ARR | <10% | 🟢/🟡/🔴 | ↑/↓/→ |
| Capital deployed YTD | $[X]M / $[Y]M plan | Per plan | 🟢/🟡/🔴 | — |
| Active THRIVE flags | [N] | 0 | 🟢/🔴 | — |

---

## Entity Spotlight — [Allevio/HIVE/Column6]

[Deep-dive on the rotation entity: top 3 metrics, key narrative, one question for Matt]

---

## Active Alerts

| Alert | Entity | Status | Dr. Lewis action |
|-------|--------|--------|-----------------|
| [Alert description] | [Entity] | [Status] | [What is being done] |
```

## Output Contract
- Matt reads this in 3 minutes — the weekly dashboard is not a strategy document; it is a navigation instrument; if Matt needs to read for more than 3 minutes to understand what's happening in the portfolio, the dashboard is too dense; Dr. Lewis reads the entire weekly dashboard aloud (to himself or to a colleague) before sending; if it takes more than 3 minutes to read, it needs to be cut
- Every Red metric triggers a narrative, not just a flag — a 🔴 metric on the dashboard without an explanation and a next action is worse than no dashboard at all; Matt Mathison's reaction to seeing a red metric without context is to call Dr. Lewis immediately; Dr. Lewis prevents this by including a brief explanation (what happened, root cause, what is being done) for every 🔴 before Matt sees the dashboard
- Tier 3 alerts require same-day Dr. Lewis action — a Tier 3 alert (e.g., Priority A IO gap >30 days; Allevio claim ratio +5 points) means something is happening that could compound into a serious problem; Dr. Lewis investigates the same day, determines the root cause, and either resolves it or has a plan to present to Matt within 24 hours
- HITL required: Dr. Lewis delivers all dashboard versions; Matt Mathison receives weekly by Monday 8 AM and monthly by the 15th; entity CEOs receive their entity section before it goes to Matt (entity CEOs should not be surprised by their own numbers in a Matt Mathison report); any 🔴 metric requires Dr. Lewis + relevant entity CEO coordination before delivery; LP-facing dashboard reviewed by Matt Mathison before distribution

## System Dependencies
- **Reads from:** cs-kpi-dashboard (entity CS metrics — GRR, NRR, NPS, churn, health distribution); entity financial data (QuickBooks — revenue vs. plan; capital deployed); cs-renewal-forecast (forward ARR at risk); exec-action-tracker (portfolio action item completion rate); exec-decision-framework (active THRIVE flag count); Allevio: cs-claim-ratio-reporter + cs-member-utilization-tracker; HIVE: cs-landowner-communicator; Column6: cs-campaign-performance-reporter + cs-io-renewal-manager
- **Writes to:** Executive dashboard (SharePoint/Governance/ExecutiveDashboard/[YYYY]/[YYYY-MM-DD]_ExecDashboard.pdf); Matt Mathison email/Teams (weekly); exec-portfolio-review (monthly dashboard feeds quarterly review); exec-lp-reporting (quarterly dashboard feeds LP report); Monday.com (Tier 3 alert actions posted to relevant board)
- **HITL Required:** Dr. Lewis delivers all versions; entity CEOs review their section before Matt delivery; 🔴 metrics require Dr. Lewis + entity CEO coordination before delivery; LP-facing dashboard reviewed by Matt Mathison; Tier 3 alerts require same-day Dr. Lewis action and 24-hour Matt update

## Test Cases
1. **Golden path:** Monday 7 AM — Dr. Lewis prepares the weekly dashboard; BLUF: "Portfolio is stable this week. Allevio GRR held at 93% — no churn events. HIVE royalties distributed $285K this month, on track vs. plan. Column6 alert: Priority A agency Gap Media has been IO-dark for 28 days — approaching the 30-day threshold. I've initiated the rebooking conversation; update Friday." Matt receives by 8 AM; reads in 2.5 minutes; responds: "Good — keep me posted on Gap Media. Everything else looks fine." Dashboard loop closed.
2. **Edge case:** Column6 VCR drops to 87% in November (below the ≥92% target; below the 88% flag threshold) → Dr. Lewis does not wait for the Monday dashboard; sends a Tier 3 alert to Matt Tuesday: "Column6 VCR dropped to 87% last week — below target. I've talked to the Column6 CEO. Root cause: two campaigns ran on a new publisher segment with lower completion rates. Those campaigns complete Friday. The Column6 team is holding the publisher from future IOs until performance is confirmed. No make-good has been offered yet — I'll update you Friday on whether it's needed." Matt: "Thanks for the heads-up. Keep me posted." VCR recovers to 91% the following week; no make-good needed; dashboard updated.
3. **Adversarial:** Entity CEO objects to a metric appearing in the Matt Mathison dashboard that they consider preliminary: "That RCM collections number is still being reconciled — I don't want Matt to see it until it's final." → Dr. Lewis: "I hear you. I have two options: (1) I include the preliminary number with a 'pending reconciliation' flag, or (2) I include the prior confirmed number and note that this month's data is being reconciled. What I can't do is send Matt a dashboard with a blank where a metric should be — that will generate more questions than either of those options. Which would you prefer?" Entity CEO: "Use the prior confirmed number and flag that reconciliation is in progress." Dr. Lewis: "Done. And let's make sure the reconciliation is complete before I send the monthly report in two weeks."

## Audit Log
All dashboard versions retained by date and audience. Entity CEO review records retained (who received their section; when; any feedback). Matt Mathison delivery records retained. Tier 3 alert records retained (date flagged; root cause; resolution). Red metric narrative records retained. LP dashboard review approvals retained.

## Deprecation
Retire when MBL has a dedicated Chief of Staff or Head of Business Operations who maintains the executive dashboard — with Dr. Lewis retaining the AI strategy metrics and THRIVE flag inputs and Matt Mathison retaining final review of all LP-facing dashboards.
