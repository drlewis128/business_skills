---
name: product-experiment-designer
description: "Design structured product experiments for continuous improvement. Use when the user says 'design an experiment', 'product experiment', 'growth experiment', 'run an experiment', 'test this idea', 'rapid experimentation', 'experiment backlog', 'what experiments should we run', or 'build an experiment program'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--area <onboarding|retention|activation|revenue>] [--mode <design|prioritize|review>]"
---

# Product Experiment Designer

Design structured product experiments for continuous improvement of MBL products. An experiment program is how products improve systematically rather than through guesswork and opinion. For MBL's AI products, experiments include both standard UX experiments (A/B tests, funnel changes) and AI-specific experiments (prompt variations, output format tests, quality thresholds).

## When to Use
- Building an experiment backlog for a product area
- A metric is underperforming and you need to test fixes
- After a feature launch, the metric isn't moving as expected
- AI output quality needs improvement — structured prompt experiments
- Setting up a monthly experiment cadence

## Experiment Design Template

```
Hypothesis: "We believe [change] will result in [outcome] because [reason]."
Metric: [Primary metric] / Guardrails: [metrics that must not regress]
Method: [A/B test / Multivariate / Holdout / Before-After]
Sample size: [N per variant] Duration: [N days]
Success threshold: [N% improvement, p<0.05]
```

## Experiment Categories for MBL Products

### Onboarding Experiments
- First value moment: how fast can a new user get their first value?
- Activation email timing: when to send the first nudge?
- Empty state design: what do users see before they have data?

### Retention Experiments
- Notification timing and content: when and what drives return?
- Feature discovery: how do users find features they'd love?
- Habit formation: what creates a daily or weekly usage pattern?

### AI Quality Experiments
- Prompt variation: does prompt A produce better summaries than prompt B?
- Temperature tuning: is output more reliable at lower temperature?
- Output format: do users act more on structured (bullets) vs. narrative output?
- HITL threshold: at what confidence level should the agent ask for human review?

## Output Format

```markdown
# Experiment Program — <Product/Area>
**Date:** <date> | **Owner:** Dr. John Lewis
**Focus area:** Onboarding / Retention / Activation / AI quality

---

## Experiment Backlog (Prioritized)

| # | Hypothesis | Primary metric | Method | Effort | Expected impact | Priority |
|---|-----------|--------------|--------|--------|----------------|---------|
| 1 | [Hypothesis] | [Metric] | A/B | Low | +15% | P1 |
| 2 | [Hypothesis] | [Metric] | Before-After | Medium | +20% | P1 |
| 3 | [Hypothesis] | [Metric] | A/B | Low | +8% | P2 |

---

## Experiment Detail — [Experiment #1]

**Hypothesis:**
"We believe that [change] will result in [metric improvement] because [reason]."

**Method:** A/B test (50/50 split via feature flag)

**Control:** <current state>
**Variant:** <proposed change>

**Metrics:**
- Primary: [metric] — success if ≥ [N]% improvement
- Guardrails: [metric A] must not drop >5%; [metric B] must stay stable

**Duration:** <N> days (to reach N=<sample size> per variant)
**Start:** <date> | **End:** <date>

**Implementation:** <2-3 sentences — what engineering change is needed>

---

## Running Experiments

| Experiment | Status | Start | End | Result | Decision |
|-----------|--------|-------|-----|--------|---------|
| [Exp 1] | Running | <date> | <date> | — | — |
| [Exp 2] | Completed | | | +18% (p=0.03) | Shipped |
| [Exp 3] | Completed | | | -2% (n.s.) | No change |

---

## AI Quality Experiments (specific to agent outputs)

**Prompt experiment:**

Control prompt section:
```
Summarize the key decisions and action items from this meeting.
```

Variant prompt section:
```
From this meeting, extract:
1. Decisions made (what was agreed upon)
2. Action items (specific tasks, with person responsible if mentioned)
3. Questions left open

Be specific. If no decisions were made, say "No decisions recorded."
```

**Quality rating:** Human evaluates 50 outputs (25 control, 25 variant) on 1-5 scale
**Blind evaluation:** Evaluator doesn't know which is control vs. variant
**Success:** Variant rated ≥ 0.5 points higher on average

---

## Experiment Learnings Log

| Experiment | Result | What we learned | Applied to |
|-----------|--------|----------------|-----------|
| [Exp 1] | +18% action item creation | Bullet format drives 18% more action | Default format changed |
| [Exp 2] | No effect | Notification timing doesn't matter for this segment | — |
| [Exp 3] | Negative | Simplified UI reduced power user performance | Reverted |
```

## Output Contract
- Experiment hypothesis always in if-then format — vague hypotheses produce uninterpretable results
- AI prompt experiments always use blind human evaluation — self-assessment of AI output is biased
- Guardrail metrics always defined — winning the primary metric at the cost of another is not winning
- Learnings log always maintained — the value of experiments compounds when learnings accumulate
- HITL required: Dr. Lewis approves experiment designs; AI quality experiments require Dr. Lewis evaluation; significant product changes from experiments require Dr. Lewis approval before shipping

## System Dependencies
- **Reads from:** Feature flag platform, product analytics, Claude API (for AI quality experiments)
- **Writes to:** Experiment design and results (SharePoint/Product); learnings log
- **HITL Required:** Dr. Lewis approves designs; evaluates AI quality experiments; approves shipping

## Test Cases
1. **Golden path:** Design 3 Meeting Intelligence onboarding experiments → Exp 1: Structured vs. narrative summary format (A/B, primary: action item creation, n=200/variant, 14 days); Exp 2: Prompt structure variation (AI quality, blind evaluation, n=50); Exp 3: First summary timing (A/B, primary: D7 return rate); prioritized by expected impact and implementation effort
2. **Edge case:** AI quality experiment — how do you evaluate "better" when there's no ground truth? → define quality dimensions before evaluating: completeness (all decisions captured), accuracy (no hallucinated items), clarity (actionable language), brevity (not more than needed); score each dimension 1-5; blind evaluation prevents bias
3. **Adversarial:** Team runs experiments but never documents learnings → experiments without documented learnings are one-time events; the compound value comes from building a knowledge base of what works for your specific users; institute a "5-minute learning doc" as a ship requirement for every experiment

## Audit Log
Experiment designs retained. Results documented. Learnings log maintained. AI quality evaluation results retained.

## Deprecation
Retire when product team has a dedicated experimentation platform with automated learning capture and experiment knowledge base.
