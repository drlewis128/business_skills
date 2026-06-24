---
name: agops-skill-deprecator
description: "Deprecate and retire skills from the MBL library. Use when: retiring a skill, removing a skill from the library, deprecating a superseded skill, archiving an obsolete skill, removing symlinks for a retired skill, marking a skill as deprecated in frontmatter, issuing a 30-day deprecation notice, moving a skill to the deprecated folder, updating registry after skill removal, checking which agents use a skill before deprecating, identifying impact of removing a skill, deprecating a skill with compliance risk, retiring an Allevio skill, retiring a HIVE skill, retiring a Column6 skill, sunsetting an agent capability, removing a skill no longer aligned with THRIVE, deprecating a duplicate skill, retiring a skill after portfolio entity exit, decommissioning a skill after system migration"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "<skill-name> --reason <deprecation-reason> [--immediate] [--archive-path <path>]"
---

# agops-skill-deprecator

Manages the controlled retirement of skills from the MBL agent library, covering impact assessment, deprecation notice, archival, symlink removal, and registry update. No skill is removed from the library without an impact check and Dr. Lewis approval — deprecation is irreversible from a workflow perspective and must be handled with the same rigor as installation.

## When to Use

- A skill has been superseded by a newer, higher-quality skill that covers the same function, and the old version should be retired to prevent agents from routing to the inferior option
- A compliance risk has been identified in a deployed skill — for example, an Allevio skill that was discovered to lack adequate PHI safeguards and cannot be safely fixed through an update
- A portfolio entity is no longer relevant (exit, wind-down, or restructuring) and the entity-specific skills tied to it should be archived rather than left active in the library
- A skill is flagged as misaligned with THRIVE values (particularly Integrity or Respect) during an audit and cannot be corrected through a standard update

## agops-skill-deprecator Framework

```
SKILL DEPRECATION PROTOCOL — MBL PARTNERS AGENT OPERATIONS

1. DEPRECATION TRIGGER CLASSIFICATION
   SUPERSEDED    — replaced by a better skill; old skill is redundant
   COMPLIANCE    — PHI/CCPA/LP risk identified; cannot be safely corrected
   ENTITY EXIT   — portfolio company exited or restructured; skill is orphaned
   THRIVE FAIL   — skill persistently misaligned on Integrity or Respect
   DUPLICATE     — skill is a near-exact duplicate of another installed skill
   Classify before proceeding; drives notice period and approval requirements

2. IMPACT ASSESSMENT (MANDATORY BEFORE ANY ACTION)
   Answer all of the following:
     - Which Krista.ai workflows invoke this skill by name?
     - Which Monday.com automation chains reference this skill?
     - Is this skill referenced in Matt Mathison's active workflow stack?
     - Is this skill in the Meeting Intelligence pipeline (Phase 2/3)?
     - Does any other skill's System Dependencies section reference this skill?
     - When was this skill last invoked? (from audit log)
     - Who originally requested this skill be installed?
   Output: Impact Summary — HIGH | MEDIUM | LOW | NONE

3. DR. LEWIS APPROVAL (REQUIRED FOR ALL DEPRECATIONS)
   Present to Dr. Lewis:
     - Skill name and current version
     - Deprecation trigger classification
     - Impact Summary (HIGH/MEDIUM/LOW/NONE)
     - Replacement skill name (if SUPERSEDED)
     - Proposed deprecation date
     - Archive path
   Dr. Lewis approves or rejects before any file changes are made.
   COMPLIANCE triggers: escalate immediately; do not wait for next review cycle.

4. DEPRECATION NOTICE PERIOD
   HIGH impact:  30-day notice to all dependent workflow owners
   MEDIUM impact: 14-day notice to Dr. Lewis; notify dependent owners
   LOW/NONE impact: 7-day notice period (or waive with Dr. Lewis approval)
   COMPLIANCE/THRIVE FAIL: immediate deprecation permitted; Dr. Lewis decides
   During notice period: add deprecation warning to SKILL.md frontmatter:
     deprecated: true
     deprecated_reason: "<reason>"
     deprecated_replacement: "<replacement-skill-name or null>"
     deprecated_date: "<YYYY-MM-DD>"

5. DEPRECATION EXECUTION (POST-NOTICE OR IMMEDIATE)
   Step 1: Mark SKILL.md as deprecated (frontmatter fields above)
   Step 2: Move skill folder to archive:
     mv ~/.agents/skills/<name> ~/.agents/skills/deprecated/<name>
   Step 3: Remove symlink:
     rm ~/.claude/skills/<name>
   Step 4: Move repo copy to archive folder:
     mv ~/Projects/business_skills/departments/<dept>/<name>
        ~/Projects/business_skills/deprecated/<name>
   Step 5: Git commit and push:
     git commit -m "deprecate(<name>): <reason> — archived to deprecated/"
     git push origin main

6. REGISTRY UPDATE
   - Remove skill entry from active section of project_skill_registry.md
   - Add entry to DEPRECATED section with: name, date, reason, replacement
   - Decrement total active skill count in registry header
   - Note: deprecated section is retained for audit trail; do not delete entries

7. DEPENDENT WORKFLOW REMEDIATION
   - If HIGH impact: coordinate with Dr. Lewis to update Krista.ai workflows
     before or during notice period (not after deprecation executes)
   - If replacement skill exists: update workflow configs to invoke replacement
   - Confirm replacement skill is installed and verified before deprecation executes

8. POST-DEPRECATION VERIFICATION
   - Confirm ~/.agents/skills/<name> no longer exists (moved to deprecated/)
   - Confirm ~/.claude/skills/<name> symlink is removed
   - Confirm registry shows deprecated status
   - Confirm git push landed
   - Confirm no active Krista.ai workflows still reference deprecated skill name
```

## Output Format

```markdown
## Skill Deprecation Report

**Skill:** <skill-name>
**Version at Deprecation:** <version>
**Deprecation Trigger:** SUPERSEDED | COMPLIANCE | ENTITY EXIT | THRIVE FAIL | DUPLICATE
**Impact Assessment:** HIGH | MEDIUM | LOW | NONE
**Deprecation Date:** <YYYY-MM-DD>
**Deprecator:** agops-skill-deprecator v1.0.0

### Impact Summary
- Krista.ai workflows affected: <N> (<list>)
- Monday.com chains affected: <N>
- Matt Mathison workflow stack: AFFECTED | NOT AFFECTED
- Last invocation: <date from audit log>
- Replacement skill: <skill-name or "none">

### Notice Period
- Notice issued: <YYYY-MM-DD>
- Notice period: <N> days
- Dependent owners notified: <list>

### Deprecation Checklist
- [ ] SKILL.md frontmatter updated (deprecated: true)
- [ ] Skill moved to ~/.agents/skills/deprecated/<name>
- [ ] Symlink removed: ~/.claude/skills/<name>
- [ ] Repo copy moved to deprecated/ folder
- [ ] Git committed: <hash>
- [ ] Git pushed to drlewis128/business_skills ✓
- [ ] Registry updated: active skill count <old> → <new>
- [ ] Dependent workflows updated to use replacement

### Dr. Lewis Approval
Approved by: Dr. John Lewis
Approval date: <YYYY-MM-DD>
```

## Output Contract

- **Every deprecation begins with a mandatory impact assessment — no exceptions, including COMPLIANCE triggers.** Even when a skill must be deprecated immediately due to a compliance risk, Dr. Lewis receives the impact summary before execution begins. A compliance trigger accelerates the timeline but does not eliminate the assessment; it is entirely possible that a non-compliant skill is embedded in Matt Mathison's active workflow stack, and deprecating it without warning that context creates operational disruption on top of the compliance issue. The impact assessment takes minutes and prevents cascading failures that take days to untangle.

- **The deprecated skill is archived, not deleted.** Moving to `~/.agents/skills/deprecated/` and `~/Projects/business_skills/deprecated/` preserves the full skill history for audit purposes, rollback consideration, and compliance review. Deleting a skill from disk and from the repo eliminates the evidence trail of what that skill did, what systems it wrote to, and what HITL requirements it had — information that may be required during a regulatory audit, particularly for Allevio HIPAA compliance reviews. The deprecated section of the registry similarly retains entries permanently; it is a historical record, not a trash bin.

- **Dependent workflows must be updated before or during the notice period, not after deprecation executes.** The deprecation notice period exists so that Dr. Lewis and the affected workflow owners have time to wire in the replacement skill before the old one disappears. Executing deprecation while a Krista.ai workflow still references the deprecated skill name produces silent failures — the workflow invokes a skill that no longer exists, returns no output, and may not surface an error unless logging is robust. This skill tracks dependent workflow remediation as a blocking checklist item: deprecation does not execute until either the workflows are updated or Dr. Lewis explicitly waives the requirement for LOW/NONE impact cases.

## System Dependencies

**Reads from:**
- `~/.agents/skills/<name>/SKILL.md` — current skill to be deprecated
- `~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md` — registry for impact assessment and update
- `~/.agents/logs/agops-skill-installer.log` — last invocation date
- Krista.ai workflow configurations — dependency mapping
- `~/Projects/business_skills/departments/<dept>/` — repo copy location

**Writes to:**
- `~/.agents/skills/<name>/SKILL.md` — deprecated: true frontmatter (notice period)
- `~/.agents/skills/deprecated/<name>/` — archive destination
- `~/.claude/skills/<name>` — symlink removed
- `~/Projects/business_skills/deprecated/<name>/` — repo archive
- `project_skill_registry.md` — active count decremented; deprecated entry added
- `drlewis128/business_skills` (GitHub) — via git push
- `~/.agents/logs/agops-skill-deprecator.log` — deprecation audit log

**HITL Required:**
- Dr. Lewis approval required for ALL deprecations before any file changes
- Dr. Lewis immediate notification for COMPLIANCE or THRIVE FAIL triggers
- Matt Mathison notification if deprecation affects his active workflow stack

## Test Cases

**Golden Path:** `agops-skill-search-v1` is superseded by the newly installed `agops-skill-search` (v2 architecture). Impact assessment shows LOW impact — it appears in 0 active Krista.ai workflows and was last invoked 45 days ago. Dr. Lewis approves with a 7-day notice period. After 7 days, the skill is archived, the symlink removed, the registry updated (active count -1), the deprecated entry added, and the git commit pushed. Post-deprecation verification confirms no active references remain.

**Edge Case:** A skill is flagged for deprecation as SUPERSEDED but impact assessment reveals it is referenced in 3 active Krista.ai workflows and one of them feeds Matt Mathison's weekly summary. The deprecator classifies this as HIGH impact, issues a 30-day notice, notifies Dr. Lewis with the Matt Mathison workflow flag, and begins coordinating with the Krista.ai team to update the 3 workflows to use the replacement skill before the 30-day window closes. Deprecation execution is blocked until all 3 workflows are confirmed updated.

**Adversarial:** A request arrives to immediately delete (not archive) an Allevio-scoped skill with compliance issues, bypassing the archive step to "avoid confusion." The deprecator rejects the delete-instead-of-archive request, explains that archive retention is mandatory for HIPAA audit trail purposes, escalates the compliance issue to Dr. Lewis immediately per COMPLIANCE trigger protocol, and proceeds with the standard deprecation (mark → archive → remove symlink → update registry → git push) rather than deletion. The specific reason for the archive requirement is logged.

## Audit Log

Every deprecation operation is logged with: skill name, version at deprecation, trigger classification, impact assessment result, dependent workflows identified, notice period issued, Dr. Lewis approval timestamp, each execution step result (pass/fail), git commit hash, and post-deprecation verification status. Logs are appended to `~/.agents/logs/agops-skill-deprecator.log` and retained indefinitely — deprecation is a permanent action and its audit trail does not expire. COMPLIANCE-trigger deprecations are also noted in the MBL AI governance record maintained by Dr. Lewis.

## Deprecation

This skill is deprecated when MBL's agent skill platform includes a built-in lifecycle manager that enforces impact assessment, approval workflows, notice periods, and archival as platform-level features — eliminating the need to orchestrate retirement through an agent skill. Until that platform capability exists, `agops-skill-deprecator` is the only approved path to retire a skill from the MBL library; skills removed by direct file deletion without running this skill are treated as unauthorized removals and flagged in the next governance audit.
