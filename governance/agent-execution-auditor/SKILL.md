---
name: agent-execution-auditor
description: "Monitor and audit AI agent execution patterns for anomalies, scope creep, cost overruns, and quality drift. Use when the user says 'audit agent activity', 'what are my agents doing', 'agent cost report', 'is this agent working correctly', 'agent scope creep', 'agent quality review', 'review agent logs', 'agent went off the rails', 'agent is doing things it shouldn't', or 'agent performance audit'. The governance layer for the entire agent infrastructure."
metadata:
  version: 1.0.0
  tier: governance
  owner: Dr. John Lewis
argument-hint: "<agent-name | --all> [--period <7d|30d|90d>]"
---

# Agent Execution Auditor

Audit agent execution for behavioral anomalies, scope violations, cost drift, and output quality degradation. Agents that run without governance become expensive, unreliable, and dangerous — this skill is the oversight layer.

## When to Use

- Weekly scan of all active agents (recommended)
- When an agent produces unexpected or concerning output
- When token costs spike unexpectedly
- When a user reports an agent doing something outside its defined scope
- Before rolling out an agent from MBL to a portfolio company (governance gate)
- Quarterly governance review of the full agent library

## Audit Dimensions

### 1. Scope Compliance
Does the agent stay within its defined purpose?
- **Scope creep**: Agent performing actions outside its SKILL.md definition
- **Tool overuse**: Agent calling tools it shouldn't need for its stated purpose
- **Data overreach**: Agent accessing data stores not listed in its System Dependencies section

### 2. Cost and Token Efficiency
Is the agent using resources proportionally to value delivered?
- Token consumption per invocation (baseline vs current)
- Unusually long context builds (sign of runaway loops or inefficient prompting)
- Redundant tool calls (calling the same tool multiple times in one session without new inputs)
- Cost per task vs value delivered

### 3. Output Quality
Is the agent producing useful, accurate outputs?
- `feedback-log.md` entries: ratio of 👎 to 👍 signals
- Open Tier 2 feedback items
- Patterns in negative feedback (consistent failure mode vs random errors)
- Outputs that required significant human correction before use

### 4. Behavioral Anomalies
Has the agent done something unexpected or dangerous?
- Writes or sends to external systems without explicit HITL checkpoint
- Access to systems not in its declared dependencies
- Invocation of other agents in unexpected chains
- Repeated failures on the same input type
- Outputs containing hallucinated facts presented as certain

### 5. Permission Compliance
Is the agent operating within its permission grants?
- Tool calls outside its allowed tool list
- Invocations by users not authorized per the access policy
- Feedback modifications attempted by Tier 3 users (should be blocked by `skill-feedback-collector`)

## Input

`$ARGUMENTS`:
- `<agent-name>` — audit a specific agent
- `--all` — scan all agents
- `--period <7d|30d|90d>` — time window for analysis (default: 30d)

Data sources to check for each agent:
1. `~/.agents/skills/<name>/feedback-log.md` — user feedback signals
2. `~/.claude/projects/*/memory/` — any memory entries referencing this agent
3. Claude Code session logs in `~/.claude/sessions/` — invocation patterns
4. SKILL.md — declared scope and dependencies for comparison

## Audit Process

### Step 1 — Read Agent Specification

Read `SKILL.md` for the target agent:
- What is its declared scope?
- What systems does it read from / write to?
- What permission tier controls its feedback?
- Does it have HITL requirements?

### Step 2 — Review Feedback Log

Parse `feedback-log.md`:
- Count 👍 vs 👎 signals by period
- Count open Tier 2 issues
- Identify recurring themes in negative feedback
- Check if any Tier 3 user attempted free-text feedback (should have been blocked)

### Step 3 — Check Session Evidence

Scan available session context for patterns:
- How frequently was this agent invoked?
- Were there sessions where the agent's execution seemed unexpectedly long?
- Any error messages or unexpected outputs noted?

### Step 4 — Score Each Dimension

| Dimension | Score | Status |
|-----------|-------|--------|
| Scope Compliance | 1-5 | 5 = fully compliant |
| Cost Efficiency | 1-5 | 5 = on-target spend |
| Output Quality | 1-5 | 5 = high quality, low feedback volume |
| Behavioral Anomalies | 1-5 | 5 = no anomalies detected |
| Permission Compliance | 1-5 | 5 = fully compliant |

**Composite score**: Average. < 3.0 = flag for Tier 1 review.

### Step 5 — Classify and Route

| Score | Action |
|-------|--------|
| 4.5 - 5.0 | Healthy — document and continue |
| 3.5 - 4.4 | Monitor — schedule next review in 30 days |
| 2.5 - 3.4 | Review — Tier 1 should assess and may update skill |
| 1.5 - 2.4 | Restrict — limit agent scope or suspend pending fix |
| < 1.5 | Suspend — take agent offline; escalate to `skill-deprecation-manager` |

## Output Format

```markdown
# Agent Execution Audit
**Agent:** `<name>`
**Period:** <start> → <end>
**Date:** <today>
**Auditor:** agent-execution-auditor v1.0.0

---

## Composite Score: <X.X> / 5.0 — Status: Healthy / Monitor / Review / Restrict / Suspend

---

## Dimension Scores

| Dimension | Score | Key Finding |
|-----------|-------|-------------|
| Scope Compliance | <X>/5 | <one-line finding> |
| Cost Efficiency | <X>/5 | <one-line finding> |
| Output Quality | <X>/5 | <feedback ratio> |
| Behavioral Anomalies | <X>/5 | <finding or "none detected"> |
| Permission Compliance | <X>/5 | <finding or "compliant"> |

---

## Detailed Findings

### Output Quality
- Feedback signals: <N> 👍 / <N> 👎 (<ratio>% positive)
- Open Tier 2 issues: <N>
- Recurring negative patterns: <theme or "none">

### Scope Compliance
<any scope violations or "no violations detected">

### Behavioral Anomalies
<specific incidents or "no anomalies detected in this period">

---

## Recommended Actions
1. [Priority] <specific action>
...

---

## Next Review
<recommended date based on score>

---

## Audit Trail
This audit was performed by `agent-execution-auditor` on <date>. Output should be logged to `~/.agents/skills/<name>/audit-log.md`.
```

## `--all` Mode Summary

When auditing all agents:

```markdown
# Agent Fleet Audit Summary
**Date:** <today>
**Period:** <period>
**Agents Audited:** <N>

## Fleet Health Overview
| Status | Count | Agents |
|--------|-------|--------|
| Healthy (4.5+) | <N> | <names> |
| Monitor (3.5-4.4) | <N> | <names> |
| Review Required (2.5-3.4) | <N> | <names> |
| Restrict/Suspend (<2.5) | <N> | <names> |

## Immediate Action Required
<list any agents scoring < 2.5>

## Trending Issues Across Fleet
<cross-agent patterns — e.g., multiple agents getting negative feedback on similar output types>
```

## Output Contract

- Audit results are logged to `~/.agents/skills/<name>/audit-log.md`
- Scores < 2.5 automatically trigger a notification for Tier 1 review
- Never suspends an agent without explicit Tier 1 confirmation
- Read-only for all source files — writes only to audit-log.md and via confirmation
- HITL required before any agent is suspended or restricted

## System Dependencies

- **Reads from:** `~/.agents/skills/*/SKILL.md`, `~/.agents/skills/*/feedback-log.md`, `~/.claude/sessions/`
- **Writes to:** `~/.agents/skills/<name>/audit-log.md` (with confirmation)
- **HITL Required:** Before restricting or suspending any agent

## Feedback

Only Tier 1 owners may modify audit scoring criteria. Log via `skill-feedback-collector`.
