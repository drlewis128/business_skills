---
name: executive-decision-log
description: "Record and retrieve key executive decisions with context, rationale, and outcomes. Use when the user says 'log this decision', 'decision log', 'what was decided', 'document this decision', 'decision record', 'what did we decide about X', or 'decision history'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--action <log|query|list>] [--topic <topic>] [--date <YYYY-MM-DD>]"
---

# Executive Decision Log

Record, search, and retrieve key executive decisions with full context — who decided, what was decided, why, and what happened. Institutional memory that survives personnel changes.

## When to Use
- After any significant decision is made (log immediately)
- Before revisiting a prior decision (retrieve context)
- Quarterly retrospective (review decisions and outcomes)
- Onboarding a new leader (provide decision history)
- When asked "why do we do it this way?"

## Decision Record Format

```yaml
id: DEC-<YYYYMMDD>-<NNN>
date: <date>
entity: MBL / Allevio / HIVE / Column6
topic: <short topic keyword>
decided_by: <name(s)>
decision: |
  <1-2 sentence statement of what was decided>
context: |
  <background — what problem were we solving?>
alternatives_considered:
  - <option 1>
  - <option 2>
rationale: |
  <why this option over others — the key reasoning>
risks_acknowledged: |
  <what risks were accepted with this decision>
outcome: |
  <filled in later — what actually happened>
status: Active | Superseded | Reversed
supersedes: <DEC-id if this reverses a prior decision>
```

## Usage Modes

### Log Mode (`--action log`)
Capture a new decision. Prompt for:
- Who decided?
- What was decided?
- What context led to this?
- What alternatives were considered?
- What risks were acknowledged?

### Query Mode (`--action query --topic <topic>`)
Search the decision log for decisions related to a topic. Return matching records with summary.

### List Mode (`--action list`)
Show recent decisions (last 30 days) or filter by entity, topic, or status.

## Output Format (Log)

```markdown
# Decision Logged: DEC-<id>
**Date:** <date> | **Entity:** <entity> | **Decided by:** <name>

## Decision
<1-2 sentences>

## Context
<why this came up>

## Alternatives Considered
- Option A: <description>
- Option B: <description>
- Option chosen: <chosen + rationale>

## Risks Acknowledged
<what we knew we were accepting>

## Status: Active
**Record ID:** DEC-<id> | Stored in decision log
```

## Output Format (Query Result)

```markdown
# Decision Log Query — Topic: "<topic>"
Found <N> decisions

| ID | Date | Entity | Decision Summary | Status |
|----|------|--------|-----------------|--------|
| DEC-20260115-001 | Jan 15 | MBL | Adopted Krista.ai as orchestration layer | Active |
```

## Output Contract
- Every decision log entry requires a named human decision-maker (not "team")
- Alternatives considered section is required — prevents single-option documentation
- Superseded decisions remain in log — never deleted, marked as status: Superseded
- Decision log is a read-write record — this skill both creates and retrieves entries

## System Dependencies
- **Reads from:** Decision log file (`~/.agents/data/decision-log.md` or similar), context provided
- **Writes to:** Decision log file (HITL required for writes)
- **HITL Required:** Dr. Lewis reviews before logging any decision that involves external parties or financial commitments

## Test Cases
1. **Golden path:** Log a decision to adopt a new vendor → clean YAML record created with all fields, confirmation output
2. **Edge case:** Query for decisions related to "Allevio M&A" → returns all relevant decisions chronologically, sorted newest first
3. **Adversarial:** Attempt to log a decision with no named decision-maker → rejects, prompts for who made the call

## Audit Log
The decision log is itself the audit record. All entries are append-only — no edits, only supersede or status update.

## Deprecation
Retire when organizational knowledge management system (Notion, Confluence, SharePoint) provides structured decision recording with search.
