---
name: agops-skill-validator
description: "Validate a skill meets MBL quality standards before deployment. Use when: checking a SKILL.md before installation, validating skill format, verifying all 9 sections are present, checking frontmatter completeness, confirming 20+ trigger phrases exist, validating Output Contract has 3 long bullets, checking entity context is threaded in, verifying HITL checkpoints are defined, confirming MBL systems are referenced, validating test cases cover golden path and edge and adversarial, checking THRIVE values alignment, running pre-deployment quality gate, auditing a skill for compliance posture, confirming Dr. Lewis sign-off protocol is present, validating Allevio PHI prohibition, checking HIVE LP data isolation, validating Column6 CCPA scope, checking skill tier and owner metadata, confirming argument-hint is present, pre-install quality check"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "<skill-name-or-path> [--strict] [--entity <entity>] [--report-only]"
---

# agops-skill-validator

Runs a structured quality gate on any SKILL.md before it enters the MBL skill library, checking format completeness, content depth, compliance posture, and THRIVE alignment. No skill reaches `agops-skill-installer` without passing this validator — it is the mandatory quality checkpoint between authoring and deployment.

## When to Use

- A newly authored SKILL.md is ready for installation and must be checked against MBL quality standards before any file is written to disk
- A skill is being updated and the revised SKILL.md needs re-validation to confirm no sections were accidentally degraded
- Callie or Fitz has flagged a skill during testing and a structured audit is needed to identify exactly which standards were missed
- A batch of skills from an external source (consultant, portfolio company) arrives and must all be validated before batch installation proceeds

## agops-skill-validator Framework

```
SKILL VALIDATION PROTOCOL — MBL PARTNERS AGENT OPERATIONS

1. FORMAT CHECK — STRUCTURE
   Required sections (must ALL be present, in order):
     [1] YAML frontmatter
     [2] H1 title + 2-sentence intro paragraph
     [3] ## When to Use (4 bullet points)
     [4] ## <Skill Name> Framework (fenced code block, ALL-CAPS headers)
     [5] ## Output Format (fenced markdown template)
     [6] ## Output Contract (exactly 3 bullets, 3-5 sentences each)
     [7] ## System Dependencies (Reads from / Writes to / HITL Required)
     [8] ## Test Cases (3 cases: golden path, edge, adversarial)
     [9] ## Audit Log (1 paragraph)
     [10] ## Deprecation (1 paragraph)
   FAIL condition: any section missing or out of order

2. FORMAT CHECK — FRONTMATTER
   Required fields:
     name:           lowercase, hyphenated, correct prefix for department
     description:    quoted string with 20+ trigger phrases
     metadata.version: semantic version (1.0.0 or higher)
     metadata.tier:  matches department (agent-operations, finance, etc.)
     metadata.owner: "Dr. John Lewis"
     argument-hint:  present and describes the primary argument
   FAIL condition: any required field absent or malformed

3. FORMAT CHECK — BODY
   - H1 title matches `name` field in frontmatter
   - Intro paragraph: exactly 2 sentences
   - When to Use: exactly 4 bullet points (not 3, not 5)
   - Framework section: fenced code block with ≥4 ALL-CAPS section headers
   - Output Contract: exactly 3 bullets; each bullet 3-5 sentences minimum
   - Test Cases: labeled "Golden Path," "Edge Case," "Adversarial"
   - File length: 80–120 lines target; flag if <70 or >140

4. CONTENT CHECK — MBL ENTITY CONTEXT
   - Is the relevant MBL entity context present? (MBL HoldCo, Allevio, HIVE, Column6)
   - Allevio skills: PHI absolute prohibition explicitly stated
   - HIVE skills: LP data isolation explicitly stated; WTI trigger noted if relevant
   - Column6 skills: CCPA note present if user-data adjacent; gross margin ≥35% if financial
   - MBL HoldCo: M365 / QB / GHL systems referenced where relevant
   FAIL condition (Allevio): PHI prohibition absent

5. CONTENT CHECK — HITL CHECKPOINTS
   Required in HITL Required section:
     - Is Dr. Lewis named as primary HITL?
     - Any output to Matt Mathison → HITL flagged?
     - Any financial action → HITL flagged?
     - Any PHI-adjacent output → HITL flagged?
   FAIL condition: HITL section missing or Dr. Lewis not named as reviewer

6. CONTENT CHECK — SYSTEM REFERENCES
   - Reads from / Writes to sections must reference actual MBL systems:
     Acceptable: Krista.ai, Monday.com, QuickBooks, Bill.com, GoHighLevel,
                 ~/.agents/skills/, project_skill_registry.md, M365/Outlook/Teams,
                 Covercy (HIVE), AdvancedMD (Allevio)
   - Generic references ("a database," "external system") without specificity = WARN

7. THRIVE ALIGNMENT CHECK
   T — Truth:      Does the skill surface failures honestly? No false-pass outputs?
   H — Hustle:     Is the skill actionable and fast? No unnecessary friction?
   R — Respect:    Does the skill protect entity data? No cross-entity data leakage?
   I — Integrity:  Are audit logs and HITL requirements present?
   V — Value:      Does the skill produce real leverage for Dr. Lewis / MBL?
   E — Enjoy:      Is the output format readable and useful?
   FAIL condition: Integrity or Respect criteria fail

8. SCORING
   PASS:    All format checks pass; all content checks pass; THRIVE = no fails
   WARN:    Minor issues (line count, vague system refs); installable with note
   FAIL:    Any format check fails; PHI prohibition absent; HITL missing; THRIVE Integrity/Respect fail
   OUTPUT:  Section-by-section scorecard with PASS/WARN/FAIL per check

9. DR. LEWIS SIGN-OFF
   - PASS skills: auto-proceed to agops-skill-installer
   - WARN skills: deliver report to Dr. Lewis; proceed on approval
   - FAIL skills: halt; deliver detailed failure report; do not install
```

## Output Format

```markdown
## Skill Validation Report

**Skill:** <skill-name>
**Validated:** <YYYY-MM-DD>
**Validator:** agops-skill-validator v1.0.0
**Result:** PASS | WARN | FAIL

### Section Scores
| Section              | Result | Notes                        |
|----------------------|--------|------------------------------|
| Frontmatter          | PASS   |                              |
| H1 + Intro           | PASS   |                              |
| When to Use          | WARN   | 3 bullets found; need 4      |
| Framework            | PASS   |                              |
| Output Format        | PASS   |                              |
| Output Contract      | FAIL   | Bullet 2 is only 1 sentence  |
| System Dependencies  | PASS   |                              |
| Test Cases           | PASS   |                              |
| Audit Log            | PASS   |                              |
| Deprecation          | PASS   |                              |

### Content Checks
- Entity Context:   PASS — Allevio PHI prohibition present
- HITL Checkpoints: PASS — Dr. Lewis named; Matt Mathison output flagged
- System References: WARN — "external CRM" should specify GoHighLevel

### THRIVE Alignment
T: PASS | H: PASS | R: PASS | I: PASS | V: PASS | E: PASS

### Required Actions Before Install
1. <Specific fix required for each FAIL/WARN>

**Disposition:** PROCEED TO INSTALL | HOLD FOR DR. LEWIS APPROVAL | BLOCKED
```

## Output Contract

- **The scorecard is section-by-section, not a summary verdict.** A skill that passes nine sections but fails the Output Contract cannot be called a "mostly passing" skill — it fails, and the report says exactly which bullet was too short, by how many sentences, in which section. Vague summary verdicts ("looks mostly good") are not produced by this validator; every check has a discrete PASS, WARN, or FAIL result with the specific finding noted. This granularity is necessary because the author needs to know exactly what to fix, not just that something is wrong.

- **PHI prohibition absence is a non-negotiable hard FAIL for Allevio skills.** MBL operates under HIPAA obligations for Allevio; any skill that could touch Allevio workflows without an explicit PHI prohibition in the SKILL.md creates compliance exposure. The validator does not issue a WARN for a missing PHI note on an Allevio skill — it issues a FAIL that blocks installation entirely. This is a kill criterion: the skill does not proceed until the prohibition is explicitly written, reviewed, and re-validated. Dr. Lewis is notified immediately on any Allevio PHI FAIL.

- **THRIVE Integrity and Respect failures block installation; other THRIVE dimensions produce warnings.** The THRIVE filter is not decorative — it is the values layer that determines whether an agent skill is fit for the MBL ecosystem. Integrity failures mean the skill lacks audit logs or bypasses HITL; Respect failures mean the skill leaks cross-entity data or handles sensitive information carelessly. Both are blocking conditions because they represent systemic risk, not just quality issues. Truth, Hustle, Value, and Enjoy failures are warnings that Dr. Lewis reviews before deciding whether to proceed — they reflect quality gaps that may be acceptable in early-version skills.

## System Dependencies

**Reads from:**
- `~/.agents/skills/<name>/SKILL.md` — skill file under validation
- `~/.claude/projects/-Users-johnlewis/memory/project_skill_registry.md` — existing skill names (collision check)
- MBL entity compliance context (HIPAA for Allevio, CCPA for Column6) — applied from CLAUDE.md

**Writes to:**
- Validation report delivered to Dr. Lewis (no file writes for FAIL/WARN; PASS auto-queues to installer)
- `~/.agents/logs/agops-skill-validator.log` — validation results appended per run

**HITL Required:**
- Dr. Lewis must approve all WARN dispositions before installation proceeds
- Dr. Lewis is immediately notified on any FAIL; no auto-retry without revised SKILL.md
- Callie / Fitz may submit skills for validation but cannot approve WARN or FAIL dispositions

## Test Cases

**Golden Path:** A new `agops-skill-search` SKILL.md is submitted. All 10 sections are present and in order. Frontmatter has 22 trigger phrases, correct metadata, and an argument-hint. Output Contract has exactly 3 bullets of 4 sentences each. Allevio entity is not in scope so no PHI check is triggered. THRIVE alignment is clean. Validator returns PASS across all sections and auto-queues the skill for installation via agops-skill-installer.

**Edge Case:** A skill SKILL.md for an MBL HoldCo finance workflow has 3 bullets in "When to Use" instead of 4, and the system dependencies reference "the company CRM" instead of GoHighLevel specifically. Validator returns WARN on both items, produces a detailed report with exact line-level findings, and holds for Dr. Lewis approval before proceeding to installation. Dr. Lewis approves with a note to fix in the next version update.

**Adversarial:** A SKILL.md submitted for an Allevio care coordination workflow has no PHI prohibition in any section — not in the framework, not in HITL Required, not in the Output Contract. The validator immediately issues a hard FAIL on the PHI prohibition check, halts all further processing, delivers a failure report to Dr. Lewis with the exact requirement cited, and logs the failed validation attempt. The skill is not queued for installation under any circumstance until re-submitted with the PHI prohibition explicitly present.

## Audit Log

Every validation run is logged with: skill name, validation timestamp, validator version, per-section results (PASS/WARN/FAIL), THRIVE alignment scores, final disposition, and Dr. Lewis notification status where required. Logs are appended to `~/.agents/logs/agops-skill-validator.log` and retained for 90 days. FAIL logs for Allevio PHI issues are retained for 12 months and included in any compliance audit package. The audit log provides the authoritative record of what was checked, what was found, and who approved the installation decision.

## Deprecation

This skill is deprecated when MBL adopts a CI/CD pipeline for skill authoring that runs automated schema validation, compliance checks, and THRIVE scoring as part of a pull request gate on the `drlewis128/business_skills` GitHub repo — making the manual validator skill redundant. Until that pipeline is in place, `agops-skill-validator` is the mandatory quality gate and must not be bypassed; skills installed without validation are considered unapproved and subject to immediate review by Dr. Lewis.
