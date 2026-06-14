---
name: dashboard-designer
description: "Design effective data dashboards for executives and operators. Use when the user says 'design a dashboard', 'build a dashboard', 'dashboard layout', 'executive dashboard', 'operational dashboard', 'how should the dashboard look', 'what goes on a dashboard', 'dashboard best practices', 'dashboard for the CEO', or 'dashboard wireframe'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--audience <executive|operational|self-serve>] [--tool <metabase|looker|google-data-studio|excel>]"
---

# Dashboard Designer

Design effective data dashboards that are actually used. Most dashboards fail because they were built for the person who built them, not for the person who reads them. A good dashboard is designed for a specific decision, for a specific reader, at a specific cadence. For MBL, the primary dashboard readers are Matt Mathison (portfolio-level decisions) and portfolio company operational leads (their own KPIs). Both need clarity and speed — they can't spend 10 minutes reading a dashboard.

## When to Use
- Building a new dashboard — design before building
- An existing dashboard isn't being used — redesign it
- Preparing a dashboard for Matt Mathison — design review first
- A portfolio company needs a standard KPI dashboard
- Building self-serve analytics — design the template users will copy

## Dashboard Design Principles

```
1. One question per dashboard
   "How is the portfolio doing this month?" → one dashboard
   "Everything about everything" → not a dashboard, it's a data dump

2. The 5-second test
   The reader should understand the headline within 5 seconds of opening the dashboard
   Top-left is where the eye goes first — put the most important metric there

3. Right visualization for the data type
   Trend over time → line chart
   Comparison between categories → bar chart
   Part of a whole → donut/pie (only use for <5 segments)
   Single metric vs. target → big number + sparkline
   Geographic → map
   Correlation → scatter plot

4. Limit color coding
   One color for the primary metric; red/yellow/green for status only
   Never use color just to make it look pretty

5. Context is mandatory
   A number without context (target, benchmark, prior period) is just a number
   Always show: current value vs. target vs. last period

6. Design for scanning, not reading
   Users scan dashboards; they read reports
   Hierarchy: big numbers (scan), charts (understand trend), tables (drill down)
```

## Dashboard Types

```
Executive dashboard (Matt Mathison):
  Goal: Portfolio health at a glance
  Cadence: Weekly / monthly check
  Components: 4-6 key numbers (traffic light status), 2-3 trend charts, alert list
  Time to read: < 2 minutes

Operational dashboard (portfolio company lead):
  Goal: Daily/weekly operational health
  Cadence: Daily check
  Components: 6-8 operational KPIs, team performance, alerts
  Time to read: < 5 minutes

Self-serve analytics (power users):
  Goal: Enable custom analysis without data team help
  Cadence: As needed
  Components: Filterable tables, downloadable data, pre-built segment views
  Time to use: Varies
```

## Output Format

```markdown
# Dashboard Design — <Dashboard Name>
**Date:** <date> | **Designer:** Dr. John Lewis
**Audience:** <name/role> | **Tool:** Metabase / Looker / Google Data Studio
**Question answered:** "<Specific question this dashboard answers>"
**Cadence of review:** Daily / Weekly / Monthly

---

## Layout Wireframe

```
╔══════════════════════════════════════════╗
║  HEADER: Portfolio KPI Dashboard         ║
║  Period: This Week | Last Updated: [date]║
╠══════════╦═══════════╦═══════════════════╣
║ ARR      ║ Pipeline  ║ AI Projects       ║
║ $2.1M    ║ $850K     ║ 3/4 on track      ║
║ +8% MoM  ║ -5% WoW   ║ ⚠️ 1 at risk     ║
║ 🟢       ║ 🟡        ║ 🟡                ║
╠══════════╩═══════════╩═══════════════════╣
║ Portfolio Company Health (trend chart)   ║
╠══════════════════════════════════════════╣
║ Allevio | HIVE | Column6 | MBL internal  ║
║ [Comparison bar chart by entity]         ║
╠══════════════════════════════════════════╣
║ ALERTS                                   ║
║ 🔴 HIVE cash position below threshold    ║
║ 🟡 Meeting Intelligence: D7 retention 🔽 ║
╚══════════════════════════════════════════╝
```

---

## Chart Specifications

### Section 1: Header KPIs (big numbers)

| Position | Metric | Visualization | Target | Color logic |
|---------|--------|--------------|--------|-------------|
| Top-left | Portfolio ARR | Big number + MoM % change | $2.5M | Green ≥ target; yellow <5%; red <10% |
| Top-center | Active pipeline | Big number + WoW % | $1M | Green ≥ target; yellow <80%; red <60% |
| Top-right | AI project health | Big number + count | 4/4 on track | Green = all on track; yellow = 1 at risk; red = 2+ |

---

### Section 2: Trend Chart

| Chart | Metric | X-axis | Y-axis | Comparison lines |
|-------|--------|--------|--------|-----------------|
| Portfolio ARR trend | ARR by entity | Month | $ | Target line; last year |

---

### Section 3: Alerts

| Alert type | Condition | Display |
|-----------|---------|---------|
| Financial alert | Cash < 60 days runway | 🔴 alert with entity name |
| Product alert | Retention drops >5pp | 🟡 alert with metric |
| AI quality alert | HITL rejection >15% | 🟡 alert with skill/product |

---

## Data Sources

| Section | Source table | Refresh | Latency |
|---------|-------------|---------|---------|
| ARR | marts.finance.mrr_monthly | Daily | <24h |
| Pipeline | marts.crm.pipeline_current | Real-time | <1h |
| AI projects | marts.meetings.summary_health | Daily | <24h |

---

## Implementation Notes

**Filters available:**
- Time period (rolling: 7D / 30D / 90D / custom)
- Entity (All / specific portfolio company)

**Mobile-friendly:** Yes — big numbers stack vertically on mobile

**Access:** Metabase group "MBL Executive" — Matt Mathison, Dr. Lewis, designated admins
```

## Output Contract
- Wireframe always produced before building — building without a layout design wastes development time
- Question answered always stated — a dashboard without a question doesn't have a purpose
- Chart type always specified with rationale — "a chart" is not a specification
- Data source always specified — dashboards built without knowing the data source have to be rebuilt later
- HITL required: Dr. Lewis approves dashboard design before build; Matt Mathison approves executive dashboard layout; dashboard access configuration reviewed by Dr. Lewis before granting

## System Dependencies
- **Reads from:** BigQuery marts (for data), user feedback (for iteration), business requirements
- **Writes to:** Dashboard design spec (SharePoint/Data/Dashboards); Metabase dashboard
- **HITL Required:** Dr. Lewis approves design; Matt Mathison approves executive dashboard; access configuration requires Dr. Lewis review

## Test Cases
1. **Golden path:** Portfolio KPI dashboard for Matt Mathison → Top 3 KPIs: ARR, pipeline, AI project health; trend chart: ARR by entity by month; alerts section: financial/product/AI quality alerts; design: 5-second test passes; wireframe approved by Dr. Lewis; built in Metabase; access restricted to MBL Executive group; reviewed by Matt Mathison before go-live
2. **Edge case:** Stakeholder wants to add 15 more metrics to the dashboard → apply the "so what" test to each metric; for each addition, ask "what decision does this enable that isn't already enabled by the current 3?"; if a decision is already covered, it's noise; keep to 3-6 header KPIs; move additional metrics to a drill-down page, not the main dashboard
3. **Adversarial:** The dashboard was built to look impressive (lots of colorful charts) but no one uses it → usage metric: if a dashboard has < 3 unique users per week, it's at risk; schedule a usage review; interview the intended user to understand why they're not using it; usually: dashboard doesn't answer their actual question, or it's too slow, or they prefer a different format; redesign around the user's actual workflow, not the builder's vision

## Audit Log
Dashboard designs and wireframes versioned. Build decisions documented. Monthly usage review (who is using this, how often) retained.

## Deprecation
Retire when MBL has a standardized dashboard library and users are creating and maintaining dashboards autonomously.
