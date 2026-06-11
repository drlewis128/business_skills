---
name: workforce-planning-model
description: "Build a workforce plan aligning future talent needs with business strategy. Use when the user says 'workforce planning', 'talent planning', 'headcount forecast', 'workforce strategy', 'talent needs', 'headcount plan for next year', 'future workforce', or 'people plan'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--horizon <1-year|3-year>] [--scenario <base|upside|downside>]"
---

# Workforce Planning Model

Build a workforce plan that aligns future talent needs with business strategy, financial constraints, and capability requirements. Workforce planning without a business strategy is just headcount forecasting — workforce planning with strategy is a competitive advantage.

## When to Use
- Annual planning cycle (build next year's headcount plan)
- Before a major growth initiative (do we have the people to execute?)
- Before a new acquisition (what capabilities do we need post-close?)
- When business strategy is changing (new markets, new products, new model)
- When facing significant turnover or capability gaps

## Workforce Planning Framework

### Step 1: Business Strategy Translation
What does the business strategy require of the workforce in the planning horizon?
- Revenue / volume targets → headcount requirements
- New capabilities needed (skills that don't exist today)
- Locations / markets to enter (geographic workforce needs)
- Technology changes that affect required skills or headcount

### Step 2: Current Workforce Assessment
- Current headcount by department, role, and level
- Current capability inventory (what skills do we have?)
- Turnover projections (expected departures, retirements)
- Succession pipeline (who can move up?)

### Step 3: Workforce Demand Forecast

```
Projected required headcount =
  (Projected volume / Productivity per FTE) + Growth premium + Buffer

Where:
- Volume = Revenue, patients, transactions, etc.
- Productivity = Historical output per FTE
- Growth premium = HC needed for new capabilities not in current model
- Buffer = 10-15% of base for turnover and vacancy
```

### Step 4: Gap Analysis
```
Workforce Gap = Projected required HC – (Current HC – Projected attrition)
```

A positive gap = net new hires needed
A negative gap = possible reduction or redeployment

### Step 5: Action Plan
For each gap:
- **Build** — Hire externally (time-to-productivity: 3-6 months)
- **Borrow** — Contract or consulting capacity (faster but more expensive)
- **Buy** — Acquire a company that has the capability (longest timeline, highest cost)
- **Bridge** — Develop internally (lowest cost if time is available)

## Workforce Planning Output Components

### Headcount Plan
- Approved headcount by department and quarter
- Net new vs. backfill breakdown
- Timing (when each hire is needed to be productive, not just started)

### Capability Map
- Current vs. required skills by role
- Gaps that require build/buy vs. those that can be bridged

### Cost Projection
- Fully-loaded cost for planned headcount additions
- Comparison of build/borrow/buy/bridge options by cost and speed

## Output Format

```markdown
# Workforce Plan — <Entity>
**Horizon:** <1-year / 3-year> | **Scenario:** <base/upside/downside>
**Date:** <date> | **Business Strategy Inputs:** <summary of business targets>

## Current State

| Department | Current HC | Projected Attrition | Net Available |
|-----------|-----------|-------------------|--------------|
| Finance | <N> | <N> | <N> |
| Operations | <N> | <N> | <N> |
| Clinical (Allevio) | <N> | <N> | <N> |

## Workforce Demand Forecast (by Quarter)

| Department | Q1 Required | Q2 Required | Q3 Required | Q4 Required | FY Required |
|-----------|------------|------------|------------|------------|------------|
| Finance | <N> | <N> | <N> | <N> | <N> |
| Operations | <N> | <N> | <N> | <N> | <N> |

## Workforce Gap Analysis

| Department | Required FY | Available FY | Gap | Resolution |
|-----------|------------|-------------|-----|-----------|
| Finance | <N> | <N> | +<N> | Build (external hire) |
| Clinical | <N> | <N> | +<N> | Build + Bridge (develop existing) |

## Capability Gaps (Beyond Headcount)

| Capability | Current State | Required | Gap Resolution |
|-----------|------------|---------|---------------|
| AI/ML skills | 0 FTEs with capability | 2 by Q3 | Buy (contractor) or Build (training) |
| Clinical billing | 3 FTEs | 5 by Q2 | Build (hire) |

## Hiring Plan (Net New)

| Role | Entity | Quarter | Type | Est. Cost |
|------|--------|--------|------|----------|
| <Role> | <entity> | Q1 | Build | $<N> |

## Workforce Plan Cost Summary

| Category | Q1 | Q2 | Q3 | Q4 | FY Total |
|---------|----|----|----|----|---------|
| New hire payroll cost | $<N> | $<N> | $<N> | $<N> | $<N> |
| Recruiting cost | $<N> | | | | $<N> |
| Training/onboarding | $<N> | | | | $<N> |
| **Total** | **$<N>** | **$<N>** | **$<N>** | **$<N>** | **$<N>** |

## Assumptions and Risks
1. <Key assumption with sensitivity>
2. <Risk — what would change the plan>
```

## Output Contract
- Business strategy linkage always explicit — no headcount plan without a business driver
- Timing based on when productivity is needed, not just when hiring starts
- All four options (build/borrow/buy/bridge) always evaluated for capability gaps
- Cost projection always included — workforce planning without cost is incomplete
- HITL required: Matt Mathison and Finance approve workforce plan before it becomes the operating headcount plan

## System Dependencies
- **Reads from:** Business strategy, financial targets, current HRIS data (provided)
- **Writes to:** Nothing (plan for HITL review and approval)
- **HITL Required:** Matt Mathison and Finance review and approve before plan is communicated to departments or used in budget

## Test Cases
1. **Golden path:** MBL 1-year plan with 20% revenue growth target → department-by-department demand forecast, 8 net new hires, capability gap for AI skills identified, $1.2M total cost projection
2. **Edge case:** Downside scenario (flat or declining revenue) → identifies redeployment opportunities before recommending cuts; flags that managing out poor performers is different from workforce reduction
3. **Adversarial:** Request for a workforce plan that matches a predetermined headcount number (rather than being driven by business needs) → surfaces the risk of constraint-driven planning, provides honest plan with flags where business targets may be at risk

## Audit Log
Annual workforce plans retained by entity and scenario. Actuals vs. plan tracked quarterly for planning accuracy improvement.

## Deprecation
Retire when HRIS and FP&A platform integration (Workday, Adaptive) provides scenario-based workforce planning with real-time cost modeling.
