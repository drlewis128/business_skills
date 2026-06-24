---
name: ai-prompt-library-manager
description: "Manage the MBL AI prompt library for Claude API and Krista.ai applications. Use when the user says 'prompt library', 'prompt template', 'prompt management', 'manage prompts', 'prompt catalog', 'prompt registry', 'prompt repository', 'prompt version', 'prompt versioning', 'update a prompt', 'prompt update', 'improve a prompt', 'better prompt', 'prompt quality', 'prompt review', 'prompts for MBL', 'Claude prompt', 'Krista prompt', 'system prompt', 'system prompt library', 'prompt store', 'prompt governance', 'prompt standards', 'prompt format', 'prompt template library', 'meeting summary prompt', 'pre-meeting prep prompt', 'finance prompt', 'analysis prompt', 'report prompt', 'summarization prompt', 'extraction prompt', 'classification prompt', 'prompt best practices', 'Claude system instruction', 'system instruction library', or 'Krista system instruction'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--prompt <name>] [--workflow <name>] [--action <create|update|test|retire|audit>]"
---

# AI Prompt Library Manager

Manage the MBL AI prompt library — maintaining versioned, tested system prompts and task prompts for all Claude API and Krista.ai applications, ensuring prompt quality, entity context threading, and compliance constraints are consistently applied across all AI workflows.

## When to Use
- Creating a new system prompt for a Krista workflow or Claude integration
- Updating a prompt based on quality audit findings
- Quarterly prompt library review
- Searching for an existing tested prompt before writing a new one

## Prompt Library Management Framework

```
PROMPT LIBRARY STRUCTURE:

  SYSTEM PROMPTS (persistent context for each workflow):
    Location: SharePoint → MBL → AI Strategy → Prompt Library → System Prompts → [Workflow Name]
    Versioning: v1.0; v1.1; v2.0 (major/minor/patch — same as skills)
    Required elements in every MBL system prompt:
      1. Role: who Claude is in this context
      2. Scope: what Claude does (specific) + what Claude does NOT do (explicit scope limitation)
      3. Entity context: which MBL entities are in scope; relevant constraints per entity
      4. HIPAA instruction (if Allevio): "Never include individual member names or health data..."
      5. WTI trigger instruction (if HIVE): "If WTI <$58/bbl for 2+ weeks is mentioned, flag immediately..."
      6. Output format: exact format specification; section headers; template
      7. Escalation: "If the input contains [X], flag for Dr. Lewis review rather than proceeding"
      
  TASK PROMPTS (per-invocation instructions):
    Location: SharePoint → MBL → AI Strategy → Prompt Library → Task Prompts → [Category]
    Purpose: repeatable prompt templates for specific task types
    Examples: "Monthly financial narrative prompt"; "Action item extraction prompt"; "Acquisition model prompt"
    
  PROMPT QUALITY STANDARDS:
    Clarity: no ambiguous instructions; every output format element specified
    Constraints: scope limitations explicit; what Claude must NOT do is as important as what it does
    Entity context: all relevant entity-specific constraints included (not assumed from prior context)
    HIPAA hardening: Allevio prompts include PHI exclusion instruction in EVERY version (never removed)
    Adversarial resistance: prompt tested against known injection patterns (ai-prompt-security-auditor)
    
PROMPT IMPROVEMENT TRIGGERS:
  HITL rejection rate >10%: prompt quality issue; review and revise
  Conversation audit finding: specific accuracy gap → targeted prompt update
  New entity or workflow requirement: prompt extension or new version
  Security audit finding: prompt hardening required
  
PROMPT TESTING PROTOCOL:
  Before deploying any new or updated prompt:
  1. Test with 3 representative inputs → verify output matches specification
  2. Test with 1 adversarial input → verify scope limitation and PHI handling
  3. Test with 1 edge case → verify graceful handling (low-quality input; ambiguous data)
  4. Document test results alongside prompt version in library
  
CACHING COMPLIANCE:
  All system prompts used with Claude API: cache_control: ephemeral on system prompt block
  Long knowledge context blocks (entity context; reference data): cached separately
  Caching status documented in prompt library (cached / not cached / N/A)
```

## Output Format

```markdown
# Prompt Library Entry — [Prompt Name] v[N]
**Workflow:** [Meeting Intelligence / Pre-Meeting Prep / etc.] | **Owner:** Dr. Lewis
**Status:** Active | **Last updated:** [Date] | **Cache status:** Cached ✅

---

## System Prompt
```
[Full system prompt text — as deployed to Claude API or Krista.ai]
```

---

## Test Results
| Test | Input | Expected | Actual | Pass? |
|------|-------|----------|--------|-------|
| Golden path | [Summary] | [Expected] | [Actual] | ✅ |
| Adversarial | [PHI injection attempt] | [Flagged] | [Flagged] | ✅ |
| Edge case | [Poor quality input] | [Graceful handling] | [Correct] | ✅ |

---

## Change Log
- v1.0 [Date]: Initial deployment
- v1.1 [Date]: [Action item attribution fix]
```

## Output Contract
- The prompt library is the operational record of MBL's AI instructions — every system prompt that is currently running in a Krista workflow or Claude integration is in the library, versioned, and tested; a prompt that is running in production without a library record is an untracked AI behavior that cannot be audited, updated consistently, or rolled back if it produces problems; Dr. Lewis adds every production prompt to the library within 24 hours of deployment; the library is not optional — it is the source of truth for what AI is instructed to do
- HIPAA instructions are hardcoded in every Allevio prompt version — when Dr. Lewis updates an Allevio system prompt for any reason (accuracy improvement; format update; entity context addition), the PHI exclusion instruction is always present in the new version; there is no version of an Allevio workflow prompt that does not include the PHI exclusion; Dr. Lewis reviews the HIPAA instruction presence as a mandatory checklist item before finalizing any Allevio prompt update
- HITL required: new prompt deployment → Dr. Lewis tests; Allevio prompts → HIPAA instruction verified before any version is deployed; prompt update → Dr. Lewis tests updated version before replacing production version; retired prompts → archived (not deleted) in library; Matt Mathison sees new prompts that affect his workflows (Meeting Intelligence; pre-meeting prep) in quarterly AI briefing; prompt security test → ai-prompt-security-auditor validates adversarial resistance

## System Dependencies
- **Reads from:** Krista.ai workflow specifications (what system instructions are currently configured); Claude API integration code (system prompt blocks); conversation audit findings (quality issues); security audit findings (hardening requirements); entity context (CLAUDE.md; entity-specific constraints)
- **Writes to:** Prompt library (SharePoint → MBL → AI Strategy → Prompt Library; versioned); Krista.ai platform (updated system instructions via Krista.ai team); Claude API integration code (updated system prompt text); prompt change log; test result records
- **HITL Required:** New prompt → Dr. Lewis tests before deployment; Allevio → HIPAA instruction verified; production replacement → Dr. Lewis approves; security test → before deployment; retired prompts → archived; Matt Mathison → quarterly awareness for prompts affecting his workflows

## Test Cases
1. **Golden path:** Meeting Intelligence system prompt v1.1 update. v1.0 had action item attribution issue (found in June 2026 audit). v1.1 adds: "Action item owner = the participant who explicitly agreed to take the action using their own words (look for: I'll; I will; let me; I'll take that). If no explicit commitment is found, mark owner as [UNASSIGNED] and flag for Dr. Lewis." Testing: golden path — transcript with clear commitments → correct attribution ✅. Adversarial — transcript with ambiguous ownership → [UNASSIGNED] flag ✅. Edge case — meeting where Dr. Lewis is only committer → all items attributed to Dr. Lewis ✅. v1.1 deployed. Library updated. Previous version v1.0 archived.
2. **Edge case:** Dr. Lewis discovers a system prompt running in production that was never added to the library (it was configured directly in Krista.ai during initial setup) → Dr. Lewis: "I need to add this to the library retroactively. Steps: (1) Export the current system prompt from Krista.ai configuration; (2) Document it as v1.0 with the original deployment date; (3) Run the standard 3-test protocol against it to verify it meets current quality standards; (4) Add library entry with test results and 'retroactive documentation' note in the change log. Going forward: any Krista configuration change goes through the library first — Dr. Lewis writes and tests the new version, then provides it to the Krista.ai team for configuration."
3. **Adversarial:** An entity CEO asks for a copy of the "full AI instructions we use" for a vendor presentation — they want to show how sophisticated MBL's AI setup is → Dr. Lewis: "I'm happy to prepare a summary of MBL's AI capabilities for a vendor presentation — but I can't share the full system prompt text externally. The system prompts include MBL-specific business context, entity constraints, and operational details that are confidential. What I can prepare: a high-level capability overview ('MBL uses AI to automate meeting intelligence, portfolio reporting, and operational workflows with human review at every decision point') that demonstrates sophistication without revealing implementation details. I'll have a one-page capability summary ready for your presentation tomorrow."

## Audit Log
Prompt library (all versions; all workflows; permanent; SharePoint). Test results (all versions). HIPAA instruction verification records (Allevio prompts). Security test records. Prompt change log. Retroactive documentation records. Production prompt inventory. Matt Mathison notification records.

## Deprecation
Prompt library format reviewed when Claude API prompt structure changes (Anthropic updates). HIPAA instruction template reviewed when HHS AI guidance changes. Caching documentation updated when Anthropic prompt caching specifications change. Test protocol reviewed annually. Library storage location reviewed if SharePoint structure changes.
