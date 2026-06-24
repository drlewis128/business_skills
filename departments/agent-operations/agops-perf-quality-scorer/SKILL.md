---
name: agops-perf-quality-scorer
description: "Score the quality of agent outputs for MBL Partners and portfolio entities. Use when you need to evaluate agent output quality across accuracy, completeness, format compliance, HITL feedback, and stakeholder satisfaction, calculate a 1-5 quality score per dimension, track quality trends over time, identify low-quality output root causes such as bad prompts or missing context or wrong model or skill gaps, hold outputs with score below 3 for Dr. Lewis review before delivery, perform quality audits on a skill after changes, generate quality scorecards for weekly or monthly ops reviews, capture Matt Mathison satisfaction ratings on delivered outputs, flag quality regressions in a skill after model changes, evaluate format compliance for Monday.com or email or Outlook destinations, score pre-meeting prep sheet completeness, assess meeting summary accuracy against transcript, review entity CEO satisfaction scores, build a quality trend baseline for a new skill, or produce quality improvement recommendations."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[output-id|skill-name|all] [action: score|trend|rca|scorecard] [period: today|7d|30d|custom]"
---

# Agent Performance Quality Scorer

Score, track, and improve the quality of every agent output produced by MBL Partners' AI operations program — across five dimensions, with a hard hold gate for low-quality outputs and a root-cause framework that connects quality gaps to specific fixable causes. This skill ensures that the outputs Matt Mathison and portfolio leadership depend on are consistently accurate, complete, and correctly formatted, and that quality trends are visible before they become credibility problems.

## When to Use

- An agent output is ready for delivery and must pass the quality gate (composite score ≥ 3 across all dimensions) before it is released to its destination — any dimension scoring below 3 triggers a Dr. Lewis review hold.
- Matt Mathison or a portfolio entity CEO has provided feedback (explicit rating or qualitative comment) on a delivered output, and that feedback must be captured, scored, and incorporated into the skill's quality trend record.
- A skill has been modified — model changed, prompt updated, context source altered — and a quality validation run is required to confirm the change did not introduce a regression before the skill returns to production scheduling.
- The monthly quality scorecard is due and all active skills must be ranked by composite quality score, with low performers flagged for root cause analysis and improvement action.

## Agent Performance Quality Scorer Framework

```
QUALITY SCORING FRAMEWORK — MBL PARTNERS AGENT OPERATIONS

═══════════════════════════════════════════════════════════
SECTION 1: QUALITY DIMENSIONS AND SCORING RUBRIC
═══════════════════════════════════════════════════════════
  FIVE QUALITY DIMENSIONS (each scored 1–5)

  DIMENSION 1: ACCURACY
    Definition: Output facts, figures, attributions, and entity references
                are correct and consistent with source data
    5 — All claims verifiable; no factual errors; entity context correct
    4 — Minor imprecision (rounding, phrasing); no material errors
    3 — One correctable factual error; does not mislead decision-making
    2 — Multiple errors or one material error affecting decisions
    1 — Systematically inaccurate; output requires full rework

    SCORING INPUTS: Source document comparison, Dr. Lewis spot check,
                    HITL reviewer markup, stakeholder correction feedback

  DIMENSION 2: COMPLETENESS
    Definition: Output covers all required elements defined in the skill spec;
                no required section, data point, or action item is omitted
    5 — All required elements present; no gaps
    4 — Minor omission of non-critical optional element
    3 — One required element missing but output is still actionable
    2 — Multiple required elements missing; output is partially actionable
    1 — Critical sections absent; output cannot be used as intended

    SCORING INPUTS: Skill output template checklist, required fields audit,
                    downstream consumer feedback (Monday.com, Matt Mathison)

  DIMENSION 3: FORMAT COMPLIANCE
    Definition: Output matches the required format for its destination
                (Markdown structure, JSON schema, email layout, deck structure)
    5 — Perfect format match; destination system accepts without modification
    4 — Minor formatting deviation; correctable in < 2 minutes
    3 — Format deviation requiring manual fix before delivery
    2 — Significant format failure; output requires rework for destination
    1 — Completely wrong format; output cannot be delivered without full rewrite

    SCORING INPUTS: Destination system acceptance (Monday.com parse success,
                    email delivery confirmation), template diff comparison

  DIMENSION 4: HITL FEEDBACK
    Definition: Quality rating assigned by Dr. Lewis or designated HITL reviewer
                based on pre-delivery review of the output
    5 — Approved without changes; Dr. Lewis rates excellent
    4 — Approved with minor edits (< 5 minutes of corrections)
    3 — Approved after moderate edits (5–15 minutes of corrections)
    2 — Held; sent back to skill for revision; Dr. Lewis rates below standard
    1 — Rejected; root cause investigation required before re-run

    SCORING INPUTS: Dr. Lewis HITL review log, edit time tracking,
                    revision request records

  DIMENSION 5: STAKEHOLDER SATISFACTION
    Definition: Satisfaction rating from the primary output consumer
                (Matt Mathison, entity CEO, portfolio ops team)
    5 — Explicitly rated excellent or no feedback (baseline met)
    4 — Positive feedback with minor suggestion
    3 — Neutral; output was used but stakeholder noted improvement areas
    2 — Negative feedback; stakeholder requested changes to future outputs
    1 — Output unusable or actively rejected by stakeholder

    SCORING INPUTS: Matt Mathison explicit ratings, entity CEO feedback,
                    correction requests, follow-up queries indicating gaps

═══════════════════════════════════════════════════════════
SECTION 2: COMPOSITE SCORE AND HOLD GATE
═══════════════════════════════════════════════════════════
  COMPOSITE SCORE CALCULATION
    composite = (accuracy + completeness + format + hitl + stakeholder) / 5

    DIMENSION WEIGHTING (equal weight; Dr. Lewis may adjust per skill class)
    All dimensions: 20% each (default)
    Executive outputs: Accuracy 30%, HITL 25%, Completeness 20%,
                       Stakeholder 15%, Format 10%

  HOLD GATE RULE (mandatory; no exceptions without Dr. Lewis explicit override)
    IF any single dimension score < 3:
      → Output is HELD — not delivered to destination
      → Dr. Lewis notified immediately with scored output + dimension breakdown
      → Root cause analysis initiated (Section 3)
      → Output may only be released by Dr. Lewis explicit approval
      → Re-run or manual correction documented in quality log

    IF composite score < 3.0 (all dimensions ≥ 3 but composite low):
      → Output is FLAGGED — delivered with advisory note to Dr. Lewis
      → Quality trend for skill is marked WATCH
      → Root cause initiated on next scheduled review

    IF composite score ≥ 3.0 and no dimension < 3:
      → Output PASSES quality gate
      → Delivered to destination per normal workflow
      → Score recorded in quality trend log

═══════════════════════════════════════════════════════════
SECTION 3: ROOT CAUSE ANALYSIS — LOW QUALITY OUTPUTS
═══════════════════════════════════════════════════════════
  RCA DECISION TREE BY FAILING DIMENSION

  ACCURACY FAILURE (score < 3)
    → Check 1: Was source data current? (stale context = accuracy risk)
    → Check 2: Was the correct entity context injected? (cross-entity confusion)
    → Check 3: Is the model hallucinating? (Haiku on complex reasoning tasks)
    → Check 4: Is the system prompt ambiguous on fact-sourcing rules?
    Root causes: Wrong model for task | Stale/missing context | Ambiguous prompt

  COMPLETENESS FAILURE (score < 3)
    → Check 1: Does the prompt enumerate all required output sections?
    → Check 2: Was context truncated due to context window limits?
    → Check 3: Did a required data source fail to inject (API error)?
    → Check 4: Is max_tokens set too low, cutting off the response?
    Root causes: Incomplete prompt spec | Context truncation | Low max_tokens

  FORMAT COMPLIANCE FAILURE (score < 3)
    → Check 1: Does the prompt include the exact output template?
    → Check 2: Has the destination system schema changed?
    → Check 3: Is the model generating valid JSON/Markdown consistently?
    → Check 4: Is post-processing stripping required formatting characters?
    Root causes: Missing output template | Schema drift | Post-processing error

  HITL FEEDBACK FAILURE (score < 3)
    → Check 1: What specific edits did Dr. Lewis make? (categorize edit types)
    → Check 2: Are edits concentrated in one section? (prompt gap)
    → Check 3: Are edits recurring across runs? (systemic vs. one-time)
    → Check 4: Does the skill need a quality review with Dr. Lewis?
    Root causes: Prompt gap | Missing context | Skill spec misalignment

  STAKEHOLDER SATISFACTION FAILURE (score < 3)
    → Check 1: What specifically did Matt Mathison or CEO flag?
    → Check 2: Is the output format right for the audience level?
    → Check 3: Does the output answer the decision the stakeholder needed?
    → Check 4: Is the BLUF (bottom line up front) principle being applied?
    Root causes: Audience mismatch | Wrong frame | Missing BLUF

═══════════════════════════════════════════════════════════
SECTION 4: QUALITY TREND TRACKING
═══════════════════════════════════════════════════════════
  TREND METRICS (tracked per skill, per entity, per workflow class)
    - Rolling 30-day average composite score
    - Dimension-level average scores (identify chronic weak dimensions)
    - Hold gate activation rate (% of outputs held per 30 days)
    - RCA resolution rate (% of holds with documented root cause + fix)
    - Improvement trend (composite score improving / stable / degrading)

  TREND STATUS CLASSIFICATION
    EXCELLENT:   Composite ≥ 4.0, no holds in 30 days
    GOOD:        Composite 3.5–3.9, hold rate < 5%
    WATCH:       Composite 3.0–3.4, or hold rate 5–10%
    AT RISK:     Composite < 3.0, or hold rate > 10%
    CRITICAL:    Any recurring dimension score < 2 → immediate Dr. Lewis review

  QUALITY SCORECARD CADENCE
    - Per output: scored at delivery (or hold)
    - Weekly: Dr. Lewis reviews skills in WATCH or AT RISK status
    - Monthly: Full skill quality scorecard with trend narratives
    - Quarterly: Quality trend included in Matt Mathison ROI briefing

═══════════════════════════════════════════════════════════
SECTION 5: QUALITY IMPROVEMENT WORKFLOW
═══════════════════════════════════════════════════════════
  IMPROVEMENT TRIGGER: Skill in WATCH or AT RISK status

  STEP 1: Root cause identified (Section 3 RCA)
  STEP 2: Improvement hypothesis documented (specific prompt / context / model fix)
  STEP 3: Fix implemented in staging version of skill
  STEP 4: Validation run (minimum 3 runs; all must pass quality gate)
  STEP 5: Dr. Lewis reviews validation outputs and approves promotion
  STEP 6: Fixed skill promoted to production; prior version archived
  STEP 7: Quality trend monitored for 14 days post-fix to confirm improvement
  STEP 8: Improvement documented in skill changelog
```

## Output Format

```markdown
## Agent Quality Score — [Skill/Output ID] | [Date]

**Generated:** [timestamp]  **Reviewed by:** Dr. John Lewis

### Quality Gate Result: [PASS ✓ | HOLD ⛔ | FLAG ⚠]

### Dimension Scores
| Dimension | Score (1–5) | Basis | Status |
|-----------|------------|-------|--------|
| Accuracy | X/5 | [scoring basis] | ✓ / ⚠ / ⛔ |
| Completeness | X/5 | [scoring basis] | ✓ / ⚠ / ⛔ |
| Format Compliance | X/5 | [scoring basis] | ✓ / ⚠ / ⛔ |
| HITL Feedback | X/5 | [scoring basis] | ✓ / ⚠ / ⛔ |
| Stakeholder Satisfaction | X/5 | [basis or pending] | ✓ / ⚠ / ⛔ |
| **Composite** | **X.X/5** | | |

### Hold Gate Action (if triggered)
- Dimension(s) failing: [list]
- Output status: HELD — awaiting Dr. Lewis review
- Root cause hypothesis: [initial diagnosis]
- Recommended action: [specific fix]

### Quality Trend (30-day)
- Rolling composite: X.X | Trend: [Improving / Stable / Degrading]
- Hold rate: X% | Status: [EXCELLENT / GOOD / WATCH / AT RISK / CRITICAL]
- Chronic weak dimension (if any): [dimension name — X.X avg]

### Root Cause Analysis (if hold triggered)
**Failing dimension:** [dimension]
**Root cause:** [specific diagnosis from RCA tree]
**Evidence:** [what was observed]
**Fix:** [specific action — prompt change / context fix / model change / spec update]
**Owner:** Dr. John Lewis  **Target resolution:** [date]

### Improvement Actions
1. [Specific action with owner and expected quality impact]
```

## Output Contract

- **The hold gate is an absolute control — no output with any dimension score below 3 is delivered to its destination without Dr. Lewis's explicit written approval in the HITL review log, and the approval must document the specific reason the output is being released despite the quality deficiency.** This rule exists because low-quality outputs delivered to Matt Mathison or portfolio entity leadership erode trust in the AI operations program faster than any technical failure, and a single bad prep sheet or inaccurate meeting summary can set back adoption by months. The hold gate is the last line of defense; it must never be bypassed by an automated workflow.

- **Every quality score is grounded in observable, auditable evidence — a specific factual error, a missing required section, a format diff, Dr. Lewis's edit log, or a stakeholder's explicit feedback — and scores without evidence are not accepted into the quality trend record.** Subjective impression-based scoring introduces noise into the trend data and makes quality improvement impossible to engineer; only scored evidence produces actionable root causes. When a dimension cannot be scored due to missing feedback (e.g., stakeholder satisfaction is pending), it is recorded as "pending" and the composite is recalculated when the feedback arrives.

- **Quality trend data is the primary leading indicator for the MBL AI operations program's health, and it feeds directly into the quarterly ROI briefing Matt Mathison receives — skills in AT RISK status are reported by name with their root cause and remediation plan, not obscured in aggregate averages.** Transparency about quality problems is a THRIVE value (Truth); a program that only reports successes to the managing partner is not operating with integrity. Dr. Lewis owns the quality narrative and presents both the good and the challenges, with a clear improvement roadmap for every skill below the GOOD threshold.

## System Dependencies

**Reads from:**
- Agent output records (the actual delivered or held output, per run)
- Skill output template specifications (for completeness and format audit)
- Dr. Lewis HITL review log (dimension 4 scores and edit records)
- Matt Mathison and entity CEO feedback channels (dimension 5 scores)
- agops-cost-tracker and agops-perf-latency-monitor (correlated performance data)
- agops-cost-optimizer (model right-sizing context for accuracy RCA)

**Writes to:**
- Quality score log (per-output record, append-only)
- Quality trend store (rolling 30-day metrics per skill)
- Hold log (held outputs with Dr. Lewis disposition)
- RCA log (root cause analyses with fix status)
- Monthly quality scorecard (staged for Dr. Lewis review)
- Quarterly ROI briefing quality section (fed to agops-cost-budget-manager)

**HITL Required:**
- All hold gate notifications (Dr. Lewis — immediate)
- All hold gate release decisions (Dr. Lewis explicit approval required)
- All quality improvement validations before skill is promoted to production (Dr. Lewis)
- Monthly quality scorecard before distribution (Dr. Lewis)
- Any quality dimension weight adjustment for a skill class (Dr. Lewis)

## Test Cases

**Golden Path:** Pre-meeting prep sheet for a Matt Mathison meeting completes generation. Quality scorer runs the five-dimension audit: accuracy check against the CRM and calendar data (5/5 — all attendee details correct), completeness check against the template (5/5 — all sections present), format compliance check (4/5 — one heading level off, correctable in 1 minute), HITL review by Dr. Lewis (4/5 — minor phrasing edit), stakeholder satisfaction pending. Composite: 4.5/5 (with pending dimension excluded). Gate: PASS. Output delivered. Matt Mathison rates it excellent next day; dimension 5 updated to 5/5; final composite: 4.6/5. Score logged to trend record.

**Edge Case:** Meeting summary for an Allevio entity run arrives with a HIPAA-adjacent reference — the summary mentions a specific patient population count from a document that should not have been in the context. Accuracy scores 5/5 (the number is factually correct), but the HITL reviewer (Dr. Lewis) scores dimension 4 at 1/5 — the output contains PHI-adjacent content that must never be delivered. Hold gate fires on dimension 4. Output is held, the PHI-adjacent reference is removed, the context injection pipeline is audited, and the RCA documents a context source boundary failure. The fixed output is re-scored after Dr. Lewis review before delivery.

**Adversarial:** A bad actor (or misconfigured automation) attempts to mark a held output as "PASS" in the quality log without Dr. Lewis HITL approval by submitting a forged disposition record. Quality scorer detects the missing HITL approval signature in the hold log, rejects the forged record, re-flags the output as HELD, alerts Dr. Lewis to the unauthorized release attempt, and logs the incident in the audit trail. No output is delivered until Dr. Lewis provides authentic approval through the HITL channel.

## Audit Log

Every quality scoring event — dimension score recorded, composite calculated, hold gate triggered, HITL approval granted or denied, RCA opened, improvement fix validated, skill promoted to production — is written to an append-only audit log with the run ID, skill name, entity, all five dimension scores, composite, gate result, Dr. Lewis review disposition, and timestamps. The audit log is the ground truth for the MBL AI operations program's quality history and is available for review in monthly ops briefings, quarterly ROI packages, and any internal audit of agent output reliability. Records are retained for 36 months.

## Deprecation

This skill is deprecated when the MBL AI operations platform natively scores agent outputs against the five dimensions defined here, enforces the hold gate without manual skill invocation, captures HITL and stakeholder satisfaction feedback in a structured store, and produces quality trend reports at the same cadence and fidelity as defined in this skill. Before deprecation, Dr. Lewis must confirm that the platform-level quality system enforces the hold gate with equal rigor, that historical quality records are migrated, and that the Matt Mathison reporting format is preserved. A 60-day parallel-run period is required to validate equivalence.
