---
name: strategy-kpi-dashboard
description: "Build or update a KPI dashboard — visualizing key metrics for a company or portfolio. Use when the user says 'KPI dashboard', 'build a dashboard', 'metric dashboard', 'performance dashboard', 'create the dashboard', 'KPI tracking dashboard', 'executive dashboard', 'dashboard for the CEO', 'metrics visualization', 'dashboard setup', 'what should be on the dashboard', 'operational dashboard', 'scorecard', 'management dashboard', 'portfolio dashboard', or 'dashboard design'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company or portfolio>] [--audience <CEO|board|matt|weekly|monthly>] [--platform <monday|excel|powerbi|manual>]"
---

# KPI Dashboard

Design KPI dashboards for MBL portfolio companies and the MBL portfolio — defining the right metrics, the display structure, the data sources, and the update cadence to give the CEO and Matt Mathison the operational visibility they need to manage toward plan. Dashboards fail in two ways: too many metrics (everything seems important, nothing is actionable) or the wrong metrics (activity metrics instead of outcome metrics). The right dashboard has 5-7 KPIs per company, each with a precise definition, a clear target, a color status, and a trend — nothing more. The dashboard is a decision-support tool, not a reporting exercise.

## When to Use
- Setting up a new portfolio company's management dashboard
- The CEO or Matt Mathison says they can't easily see how the company is performing
- Revising an existing dashboard when KPIs are wrong or outdated
- Building the MBL portfolio-level dashboard (all three companies on one view)
- Monday.com board design for KPI tracking

## Dashboard Design Framework

```
Dashboard design principles:

  5-7 KPIs maximum per company:
    Each KPI needs: Name | Definition (precise) | Target | Actual | Status (🟢🟡🔴) | Trend (↑→↓)
    Fewer metrics, tracked better > more metrics, tracked poorly
    
  Lead vs. lag balance:
    3-4 lagging indicators: Financial health (revenue, EBITDA, cash, margin)
    2-3 leading indicators: Operational signals that predict financial outcomes
    
  Dashboard views by audience:
    CEO weekly (5-7 KPIs, operational focus): What do I need to manage this week?
    Matt Mathison monthly (financial + thesis): Is the investment on track?
    Board quarterly (full picture + YoY): Is governance healthy?
    
  Status rules:
    🟢 Green: At or above target
    🟡 Yellow: Within 10% of target but deteriorating, or 10-20% below target with recovery plan
    🔴 Red: >20% below target, or any below target without recovery plan, or trend worsening 2+ months
    
    Status must be honest — a 🟢 metric that is actually at risk destroys dashboard credibility
    
ALLEVIO KPI Dashboard (primary care MSO):

  1. Patient visit volume (weekly/monthly)
     Definition: Total completed patient visits (not scheduled; completed and billed)
     Target: [N] visits/month (based on provider capacity × utilization %)
     Source: AdvancedMD
     Why: Direct revenue driver; early signal of capacity or scheduling issues
     
  2. Average revenue per visit (monthly)
     Definition: Total revenue ÷ total completed visits (blended; all payers)
     Target: $[X]/visit (from strategy-pricing-strategy)
     Source: Marshall Medical Billing / QuickBooks
     Why: Detects payer mix shifts and billing rate changes
     
  3. Provider utilization rate (weekly)
     Definition: Actual visits ÷ (FTE providers × daily capacity × working days) × 100%
     Target: ≥90%
     Source: AdvancedMD scheduling data
     Why: Leading indicator of revenue growth or vacancy impact
     
  4. Billing lag (monthly)
     Definition: Average days from service date to claim submission
     Target: ≤35 days
     Source: Marshall Medical Billing AR aging report
     Why: Billing lag = cash timing; >35 days indicates process issue; >45 days = cash problem
     
  5. Claims denial rate (monthly)
     Definition: % of submitted claims denied on first submission
     Target: <5%
     Source: Marshall Medical Billing
     Why: High denial rate erodes net revenue; leading indicator of coding or credentialing issues
     
  6. Payer concentration (monthly)
     Definition: % of total revenue from single largest payer
     Target: ≤45% from any single payer
     Source: QuickBooks / Marshall
     Why: Payer concentration risk; if >45% from Medicare, CMS rate change = major impact
     
  7. Provider count — FTE (weekly)
     Definition: Number of active FTE clinical providers (MDs, DOs, NPs, PAs)
     Target: [N] FTE (from annual plan)
     Source: HR
     Why: Most important operational input; vacancy immediately impacts visit capacity

HIVE PARTNERS KPI Dashboard:

  1. Production (BOE/day) — weekly
     Definition: Gross oil + gas equivalent barrels produced per day (trailing 7-day average)
     Target: [N] BOE/day (from annual production plan)
     Source: UT DOGM production reports; field reporting
     Why: Primary revenue driver; WTI price × production = revenue
     
  2. LOE per BOE (monthly)
     Definition: Total lease operating expense ÷ total BOE produced in period
     Target: ≤$[X]/BOE (from VCP — LOE reduction initiative)
     Source: QuickBooks/Field accounting
     Why: HIVE's primary controllable driver; $1/BOE improvement = $[N × 365 × $1] annual EBITDA
     
  3. WTI price (daily)
     Definition: West Texas Intermediate spot price
     Target: Monitor vs. $58/bbl trigger (CapEx pause) and $48/bbl trigger (stress protocol)
     Source: EIA / Bloomberg / commodity data
     Why: Revenue price input; triggers CapEx decision based on strategy-capex-prioritizer thresholds
     
  4. EBITDA (monthly)
     Definition: Production revenue − LOE − G&A (operating cash flow proxy)
     Target: $[X]K/month at current WTI and production
     Source: QuickBooks field accounts
     Why: Bottom-line health; source of distributions to MBL
     
  5. Active wells / permit pipeline (monthly)
     Definition: Wells currently producing; permits approved; permits pending
     Target: [N] producing; [N] permitted
     Source: UT DOGM permit database; field operations
     Why: Leading indicator of future production capacity; permit delays = production shortfall

COLUMN6/SIPROCAL KPI Dashboard:

  1. Impression volume (monthly)
     Definition: Total CTV ad impressions served (completed; not just initiated)
     Target: [N]M/month
     Source: Ad server / reporting platform
     Why: Top-line revenue driver; CPM × impressions = gross revenue
     
  2. Match rate (monthly)
     Definition: % of available impressions that successfully serve an ad
     Target: ≥85%
     Source: DSP/SSP reporting
     Why: Column6's core operational metric; <85% = revenue leakage from unfilled inventory
     
  3. Blended CPM (monthly)
     Definition: Total ad revenue ÷ impressions served × 1,000
     Target: $[X] CPM (from pricing strategy)
     Source: Ad server revenue reports
     Why: Price realization; CPM compression = market headwinds; CPM expansion = pricing power
     
  4. Revenue (monthly)
     Definition: Net revenue (Column6's share after publisher revenue share)
     Target: $[X]K/month (from annual plan)
     Source: QuickBooks
     Why: Primary financial health metric
     
  5. Active advertisers (monthly)
     Definition: Number of unique advertiser accounts with ≥1 campaign active in the period
     Target: ≥[N]; top advertiser ≤[X]% of revenue (concentration control)
     Source: CRM / ad platform
     Why: Revenue concentration risk; losing top advertiser = material impact

MBL PORTFOLIO DASHBOARD (Matt Mathison view):
  Allevio: Revenue vs. plan | EBITDA vs. plan | Provider FTE | Thesis status | FMV
  HIVE: Revenue vs. plan | EBITDA vs. plan | LOE/BOE | WTI current | Thesis status | FMV
  Column6: Revenue vs. plan | EBITDA vs. plan | Match rate | Thesis status | FMV
  Portfolio: Total FMV | Blended MOIC | Capital deployed | Distributions | No. at 🔴
```

## Output Format

```markdown
# KPI Dashboard — [Company Name]
**Audience:** [CEO Weekly / Matt Monthly / Board Quarterly]
**Period:** [Week/Month of Date] | **Updated:** [Date] | **Data source:** [AdvancedMD / QuickBooks / Field]

---

## Dashboard — [Company Name]

| KPI | Target | Actual | Status | Trend | Note |
|-----|--------|--------|--------|-------|------|
| [Patient visits] | [N]/mo | [N] | 🟢/🟡/🔴 | ↑/→/↓ | |
| [Avg revenue/visit] | $[X] | $[X] | | | |
| [Provider utilization] | ≥90% | [X]% | | | |
| [Billing lag] | ≤35 days | [N] days | | | If 🔴: [root cause] |
| [Claims denial rate] | <5% | [X]% | | | |
| [Payer concentration] | ≤45% | [X]% | | | |
| [Provider FTE] | [N] | [N] | | | |

---

## 🔴 Issues Requiring Attention

[For each red metric:]
**[Metric name]:** [Current: X vs. target Y] — Root cause: [Specific]. Recovery: [Action + owner + date].

---

## 🟡 Watch Items

[For each yellow metric:]
**[Metric name]:** [At risk because X — monitoring].

---

## CEO Action Items This Week

1. [Specific: Call Marshall Medical Billing re: billing lag — now 42 days]
2. [Specific: Schedule NP orientation — FTE currently at 3.5 vs. plan 4.0]

---

## Matt Mathison Weekly Note (if portfolio dashboard)

Portfolio status [Week]: [N] of [N] companies green; [N] yellow; [N] red. No red flags requiring immediate action / [Specific red flag: [Issue] — [brief description and current action]]. Action from Matt Mathison: [None / [Specific]].
```

## Output Contract
- 5-7 KPIs maximum, no exceptions — adding a KPI because a stakeholder "wants to see it" dilutes the dashboard; Dr. Lewis maintains the discipline of 5-7 company-level KPIs (from strategy-kpi-design); if a stakeholder wants an additional metric tracked, it can be in a supplemental operational report — not on the management dashboard; the dashboard is the signal, not the noise; a CEO who looks at 15 metrics every week has no dashboard — they have a report that they'll stop reading
- Status must be honest — a 🟡 or 🔴 metric that is being marked 🟢 to avoid difficult conversations destroys the dashboard's utility; Dr. Lewis applies the status rules mechanically (based on variance thresholds) and does not accept CEO or management overrides that change 🔴 to 🟢 without a documented recovery plan; if a metric is 🔴, it's 🔴 until the underlying issue is resolved — not until the CEO feels better about it
- The dashboard is connected to real data sources — a dashboard that requires someone to manually enter data every week will not be updated consistently; Dr. Lewis identifies the authoritative data source for each KPI and designs the update process (AdvancedMD export for Allevio visit volume; QuickBooks for financial metrics; field reports for HIVE production); where Monday.com is the platform, the data flow from source → Monday is configured; where the dashboard is manual, the update owner and day of week are explicit
- HITL required: Dr. Lewis designs the dashboard and defines the KPIs (from strategy-kpi-design); CEO confirms the KPI definitions are operationally accurate and the targets reflect the annual plan; controller or COO confirms the data sources; Matt Mathison reviews the portfolio-level dashboard design; dashboard is updated by the assigned data owner (typically controller or COO team) and reviewed by Dr. Lewis weekly before distribution to Matt Mathison

## System Dependencies
- **Reads from:** KPI definitions (strategy-kpi-design), annual plan targets (strategy-annual-plan-builder), financial statements (QuickBooks), AdvancedMD scheduling and billing data, Marshall Medical Billing AR data, UT DOGM production data, ad server impression reports (Column6)
- **Writes to:** Monday.com board (if dashboard platform); SharePoint/Governance/<Company>/Dashboard/; weekly CEO briefing; Matt Mathison weekly/monthly portfolio brief
- **HITL Required:** Dr. Lewis designs; CEO confirms KPI definitions and targets; controller/COO confirms data sources and owns weekly update; Dr. Lewis reviews before Matt Mathison distribution; any 🔴 metric triggers a Dr. Lewis conversation with the CEO before the Matt Mathison report goes out

## Test Cases
1. **Golden path:** Allevio CEO asks for a weekly dashboard → Dr. Lewis defines 7 KPIs (visits, avg revenue/visit, provider utilization, billing lag, claims denial rate, payer concentration, provider FTE); targets set from annual plan and strategy-kpi-design; data sources: AdvancedMD (visits, utilization), Marshall Medical Billing (billing lag, denial rate, payer mix), QuickBooks (revenue/visit, financial cross-check), HR (provider FTE); update process: controller pulls data every Monday morning; Dr. Lewis reviews by noon Monday; dashboard in CEO's inbox by Monday 1pm; Week 1 dashboard: visits 🟢 (1,850 vs. 1,800 target); avg revenue/visit 🟡 ($98 vs. $102 target — payer mix shifted slightly toward Medicare); provider utilization 🟢 (92%); billing lag 🟡 (38 days vs. 35 target — improving from 42 last month); claims denial 🟢 (4.2%); payer concentration 🟡 (48% Medicare — above 45% target); provider FTE 🟡 (3.5 vs. 4.0 — NP ramp); yellow items monitored; no red; CEO gets actionable view; Matt Mathison monthly summary: 5 of 7 green; 2 yellow (payer concentration + FTE ramp)
2. **Edge case:** HIVE production drops below WTI trigger threshold in the same week → Dashboard shows WTI at $57 (below $58 CapEx pause trigger); production at [N] BOE/day (🟡 — below plan but within 10%); LOE $23/BOE (🔴 — above $22 target and trend worsening); three metrics simultaneously yellow or red; Dr. Lewis flags WTI trigger to CEO and Matt Mathison immediately (per strategy-capex-prioritizer — WTI <$58 = CapEx pause trigger); dashboard includes: "WTI trigger crossed — CapEx pause protocol initiated per strategy playbook; HIVE CEO notified; completion well program suspended pending WTI recovery"; Matt Mathison brief sent same day (not waiting for weekly); action from Matt Mathison: confirm CapEx pause and communicate to field operations
3. **Adversarial:** CEO says "I want to add 5 more metrics to the dashboard — I need to see billing lag by payer, provider productivity by day of week, patient satisfaction scores, referral source tracking, and telehealth vs. in-person split" → All of these are legitimate operational metrics; none of them belong on the management dashboard; Dr. Lewis explains: the CEO dashboard has 7 metrics because those are the 7 decisions the CEO needs to make each week; billing lag by payer is a billing operations report (COO uses it, not the CEO weekly); provider productivity by day of week is a scheduling optimization tool; patient satisfaction scores are quarterly; referral source tracking belongs in a CRM report; telehealth split is useful but can be a supplemental data point under the visits metric (not a separate KPI); Dr. Lewis offers to build a supplemental operational report with the 5 additional metrics for the COO — keeping the CEO dashboard at the decision-level and the operational report at the management level

## Audit Log
Dashboard designs and KPI definitions retained by version. Target changes retained with rationale and approval. Weekly dashboard snapshots retained (monthly rolling archive). Any 🔴 metrics and recovery plans retained. Matt Mathison and CEO feedback on dashboard design retained.

## Deprecation
Retire when portfolio companies have dedicated analytics or business intelligence functions — with Dr. Lewis defining the KPIs from a strategic perspective and the analytics function managing the dashboard platform and data pipeline.
