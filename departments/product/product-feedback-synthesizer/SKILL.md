---
name: product-feedback-synthesizer
description: "Synthesize product feedback from multiple sources into actionable insights. Use when the user says 'synthesize feedback', 'what is feedback telling us', 'analyze user feedback', 'combine feedback sources', 'what do users want', 'feedback analysis', 'customer feedback themes', 'what patterns in the feedback', or 'summarize user feedback'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--sources <csat|interviews|support|nps>] [--product <name>] [--period <month|quarter>]"
---

# Product Feedback Synthesizer

Synthesize product feedback from multiple sources into actionable insights. Feedback lives in many places — CSAT surveys, NPS responses, support tickets, user interviews, CS team notes, and informal comments. On its own, each source is noisy. Together, they reveal patterns. This skill aggregates and synthesizes feedback from all available channels to produce a clear picture of what users are experiencing and what should change.

## When to Use
- Monthly product feedback review — what did we hear this month?
- Before roadmap planning — what does feedback say should be prioritized?
- A specific feature launched — what's the feedback?
- NPS or CSAT dropped — what's driving it?
- CS team is seeing patterns — quantify and act on them

## Feedback Sources and Weight

| Source | Signal Type | Reliability | Volume |
|--------|------------|------------|--------|
| CSAT surveys | Overall satisfaction + specific feature | High (structured) | Medium |
| NPS + open text | Promoter/detractor reasoning | High | Medium |
| Support tickets | Problems and friction | Very high (revealed behavior) | High |
| User interviews | Deep understanding | Very high | Low |
| CS team notes | Patterns across accounts | High (curated) | Medium |
| Product analytics | Behavioral evidence | Very high (objective) | High |
| App store / G2 reviews | Market sentiment | Medium (selection bias) | Low |

## Synthesis Framework

```
Step 1 — Collect
  Pull from all sources for the time period
  Categorize each piece of feedback:
    - Feature request (something that doesn't exist)
    - Bug/error (something broken)
    - Friction (something that works but is hard to use)
    - Delight (something that works well — keep doing it)
    - Other

Step 2 — Theme
  Group related feedback regardless of source
  A theme needs at least 3 independent data points to be actionable
  Label each theme and count occurrences

Step 3 — Prioritize themes
  Weight by: frequency × severity × source reliability
  High-frequency + high-severity + user interview confirmation = act now

Step 4 — Connect to metrics
  Does this feedback theme align with a metric that's underperforming?
  Is there behavioral evidence in analytics that corroborates?

Step 5 — Generate action items
  Each major theme → specific action (build, fix, investigate, do nothing + reason)
```

## Output Format

```markdown
# Product Feedback Synthesis — <Product>
**Period:** <date range> | **Analyst:** Dr. John Lewis
**Sources:** CSAT / NPS / Support / Interviews / CS Notes
**Total feedback items:** <N>

---

## Executive Summary

**Top positive signal:** <what users love, specifically>
**Top negative signal:** <most common complaint>
**Most actionable insight:** <what we should do based on feedback>
**Urgency:** Action needed now / This quarter / Next quarter

---

## Feedback by Theme

### Theme 1: <Theme Name> 🔴 High priority

**What users are saying:**
- "Quote 1" — [CSAT, anonymous]
- "Quote 2" — [Support ticket, user descriptor]
- [CS team: "Multiple Allevio users mention..."]

**Evidence count:** 12 mentions across CSAT (4), support (6), interviews (2)
**Severity:** Critical (blocking use) / High (significant friction) / Medium / Low
**Analytics corroboration:** [Funnel drop-off at this step / Metric X is underperforming]
**Recommended action:** <specific product change> by <target>

---

### Theme 2: <Theme Name> 🟡 Medium priority

[Same format]

---

### Theme 3: <Theme Name> — DELIGHT (keep doing)

**What users love:**
- "Quote" — [source]
- [Pattern: users specifically mention X]

**Why this matters:** <don't break this in the next iteration>

---

## Source Breakdown

| Source | Items | Positive | Negative | Themes identified |
|--------|-------|---------|---------|-----------------|
| CSAT surveys | 48 | 31 (65%) | 17 (35%) | 4 themes |
| Support tickets | 34 | 2 | 32 | 6 themes |
| User interviews | 8 | Mixed | Mixed | 5 themes |

**CSAT score this period:** <N>/5 (vs. <N>/5 last period)
**NPS this period:** <N> (vs. <N> last period)

---

## Action Items

| Theme | Priority | Action | Owner | Target |
|-------|---------|--------|-------|--------|
| Theme 1 | P1 | [Specific change] | Dr. Lewis | Sprint N |
| Theme 2 | P2 | [Specific change] | Engineering | Sprint N+1 |
| Theme 4 | P3 | [Investigation] | Dr. Lewis | This month |
| Theme X (delight) | N/A | Do not change | — | — |

---

## What We're NOT Acting On (and Why)

| Feedback | Why not acting | Condition to reconsider |
|---------|--------------|----------------------|
| [Feedback] | Feature request; not enough volume (n=2) | If >10 requests, re-evaluate |
| [Feedback] | Contradicts another larger segment's need | — |
```

## Output Contract
- Evidence count always included — a theme with 2 data points is not a theme
- Delight themes always documented — knowing what to protect is as important as knowing what to fix
- "Not acting" always documented — stakeholders notice when feedback isn't being addressed; explain why
- Analytics corroboration always checked — feedback without behavioral evidence should be weighted less
- HITL required: Dr. Lewis reviews synthesis; significant negative patterns briefed to Matt Mathison; major product changes triggered by feedback require Dr. Lewis approval

## System Dependencies
- **Reads from:** CSAT data, NPS data, support ticket system, interview notes, CS team notes, product analytics
- **Writes to:** Feedback synthesis report (SharePoint/Product); action items in Monday.com
- **HITL Required:** Dr. Lewis reviews; Matt Mathison informed of significant negative patterns; action items approved by Dr. Lewis

## Test Cases
1. **Golden path:** Monthly Meeting Intelligence feedback synthesis → 48 CSAT, 34 support tickets, 8 interviews; Theme 1: action items not visible enough (12 mentions, P1); Theme 2: Monday.com sync too slow (8 mentions, P2); Delight theme: summary format is excellent (positive in 80% of CSAT); Action: fix CTA visibility (Sprint 12); investigate Monday.com sync latency (Sprint 13)
2. **Edge case:** All feedback is positive (CSAT 4.8/5) but churn is increasing → positive feedback with increasing churn means users like it but aren't getting enough value to stay; look at what churned users said in their exit interviews vs. retained users; the gap is the insight
3. **Adversarial:** One vocal user is submitting many feedback items that skew the analysis → deduplicate by user; one user's 15 support tickets is still one user's perspective; weight by breadth (unique users), not volume; note outlier users but don't let them set the roadmap

## Audit Log
Feedback synthesis reports retained monthly. Action items linked to feedback themes. Outcome tracking: did the action resolve the theme?

## Deprecation
Retire when product team adopts a feedback platform (Canny, UserVoice, Pendo) with automated theme detection and prioritization.
