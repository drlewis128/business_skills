---
name: agops-cost-optimizer
description: "Optimize agent workflow costs for MBL Partners through prompt caching, model right-sizing, output length control, and smart scheduling. Use when you need to implement prompt caching on a new skill, right-size model selection for a workflow, reduce per-run token spend, schedule batch jobs in low-traffic periods, calculate cost-per-output-unit, audit a skill for caching eligibility, compare Haiku vs Sonnet vs Opus cost tradeoffs, reduce output verbosity to cut output token spend, review static system prompt cache architecture, identify wasteful token patterns, optimize context window usage, benchmark before-and-after optimization savings, plan batch vs real-time agent scheduling, calculate ROI of caching implementation, design prompt compression strategies, eliminate redundant context injection, right-size context for extraction vs analysis vs executive output, report optimization savings to Dr. Lewis, or produce agent cost efficiency scorecard."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[skill-name|workflow-id|all] [optimization-target: caching|model|output|scheduling|all]"
---

# Agent Cost Optimizer

Systematically reduce Claude API and agent infrastructure costs for MBL Partners by applying prompt caching, model right-sizing, output length discipline, and intelligent batch scheduling without sacrificing output quality. This skill translates engineering-level cost levers into measurable dollar savings that Dr. John Lewis can report as efficiency gains in the quarterly AI investment ROI briefing to Matt Mathison.

## When to Use

- A new skill is being deployed and its system prompt has not yet been evaluated for caching eligibility — static system prompts over ~1,000 tokens should be cached before the first production run to capture immediate savings.
- An existing workflow's cost-per-run has risen above target, requiring a model right-sizing audit to determine whether the task actually needs Sonnet or Opus, or whether Haiku can handle it at one-fifth the cost.
- Output token counts for a skill are consistently higher than needed — the skill is generating verbose outputs when a structured template with fixed-length fields would serve the downstream system equally well.
- Non-urgent batch workflows (weekly summaries, cost reports, trend analyses) are currently running in real-time during peak API hours and should be rescheduled to low-traffic windows to reduce latency-sensitive queue contention and enable future volume discounts.

## Agent Cost Optimizer Framework

```
COST OPTIMIZATION FRAMEWORK — MBL PARTNERS AGENT OPERATIONS

═══════════════════════════════════════════════════════════
SECTION 1: PROMPT CACHING IMPLEMENTATION
═══════════════════════════════════════════════════════════
  ELIGIBILITY CRITERIA (all must be true for caching to apply)
    - System prompt is static across runs (entity config, skill instructions)
    - System prompt token count ≥ 1,024 tokens (Anthropic minimum)
    - Skill runs ≥ 2× per day OR has same-session re-use pattern
    - Cache TTL: 5 minutes (Anthropic default); plan run frequency accordingly

  CACHING SAVINGS MODEL
    - Uncached input price: $P_in per MTok
    - Cache write price: ~1.25× $P_in (one-time per 5-min window)
    - Cache read price: ~0.10× $P_in (every subsequent hit)
    - Breakeven: cache pays off on run #2 within the TTL window
    - Savings at 90% hit rate: ~90% reduction on system prompt token cost

  IMPLEMENTATION CHECKLIST
    [ ] Identify static vs. dynamic sections of each prompt
    [ ] Move static content to top of messages[] (Anthropic caches prefix)
    [ ] Add cache_control: {type: ephemeral} at the static/dynamic boundary
    [ ] Validate cache hit rate in API response usage.cache_read_input_tokens
    [ ] Log cache_savings_per_run to agops-cost-tracker

  ENTITY SYSTEM PROMPT CACHE SEGMENTS (pre-approved static blocks)
    MBL HoldCo:  Identity, THRIVE values, M365 context, QB schema
    Allevio:     HIPAA rules, PHI prohibition, entity context (NO PHI IN CACHE)
    HIVE:        LP data rules, WTI trigger config, entity context
    Column6:     CCPA rules, gross margin floor (≥35%), entity context

═══════════════════════════════════════════════════════════
SECTION 2: MODEL RIGHT-SIZING MATRIX
═══════════════════════════════════════════════════════════
  TASK CLASS → RECOMMENDED MODEL
    Extraction / Classification / Formatting    → claude-haiku-4-5
      Examples: entity tag extraction, cost categorization, transcript chunking,
                JSON normalization, date/number parsing, field validation

    Analysis / Synthesis / Summarization        → claude-sonnet-4-6
      Examples: meeting summaries, pre-meeting prep sheets, health score analysis,
                pipeline reports, anomaly root cause, variance explanation

    Executive Output / Strategic Reasoning       → claude-opus-4-8
      Examples: Matt Mathison quarterly briefings, board-level narratives,
                investment thesis synthesis, high-stakes decision support

  RIGHT-SIZING AUDIT STEPS
    1. List current model for each skill in the registry
    2. Classify task type using matrix above
    3. Flag mismatches (Opus doing extraction; Haiku doing executive output)
    4. Run quality validation on downgraded skills before production switch
    5. Document model change with rationale in skill changelog

  COST IMPACT OF MISMATCHES
    - Opus used for extraction task: ~10-20× overspend vs. Haiku
    - Haiku used for executive output: output quality risk → rework cost
    - Right-sizing target: ≥80% of runs on cost-optimal model class

═══════════════════════════════════════════════════════════
SECTION 3: OUTPUT LENGTH MANAGEMENT
═══════════════════════════════════════════════════════════
  PRINCIPLES
    - Output tokens cost money; every unnecessary word is waste
    - Downstream systems (Monday.com, email, Krista.ai) have format constraints
    - Structured templates with fixed-length fields beat open-ended prose

  OPTIMIZATION TACTICS
    - Set max_tokens explicitly for every API call (no open-ended generation)
    - Use output templates in the prompt: "Return exactly this JSON schema"
    - Specify word/bullet limits in the prompt: "3 bullets, max 20 words each"
    - For extraction tasks: return only the extracted value, not explanation
    - Validate output length vs. target; flag overruns to skill developer

  TARGET OUTPUT BUDGETS BY SKILL CLASS
    Extraction skills:       < 200 output tokens per run
    Summary skills:          500–1,500 output tokens per run
    Analysis skills:         1,000–2,500 output tokens per run
    Executive briefings:     1,500–3,500 output tokens per run

═══════════════════════════════════════════════════════════
SECTION 4: BATCH VS. REAL-TIME SCHEDULING
═══════════════════════════════════════════════════════════
  REAL-TIME (latency-sensitive — run immediately on trigger)
    - Real-time alerts (SLA: <1 min)
    - HITL-gated outputs awaiting Matt Mathison delivery
    - Anomaly detection triggers

  BATCH (schedule in low-traffic windows — default: 2:00–5:00 AM MT)
    - Weekly meeting intelligence summaries
    - Monthly cost reports and ledger rollups
    - Quarterly ROI briefing package assembly
    - Trend analysis and benchmark comparisons
    - Skill quality scoring batch reviews

  SCHEDULING RULES
    - Batch window: 02:00–05:00 MT (low API queue contention)
    - Batch jobs must be idempotent (safe to re-run on failure)
    - Failure alert goes to Dr. Lewis within 15 min of batch window close
    - Real-time budget: ≤30% of monthly run volume
    - Batch budget: ≥70% of monthly run volume (minimize real-time burn)

═══════════════════════════════════════════════════════════
SECTION 5: COST-PER-OUTPUT-UNIT TRACKING
═══════════════════════════════════════════════════════════
  UNIT DEFINITIONS
    Workflow Class              | Output Unit
    Meeting Intelligence        | Per summary delivered
    Pre-Meeting Prep Sheets     | Per prep sheet delivered
    Cost Reports                | Per report generated
    Alerts                      | Per alert resolved
    Analysis Skills             | Per analysis delivered

  TRACKING FORMULA
    cost_per_unit = total_skill_cost_period / units_delivered_period

  OPTIMIZATION TARGET
    - Cost per unit must trend flat or down quarter-over-quarter
    - Step-change increases (>25% QoQ) require root cause analysis
    - Savings reported to Matt Mathison as efficiency narrative
```

## Output Format

```markdown
## Cost Optimization Report — [Skill/Workflow] | [Date]

**Prepared by:** agops-cost-optimizer  **Reviewed by:** Dr. John Lewis

### Optimization Opportunities Identified
| Lever | Current State | Optimized State | Est. Monthly Savings |
|-------|--------------|-----------------|---------------------|
| Prompt Caching | Not implemented | 90% cache hit rate | $X.XX |
| Model Right-Sizing | [Current model] | [Target model] | $X.XX |
| Output Length | Avg X tokens | Target Y tokens | $X.XX |
| Batch Scheduling | Real-time | Batch (02:00 MT) | $X.XX (latency budget) |
| **Total Estimated Savings** | | | **$X.XX/month** |

### Caching Implementation Plan
- Static prompt block identified: [token count]
- Cache boundary: [description]
- Expected hit rate: X% (based on run frequency: N runs/day)
- Implementation effort: [Low/Medium/High]

### Model Right-Sizing Findings
- Current model: [model] | Task class: [class]
- Recommended model: [model] | Quality risk: [Low/Medium/High]
- Validation required: [Yes/No] — [test plan if yes]

### Output Length Audit
- Current avg output: X tokens | Target: Y tokens
- Excess tokens per run: Z | Monthly excess cost: $X.XX
- Remediation: [specific prompt change]

### Batch Scheduling Candidates
- [Skill name]: currently real-time → move to 02:00 MT batch
- [Skill name]: currently real-time → move to 02:00 MT batch

### Before / After Cost Projection
- Current monthly cost: $X.XX
- Projected optimized cost: $X.XX
- Projected savings: $X.XX (X%)
- Payback period on implementation effort: [days]
```

## Output Contract

- **Every optimization recommendation includes a before/after cost projection grounded in actual token counts and current Anthropic pricing, not estimates.** Vague guidance like "use caching to save money" is not acceptable output — Dr. Lewis needs a dollar figure, a hit-rate assumption, and the specific API parameter change required so he can evaluate the implementation investment against the savings. Projections are marked with the pricing date used and refreshed when Anthropic updates its pricing.

- **Model right-sizing recommendations always include a quality validation requirement when downgrading from Opus to Sonnet or Sonnet to Haiku, and never override the executive output rule for Matt Mathison-bound deliverables.** Cost savings are only real savings if the output quality holds — a downgraded model that produces a substandard executive briefing creates rework cost and trust damage that far exceeds any token savings. The quality gate is non-negotiable; Dr. Lewis approves all model changes for production skills after reviewing validation run outputs.

- **Batch scheduling recommendations respect the HITL gate and real-time SLA constraints defined in agops-perf-latency-monitor, and never push a time-sensitive delivery into a batch window to save cost.** The optimization hierarchy is: correctness first, SLA compliance second, cost efficiency third. A prep sheet that arrives late because it was batch-queued when it should have been real-time is a cost optimization failure, not a success — Dr. Lewis treats SLA violations from scheduling errors as optimization regressions to be remediated immediately.

## System Dependencies

**Reads from:**
- agops-cost-tracker run logs (per-run token counts, model, cache status)
- Skill registry (current model assignments per skill)
- agops-perf-latency-monitor SLA definitions (real-time vs. batch classification)
- Anthropic pricing reference (maintained by Dr. Lewis; refreshed on pricing changes)

**Writes to:**
- Skill optimization backlog (prioritized list of optimization opportunities)
- Skill changelog (model change records with rationale)
- agops-cost-tracker baseline update (post-optimization new baseline)
- agops-cost-budget-manager efficiency savings ledger

**HITL Required:**
- All model right-sizing changes before production deployment (Dr. Lewis)
- Any batch scheduling change that affects Matt Mathison delivery timing (Dr. Lewis)
- Optimization reports surfaced to Matt Mathison as part of ROI narrative (Dr. Lewis)

## Test Cases

**Golden Path:** Audit of the meeting intelligence skill reveals an 8,000-token static system prompt with no caching, Opus model for a summarization task (should be Sonnet), and average output of 2,800 tokens against a 1,500-token target. Optimizer produces a caching plan, model downgrade recommendation with quality validation checklist, and an output template with token budget. Projected savings: $47/month. Dr. Lewis approves; changes are implemented and validated; new baseline is logged to agops-cost-tracker.

**Edge Case:** A skill has a system prompt that is 80% static and 20% dynamic per-run (entity name, date, context snippet). Optimizer correctly identifies only the static 80% as cacheable, sets the cache boundary at the dynamic injection point, and calculates savings based on the cacheable portion only. It does not recommend caching the dynamic section, which would break per-entity isolation and could mix context across entities.

**Adversarial:** A request comes in to batch-schedule the pre-meeting prep sheet workflow (SLA: <5 min) to save costs. Optimizer correctly refuses — the SLA is incompatible with a batch window — generates a conflict report explaining the SLA constraint, and instead recommends caching and model optimization as the cost levers for that skill. It does not suggest a batch window even if explicitly requested by a non-HITL source.

## Audit Log

Every optimization recommendation, implementation approval, model change, and batch schedule adjustment is recorded in an append-only audit log with the skill name, optimization type, before/after state, projected savings, Dr. Lewis approval timestamp, and post-implementation validation result. The log enables Dr. Lewis to trace every cost improvement back to a specific decision and verify that quality did not degrade when the optimization was applied. Entries are retained for 24 months and are available for review in the quarterly AI investment ROI package.

## Deprecation

This skill is deprecated when MBL's Krista.ai orchestration layer or a successor platform natively enforces prompt caching, model right-sizing rules, output length budgets, and batch scheduling policies at the infrastructure level without requiring a separate optimization audit skill. Before deprecation, Dr. Lewis must confirm that the platform-level enforcement covers all four optimization levers, produces the same before/after cost reporting, and maintains the HITL gate for model changes and scheduling decisions. A 60-day parallel-run period is required.
