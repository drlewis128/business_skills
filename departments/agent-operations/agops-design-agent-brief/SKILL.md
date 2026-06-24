---
name: agops-design-agent-brief
description: "Write a briefing document for a new agent build. Use this skill when you need to scope a new agent, design agent brief, document agent purpose, define agent scope, write agent specification, plan agent build, estimate agent cost, design HITL checkpoints, select agent skills, define success criteria, assess agent priority, document data access requirements, define output destinations, scope agent for portfolio entity, brief an agent build for Krista.ai, write agent intake document, create agent design doc, outline agent architecture, capture agent requirements, produce agent planning document."
argument-hint: "<agent-name or description of what the agent should do>"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
---

# Agent Brief Designer

Write a structured briefing document for a new agent build at MBL Partners or a portfolio entity. This skill produces a complete intake and design artifact that Dr. Lewis uses to scope, resource, prioritize, and sequence each new agent before a single line of code is written.

## When to Use

- Matt Mathison or a portfolio entity leader requests a new AI agent or automation and you need to capture the full scope before building.
- Dr. Lewis is evaluating whether to build a net-new agent or compose existing skills into an existing agent, and needs a comparison document.
- A new phase of the MBL AI Orchestration Project is launching and each planned agent requires a formal brief before resourcing.
- An agent request arrives with vague requirements and the brief process is used to extract the structured spec from the requestor.

## Agent Brief Framework

```
═══════════════════════════════════════════════════════
AGENT BRIEF — MBL PARTNERS AI OPERATIONS
═══════════════════════════════════════════════════════

SECTION 1: AGENT IDENTITY
─────────────────────────
Agent Name (proposed):
Skill Prefix (agops- / cs- / fin- / etc.):
Requested By:
Date:
Target Entity: [ ] MBL HoldCo  [ ] Allevio  [ ] HIVE  [ ] Column6  [ ] Cross-Entity
Phase Alignment: [ ] Phase 0  [ ] Phase 1  [ ] Phase 2  [ ] Phase 3  [ ] Phase 4  [ ] Standalone

SECTION 2: PURPOSE & SCOPE
───────────────────────────
One-Sentence Mission:
Problem Being Solved:
What the Agent Does (bullet list, max 6 items):
  -
  -
  -
What the Agent Does NOT Do (explicit exclusions):
  -
  -

SECTION 3: ENTITY CONSTRAINTS
──────────────────────────────
Entity-Specific Rules That Apply:
  Allevio:   [ ] HIPAA in scope — PHI ABSOLUTE PROHIBITION in agent output
  HIVE:      [ ] LP data isolation required  [ ] WTI price trigger applies
  Column6:   [ ] CCPA compliance required    [ ] Gross margin floor ≥35% enforced
  MBL HoldCo:[ ] M365 identity layer required [ ] QB/GHL write access needed
Portfolio Isolation Required: [ ] Yes  [ ] No
Reason if cross-entity output is permitted:

SECTION 4: SKILL SET SELECTION
───────────────────────────────
Minimum Viable Skill Set (must-have skills):
  1.
  2.
  3.
Full Skill Set (nice-to-have additions):
  4.
  5.
Skill Conflicts Checked: [ ] Yes — no two selected skills write to the same destination
Selection Method: [ ] agops-design-skill-selector output attached

SECTION 5: DATA ACCESS REQUIREMENTS
─────────────────────────────────────
Reads From:
  [ ] Microsoft 365 (Outlook / Teams / SharePoint)
  [ ] Monday.com (read boards, task states)
  [ ] QuickBooks (read-only financial records)
  [ ] Bill.com (invoice / expense data)
  [ ] GoHighLevel / CRM (contact, deal data)
  [ ] Krista.ai conversation store
  [ ] Other: ________________________
Writes To:
  [ ] Monday.com (task creation / updates)
  [ ] Teams channel / email / SharePoint
  [ ] GoHighLevel (CRM records)
  [ ] Bill.com (action triggers — HITL required)
  [ ] QuickBooks (journal entries — HITL required)
  [ ] Other: ________________________
Data Freshness Required: [ ] Real-time  [ ] Hourly  [ ] Daily  [ ] On-demand

SECTION 6: OUTPUT DESTINATIONS
────────────────────────────────
Primary Output Channel:
Secondary Output Channel:
Output Audience:
Output Format: [ ] Slack/Teams message  [ ] Email  [ ] Monday.com task  [ ] Dashboard  [ ] Report doc
Output Triggers: [ ] Scheduled  [ ] Event-driven  [ ] On-demand

SECTION 7: HITL CHECKPOINT DESIGN
───────────────────────────────────
Primary HITL: Dr. John Lewis (jlewis@mblpartners.com) — all MBL agents
Secondary HITL (entity-specific):
HITL Triggers That Apply:
  [ ] Any financial action (AP/AR/payroll/wire/journal entry)
  [ ] Output routed to Matt Mathison
  [ ] Output routed to entity CEO / Managing Partner
  [ ] PHI-adjacent output (Allevio only — full stop if PHI detected)
  [ ] Irreversible system action (delete / send / publish)
  [ ] Error state requiring human judgment
HITL Channel: [ ] Teams message  [ ] Email  [ ] Monday.com task  [ ] Pager
HITL Timeout: _______ hours → escalation action: _______________________
Approval Flow: Draft → HITL review → Approve/Reject → Execute / Archive

SECTION 8: COST ESTIMATE
──────────────────────────
Claude Model Tier: [ ] claude-haiku-4-5 (low cost, high volume)
                   [ ] claude-sonnet-4-6 (balanced — default)
                   [ ] claude-opus-4-8 (complex reasoning only)
Estimated Calls/Day:
Avg Tokens In / Out per Call:
Prompt Caching Applicable: [ ] Yes — static system prompt cached  [ ] No
Estimated Monthly Claude API Cost: $
Estimated Krista.ai Orchestration Cost: $
Integration Dev Hours (one-time): _____ hrs
Ongoing Maintenance Hours/Month: _____ hrs/mo

SECTION 9: SUCCESS CRITERIA
─────────────────────────────
Primary KPI (measurable, time-bound):
Secondary KPIs:
  1.
  2.
Failure Conditions (when to halt or roll back):
  1.
  2.
Review Cadence: [ ] Weekly  [ ] Monthly  [ ] Quarterly

SECTION 10: BUILD PRIORITY
───────────────────────────
Priority Score (1 = highest):
Rationale:
Dependencies (agents or integrations that must exist first):
Estimated Build Start:
Estimated Go-Live:
Owner at Go-Live:

═══════════════════════════════════════════════════════
BRIEF STATUS: [ ] Draft  [ ] In Review  [ ] Approved  [ ] Rejected
Approved By:                          Date:
═══════════════════════════════════════════════════════
```

## Output Format

```markdown
# Agent Brief: [Agent Name]
**Entity:** [MBL HoldCo / Allevio / HIVE / Column6]
**Phase:** [Phase 0–4 / Standalone]
**Status:** [Draft / Approved]
**Date:** [YYYY-MM-DD]

## Mission
[One sentence.]

## Skill Set
- Minimum viable: [skill1, skill2, skill3]
- Full set: [+ skill4, skill5]

## HITL Checkpoints
- [trigger] → [channel] → [owner] → [timeout]

## Cost Estimate
| Item | Monthly |
|------|---------|
| Claude API | $X |
| Krista.ai | $X |
| Dev (one-time) | $X |

## Success Criteria
1. [KPI + target + timeframe]
2. [KPI + target + timeframe]

## Priority
**Score:** [1–5] — [Rationale sentence]
**Dependencies:** [list]
**Estimated Go-Live:** [date]
```

## Output Contract

- **Every brief produced by this skill is a binding planning artifact, not a suggestion.** The completed brief is the authoritative scope document for the agent build. If the brief is approved by Dr. Lewis, the skill set, HITL checkpoints, data access list, and success criteria in the brief become the implementation spec. Deviation from an approved brief requires a brief amendment, not informal override.

- **Entity constraint fields are non-negotiable gates, not optional fields.** Allevio's PHI prohibition, HIVE's LP isolation requirement, Column6's CCPA flag, and MBL HoldCo's M365 identity requirement must be completed before the brief reaches Approved status. A brief with blank entity constraint fields cannot be approved. This ensures that compliance requirements are captured at design time, not discovered during build or, worse, at audit.

- **The cost estimate section exists to enforce fiscal discipline on agent proliferation.** MBL's AI program is funded by demonstrated ROI, not by enthusiasm for automation. Every brief must include a Claude model tier selection with rationale (haiku for high-volume low-complexity; sonnet for default; opus for complex reasoning only) because model selection is the single largest driver of per-call cost. An agent brief with no cost estimate is incomplete and will be returned for revision.

## System Dependencies

**Reads From:** Skill registry at `~/.agents/skills/` to validate skill names; MBL entity constraint documentation; Phase roadmap document; existing approved briefs (to check for duplicate agent scope).

**Writes To:** Brief document saved to `~/.agents/briefs/<agent-name>-brief.md`; summary entry pushed to Monday.com Agent Backlog board (HITL required before Monday.com write).

**HITL Required:** Dr. Lewis reviews and approves every brief before it moves to Active Build status. Output routed to Matt Mathison requires a second HITL pass before delivery.

## Test Cases

**Golden Path:** Request arrives — "Build a weekly cash position summary agent for MBL HoldCo that reads QuickBooks and posts to Matt's Teams channel every Monday at 7 AM." Brief is produced with correct entity (MBL HoldCo), correct HITL trigger (output to Matt Mathison), claude-haiku-4-5 model tier (scheduled, low-complexity), M365 write access flagged, Monday.com push included, and success criteria of "Matt confirms receipt and acts on summary within 24 hours, 4 consecutive Mondays."

**Edge Case:** Request targets two entities simultaneously — "Build an agent that summarizes both HIVE LP distributions and Allevio claims." Brief flags this as a cross-entity output requiring portfolio isolation review. The skill does not attempt to merge the two contexts; instead it produces two separate brief stubs and notes that the cross-entity version requires explicit Dr. Lewis sign-off on isolation architecture before proceeding.

**Adversarial:** Request attempts to include PHI in Allevio agent output — "The agent should include patient names and claim details in the Teams summary." The brief's entity constraint section marks PHI ABSOLUTE PROHIBITION as triggered, flags the output channel (Teams) as non-compliant for PHI, and halts the brief at Section 3 with a HITL escalation note. The brief is not completed until the output specification is revised to exclude PHI entirely.

## Audit Log

Every completed agent brief is logged with timestamp, requestor, entity, approved-by, and brief version number. Amendments to approved briefs create a new version (v1.1, v1.2) rather than overwriting the original. The audit trail lives at `~/.agents/briefs/audit-log.jsonl` and is reviewed monthly by Dr. Lewis as part of the AI program governance cycle. Brief approval history is the primary evidence artifact in any post-incident review where an agent caused an unintended action.

## Deprecation

This skill is deprecated when MBL adopts a formal agent lifecycle management platform (e.g., a Krista.ai native project intake module) that captures equivalent structured data. Until that platform is in production and has produced at least 10 approved briefs without gap, this skill remains the authoritative intake method. Deprecation requires Dr. Lewis sign-off and a migration plan that confirms all existing brief data is importable into the replacement system.
