---
name: ops-kpi-dashboard
description: "Build or review an operations KPI dashboard. Use when the user says 'KPI dashboard', 'ops KPIs', 'operational metrics', 'operations dashboard', 'key performance indicators', 'metrics dashboard', 'ops metrics', 'performance metrics', 'what are our KPIs', 'build a dashboard', 'operational scorecard', 'metrics review', 'performance tracking', or 'ops scorecard'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <weekly|monthly|quarterly>] [--action <build|review|update>]"
---

# Ops KPI Dashboard

Build and maintain operations KPI dashboards at MBL portfolio companies — tracking the metrics that reveal whether operations are healthy, improving, or deteriorating. KPIs are not reporting theater; they are the early warning system that tells Dr. Lewis and company leadership what needs attention before it becomes a crisis. A good dashboard is simple, current, and actionable: each metric leads to a question ("why is this trending wrong?") or confirms that no action is needed.

## When to Use
- A portfolio company needs its first operational dashboard
- Monthly KPI review — updating and interpreting current metrics
- A metric has moved materially and root cause is needed
- Matt Mathison asks "how are operations performing at [Company]?"
- Planning for a board review or investor update

## KPI Selection Framework

```
Principles for selecting KPIs:
  Lead vs. lag indicators:
    Lag: Tells you what already happened (revenue, headcount, claims submitted)
    Lead: Predicts future performance (pipeline, response time trends, error rates)
    Good dashboards have both: lag for accountability, lead for management

  Categories for operational KPIs:
    Efficiency: Are we using resources well? (cost per unit, utilization, cycle time)
    Quality: Are we doing it right? (error rate, defect rate, rework, customer satisfaction)
    Capacity: Can we handle the volume? (utilization %, backlog, queue length)
    Financial: Are the operations sustainable? (OPEX per unit, EBITDA contribution)
    People: Is the team healthy? (turnover, engagement, capacity)

Portfolio-specific KPI priorities:
  Allevio (healthcare MSO):
    - Claims submission rate (daily/weekly)
    - First-pass acceptance rate (target: >95%)
    - Days in AR (target: <45 days)
    - Denial rate (target: <8%; industry average ~11%)
    - Appointment fill rate (target: >85%)
    - Staff-to-patient ratio (clinical safety floor)
    
  HIVE Partners (oil & gas):
    - Daily BBL production vs. plan
    - LOE (Lease Operating Expense) per BOE
    - Downtime % by well
    - Capex spend vs. budget (drilling/completion)
    - Water disposal cost per barrel
    
  MBL HoldCo / Portfolio-wide:
    - Portfolio EBITDA margin by entity
    - Cash runway (months)
    - Headcount vs. plan
    - Key project milestone status
    - Open risk items

KPI format — each KPI needs:
  Name: Clear, short
  Current value: This period
  Target: What good looks like
  Trend: vs. prior period and vs. same period last year
  Status: 🟢 On target / 🟡 Watch / 🔴 Off target — needs action
  Owner: Who is accountable for this metric
```

## Output Format

```markdown
# Operations KPI Dashboard — <Company Name>
**Period:** [Month/Quarter/Week] | **As of:** [Date]
**Prepared by:** Dr. John Lewis | **Distribution:** [CEO, Matt Mathison]

---

## Dashboard Summary

| Category | Status | Key metric | vs. Target | Trend |
|---------|--------|-----------|-----------|-------|
| Revenue Operations | 🟢/🟡/🔴 | [Primary metric] | [+/-X%] | ↑/→/↓ |
| Quality | | | | |
| Capacity | | | | |
| People | | | | |
| Financial | | | | |

**Overall ops health:** 🟢 Strong / 🟡 Mixed — attention needed / 🔴 Underperforming

---

## KPI Detail

### Revenue Operations

| KPI | Current | Target | Status | vs. Prior month | Owner |
|-----|---------|--------|--------|----------------|-------|
| [Claims submission rate] | [X/day] | [Y/day] | 🟢 | [+X%] | [Billing mgr] |
| [First-pass acceptance rate] | [X%] | [>95%] | 🟡 | [-2%] | |
| [Days in AR] | [X days] | [<45 days] | 🟢 | [-1 day] | |
| [Denial rate] | [X%] | [<8%] | 🔴 | [+1%] | |

### Quality

| KPI | Current | Target | Status | vs. Prior month | Owner |
|-----|---------|--------|--------|----------------|-------|
| [Error rate] | [X%] | [<Y%] | | | |
| [Rework rate] | [X%] | | | | |
| [Customer/patient complaints] | [N] | [<N] | | | |

### Capacity & Efficiency

| KPI | Current | Target | Status | vs. Prior month | Owner |
|-----|---------|--------|--------|----------------|-------|
| [Staff utilization] | [X%] | [70-85%] | | | |
| [Backlog/queue] | [N items] | [<N] | | | |
| [Cycle time — key process] | [X days] | [<Y days] | | | |

### People

| KPI | Current | Target | Status | vs. Prior month | Owner |
|-----|---------|--------|--------|----------------|-------|
| [Voluntary turnover — trailing 12M] | [X%] | [<15%] | | | |
| [Open positions] | [N] | [<N] | | | |
| [Days to fill — open roles] | [X days] | [<45 days] | | | |

### Financial

| KPI | Current | Target | Status | vs. Prior month | Owner |
|-----|---------|--------|--------|----------------|-------|
| [OPEX vs. budget] | $[X] | $[Budget] | | | |
| [Revenue per FTE] | $[X] | $[Target] | | | |
| [EBITDA margin] | [X%] | [>X%] | | | |

---

## Metrics Requiring Action

### 🔴 Off Target

**[Metric name]:** [Current value] vs. [Target] — [Trend: worsening/stable]
**Why:** [Root cause or hypothesis]
**Action:** [Specific next step] | **Owner:** [Name] | **By:** [Date]
**Matt Mathison notification:** [Required / Not required]

### 🟡 Watch

**[Metric name]:** [Approaching threshold — if trend continues, will be 🔴 in N weeks]
**Monitoring:** [What to watch for / When to escalate]

---

## Matt Mathison Brief (3 sentences)

[Company] operations [this period]: [Overall status — strong/mixed/underperforming]. [Top 1-2 metric highlights — best and worst]. [Action underway / No action needed from you].
```

## Output Contract
- Every 🔴 metric has an action — a dashboard that shows red without an action plan is just documentation of failure; for every metric in the 🔴 zone, the dashboard names the root cause hypothesis, the action being taken, the owner, and the deadline; if the root cause is not yet known, the action is the investigation that will find it
- Targets are set in advance — the target for each KPI is defined before measuring; changing the target after seeing the result is not acceptable; if a target turns out to be wrong (consistently unachievable or trivially easy), it should be updated formally with rationale, not adjusted to match the result
- KPI counts are bounded — a dashboard with 50 KPIs is not a dashboard — it's a data dump; the practical limit is 15-20 KPIs per entity; if more than 5 are in the 🔴 zone simultaneously, the problem is not the KPIs — the business has too many things wrong at once and needs a prioritization conversation
- HITL required: Dr. Lewis reviews monthly and presents to CEO; Matt Mathison receives brief for any entity where >2 KPIs are 🔴 or where a specific metric requires his awareness; 🔴 metrics with no owner or no action plan are escalated immediately; metric targets are set by Dr. Lewis + CEO annually and reviewed semi-annually

## System Dependencies
- **Reads from:** AdvancedMD (Allevio revenue ops), Covercy (HIVE production), QuickBooks (financial KPIs), Monday.com (project/people KPIs), HR system (people KPIs), operational data sources
- **Writes to:** KPI dashboard (SharePoint/Ops/<Company>/Reporting/KPIs/); Monday.com dashboard; Matt Mathison brief; action items (Monday.com tasks)
- **HITL Required:** Dr. Lewis builds and reviews; CEO reviews monthly; Matt Mathison for >2 🔴 KPIs or specific alerts; action plan owners accountable for resolution by stated date

## Test Cases
1. **Golden path:** Allevio monthly KPI review → Revenue: claims submission 94% (🟢); first-pass acceptance 93% (🟡 — target 95%; down 2% from prior month); days in AR 41 days (🟢); denial rate 11% (🔴 — target <8%; up 1%); Quality: 2 patient complaints (🟢); Capacity: billing utilization 78% (🟢); People: 1 open position (🟢); Financial: OPEX on budget (🟢); Action: denial rate 🔴 — root cause investigation started (first-pass acceptance correlates — likely same coding issue); owner: Dr. Lewis + billing manager; by: 2 weeks; Matt Mathison brief: "Allevio ops this month: mixed. Denial rate at 11% vs. 8% target is the priority concern — appears linked to first-pass acceptance dip. Investigating root cause this week."
2. **Edge case:** A KPI that was 🟢 for 6 months drops sharply to 🔴 in one period → Immediate investigation: is this a data quality issue (report pulled wrong date range?) or a real business event? If real: what changed in this period (new staff, new payer, process change, system change)? The sharp drop suggests a specific triggering event rather than gradual drift; track down the event, confirm it's the cause, assess whether it's temporary (a one-time submission batch delayed) or structural (a new process that consistently underperforms)
3. **Adversarial:** "We know how we're doing without a dashboard" → The purpose of the dashboard is not to tell you things you already know — it's to surface things you don't, to detect early trends before they become crises, and to create a shared fact base for decisions; respond: "If you're right, this confirms it in 20 minutes. If there's something here you didn't expect — a trend that's drifting, a metric that's technically fine but heading the wrong direction — catching it now is worth more than catching it at the quarterly review when it's a problem."

## Audit Log
All KPI dashboards retained by company and period. Metric change notes retained. Action plan outcomes retained. Matt Mathison briefs retained. Annual target-setting decisions retained with rationale.

## Deprecation
Retire when portfolio companies have their own analytics infrastructure (live dashboards in Monday.com, Tableau, Power BI, or similar) that surface KPIs automatically, with company leadership reviewing independently and bringing exceptions to Dr. Lewis.
