---
name: funnel-analysis-builder
description: "Build funnel analyses to identify conversion drop-offs. Use when the user says 'funnel analysis', 'conversion funnel', 'where are users dropping off', 'funnel drop-off', 'conversion rate', 'optimize the funnel', 'sales funnel analysis', 'pipeline funnel', 'funnel optimization', or 'where do we lose users'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--funnel-type <acquisition|activation|sales|onboarding>] [--product <name>]"
---

# Funnel Analysis Builder

Build funnel analyses that identify exactly where users or prospects are dropping off, and what to do about it. A funnel is a sequence of steps where each step has a conversion rate. The weakest step is the highest-leverage improvement opportunity. For MBL's products, funnels apply to user activation (sign-up → first value), sales (lead → closed won), and AI workflow adoption (awareness → integrated into workflow).

## When to Use
- Activation rate is below target — where in the flow are users dropping?
- Sales win rate is below benchmark — which stage is leaking?
- Pipeline has plenty of leads but few closed deals — where's the bottleneck?
- New feature launched — how many users complete the core journey?
- Before optimizing anything — audit the full funnel first

## Funnel Types

```
Activation funnel:
  Steps: Sign-up → First session → First core action → Aha moment
  KPI: Activation rate (% who reach aha moment)
  Use: Identify onboarding bottleneck

Sales funnel:
  Steps: Lead → Qualified → Demo → Proposal → Negotiation → Closed Won
  KPI: Win rate (% of qualified leads that close)
  Use: Identify which stage is losing the most deals

Product engagement funnel:
  Steps: Feature awareness → First use → Regular use → Power use
  KPI: Feature adoption rate
  Use: Understand feature stickiness

AI workflow adoption funnel (MBL-specific):
  Steps: Access granted → First AI output → Action taken on output → Integrated into workflow
  KPI: Workflow integration rate (% with AI embedded in daily workflow)
  Use: Measure AI product effectiveness
```

## Output Format

```markdown
# Funnel Analysis — <Product/Function> | <Funnel Type>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Funnel type:** Activation / Sales / Product engagement / AI adoption
**Period analyzed:** <date range>
**Total entering funnel:** <N>

---

## Funnel Summary

| Step | Users entering | Users completing | Conversion rate | Drop-off | Benchmark |
|------|--------------|-----------------|----------------|---------|---------|
| 1. Sign-up | 100 | 100 | 100% | — | — |
| 2. First session | 100 | 78 | 78% | 22 users | 85%+ |
| 3. First core action | 78 | 42 | 54% | 36 users ⚠️ | 70%+ |
| 4. Aha moment | 42 | 29 | 69% | 13 users | 80%+ |
| **End-to-end** | **100** | **29** | **29%** | — | **>50%** |

**Biggest leak:** Step 2→3 (only 54% proceed to first core action — below 70% target)

---

## Step-by-Step Analysis

### Step 2 → 3: First session → First core action

**Conversion:** 54% (26pp below benchmark)
**Drop-off count:** 36 users in this period

**Diagnosis:**
| Hypothesis | Evidence | Confidence |
|-----------|---------|-----------|
| Empty state — no guidance on what to do | Session recordings show users clicking around without direction | High |
| First core action is unclear | 3 user interviews: "I didn't know what to click" | High |
| Action requires setup (integration) first | 60% of drop-offs hadn't completed Monday.com integration | Medium |

**Recommended fixes (ranked by expected impact):**
1. Add a prominent CTA on the empty state screen → "Set up your first summary"
2. Gate the activation flow: complete Monday.com integration before showing the main screen
3. Show a sample summary on first login to demonstrate the aha moment

**Expected impact of fix 1:** +15pp on Step 2→3 conversion (based on similar products)

---

### Step 3 → 4: First core action → Aha moment

**Conversion:** 69% (11pp below benchmark)
**Diagnosis:** Users completing the core action but not reaching the summary view
**Fix:** Auto-navigate to the summary after the core action is complete

---

## Segmentation

| Segment | End-to-end conversion | vs. Average | Insight |
|---------|---------------------|------------|---------|
| MBL internal users | 52% | +23pp | Higher context; better setup guidance |
| Allevio pilot users | 18% | -11pp | Less context; more setup friction |
| Users w/ IT help | 48% | +19pp | IT onboarding removes setup blockers |

**Key insight:** Users with IT onboarding help convert 2.7× better — formalize IT-assisted onboarding

---

## Funnel Health Over Time

| Period | Step 2→3 | Step 3→4 | End-to-end | Trend |
|--------|---------|---------|-----------|-------|
| Jan '26 | 42% | 62% | 19% | — |
| Feb '26 | 50% | 65% | 24% | ↑ |
| Mar '26 | 54% | 69% | 29% | ↑ |

**Trend:** Improving each month; current interventions working

---

## Action Plan

| Action | Target step | Expected lift | Owner | Sprint | Success metric |
|--------|-----------|--------------|-------|--------|--------------|
| Add empty state CTA | Step 2→3 | +15pp | Engineering | N | Step 2→3 ≥ 65% |
| Require Monday.com integration in onboarding | Step 2→3 | +10pp | Engineering | N | Step 2→3 ≥ 65% |
| Auto-navigate post-action | Step 3→4 | +8pp | Engineering | N | Step 3→4 ≥ 75% |
| IT-assisted onboarding for Allevio | End-to-end | +30pp (Allevio) | Dr. Lewis | Now | Allevio E2E ≥ 40% |
```

## Output Contract
- Full funnel always shown — optimizing one step in isolation without seeing the whole funnel misses the biggest leak
- Segmentation always run — overall funnel data hides segment-specific patterns
- Specific diagnosis always provided — "step 2→3 is low" is a finding; "empty state has no CTA" is a diagnosis
- Action plan always quantified with expected lift — improvements without expected impact can't be prioritized
- HITL required: Dr. Lewis reviews funnel findings; action plan approved by Dr. Lewis; product/engineering changes triggered by funnel analysis require Dr. Lewis approval

## System Dependencies
- **Reads from:** Product analytics (user event sequence data), session recordings, user interviews
- **Writes to:** Funnel analysis report (SharePoint/Data/Analytics); action plan (Monday.com)
- **HITL Required:** Dr. Lewis reviews; product/onboarding changes approved by Dr. Lewis

## Test Cases
1. **Golden path:** Meeting Intelligence activation funnel → 100 users; Step 1→2 (sign-up → first session): 78%; Step 2→3 (first session → first summary view): 54% (weakest step); Step 3→4 (summary view → action item creation): 69%; End-to-end: 29%; Diagnosis: empty state provides no guidance; Fix: add "Set up your first summary" CTA; Segment: Allevio users 18% E2E vs. MBL 52% E2E; IT-assisted onboarding for Allevio; target: 50% E2E by next quarter
2. **Edge case:** Funnel step can be skipped — some users jump from step 1 to step 4 → this is a power user pattern; document it as a fast track; don't penalize the funnel for it; segment between standard path and fast track; ensure the fast track is intentional and expected behavior, not a data pipeline issue
3. **Adversarial:** Team wants to focus on the last step (step 4→5) to increase final conversion, even though step 2→3 has a bigger gap → always fix the biggest leak first; a 20pp improvement at step 2→3 has a bigger impact on end-to-end conversion than a 20pp improvement at step 4→5; the math: improving the 54% step to 74% (20pp) on a 100-person funnel adds 15 users to the output; improving the 85% step to 100% on the same funnel adds only 2 users

## Audit Log
Funnel analyses retained monthly. Action plan outcomes tracked (did the lift materialize?). Step conversion trends maintained over time.

## Deprecation
Retire when MBL has a dedicated analytics platform (Amplitude, Mixpanel) with automated funnel visualization and drop-off alerts.
