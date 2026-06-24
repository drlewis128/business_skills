---
name: agops-deploy-documentation-builder
description: "Build documentation for MBL agent workflows and integrations. Trigger phrases: agent documentation, build agent docs, integration diagram, data flow diagram, HITL routing map, entity runbook, agent brief, workflow documentation, document this agent, agent operating guide, emergency shutdown procedure, documentation standards, agent data flow, SharePoint documentation, runbook builder, documentation update trigger, two-page doc limit, plain language docs, agent architecture doc, documentation gap"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[agent-name] [doc-type: brief|integration-diagram|data-flow|hitl-map|runbook] [entity: MBL|Allevio|HIVE|Column6]"
---

# Agent Documentation Builder

This skill produces clear, complete documentation for MBL agent workflows — from high-level agent briefs to entity-specific runbooks — following MBL's plain-language, under-2-page standard. Documentation is filed to SharePoint immediately and updated within 48 hours of any workflow change.

## When to Use

- A new agent or Krista.ai workflow is approaching go-live and needs documentation before deployment
- An existing agent's workflow changes (new system connection, updated HITL routing, prompt revision) and documentation must be updated within the 48-hour window
- A portfolio entity ops team needs an entity-specific runbook they can reference without Dr. Lewis in the room
- Matt Mathison or an entity CEO asks for a plain-language summary of how an agent works and who reviews its outputs

## Agent Documentation Builder Framework

```
DOCUMENTATION TYPES — DEFINITIONS AND STANDARDS
────────────────────────────────────────────────────────────────
TYPE 1 — AGENT BRIEF
  Audience: Matt Mathison, entity CEOs, non-technical stakeholders
  Length: 1 page maximum (500 words)
  Contents:
    □ What the agent does (plain language, 3 sentences)
    □ What data it reads (listed, not described in detail)
    □ What it produces (output type and destination)
    □ Who reviews the output before action is taken (HITL owner by name)
    □ How to pause it immediately (emergency shutdown — single sentence)
    □ Agent version and last-updated date
  Tone: Executive — no jargon, no acronyms without definition, no code

TYPE 2 — INTEGRATION DIAGRAM
  Audience: Dr. Lewis, technical ops, Krista.ai team
  Length: 1 diagram + 1/2 page legend
  Contents:
    □ All upstream data sources (labeled with system name and access type)
    □ Krista.ai orchestration layer (trigger, workflow ID)
    □ Claude API call (model, estimated tokens)
    □ All downstream write targets (system, record type, frequency)
    □ HITL decision point clearly marked
    □ Entity isolation boundaries marked (Allevio data NEVER crosses to HIVE or Column6)
  Format: ASCII diagram acceptable; Mermaid/Lucidchart preferred for SharePoint version

TYPE 3 — DATA FLOW DOCUMENT
  Audience: Dr. Lewis, compliance, entity security leads
  Length: 2 pages maximum
  Contents:
    □ Data in: source system, data type, sensitivity classification (Public/Internal/Confidential/PHI)
    □ Data in transit: encryption method, where data travels
    □ Data processed by Claude API: what is sent, what model, whether cached
    □ Data at rest: where outputs are stored, retention period
    □ Data out: destination system, record type, who can access
    □ PHI exclusion confirmation: explicit statement that PHI is excluded from all flows
    □ PII handling: how PII is minimized or masked where not needed
  Note: For Allevio — PHI absolute prohibition must appear as an explicit statement in every data flow doc

TYPE 4 — HITL ROUTING MAP
  Audience: Dr. Lewis, entity ops leads, Krista.ai team
  Length: 1 page
  Contents:
    □ Decision tree: what conditions trigger HITL vs. auto-action
    □ HITL owner by entity (name, not just role)
    □ HITL escalation path: if primary HITL unavailable, who is secondary
    □ SLA for HITL review (e.g., review within 4 business hours or output expires)
    □ What happens if HITL SLA is missed (auto-expire, alert, or hold?)
    □ Financial output gate: any financial output always routes to Dr. Lewis regardless of entity

TYPE 5 — ENTITY-SPECIFIC RUNBOOK
  Audience: Entity ops lead; usable without Dr. Lewis present
  Length: 2 pages maximum
  Contents:
    □ Agent name and version
    □ What triggers the agent (schedule, event, or manual)
    □ What the entity ops lead sees (output format, delivery location)
    □ How to approve or reject an output (HITL interface instructions)
    □ How to flag a bad output (contact: Dr. Lewis — jlewis@mblpartners.com / 602-880-6491)
    □ Emergency shutdown procedure (step-by-step, < 5 steps, no technical knowledge required)
    □ Frequently Asked Questions (3-5 Q&A pairs based on likely entity questions)

DOCUMENTATION STANDARDS — ALL DOCUMENT TYPES
────────────────────────────────────────────────────────────────
  □ Plain language: if the entity CEO cannot read it without asking questions, rewrite it
  □ Length limit: 2 pages per document; briefs = 1 page; diagrams = 1 diagram + legend
  □ Emergency shutdown procedure: required in EVERY document type, in plain language
  □ Version header: every document includes agent name, version, and document date
  □ Entity-specific language: use entity's own terminology where known
    (Allevio: members, not patients; HIVE: working interest, royalty — not generic "assets")
  □ No raw code, no JSON, no technical implementation detail in stakeholder-facing docs

DOCUMENTATION STORAGE
────────────────────────────────────────────────────────────────
  Primary path: SharePoint → AI-Ops → Documentation → [Agent Name] → [Doc Type] → [Version]
  File naming: [agent-name]_[doc-type]_v[version]_[YYYYMMDD].md
  Examples:
    agops-meet-weekly-summary_brief_v1.1.0_20260624.md
    agops-meet-weekly-summary_runbook_allevio_v1.1.0_20260624.md

  Version control: each new version is a new file; prior versions are NOT deleted
  Access: Dr. Lewis (owner); Matt Mathison (read); entity CEO (read, entity docs only)

DOCUMENTATION UPDATE TRIGGER
────────────────────────────────────────────────────────────────
  Any of the following changes require documentation update within 48 hours:
    □ New or removed system connection (update integration diagram + data flow)
    □ HITL routing change (update HITL routing map + entity runbook)
    □ Claude model version change (update data flow doc — model name changes)
    □ New entity added as target (create entity-specific runbook)
    □ Emergency shutdown procedure changes (update ALL doc types)
    □ Agent deprecated (add deprecation notice to all docs; do not delete docs)

  48-hour clock starts when Dr. Lewis signs the changelog entry for the change.
  Documentation update is a blocking gate for any subsequent deployment.
```

## Output Format

```markdown
# [Agent Name] — [Document Type]
**Version:** [X.X.X] | **Date:** [YYYY-MM-DD] | **Owner:** Dr. John Lewis

---

## What This Agent Does
[3 sentences, plain language]

## Data It Reads
- [Source system]: [data type] — [sensitivity: Public/Internal/Confidential/PHI]

## What It Produces
[Output type] → delivered to [destination system / person]

## Who Reviews Outputs
**HITL Owner:** [Name] — reviews before any action is taken

## Emergency Shutdown
Contact Dr. John Lewis immediately: jlewis@mblpartners.com | 602-880-6491
To pause via Krista.ai: [specific step in plain language]

---
*For technical details, see Integration Diagram and Data Flow documents in SharePoint → AI-Ops → Documentation → [Agent Name]*
```

## Output Contract

- The 2-page length limit is a design constraint, not a guideline. Documentation that exceeds 2 pages signals that the agent itself is too complex to explain simply, which is a signal to re-examine the agent's scope — not to write more documentation. Stakeholders who need a 5-page document to understand an agent will not read it, which defeats the purpose. Concise documentation forces the builder to understand the agent well enough to explain it in plain language.

- The emergency shutdown procedure appears in every document type because the person who needs it most — an entity ops lead who has never touched Krista.ai — will not know which document to find in a crisis. Redundancy in safety procedures is intentional. The procedure is written in plain language with no technical prerequisites because the goal is that any MBL or entity staff member can pause an agent without calling Dr. Lewis first, even if Dr. Lewis is the preferred contact.

- The 48-hour documentation update trigger is synchronized with the changelog sign-off, not the deployment date, because documentation that lags deployment creates a window where the runbook in an entity ops lead's hands does not match the agent actually running. A 48-hour window from sign-off gives Dr. Lewis time to update documents before the new version ships — maintaining the invariant that deployed documentation always reflects deployed behavior.

## System Dependencies

**Reads from:**
- Agent SKILL.md (agent name, version, trigger, data sources, HITL routing)
- Integration test sign-off (to confirm data flow is accurate)
- Changelog entry (to determine what changed and what documentation needs updating)

**Writes to:**
- SharePoint → AI-Ops → Documentation → [Agent Name] (all document types)
- Monday.com AI-Ops board (documentation task marked complete)

**HITL Required:**
- Dr. Lewis reviews all documentation before it is filed to SharePoint
- Entity-specific runbooks sent to entity ops lead require Dr. Lewis approval before send
- Matt Mathison agent brief delivered by Dr. Lewis with context — not auto-sent

## Test Cases

**Golden Path:** `agops-deploy-documentation-builder "agops-meet-weekly-summary" brief MBL` — Produces a 1-page agent brief for the Meeting Intelligence Weekly Summary agent, in plain language, with the correct HITL owner (Dr. Lewis for MBL), emergency shutdown contact populated, SharePoint filing path rendered, and version/date header correct.

**Edge Case:** User requests a runbook for Allevio that describes the agent's data flow including member health data that the agent was supposed to exclude. Skill identifies that the data flow description includes PHI-adjacent data, flags a potential PHI flow inconsistency, halts runbook generation, and requires Dr. Lewis to confirm whether the agent's PHI exclusion is functioning correctly before producing a runbook that would imply PHI is handled safely.

**Adversarial:** A documentation update is requested for an agent where the HITL routing was changed to remove Dr. Lewis as the financial output reviewer, replacing him with an automated action. Skill detects that the HITL routing map change removes a mandatory financial gate, flags it as a compliance risk, refuses to document the new routing as valid, and requires Dr. Lewis to explicitly confirm the financial output gate has been moved — not removed — before updating the HITL routing map.

## Audit Log

Every document created or updated by this skill is recorded in SharePoint → AI-Ops → Audit → Documentation-Audit-Log with the agent name, document type, version, creation or update timestamp, triggering change (changelog reference), and Dr. Lewis sign-off date. Documents that are overdue for update (workflow changed but documentation not updated within 48 hours) are flagged in the audit log and surfaced in the weekly AI-Ops review. No document is deleted — deprecated documents are marked with a deprecation notice and retained.

## Deprecation

This skill is deprecated when MBL adopts an agent platform that auto-generates and auto-updates documentation from agent configuration — including integration diagrams from system connection metadata, HITL routing maps from workflow logic, and entity runbooks from entity-specific configuration. Until auto-generation is available, this skill is the authoritative documentation standard for all MBL agent workflows. Deprecation requires confirmation that generated documentation meets the 2-page limit, plain-language, and emergency shutdown procedure requirements enforced by this skill.
