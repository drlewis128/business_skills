---
name: skill-auditor
description: "Audit any skill for quality and rule compliance. Use when the user says 'audit this skill', 'review this skill', 'check skill quality', 'does this skill follow the rules', 'validate skill', or 'skill health check'. Also invoke proactively after creating or editing any SKILL.md file. Takes a skill name or path as argument."
metadata:
  version: 1.0.0
  tier: governance
  owner: Dr. John Lewis
argument-hint: "<skill-name or path/to/SKILL.md>"
---

# Skill Auditor

Score any skill against the 12 Skill Creation Rules and output a structured quality report. This is the governance anchor for the entire skill library.

## When to Use

- After creating a new skill (mandatory gate before activation)
- When a skill is producing unexpected outputs
- On a quarterly cadence across the full skill library
- When a Tier 2 domain lead escalates feedback about a skill
- User explicitly requests a skill audit

## Input

`$ARGUMENTS` — one of:
- Skill name: `skill-name` (looks up `~/.agents/skills/<name>/SKILL.md`)
- Relative path: `skills/my-skill/SKILL.md`
- Absolute path

If no argument is given, ask: "Which skill should I audit? Provide the skill name or path."

## Audit Process

### Step 1 — Locate and Read the Skill

```
Target path: ~/.agents/skills/<skill-name>/SKILL.md
```

Read the full SKILL.md. If not found, report: "Skill `<name>` not found at expected path. Verify the name and try again."

Also check for any companion files:
- `feedback-log.md` — review recent feedback entries
- `changelog.md` — check version history

### Step 2 — Score Against the 12 Rules

Evaluate each rule and assign: **PASS** / **WARN** / **FAIL**

| # | Rule | Check |
|---|------|-------|
| 1 | **Single Responsibility** | Does the skill have exactly one outcome? Count verb phrases in description. >1 = WARN. >2 = FAIL. |
| 2 | **Kebab-case Naming** | Is `name:` lowercase kebab-case? Starts with action verb? |
| 3 | **Output Contract Defined** | Does the skill declare output format, fields, max length, and failure mode? |
| 4 | **Feedback Loop Present** | Is there a feedback mechanism section? Does it reference tier access control? |
| 5 | **Version Declared** | Is `metadata.version` present and in `X.Y.Z` format? |
| 6 | **Test Gate Referenced** | Does the skill reference test cases (golden path, edge, adversarial)? |
| 7 | **Context Isolation** | Does the skill avoid importing state from other skills unless explicitly designed as multi-turn? |
| 8 | **System Dependencies Declared** | Are all external systems listed (reads from / writes to)? |
| 9 | **HITL Checkpoints** | If the skill writes/sends/pays/posts: is a human approval checkpoint defined? |
| 10 | **Audit Logging Noted** | Is audit logging mentioned or assumed from system default? |
| 11 | **Deprecation Criteria** | Is there a note on when this skill should be retired or reviewed? |
| 12 | **THRIVE Compliance** | Does the skill pass T (accurate), H (saves time), I (guardrails for misuse), V (ROI clear)? |

### Step 3 — Frontmatter Completeness Check

Verify all required frontmatter fields:
- [ ] `name` — present, matches directory name
- [ ] `description` — present, >50 chars, includes trigger phrases
- [ ] `metadata.version` — present, semantic version
- [ ] `metadata.tier` — present (governance / code-audit / process-audit / marketing / etc.)
- [ ] `metadata.owner` — present
- [ ] `argument-hint` — present if skill takes arguments

### Step 4 — Content Quality Check

- Does the skill have a **When to Use** section?
- Does it have a **Process/Steps** section?
- Does it have a clearly defined **Output Format** section?
- Is the total length appropriate? (Under 500 lines recommended; flag if over 1000)
- Are there unexplained jargon terms?

### Step 5 — Cross-Reference Check

- Check if any system dependencies declared in Rule 8 are available in the MBL systems map (Microsoft, Krista, Monday.com, QuickBooks, Bill.com, GoHighLevel)
- Flag any skills with write access to financial or LP data that lack HITL checkpoints (Rule 9 hardstop)

## Output Format

```markdown
# Skill Audit Report: `<skill-name>`
**Audited:** <date>
**Version:** <version from frontmatter>
**Overall Score:** <X>/12 rules passing | Grade: A/B/C/D/F

## Rule Compliance

| Rule | Status | Finding |
|------|--------|---------|
| 1. Single Responsibility | ✅ PASS / ⚠️ WARN / ❌ FAIL | <one-line note> |
| 2. Naming Convention | ... | ... |
| ... | ... | ... |

## Frontmatter Completeness
- [x] name
- [x] description
- [ ] metadata.owner — **MISSING**

## Critical Issues (must fix before activation)
<list any FAIL items — these are blockers>

## Warnings (should fix)
<list WARN items>

## Recommendations
<ordered list of specific fixes, highest priority first>

## Activation Verdict
**APPROVED** / **BLOCKED — fix critical issues first** / **CONDITIONAL — warnings acceptable for v1, schedule fixes**
```

## Grading Scale

| Score | Grade | Meaning |
|-------|-------|---------|
| 12/12 | A | Production-ready |
| 10-11/12 | B | Activate with minor fixes scheduled |
| 8-9/12 | C | Conditional — resolve warnings before Tier 2 rollout |
| 6-7/12 | D | Do not activate — significant gaps |
| <6/12 | F | Do not activate — requires rewrite |

Any skill with a **FAIL on Rule 9** (HITL for write actions) is automatically **BLOCKED** regardless of overall score. Financial and LP-data skills have zero tolerance on this rule.

## Feedback

Only Tier 1 owners (Dr. Lewis, Matt Mathison) may update this skill's behavior. Tier 2 domain leads may flag audit false positives. Log feedback in `~/.agents/skills/skill-auditor/feedback-log.md`.
