---
name: adoption-rate-tracker
description: "Track and analyze product adoption rates for customer accounts. Use when the user says 'adoption rate', 'product adoption', 'who is using the product', 'usage rate', 'feature adoption', 'seat utilization', 'adoption analysis', or 'how many users are active'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--account <specific>] [--metric <seats|features|frequency>]"
---

# Adoption Rate Tracker

Track and analyze product adoption rates across customer accounts. Adoption is the leading indicator of retention — low adoption predicts churn 60–90 days before it happens. This skill builds the adoption picture and identifies which customers need intervention.

## When to Use
- Monthly adoption review (CS team's early warning system)
- Before a QBR or renewal conversation (understand usage going in)
- Customer health score calculation (adoption is a weighted component)
- Churn post-mortem (was low adoption an early signal?)
- CS team capacity planning (high-adoption accounts need less CSM time)

## Adoption Metrics Framework

### Tier 1: Core Adoption Metrics (Must Track)

| Metric | Definition | Health Threshold |
|--------|-----------|-----------------|
| **Seat activation** | % of licensed seats with at least 1 login in 30 days | < 60% = intervention |
| **Active user rate** | % of users logging in weekly | < 40% = Yellow; < 20% = Red |
| **Core feature usage** | % of users using the primary value feature | < 50% = intervention |

### Tier 2: Depth Metrics (Track for High-Value Accounts)

| Metric | Definition | Why It Matters |
|--------|-----------|---------------|
| **Feature breadth** | % of available features ever used per account | Low breadth = low perceived value |
| **Session length** | Average minutes per session | Short sessions may indicate friction |
| **Usage frequency** | Avg logins per user per week | < 2/week = passive user |
| **Power user ratio** | % of users in top 25% of activity | Power users are your champions |

### Tier 3: Outcome Metrics (Best — Tie to Business Value)
- How much time are they saving per week?
- How many transactions processed through the platform?
- Error rate reduction since adoption?

## Adoption Intervention Tiers

| Adoption Rate | Status | Action |
|--------------|--------|--------|
| > 70% active seats | 🟢 Healthy | Maintain; look for expansion |
| 50–69% active seats | 🟡 At Risk | Proactive outreach; identify usage gap |
| 30–49% active seats | 🔴 Low | Intervention required; re-onboarding or training |
| < 30% active seats | 🚨 Critical | Immediate save plan; escalate to CS Manager |

## Output Format

```markdown
# Adoption Rate Analysis — <Entity>
**Date:** <date> | **Accounts analyzed:** <N>

---

## Portfolio Adoption Summary

| Tier | Accounts | Seat Activation | Active User Rate |
|------|---------|----------------|----------------|
| 🟢 Healthy (> 70%) | <N> | | |
| 🟡 At Risk (50–69%) | <N> | | |
| 🔴 Low (30–49%) | <N> | | |
| 🚨 Critical (< 30%) | <N> | | |

---

## Account-Level Adoption Scorecard

| Account | Licensed Seats | Active Seats | Activation % | Core Feature Usage | Status |
|---------|--------------|-------------|-------------|------------------|--------|
| <Account> | <N> | <N> | X% | X% | 🟢 |
| <Account> | <N> | <N> | X% | X% | 🔴 |

---

## Low Adoption Accounts — Intervention Required

| Account | Activation Rate | Last Login | CSM | Root Cause Hypothesis | Recommended Action |
|---------|---------------|-----------|-----|---------------------|-------------------|
| <Account> | 28% | <date> | <CSM> | Onboarding not complete | Re-onboarding session |
| <Account> | 15% | <date> | <CSM> | Champion departed | New champion identification |

---

## Adoption Trends (vs. Prior Period)

| Account | Prior Month | Current Month | Change | Driver |
|---------|------------|--------------|--------|--------|
| <Account> | 55% | 72% | +17% ⬆️ | Training delivered |
| <Account> | 81% | 64% | -17% ⬇️ | Team restructure |

---

## Feature Adoption Gaps (Portfolio-Wide)

| Feature | % of Accounts Using | Accounts Not Using | Revenue Risk |
|---------|-------------------|-------------------|-------------|
| [Core Feature A] | X% | <N> accounts | $<N> ARR at risk |
| [Feature B] | X% | <N> accounts | Expansion opportunity |

---

## CSM Action Priorities

1. 🚨 **[Account]** — Critical (15% activation) | Intervention: Re-onboarding within 5 days
2. 🔴 **[Account]** — Low (32%) | Intervention: Champion identification + training
3. 🟡 **[Account]** — At risk (58%) | Action: Schedule usage review on next call
```

## Output Contract
- Adoption always shown at portfolio AND account level — team averages hide at-risk accounts
- Low adoption accounts always paired with root cause hypothesis and action
- Trend data always shown — direction of travel matters as much as current state
- HITL required before adoption data is used in board reporting or for at-risk account escalations

## System Dependencies
- **Reads from:** Product usage analytics, login data, feature tracking (provided or from product analytics platform)
- **Writes to:** Nothing (analysis for HITL review and CSM action)
- **HITL Required:** CS Manager reviews critical accounts before intervention; Dr. Lewis reviews adoption summary before board distribution

## Test Cases
1. **Golden path:** 12-account portfolio → 7 healthy, 3 at-risk, 2 critical; feature adoption gap identified for Feature B in 5 accounts; specific interventions for each at-risk and critical account
2. **Edge case:** No product analytics available → builds adoption assessment from CSM observation notes and customer self-report, flags data gap, recommends immediate implementation of usage tracking
3. **Adversarial:** CS team asks to exclude low-adoption accounts from a report to look better → refuses, reports all accounts, explains that excluding low-adoption hides retention risk from leadership

## Audit Log
Adoption rates retained by account and period. Trend history used for churn prediction calibration.

## Deprecation
Retire when product analytics and CS platform provide real-time adoption dashboards with automated intervention triggers.
