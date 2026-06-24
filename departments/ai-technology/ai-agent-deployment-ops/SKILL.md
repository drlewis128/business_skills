---
name: ai-agent-deployment-ops
description: "Deploy and manage Claude Code agents and skills in the MBL skill infrastructure. Use when the user says 'deploy a skill', 'install a skill', 'activate a skill', 'symlink a skill', 'skill symlink', 'skill installation', 'skill setup', 'skill directory', 'skill path', 'skill not loading', 'skill not found', 'skill not activating', 'skill missing', 'skill registry', 'skill inventory', 'skill list', 'what skills are installed', 'skill count', 'skill infrastructure', 'agents directory', 'claude skills directory', 'skill architecture', 'skill deployment pipeline', 'skill copy to repo', 'skill git commit', 'skill push', 'skill repo', 'business_skills repo', 'drlewis128 repo', 'deploy skills to repo', 'skill symlink repair', 'broken symlink', 'symlink missing', 'skill path issue', 'skill permissions', 'skill file structure', 'skill deployment checklist', 'install all skills', 'bulk install skills', 'skill deployment batch', or 'deploy department skills'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--skill <name>] [--department <name>] [--action <install|symlink|register|push|audit|repair>]"
---

# AI Agent Deployment Ops

Deploy and manage Claude Code agents and skills in MBL's skill infrastructure — installing SKILL.md files, creating symlinks, updating the skill registry, copying to the GitHub repo, and maintaining the full deployment pipeline from skill creation to activated capability. Deployment ops ensures every written skill is actually available for invocation.

## When to Use
- After writing new SKILL.md files — completing the installation pipeline
- After discovering a broken symlink or missing skill
- Quarterly skill infrastructure audit (symlinks; registry accuracy; repo sync)
- Bulk department installation after writing a new 40-skill department

## Skill Deployment Framework

```
SKILL INFRASTRUCTURE ARCHITECTURE:
  Primary location: ~/.agents/skills/<skill-name>/SKILL.md (source of truth)
  Symlink location: ~/.claude/skills/<skill-name> → ~/.agents/skills/<skill-name>
  Purpose: Claude Code invokes skills via ~/.claude/skills/; symlinks link to agents directory
  Repo location: ~/Projects/business_skills/departments/<department>/<skill-name>/ (shared/backup)
  Registry: ~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md
  
SINGLE SKILL INSTALLATION PIPELINE:
  Step 1: Write SKILL.md to ~/.agents/skills/<skill-name>/SKILL.md
  Step 2: Create symlink:
    ln -s ~/.agents/skills/<skill-name> ~/.claude/skills/<skill-name>
  Step 3: Verify symlink:
    ls -la ~/.claude/skills/<skill-name>
  Step 4: Update skill registry (project_skill_registry.md):
    → Increment totalSkills count
    → Add skill to correct department section
    → Update symlinksActive count
    → Update lastUpdated date
  Step 5: Copy to repo:
    cp -r ~/.agents/skills/<skill-name> ~/Projects/business_skills/departments/<department>/
  Step 6: Git commit + push:
    cd ~/Projects/business_skills && git add . && git commit -m "Add [skill-name]" && git push
  Step 7: Update MEMORY.md index (if registry version changes significantly)

BULK DEPARTMENT INSTALLATION (40 skills at once):
  Step 1: Write all 40 SKILL.md files (parallel pairs; 2 at a time for efficiency)
  Step 2: Create all symlinks in one loop:
    for skill in skill-1 skill-2 ... skill-40; do
      ln -s ~/.agents/skills/$skill ~/.claude/skills/$skill
    done
  Step 3: Verify all symlinks:
    ls -la ~/.claude/skills | grep "<department-prefix>" | wc -l  (should = 40)
  Step 4: Update registry (one update for entire department)
  Step 5: Copy department to repo:
    cp -r ~/.agents/skills/<department-prefix>-* ~/Projects/business_skills/departments/<department>/
  Step 6: Git commit + push (single commit for entire department)
  
SYMLINK REPAIR:
  Broken symlink symptoms: skill invocation fails; "skill not found" error; ls shows dangling link
  Diagnosis: ls -la ~/.claude/skills/<skill-name> → check if target exists
  Repair: rm ~/.claude/skills/<skill-name> && ln -s ~/.agents/skills/<skill-name> ~/.claude/skills/<skill-name>
  Bulk repair: ls -la ~/.claude/skills | grep "No such file or directory" → repair each
  
REGISTRY ACCURACY STANDARDS:
  totalSkills: count of unique SKILL.md files across all departments
  symlinksActive: count of valid symlinks in ~/.claude/skills/
  lastUpdated: date of most recent change (YYYY-MM-DD)
  Department sections: each department lists its skills with prefix and count
```

## Output Format

```markdown
# Skill Deployment Report — [Department or Skill Name]
**Deployed by:** Dr. Lewis | **Date:** [Date] | **Type:** [Single skill / Department batch]

---

## Deployment Summary
- Skills written: [N]
- Symlinks created: [N]
- Registry updated: v[X] → v[X+1]
- Skills added to registry: +[N] total = [new total]
- Repo copy: ✅ [N] files copied to ~/Projects/business_skills/departments/[department]/
- Git commit: [hash] — "[Commit message]"
- Push: ✅ main branch updated

---

## Verification
- Symlink check: [N]/[N] symlinks valid
- Registry count: [N] skills; [N] symlinks active
- Repo sync: ✅ / ❌ [issue if any]

## Post-Deployment
- [Any broken symlinks found and repaired]
- [Any registry discrepancies corrected]
```

## Output Contract
- Every written skill must complete the full installation pipeline before being considered deployed — a SKILL.md file sitting in ~/.agents/skills/ without a symlink in ~/.claude/skills/ is not an installed skill; it is a file; Claude Code cannot invoke it without the symlink; Dr. Lewis never reports a skill as "installed" until the symlink is confirmed and the registry is updated; the full pipeline takes 5 minutes per skill or 15 minutes per 40-skill department; skipping any step creates a gap between what the registry claims is installed and what is actually invocable
- Registry accuracy is verified after every deployment — after updating the registry, Dr. Lewis cross-checks the totalSkills count against the actual directory count (`ls ~/.agents/skills | wc -l`) and the symlinksActive count against the actual symlink count (`ls ~/.claude/skills | wc -l`); a registry that says 1,328 skills when 1,342 are installed is a misleading registry; the cross-check takes 30 seconds and prevents registry drift from compounding over multiple deployments
- HITL required: bulk deployment → Dr. Lewis reviews symlink count and registry update before git push; repo push → Dr. Lewis approves commit message and confirms correct files staged; skill deprecation → skill removed from symlinks and registry (not deleted from ~/.agents/skills/ — archived); registry version increment → Dr. Lewis updates MEMORY.md index to reflect new version; any deployment affecting Matt Mathison workflow skills → Matt notified at next AI briefing

## System Dependencies
- **Reads from:** ~/.agents/skills/ (skill source files); ~/.claude/skills/ (symlink status); project_skill_registry.md (current registry); ~/Projects/business_skills/ (repo state); git log (deployment history)
- **Writes to:** ~/.claude/skills/ (symlinks); project_skill_registry.md (registry updates); MEMORY.md (index updates); ~/Projects/business_skills/departments/ (repo copies); git (commits + pushes to drlewis128/business_skills)
- **HITL Required:** Bulk deployment → Dr. Lewis reviews before push; repo push → Dr. Lewis approves; deprecation → Dr. Lewis removes from symlinks + registry; registry version increment → MEMORY.md updated; Matt Mathison workflow skills → Matt notified

## Test Cases
1. **Golden path:** 40 ai-* skills written. Bulk symlink loop executed: `for skill in ai-use-case-evaluator ai-krista-workflow-builder [... 38 more ...]; do ln -s ~/.agents/skills/$skill ~/.claude/skills/$skill; done`. Verification: `ls ~/.claude/skills | grep "^ai-" | wc -l` → 42 (40 new + 2 existing). Registry updated: totalSkills +40; symlinksActive +40; version v27 → v28. Repo copy: `cp -r ~/.agents/skills/ai-* ~/Projects/business_skills/departments/ai-technology/`. Git commit: "Add AI & Technology department — 40 MBL-specific skills (ai-* prefix)". Push confirmed. MEMORY.md updated. All 40 skills invocable.
2. **Edge case:** After a macOS system update, 12 symlinks in ~/.claude/skills/ are broken (dangling) → Dr. Lewis: "Running symlink audit: `ls -la ~/.claude/skills | grep -v " → " | grep "^l"` → 12 broken symlinks identified. Repair loop: `for skill in [12 broken skill names]; do rm ~/.claude/skills/$skill && ln -s ~/.agents/skills/$skill ~/.claude/skills/$skill && echo "Repaired: $skill"; done`. Post-repair verification: `ls -la ~/.claude/skills | wc -l` → all valid. Registry symlinksActive count verified. 12 skills restored to invocable state."
3. **Adversarial:** The skill registry says 1,328 total skills, but `ls ~/.agents/skills | wc -l` returns 1,345 → Dr. Lewis: "Registry drift detected — 17 skills in the agents directory that are not counted in the registry. This likely means skills were written in a previous session without registry updates, or registry updates were partial. I'll audit: (1) List all skills in ~/.agents/skills/; (2) Cross-reference against registry; (3) Identify the 17 missing entries; (4) Add them to the correct registry sections with correct prefixes and departments; (5) Update totalSkills to 1,345; (6) Verify symlinks exist for all 17 (if not, create them); (7) Commit updated registry. Going forward: registry update is a mandatory step in the deployment pipeline — I'll add a post-deployment verification check."

## Audit Log
Deployment records (all departments; all dates; git commit hashes; SharePoint). Symlink audit records (quarterly; broken symlink repair records). Registry version history (all versions). MEMORY.md update records. Repo sync records. Registry drift events and remediation.

## Deprecation
Deployment pipeline reviewed when skill invocation mechanism changes (Claude Code updates). Symlink architecture reviewed if Claude moves to a different skill loading mechanism. Registry format reviewed when the number of departments or skills grows beyond manageable size. Git repo structure reviewed when business_skills repo organization changes.
