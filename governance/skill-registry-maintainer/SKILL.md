---
name: skill-registry-maintainer
description: "Maintain the master skill registry in memory. Use when the user says 'update the skill registry', 'sync the registry', 'new skills were installed', 'registry is out of date', 'what skills are missing from the registry', or 'add this skill to the registry'. Also invoke automatically after any batch of new skills are created or installed. Compares the live skill directories against the memory registry and reconciles."
metadata:
  version: 1.0.0
  tier: governance
  owner: Dr. John Lewis
argument-hint: "[--full-sync | --add <skill-name> | --remove <skill-name> | --status]"
---

# Skill Registry Maintainer

Keep `memory/project_skill_registry.md` in sync with the actual skills installed in `~/.agents/skills/`. Detects new, missing, and deprecated skills. This is the source of truth reconciler — the registry should always reflect what's actually on disk.

## When to Use

- After any batch of new skills are installed or created
- When a skill is manually deleted or deprecated
- On a scheduled sync (weekly recommended)
- User notices the registry doesn't match what's installed
- After running `skill-deprecation-manager` to clean up retired skills

## Modes

| Mode | Argument | What it does |
|------|----------|-------------|
| Status check | `--status` or no arg | Shows diff between disk and registry; no changes made |
| Full sync | `--full-sync` | Reads all skills, rebuilds registry categorization |
| Add single | `--add <skill-name>` | Adds one skill to registry with auto-categorization |
| Remove single | `--remove <skill-name>` | Marks skill as deprecated in registry |

Default (no arg): run `--status` and report what's out of sync.

## Process

### Step 1 — Read Current State

**From disk:** List all directories in `~/.agents/skills/` (these are the installed skills). For each, read `SKILL.md` frontmatter to get: name, description, version, tier, owner.

**From registry:** Read `~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md`.

### Step 2 — Compute Diff

Identify:
- **New on disk, missing from registry** → needs to be added
- **In registry, not on disk** → stale entry (skill was removed) — mark for deprecation note
- **In both** → check if version in SKILL.md matches version noted in registry (if tracked)

### Step 3 — Categorize New Skills

For each new skill not in the registry, determine its category using this mapping:

| Tier/Category | Keyword signals in name or description |
|---------------|---------------------------------------|
| Governance | auditor, registry, feedback, deprecation, compliance, rule |
| Code Audit | code-quality, security-code, dependency, technical-debt, test-coverage, api-contract, schema-migration |
| Process Audit | ci-failure, post-mortem, architecture-decision, changelog, agent-execution |
| Marketing — CRO | cro, conversion, signup, onboarding, popup, paywall |
| Marketing — SEO | seo, sitemap, schema-markup, programmatic |
| Marketing — Content | copywriting, email, social, blog, newsletter |
| Engineering | deploy, release, docker, playwright, browser |
| Design/UI-UX | ckm-, ui-ux, design-system, brand, slides |
| Utility | time, weather, image, video |
| Finance | invoice, payment, budget, financial, payroll, tax |
| HR | candidate, onboarding, headcount, attrition |
| Sales | lead, pipeline, crm, proposal, forecast |
| Operations | sop, incident, capacity, vendor |
| IT | helpdesk, ticket, patch, asset, license |
| Security | phishing, vulnerability, threat, firewall, breach |
| Legal | contract, compliance, gdpr, litigation |
| Executive | briefing, board, m-and-a, lp-, portfolio |
| Product | roadmap, sprint, backlog, persona |
| Data | data-quality, pipeline, dashboard, sql |
| Supply Chain | rfp, procurement, vendor-risk, inventory |

### Step 4 — Update Registry

**For `--status`:** Output diff report only, no writes.

**For `--add`, `--full-sync`:**

Update `~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md`:
- Add new skills under their category section in the correct format:
  ```
  - `skill-name` — <description from SKILL.md, truncated to 80 chars>
  ```
- Mark removed skills with `~~strikethrough~~` and a `[DEPRECATED <date>]` tag
- Update the "Updated" date at top of registry

Also update `~/.claude/projects/-Users-johnlewis/memory/MEMORY.md` if the registry entry description has materially changed.

### Step 5 — Report

Always end with a clear summary:

```
## Registry Sync Report — <date>

**Added:** <N> skills
<list>

**Removed/Stale:** <N> skills
<list>

**Already synced:** <N> skills

**Action taken:** [Status only / Registry updated]

Registry path: ~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md
```

## Output Contract

- `--status` mode: READ ONLY — never modifies any file
- Always confirms what changed and what the registry path is
- Never deletes entries — only marks deprecated
- Never modifies SKILL.md files — read-only on skill content
- Reports if any skill is missing required frontmatter fields

## System Dependencies

- **Reads from:** `~/.agents/skills/*/SKILL.md`, `memory/project_skill_registry.md`
- **Writes to:** `memory/project_skill_registry.md`, `memory/MEMORY.md` (index line only)
- **Does NOT write to:** Any SKILL.md file

## Deprecation

Review when a new skill management infrastructure (e.g., dedicated CLI or database) is implemented. Until then, this is the authoritative registry reconciler.
