---
name: ai-agent-builder
description: "Build role-specific Claude agents and skills for MBL Partners ecosystem. Use when the user says 'build an agent', 'create an agent', 'new agent', 'new skill', 'build a skill', 'create a skill', 'write a skill', 'SKILL.md', 'agent for this role', 'agent for this workflow', 'build a Claude agent', 'Claude Code agent', 'Claude skill', 'custom agent', 'custom skill', 'agent for finance', 'agent for HR', 'agent for sales', 'agent for operations', 'agent for marketing', 'agent for AI', 'build an AI skill', 'skill creation', 'skill development', 'skill design', 'skill spec', 'skill specification', 'skill template', 'agent template', 'write the SKILL.md', 'add to the skill library', 'new department skill', 'add a skill', 'skill for MBL', 'skill for Allevio', 'skill for HIVE', 'skill for Column6', 'skill for the portfolio', 'OpenFang skill', or 'install a skill'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--skill-name <name>] [--department <finance|hr|sales|ops|ai|legal|exec>] [--entity <mbl|allevio|hive|column6>] [--action <design|write|test|install|update>]"
---

# AI Agent Builder

Build role-specific Claude agents and skills for MBL Partners and portfolio companies — designing SKILL.md files with entity-threaded context (Allevio HIPAA; HIVE WTI trigger; Column6 IO model; MBL authorization matrix), deploying to `~/.agents/skills/`, creating symlinks to `~/.claude/skills/`, and maintaining the skill registry. This skill builds the skills library that powers Dr. Lewis's AI-accelerated workflow across all MBL entities.

## When to Use
- Building any new skill for any MBL department or workflow
- Updating an existing skill based on feedback or audit findings
- Designing skill specifications before writing SKILL.md files
- Installing and registering new skills after writing

## Agent and Skill Building Framework

```
SKILL.md FORMAT REQUIREMENTS:

  FRONTMATTER (required):
    name: kebab-case-skill-name (matches directory name exactly)
    description: "20+ trigger phrases in a single quoted string; entity-specific context included"
    metadata:
      version: 1.0.0
      tier: [department-tier]
      owner: Dr. John Lewis
    argument-hint: "[--arg <value>] [--action <actions>]"
    
  BODY SECTIONS (required):
    1. Title + intro paragraph (1-2 sentences: what it does; why it matters for MBL)
    2. ## When to Use (4-6 bullets: specific trigger scenarios)
    3. ## [Skill Name] Framework (fenced code block; ALL-CAPS section headers; entity context)
    4. ## Output Format (fenced markdown block; exact template)
    5. ## Output Contract (3-4 long bullets: behavioral guarantees; entity-specific rules)
    6. ## System Dependencies (Reads from / Writes to / HITL Required)
    7. ## Test Cases (3: golden path / edge case / adversarial)
    8. ## Audit Log (permanent records; what is kept; where)
    9. ## Deprecation (when/how this skill retires or updates)
    
ENTITY CONTEXT MANDATORY IN EVERY SKILL:
  Allevio: HIPAA aggregate-only; AdvancedMD/Marshall Medical Billing; BAA for clinical vendors
    → PHI absolute prohibition in every skill that touches Allevio operations
  HIVE: Covercy; WTI $58/bbl trigger (PAUSE not kill); Uinta Basin; LP distributions
    → WTI trigger referenced in every HIVE-adjacent skill
  Column6/Siprocal: IO-based revenue; CTV; gross margin ≥35%; agency payment terms net 30-60
  MBL Partners: QuickBooks system of record; Bill.com AP; Matt Mathison approves significant decisions
  
HITL AUTHORIZATION MATRIX (every skill):
  Financial system writes → HITL gate required
  LP-facing communications → Matt Mathison approves
  Customer-facing (employer; agency; investor) → entity CEO + Dr. Lewis approve
  AI/tech deployment → Dr. Lewis authorizes (standard); Matt Mathison (budget-significant)
  
SKILL INSTALLATION PROCESS:
  1. Write SKILL.md to ~/.agents/skills/<skill-name>/SKILL.md
  2. Create symlink: ~/.claude/skills/<skill-name> → ~/.agents/skills/<skill-name>
  3. Update skill registry (memory/project_skill_registry.md)
  4. Update MEMORY.md index (if registry version changes)
  5. Copy to repo: ~/Projects/business_skills/departments/<department>/<skill-name>/ (for shared skills)
  6. Git commit and push to drlewis128/business_skills
  
DEPARTMENT PREFIXES (for naming):
  hr-* = human resources; finance-* = finance/accounting; revops-* = revenue operations
  mktg-* = marketing; cs-* = customer success; legal-* = legal/compliance
  sales-* = sales; exec-* = executive; ops-* = operations; ai-* = AI and technology
  strategy-* = strategy; rc-* = risk/compliance
```

## Output Format

```markdown
# [Skill Name]

---
name: [kebab-case]
description: "[20+ trigger phrases; entity context included]"
metadata:
  version: 1.0.0
  tier: [department]
  owner: Dr. John Lewis
argument-hint: "[--arg <value>]"
---

# [Skill Name]

[1-2 sentence intro: what it does; why it matters for MBL]

## When to Use
- [4-6 specific trigger scenarios]

## [Skill Name] Framework

```
[Framework in ALL-CAPS section headers; entity context; entity-specific rules; HITL matrix]
```

## Output Format

```markdown
[Exact output template]
```

## Output Contract
- [3-4 long bullets: behavioral guarantees + entity-specific rules + HITL]

## System Dependencies
- **Reads from:** [list]
- **Writes to:** [list]
- **HITL Required:** [list]

## Test Cases
1. **Golden path:** [...]
2. **Edge case:** [...]
3. **Adversarial:** [...]

## Audit Log
[...]

## Deprecation
[...]
```

## Output Contract
- Every skill must include entity context threading — a skill that doesn't reference MBL's specific entity context (Allevio HIPAA; HIVE WTI trigger; Column6 IO model; MBL authorization matrix) is a generic skill, not a MBL-specific skill; the entire value of the MBL skill library is that each skill knows who the entities are, what constraints apply, and what the HITL authorization path is; Dr. Lewis does not write generic skills that could belong to any PE firm; every skill is written for MBL Partners specifically, with entity-specific examples in the test cases and entity-specific rules in the output contract
- Test cases must include an adversarial scenario that specifically tests a HIPAA, WTI trigger, or authorization boundary — the adversarial test case is not about making the skill look comprehensive; it is about verifying that the skill handles the most dangerous edge case correctly; for every Allevio-adjacent skill, the adversarial test is: "someone tries to include PHI in the output — what does the skill do?"; for every HIVE financial skill, the adversarial test is: "someone tries to commit to an acquisition during a WTI trigger pause — what does the skill do?"; for every executive skill, the adversarial test is: "someone tries to bypass Matt Mathison's approval on a significant decision — what does the skill do?"
- HITL required: skill development → Dr. Lewis writes specification; test against real scenarios before activation; new skill → skill registry updated; Allevio-adjacent skills → HIPAA instruction verified before activation; skills writing to financial systems → HITL gate explicitly designed in the Output Contract; Matt Mathison sees new skills that affect his workflow (Meeting Intelligence; pre-meeting prep; LP communication); skill library changes → registry updated and committed to repo

## System Dependencies
- **Reads from:** CLAUDE.md (entity context; authorization matrix; systems map); existing skill library (~/.agents/skills/); skill registry (project_skill_registry.md); conversation audit findings (what skills need improvement); user feedback (skill gap identification)
- **Writes to:** ~/.agents/skills/<skill-name>/SKILL.md; ~/.claude/skills/<skill-name>/ (symlink); project_skill_registry.md (registry update); MEMORY.md (index update); ~/Projects/business_skills/departments/ (repo copy); git commit + push to drlewis128/business_skills
- **HITL Required:** Allevio skills → HIPAA instruction verified; financial system write skills → HITL gate in skill; skills affecting Matt Mathison workflow → Matt sees; skill registry update → Dr. Lewis commits; repo push → Dr. Lewis approves; skill deprecation → Dr. Lewis documents

## Test Cases
1. **Golden path:** Dr. Lewis needs a new skill: "ai-agent-builder" for the AI department. Designs spec: 20+ trigger phrases; entity context; all 9 body sections; 3 test cases (golden path / edge / adversarial). Writes SKILL.md. Symlinks. Updates registry. Commits to repo. Skill activated. Works correctly on first invocation.
2. **Edge case:** Building a skill for Allevio that will process employer billing data — the skill description says "billing data" but doesn't explicitly exclude PHI → Dr. Lewis: "I need to explicitly add PHI exclusion to the Output Contract: 'All billing data processed by this skill must be employer-aggregate only. Never include individual member names, diagnoses, or health data. If input data contains PHI, the skill output must flag: PHI-adjacent data detected — Dr. Lewis review required before any further processing.' Adding this before the skill is activated — it is not acceptable to activate an Allevio billing skill without explicit PHI exclusion language in the Output Contract."
3. **Adversarial:** Someone asks Dr. Lewis to build a skill that "automatically approves vendor invoices in Bill.com above $5K without human review" → Dr. Lewis: "I won't build this skill. Automated invoice approval above $5K bypasses MBL's financial authorization matrix — any payment $5K-$25K requires Dr. Lewis review; above $25K requires Dr. Lewis and Matt Mathison. The authorization matrix exists because Bill.com is the system where vendor fraud is most likely to occur — fraudulent bank account changes; inflated invoices; unauthorized vendor additions. An automated approval system would create a direct attack vector. I can build a skill that: (1) flags invoices for the correct approver based on amount; (2) drafts the approval notification for Dr. Lewis to send; (3) tracks approval turnaround time. But the human approval step is non-negotiable."

## Audit Log
All SKILL.md files written (permanent; ~/ agents/skills/ directory). Skill registry version history. Git commit history (repo records). Allevio HIPAA instruction verification records. Matt Mathison workflow-affecting skill notifications. Skill deprecation records. Skill audit findings and remediation records.

## Deprecation
Individual skills deprecated when underlying workflow changes. Department skill sets reviewed quarterly. Entity-specific constraints updated when regulatory requirements change (HIPAA; financial; O&G). Skill format reviewed when Claude skill invocation mechanism changes. Skill prefix naming updated when new departments are added.
