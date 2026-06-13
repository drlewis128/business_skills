---
name: retention-analysis-builder
description: "Build retention analysis and improvement plans. Use when the user says 'retention analysis', 'why are users leaving', 'user retention', 'cohort retention', 'D7 retention', 'how do we retain users', 'churn analysis', 'retention curve', 'improve retention', or 'retention strategy'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--cohort <date>] [--mode <analyze|improve|track>]"
---

# Retention Analysis Builder

Build retention analyses and improvement plans for MBL products. Retention is the most important metric for any product — it measures whether users are getting enough value to come back. A product with great acquisition but poor retention is a leaky bucket: you keep filling it without building any value. For MBL's internal tools (Meeting Intelligence, agent workflows), retention measures whether the team is actually using the tools that were built.

## When to Use
- D7/D30 retention is below target — diagnose and improve
- A product or feature launched — measure if users are coming back
- Preparing a product health review — retention is a required component
- Portfolio company product assessment — are their customers sticking?
- Understanding which user segments retain best — replicate the pattern

## Retention Framework

```
Retention types:
  N-day retention: % of users who return on day N
    D1: return the next day (engagement signal)
    D7: return within a week (habit signal)
    D30: return within a month (value signal)
    D90: long-term value signal

  Bracket retention: % who return within a period
    Week 1, Week 2, Month 1, Month 3

  Feature retention: % who use a specific feature again
    (vs. product retention overall)

The retention curve:
  Typically drops steeply in first days, then stabilizes
  "Flattening" of the curve = users who find long-term value
  A curve that keeps declining to 0% = no sustainable value
```

## Retention Analysis Framework

```
Step 1 — Baseline the retention curve
  What % return at D1, D7, D30?
  Plot by cohort date — is it improving or declining over time?

Step 2 — Segment the curve
  Which user segments retain better? (power users, specific roles, specific entities)
  Is there a "happy path" segment with dramatically better retention?
  Can we replicate that path for all users?

Step 3 — Find the aha moment
  What action do high-retaining users take in the first session?
  Is there a specific feature use that predicts long-term retention?
  Build the onboarding flow to get every user to that action

Step 4 — Diagnose low-retention causes
  Interview churned users: what went wrong?
  Look at session recordings: where did they stop?
  Check funnel: where is the biggest drop-off?

Step 5 — Design interventions
  Onboarding improvement (get to aha moment faster)
  Habit formation (reminders, notifications, weekly triggers)
  Feature discovery (show users features that increase retention)
  Personalization (make the product more relevant to each user)
```

## Output Format

```markdown
# Retention Analysis — <Product>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Cohorts analyzed:** <date range>
**Total users:** <N>

---

## Retention Summary

**D7 retention:** <N>% (target: ><N>%) — 🟢 On target / 🟡 Below target / 🔴 Critical
**D30 retention:** <N>% (target: ><N>%)
**Trend:** Improving / Stable / Declining

---

## Retention Curve

| Day | Cohort 1 (Jan) | Cohort 2 (Feb) | Cohort 3 (Mar) | Benchmark |
|-----|--------------|--------------|--------------|----------|
| D1 | 68% | 72% | 75% | 70%+ |
| D7 | 42% | 45% | 50% | 45%+ |
| D30 | 28% | 31% | 35% | 30%+ |
| D90 | 20% | 22% | — | 20%+ |

**Trend:** Improving cohort-over-cohort ✅

---

## Segment Comparison

| Segment | D7 Retention | D30 Retention | What's different |
|---------|-------------|--------------|----------------|
| Power users (daily) | 88% | 72% | Use 4+ features; action items frequently |
| Standard users | 38% | 22% | Use 1-2 features; occasional |
| Passive users (<weekly) | 12% | 6% | Rarely return; likely not finding value |

**Insight:** Power users retain 2.3× better. What do they do differently?

---

## Aha Moment Analysis

**Actions correlated with high retention (users who do this retain >2× better):**
1. Created their first action item from a summary (D7 retention: 78% vs. 38% average)
2. Connected Monday.com integration within first session (D30: 65% vs. 28%)

**Implication for onboarding:** Get every user to create their first action item in session 1.

---

## Low-Retention Diagnosis

**Why users churn (from exit interviews n=6):**
1. "I forget to check the summaries" (3/6) — habit formation problem
2. "The action items don't match what I actually need to track" (2/6) — quality problem
3. "My team doesn't use Monday.com, so the integration isn't helpful" (1/6) — fit problem

---

## Retention Improvement Plan

| Initiative | Target metric | Expected impact | Effort | Sprint |
|-----------|-------------|----------------|--------|--------|
| Onboarding: guide to first action item | D7 retention | +12pp | M | N |
| Weekly summary email digest | D30 retention | +8pp | M | N+1 |
| Action item quality experiment | D7 retention | +5pp | S | N+1 |

---

## Monitoring Plan

| Metric | Frequency | Alert threshold |
|--------|---------|----------------|
| D7 retention | Weekly | <38% (current) |
| D30 retention | Monthly | <28% (current) |
| Cohort curve | Monthly | New cohort <2pp behind previous |
```

## Output Contract
- Cohort comparison always included — retention without trend analysis misses whether it's improving
- Aha moment analysis always included — it's the highest-leverage retention intervention
- Exit interview data always included — behavioral data explains what; interviews explain why
- Improvement plan always specific and resourced — "improve retention" is not a plan
- HITL required: Dr. Lewis reviews retention analysis; significant retention drops briefed to Matt Mathison; major onboarding changes require Dr. Lewis approval

## System Dependencies
- **Reads from:** Product analytics (event data by user ID by date), exit interview notes, support tickets
- **Writes to:** Retention analysis report (SharePoint/Product); improvement plan in Monday.com
- **HITL Required:** Dr. Lewis reviews; Matt Mathison briefed on significant drops; major changes require Dr. Lewis approval

## Test Cases
1. **Golden path:** Monthly retention analysis for Meeting Intelligence → D7: 45% (target 45% — on track), D30: 31% (target 30% — on track); Cohorts improving MoM; Aha moment: first action item creation; Implication: redesign onboarding to guide to action item in first session; 3 retention experiments planned
2. **Edge case:** Very small user base (N=12 users) — retention percentages are unstable → with N=12, a 2-person difference is 17pp; don't over-interpret percentage swings; use absolute numbers and qualitative data instead; interview every churned user
3. **Adversarial:** Retention analysis shows 80% "retention" but users say they don't find the product useful → check the definition of "retained" — if it counts any login, even accidental, it's a misleading metric; measure "meaningful retention" (completed a core action) not just "any login"

## Audit Log
Retention analyses retained monthly by cohort. Aha moment findings documented. Improvement plan outcomes tracked.

## Deprecation
Retire when product team deploys a dedicated product analytics platform with automated cohort retention dashboards.
