---
name: agops-design-skill-selector
description: "Select the right skills from the MBL skill library for a specific agent role. Use this skill when you need to map a role to skills, select compatible skills, build a skill set for an agent, find skills for a job function, evaluate skill compatibility, avoid skill conflicts, check skill system dependencies, scope skills to an entity, identify minimum viable skill set, design full skill set, read skill tier metadata, select skills for Krista.ai agent, match skills to agent brief, review skill library for agent build, select skills by department, filter skills by entity, identify conflicting skills, build skill manifest, audit skill selection, verify skill coverage."
argument-hint: "<agent role or job description, e.g. 'AP processing agent for MBL HoldCo'>"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
---

# Skill Selector

Map an agent role to a compatible, conflict-free set of skills drawn from MBL's library of ~1600 installed skills. This skill produces the skill manifest that feeds directly into the agent brief (agops-design-agent-brief) and system prompt builder (agops-design-system-prompt-builder), ensuring every agent is built from a coherent, entity-scoped, non-conflicting skill set.

## When to Use

- An agent brief (agops-design-agent-brief) has been approved and the build phase requires a formal skill manifest before system prompt construction begins.
- Dr. Lewis is evaluating whether an agent role can be served by existing library skills or requires new skill authoring.
- A skill conflict is suspected — two candidate skills that may both write to the same destination system (e.g., two skills that push tasks to Monday.com) — and a structured compatibility check is needed.
- A portfolio entity is spinning up a new agent and entity-scoping rules must be applied to ensure no cross-entity skill contamination occurs.

## Skill Selector Framework

```
═══════════════════════════════════════════════════════
SKILL SELECTION — MBL PARTNERS AI OPERATIONS
═══════════════════════════════════════════════════════

SECTION 1: ROLE DEFINITION
────────────────────────────
Agent Name:
Agent Role Description (1–2 sentences):
Target Entity: [ ] MBL HoldCo  [ ] Allevio  [ ] HIVE  [ ] Column6  [ ] Cross-Entity
Brief Reference (if exists):

SECTION 2: LIBRARY SCAN METHODOLOGY
──────────────────────────────────────
Skill Library Location: ~/.agents/skills/   (~1600 installed skills)
Skill Symlink Location: ~/.claude/skills/
GitHub Repo: drlewis128/business_skills

SCAN ORDER:
  Step 1 — Identify department prefix(es) that match the agent role:
    agops-  (agent operations / this department)
    fin-    (finance / FP&A / accounting)
    cs-     (customer success / account management)
    hr-     (human resources / people ops)
    ops-    (general operations / project management)
    legal-  (legal / compliance / contracts)
    mktg-   (marketing / content / brand)
    sec-    (security / cybersecurity / compliance)
    revops- (revenue operations / CRM / pipeline)
    sales-  (sales / BD / channel)
    exec-   (executive / board / strategy)
    data-   (data engineering / analytics / BI)
    it-     (IT ops / infrastructure / SaaS)
    pe-     (private equity / fund ops / LP)
    strategy-(strategic planning / M&A / portfolio)
    rc-     (risk / compliance / regulatory)
    meet-   (meeting intelligence / transcript ops)

  Step 2 — For each candidate skill, read SKILL.md and extract:
    a. name: (exact skill ID)
    b. description: (trigger phrases — confirms the skill fits the use case)
    c. metadata.tier: (confirms department match)
    d. ## System Dependencies → Reads From / Writes To (conflict check)
    e. Entity-specific constraints noted in the skill body

  Step 3 — Apply entity filter:
    Allevio context:   EXCLUDE any skill whose Writes To includes PHI-capable channels
    HIVE context:      EXCLUDE any skill that writes LP data cross-entity
    Column6 context:   EXCLUDE any skill without CCPA acknowledgment where customer data is in scope
    MBL HoldCo:        No additional exclusions beyond standard HITL rules

SECTION 3: CONFLICT DETECTION
───────────────────────────────
A skill conflict exists when TWO OR MORE selected skills:
  [ ] Write to the same destination (both push to Monday.com tasks)
  [ ] Read from the same source with incompatible query scopes (both pull all QB transactions)
  [ ] Assert ownership of the same agent output slot (both format the final email/report)
  [ ] Apply contradictory entity constraints (one PHI-safe, one not)

CONFLICT RESOLUTION RULES:
  Rule 1 — If two skills write to the same destination, designate ONE as primary writer.
            The secondary skill must be scoped to read-only or re-routed to a different channel.
  Rule 2 — If two skills format the same output type, select the more specific one.
            (e.g., fin-ops-ar-invoicer beats fin-ar-manager for invoice formatting)
  Rule 3 — If entity constraints conflict, the stricter constraint wins. Always.
  Rule 4 — If conflict cannot be resolved without breaking agent function, flag for Dr. Lewis HITL.

SECTION 4: MINIMUM VIABLE SKILL SET (MVSS)
────────────────────────────────────────────
The MVSS is the smallest set of skills that allows the agent to fulfill its one-sentence mission.
Criteria for MVSS inclusion:
  - The agent cannot complete its primary output without this skill
  - No other selected skill already covers this function
  - The skill's System Dependencies are satisfied by available integrations

MVSS (list each with rationale):
  Skill 1: [skill-id] — [why it's essential]
  Skill 2: [skill-id] — [why it's essential]
  Skill 3: [skill-id] — [why it's essential]

SECTION 5: FULL SKILL SET
───────────────────────────
Additional skills beyond MVSS that improve quality, coverage, or resilience:
  Skill 4: [skill-id] — [what it adds beyond MVSS]
  Skill 5: [skill-id] — [what it adds beyond MVSS]
  Skill 6: [skill-id] — [what it adds beyond MVSS]

Total skill count: ___  (recommended max: 8 for a single agent; split roles if >8 needed)

SECTION 6: SKILL MANIFEST OUTPUT
──────────────────────────────────
Format for downstream use (system prompt builder, agent brief):

  MVSS:
    - ~/.agents/skills/[skill-id]/SKILL.md
    - ~/.agents/skills/[skill-id]/SKILL.md
    - ~/.agents/skills/[skill-id]/SKILL.md

  FULL SET (adds):
    - ~/.agents/skills/[skill-id]/SKILL.md
    - ~/.agents/skills/[skill-id]/SKILL.md

  CONFLICTS RESOLVED: [describe or "None detected"]
  ENTITY FILTER APPLIED: [entity name] — [exclusions made or "None required"]
  SKILLS REQUIRING NEW AUTHORING: [list or "None — all needs met by existing library"]

SECTION 7: GAP ANALYSIS
─────────────────────────
If no existing skill covers a required agent function, document the gap:
  Gap: [describe the uncovered function]
  Closest Existing Skill: [skill-id] — [gap between it and the need]
  Recommended Action: [ ] Author new skill  [ ] Extend existing skill  [ ] Accept gap, handle in system prompt

═══════════════════════════════════════════════════════
SELECTION STATUS: [ ] Draft  [ ] Conflict-Checked  [ ] Entity-Filtered  [ ] Approved
Approved By:                          Date:
═══════════════════════════════════════════════════════
```

## Output Format

```markdown
# Skill Selection: [Agent Name]
**Entity:** [entity]  **Date:** [YYYY-MM-DD]

## Minimum Viable Skill Set
| # | Skill ID | Purpose | Writes To |
|---|----------|---------|-----------|
| 1 | [id] | [purpose] | [destination] |
| 2 | [id] | [purpose] | [destination] |
| 3 | [id] | [purpose] | [destination] |

## Full Skill Set (adds)
| # | Skill ID | What It Adds |
|---|----------|-------------|
| 4 | [id] | [value added] |

## Conflicts
[None detected / Description of conflict + resolution]

## Entity Filter Applied
[Entity] — [Exclusions or "None required"]

## Gaps Requiring New Skill Authoring
[None / Gap description + recommended action]
```

## Output Contract

- **The skill manifest produced by this skill is the single source of truth for which skills are loaded into an agent's system prompt.** No skill may be added to a system prompt build without first appearing in an approved skill manifest. This prevents ad hoc skill injection that bypasses entity-scoping and conflict checks — a pattern that has caused agents to write to wrong destinations or load Allevio-specific context into HIVE agents. The manifest is a gating artifact, not a suggestion.

- **Conflict detection is not optional and must be run even when the skill set appears obviously safe.** Write-destination conflicts are the most common source of duplicate outputs (two skills both posting to the same Monday.com board, creating duplicate tasks that confuse human reviewers). The conflict detection section of this framework must be completed for every skill selection, with explicit "None detected" notation when no conflicts are found. Skipping conflict detection is a protocol violation logged in the audit trail.

- **The MVSS/full-set distinction exists to enforce agent simplicity as the default.** MBL's agent program scales across four portfolio entities, and bloated skill sets increase token cost, extend context windows, and create unpredictable agent behavior. The MVSS is the production default; the full skill set is an optional enhancement that requires explicit rationale for each additional skill. Any skill selection with more than eight skills without documented rationale for the count is returned for review before approval.

## System Dependencies

**Reads From:** Skill library at `~/.agents/skills/` (SKILL.md files for each candidate skill); approved agent brief for the target agent; entity constraint documentation for Allevio, HIVE, Column6, MBL HoldCo.

**Writes To:** Skill manifest document saved alongside the agent brief; skill list injected into agops-design-system-prompt-builder input; gap list fed to new skill authoring queue.

**HITL Required:** Dr. Lewis approves all skill manifests before system prompt construction begins. Any gap requiring new skill authoring is escalated to Dr. Lewis with a build-or-defer decision.

## Test Cases

**Golden Path:** Request — "Select skills for a weekly AR aging summary agent for MBL HoldCo that reads QuickBooks and posts to Matt's Teams channel." Scan identifies fin-ops-ar-aging-manager (reads QB AR, formats aging report), fin-ops-variance-explainer (adds trend context), and meet-follow-up-generator as an attempted add that is rejected (wrong function). MVSS = [fin-ops-ar-aging-manager, fin-ops-cash-flow-tracker]; full set adds fin-ops-variance-explainer. Conflict check: both read QB but with non-overlapping query scopes — no conflict. Entity filter: MBL HoldCo — no exclusions. Output delivered.

**Edge Case:** Agent role spans two departments — "Select skills for an agent that handles both AP approval routing and IT vendor contract review." Scan returns fin-ops-ap-processor (finance) and it-contract-tracker (IT). Both write to Monday.com task board. Conflict detected: duplicate Monday.com write destination. Resolution: fin-ops-ap-processor designated primary writer for Monday.com; it-contract-tracker re-scoped to email output only. Conflict resolved, documented, approved.

**Adversarial:** Requestor asks to include a skill that reads Allevio patient encounter data in a HIVE LP summary agent. Entity filter catches the cross-entity data scope immediately. The Allevio-scoped skill is excluded from the manifest with explicit notation: "EXCLUDED — Allevio PHI-capable data scope; cross-entity contamination with HIVE prohibited." HITL escalation fired to Dr. Lewis. Manifest not approved until requestor confirms the cross-entity requirement is a mistake or a legitimate approved exception.

## Audit Log

Every skill selection run is logged with the agent name, entity, final MVSS list, full skill set list, conflicts detected and resolved, entity filter actions taken, and approval timestamp. The log lives at `~/.agents/skill-manifests/audit-log.jsonl`. This log is the primary evidence source when an agent produces unexpected output attributable to skill selection — it establishes exactly which skills were loaded, by whom, and when. Monthly review by Dr. Lewis confirms no manifests are operating without approval.

## Deprecation

This skill is deprecated when MBL adopts a skill registry database (e.g., a structured index of all ~1600 skills with queryable metadata) that automates the scan, conflict check, and entity filter steps programmatically. Until such a registry is queryable via API, the manual SKILL.md scan process documented here is the authoritative selection method. Deprecation requires migration of all existing approved manifests into the new registry format and a parallel-run validation period of at least 30 days.
