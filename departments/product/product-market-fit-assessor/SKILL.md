---
name: product-market-fit-assessor
description: "Assess whether a product has achieved product-market fit. Use when the user says 'product-market fit', 'PMF', 'do we have PMF', 'are we there yet', 'have we found our market', 'is the product working', 'should we scale', 'when do we scale up', 'assess PMF', or 'PMF signals'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--stage <early|growth|scale>]"
---

# Product-Market Fit Assessor

Assess whether a product has achieved product-market fit (PMF) and what to do based on where it stands. PMF is the state where a product satisfies a strong market demand — users want it, use it, and would be upset if it went away. Without PMF, scaling is pouring fuel on a fire that isn't burning. With PMF, scaling works. For MBL products, PMF assessment determines whether to expand to more portfolio companies or to keep iterating.

## When to Use
- Product has been live 60-90+ days — time to assess PMF
- Considering scaling to more users or portfolio companies — is it ready?
- Retention is disappointing — PMF diagnosis will identify what's missing
- Roadmap debate: build more features vs. talk to users — PMF assessment first
- Portfolio company evaluation: does their product have PMF?

## PMF Signals Framework

```
Strong PMF signals (want ALL of these):
  1. Organic growth: users refer other users without incentive
  2. Strong retention: D30 > 30%, D90 > 20% (varies by product type)
  3. High "very disappointed" score: >40% in Sean Ellis test
  4. User pull: users requesting features, engaging with support proactively
  5. Stickiness: users building the product into their workflow
  6. Leading indicator: product moves before you push it

Weak PMF signals (warning flags):
  - Users say they like it but usage is low
  - Retention is low and requires constant re-engagement
  - Growth only comes from active sales/push
  - Users need frequent support to get value
  - Team is constantly changing the product trying to find what works

No PMF signals:
  - Churn is high and consistent
  - Users who try it don't come back
  - "Very disappointed" score < 20%
  - You can't describe who the product is for in one sentence
```

## Sean Ellis PMF Survey

```
Question: "How would you feel if you could no longer use [product]?"
  - Very disappointed
  - Somewhat disappointed
  - Not disappointed (it's not that important)
  - N/A — I no longer use it

Benchmark:
  >40% "Very disappointed" → Strong PMF signal
  25-40% → In the zone; PMF likely with the right segment
  <25% → PMF not yet achieved; iterate before scaling
```

## PMF Assessment Process

```
Step 1: Gather signals
  - Sean Ellis survey (minimum n=30 for statistical relevance)
  - D7/D30/D90 retention data
  - Net Promoter Score
  - Organic referral rate (% of new users from word of mouth)
  - Support ticket volume and type

Step 2: Segment analysis
  Which users have PMF? (Even if overall PMF is weak, a segment may be strong)
  Profile the "very disappointed" users — who are they?
  This is your beachhead segment for focused iteration

Step 3: Qualitative depth
  Interview 5-10 "very disappointed" users — what do they do with the product?
  Interview 5-10 "not disappointed" users — what's missing for them?
  The gap between these two groups = what to build next

Step 4: Score and decide
  Score: 0-100 (formula below)
  Decision: Hold (iterate) / Narrow (focus on beachhead) / Scale
```

## Output Format

```markdown
# Product-Market Fit Assessment — <Product>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Product:** <name> | **Stage:** Early / Growth / Scale
**Data period:** <date range>

---

## PMF Score: <N>/100

**Verdict:** ❌ No PMF — iterate | ⚠️ Partial PMF — focus and narrow | ✅ PMF — ready to scale

---

## Signal Scorecard

| Signal | Weight | Score | Finding |
|--------|--------|-------|---------|
| Sean Ellis: % "Very disappointed" | 30 | <N>/30 | <N>% (target: >40%) |
| D30 retention | 25 | <N>/25 | <N>% (target: >30%) |
| Organic growth rate | 20 | <N>/20 | <N>% of growth is organic |
| User pull (inbound requests) | 15 | <N>/15 | <finding> |
| NPS | 10 | <N>/10 | <N> (target: >30) |
| **Total** | 100 | **<total>** | |

---

## Beachhead Segment (if partial PMF)

**Users with strong PMF signals:**
- Role/type: <who they are>
- Usage pattern: <how they use the product>
- "Very disappointed" rate among this segment: <N>%
- D30 retention for this segment: <N>%

**Implication:** Narrow to this segment before expanding

---

## Qualitative Findings

**"Very disappointed" users say:**
- "[Quote]" — [descriptor]
- Primary use case: <what they actually use it for>
- What would replace it if it went away: <their answer>

**"Not disappointed" users say:**
- "[Quote]" — [descriptor]
- What's missing: <the gap>

**Key gap to close for next PMF tier:** <specific finding>

---

## Decision

| Option | Condition | Action |
|--------|-----------|--------|
| Scale | Score >75 AND segment clear | Expand to next portfolio company; increase investment |
| Narrow | Score 40-75 OR segment strong but broad product weak | Focus on beachhead; stop expanding to new users temporarily |
| Iterate | Score <40 | Return to discovery; run experiments; do not scale |

**Recommended action:** <Narrow / Iterate / Scale>
**Rationale:** <2-3 sentences>
**Next review:** <date — usually 60 days>
```

## Output Contract
- PMF score always shown with components — "we have PMF" without evidence is a belief, not a finding
- Beachhead segment always identified if partial PMF — even weak overall PMF usually has a strong segment
- Decision always explicit — "keep building" is not a decision; "iterate on action item quality, reassess in 60 days" is
- HITL required: Dr. Lewis approves PMF assessment and scale/hold decision; Matt Mathison aligned before scaling to additional portfolio companies

## System Dependencies
- **Reads from:** Sean Ellis survey data, product analytics (retention, NPS), user interview notes
- **Writes to:** PMF assessment report (SharePoint/Product); scale recommendation to Matt Mathison
- **HITL Required:** Dr. Lewis approves assessment; Matt Mathison approves scale decisions; portfolio company rollout requires both

## Test Cases
1. **Golden path:** Meeting Intelligence PMF assessment → Sean Ellis: 35% "very disappointed" (below 40% target, partial PMF); D30: 32% (on target); NPS: 38 (strong); Organic: 20% (low, mostly push-driven); Score: 62/100 (partial PMF); Beachhead: MBL leadership team (Matt Mathison's direct users) at 85% "very disappointed"; Decision: narrow to MBL leadership before expanding to Allevio; iterate on action item quality and Monday.com integration; reassess in 60 days
2. **Edge case:** n=8 for the Sean Ellis survey — too small to score → with n<30, Sean Ellis results are unreliable; use qualitative interviews instead; run 8-10 in-depth user interviews; look for pattern saturation; don't use percentage thresholds on n<30
3. **Adversarial:** Leadership wants to scale to all portfolio companies now based on positive anecdotes → anecdotes are not PMF; run the assessment first; if PMF is partial, scaling replicates a flawed product across 4 companies simultaneously; the cost of premature scaling is much higher than the cost of 60 more days of iteration

## Audit Log
PMF assessments retained per quarter. Scale decisions documented. Portfolio company rollout timing linked to PMF scores.

## Deprecation
Retire when product has clear PMF with all portfolio companies deployed and product team has established a monthly product health review cadence that includes PMF signals as standard practice.
