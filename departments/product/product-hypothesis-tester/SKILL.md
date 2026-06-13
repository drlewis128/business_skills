---
name: product-hypothesis-tester
description: "Design and evaluate product experiments and hypothesis tests. Use when the user says 'test this hypothesis', 'product experiment', 'A/B test design', 'validate this assumption', 'experiment plan', 'how do we test this idea', 'test before building', 'hypothesis validation', or 'experiment design'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--hypothesis <statement>] [--method <ab-test|interview|survey|wizard-of-oz>] [--mode <design|run|analyze>]"
---

# Product Hypothesis Tester

Design and evaluate product experiments for MBL products. Hypotheses are educated guesses — experiments are how you replace guesses with evidence. The most valuable experiments are fast, cheap, and designed to fail quickly if the assumption is wrong. For AI/agent products, hypotheses often concern whether the AI output quality is good enough, not just whether users want the feature.

## When to Use
- Before committing significant engineering to a feature — test the core assumption first
- A feature launched but metrics aren't moving — what's the actual problem?
- Evaluating two design or implementation approaches
- Agent quality question: is Claude's output quality good enough for the use case?
- Pricing test: what's the right price point for a new tier?

## Hypothesis Structure

```
Hypothesis format:
"We believe that [change/action] will result in [measurable outcome]
because [underlying assumption]."

Good hypothesis:
"We believe that adding action item assignees in the meeting summary
will result in a 30% increase in action item completion rate
because users need clear ownership to follow through."

Bad hypothesis:
"We believe that improving the UX will result in more engagement."
(No specific change; no specific outcome; no testable assumption)
```

## Experiment Design Checklist

```
Before running:
  [ ] Hypothesis is specific (who, what change, what outcome, why)
  [ ] Success criteria defined BEFORE running (not after seeing results)
  [ ] Sample size adequate for statistical significance (if A/B test)
  [ ] Duration set (don't run until you see what you want to see)
  [ ] Confounds identified and controlled (no other changes during the test)
  [ ] Measurement instrumentation is live and verified

During:
  [ ] Do not peek at results and stop early if it looks good (p-hacking)
  [ ] Monitor for unexpected side effects (guardrail metrics)

After:
  [ ] Analyze against pre-defined success criteria
  [ ] Document results and decision — even if inconclusive
  [ ] Update beliefs: what did we learn beyond win/lose?
```

## Minimum Sample Size Reference

```
For A/B tests:
  If current conversion rate: 10%
  Expected improvement: 20% relative (to 12%)
  Required sample: ~3,800 per variant (95% confidence, 80% power)

Rule of thumb: need ~100 conversions per variant minimum for reliable results
If traffic is low: use qualitative methods instead (interviews, usability tests)

Sample size calculators: Evan Miller's calculator; Statsig; Optimizely
```

## Output Format

```markdown
# Experiment Design — <Hypothesis Name>
**Date:** <date> | **Designer:** Dr. John Lewis
**Product:** <name> | **Feature:** <feature>

---

## Hypothesis

"We believe that **[specific change]** will result in **[measurable outcome]**
because **[underlying assumption]**."

**What we're testing:** <the specific variable being changed>
**What we're NOT testing:** <things held constant>

---

## Experiment Design

**Method:** A/B test / Usability test / User interview / Survey / Wizard of Oz

### If A/B test:
| Parameter | Value |
|-----------|-------|
| Control | <current behavior> |
| Variant | <new behavior being tested> |
| Primary metric | <what moves if the hypothesis is true> |
| Guardrail metrics | <what must not regress> |
| Sample size needed | <N> per variant |
| Estimated duration | <N> days at current traffic |
| Rollout | 50/50 split via feature flag |

### Success Criteria (defined before running)

**Hypothesis is CONFIRMED if:**
- Primary metric improves by ≥ <N>% with statistical significance (p < 0.05)
- No guardrail metric regresses by more than 5%

**Hypothesis is REJECTED if:**
- Primary metric does not improve by ≥ <N>% after <N> days with adequate sample size

**Inconclusive if:**
- Sample size not reached; insufficient power; confound detected

---

## Timeline

| Milestone | Date |
|-----------|------|
| Instrumentation verified | <date> |
| Experiment starts | <date> |
| Mid-point check (do not analyze primary metric) | <date> |
| Experiment ends | <date> |
| Results analyzed | <date> |
| Decision made | <date> |

---

## Results

**Experiment ran:** <start> → <end>
**Sample:** <N> control, <N> variant

| Metric | Control | Variant | Difference | Stat sig? |
|--------|---------|---------|-----------|---------|
| [Primary] | X% | Y% | +Z% | Yes (p=0.03) / No (p=0.14) |
| [Guardrail] | A% | A% | 0% | Stable |

**Result:** Confirmed ✅ / Rejected ❌ / Inconclusive ⚠️

---

## Decision

**Ship:** Yes / No / Iterate
**What we learned:** <belief update — not just win/loss>
**Next experiment (if any):** <what this result suggests we should test next>
```

## Output Contract
- Success criteria always defined before the experiment runs — retroactive success criteria are not science
- Guardrail metrics always monitored — a primary metric win with a guardrail regression is not a win
- "Inconclusive" always an accepted result — force-fitting a conclusion from insufficient data produces bad decisions
- Learning always documented — even a failed experiment updates beliefs
- HITL required: Dr. Lewis approves experiment design before launch; significant experiments affecting all users require Matt Mathison awareness; results analysis reviewed by Dr. Lewis before shipping

## System Dependencies
- **Reads from:** Feature flag platform (experiment split), analytics (metric data), sample size calculator
- **Writes to:** Experiment design document (SharePoint/Product); experiment results retained
- **HITL Required:** Dr. Lewis approves; shipping variants to all users requires Dr. Lewis decision; Matt Mathison informed of significant experiments

## Test Cases
1. **Golden path:** Test whether action item assignee field increases completion rate → Hypothesis: assigning names in summary will increase completion 30%; 50/50 split; 14-day run; primary metric: action items marked complete within 7 days; n=800 needed; result: +34% (p=0.02); ship; decision documented
2. **Edge case:** Traffic is too low for statistical significance within a reasonable time → switch method: qualitative — usability test with 5 users; run Wizard of Oz for 2 weeks; proxy metrics; accept higher uncertainty but move faster
3. **Adversarial:** Team sees promising early results and wants to stop the experiment → early stopping is the most common experiment error; the point at which you first peek at results is exactly when bias peaks; set a calendar reminder for the end date; do not evaluate until then; if truly urgent, extend rather than decide early

## Audit Log
Experiment designs retained. Results retained. Decisions documented. Beliefs updated.

## Deprecation
Retire when product team has a dedicated experimentation platform (Statsig, Optimizely, LaunchDarkly) with statistical guardrails and automated significance calculation.
