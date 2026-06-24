---
name: ai-context-manager
description: "Manage Claude Code context files (CLAUDE.md) and agent context for MBL AI applications. Use when the user says 'CLAUDE.md', 'context file', 'agent context', 'Claude context', 'context management', 'update CLAUDE.md', 'Claude instructions', 'agent instructions', 'Claude instructions update', 'context window', 'context optimization', 'context caching', 'context efficiency', 'Claude memory', 'agent memory', 'context for agents', 'project context', 'entity context', 'entity-specific context', 'context for Allevio', 'context for HIVE', 'context for Column6', 'context for MBL', 'CLAUDE.md update', 'CLAUDE.md review', 'CLAUDE.md audit', 'CLAUDE.md structure', 'add entity context', 'update entity context', 'Claude knows about', 'Claude context file', 'system context', 'background context for Claude', 'context library', 'context template', or 'context document'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <update|audit|optimize|create>]"
---

# AI Context Manager

Manage Claude Code context files (CLAUDE.md) and agent context for MBL AI applications — maintaining entity-specific context documents that give Claude accurate, current knowledge about MBL's entities, systems, constraints, and key people. CLAUDE.md is the operating manual that converts Claude from a general AI into an MBL-specific AI.

## When to Use
- Updating CLAUDE.md after an entity changes (new portfolio company; system change; key person change)
- Creating entity-specific CLAUDE.md files for portfolio company rollouts
- Auditing CLAUDE.md accuracy and completeness
- Optimizing context for Claude API applications (prompt caching; context window management)

## Context Management Framework

```
CLAUDE.MD ARCHITECTURE (MBL):
  Global CLAUDE.md: ~/.claude/CLAUDE.md (Dr. Lewis's personal; applies to all Claude Code sessions)
    Contains: Identity; Entity Vocabulary; Key People; Active Projects; Systems Map; Working Style; 
      Technical Standards; Brand Standards; Constraints
    Update frequency: whenever any of these change (new entity; team change; project change)
    
  Entity-specific context (for Phase 4 portfolio rollouts):
    Location: per-entity project CLAUDE.md (when entity CEO has their own Claude Code setup)
    Contains: entity-specific systems; entity CEO role and constraints; entity-specific HIPAA/compliance rules
    
CONTEXT ACCURACY STANDARDS:
  Every CLAUDE.md section has a "staleness" risk:
    Entity Vocabulary: update immediately when portfolio changes (new entity; exit; major name change)
    Key People: update immediately when team changes (new hire in key role; departure; role change)
    Active Projects: update monthly (projects complete; new projects start; status changes)
    Systems Map: update when systems change (new system; system retired; vendor change)
    Technical Standards (Rust; Claude API): update when model IDs change; when architecture changes
    Constraints: update when operating rules change (new Matt Mathison policy; legal requirement)
    
ENTITY CONTEXT ESSENTIALS (must be present for each entity):
  Allevio:
    HIPAA absolute: no PHI in any AI output; employer aggregate only
    Systems: AdvancedMD; Marshall Medical Billing; GHL sub-account
    Key metrics: PMPM; GRR ≥91%; NRR ≥105%; gross margin ≥40%; DSO <40 days
    Key people: entity CEO; Morgan Sills (M&A pipeline)
    
  HIVE:
    WTI trigger: $58/bbl for 2+ consecutive weeks → PAUSE acquisitions; Matt Mathison immediately
    Systems: Covercy; Uinta Basin properties
    Key metrics: BOE × WTI × NRI%; LOE <$18/BOE (>$22 → Matt Mathison)
    Key people: entity CEO; LP distribution authority = Matt Mathison (Covercy)
    
  Column6/Siprocal:
    IO-based revenue model: recognized at campaign delivery milestones
    Key metrics: repeat IO rate ≥60%; gross margin ≥35%; DSO <50 days; net 30-60 agency terms
    Systems: IO tracking; GHL sub-account
    
CONTEXT OPTIMIZATION FOR CLAUDE API:
  Prompt caching: all entity context that is repeated across API calls should be cached
    → System prompts: cache_control: ephemeral
    → Long knowledge blocks (entity context; constraint tables): cached separately
  Context window management:
    → Include only entity context relevant to the specific task (not all-entity context in every call)
    → Entity isolation: Allevio context in Allevio API calls only; HIVE context in HIVE calls only
  Memory system: ~/.claude/projects/memory/ for cross-session persistence (agent memory skill registry; project notes)
```

## Output Format

```markdown
# CLAUDE.md Update Log — [Date]
**Updated by:** Dr. Lewis | **Section changed:** [Section name]
**Reason:** [What changed that required the update]

---

## Changes
- [Entity Vocabulary: "North Vista" added as marketing/positioning brand for portfolio]
- [Key People: [Name] added as Allevio entity CEO; replaces [Previous name]]
- [Active Projects: "OpenFang 14-crate stabilization" status updated to Phase 2]

## Context Accuracy Status (after update)
| Section | Last reviewed | Status |
|---------|-------------|--------|
| Entity Vocabulary | [Date] | ✅ Current |
| Key People | [Date] | ✅ Current |
| Active Projects | [Date] | ✅ Current |
| Systems Map | [Date] | ✅ Current |
| Technical Standards | [Date] | ✅ Current |
| Constraints | [Date] | ✅ Current |
```

## Output Contract
- CLAUDE.md accuracy is the foundation of all AI quality at MBL — if CLAUDE.md says the wrong WTI trigger level; wrong entity CEO name; or outdated systems map, every Claude session using that context will produce subtly wrong outputs; the context document is not a one-time setup — it is a living document that is maintained with the same discipline as a system of record; when Dr. Lewis learns that any CLAUDE.md fact has changed, he updates CLAUDE.md before the end of the business day; a stale CLAUDE.md that says Matt Mathison is "considering" a portfolio company that was actually acquired 3 months ago is not merely outdated — it causes Claude to provide incorrect advice based on incorrect context
- Entity isolation applies in context as well as in data — when Dr. Lewis is working on an Allevio task in a Claude API call, the context block includes Allevio-specific context only; adding HIVE production data or Column6 IO metrics to an Allevio-context call increases the risk that Claude conflates entity information; entity-specific Claude API calls include the relevant entity's context block from CLAUDE.md, not the entire CLAUDE.md document; this also reduces token costs (smaller context = cheaper call) and reduces the risk of context bleed between entities
- HITL required: CLAUDE.md updates → Dr. Lewis updates; key changes (new entity; new constraint; new key person) updated same day; quarterly accuracy audit → Dr. Lewis reviews all sections; entity-specific context for Phase 4 rollouts → Dr. Lewis creates; entity CEO reviews for accuracy before activating; context changes affecting Matt Mathison workflow → Matt Mathison informed in quarterly AI briefing; technical standards updates → Dr. Lewis validates new model IDs before updating (confirm Anthropic released models referenced)

## System Dependencies
- **Reads from:** CLAUDE.md (current version); entity operational documentation; Matt Mathison or entity CEO updates (team changes; project changes; system changes); Anthropic documentation (for model ID updates); MBL systems map; portfolio changes (acquisitions; exits)
- **Writes to:** ~/.claude/CLAUDE.md (global context); entity-specific CLAUDE.md files (Phase 4 rollouts; entity-specific project directories); context update log (SharePoint → MBL → AI Strategy → Context Management → Update Log)
- **HITL Required:** CLAUDE.md updates → Dr. Lewis updates same day for material changes; entity-specific context → entity CEO reviews before activation; technical standards → Dr. Lewis validates model IDs; Matt Mathison workflow-affecting changes → Matt Mathison informed; quarterly audit → Dr. Lewis reviews; new portfolio entity → Dr. Lewis creates context before any AI deployment

## Test Cases
1. **Golden path:** Matt Mathison informs Dr. Lewis that a new entity CEO has been hired at Allevio. Dr. Lewis updates CLAUDE.md Key People section within 2 hours: removes previous entity CEO name; adds new entity CEO name + role + context ("Allevio entity CEO; primary contact for Allevio operations; HIPAA-aware"). Update logged. Every subsequent Claude session will reference the correct entity CEO. Allevio AI workflows updated with correct entity CEO approval authority.
2. **Edge case:** Anthropic releases a new Claude model (claude-opus-5 / claude-sonnet-5) and Dr. Lewis needs to update the Technical Standards section → Dr. Lewis: "Before updating CLAUDE.md with new model IDs, I'll verify: (1) Anthropic has officially released the models (not just announced); (2) I have the correct model IDs from Anthropic's documentation (not inferred); (3) The pricing and capabilities have been confirmed. Then I'll update: Technical Standards → Claude/Anthropic SDK → Default to latest models: [new model IDs]. I'll also update the ai-claude-api-ops skill's model selection guide with the same information. Context update logged."
3. **Adversarial:** Entity CEO asks Dr. Lewis to add their personal preferences ("Claude should always address me as [title]") to CLAUDE.md → Dr. Lewis: "I can add entity CEO communication preferences to the entity-specific context, but I want to be careful about what goes in the global CLAUDE.md vs. entity-specific context. The global CLAUDE.md is Dr. Lewis's personal operating document — it covers MBL-wide context that applies to all my work. Entity-specific preferences belong in the entity-specific context file that I'd create for your entity's Phase 4 rollout. If you'd like to set up entity-specific context, I'll create an entity CLAUDE.md that includes your communication preferences, your role constraints (HIPAA authority; HIVE acquisition authority), and the entity-specific systems. That file would be the foundation for AI assistance tailored to your entity."

## Audit Log
CLAUDE.md update log (all changes; dates; reasons; SharePoint → AI Strategy → Context Management). Section accuracy audit records (quarterly). Entity-specific context file creation records. Technical standards update records (model ID changes; validation). Context bleed incident records (if context was incorrectly used cross-entity). Matt Mathison notification records for workflow-affecting changes.

## Deprecation
CLAUDE.md sections reviewed when MBL's operating model changes significantly. Entity vocabulary reviewed when portfolio composition changes. Technical standards reviewed with each Anthropic model release. Working style and constraints reviewed when Matt Mathison updates operating policies. Context optimization guidance reviewed when Anthropic changes prompt caching specifications.
