---
name: architecture-decision-recorder
description: "Generate and maintain Architecture Decision Records (ADRs). Use when the user says 'write an ADR', 'document this architecture decision', 'architecture decision record', 'record why we chose X', 'document the tech decision', 'we decided to use X instead of Y', 'create a decision log entry', or 'ADR for this change'. Also use when reviewing an existing ADR or listing all decisions in a project."
metadata:
  version: 1.0.0
  tier: process-audit
  owner: Dr. John Lewis
argument-hint: "<decision-title | --list | --review <adr-file>>"
---

# Architecture Decision Recorder

Create and maintain Architecture Decision Records. ADRs answer the question future engineers will ask: "Why does this code do it this way?" Without them, institutional knowledge leaves with the people who made the decisions.

## When to Use

- When making a significant technical choice (framework, library, pattern, infrastructure)
- When choosing NOT to do something common (and you'll need to explain why later)
- When a decision was made under constraints that will change (document what those constraints were)
- When a decision reversed a previous decision (document why the old one no longer fits)
- When auditing a codebase for its existing decision log

## Modes

| Mode | Argument | What it does |
|------|----------|-------------|
| New ADR | `<decision-title>` | Interactive creation of a new ADR |
| List ADRs | `--list [directory]` | Scan for and list all existing ADRs |
| Review ADR | `--review <file>` | Assess an existing ADR for completeness |
| Supersede | `--supersede <old-adr> <new-title>` | Create new ADR that replaces an old one |

## ADR Format (Nygard Standard, Extended)

ADR files are named: `NNN-<kebab-case-title>.md` (e.g., `0042-use-sqlx-for-database-access.md`)

Stored in: `docs/decisions/` or `adr/` at project root (create if doesn't exist).

```markdown
# <NNN>. <Decision Title>

**Date:** <YYYY-MM-DD>
**Status:** Proposed | Accepted | Deprecated | Superseded by [ADR-NNN](link)
**Deciders:** <names of people who made this decision>
**Tags:** <categories: database, auth, api, infrastructure, testing, etc.>

---

## Context

<What is the situation that requires a decision? What forces are at play — technical constraints, team capabilities, timeline pressure, existing system limitations? Be specific. Future readers need to understand what world you were living in when you made this choice.>

## Decision

<What was decided? State it clearly and directly. "We will use X for Y." Not hedged, not vague.>

## Consequences

### Positive
- <What gets better as a result of this decision>
- <What problems does this solve>

### Negative / Trade-offs
- <What gets harder or worse>
- <What technical debt does this introduce>
- <What doors does this close>

### Risks
- <What could go wrong with this decision>
- <What would cause us to reverse this decision>

## Alternatives Considered

### Option A: <name> (Not chosen)
**Why not:** <specific reason — cost, complexity, missing capability, team skill gap, vendor lock-in, etc.>

### Option B: <name> (Not chosen)
**Why not:** <reason>

### Option C: <name — the one we chose>
**Why chosen:** <the decisive reason>

## Validation Plan

<How will we know this was the right decision? What signals or metrics will confirm it? What would trigger a revisit?>

## Related Decisions
- ADR-NNN: <title> — <how it relates>
```

## Creation Process

### Step 1 — Gather Decision Context

If decision details are not fully provided, ask:
1. What is the decision? (one sentence: "We are choosing to use X for Y")
2. What were the key constraints or forces that shaped this?
3. What alternatives did you consider and why were they rejected?
4. What are the known trade-offs?
5. Who made this decision and when?

### Step 2 — Determine ADR Number

Check `docs/decisions/` for existing ADRs. Use the next sequential number. If no ADRs exist, start at `0001`.

### Step 3 — Write the ADR

Using the format above, fill in all sections. Rules:
- **Context**: Historical — describe the world at decision time, not the current state
- **Decision**: Present tense, direct — "We will use..." not "We considered using..."
- **Alternatives**: Must include at least 2 alternatives, even if they were quickly ruled out
- **Validation**: Must be measurable or observable — not "we'll see how it goes"

### Step 4 — Supersede Old ADRs (if applicable)

If this decision reverses a previous one:
1. Update the old ADR's `Status` to: `Superseded by [ADR-NNN](link-to-new)`
2. Note in the new ADR's `Related Decisions` section
3. Never delete old ADRs — the history is the value

### Step 5 — Output

Print the full ADR markdown. Confirm with user before writing to disk.
Write to: `docs/decisions/<NNN>-<kebab-case-title>.md`

## Review Mode (`--review <file>`)

Assess an existing ADR for completeness:

| Section | Present? | Quality |
|---------|---------|---------|
| Context | ✅/❌ | Specific enough? Does it capture constraints? |
| Decision | ✅/❌ | Direct and unambiguous? |
| Consequences | ✅/❌ | Both positive AND negative listed? |
| Alternatives | ✅/❌ | At least 2 alternatives with rejection reasons? |
| Validation Plan | ✅/❌ | Measurable criteria? |
| Status | ✅/❌ | Current? Has it been superseded? |

Output a grade (A-F) and a list of gaps to fill.

## List Mode (`--list`)

Scan `docs/decisions/` or `adr/`. Output:

```
Architecture Decision Log
<project>
<N> total decisions

Status summary:
- Accepted: <N>
- Deprecated: <N>
- Superseded: <N>
- Proposed: <N>

Full list:
[0001] 2024-03-15 | Accepted | Use PostgreSQL for primary data store
[0002] 2024-04-02 | Accepted | Use SQLx over Diesel for query building
[0003] 2024-06-10 | Superseded by 0008 | Use JWT for session management
...
```

## Output Contract

- Never deletes or overwrites existing ADRs — only appends or supersedes
- Confirmation required before writing any file to disk
- All ADRs use the standard format — no custom formats
- "We'll see" is not an acceptable Validation Plan — push back and ask for specifics

## System Dependencies

- **Reads from:** File system (`docs/decisions/`, `adr/`)
- **Writes to:** `docs/decisions/<NNN>-<title>.md` (with confirmation)
- **Updates:** Status field in old ADRs when superseded (with confirmation)

## Feedback

Engineering leads (Tier 2) may request custom sections for specific project types. Log via `skill-feedback-collector`.
