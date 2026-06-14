---
name: cohort-analysis-builder
description: "Build cohort analyses to understand user behavior over time. Use when the user says 'cohort analysis', 'user cohorts', 'cohort retention', 'analyze cohorts', 'group users by', 'cohort comparison', 'cohort behavior', 'customer cohort', 'analyze user groups', or 'cohort-based retention'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--metric <retention|revenue|engagement>] [--cohort-type <acquisition|feature|segment>] [--period <weekly|monthly>]"
---

# Cohort Analysis Builder

Build cohort analyses that reveal how different groups of users behave over time. A cohort is a group of users who share a common characteristic at a specific point in time — usually when they first signed up (acquisition cohort) or when they first used a feature. Cohort analysis answers: "Are newer users better than older users? Do users who use feature X retain better? Which customer segment has the highest lifetime value?" For MBL's AI products, cohort analysis tracks whether each wave of users is getting better outcomes than the last.

## When to Use
- Retention is a problem — understand which cohorts retain well and why
- A new feature launched — did cohorts using it retain better?
- Multiple user segments — which ones are the most valuable?
- AI product quality improving — are newer cohorts seeing better outputs?
- Customer lifetime value calculation — cohort-based LTV is the most accurate approach

## Cohort Types

```
Acquisition cohort (most common):
  Group: All users who first signed up in the same time period
  Time axis: Days/weeks/months since signup
  Metric: Retention rate, revenue, engagement
  Question: "Are our newest users behaving differently than older cohorts?"

Feature cohort:
  Group: All users who first used a specific feature in the same period
  Question: "Do users who use feature X retain better?"
  Useful for: Validating feature impact; identifying aha moments

Segment cohort:
  Group: Users grouped by a characteristic (role, company size, entity)
  Question: "Do Allevio users behave differently than HIVE users?"
  Useful for: Portfolio comparison; product-market fit by segment

Behavioral cohort:
  Group: Users who did/didn't do a specific action
  Question: "Do users who complete action Y in week 1 retain better at 90 days?"
  Useful for: Onboarding optimization; aha moment validation
```

## Output Format

```markdown
# Cohort Analysis — <Product> | <Metric>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Cohort type:** Acquisition / Feature / Segment / Behavioral
**Metric:** Retention / Revenue / Engagement
**Period:** <date range>

---

## Cohort Retention Table

*Rows: acquisition month; Columns: months since acquisition*

| Cohort | Size | Month 0 | Month 1 | Month 2 | Month 3 | Month 6 |
|--------|------|---------|---------|---------|---------|---------|
| Jan '26 | 12 | 100% | 58% | 45% | 38% | 28% |
| Feb '26 | 18 | 100% | 65% | 52% | 44% | — |
| Mar '26 | 23 | 100% | 71% | 58% | — | — |

**Trend:** Month 1 retention improving cohort-over-cohort (Jan: 58%, Mar: 71%)
**Stabilization:** Cohorts appear to stabilize at ~28-32% at 6 months

---

## Cohort Retention Curve (summary)

| Month | Jan cohort | Feb cohort | Mar cohort | Avg |
|-------|-----------|-----------|-----------|-----|
| 0 | 100% | 100% | 100% | 100% |
| 1 | 58% | 65% | 71% | 65% |
| 2 | 45% | 52% | 58% | 52% |
| 3 | 38% | 44% | — | 41% |

**Improvement:** +13pp at Month 1 from Jan to Mar (onboarding improvements are working)

---

## Segment Comparison

| Segment | Month 1 | Month 3 | Long-term (est.) | Why different |
|---------|---------|---------|----------------|--------------|
| MBL team | 82% | 70% | ~65% | High context; integrated workflow |
| Allevio pilot | 55% | 42% | ~35% | Less integration; new workflow adoption |
| Power users (>3 sessions/week) | 94% | 88% | ~80% | Deep product engagement |
| Passive users (<1/week) | 28% | 12% | ~8% | Not finding sustained value |

**Implication:** Target the power user pattern; understand what makes MBL team retention so high

---

## Feature Cohort Analysis

| Feature used in Month 0? | Size | Month 1 | Month 3 | Lift vs. non-users |
|--------------------------|------|---------|---------|------------------|
| Used Monday.com integration | 22 | 78% | 64% | +23pp vs. non-users |
| Did NOT use integration | 31 | 55% | 41% | — |
| Created action item in first session | 18 | 82% | 70% | +29pp vs. non-creators |
| Did NOT create action item | 35 | 53% | 39% | — |

**Aha moment signal:** Action item creation in first session is the strongest retention predictor

---

## Cohort Revenue (if applicable)

| Cohort | Month 0 avg revenue | Month 3 avg revenue | LTV estimate (24 months) |
|--------|-------------------|-------------------|------------------------|
| Jan '26 | $<N>/user | $<N>/user | $<N>/user |
| Feb '26 | $<N>/user | $<N>/user | $<N>/user |

---

## Key Findings and Implications

1. **Retention is improving:** Month 1 retention improved +13pp from Jan to Mar → onboarding changes are working; maintain momentum
2. **Aha moment identified:** Action item creation in first session → +29pp Month 3 retention; make this the onboarding goal
3. **Segment gap:** MBL team retains 2× better than Allevio pilot → understand the workflow integration difference; replicate for Allevio
4. **Long-term stabilization:** Curves stabilize at ~30% at 6 months → this is the baseline LTV calculator input

**Recommended actions:**
1. Redesign Allevio onboarding to match MBL team's experience (use activation-flow-designer)
2. Make action item creation in Session 1 a mandatory onboarding step
3. Re-run cohort analysis in 60 days to validate actions
```

## Output Contract
- Cohort table always shown with raw percentages — trends are visible only in the table
- Segment comparison always included when multiple user types exist
- Feature cohort always run if any new features launched — this is how you validate feature impact
- Implications and actions always explicit — a cohort table without actions is an academic exercise
- HITL required: Dr. Lewis reviews cohort findings; implications for onboarding or product changes reviewed and approved by Dr. Lewis; if cohort analysis reveals significant issues, Matt Mathison briefed

## System Dependencies
- **Reads from:** Product analytics (user events by date), user list, feature usage logs
- **Writes to:** Cohort analysis report (SharePoint/Data/Analytics)
- **HITL Required:** Dr. Lewis reviews findings; product/onboarding changes triggered by cohort data require Dr. Lewis approval

## Test Cases
1. **Golden path:** Meeting Intelligence acquisition cohort retention → Jan cohort: 12 users, Month 1: 58%, Month 3: 38%; Feb cohort: 18 users, Month 1: 65%, Month 3: 44%; improvement trend visible; feature cohort: Monday.com integration users Month 3: 64% vs. 41% non-users; implication: push Monday.com integration setup in onboarding; action: update onboarding flow with integration as required step 2
2. **Edge case:** Very small cohorts (n=5) — percentages swing wildly → with n<15 per cohort, individual cohort percentages are statistically unreliable; aggregate cohorts (Q1 vs. Q2 instead of monthly); focus on absolute counts not percentages; interview all churned users from small cohorts individually rather than relying on aggregate data
3. **Adversarial:** Cohort analysis shows retention declining — team wants to exclude some cohorts from the chart → never exclude cohorts without a documented reason (e.g., a specific cohort affected by a known outage); if you cherry-pick cohorts, the analysis is misleading; document all cohorts; explain outliers; the purpose of cohort analysis is to see reality, not to confirm a preferred narrative

## Audit Log
Cohort analyses retained monthly. Feature cohort findings linked to product decisions. LTV estimates tracked for accuracy vs. actuals.

## Deprecation
Retire when MBL has a dedicated analytics platform (Amplitude, Mixpanel, or similar) with automated cohort retention dashboards.
