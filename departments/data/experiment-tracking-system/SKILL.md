---
name: experiment-tracking-system
description: "Design and maintain a system for tracking product and data experiments. Use when the user says 'experiment tracking', 'track experiments', 'experiment log', 'results log', 'A/B test tracking', 'experiment database', 'keep track of tests', 'experiment history', 'what experiments have we run', or 'experiment registry'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--type <ab-test|ai-quality|data-experiment>]"
---

# Experiment Tracking System

Design and maintain a system for tracking product and AI quality experiments. Most teams run experiments but don't systematically capture what they learned — which means the same experiments get re-run, losing compounds don't accumulate, and successful patterns get forgotten when a team member leaves. For MBL's AI products, experiment tracking is especially important because prompt iteration, HITL threshold tuning, and output format testing need systematic documentation to build a learning library.

## When to Use
- Starting a product experiment program — design the tracking system
- Looking up results of a previous experiment before running a similar one
- Monthly/quarterly experiment review — what have we learned?
- AI prompt quality experiments — log the prompt versions and evaluation results
- New engineer or PM joins the team — show them the experiment history

## Experiment Registry Structure

```
Each experiment entry includes:
  ID: Unique identifier (EXP-001, EXP-002...)
  Name: Short descriptive name
  Type: A/B test / AI quality / Data / Process
  Hypothesis: "We believe [X] will cause [Y] because [Z]"
  Start date: When the experiment began
  End date: When it concluded
  Method: How it was run (A/B, before-after, qualitative evaluation)
  Primary metric: The single metric that determines success/failure
  Guardrail metrics: Metrics that must not regress
  Result: Metric value for control vs. variant
  Statistical significance: p-value or confidence level (for A/B tests)
  Decision: Ship / No change / Extend / Pivot
  Learning: What we now know that we didn't before
  Applied to: Where this learning was implemented
```

## Output Format

```markdown
# Experiment Registry — <Product>
**Maintained by:** Dr. John Lewis | **Last updated:** <date>

---

## Experiment Log (most recent first)

| ID | Name | Type | Start | End | Hypothesis (short) | Result | Decision |
|----|------|------|-------|-----|-------------------|--------|---------|
| EXP-008 | Bullet vs. narrative summaries | AI quality | <date> | <date> | Bullets → more action items | +18% action creation | ✅ Shipped |
| EXP-007 | Monday.com integration prompt | AI quality | <date> | <date> | Explicit Monday mention → better sync | -3% (n.s.) | ❌ No change |
| EXP-006 | Activation email timing | A/B test | <date> | <date> | Day 1 email → more return visits | +8% D7 (p=0.04) | ✅ Shipped |
| EXP-005 | Action item threshold | AI quality | <date> | <date> | Threshold 0.7 → fewer false positives | ✅ Validated | ✅ Shipped |

---

## Experiment Detail: EXP-008

**Name:** Bullet format vs. narrative summaries
**Type:** AI quality experiment
**Status:** Completed — shipped
**Owner:** Dr. Lewis

**Hypothesis:**
"We believe that formatting meeting summaries with bullet points (vs. narrative paragraphs) will increase the rate at which users create action items from summaries, because bullets are easier to scan and act on."

**Method:**
- 25 summaries generated with bullet format (variant)
- 25 summaries generated with narrative format (control)
- Blind evaluation: Dr. Lewis rated output quality 1-5 without knowing which format
- Behavioral metric: action items created from each summary set (tracked in Monday.com)

**Metrics:**
- Primary: Action item creation rate (% of summaries where ≥1 action item was created)
- Guardrails: User CSAT on summaries must not drop; summary completeness must not drop

**Results:**

| Format | Summaries | Action item creation rate | Avg quality rating |
|--------|----------|--------------------------|-------------------|
| Control (narrative) | 25 | 51% | 3.8/5 |
| Variant (bullets) | 25 | 69% (+18pp) | 4.1/5 |

**Statistical confidence:** Behavioral difference observed; sample too small for formal p-value (n=50 total); pattern strong enough for directional decision

**Decision:** ✅ Ship bullet format as default
**Shipped on:** <date>
**Rollout:** Applied to all new summaries; monitored for 30 days post-ship

**Learning:**
Bullet format increases action item creation rate by ~18pp AND improves quality ratings. The hypothesis was correct — scanning ease matters for AI output. Bullets should be the default for all output types where actions are expected.

**Applied to:** Default summary prompt template; guide for future AI output format decisions

---

## Experiment Queue (planned)

| Priority | Name | Hypothesis | Method | Owner | Target start |
|---------|------|-----------|--------|-------|-------------|
| P1 | Summary timing (same-day vs. next-morning) | Earlier delivery → more action | A/B | Dr. Lewis | <date> |
| P1 | HITL threshold calibration | Lower threshold → fewer misses | Quality eval | Dr. Lewis | <date> |
| P2 | Email vs. Teams delivery | Teams → better engagement | A/B | Dr. Lewis | <date> |

---

## Learnings Library (searchable by theme)

| Theme | Experiment(s) | Learning | Confidence |
|-------|-------------|---------|-----------|
| Output format | EXP-008 | Bullets outperform narrative for action-oriented outputs | High (replicated 2×) |
| Delivery timing | EXP-003 | Day-1 onboarding email +8% D7 return | Medium (n=78) |
| HITL thresholds | EXP-005 | Threshold 0.7 balances coverage and precision | High |
| Notification channel | EXP-007 | Teams vs. email shows no significant difference | Medium |
```

## Output Contract
- Every experiment has a documented hypothesis in "We believe / will cause / because" format — vague hypotheses produce uninterpretable results
- AI quality experiments always use blind evaluation — self-assessment of AI output is biased
- Learnings library always maintained — the compound value of experiments comes from accumulating learnings, not just individual results
- Decision always stated — "experiment concluded" without a decision is incomplete
- HITL required: Dr. Lewis approves experiment designs before running; AI quality experiment results reviewed by Dr. Lewis; shipping decisions based on experiment results require Dr. Lewis approval

## System Dependencies
- **Reads from:** Product analytics (A/B test metrics), Claude API logs, HITL review data, Monday.com (action item data)
- **Writes to:** Experiment registry (SharePoint/Data/Experiments); prompt template updates (OpenFang)
- **HITL Required:** Dr. Lewis approves experiment design; reviews quality evaluation results; approves shipping decisions

## Test Cases
1. **Golden path:** Experiment registry for Meeting Intelligence → EXP-001 through EXP-008 documented; bullet format experiment (EXP-008) fully detailed with hypothesis, method, results, decision, learning; learnings library covers 4 themes; experiment queue has 3 prioritized next experiments; Dr. Lewis reviews registry monthly; registry shared with engineering team before sprint planning
2. **Edge case:** An experiment is inconclusive — not enough data to decide → document as "Inconclusive" with the minimum sample size needed to reach a decision; extend the experiment if cost is low; pivot to a different approach if the current method can't generate enough data; don't ship or reject based on inconclusive results — it's not a learning, it's a data collection problem
3. **Adversarial:** Team runs experiments but nobody documents the results → institute a rule: an experiment that isn't documented didn't happen; if an experiment result doesn't get written up, the next person will run the same experiment; the documentation takes 15 minutes; the experiment ran for 2 weeks; the ratio is not in favor of skipping docs; make experiment write-ups a sprint completion requirement for any sprint that included an experiment

## Audit Log
All experiments retained in registry. Shipping decisions linked to experiments. Learnings library versioned quarterly.

## Deprecation
Retire when MBL adopts a dedicated experimentation platform (Optimizely, GrowthBook, or similar) with built-in experiment logging and learnings management.
