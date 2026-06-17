---
name: fpa-kpi-dashboard
description: "Build and maintain KPI dashboards for portfolio company CEOs and the board. Use when the user says 'KPI dashboard', 'dashboard', 'metrics dashboard', 'key metrics', 'KPIs', 'scorecard', 'management dashboard', 'financial dashboard', 'CEO dashboard', 'board dashboard', 'performance dashboard', 'company scorecard', 'monthly KPIs', 'weekly metrics', 'operational dashboard', 'metric tracking', 'build a dashboard', 'what should we track', 'which KPIs matter', 'key performance indicators', or 'performance scorecard'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--audience <ceo|board|ops-team>] [--frequency <weekly|monthly|quarterly>] [--action <build|update|review>]"
---

# KPI Dashboard

Build and maintain KPI dashboards for MBL portfolio company CEOs and the board — defining the vital signs of each business, tracking them consistently, and surfacing trends and alerts before they become problems. A KPI dashboard is the control panel for the business: it shows the 8-12 metrics that most directly indicate whether the company is healthy and on track. Dr. Lewis defines the KPIs for each portfolio company, builds the dashboard, and updates it monthly as part of the standard FP&A deliverable cadence.

## When to Use
- Setting up a new portfolio company financial reporting cadence
- Monthly close — update the KPI dashboard with current month actuals
- Board meeting — present the KPI scorecard as the opening financial slide
- CEO asks "what should we be tracking?"
- A metric is trending wrong and the dashboard needs a new alert threshold
- Matt Mathison asks for a portfolio-wide KPI view

## KPI Dashboard Framework

```
KPI SELECTION PRINCIPLES:
  1. Only track metrics you can act on — a KPI that no one can influence is not a management tool
  2. Maximum 12 KPIs per dashboard — more than 12 = none of them get attention
  3. Traffic light status for every KPI — is it green, yellow, or red?
  4. Trend line more important than point-in-time — is the metric improving or declining?
  5. One number per KPI — avoid combined or composite metrics that obscure the signal
  6. Update frequency must match the management cadence:
     Weekly: Operational metrics the CEO manages day-to-day (WTI price for HIVE; weekly campaign count)
     Monthly: Financial metrics (EBITDA, cash, member count)
     Quarterly: Strategic metrics (exit runway, deal model progress, DPI)
     
ALLEVIO KPI DASHBOARD — 12 CORE METRICS:

  Financial (4 KPIs):
    1. LTM EBITDA — vs. plan; vs. prior year (monthly update)
    2. Monthly revenue — vs. plan; vs. prior month (monthly)
    3. Cash runway (days) — threshold alerts (monthly)
    4. Collections rate — % of billed charges collected (monthly)
    
  Operational (5 KPIs):
    5. Total member count — vs. plan; trend (monthly)
    6. Net members added/lost — current month; trailing 3-month (monthly)
    7. Blended PMPM rate — vs. prior year; vs. market (monthly)
    8. Claims denial rate — % denied; trend (monthly; target <5%)
    9. Provider utilization rate — patient visits per provider per day (monthly; target 12-18)
    
  Strategic (3 KPIs):
    10. Exit runway EBITDA — LTM EBITDA vs. exit model (quarterly)
    11. Implied MOIC — current vs. deal model target (quarterly)
    12. Deal model EBITDA variance — ahead or behind the deal model (quarterly)
    
HIVE PARTNERS KPI DASHBOARD — 12 CORE METRICS:

  Financial (4 KPIs):
    1. LTM EBITDA — vs. plan; stress protocol threshold (monthly)
    2. Monthly revenue — vs. plan; trend (monthly)
    3. Cash runway (days) — threshold alerts (monthly)
    4. Operating netback per BOE — vs. plan; vs. prior year (monthly)
    
  Operational (5 KPIs):
    5. Average daily production (BOE/day) — vs. plan; trend (monthly; weekly for management)
    6. WTI realized price — vs. plan; current spot vs. stress trigger (weekly for management)
    7. LOE per BOE — vs. benchmark ($18-20 sector); trend (monthly)
    8. Production uptime % — well uptime vs. target (monthly)
    9. LOE total (monthly) — absolute; vs. prior period (monthly)
    
  Strategic (3 KPIs):
    10. WTI vs. stress trigger — current price; days above/below $48 trigger (weekly)
    11. Exit EBITDA trajectory — LTM EBITDA vs. deal model (quarterly)
    12. Implied MOIC — current vs. target (quarterly)
    
COLUMN6 KPI DASHBOARD — 12 CORE METRICS:

  Financial (4 KPIs):
    1. LTM EBITDA — vs. plan; vs. prior year (monthly)
    2. Monthly revenue — vs. plan; trend (monthly)
    3. Contribution margin % — vs. target (45%); trend (monthly)
    4. Cash runway (days) — threshold alerts (monthly)
    
  Operational (5 KPIs):
    5. Active campaigns — count; vs. plan; trend (monthly)
    6. Average campaign value — vs. plan; trend (monthly)
    7. CTV CPM — vs. benchmark ($18-45); trend (monthly)
    8. New campaigns launched — this month; pipeline for next month (monthly)
    9. Net revenue per campaign — contribution after media buy; trend (monthly)
    
  Strategic (3 KPIs):
    10. Client concentration — largest client % of revenue (monthly; target <20%)
    11. Exit EBITDA trajectory — LTM EBITDA vs. deal model (quarterly)
    12. Implied MOIC — current vs. target (quarterly)
    
DASHBOARD FORMAT:
  Traffic lights: Each KPI has a color (🟢 green = on target; 🟡 yellow = watch; 🔴 red = action required)
  Thresholds:
    Green: Within 5% of target or better
    Yellow: 6-15% below target
    Red: >15% below target or threshold crossed (cash <30 days; WTI <$48; denial rate >8%)
  Trend arrow: ↑ improving; → stable; ↓ declining (compared to prior 3-month average)
  Period-over-period comparison: Current month vs. prior month and vs. same month prior year
```

## Output Format

```markdown
# KPI Scorecard — [Entity] | [Month YYYY]
**Prepared by:** Dr. Lewis | **Updated:** BD7 each month | **Audience:** [CEO / Board / Portfolio]

---

## Financial KPIs

| KPI | Actual | Target | vs. Target | Trend | Status |
|-----|--------|--------|-----------|-------|--------|
| LTM EBITDA | $[X]K | $[X]K | +/−[X]% | ↑/→/↓ | 🟢/🟡/🔴 |
| Monthly Revenue | $[X]K | $[X]K | +/−[X]% | ↑/→/↓ | 🟢/🟡/🔴 |
| Cash Runway | [N] days | >90 days | — | ↑/→/↓ | 🟢/🟡/🔴 |
| [Collections Rate] | [X]% | >95% | +/−[X] bps | ↑/→/↓ | 🟢/🟡/🔴 |

---

## Operational KPIs

| KPI | Actual | Target | vs. Target | Trend | Status |
|-----|--------|--------|-----------|-------|--------|
| [Member Count] | [1,192] | [1,180] | +12 | ↑ | 🟢 |
| [Net Members Added] | +12 | +10 | +2 | ↑ | 🟢 |
| [PMPM Rate] | $[X] | $[X] | −$[X] | → | 🟡 |
| [Denial Rate] | [X]% | <5% | +[X] bps | → | ⚠️ |
| [Provider Utilization] | [X] visits/day | 12+ | +[X] | ↑ | 🟢 |

---

## Strategic KPIs (quarterly)

| KPI | Current | Deal Model | vs. Model | Status |
|-----|---------|-----------|---------|--------|
| Exit EBITDA | $[X]K | $[X]K | +/−[X]% | 🟢/🟡/🔴 |
| Implied MOIC | [X.X]× | [X.X]× | +/−[X.X]× | 🟢/🟡/🔴 |
| Hold period | [N] years | [N] years | — | — |

---

## Alerts This Month

| Alert | KPI | Threshold | Current | Action |
|-------|-----|-----------|---------|--------|
| [If any] | [KPI name] | [threshold] | [current value] | [Action owner / deadline] |

**No alerts** / **[N] alert(s) requiring action — see above**
```

## Output Contract
- 12 KPIs maximum — a CEO who receives a dashboard with 35 metrics does not receive a dashboard; they receive a report that they will skim and ignore; Dr. Lewis enforces the 12-KPI discipline rigorously; if the CEO asks to add a new KPI, Dr. Lewis requires removing one (or promoting one to a secondary report that is available on request but not on the primary dashboard); the dashboard shows the vital signs; the detailed reports show the lab work — both are available, but only the vital signs go on the monitor
- Traffic lights are more important than the numbers — the purpose of the KPI dashboard is to enable rapid identification of issues; a traffic light at the right threshold means the CEO can look at the dashboard in 2 minutes and know whether everything is fine or which metric needs attention today; Dr. Lewis sets the threshold for each traffic light carefully: too sensitive (everything turns yellow for a 2% miss) and the dashboard becomes noise; too loose (a metric has to be 30% below target to turn red) and problems are hidden; the goal is a dashboard where the CEOs trusts that "all green" means the business is genuinely healthy
- Trend is the signal — a single month's data point is less informative than the trend over the last 3 months; Dr. Lewis includes a trend arrow for every KPI; a metric that is in the green zone but trending down for 3 consecutive months is a leading indicator that it will be in the yellow zone next month; the trend arrow catches this before the traffic light changes; Dr. Lewis calls out negative trends even when the current metric is still green
- HITL required: Dr. Lewis builds and updates; CEO reviews monthly and adjusts operational priorities based on the dashboard; Dr. Lewis reviews with the CEO at the monthly financial meeting; any metric in the red zone triggers a specific action item in the management report; Matt Mathison reviews the KPI scorecard as part of the board package and in the portfolio performance summary; Dr. Lewis does not set the KPI targets — the CEO sets the targets with Dr. Lewis's guidance on what is achievable based on the financial model

## System Dependencies
- **Reads from:** All FP&A inputs: QuickBooks actuals (for financial KPIs); Allevio member roster (member count, net adds); HIVE production data from Covercy (BOE/day, realized price, LOE); Column6 ad server (campaigns, CPM, impressions); fpa-cash-runway-modeler (cash runway KPI); fpa-unit-economics-modeler (per-unit operating KPIs); fpa-exit-value-model (strategic KPIs — exit EBITDA and MOIC); billing system (collections rate, denial rate for Allevio)
- **Writes to:** KPI dashboard (SharePoint/Finance/<Company>/Dashboard/[YYYY-MM]_KPIDashboard.xlsx); board financial package (KPI scorecard is the opening slide — fpa-board-financial-package); management report (KPI section — summary); Matt Mathison portfolio summary (one-line KPI status per company); alert notifications (when any KPI crosses to red — immediate notification to CEO; if cash-related, also to Dr. Lewis and potentially Matt Mathison per the escalation policy)
- **HITL Required:** Dr. Lewis builds and maintains; CEO reviews and acts on red alerts; Dr. Lewis and CEO agree on the KPI set and thresholds at the beginning of each fiscal year (or when a new portfolio company is onboarded); target changes require CEO + Dr. Lewis agreement (and Matt Mathison awareness if strategic KPI targets change in a way that affects the exit thesis); Dr. Lewis does not add or remove KPIs without CEO discussion

## Test Cases
1. **Golden path:** Allevio monthly KPI scorecard for June → Financial: LTM EBITDA $852K (plan $840K, +1.4% 🟢 ↑); Monthly Revenue $104.5K (plan $101K, +3.5% 🟢 ↑); Cash Runway 82 days (target >90 days 🟡 → — just below the 90-day target but improving); Collections Rate 93.8% (target >95%, −1.2 bps 🟡 → ); Operational: Members 1,192 (plan 1,180, +12 🟢 ↑); Net adds +12 (plan +10 🟢 ↑); PMPM $85.50 (target $87, −$1.50 🟡 → ); Denial rate 4.8% (target <5%, just under 🟢 →); Provider utilization 13.5 visits/day (target 12-18 🟢 ↑); Strategic: Exit EBITDA $852K vs. deal model $840K (+1.4% 🟢); Implied MOIC 2.7× vs. target 2.5× 🟢; Alerts: One — cash runway 82 days (yellow): "Cash at 82 days — below the 90-day green threshold. No immediate action; runway is stable and improving (was 78 days last month). Monitor; no distributions until >90 days." Clean dashboard; CEO receives by BD7
2. **Edge case:** HIVE KPI dashboard shows WTI realized price at $47.80 — below the $48/bbl stress trigger → Dr. Lewis updates the dashboard: WTI KPI: 🔴 $47.80 (stress trigger: $48) ↓; EBITDA: 🟡 −18% vs. plan; Cash runway: 🟡 62 days; Dashboard alert: "⚠️ WTI STRESS TRIGGER ACTIVATED — $47.80 realized (trigger $48). Stress protocol in effect. CEO notified. CapEx freeze active. LOC standby. See HIVE stress protocol update for full detail." Dr. Lewis does not wait until the next scheduled report — the alert goes to CEO and Matt Mathison the day WTI drops below $48; the dashboard is updated immediately
3. **Adversarial:** The Allevio CEO adds "patient satisfaction score" to the KPI dashboard, bringing the total to 13 KPIs, and argues "this is the most important metric for member retention" → Dr. Lewis acknowledges the importance: "Patient satisfaction is absolutely important for member retention — I agree. But the KPI dashboard is already at 12 metrics, and adding a 13th dilutes the dashboard's ability to signal quickly. What I'd recommend: replace the 'Provider utilization rate' KPI (which is an operational detail metric) with 'Member NPS / satisfaction score.' The utilization rate moves to the management report as a secondary metric. This keeps the dashboard at 12 and puts satisfaction in a prominent position where it will get the attention it deserves. If we just add it, every time the dashboard shows a patient satisfaction issue, it will be competing visually with 12 other metrics for the CEO's attention." CEO agrees to the substitution; dashboard stays at 12 KPIs

## Audit Log
All monthly KPI dashboards retained by company and period. KPI threshold settings documented and retained (with effective date when thresholds change). Alert notifications retained (date sent, KPI, threshold, current value, action taken). Annual KPI review (are these still the right 12 KPIs?) documented by year. Any KPI additions or removals retained with rationale.

## Deprecation
Retire when each portfolio company has a dedicated data analyst or FP&A team member who maintains the real-time KPI dashboard — with Dr. Lewis reviewing the strategic KPIs (exit EBITDA, MOIC) and Matt Mathison reviewing the board-level scorecard quarterly.
