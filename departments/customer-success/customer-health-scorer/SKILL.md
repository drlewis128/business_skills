---
name: customer-health-scorer
description: "Build or run a customer health scoring model. Use when the user says 'health score', 'customer health', 'account health', 'health scoring model', 'which customers are healthy', 'health check', 'CSM health report', or 'how are our customers doing'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--account <specific>] [--model <build|run>]"
---

# Customer Health Scorer

Build a customer health scoring model or run scores against an existing model. Health scores are CS's early warning system — a declining score 90 days before renewal is actionable; a declined score at renewal is a churn you couldn't stop.

## When to Use
- Building a health score model for the CS team (new program)
- Running a quarterly health check on the full customer base
- Tracking health changes on a specific at-risk account
- Preparing for a renewal conversation (what does health say?)
- Board/LP reporting on portfolio company customer base health

## Health Score Dimensions

### Core Dimensions (Customize to Product)

| Dimension | Weight | What to Measure |
|-----------|--------|----------------|
| **Product adoption** | 30% | Login frequency, feature usage, % of seats active |
| **Engagement** | 20% | CSM interaction frequency, QBR attendance, executive access |
| **Support health** | 15% | Open tickets, time-to-resolution, ticket sentiment |
| **Relationship health** | 15% | Champion strength, executive sponsor active, key contact turnover |
| **Business outcomes** | 15% | ROI realized, goals achieved, success metric progress |
| **Commercial health** | 5% | Invoices paid on time, contract compliance |

### Scoring Scale per Dimension
- **3 (Green):** Performing above expectations
- **2 (Yellow):** At target; no active concern
- **1 (Orange):** Below target; needs attention
- **0 (Red):** Critical failure; immediate action required

### Composite Score

```
Health Score = Σ (Dimension weight × dimension score)
Green: 75–100
Yellow: 50–74
Red: < 50
```

## Health Score Interpretation

| Score | Status | Action |
|-------|--------|--------|
| 75–100 | 🟢 Green / Healthy | Maintain engagement; look for expansion |
| 50–74 | 🟡 Yellow / At Risk | Increase CSM engagement; identify and address root cause |
| < 50 | 🔴 Red / Critical | Save plan activated immediately — see `at-risk-account-intervention` |

## Output Format

```markdown
# Customer Health Score Report — <Entity>
**Date:** <date> | **Accounts scored:** <N>

---

## Portfolio Health Summary

| Status | Count | % of Accounts | ACV |
|--------|-------|--------------|-----|
| 🟢 Green (75–100) | <N> | X% | $<N> |
| 🟡 Yellow (50–74) | <N> | X% | $<N> |
| 🔴 Red (< 50) | <N> | X% | $<N> |

**ARR at risk (Red accounts):** $<N>
**ARR at elevated risk (Yellow accounts):** $<N>

---

## Individual Account Scores

| Account | Adoption | Engagement | Support | Relationship | Outcomes | Commercial | **Score** | Status |
|---------|---------|-----------|---------|-------------|---------|-----------|----------|--------|
| <Account> | X/30 | X/20 | X/15 | X/15 | X/15 | X/5 | **X** | 🟢 |
| <Account> | X/30 | X/20 | X/15 | X/15 | X/15 | X/5 | **X** | 🔴 |

---

## Score Changes (vs. Prior Period)

| Account | Prior Score | Current Score | Change | Driver |
|---------|------------|--------------|--------|--------|
| <Account> | 78 | 58 | -20 ⬇️ | Adoption dropped; champion on leave |
| <Account> | 45 | 62 | +17 ⬆️ | Executive engagement restored |

---

## Accounts Requiring Immediate Action (Red)

1. **[Account]** — Score: X/100 | ACV: $<N> | Renewal: <date>
   **Primary driver:** <What's causing the red score>
   **Action:** Activate `at-risk-account-intervention`

---

## Trending Yellow (Deteriorating — Watch Closely)

1. **[Account]** — Score declining: X → X → X (3 periods)
   **Risk:** At current trajectory, enters Red in <N> weeks

```

## Output Contract
- Portfolio summary always includes ARR at risk — connects health to business impact
- Score changes vs. prior period always shown — trends matter more than snapshots
- Every Red account paired with a specific action trigger
- HITL required before Red account health scores are shared in board reporting — Dr. Lewis reviews

## System Dependencies
- **Reads from:** Product usage data, support tickets, CSM activity logs, NPS scores (provided or from CS platform)
- **Writes to:** Nothing (scores for HITL review and CSM action)
- **HITL Required:** Dr. Lewis reviews all Red account health scores before board/LP distribution; CS Manager owns Red account save plan assignment

## Test Cases
1. **Golden path:** 12-account portfolio scored → 7 green, 3 yellow, 2 red; $180K ARR at risk (red); 2 accounts with declining trends flagged; specific actions for each red account
2. **Edge case:** New customer < 60 days old → labeled "New — Insufficient data" for adoption and outcome dimensions, scored on available data only, not penalized for lack of history
3. **Adversarial:** Request to adjust a Red account score to Yellow to avoid escalating to leadership → refuses, scores objectively based on data, escalates per protocol

## Audit Log
Health scores retained by account and period. Score change history tracked for trend analysis and churn prediction calibration.

## Deprecation
Retire when CS platform (Gainsight, ChurnZero) provides real-time automated health scoring with configurable dimensions and alert automation.
