---
name: product-analytics-reviewer
description: "Review and interpret product analytics data. Use when the user says 'review the analytics', 'what do the numbers say', 'interpret this data', 'analytics review', 'what does this metric mean', 'funnel analysis', 'cohort analysis', 'drop-off analysis', 'why is this metric down', or 'read the analytics'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--metric <metric-name>] [--period <week|month|quarter>] [--mode <review|diagnose|report>]"
---

# Product Analytics Reviewer

Review and interpret product analytics for MBL products. Analytics tell you what happened — they don't explain why. The most common analytics mistake is confusing correlation with causation, and the second most common is making decisions from noisy data with small sample sizes. This skill provides structured interpretation of product data with appropriate confidence levels.

## When to Use
- Weekly product review — what do this week's numbers say?
- A metric moved significantly — what's driving it?
- A feature launched — is it working?
- Funnel analysis — where are users dropping off?
- Cohort analysis — are newer users behaving differently than older ones?

## Analytics Interpretation Framework

```
Step 1 — Characterize the data
  Time period? (Is this one week or one month?)
  Sample size? (N=20 is noise; N=2000 is signal)
  Is this absolute or percentage? (Both are needed)
  Are we comparing like-to-like? (Same time period? Same user segment?)

Step 2 — Look for patterns, not just numbers
  Is the trend consistent or a spike?
  Did something change (launch, external event, marketing campaign) to explain it?
  Do different segments behave differently? (new vs. old users; entity vs. entity)

Step 3 — Generate hypotheses before drawing conclusions
  List 3-5 possible explanations
  Rate each by likelihood
  Identify what data would confirm or reject each hypothesis

Step 4 — Note confidence level
  High: consistent trend, large sample, no obvious confounds
  Medium: some evidence but unclear causation
  Low: small sample, single data point, confounds present
```

## Common Analysis Patterns

### Funnel Analysis
```
A funnel shows where users drop off between steps.
Example: Meeting ends → summary sent → summary opened → action item created → action item completed

Key questions:
  Which step has the biggest drop-off?
  Is the drop-off consistent across user segments?
  What's the time delay between steps? (long delay = friction)
  
Reporting format:
  Step → Conversion rate → Drop-off
  Meeting ended → 100% (baseline)
  Summary sent → 95% (-5% — delivery issue)
  Summary opened → 80% (-15% — discoverability problem)
  Action item created → 35% (-45% — THIS IS THE PROBLEM)
  Action item completed → 22% (-13% — expected for tasks)
```

### Cohort Analysis
```
Groups users by start date; shows how behavior changes over time.
Key question: Are newer cohorts better or worse than older ones?

If newer cohorts retain worse: product quality or value has declined
If newer cohorts retain better: improvements are working
If all cohorts look the same: retention issue is not time-dependent
```

### Segmentation
```
Break any metric by: entity, role, feature usage, date joined, device
Key: "average" often hides bimodal distributions
Example: "CSAT 3.8/5 average" may mean 50% love it (5/5) and 50% hate it (2/5)
Always ask: which segment is driving the metric?
```

## Output Format

```markdown
# Analytics Review — <Product/Feature>
**Period:** <date range> | **Analyst:** Dr. John Lewis
**Report type:** Weekly / Feature / Funnel / Cohort

---

## Executive Summary

**What the data says (1-2 sentences):**
<specific finding with numbers — not "engagement is up">

**Confidence:** High / Medium / Low
**Recommended action:** <specific next step>

---

## Key Metrics

| Metric | This Period | Last Period | Change | Significance |
|--------|-----------|-----------|--------|-------------|
| [North star] | <N> | <N> | +12% | ✅ Meaningful |
| [Retention D7] | 68% | 62% | +6pp | ✅ Meaningful |
| [New users] | 12 | 14 | -14% | ⚠️ Small sample; n=14 |

---

## Funnel Analysis

| Step | Users | Conversion | Drop | Issue? |
|------|-------|-----------|------|--------|
| Meeting ended | 142 | 100% | — | |
| Summary sent | 135 | 95% | 5% | Minor (delivery) |
| Summary opened | 108 | 80% | 20% | 🟡 Investigate |
| Action item created | 47 | 44% | 56% | 🔴 Major drop |
| Item completed | 31 | 66% | 34% | Expected |

**Finding:** The primary drop is summary → action item creation (56%). This is where users stop engaging.

---

## Hypothesis Analysis

| Hypothesis | Evidence | Likelihood | Test |
|-----------|---------|-----------|------|
| Users don't see how to create action items | 3/5 usability test participants missed the CTA | High | Usability test results |
| Action items create duplication (already in Monday) | 2 users mentioned this in CSAT comments | Medium | Interview 3 users |
| Users don't trust the AI's action item quality | No direct evidence | Low | Survey question |

**Most likely cause:** CTA visibility — align with usability test finding

---

## Segmentation Insights

| Segment | North star rate | vs. Average | Notes |
|---------|---------------|------------|-------|
| MBL (heavy users) | 4.2 items/week | +68% | Power users; advocate potential |
| Portfolio company A | 0.8 items/week | -68% | Low adoption; investigate onboarding |
| Portfolio company B | 2.1 items/week | -16% | Near average |

**Insight:** Two distinct segments — power users and low adopters. Treat separately.

---

## What We Don't Know

- Why portfolio company A has low adoption (not enough data to diagnose)
- Whether the D7 retention improvement is from the new summary format or the email reminder (confound)

---

## Recommended Actions

1. **Immediate:** Fix action item CTA visibility (usability test confirmed problem) — Engineering
2. **This week:** Interview 3 portfolio company A users — Dr. Lewis
3. **Next sprint:** Add email reminder for action items — test impact on completion rate
```

## Output Contract
- Confidence level always stated — false precision is worse than acknowledged uncertainty
- Hypothesis analysis always before conclusions — correlation ≠ causation
- "What we don't know" always included — prevents overconfident decisions
- Recommended actions always specific — "investigate" without an owner and method is not actionable
- HITL required: Dr. Lewis reviews analytics interpretation; significant metric changes briefed to Matt Mathison; decisions to change product direction based on analytics require Dr. Lewis approval

## System Dependencies
- **Reads from:** Product analytics database, event logs, CSAT/NPS data, usability test results
- **Writes to:** Analytics review report (SharePoint/Product); Monday.com action items
- **HITL Required:** Dr. Lewis reviews; significant findings briefed to Matt Mathison

## Test Cases
1. **Golden path:** Weekly Meeting Intelligence analytics → North star: 47 items/week (↑ from 28); funnel shows major drop at summary→action item creation step (56%); hypothesis: CTA visibility issue (confirmed by usability test); recommend: fix CTA before next sprint; medium confidence — small sample (n=142 meetings)
2. **Edge case:** Metric improved dramatically but can't explain why → treat as unknown, not a win; what changed? New users? External event? Bug fix that also changed behavior?; don't claim credit for changes you don't understand; investigate before reporting as success
3. **Adversarial:** Business stakeholder wants to make a product decision based on N=20 sample → N=20 is not enough to draw conclusions; state clearly: "this is directional, not conclusive"; recommend what additional data or research would make it conclusive; don't present directional data as statistical fact

## Audit Log
Analytics reports retained weekly. Significant metric changes documented. Hypothesis → test → result chain maintained.

## Deprecation
Retire when product team has a dedicated data analyst and automated reporting platform with anomaly detection.
