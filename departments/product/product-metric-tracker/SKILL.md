---
name: product-metric-tracker
description: "Set up and track product metrics for features and products. Use when the user says 'product metrics', 'track this metric', 'how do we measure this feature', 'set up tracking', 'what metrics matter', 'product analytics', 'measure success', 'feature metrics', 'instrumentation plan', or 'success metrics'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--feature <name>] [--mode <define|track|review>]"
---

# Product Metric Tracker

Set up and track product metrics for features and MBL products. Metrics are how you know if a feature worked, if users are engaging, and if the product is heading in the right direction. The most common mistake: measuring everything and learning nothing. The second most common: measuring nothing and claiming success based on feel. This skill defines the right metrics, sets up the measurement plan, and produces a weekly tracking view.

## When to Use
- A feature just shipped — what metrics do we track to know if it worked?
- A feature is about to ship — set up pre-launch baseline before any users see it
- Weekly product review — what do the numbers say this week?
- Roadmap decision — "is feature X working well enough to invest more?"
- Portfolio company product assessment — are they measuring the right things?

## Metric Framework

```
NORTH STAR METRIC (one per product):
  The single metric that best captures the value delivered to users
  If this goes up, the product is working; if it goes down, something is wrong
  Example: MBL Meeting Intelligence — "summaries used to create action items per week"

PRIMARY METRICS (3-5 per product):
  Key metrics that directly indicate product health
  Linked to business outcomes
  Example: summary open rate, action item creation rate, Monday.com sync success rate

SECONDARY / GUARDRAIL METRICS:
  Metrics that should NOT regress when optimizing for primary metrics
  Example: API latency (if we optimize for throughput, it shouldn't slow down)

FEATURE-LEVEL METRICS:
  Specific to a feature; temporary until the feature is stable
  Example: for new action item tagging feature — tag adoption rate
```

## Metric Quality Criteria

```
Good metrics are:
  Measurable: you can actually collect this data
  Sensitive: changes in product behavior move the metric quickly enough to learn
  Specific: no ambiguity about what's being measured
  Actionable: if it changes, you know what to do about it

Bad metrics to avoid:
  Vanity metrics: page views, registered users (can go up even as product fails)
  Lagging metrics: NPS (quarterly; too slow for feature decisions)
  Proxy metrics without validation: time-on-site (could mean confused, not engaged)
```

## Output Format

```markdown
# Product Metrics — <Product/Feature>
**Date:** <date> | **Owner:** Dr. John Lewis
**Product:** <product name> | **Entity:** <entity>
**Measurement period:** Weekly / Monthly

---

## North Star Metric

**Metric:** <metric name>
**Definition:** <exactly what is counted and how>
**Data source:** <where this data comes from>
**Current value:** <baseline>
**Target:** <goal> by <date>
**Why this is the north star:** <why this metric captures true product value>

---

## Primary Metrics

| Metric | Definition | Data Source | Baseline | Target | Current | Trend |
|--------|-----------|------------|---------|--------|---------|-------|
| [Metric 1] | [Exactly what's measured] | Analytics DB | 0% | 40% | 18% | ↑ |
| [Metric 2] | | | | | | |
| [Metric 3] | | | | | | |

---

## Guardrail Metrics (must not regress)

| Metric | Baseline | Acceptable floor | Current | Alert? |
|--------|---------|-----------------|---------|--------|
| API P95 latency | 145ms | <300ms | 162ms | No |
| Error rate | 0.2% | <1% | 0.3% | No |

---

## Feature-Specific Metrics — <Feature Name>

| Metric | Definition | Baseline (pre-launch) | Week 1 | Week 2 | Week 4 |
|--------|-----------|---------------------|--------|--------|--------|
| [Adoption rate] | % of eligible users who used feature | 0% | 12% | 24% | 38% |
| [Completion rate] | % who started and completed flow | — | 68% | 74% | 80% |

**Feature health:** 🟢 Adopted and working / 🟡 Low adoption — investigate / 🔴 Not working

---

## Instrumentation Plan

| Event | What to track | When fired | Properties |
|-------|-------------|-----------|-----------|
| `meeting.summary_viewed` | User opens summary | On view | meeting_id, user_id, time |
| `action_item.created_from_summary` | Action item created | On create | meeting_id, action_item_id |
| `monday_sync.success` | Sync to Monday.com works | Post-sync | meeting_id, items_synced |

**Implementation:** Log structured events to analytics DB; expose via reporting view

---

## Weekly Review (Current)

**Week of:** <date>
**North Star:** <value> (<change vs. last week>)

**Highlights:**
- <Metric> increased from X to Y — likely driven by <change>
- <Metric> is below target — investigate: <hypothesis>

**Concerns:**
- <Issue> — action: <what we'll do>

---

## Experiment Results (if running experiments)

| Experiment | Metric moved | Stat sig? | Decision |
|-----------|------------|---------|---------|
| [Exp] | +12% action items | Yes (p<0.05) | Ship variant |
```

## Output Contract
- North star metric always defined before feature-level metrics — feature metrics without context are noise
- Pre-launch baseline always captured — you can't measure improvement without a starting point
- Instrumentation plan always included — "we'll figure out measurement later" means no measurement
- Weekly review format always consistent — enables trend detection vs. one-off reads
- HITL required: Dr. Lewis reviews metric plan before launch; guardrail metric breaches reported to Dr. Lewis immediately; north star metric changes require Matt Mathison awareness

## System Dependencies
- **Reads from:** Product analytics database, Claude API usage logs (for AI features), Monday.com API (action items created)
- **Writes to:** Product metrics dashboard (SharePoint/Product); weekly product review (Monday.com board)
- **HITL Required:** Dr. Lewis reviews metric definitions; guardrail breaches alert Dr. Lewis; significant metric changes briefed to Matt Mathison

## Test Cases
1. **Golden path:** Set up metrics for Meeting Intelligence → North star: action items created from summaries/week; Primary: summary open rate (target 80%), Monday.com sync success rate (target 95%), action item completion rate (target 60%); Guardrails: API latency <300ms, error rate <1%; Instrumentation: 3 events defined; baseline captured pre-launch; Week 1 review after launch
2. **Edge case:** Feature launches and primary metric doesn't change at all → investigate: is the feature being used? (check adoption metric); if adopted but metric not moving, the feature doesn't solve the problem → discovery failure; if not adopted, investigate onboarding and awareness
3. **Adversarial:** Team reports "engagement is up" without defining what engagement means → engagement is not a metric; define: what specific action, by which users, how frequently, compared to what baseline?; accept only specific, measurable metric definitions

## Audit Log
Metric definitions retained. Weekly metric reports retained. Experiment results documented.

## Deprecation
Retire when product team deploys a dedicated product analytics platform (Amplitude, Mixpanel, PostHog) with automated dashboards and anomaly detection.
