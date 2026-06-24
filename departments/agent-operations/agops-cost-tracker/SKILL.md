---
name: agops-cost-tracker
description: "Track Claude API and agent infrastructure costs for MBL Partners and portfolio entities. Use when you need to calculate cost per agent run, track token usage by entity, detect cost anomalies, report prompt caching savings, optimize model selection, produce quarterly AI ROI cost summaries for Matt Mathison, audit monthly agent spend, flag overruns against Dr. Lewis budget, generate per-entity cost breakdowns, monitor API invoice accuracy, compare actual vs. projected token burn, calculate cost-per-output-unit, review Anthropic billing statements, attribute costs to portfolio company, identify most expensive workflows, track haiku vs. sonnet vs. opus spend ratios, benchmark costs month-over-month, generate cost ledger for finance ops, calculate marginal cost of new skill deployment, or produce agent cost transparency reports."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[entity|all] [period: YYYY-MM|YTD|custom] [report-type: summary|anomaly|roi]"
---

# Agent Cost Tracker

Track Claude API and agent infrastructure costs across MBL Partners and all portfolio entities with full attribution, anomaly detection, and quarterly ROI reporting. This skill provides the financial transparency layer Dr. John Lewis needs to manage AI spend responsibly and give Matt Mathison actionable investment performance data.

## When to Use

- A monthly or quarterly cost report is due and token usage must be broken down by entity (MBL HoldCo, Allevio, HIVE, Column6) for budget reconciliation or Matt Mathison's AI investment ROI briefing.
- A single agent run costs more than 2× its baseline expectation, triggering an anomaly alert that Dr. Lewis must investigate before the next run is authorized.
- Prompt caching savings need to be quantified to justify continued investment in static system-prompt architecture or to report efficiency gains to Matt Mathison.
- Model selection decisions require cost validation — confirming that Haiku, Sonnet, and Opus are being used at the right tier for each workflow class.

## Agent Cost Tracker Framework

```
COST TRACKING FRAMEWORK — MBL PARTNERS AGENT OPERATIONS

═══════════════════════════════════════════════════════════
SECTION 1: COST INPUTS
═══════════════════════════════════════════════════════════
  SOURCE DATA
    - Anthropic API usage logs (tokens in / tokens out per call)
    - Model used per run: claude-haiku-4-5 | claude-sonnet-4-6 | claude-opus-4-8
    - Cache hit/miss flags (prompt caching = 10% of input token price)
    - Krista.ai orchestration overhead (if metered separately)
    - Run timestamps, entity tag, skill name, workflow ID

  PRICING REFERENCE (validate against current Anthropic pricing)
    - Haiku:   Input $X/MTok  | Output $X/MTok  | Cache read $X/MTok
    - Sonnet:  Input $X/MTok  | Output $X/MTok  | Cache read $X/MTok
    - Opus:    Input $X/MTok  | Output $X/MTok  | Cache read $X/MTok

═══════════════════════════════════════════════════════════
SECTION 2: COST CALCULATION PER RUN
═══════════════════════════════════════════════════════════
  cost_per_run = (input_tokens_uncached × input_price)
               + (input_tokens_cached   × cache_read_price)
               + (output_tokens          × output_price)

  cache_savings_per_run = input_tokens_cached × (input_price - cache_read_price)

  ENTITY ATTRIBUTION
    - Tag every run: entity=[MBL|Allevio|HIVE|Column6|Shared]
    - Shared infra costs allocated by run-count ratio

═══════════════════════════════════════════════════════════
SECTION 3: ANOMALY DETECTION
═══════════════════════════════════════════════════════════
  BASELINE ESTABLISHMENT
    - Rolling 30-day average cost per run, per skill, per entity
    - Baseline recalculated weekly

  ANOMALY TRIGGERS (any = alert Dr. Lewis immediately)
    - Single run cost > 2× rolling baseline
    - Monthly entity spend > 110% of budget allocation
    - Output token count > 3× expected for skill class
    - Cache miss rate > 20% on cached-eligible skills

  RESPONSE PROTOCOL
    1. Pause additional runs of flagged skill (if automated)
    2. Generate anomaly report (see Output Format)
    3. Dr. Lewis reviews root cause within 1 business day
    4. Resume or budget-adjust with documented rationale

═══════════════════════════════════════════════════════════
SECTION 4: ENTITY COST LEDGER
═══════════════════════════════════════════════════════════
  MONTHLY LEDGER STRUCTURE
    Entity          | Skills Run | Total Tokens | Cache Savings | Net Cost | Budget Remaining
    MBL HoldCo     |            |              |               |          |
    Allevio         |            |              |               |          |
    HIVE Partners   |            |              |               |          |
    Column6         |            |              |               |          |
    Shared Infra    |            |              |               |          |
    TOTAL           |            |              |               |          |

═══════════════════════════════════════════════════════════
SECTION 5: QUARTERLY ROI COST SUMMARY (MATT MATHISON)
═══════════════════════════════════════════════════════════
  PACKAGE CONTENTS
    - Total AI API spend (quarter vs. prior quarter)
    - Cost per workflow class (meeting intel, prep sheets, alerts, analysis)
    - Prompt caching savings (dollar amount saved vs. uncached baseline)
    - Model mix efficiency (% of runs on right-sized model)
    - Cost per output unit (e.g., cost per meeting summary delivered)
    - Anomalies detected and resolved (count + resolution summary)
    - Forward budget recommendation

  DELIVERY: HITL required — Dr. Lewis reviews before sending to Matt Mathison
```

## Output Format

```markdown
## Agent Cost Report — [Entity] | [Period]

**Generated:** [timestamp]  **Prepared by:** agops-cost-tracker  **Reviewed by:** Dr. John Lewis

### Cost Summary
| Metric | Value | vs. Prior Period |
|--------|-------|-----------------|
| Total API Spend | $X.XX | ▲/▼ X% |
| Prompt Cache Savings | $X.XX | ▲/▼ X% |
| Net Effective Cost | $X.XX | ▲/▼ X% |
| Runs Executed | N | ▲/▼ X% |
| Cost per Run (avg) | $X.XX | ▲/▼ X% |

### Model Mix
| Model | Runs | % of Total | Spend |
|-------|------|-----------|-------|
| Haiku | N | X% | $X.XX |
| Sonnet | N | X% | $X.XX |
| Opus | N | X% | $X.XX |

### Anomalies This Period
[None detected | List with run ID, skill, cost, baseline, disposition]

### Cache Performance
- Cache-eligible runs: N (X%)
- Cache hit rate: X%
- Savings realized: $X.XX

### Budget Status
- Allocated: $X.XX | Spent: $X.XX | Remaining: $X.XX (X%)

### Recommended Actions
1. [Action with rationale]
```

## Output Contract

- **Every cost figure is traceable to a specific API call log entry with run ID, entity tag, skill name, model, token counts, and cache status.** Aggregate numbers without underlying audit trails are not acceptable — Dr. Lewis must be able to drill from any summary line to the raw call data to satisfy both internal controls requirements and Anthropic billing reconciliation. No estimates or approximations are presented without a confidence interval and source note.

- **Anomaly reports are generated the same business day the threshold is crossed, include root cause hypothesis, and are held for Dr. Lewis review before any automated downstream action is taken.** The 2× cost threshold exists because a runaway prompt loop or missing cache configuration can multiply costs exponentially within a single billing period — early detection with mandatory human review is the control that prevents budget overruns from compounding. Dr. Lewis documents his disposition (resolved, budget-adjusted, skill paused) in the anomaly log.

- **Quarterly ROI cost summaries delivered to Matt Mathison present cost in value terms — cost per meeting summary delivered, cost per alert resolved, cost per prep sheet generated — not raw token counts.** Matt Mathison needs investment framing, not infrastructure metrics; translating token spend into output-unit economics makes the AI investment legible to a managing partner audience and supports the broader MBL AI ROI narrative. All summaries pass through Dr. Lewis's HITL gate before delivery.

## System Dependencies

**Reads from:**
- Anthropic API usage dashboard / billing export (CSV or API)
- Krista.ai run logs (workflow ID, entity tag, skill name, timestamps)
- Dr. Lewis monthly budget allocation file (entity-level budget targets)
- Rolling baseline cost file (updated weekly by this skill)

**Writes to:**
- Entity cost ledger (append per run; monthly rollup)
- Anomaly log (incident record with disposition)
- Quarterly ROI cost package (staged for Dr. Lewis HITL review)
- agops-cost-budget-manager budget status feed

**HITL Required:**
- All anomaly reports before downstream action is taken (Dr. Lewis)
- All quarterly cost summaries before delivery to Matt Mathison (Dr. Lewis)
- Any budget adjustment recommendations exceeding 20% of allocation (Dr. Lewis + Matt Mathison aware)

## Test Cases

**Golden Path:** Monthly cost run for MBL HoldCo — 47 skill executions across meeting intel and prep sheet workflows, 82% cache hit rate, total spend $18.40, savings vs. uncached $61.20, no anomalies. Report generates correctly with all model mix rows populated, budget status shows 73% remaining, and output is staged for Dr. Lewis review.

**Edge Case:** Allevio entity tag is missing from 6 of 12 runs due to a Krista.ai tagging misconfiguration. Skill detects untagged runs, quarantines them into "Unattributed" bucket, flags the attribution gap in the report header, and alerts Dr. Lewis to resolve the tag config before the runs are allocated. No PHI is accessed or logged; the gap is a metadata issue only.

**Adversarial:** A prompt injection in a meeting transcript causes an agent to emit 180,000 output tokens in a single run — 40× the Sonnet baseline for meeting summaries. The 2× anomaly threshold fires immediately. The skill pauses the workflow, generates an anomaly report with the run ID and token count, and queues it for Dr. Lewis review. No further runs of that skill execute until Dr. Lewis clears the hold.

## Audit Log

Every cost tracking action — data ingestion, calculation, anomaly detection, report generation, HITL submission — is written to an immutable append-only audit log with ISO 8601 timestamps, the identity of the initiating workflow, and the Dr. Lewis review disposition for any HITL event. The audit log is retained for a minimum of 24 months to support financial controls review, Anthropic billing dispute resolution, and MBL internal audit requests. Log entries are never edited; corrections are appended as new entries referencing the original record.

## Deprecation

This skill is deprecated when MBL adopts a dedicated AI cost management platform (e.g., a native Anthropic cost dashboard with entity-level attribution) that natively produces all ledger, anomaly, and ROI outputs defined here. Before deprecation, Dr. Lewis must confirm that the replacement system meets the same attribution granularity, anomaly detection thresholds, HITL gate requirements, and Matt Mathison reporting format defined in this skill. A 30-day parallel-run period is required before the legacy skill is retired.
