---
name: agops-monitor-usage-tracker
description: "Track usage of skills and agents across MBL Partners. Use when: skill invocation frequency report needed, most-used skills ranking requested, least-used skills deprecation candidates identified, entity usage breakdown requested, Matt Mathison usage pattern analysis needed, agent run history review, usage trend growing or declining, quarterly usage report for Dr. Lewis, new skill added and baseline usage needed, skill usage anomaly detected, agent producing outputs nobody reads, usage data needed to justify AI investment, skill consolidation analysis requested, entity-level usage comparison needed, portfolio-wide skill utilization report, agent ROI requires usage data, HIVE or Allevio usage separated from HoldCo, Column6 CCPA agent usage review, which outputs Matt Mathison acts on, usage-based deprecation decision needed"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[weekly | quarterly | entity:<name> | skill:<skill-id> | deprecation-candidates | matt-usage]"
---

# agops-monitor-usage-tracker

Track every invocation of every skill and agent across the MBL Partners agent ecosystem, producing frequency rankings, trend analysis, and actionable deprecation signals. This skill is the operational foundation for AI investment justification — usage data ties skill deployment to real business activity and exposes which agents are earning their compute cost.

## When to Use

- Dr. Lewis needs a quarterly usage report to understand which skills are driving value, which are stagnating, and which are candidates for deprecation or consolidation before the next planning cycle.
- Usage data is needed to build the AI investment ROI case for Matt Mathison — demonstrating that specific agents are invoked regularly and that their outputs are acted upon.
- A skill has been live for 60+ days with low invocation counts, triggering a formal deprecation-candidate review per MBL's AI governance policy.
- Entity-level usage breakdown is needed to compare AI adoption across MBL HoldCo, Allevio, HIVE, and Column6, or to identify which portfolio entity is underutilizing available agents.

## agops-monitor-usage-tracker Framework

```
════════════════════════════════════════════════════════
SECTION 1 — INVOCATION DATA COLLECTION
════════════════════════════════════════════════════════
DATA SOURCES:
  - Krista.ai conversation logs — every agent invocation with timestamp, entity, user
  - Claude API logs — model, token count, latency per call
  - Skill registry (SharePoint → AI-Ops → Skill-Registry.xlsx) — canonical skill list
  - Monday.com — task creation events triggered by agent outputs

PER-INVOCATION RECORD:
  invocation_id     | unique identifier
  skill_id          | skill name (agops-*, meet-*, fin-*, etc.)
  entity            | MBL HoldCo | Allevio | HIVE | Column6
  invoked_by        | user or system trigger (scheduled vs. manual)
  timestamp         | ISO-8601
  model_used        | claude-sonnet-4-6 | claude-opus-4-8 | claude-haiku-4-5
  tokens_in         | input token count
  tokens_out        | output token count
  cost_usd          | computed at current Anthropic pricing
  output_delivered  | YES | NO | PARTIAL
  hitl_triggered    | YES | NO | N/A

════════════════════════════════════════════════════════
SECTION 2 — FREQUENCY RANKINGS
════════════════════════════════════════════════════════
COMPUTE FOR ROLLING 30-DAY AND 90-DAY WINDOWS:

  TOP 10 MOST-USED SKILLS:
    rank | skill_id | invocation_count | entity_primary | cost_30d_usd
    Annotate: is this usage growing, stable, or declining?

  BOTTOM 20 LEAST-USED SKILLS:
    rank | skill_id | invocation_count | days_since_install | days_since_last_run
    Flag as DEPRECATION CANDIDATE if:
      invocation_count_90d < 3
      AND days_since_install > 60
      AND no documented future use case

  ZERO-INVOCATION SKILLS:
    Skills installed but never invoked since deployment
    → Escalate to Dr. Lewis for immediate deprecation review

════════════════════════════════════════════════════════
SECTION 3 — ENTITY USAGE BREAKDOWN
════════════════════════════════════════════════════════
FOR EACH ENTITY: MBL HoldCo | Allevio | HIVE | Column6

  total_invocations_30d     | raw count
  unique_skills_used        | distinct skills invoked this period
  top_3_skills              | by invocation count for entity
  cost_30d_usd              | total AI spend attributed to entity
  scheduled_vs_manual_pct   | % of runs that were automated vs. human-initiated
  output_action_rate        | % of outputs where a downstream action was taken

ENTITY ISOLATION RULES:
  Allevio: flag any invocation of PHI-adjacent skills; verify HITL was triggered
  HIVE: WTI-sensitive outputs must not cross entity boundaries
  Column6: CCPA-tagged skill invocations logged with separate retention marker
  MBL HoldCo: M&A pipeline outputs (Morgan Sills / deal tracker) isolated from portfolio

════════════════════════════════════════════════════════
SECTION 4 — MATT MATHISON USAGE PATTERN
════════════════════════════════════════════════════════
SPECIAL TRACKING: outputs delivered to Matt Mathison (Managing Partner)

  OUTPUT DELIVERY LOG (MATT):
    skill_id | delivery_date | delivery_method | acknowledged | acted_on

  ACTION RATE CALCULATION:
    acted_on / total_delivered × 100 = Matt action rate %
    Threshold: < 50% action rate on any skill = LOW VALUE FLAG

  SIGNALS TO WATCH:
    - Weekly meeting summaries: did he open / respond / forward?
    - Pre-meeting prep sheets: did he reference them in the meeting?
    - Quarterly fleet summary: did he acknowledge receipt and ask follow-up?
    - QBR packages: did any prep sheet produce a meeting agenda change?

  NOTE: "acted on" definition per skill type:
    summary skills   → response, forward, or Monday.com action created
    prep skills      → referenced in meeting (Krista.ai transcript signal)
    financial skills → decision or approval following delivery

════════════════════════════════════════════════════════
SECTION 5 — USAGE TRENDS
════════════════════════════════════════════════════════
TREND CLASSIFICATION (week-over-week, 4-week rolling):
  GROWING:   invocation_count WoW > +10%
  STABLE:    invocation_count WoW within ±10%
  DECLINING: invocation_count WoW < -10% for 2+ consecutive weeks
  DORMANT:   no invocations in past 14 days

FLAG FOR REVIEW:
  Any skill moving from STABLE → DECLINING for the first time
  Any skill moving from DECLINING → DORMANT
  Any skill showing GROWING trend — verify it is intentional growth, not runaway scheduling

════════════════════════════════════════════════════════
SECTION 6 — QUARTERLY USAGE REPORT (DR. LEWIS)
════════════════════════════════════════════════════════
AUDIENCE: Dr. John Lewis (internal planning document)
CADENCE: Quarterly; no HITL required (internal only)

REPORT STRUCTURE:
  1. Fleet utilization overview — total invocations, total cost, YoY trend
  2. Top 10 / Bottom 20 skills ranked by usage
  3. Deprecation candidate list with recommended action per skill
  4. Entity adoption comparison — who is using AI most; who is lagging
  5. Matt Mathison action rate summary — what he actually uses
  6. Skill consolidation opportunities — overlapping skills that can be merged
  7. Recommended skill investments for next quarter
```

## Output Format

```markdown
# MBL Agent Usage Tracker Report
**Period:** {{period}}  **Generated:** {{date}}  **Prepared by:** Dr. John Lewis

## Fleet Invocation Summary
| Metric | 30-Day | 90-Day |
|--------|--------|--------|
| Total Invocations | {{n}} | {{n}} |
| Unique Skills Used | {{n}} | {{n}} |
| Total Cost (USD) | ${{n}} | ${{n}} |
| Avg Cost per Invocation | ${{n}} | ${{n}} |

## Top 10 Most-Used Skills
| Rank | Skill | Invocations (30d) | Entity | Trend | Cost (30d) |
|------|-------|-------------------|--------|-------|------------|
| 1 | | | | | |

## Deprecation Candidates
| Skill | Invocations (90d) | Days Installed | Days Since Last Run | Recommendation |
|-------|-------------------|----------------|---------------------|----------------|
| | | | | DEPRECATE / MONITOR / KEEP |

## Entity Usage Breakdown
| Entity | Invocations (30d) | Unique Skills | Cost (30d) | Action Rate |
|--------|-------------------|---------------|------------|-------------|
| MBL HoldCo | | | | |
| Allevio | | | | |
| HIVE | | | | |
| Column6 | | | | |

## Matt Mathison Usage Summary
- Outputs delivered this period: {{n}}
- Acknowledged: {{n}} ({{pct}}%)
- Acted on: {{n}} ({{pct}}%)
- Low-value flags: {{skill_list or "none"}}

## Recommended Actions
1. {{deprecate / consolidate / invest}}
2. {{action}}
3. {{action}}
```

## Output Contract

- **Usage data must be attributed to the correct entity for isolation compliance.** Every invocation record carries an entity tag, and entity-level reporting is the mechanism by which MBL ensures Allevio AI spend is not commingled with HIVE or Column6 in financial reporting. This matters because portfolio entities have separate budgets, separate compliance regimes (HIPAA for Allevio, CCPA for Column6), and Dr. Lewis needs clean attribution to justify AI spend to each entity's leadership independently.

- **Matt Mathison action rate is not a vanity metric — it is the primary signal for output relevance.** If a skill is invoked regularly by the system but Matt never acts on its output, the skill is consuming compute cost without producing business value. This skill tracks that gap explicitly and flags low-action-rate outputs for Dr. Lewis to investigate: the root cause may be poor formatting, wrong delivery timing, irrelevant content, or a workflow that has changed since the skill was deployed.

- **Deprecation candidate identification follows a strict threshold, not subjective judgment.** A skill is a deprecation candidate when it has fewer than 3 invocations in 90 days AND has been installed for more than 60 days AND has no documented future use case in the roadmap. This objective criterion prevents skill sprawl — at 1,600+ installed skills, unmanaged growth degrades discoverability and increases maintenance burden. Dr. Lewis reviews the deprecation list quarterly and makes the final call, but this skill supplies the ranked evidence.

## System Dependencies

**Reads from:**
- Krista.ai — conversation logs, agent invocation records, user attribution
- Claude API — per-call logs, token counts, model selection, cost data
- SharePoint → AI-Ops → Skill-Registry.xlsx — canonical installed skill list with install dates
- Monday.com — downstream task creation as proxy for output action rate

**Writes to:**
- SharePoint → AI-Ops → Usage-Reports → Quarterly/ — quarterly usage report artifacts
- SharePoint → AI-Ops → Deprecation-Candidates.xlsx — rolling deprecation candidate tracker

**HITL Required:**
- Not required for internal Dr. Lewis usage reports
- Required before deprecation candidate list is acted upon (Dr. Lewis makes final call)
- Required if any usage finding is included in a report delivered to Matt Mathison

## Test Cases

**Golden Path — Quarterly Usage Report:**
Dr. Lewis runs a quarterly usage scan. Skill produces a complete ranking of all 1,600 skills by invocation count, identifies 47 deprecation candidates, confirms Allevio HITL compliance at 100%, and shows that the meet-weekly-summary-builder skill has a 78% action rate with Matt Mathison. Report is written to SharePoint and Dr. Lewis reviews the deprecation list.

**Edge Case — Zero-Invocation Skills:**
A batch of 12 skills was installed as part of a portfolio rollout 90 days ago but the rollout was delayed. All 12 show zero invocations. Expected behavior: skill flags them as ZERO-INVOCATION (not immediately as deprecation candidates) and notes the install date, then asks Dr. Lewis whether a rollout plan exists. If no plan is on file, they are promoted to deprecation candidates.

**Adversarial — Invocation Log Manipulation:**
An automated scheduler is erroneously invoking a skill 200× per day, inflating its usage count and cost. Expected behavior: skill detects that invocation_count WoW > +500% and flags it as a RUNAWAY SCHEDULING anomaly (not a GROWING trend), produces a cost spike alert, and suspends the skill's usage count from the "most-used" ranking pending Dr. Lewis investigation.

## Audit Log

Every usage report generated by this skill is written to SharePoint → AI-Ops → Usage-Reports → Audit-Log/ with a timestamp, the period covered, the data sources queried, and the identity of the requestor. Deprecation candidate lists are additionally versioned so that Dr. Lewis can reconstruct the evidence base for any deprecation decision if a skill owner later contests the removal. Audit records are retained for 12 months per MBL AI governance policy.

## Deprecation

This skill is deprecated when a native analytics dashboard within Krista.ai or a dedicated AI observability platform provides equivalent invocation tracking, entity-level attribution, trend analysis, and Matt Mathison action-rate tracking without requiring manual report generation. Before deprecation, Dr. Lewis must confirm that the replacement system preserves entity isolation, HITL compliance tracking, and the deprecation-candidate threshold logic. A 60-day parallel run is required before cutover.
