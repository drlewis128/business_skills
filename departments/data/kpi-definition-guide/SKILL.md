---
name: kpi-definition-guide
description: "Define a complete KPI set for a business function or company. Use when the user says 'define our KPIs', 'what KPIs should we track', 'KPI framework', 'set up KPIs', 'key performance indicators', 'what metrics matter', 'build our KPI set', 'executive KPIs', 'operational KPIs', or 'department KPIs'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--function <finance|product|sales|cs|engineering|operations|executive>] [--company <MBL|Allevio|HIVE|Column6>]"
---

# KPI Definition Guide

Define a complete KPI set for any business function — specific, measurable, owned, and connected to outcomes. KPIs fail when they're too many, too vague, or not owned. A function with 30 KPIs has none — attention is so distributed that nothing gets optimized. A function with 5 well-chosen KPIs gives the team a clear scorecard. For MBL, KPIs cascade from Matt Mathison's portfolio goals down through each function, so every metric connects upward to something that matters.

## When to Use
- New function or team created — what do they measure?
- Existing KPI set is unused or doesn't drive behavior
- Preparing department reviews for Matt Mathison — what's the scorecard?
- Portfolio company assessment — are they measuring the right things?
- OKR cycle — what are the Key Results (which are the KPIs)?

## KPI Design Framework

```
A good KPI:
  Measurable: Can be calculated objectively from data
  Actionable: The team can actually influence it
  Relevant: Connects to a business outcome
  Time-bound: Measured at a specific cadence
  Owned: One person is accountable for it

KPI failure modes:
  Too many: >7 KPIs per function dilutes focus
  Lagging only: KPIs that only measure outcomes (revenue) without leading indicators
  Unowned: "Team" KPI means no one owns it
  Unmeasurable: "Customer satisfaction" without a specific survey and threshold
  Unlinked: KPI that doesn't connect to a business outcome

KPI hierarchy:
  North Star → Primary KPIs (3-5) → Supporting KPIs (2-3 per primary) → Guardrails
```

## KPI Sets by Function

### Executive / Portfolio Level (Matt Mathison)
- Portfolio ARR (total; by entity)
- AI workflow adoption rate (% of portfolio companies with active AI deployments)
- Portfolio EBITDA (aggregate; by entity)
- Quarterly OKR achievement rate
- Team NPS (internal; are the people performing?)

### Finance
- MRR / ARR (by entity)
- Gross margin
- Operating cash flow
- Accounts receivable days (DSO)
- Budget vs. actual variance (by cost center)

### Product
- North Star Metric (defined per product)
- D7 / D30 Retention
- Activation rate
- NPS / CSAT
- Feature adoption rate (for specific features)

### Sales
- Pipeline coverage ratio (pipeline / quota)
- Win rate
- Sales cycle length (days to close)
- ACV (Average Contract Value)
- Quota attainment rate

### Engineering (DORA)
- Deployment frequency
- Lead time for changes
- Change failure rate
- Mean time to recover (MTTR)
- Sprint velocity (% of committed points delivered)

### Customer Success
- Net Revenue Retention (NRR)
- Churn rate
- Time to onboard (days from signed to active)
- CSAT / Customer Health Score
- Expansion revenue (MRR from upsells)

## Output Format

```markdown
# KPI Framework — <Function> | <Company>
**Date:** <date> | **Author:** Dr. John Lewis
**Function:** <name> | **Primary audience:** <who uses this scorecard>
**Connected to:** <parent OKR or business goal>

---

## KPI Scorecard

| KPI | Definition | Target | Current | Owner | Cadence | Status |
|-----|-----------|--------|---------|-------|---------|--------|
| [KPI 1] | [Precise definition] | [Target] | [Current] | [Name] | Weekly | 🟢 |
| [KPI 2] | [Precise definition] | [Target] | [Current] | [Name] | Monthly | 🟡 |
| [KPI 3] | [Precise definition] | [Target] | [Current] | [Name] | Monthly | 🔴 |

---

## KPI Detail

### KPI 1: <Name>

**Definition:** <Precise definition — see metric-definition-framework for exact formula>
**Formula:** <Calculation>
**Target:** <N> by <date>
**Why this target:** <Benchmark / historical / aspirational basis>
**Data source:** <System + field>
**Owner:** <Name — accountable for this number>
**Cadence:** <Weekly / Monthly / Quarterly>
**Leading indicators:** <What signals this KPI will move before it does>
**Action if below target:** <Specific diagnosis + response>

---

## KPI Cascade Diagram

```
Business Goal: <Matt Mathison's portfolio objective>
  ↓
Function OKR: <This function's quarterly objective>
  ↓
Primary KPI: <The headline number>
  ├── Supporting KPI: <Lever 1>
  └── Supporting KPI: <Lever 2>

Guardrails (must not regress):
  - [Metric]: must stay above <threshold>
```

---

## KPI Review Schedule

| Review | Cadence | Format | With |
|--------|---------|--------|------|
| KPI pulse | Weekly | Async — dashboard check | Function owner |
| KPI review | Monthly | 30-min meeting | Dr. Lewis + function owner |
| KPI audit | Quarterly | Full scorecard review | Dr. Lewis + Matt Mathison |
| KPI reset | Annually | Are these still the right KPIs? | Dr. Lewis |
```

## Output Contract
- Maximum 7 KPIs per function — more than 7 breaks focus
- Every KPI has a named owner — shared ownership = no ownership
- Every KPI has an "action if below target" — a metric without a response protocol is just a number
- Leading indicators always identified — lagging-only KPI sets miss problems until they're too late
- HITL required: Dr. Lewis approves KPI frameworks; Matt Mathison approves executive/portfolio KPIs; function lead aligned before KPI set is finalized

## System Dependencies
- **Reads from:** Product analytics, QuickBooks, GoHighLevel, Monday.com (for actual KPI data)
- **Writes to:** KPI framework document (SharePoint/Data/KPIs); dashboard configuration
- **HITL Required:** Dr. Lewis approves; Matt Mathison approves portfolio KPIs; function lead aligned

## Test Cases
1. **Golden path:** Engineering KPI framework → 5 KPIs: deployment frequency (DORA Elite: >1/day; target: weekly at minimum), lead time (<7 days target), change failure rate (<5%), MTTR (<1 hour), sprint velocity (>85% of committed points); owner: engineering lead; data source: GitHub + Monday.com; weekly async review, monthly meeting with Dr. Lewis; action if sprint velocity <70%: root cause analysis + blocker review within 48h
2. **Edge case:** A function has a KPI that's important but genuinely hard to measure (e.g., "quality of engineering decisions") → if it's important but can't be measured, it's a leading indicator or a qualitative dimension; document it as a qualitative dimension in the review process; assign a proxy metric (e.g., post-mortem scores, architecture review ratings); revisit whether a quantitative measure can be developed over time
3. **Adversarial:** Executive wants to track 25 metrics for the portfolio review → 25 metrics is not a scorecard; run a prioritization exercise: if you could only see 5 numbers and had to make decisions based on them, which 5? that's the executive KPI set; everything else goes in the appendix or a drill-down report; Matt Mathison should never spend more than 3 minutes on a KPI review

## Audit Log
KPI frameworks versioned per function per quarter. KPI changes documented with rationale. Quarterly scorecard results retained.

## Deprecation
Retire when each function has an established KPI rhythm with a live dashboard and autonomous review process that doesn't require this skill scaffold.
