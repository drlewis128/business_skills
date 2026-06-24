---
name: agops-deploy-changelog-manager
description: "Manage the changelog for MBL agent and skill updates across the portfolio. Trigger phrases: agent changelog, skill update log, version history, what changed in this agent, changelog entry, semantic versioning, breaking change notification, agent version bump, skill version control, changelog format, changelog storage, entity impact log, agent release notes, change type classification, feature change log, fix log, security patch log, deprecation notice, quarterly changelog summary, Matt Mathison changelog briefing"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[agent-name] [change-type: feature|fix|security|deprecation] [version] [entity-impact: MBL|Allevio|HIVE|Column6|ALL]"
---

# Agent Changelog Manager

This skill produces and maintains structured changelog entries for all MBL agent and skill updates, enforcing semantic versioning, entity impact tagging, and Dr. Lewis sign-off for every recorded change. The changelog is the authoritative record of what changed, when, why, and who it affects — across MBL HoldCo and all portfolio entities.

## When to Use

- A new agent version is ready to deploy and needs a changelog entry before the rollout planner is engaged
- A hotfix or security patch has been applied to a running agent and must be documented retroactively within 24 hours
- A portfolio entity CEO asks what changed in their agent since the last briefing
- Matt Mathison requests his quarterly changelog summary covering all agents that moved in the period

## Agent Changelog Manager Framework

```
CHANGELOG ENTRY STRUCTURE
────────────────────────────────────────────────────────────────
Each entry contains exactly these fields — no field may be omitted:

  Date:          [YYYY-MM-DD]
  Agent:         [agent-name] (e.g., agops-deploy-rollout-planner)
  Version:       [MAJOR.MINOR.PATCH] — see semantic versioning rules below
  Change Type:   [FEATURE | FIX | SECURITY | DEPRECATION]
  Description:   [1-3 sentences — plain language; what changed and why]
  Entity Impact: [MBL | Allevio | HIVE | Column6 | ALL] — list all affected
  Breaking:      [YES / NO] — see breaking change rules below
  Dr. Lewis Sign-Off: [signature + date]
  Matt Notified: [YES / NO / N/A] — required if breaking = YES or entity impact = ALL

SEMANTIC VERSIONING RULES FOR MBL AGENTS
────────────────────────────────────────────────────────────────
VERSION FORMAT: MAJOR.MINOR.PATCH

  PATCH (x.x.N) — increment for:
    - Prompt wording improvements that do not change output schema
    - Bug fixes that restore intended behavior
    - Cost optimizations with no output change
    - Documentation-only updates to SKILL.md
    Examples: 1.0.0 → 1.0.1

  MINOR (x.N.0) — increment for:
    - New capability added to existing agent (new output section, new data source)
    - New entity added as a target for an existing agent
    - Non-breaking schema extension (new optional output field)
    - HITL routing change that does not remove existing HITL gates
    Examples: 1.0.1 → 1.1.0

  MAJOR (N.0.0) — increment for:
    - Output schema change that breaks downstream consumers
    - Removal of an existing capability or output field
    - Change to HITL routing that removes or bypasses an existing gate
    - Claude model version upgrade (model behavior change = breaking)
    - Agent renamed, merged, or split
    Examples: 1.1.0 → 2.0.0
    NOTE: MAJOR version bumps always trigger entity CEO notification

BREAKING CHANGE RULES
────────────────────────────────────────────────────────────────
A change is BREAKING if any of the following are true:
  □ Output schema changes in a way that breaks a downstream integration
  □ A HITL gate is removed or bypassed
  □ The agent's data access scope expands (reads new systems)
  □ The agent's write targets change (writes to a new system or record type)
  □ The Claude model version changes (new model = potential behavior shift)
  □ The Krista.ai workflow version changes in a way that alters trigger logic

BREAKING CHANGE NOTIFICATION PROCEDURE
  Step 1: Flag entry as Breaking: YES in changelog
  Step 2: Draft entity CEO notification (see template below)
  Step 3: Dr. Lewis reviews and signs notification before send
  Step 4: Send notification minimum 5 business days before deployment
  Step 5: Log notification send date and recipient in changelog entry
  Step 6: Matt Mathison CC on all breaking change notifications

ENTITY CEO NOTIFICATION TEMPLATE (BREAKING CHANGE)
────────────────────────────────────────────────────────────────
Subject: [Agent Name] — Significant Update — Action Required by [Date]
To: [Entity CEO]
CC: Dr. John Lewis, Matt Mathison

  Summary: [Agent Name] is being updated to version [X.X.X] on [Date].
  This update includes a change that affects how the agent works for [Entity].

  What is changing:
  [1-2 sentences — plain language, no jargon]

  What you need to do before [Date]:
  [Specific action required from entity — or "No action required; we are handling this"]

  If you have concerns, contact Dr. John Lewis at jlewis@mblpartners.com or 602-880-6491.

CHANGE TYPE DEFINITIONS
────────────────────────────────────────────────────────────────
  FEATURE:     New capability, new integration, new output type, new entity added
  FIX:         Correction of unintended behavior; restores spec-compliant operation
  SECURITY:    Vulnerability patch, auth update, PHI exclusion improvement, secret rotation
  DEPRECATION: Agent scheduled for retirement; entity notification required; see agops-skill-deprecation-manager

CHANGELOG STORAGE
────────────────────────────────────────────────────────────────
  Primary:   GitHub → drlewis128/business_skills → CHANGELOG.md (per-agent)
  Secondary: SharePoint → AI-Ops → Changelog → [Agent Name] → CHANGELOG.md
  Sync:      GitHub is source of truth; SharePoint is the read copy for entity stakeholders
  Retention: Indefinite — changelogs are never deleted; deprecated agents retain their log

MATT MATHISON QUARTERLY CHANGELOG SUMMARY
────────────────────────────────────────────────────────────────
Cadence: Produced at end of each calendar quarter (Q1/Q2/Q3/Q4)
Contents:
  □ Count of agents updated in the quarter (by change type)
  □ List of MAJOR version bumps (breaking changes) with entity impact
  □ List of new agents deployed to production
  □ List of agents deprecated or suspended
  □ Notable security fixes (description only; no technical detail)
  □ Budget summary: estimated cost delta vs. prior quarter
Format: 1-page executive summary; delivered via email from Dr. Lewis to Matt Mathison
```

## Output Format

```markdown
## Changelog Entry — [Agent Name]

| Field | Value |
|-------|-------|
| Date | [YYYY-MM-DD] |
| Version | [MAJOR.MINOR.PATCH] |
| Change Type | FEATURE / FIX / SECURITY / DEPRECATION |
| Description | [Plain-language summary of what changed and why] |
| Entity Impact | MBL / Allevio / HIVE / Column6 / ALL |
| Breaking | YES / NO |
| Matt Notified | YES / NO / N/A |

**Dr. Lewis Sign-Off:** ___________________________ Date: ___________

---
### Quarterly Summary (Q[N] [YEAR])

| Metric | Count |
|--------|-------|
| Total changes logged | |
| MAJOR (breaking) | |
| MINOR (additive) | |
| PATCH (fix/security) | |
| New agents deployed | |
| Agents deprecated | |

**Budget Delta vs. Prior Quarter:** +/- $[amount]
```

## Output Contract

- Semantic versioning is applied consistently because portfolio entity integrations — Monday.com boards, SharePoint automations, downstream Krista.ai workflows — are built to consume agent output schemas. A MAJOR version bump signals to the entity that their integration may break and they need to verify before the update ships; without that signal, entities discover breaking changes in production, which erodes trust in the AI program faster than any single bad output would.

- The breaking change notification requirement (5 business days minimum) exists because entity CEOs and their ops teams need time to prepare, not just to be informed. A notification sent the day before a breaking change is a CYA exercise, not a real partnership. Five days gives the entity time to review, ask questions, and confirm their downstream integrations are ready — converting what would be a surprise disruption into a managed transition.

- The GitHub-primary / SharePoint-secondary storage pattern keeps the changelog in the same version-controlled environment as the agent code itself, making it impossible for the changelog to drift from the actual agent state. SharePoint serves as the stakeholder-readable copy because entity CEOs and Matt Mathison have SharePoint access but not GitHub access — the dual-storage model satisfies both the engineering integrity requirement and the stakeholder accessibility requirement simultaneously.

## System Dependencies

**Reads from:**
- GitHub → drlewis128/business_skills (current agent SKILL.md and version)
- Prior changelog entries (to determine next version number)
- Integration test sign-off record (to confirm change was tested before logging)

**Writes to:**
- GitHub → drlewis128/business_skills → [agent-name]/CHANGELOG.md
- SharePoint → AI-Ops → Changelog → [Agent Name] → CHANGELOG.md
- Matt Mathison quarterly summary (email draft via M365)

**HITL Required:**
- Dr. Lewis signs every changelog entry before it is filed
- Breaking change notifications require Dr. Lewis review before send
- Matt Mathison quarterly summary delivered by Dr. Lewis directly (not automated)

## Test Cases

**Golden Path:** `agops-deploy-changelog-manager "agops-meet-weekly-summary" feature 1.1.0 MBL` — Produces a correctly formatted MINOR version changelog entry for a new feature added to the weekly summary agent, entity impact set to MBL, Breaking: NO, Dr. Lewis sign-off block rendered, entry filed to correct GitHub path and SharePoint path.

**Edge Case:** A SECURITY fix is applied to an agent that serves Allevio — the fix patches a prompt injection vulnerability that could have allowed an attacker to extract system instructions. Skill classifies as SECURITY, evaluates whether the fix changes HITL routing or output schema (it does not), sets Breaking: NO, but flags that a security fix affecting Allevio requires Dr. Lewis notification to Allevio's ops lead regardless of breaking status — standard breaking change notification procedure does not apply, but a security advisory does.

**Adversarial:** A developer attempts to log a MAJOR version change as a PATCH to avoid triggering entity CEO notifications. Skill evaluates the described change (output schema field removed) against the semantic versioning rules, overrides the submitted version classification, reclassifies as MAJOR, and requires the breaking change notification template to be completed before the entry is finalized. Classification is not user-adjustable without Dr. Lewis explicit override.

## Audit Log

Every changelog entry produced or modified by this skill is recorded in SharePoint → AI-Ops → Audit → Changelog-Audit-Log with the submitter identity, submission timestamp, version classification rationale, sign-off status, and entity notification status. The audit log is reviewed by Dr. Lewis quarterly alongside the Matt Mathison summary to confirm that all agent changes in the period have corresponding, signed changelog entries — any gap is treated as a documentation incident requiring remediation.

## Deprecation

This skill is deprecated when MBL's agent lifecycle platform includes a native versioning and changelog system that automatically captures agent diffs, classifies change types, and generates entity notifications with Dr. Lewis approval gating built into the platform workflow. Until that system exists, this skill is the authoritative changelog standard for all MBL agents and skills. Deprecation requires confirmation that the replacement system enforces semantic versioning rules, breaking change notifications, and Dr. Lewis sign-off on every entry.
