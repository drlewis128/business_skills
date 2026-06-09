---
name: skill-deprecation-manager
description: "Manage the retirement lifecycle of skills that are dead, degraded, or superseded. Use when the user says 'deprecate this skill', 'retire this skill', 'this skill is no longer needed', 'clean up old skills', 'skill is broken beyond repair', 'audit for unused skills', or 'what skills should we retire'. Also invoke when skill-auditor returns a grade of D or F, or when skill-feedback-collector reports 10+ unresolved Tier 2 flags."
metadata:
  version: 1.0.0
  tier: governance
  owner: Dr. John Lewis
argument-hint: "<skill-name | --audit-all>"
---

# Skill Deprecation Manager

Run the full retirement lifecycle for skills that have outlived their usefulness. Prevents skill sprawl, registry pollution, and context budget waste from dead skills.

## Deprecation Triggers (any one qualifies)

| Trigger | Threshold |
|---------|-----------|
| No invocations | 90+ days with no recorded use |
| Audit grade | D or F from skill-auditor |
| Unresolved feedback | 10+ open Tier 2 flags with no remediation |
| Superseded | A newer, better-scoped skill covers the same use case |
| System dependency gone | The external system it depended on is retired |
| Tier 1 decision | Explicit owner decision to retire |

## Modes

| Mode | Argument | What it does |
|------|----------|-------------|
| Single skill | `<skill-name>` | Run full retirement flow for one skill |
| Audit all | `--audit-all` | Scan all skills, surface deprecation candidates |
| Dry run | `<skill-name> --dry-run` | Preview what would happen without making changes |

## Retirement Process

### Phase 1 — Deprecation Assessment

For each skill under review:

1. Read `SKILL.md` — note version, tier, owner, dependencies
2. Read `feedback-log.md` if present — count open issues
3. Check `changelog.md` if present — last updated date
4. Run a quick rule-compliance check (Rules 1, 3, 8, 9 are hardstops for keeping a broken skill)

Output assessment:
```
Skill: <name>
Last version: <version>
Deprecation triggers met: <list>
Downstream dependencies: <any skills or agents that invoke this skill?>
Recommended action: [Archive | Replace with <skill> | Rebuild | Force Retire]
```

### Phase 2 — Impact Check

Before retiring, check:
- Does any other skill reference this skill by name?
- Is this skill listed as a dependency in any agent configuration?
- Is it in the agent-role mapping table in the registry?

If dependencies found: **do not auto-retire.** Report to Tier 1 owner:
"Skill `<name>` has active dependents: `<list>`. Manual review required before retirement."

### Phase 3 — Retirement Actions (requires Tier 1 confirmation for any destructive step)

For each step, confirm before executing unless `--force` flag is provided by Tier 1 owner:

**Step A — Mark in Registry**
Update `memory/project_skill_registry.md`:
```
- ~~`skill-name`~~ — <original description> [DEPRECATED <date> — <reason>]
```

**Step B — Add Deprecation Notice to SKILL.md**
Prepend to the target SKILL.md:
```markdown
> ⚠️ DEPRECATED <date>
> Reason: <reason>
> Replacement: <skill-name if applicable, else "none">
> Retired by: <Tier 1 owner name>
```

**Step C — Remove Symlink (optional, Tier 1 only)**
Remove `~/.claude/skills/<skill-name>` symlink so the skill is no longer invocable.

Report: "Symlink removed. Skill `<name>` is no longer active but source files retained at `~/.agents/skills/<name>/` for reference."

**Step D — Archive Source (optional, Tier 1 only)**
If full deletion is requested:
```bash
# Moves to archive, does NOT delete
mv ~/.agents/skills/<name> ~/.agents/skills/_archived/<name>-deprecated-<date>
```
Source files are never permanently deleted by this skill — that requires manual action.

### Phase 4 — Report

```
## Deprecation Report — <date>

**Skill:** `<name>`
**Action taken:** [Marked deprecated | Symlink removed | Archived | No action — pending Tier 1 review]

**Registry updated:** yes/no
**Symlink active:** yes/no
**Source files:** ~/.agents/skills/<name>/

**Replacement skill:** <name or "none">
**Dependents notified:** <list or "none">
```

## `--audit-all` Mode

Scan all skills and produce a deprecation candidate report:

```
## Deprecation Candidates — <date>

### Immediate Candidates (multiple triggers)
- `skill-name` — triggers: <list> — Recommended: <action>

### Watch List (1 trigger, monitor)
- `skill-name` — trigger: <trigger> — Next review: <date>

### Healthy (no triggers)
<N> skills — no action needed
```

## Output Contract

- Always requires explicit Tier 1 confirmation before removing symlinks or archiving
- Never permanently deletes source files — archive only
- Always checks for dependents before retiring
- `--dry-run` makes zero file system changes
- Reports all actions taken and all files affected

## System Dependencies

- **Reads from:** `~/.agents/skills/*/SKILL.md`, `~/.agents/skills/*/feedback-log.md`, `memory/project_skill_registry.md`
- **Writes to:** `~/.agents/skills/<name>/SKILL.md` (deprecation notice only), `memory/project_skill_registry.md`
- **Moves:** `~/.agents/skills/<name>` → `~/.agents/skills/_archived/<name>` (Tier 1 only)
- **Removes:** `~/.claude/skills/<name>` symlink (Tier 1 only)

## Deprecation

This skill retires itself when the agent OS implements a native lifecycle management system. Until then it is permanent infrastructure.
