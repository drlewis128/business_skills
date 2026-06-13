---
name: product-health-dashboard
description: "Build a product health dashboard tracking all key product metrics. Use when the user says 'product health', 'product dashboard', 'product metrics dashboard', 'how is the product doing', 'product scorecard', 'weekly product review', 'product health check', or 'what metrics should we track'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--period <weekly|monthly>]"
---

# Product Health Dashboard

Build a product health dashboard that gives Dr. Lewis and Matt Mathison a single-view snapshot of whether each product is working. A good product health dashboard answers: "Is this product delivering value? Is it growing? Is it at risk?" in under two minutes. For MBL's AI products, the dashboard also tracks AI-specific health indicators: output quality, HITL rates, and prompt costs.

## When to Use
- Setting up metrics tracking for a new product
- Weekly/monthly product review — what does health look like this week?
- Presenting product status to Matt Mathison
- Portfolio company assessment — do they have a health dashboard?
- Product is underperforming — build the dashboard to diagnose which layer is failing

## Health Metric Hierarchy

```
Layer 1 — North Star (1 metric)
  The single number that tells you if the product is working

Layer 2 — Core Product Metrics (4-6 metrics)
  Acquisition, Activation, Retention, Revenue/Value, Referral
  These are the levers that drive the North Star

Layer 3 — Input Metrics (by feature area)
  The specific metrics that each team owns and can move directly

Layer 4 — Guardrail Metrics
  Metrics that must not regress while optimizing other layers
  Error rates, latency, CSAT floor, support volume ceiling

AI-Specific Layer (for AI products)
  Output quality score, HITL approval rate, hallucination rate, cost per session
```

## Output Format

```markdown
# Product Health Dashboard — <Product>
**Period:** <Week of / Month of> | **Prepared by:** Dr. John Lewis
**For:** Matt Mathison (exec view) | **Updated:** <date>

---

## TL;DR — Product Health: 🟢 Healthy / 🟡 Watch / 🔴 At Risk

**North Star this period:** <N> (vs. target: <N>) — 🟢 On track / 🟡 Below / 🔴 Critical
**Biggest positive:** <one finding>
**Biggest concern:** <one finding>
**Action required:** <one specific action or "No action needed this week">

---

## North Star Metric

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| <NSM> | <N> | <N> | <N> | 🟢 / 🟡 / 🔴 |

---

## Core Product Metrics (AARRR)

| Category | Metric | This period | Last period | Target | Status | Trend |
|---------|--------|------------|------------|--------|--------|-------|
| Acquisition | New users | <N> | <N> | <N> | 🟢 | ↑ |
| Activation | % reaching aha moment | <N>% | <N>% | >70% | 🟡 | → |
| Retention | D7 retention | <N>% | <N>% | >45% | 🔴 | ↓ |
| Retention | D30 retention | <N>% | <N>% | >30% | 🟡 | → |
| Revenue/Value | [Value metric] | <N> | <N> | <N> | 🟢 | ↑ |
| Referral | Organic signups % | <N>% | <N>% | >20% | 🟡 | → |

---

## AI Product Health (if applicable)

| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Summary quality score (HITL approved %) | <N>% | >85% | 🟢 |
| HITL review rate (% requiring human review) | <N>% | <15% | 🟡 |
| Hallucination/error rate | <N>% | <2% | 🟢 |
| Claude API cost per session | $<N> | <$<N> | 🟢 |
| Avg latency (time to summary) | <N> min | <30 min | 🟡 |
| Cache hit rate | <N>% | >40% | 🟡 |

---

## Guardrail Metrics

| Metric | This period | Alert threshold | Status |
|--------|------------|----------------|--------|
| CSAT | <N>/5 | <4.0 = alert | 🟢 |
| Error rate | <N>% | >2% = alert | 🟢 |
| P1 incident count | <N> | >0 = immediate review | 🟢 |
| Support tickets (new) | <N> | >20/week = review | 🟡 |

---

## Active Experiments

| Experiment | Status | Primary metric | Current reading | Decision date |
|-----------|--------|--------------|----------------|--------------|
| [Exp 1] | Running | <metric> | <N> vs. <N> | <date> |
| [Exp 2] | Completing | <metric> | Variant +12% (p=0.04) | Ship / No ship |

---

## OKR Progress (this quarter)

| KR | Target | Current | Grade | Trend |
|----|--------|---------|-------|-------|
| KR 1 | <N> | <N> | 0.7 | ↑ |
| KR 2 | <N> | <N> | 0.4 | ↓ Alert |
| KR 3 | <N> | <N> | 0.6 | → |

---

## Flags and Alerts

🔴 **[Alert]:** <Specific metric / situation — action required, owner, by when>
🟡 **[Watch]:** <Metric to monitor — criteria that would escalate to red>
✅ **[Good news]:** <Positive signal worth noting>
```

## Output Contract
- TL;DR always first — Matt Mathison reads the top 4 lines; everything else is backup
- Every red metric has a specific owner and action — "retention is red" without an action is not a dashboard, it's bad news delivery
- AI health metrics always included for AI products — standard product metrics don't capture AI-specific failures
- Guardrail metrics always shown — catching regressions is as important as tracking progress
- HITL required: Dr. Lewis reviews and approves dashboard before distribution to Matt Mathison; red alerts escalated immediately; dashboard shared with Matt Mathison weekly

## System Dependencies
- **Reads from:** Product analytics, Claude API usage logs, HITL review data, CSAT/NPS data, support system
- **Writes to:** Dashboard document (SharePoint/Product); weekly email to Matt Mathison
- **HITL Required:** Dr. Lewis reviews before distribution; red alerts to Matt Mathison immediately

## Test Cases
1. **Golden path:** Weekly Meeting Intelligence health dashboard → NSM: 18 summaries with completed action items (target 20, 🟡); Activation: 62% reach aha (target 70%, 🟡); D7 retention: 48% (target 45%, 🟢); Claude API cost: $0.23/session (target <$0.30, 🟢); HITL rate: 18% (target <15%, 🟡); Guardrails: all green; Flags: activation below target — experiment running; 1 experiment completing (action item format — variant +12%, ship decision Thursday)
2. **Edge case:** First dashboard ever for a product — no baseline data → document what you know, flag what you don't have yet; "baseline not established" is a valid entry; the first dashboard is also the starting point for targets; don't invent targets without a reason; gather data for 4 weeks before setting targets
3. **Adversarial:** Team wants to track 30 metrics on the dashboard → a dashboard with 30 metrics is a spreadsheet, not a dashboard; apply the "so what" test to each metric — if the metric doesn't drive a decision, cut it; maximum 6 core metrics + 4 AI metrics + 4 guardrails; everything else is available in the data source but not on the dashboard

## Audit Log
Weekly dashboards retained. Red alerts and actions documented. Monthly roll-up for Matt Mathison retained.

## Deprecation
Retire when product team has a live BI dashboard (Mode, Looker, Amplitude) that auto-generates health metrics and alerts.
