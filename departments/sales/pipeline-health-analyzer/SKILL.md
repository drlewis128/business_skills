---
name: pipeline-health-analyzer
description: "Analyze the health of a sales pipeline and flag risks. Use when the user says 'pipeline health', 'how healthy is our pipeline', 'pipeline analysis', 'analyze the pipeline', 'pipeline review', 'what's the state of the pipeline', 'pipeline risk', or 'pipeline report'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--rep <all|rep-name>] [--period <current-month|current-quarter>]"
---

# Pipeline Health Analyzer

Analyze the health of a sales pipeline and identify risks before they become missed quarters. A pipeline review is only useful if it surfaces real problems — not just a list of deals. This skill applies objective health criteria to find coverage gaps, stale deals, and stage distribution issues.

## When to Use
- Weekly pipeline review (is the team on track?)
- Before a forecast call (is the pipeline defensible?)
- Before a board or LP update (show revenue confidence)
- When quota attainment is trending below target
- Onboarding to a portfolio company (understand starting position)

## Pipeline Health Dimensions

### 1. Coverage Ratio
```
Pipeline coverage = Total weighted pipeline / Remaining quota
Healthy: ≥ 3× remaining quota
At risk: 2–2.9×
Critical: < 2×
```

### 2. Stage Distribution
A healthy pipeline has deals at multiple stages. A pipeline full of Stage 1-2 deals won't close this quarter. A pipeline with only Stage 5 deals won't close next quarter.

```
Healthy distribution (example for a 3-month quarter):
Month 1: 60% of pipeline in Stage 4-5
Month 2: 60% of pipeline in Stage 3-4
Month 3: 70%+ in Stage 4-5 to hit quota
```

### 3. Deal Age / Velocity
- Average days in each stage vs. target
- Deals stuck in a stage > 2× average = stalled deal
- Days since last activity > 14 days = ghost deal risk

### 4. Deal Size Distribution
- Are deals too small? (Quota requires winning too many)
- Are all eggs in one basket? (One $500K deal in a $600K target pipeline = catastrophic risk)
- Is average deal size trending up or down?

### 5. New Pipeline Creation Rate
- New deals entering pipeline per week
- Is the team building enough new pipeline to replace what closes?
- Rule of thumb: Need 3× closing rate in new pipeline weekly

## Health Scoring

| Dimension | Weight | Healthy | At Risk | Critical |
|-----------|--------|---------|---------|---------|
| Coverage ratio | 30% | ≥ 3× | 2–2.9× | < 2× |
| Stage distribution | 25% | Balanced | Top-heavy (early) | Bottom-heavy (late) |
| Deal velocity | 20% | On pace | 1-2 stalled | > 3 stalled |
| Deal size distribution | 15% | Balanced | One deal > 40% | One deal > 60% |
| New pipeline rate | 10% | ≥ 3× close rate | 2–2.9× | < 2× |

## Output Format

```markdown
# Pipeline Health Analysis — <Entity>
**Date:** <date> | **Period:** <month/quarter> | **Rep scope:** <All / Rep name>

## Pipeline Health Score: X/100 — 🟢 Healthy / 🟡 At Risk / 🔴 Critical

## Coverage Ratio

| Metric | Value | Status |
|--------|-------|--------|
| Total pipeline (weighted) | $<N> | |
| Remaining quota | $<N> | |
| **Coverage ratio** | **<N>×** | 🟢 / 🟡 / 🔴 |
| Gap to 3× coverage | $<N> needed | |

## Stage Distribution

| Stage | # of Deals | Pipeline Value | % of Total |
|-------|-----------|--------------|-----------|
| Stage 1-2 (Early) | <N> | $<N> | X% |
| Stage 3 (Mid) | <N> | $<N> | X% |
| Stage 4-5 (Late) | <N> | $<N> | X% |

**Assessment:** <Balanced / Top-heavy (need late-stage deals) / Bottom-heavy (need new pipeline)>

## Deal Velocity Analysis

| Deal / Account | Stage | Days in Stage | Target | Status |
|--------------|-------|--------------|--------|--------|
| <Account> | Stage 3 | 28 days | 14 days | ⚠️ Stalled |
| <Account> | Stage 4 | 7 days | 10 days | 🟢 On track |

**Ghost deals (no activity > 14 days):** <N> — Recommend: Force decision or close lost

## Deal Size Analysis

| Metric | Value |
|--------|-------|
| Avg deal size | $<N> |
| Largest deal | $<N> (<X>% of pipeline) |
| Deals needed at avg to hit quota | <N> |

**Risk flag:** <"Largest deal represents X% of pipeline — single-deal dependency">

## New Pipeline Creation Rate

| Metric | Weekly | Target | Status |
|--------|--------|--------|--------|
| New deals entering pipeline | <N> / $<N> | $<N> | 🟢 / 🔴 |

## Critical Actions (Priority Order)

🔴 **Coverage is at <N>×** — Need $<N> in new pipeline. Specific action: [outbound campaign, event sourcing, partner leads]
⚠️ **<N> stalled deals** — Force decision call by <date> or close lost to clean pipeline
⚠️ **Single deal dependency** — [Account] is X% of pipeline; develop contingency if this deal slips
✅ **New pipeline rate is on track** — Continue current prospecting activity

## Rep-Level Pipeline Summary (If All-Rep View)

| Rep | Pipeline | Quota Remaining | Coverage | Health |
|-----|---------|----------------|---------|--------|
| <Name> | $<N> | $<N> | <N>× | 🟢 |
| <Name> | $<N> | $<N> | <N>× | 🔴 |
```

## Output Contract
- Coverage ratio always calculated and status flagged — not optional
- Stage distribution always shown — a healthy pipeline has deals at every stage
- Stalled deals always surfaced with specific action recommendations
- Rep-level view always available when team scope is requested
- HITL required before pipeline health data is used in board or LP reporting

## System Dependencies
- **Reads from:** CRM pipeline data, deal records, stage dates, activity logs (provided or from `sales-pipeline-tracker`)
- **Writes to:** Nothing (analysis for HITL review and management action)
- **HITL Required:** Dr. Lewis reviews for board/LP reporting; sales manager acts on flagged issues; deals are not closed-lost without manager approval

## Test Cases
1. **Golden path:** 3-rep team pipeline, Q3 mid-quarter → coverage at 2.4× (At Risk), 3 stalled deals, 1 ghost deal, stage distribution top-heavy (68% early-stage), 3 specific actions with owners
2. **Edge case:** Pipeline is all late-stage deals (Stage 4-5) → flags bottom-heavy distribution as a future-quarter risk, recommends immediate new pipeline building even while closing current quarter
3. **Adversarial:** Request to include a deal that hasn't been validated by a rep conversation in 45 days in the committed pipeline → marks as ghost deal, removes from weighted pipeline calculation, recommends verification call before including in forecast

## Audit Log
Pipeline health analyses retained by entity and date. Health scores tracked quarterly for trend analysis.

## Deprecation
Retire when CRM provides real-time pipeline health scoring with automated stage velocity alerts, deal age warnings, and coverage ratio calculations.
