---
name: skill-feedback-collector
description: "Collect, record, and route feedback on skill outputs with tiered access control. Use when the user says 'submit feedback on a skill', 'this skill output was wrong', 'correct this skill', 'log skill feedback', 'skill is producing bad results', or 'flag a skill for review'. Also use when a Tier 2 or Tier 3 user wants to report a skill issue. Enforces the feedback permission hierarchy — not all feedback is equal."
metadata:
  version: 1.0.0
  tier: governance
  owner: Dr. John Lewis
argument-hint: "<skill-name> [--tier <1|2|3>]"
---

# Skill Feedback Collector

Structured feedback intake for the skill library with enforced permission tiers. Implements Rule 4 of the Skill Creation Framework: feedback improves skills, but the wrong feedback source degrades them.

## Permission Tier Model

| Tier | Who | Feedback Rights |
|------|-----|----------------|
| **Tier 1 — Owners** | Dr. John Lewis, Matt Mathison | Full: modify skill behavior, update prompts, approve training corrections, override any feedback |
| **Tier 2 — Domain Leads** | Designated dept heads (assigned per skill category in registry) | Standard: flag incorrect outputs, submit correction examples, request skill reviews, escalate patterns |
| **Tier 3 — End Users** | Everyone else | Limited: thumbs-up / thumbs-down signal only. No free-text correction. Volume triggers escalation. |

**Why tiers matter:** A Tier 3 user flagging correct output as wrong because they lack domain context will degrade a working skill. Tier 3 signals are volume indicators only — 5+ flags on the same output pattern trigger a Tier 2 review request, not an automatic correction.

## When to Use

- User wants to provide feedback on a skill's output
- An agent output seems incorrect, incomplete, or off-brand
- A domain lead wants to submit a correction example
- Tier 1 owner wants to update skill behavior based on observations
- Periodic feedback triage (weekly or on-demand)

## Input

`$ARGUMENTS`: `<skill-name>` optionally followed by `--tier <1|2|3>`

If `--tier` is not provided, ask: "What is your name and role?" then map to tier:
- Matches `Dr. Lewis`, `jlewis@mblpartners.com`, `John Lewis` → Tier 1
- Matches `Matt Mathison`, `Matt` → Tier 1
- Matches any registered domain lead (from registry) → Tier 2
- All others → Tier 3

## Feedback Collection Process

### Step 1 — Identify Skill and Submitter Tier

Confirm:
1. Which skill received the feedback? (`$ARGUMENTS` or ask)
2. What is the submitter's name/identity?
3. Map to permission tier.

### Step 2 — Collect Feedback by Tier

**Tier 1 Feedback Form:**
```
Skill: <name>
Submitter: <name> (Tier 1 Owner)
Date: <today>
Feedback Type: [Behavior Change | Prompt Update | Output Schema Change | Bug Fix | Deprecate]
Description: <free text — no limit>
Correction Example:
  Input: <what was given to the skill>
  Bad Output: <what the skill produced>
  Correct Output: <what it should have produced>
Action: [Immediate | Schedule Next Review | Queue for v-bump]
```

**Tier 2 Feedback Form:**
```
Skill: <name>
Submitter: <name> (Tier 2 — <domain>)
Date: <today>
Feedback Type: [Incorrect Output | Incomplete Output | Wrong Tone | Missing Edge Case | Other]
Description: <free text, 500 char limit>
Example:
  Input Summary: <brief description of what was given>
  Issue: <what was wrong>
  Suggested Fix: <optional — may be blank>
Severity: [High — blocking use | Medium — workaround exists | Low — minor polish]
```

**Tier 3 Feedback Form:**
```
Skill: <name>
Submitter: <anonymous or name> (Tier 3 — End User)
Date: <today>
Signal: [👍 Helpful | 👎 Not Helpful]
(No free text accepted from Tier 3)
```

### Step 3 — Route and Store

Write the feedback entry to: `~/.agents/skills/<skill-name>/feedback-log.md`

Append in this format:
```markdown
---
## Feedback Entry — <date>
**Tier:** <1|2|3>
**Submitter:** <name>
**Type:** <type>
**Severity:** <High|Medium|Low|Signal>
<feedback content>
---
```

Create the file if it doesn't exist.

### Step 4 — Escalation Logic

After recording, evaluate:

| Condition | Action |
|-----------|--------|
| Tier 1 feedback with Action = Immediate | Flag for Dr. Lewis: "Tier 1 correction recorded for `<skill>` — immediate action requested." |
| Tier 2 High severity | Flag: "High-severity Tier 2 feedback on `<skill>` — recommend Tier 1 review." |
| 5+ Tier 3 👎 signals on same skill | Trigger: "Volume threshold reached on `<skill>` — escalating to Tier 2 for review." Log escalation event. |
| Tier 3 attempts free-text correction | Reject politely: "Feedback noted as a signal. Detailed corrections require Tier 2 or Tier 1 access. Thank you." |

### Step 5 — Feedback Triage Mode

When invoked as `/skill-feedback-collector triage`:
- Read all `feedback-log.md` files across `~/.agents/skills/`
- Summarize open (unresolved) feedback by skill
- Flag any skills with 3+ open Tier 2 items or 10+ Tier 3 👎 signals
- Output a prioritized review queue for Tier 1 action

## Output Format

After recording feedback:
```
✅ Feedback recorded for `<skill-name>`
Tier: <tier>
Type: <type>
Severity: <severity>
Stored: ~/.agents/skills/<skill-name>/feedback-log.md

<escalation message if triggered, otherwise "No escalation threshold met.">
```

## Output Contract

- Always confirms what was stored and where
- Always states escalation status
- Never fabricates correction examples
- Never modifies SKILL.md directly — only records feedback for Tier 1 review
- Tier 3 rejections are polite and non-judgmental

## System Dependencies

- **Reads from:** `~/.agents/skills/<name>/SKILL.md`, `~/.agents/skills/<name>/feedback-log.md`
- **Writes to:** `~/.agents/skills/<name>/feedback-log.md`
- **Does NOT write to:** SKILL.md directly — changes require Tier 1 approval

## Deprecation

Review quarterly. Retire if a more capable feedback mechanism (e.g., integrated RLHF pipeline) is deployed at the infrastructure level.
