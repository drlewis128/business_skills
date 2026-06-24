---
name: agops-skill-installer
description: "Install new skills to the MBL skill library. Use when: adding a new skill to the library, deploying a skill file, installing a SKILL.md to ~/.agents/skills, creating a symlink for a new agent skill, copying a skill to the business_skills repo, registering a skill in the registry, committing a new skill to GitHub, pushing a skill to drlewis128/business_skills, wiring a skill into Claude Code, verifying skill accessibility after installation, adding a department skill, onboarding a new agent capability, installing a skill for Allevio, installing a skill for HIVE Partners, installing a skill for Column6, installing a skill for MBL HoldCo, creating ~/.claude/skills symlink, updating project_skill_registry.md after install, running post-install verification, installing a batch of skills at once"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "<skill-name> [--department <dept>] [--entity <entity>] [--batch <list>]"
---

# agops-skill-installer

Installs new skills into the MBL agent skill library, wiring each skill into the correct path, symlink, GitHub repo, and registry. This skill covers the full installation lifecycle — from dropping the SKILL.md at `~/.agents/skills/<name>/SKILL.md` through verification that the skill surfaces in Claude Code.

## When to Use

- A new SKILL.md has been authored and needs to be deployed into the live MBL skill library at `~/.agents/skills/`
- A batch of skills arrives from a new department build and must all be installed, symlinked, and registered in one operation
- A skill was created for a portfolio entity (Allevio, HIVE, Column6) and needs entity-scoped installation with correct department folder placement
- A post-install verification is needed to confirm Claude Code can invoke the skill by name without error

## agops-skill-installer Framework

```
SKILL INSTALLATION PROTOCOL — MBL PARTNERS AGENT OPERATIONS

1. PRE-INSTALL VALIDATION
   - Confirm SKILL.md passes agops-skill-validator before any file write
   - Check that skill name is lowercase, hyphenated, prefixed correctly
   - Verify no name collision with existing skills in registry
   - Confirm department folder exists: ~/Projects/business_skills/departments/<dept>/
   - For PHI-adjacent skills (Allevio): confirm HITL checkpoint is present in SKILL.md

2. INSTALLATION PATHS
   PRIMARY INSTALL:
     ~/.agents/skills/<skill-name>/SKILL.md

   REPO COPY:
     ~/Projects/business_skills/departments/<department>/<skill-name>/SKILL.md

   SYMLINK:
     ln -sf ~/.agents/skills/<skill-name> ~/.claude/skills/<skill-name>

3. REGISTRY UPDATE
   File: ~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md
   - Add skill entry under correct department section
   - Include: name, one-line description, entity scope (if applicable)
   - Increment total skill count in registry header
   - Note date of installation

4. GIT COMMIT AND PUSH
   Repo: ~/Projects/business_skills (drlewis128/business_skills)
   Steps:
     git add departments/<dept>/<skill-name>/SKILL.md
     git commit -m "feat: install <skill-name> — <one-line description>"
     git push origin main
   - Never push credentials, PHI, or entity financial data to the public repo
   - Confirm push succeeds before marking installation complete

5. POST-INSTALL VERIFICATION
   - Confirm SKILL.md exists at primary install path
   - Confirm symlink resolves correctly (ls -la ~/.claude/skills/<name>)
   - Confirm skill name appears in registry under correct department
   - Confirm git push landed on drlewis128/business_skills (check GitHub)
   - Invoke skill via Claude Code to confirm it surfaces without error

6. BATCH INSTALLATION
   - Process skills sequentially; do not parallel-write to registry
   - Log each install as: INSTALLED | SKIPPED (collision) | FAILED (validation)
   - Deliver batch summary report to Dr. Lewis before registry commit

7. ENTITY SCOPING RULES
   Allevio    → departments/healthcare/ | PHI prohibition note mandatory
   HIVE       → departments/energy/     | LP data isolation note mandatory
   Column6    → departments/media/      | CCPA note mandatory if user-data adjacent
   MBL HoldCo → departments/<dept>/     | Standard install

8. HITL CHECKPOINT
   - Dr. Lewis must approve registry commit before push for any Integrity/PHI skill
   - All other installs: Dr. Lewis reviews batch summary; auto-proceed on silence >4h
```

## Output Format

```markdown
## Skill Installation Report

**Skill:** <skill-name>
**Department:** <department>
**Entity Scope:** <All | Allevio | HIVE | Column6 | MBL HoldCo>
**Installed By:** agops-skill-installer v1.0.0
**Date:** <YYYY-MM-DD>

### Installation Checklist
- [ ] SKILL.md written to ~/.agents/skills/<name>/SKILL.md
- [ ] Repo copy written to ~/Projects/business_skills/departments/<dept>/<name>/SKILL.md
- [ ] Symlink created: ~/.claude/skills/<name> → ~/.agents/skills/<name>
- [ ] Registry updated: project_skill_registry.md (+1 skill, total: <N>)
- [ ] Git committed: <commit hash>
- [ ] Git pushed to drlewis128/business_skills ✓
- [ ] Post-install verification: skill surfaces in Claude Code ✓

### Notes
<Any collisions resolved, entity notes, HITL flags>
```

## Output Contract

- **Installation is atomic or it does not count.** Every step in the protocol — SKILL.md file write, repo copy, symlink, registry update, git commit, git push, and verification — must complete successfully before the installation is marked done. A skill that exists on disk but is not in the registry, not symlinked, or not pushed to GitHub is in a broken state; this skill flags the gap and halts rather than reporting false success. The installation report lists each step with explicit pass/fail, not a summary assertion.

- **Entity scoping and compliance notes travel with the skill.** When a skill is installed for Allevio, the installation report explicitly records the PHI prohibition. When installed for HIVE, the LP data isolation requirement is noted. When installed for Column6, any CCPA scope is flagged. These notes are written into the registry entry so that any operator who later looks up the skill sees the compliance posture without needing to open the SKILL.md — compliance context must not be siloed in a file that few people read.

- **The registry is the authoritative count; the skill library is the authoritative content.** These two sources must always agree. This skill does not increment the registry count until the file is confirmed on disk, and it does not mark git as done until the push is confirmed. If a batch install partially fails, the registry reflects only successfully installed skills, and Dr. Lewis receives a failure report for the remainder. Phantom registry entries — skills counted but not installed — are treated as audit failures.

## System Dependencies

**Reads from:**
- `~/.agents/skills/` — existing skill library (collision check)
- `~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md` — current registry and skill count
- `~/Projects/business_skills/departments/` — repo structure for department folder validation

**Writes to:**
- `~/.agents/skills/<skill-name>/SKILL.md` — primary install target
- `~/.claude/skills/<skill-name>` — symlink (points to primary)
- `~/Projects/business_skills/departments/<dept>/<skill-name>/SKILL.md` — repo copy
- `project_skill_registry.md` — registry update
- `drlewis128/business_skills` (GitHub) — via git push

**HITL Required:**
- Dr. Lewis must approve registry push for any PHI-adjacent or Integrity-category skill
- Batch installs require Dr. Lewis review of summary before final registry commit
- Any installation that resolves a name collision requires explicit Dr. Lewis confirmation

## Test Cases

**Golden Path:** A new `fin-ops-escrow-tracker` SKILL.md is authored and validated. The installer writes it to `~/.agents/skills/fin-ops-escrow-tracker/SKILL.md`, copies it to `~/Projects/business_skills/departments/finance/fin-ops-escrow-tracker/SKILL.md`, creates the symlink, updates the registry with an incremented count, commits with message `feat: install fin-ops-escrow-tracker`, pushes to GitHub, and verifies the skill surfaces in Claude Code. Installation report shows all checkboxes green.

**Edge Case:** A batch of 12 skills arrives for installation. Skill #7 has a name collision with an existing `hr-offboarding-manager`. The installer logs skill #7 as SKIPPED, continues processing skills #8–#12, and delivers a batch summary to Dr. Lewis showing 11 INSTALLED and 1 SKIPPED with the collision detail. The registry is updated for the 11 successful installs only.

**Adversarial:** A SKILL.md for an Allevio-scoped skill arrives without a HITL checkpoint for PHI. The installer detects the missing PHI checkpoint during pre-install validation, halts the installation, and returns a validation failure report to Dr. Lewis with the specific missing section identified. No files are written, no symlinks are created, and the registry is not updated until the SKILL.md is corrected and re-submitted.

## Audit Log

Every installation operation is logged with: skill name, department, entity scope, installer version, timestamp, each step result (pass/fail), git commit hash, and Dr. Lewis approval status where required. Logs are appended to `~/.agents/logs/agops-skill-installer.log` and retained for 90 days. Batch installs produce a single log entry per batch with per-skill step results embedded. Failed installations are flagged for Dr. Lewis review within one business day. The audit log is the authoritative record of when a skill entered the MBL library and who approved it.

## Deprecation

This skill is deprecated when MBL adopts a centralized skill registry API that handles installation, symlinking, registry updates, and git operations as a single atomic transaction through a dedicated service — eliminating the need for step-by-step orchestration via an agent skill. Until that infrastructure exists, `agops-skill-installer` is the canonical installation protocol and must not be bypassed in favor of manual file operations, which produce unaudited, partially-installed skills.
