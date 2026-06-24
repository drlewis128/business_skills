---
name: agops-skill-updater
description: "Update an existing skill in the MBL library. Use when: editing an existing SKILL.md, revising a skill after feedback, updating skill after entity context changed, updating skill after system dependency changed, updating skill output format, incorporating Callie feedback into a skill, incorporating Fitz feedback into a skill, fixing a quality issue in a deployed skill, incrementing skill version in frontmatter, copying updated skill to business_skills repo, committing a skill update to GitHub, updating registry metadata after a skill change, checking backward compatibility after skill edit, updating Allevio skill after compliance change, updating HIVE skill after LP data policy change, updating skill after Krista.ai integration change, updating skill after Monday.com integration change, revising trigger phrases in a skill, updating HITL checkpoints in a skill, patching a skill bug found in production"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "<skill-name> --reason <update-reason> [--version-bump patch|minor|major]"
---

# agops-skill-updater

Manages the lifecycle update process for existing skills in the MBL agent library, covering trigger identification, edit-validate-commit workflow, version increment, backward compatibility assessment, and Dr. Lewis approval for sensitive changes. Every update is traceable, versioned, and pushed to the canonical repo before it is considered complete.

## When to Use

- A skill's entity context has changed — for example, Allevio expands its scope or HIVE adds a new LP reporting requirement — and the SKILL.md must be revised to reflect the new reality
- Callie or Fitz has provided feedback during skill testing that identifies a quality gap, format issue, or missing section in a deployed skill
- A system dependency has changed — Krista.ai adds a new capability, Monday.com changes an API, or GoHighLevel CRM fields are restructured — and the skill's System Dependencies section is now stale
- A skill's output format or Output Contract has evolved based on real usage, and the SKILL.md must be updated to match what the skill actually produces

## agops-skill-updater Framework

```
SKILL UPDATE PROTOCOL — MBL PARTNERS AGENT OPERATIONS

1. UPDATE TRIGGER CLASSIFICATION
   Classify the update reason before any edits:
     CONTENT    — entity context, system dependency, or output format changed
     QUALITY    — format issue, missing section, thin Output Contract bullet
     COMPLIANCE — PHI/CCPA/LP data posture changed; Integrity THRIVE flag
     PATCH      — typo, broken link, minor wording fix; no structural change
   Compliance updates → require Dr. Lewis approval before any file write
   Content/Quality/Patch → Dr. Lewis reviews diff before git push

2. PRE-EDIT CHECKS
   - Confirm skill exists at ~/.agents/skills/<name>/SKILL.md
   - Note current version from frontmatter (e.g., 1.0.0)
   - Determine version bump: patch (typo/wording), minor (content/quality), major (structural/compliance)
   - Read current SKILL.md in full; note all sections before editing
   - Flag any sections that may be affected by the update reason

3. EDIT PROCESS
   - Edit ~/.agents/skills/<name>/SKILL.md directly
   - Increment version in frontmatter:
       patch: 1.0.0 → 1.0.1
       minor: 1.0.0 → 1.1.0
       major: 1.0.0 → 2.0.0
   - Record update reason in a comment below the version if COMPLIANCE type:
       # Updated: <YYYY-MM-DD> | Reason: <compliance change description>
   - Do NOT change the skill name field (breaks symlinks and registry entries)
   - Do NOT remove sections; add content, don't subtract structure

4. POST-EDIT VALIDATION
   - Run agops-skill-validator on the updated SKILL.md
   - All format checks must still PASS after the edit
   - If update introduced a new entity scope (e.g., skill now covers Allevio):
       → PHI prohibition must be added before validation passes
   - WARN or FAIL from validator → fix before proceeding

5. BACKWARD COMPATIBILITY CHECK
   Which agents and workflows reference this skill?
     - Search project_skill_registry.md for cross-references
     - Check Krista.ai workflow configs for skill invocations
     - If skill output format changed: notify dependent workflows before push
   Breaking change = major version bump + Dr. Lewis notification

6. REPO COPY AND GIT COMMIT
   - Copy updated SKILL.md to repo:
       ~/Projects/business_skills/departments/<dept>/<name>/SKILL.md
   - Git commit message format:
       fix(<name>): <patch description>          (patch)
       feat(<name>): <content change summary>    (minor)
       feat!(<name>): <structural change summary> (major)
   - git push origin main
   - Confirm push landed before marking update complete

7. REGISTRY UPDATE (if metadata changed)
   - If tier, owner, or description changed → update registry entry
   - If skill was renamed (major) → update registry name field
   - Note updated version in registry entry
   - Do NOT increment total skill count (not a new install)

8. DR. LEWIS APPROVAL GATES
   COMPLIANCE updates: approval required BEFORE file write
   MAJOR version bumps: approval required BEFORE git push
   Allevio PHI-adjacent changes: approval required at every stage
   HITL checkpoint changes: approval required regardless of version level

9. POST-UPDATE NOTIFICATION
   - Notify Dr. Lewis: skill name, version bump, reason, git commit hash
   - If Callie/Fitz submitted the feedback: confirm update to them
   - If breaking change: notify all dependent workflow owners
```

## Output Format

```markdown
## Skill Update Report

**Skill:** <skill-name>
**Previous Version:** <old-version>
**New Version:** <new-version>
**Update Type:** CONTENT | QUALITY | COMPLIANCE | PATCH
**Updated:** <YYYY-MM-DD>
**Updater:** agops-skill-updater v1.0.0

### Changes Made
| Section         | Change Description                          |
|-----------------|---------------------------------------------|
| <section>       | <what changed and why>                      |

### Validation Result
agops-skill-validator: PASS | WARN | FAIL
<Any validator notes>

### Backward Compatibility
- Dependent workflows identified: <N>
- Breaking change: YES | NO
- Notifications sent: <list or "none required">

### Git Commit
Commit: <hash>
Message: <commit message>
Pushed to: drlewis128/business_skills ✓

### Dr. Lewis Approval
Required: YES | NO
Status: APPROVED | PENDING | NOT REQUIRED

### Summary
<1-2 sentence plain-English description of what changed and why>
```

## Output Contract

- **Version increments are semantic and mandatory — no update ships without a version bump.** A patched typo is 1.0.0 → 1.0.1; a revised Output Format or new entity context is 1.0.0 → 1.1.0; a structural change that breaks dependent workflows is 1.0.0 → 2.0.0. The version in the frontmatter is the only authoritative record of a skill's evolution, and it must be updated on every commit. Skills where the frontmatter version has not changed since the last git commit are in a broken state — the file changed but the version did not, making audit trails unreliable and rollback impossible.

- **Compliance and PHI-adjacent updates require Dr. Lewis approval before any file write.** When an update changes the compliance posture of a skill — adding or removing a PHI prohibition, modifying HITL checkpoints, changing entity scope to include Allevio — the update plan is presented to Dr. Lewis and approved before the editor touches the file. This is not a review-after-the-fact process: the edit does not happen until Dr. Lewis says proceed. For Allevio-scoped skills, this gate applies to every update regardless of how minor it appears, because PHI risk does not have a "minor patch" category.

- **The skill name field is never changed in an update; renaming a skill is a deprecate-and-install operation.** Changing the `name` field in frontmatter breaks symlinks, invalidates registry entries, and orphans any Krista.ai workflow that invokes the skill by name. If a skill genuinely needs a new name, the correct process is to deprecate the old skill via `agops-skill-deprecator` and install the new skill via `agops-skill-installer` as a fresh entry. The updater enforces this constraint by checking that the name field is unchanged before any git commit proceeds — a name change in the diff causes the updater to halt and redirect to the deprecate-and-install workflow.

## System Dependencies

**Reads from:**
- `~/.agents/skills/<name>/SKILL.md` — current skill file being updated
- `~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md` — registry for cross-reference and dependency check
- Krista.ai workflow configurations — checked for skill invocation dependencies
- `~/Projects/business_skills/departments/<dept>/` — repo copy for sync

**Writes to:**
- `~/.agents/skills/<name>/SKILL.md` — updated skill file (primary)
- `~/Projects/business_skills/departments/<dept>/<name>/SKILL.md` — repo copy
- `project_skill_registry.md` — updated if metadata changed
- `drlewis128/business_skills` (GitHub) — via git push
- `~/.agents/logs/agops-skill-updater.log` — update audit log

**HITL Required:**
- Dr. Lewis: COMPLIANCE updates (before file write), MAJOR version bumps (before push), all Allevio PHI-adjacent changes
- Dr. Lewis: final review of update report for any update touching HITL checkpoint sections
- Callie / Fitz: notified of update completion when they submitted the original feedback

## Test Cases

**Golden Path:** Fitz reports that the `agops-skill-installer` skill's Output Contract Bullet 3 is only 2 sentences. The updater classifies this as a QUALITY update, reads the current SKILL.md (v1.0.0), expands Bullet 3 to 4 sentences, increments the version to 1.0.1, runs agops-skill-validator (PASS), copies to the repo, commits with message `fix(agops-skill-installer): expand Output Contract bullet 3 to meet 3-sentence minimum`, pushes to GitHub, and delivers an update report to Dr. Lewis confirming completion.

**Edge Case:** An update is requested to add Monday.com as a new system dependency for `cs-renewal-coordinator` because a new Krista.ai workflow now pushes renewal alerts to Monday.com. The updater identifies this as a CONTENT update (minor bump), checks whether any existing workflows depend on the old dependency list, finds none, edits the System Dependencies section, increments to v1.1.0, validates (PASS), commits, and pushes. The update report notes the new dependency and confirms no backward compatibility issues.

**Adversarial:** A request arrives to update an Allevio-scoped skill by removing the PHI prohibition from the Output Contract, with the justification that "the skill doesn't actually touch patient data." The updater classifies this as a COMPLIANCE update, halts immediately, and presents the proposed change to Dr. Lewis with a clear explanation that removing the PHI prohibition requires Dr. Lewis review and cannot proceed automatically. No file write occurs until Dr. Lewis explicitly approves the change — and if approved, the approval is logged with a timestamp and justification before any edit is made.

## Audit Log

Every update operation is logged with: skill name, previous version, new version, update type classification, list of sections changed, agops-skill-validator result, backward compatibility findings, git commit hash, and Dr. Lewis approval status. Logs are appended to `~/.agents/logs/agops-skill-updater.log` and retained for 90 days. COMPLIANCE-type updates are retained for 12 months. The log provides a complete version history for every skill in the library, enabling rollback to any prior version and supporting compliance audit requests.

## Deprecation

This skill is deprecated when MBL's skill library is managed through a version-controlled CI/CD system with automated validation, semantic versioning enforcement, and approval workflows built into the GitHub pull request process — making the manual update orchestration performed by this skill redundant. Until that system is operational, `agops-skill-updater` is the required update path; direct file edits to `~/.agents/skills/` without running this skill produce unversioned, unaudited changes that violate MBL's agent governance standards.
