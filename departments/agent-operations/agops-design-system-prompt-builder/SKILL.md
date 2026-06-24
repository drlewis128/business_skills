---
name: agops-design-system-prompt-builder
description: "Build system prompts for Claude-API-based agents using skills as context. Use this skill when you need to write a system prompt for an agent, compose a Claude API system prompt, build a multi-skill system prompt, inject entity context into a system prompt, embed HITL instructions in a system prompt, extract framework sections from SKILL.md, design prompt caching strategy, manage prompt length for agent, combine skills into a single prompt, construct agent initialization prompt, write Krista.ai agent prompt, design system prompt for claude-sonnet or claude-opus agent, build agent instruction set, prompt engineering for MBL agent, compose role-specific system prompt, integrate skill frameworks into agent prompt, structure Claude agent system message, create production system prompt, optimize system prompt token usage."
argument-hint: "<agent name + skill manifest path or list of skill IDs>"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
---

# System Prompt Builder

Construct production-ready Claude API system prompts for MBL Partners agents by extracting the Framework section from each selected SKILL.md, injecting entity context, embedding HITL instructions, and applying prompt caching strategy. This skill bridges the skill manifest (agops-design-skill-selector) to the live agent and is the final design artifact before agent deployment.

## When to Use

- An approved skill manifest exists and the agent build is ready to move from design to implementation — the system prompt is the first code artifact produced.
- An existing agent system prompt is being refactored to add a new skill, change entity scope, or update HITL routing after a policy change.
- Dr. Lewis is evaluating prompt length and token cost for a planned agent and needs a structured draft to measure against the context window budget.
- A Krista.ai workflow is being configured and the Claude API call within that workflow needs a system prompt that correctly reflects the agent's approved skill set and entity constraints.

## System Prompt Builder Framework

```
═══════════════════════════════════════════════════════
SYSTEM PROMPT BUILD — MBL PARTNERS AI OPERATIONS
═══════════════════════════════════════════════════════

SECTION 1: BUILD INPUTS
────────────────────────
Agent Name:
Claude Model: [ ] claude-haiku-4-5  [ ] claude-sonnet-4-6  [ ] claude-opus-4-8
Target Entity:
Skill Manifest Reference:
MVSS Skills (in load order):
  1.
  2.
  3.
Full Set Skills (append after MVSS):
  4.
  5.

SECTION 2: FRAMEWORK EXTRACTION RULES
───────────────────────────────────────
For each skill in the manifest, extract ONLY the ## [Skill Name] Framework section.
DO NOT extract: When to Use, Output Format, Output Contract, System Dependencies,
                Test Cases, Audit Log, Deprecation.

EXTRACTION FORMAT PER SKILL:
  ┌─────────────────────────────────────────────┐
  │ SKILL: [skill-id]                           │
  │ ROLE: [one-sentence description from name:] │
  │ [Full content of ## Framework code block]   │
  └─────────────────────────────────────────────┘

Load order matters:
  - Load skills in MVSS order first (most critical function → least critical)
  - Append full-set skills after MVSS block
  - Entity context block ALWAYS loads last (freshest, dynamic content)

SECTION 3: SYSTEM PROMPT STRUCTURE
─────────────────────────────────────
A well-formed MBL agent system prompt has exactly these blocks in order:

  BLOCK 1 — AGENT IDENTITY (static, cacheable)
  ─────────────────────────────────────────────
  You are [Agent Name], an AI agent built for [Entity] by Dr. John Lewis,
  Principal Systems Engineer & Director of AI Strategy at MBL Partners.

  Your mission: [one-sentence mission from approved brief]

  Entity: [Entity Name]
  Orchestration: Krista.ai → Claude API ([model-id])
  Date context: injected dynamically via user message

  BLOCK 2 — ENTITY CONSTRAINTS (static, cacheable)
  ─────────────────────────────────────────────────
  [Include ONLY the constraints that apply to this entity]

  ALLEVIO ONLY:
    PHI ABSOLUTE PROHIBITION: You must never include, reference, or summarize
    any Protected Health Information (PHI) in any output. If PHI is detected in
    your input context, halt processing and escalate to Dr. Lewis immediately.
    HIPAA compliance is non-negotiable. There are no exceptions.

  HIVE ONLY:
    LP DATA ISOLATION: Output from this agent is restricted to HIVE Partners
    context only. Do not reference, summarize, or infer data from Allevio,
    Column6, or MBL HoldCo in any HIVE agent output.

  COLUMN6 ONLY:
    CCPA COMPLIANCE: Any output referencing customer or consumer data must
    comply with CCPA. Do not include personally identifiable consumer data
    in outputs unless explicitly authorized.
    GROSS MARGIN FLOOR: Flag any scenario where gross margin drops below 35%.

  MBL HOLDCO:
    M365 IDENTITY: All user-facing outputs are routed through Microsoft 365
    (Teams, Outlook, SharePoint). Confirm channel before writing.

  BLOCK 3 — HITL INSTRUCTIONS (static, cacheable)
  ─────────────────────────────────────────────────
  HUMAN-IN-THE-LOOP PROTOCOL:
  Primary HITL: Dr. John Lewis (jlewis@mblpartners.com)

  You MUST pause and request human approval before:
    1. Any financial action (AP, AR, payroll, wire transfer, journal entry)
    2. Any output routed to Matt Mathison (Managing Partner, MBL)
    3. Any output routed to a portfolio entity CEO or Managing Partner
    4. Any irreversible system action (send, publish, delete, execute payment)
    5. Any error state requiring judgment beyond your approved skill set
    [ALLEVIO ONLY] 6. Any input that contains or suggests PHI — halt immediately

  HITL format:
    "HITL REQUIRED: [trigger]. Recommended action: [action]. Awaiting approval
     from Dr. Lewis before proceeding. Do not execute until approved."

  Timeout: [X] hours → escalate to [secondary contact / alert channel]

  BLOCK 4 — SKILL FRAMEWORKS (static, cacheable)
  ────────────────────────────────────────────────
  [Insert extracted Framework blocks here, in MVSS load order]
  [Each framework block preceded by its SKILL header]

  BLOCK 5 — OUTPUT INSTRUCTIONS (static, cacheable)
  ───────────────────────────────────────────────────
  Output Format: [from approved brief — Teams message / email / Monday.com task / report]
  Output Audience: [from approved brief]
  Output Channel: [destination system and specific location]
  Tone: Professional, direct, BLUF (bottom line up front).
  Length: [specify max length or format constraint]

  BLOCK 6 — ENTITY CONTEXT (dynamic — injected at runtime via user message)
  ───────────────────────────────────────────────────────────────────────────
  NOTE TO BUILDER: Block 6 is NOT part of the static system prompt.
  It is injected as the first user message or as a cached user turn.
  It contains: current KPIs, open action items, system state, entity snapshot.
  Built by: agops-design-entity-context-builder
  Refresh cadence: [from context builder spec]

SECTION 4: PROMPT CACHING STRATEGY
─────────────────────────────────────
Claude API prompt caching rules for MBL agents:

  STATIC = SYSTEM PROMPT (Blocks 1–5 above)
    Mark as cacheable. These blocks do not change between calls.
    Cache invalidation triggers: skill manifest change, entity constraint update,
    HITL policy change, model upgrade.
    Expected cache hit rate: >80% for scheduled agents; >60% for event-driven agents.

  DYNAMIC = USER MESSAGE (Block 6 + user request)
    Never cached. Injected fresh at each call.
    Contains: entity context snapshot, specific task/request, current date/time.

  IMPLEMENTATION NOTE:
    Use Anthropic SDK cache_control: {"type": "ephemeral"} on the system prompt
    block when using claude-sonnet-4-6 or claude-opus-4-8.
    claude-haiku-4-5: evaluate caching ROI — high-volume low-token calls may
    not benefit enough to justify caching overhead.

SECTION 5: PROMPT LENGTH MANAGEMENT
──────────────────────────────────────
Token budget targets by model:
  claude-haiku-4-5:    System prompt ≤ 4,000 tokens   (cost sensitivity high)
  claude-sonnet-4-6:   System prompt ≤ 8,000 tokens   (balanced — default)
  claude-opus-4-8:     System prompt ≤ 16,000 tokens  (complexity justifies cost)

If extracted skill frameworks exceed token budget:
  Step 1 — Trim full-set skills first (keep MVSS intact)
  Step 2 — Summarize framework sections that are reference tables, not logic
  Step 3 — Move low-frequency instructions to a secondary cached user turn
  Step 4 — If still over budget after Steps 1–3, escalate to Dr. Lewis for
            architecture decision (split agent or upgrade model tier)

SECTION 6: MULTI-SKILL COMPOSITION RULES
──────────────────────────────────────────
When combining multiple skill frameworks into one system prompt:
  Rule 1 — Each skill framework is preceded by a clear SKILL: [id] header
  Rule 2 — Conflicting instructions between skills: the more specific skill wins
  Rule 3 — If two skills define output format differently, use the output format
            from the skill whose primary function matches the agent's mission
  Rule 4 — Never duplicate framework content (if two skills share a section,
            include it once and reference both skills)
  Rule 5 — The HITL block (Block 3) is always the agent's own — never sourced
            from a skill's HITL instructions directly (skill HITL is reference;
            agent HITL block is authoritative)

═══════════════════════════════════════════════════════
PROMPT STATUS: [ ] Draft  [ ] Token-Counted  [ ] Caching-Configured  [ ] Approved
Approved By:                          Date:
═══════════════════════════════════════════════════════
```

## Output Format

```markdown
# System Prompt: [Agent Name]
**Model:** [claude-*]  **Entity:** [entity]  **Version:** [1.0.0]  **Date:** [YYYY-MM-DD]

---
[BLOCK 1: AGENT IDENTITY]
You are [Agent Name]...

[BLOCK 2: ENTITY CONSTRAINTS]
...

[BLOCK 3: HITL INSTRUCTIONS]
...

[BLOCK 4: SKILL FRAMEWORKS]
---
SKILL: [skill-id]
[framework content]
---
SKILL: [skill-id]
[framework content]
---

[BLOCK 5: OUTPUT INSTRUCTIONS]
...
---

**Token Count (estimated):** [X] tokens
**Cache Strategy:** Static (Blocks 1–5) | Dynamic (Block 6 via user message)
**Cache Invalidation Triggers:** [list]
```

## Output Contract

- **The system prompt produced by this skill is a versioned, auditable artifact — not a throw-away string.** Every system prompt is saved with a version number, agent name, and approval date at `~/.agents/prompts/<agent-name>-v1.0.0-system.md`. When the prompt is updated (new skill added, entity constraint changed, HITL policy revised), the version increments and the old version is archived. This versioning discipline is what allows post-incident review to establish exactly which prompt version was running at the time an agent took a disputed action.

- **Block ordering is not stylistic — it is a caching and correctness contract.** Blocks 1–5 are static and must appear in the system prompt to maximize cache hits. Block 6 (entity context) is dynamic and must never appear in the system prompt; it belongs in the user message turn. Violating this boundary by embedding dynamic data (current KPIs, open action items) in the system prompt causes cache misses on every call, destroying the cost efficiency that makes the Claude API viable for high-frequency MBL agents. The ordering in Section 3 of this framework is mandatory.

- **HITL instructions in Block 3 are always agent-owned, never delegated to a skill.** Skills may document their own HITL requirements in their SKILL.md, and this skill reads those requirements to inform Block 3 — but the HITL block in the final system prompt is the agent's authoritative instruction set, written by this skill, reviewed by Dr. Lewis. A skill cannot override or soften the HITL rules established in Block 3. This ensures that even if a skill is updated to relax its own HITL guidance, the agent continues to enforce the HITL policy that was approved at build time until the system prompt is explicitly updated and re-approved.

## System Dependencies

**Reads From:** Approved skill manifest (agops-design-skill-selector output); SKILL.md Framework sections for each selected skill at `~/.agents/skills/`; approved agent brief for mission statement, output channel, and HITL policy; entity constraint documentation.

**Writes To:** System prompt file at `~/.agents/prompts/<agent-name>-v[X.Y.Z]-system.md`; version entry in `~/.agents/prompts/prompt-registry.jsonl`; Krista.ai workflow configuration (when applicable, HITL required before write).

**HITL Required:** Dr. Lewis reviews and approves every system prompt before it is loaded into a production agent. Any prompt update that changes entity constraints, HITL triggers, or output destinations requires re-approval, not just a version bump.

## Test Cases

**Golden Path:** Input — approved brief for a HIVE weekly LP summary agent using [fin-ops-cash-flow-tracker, pe-lp-quarterly-report]. Skill frameworks extracted in order. Block 2 populated with HIVE LP DATA ISOLATION constraint only. Block 3 HITL includes Matt Mathison trigger (output goes to Matt) and irreversible action trigger. Token count: 5,400 tokens (within claude-sonnet-4-6 budget). Cache strategy documented. Prompt saved as `hive-lp-summary-v1.0.0-system.md`. Approved by Dr. Lewis.

**Edge Case:** Three MVSS skills are selected and combined token count is 9,200 tokens — over the claude-sonnet-4-6 target of 8,000. Trim sequence applied: (1) full-set skill removed, saving 800 tokens → 8,400; (2) pe-lp-quarterly-report reference table section summarized, saving 600 tokens → 7,800; within budget. Trim decisions documented in prompt build log. Dr. Lewis notified of trimming before approval.

**Adversarial:** A skill framework extracted from an Allevio skill (sec-phi-flow-auditor) contains a section that references specific patient encounter fields by name as examples. The builder detects that these field names constitute a PHI schema reference and flags the extraction. The framework section is redacted to remove field name examples before inclusion in the system prompt. HITL escalation fired; prompt marked Draft until Dr. Lewis clears the redaction approach.

## Audit Log

Every system prompt build is logged with the agent name, model, entity, skill manifest version, prompt version, token count, caching configuration, approval status, and approver. The log lives at `~/.agents/prompts/audit-log.jsonl`. When an agent produces an unexpected output, the prompt audit log is the first artifact reviewed — it establishes which prompt version was active, which skills were loaded, and whether the HITL block was correctly configured. Prompt versions are never deleted; they are archived with a deprecation timestamp when superseded.

## Deprecation

This skill is deprecated when MBL adopts a prompt management platform that programmatically reads SKILL.md Framework sections, validates token counts against model budgets, and enforces Block ordering via schema validation. Until that tooling exists, this manual build process is the authoritative system prompt construction method. Deprecation requires a side-by-side comparison of 10 agent prompts built by the replacement tool against the benchmark quality of prompts built by this skill, reviewed and approved by Dr. Lewis before the transition.
