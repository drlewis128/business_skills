---
name: agops-design-entity-context-builder
description: "Build entity-specific context packages for agent initialization. Use this skill when you need to build agent context, create entity context package, design runtime context for agent, define agent initialization data, build context snapshot for Krista.ai agent, specify entity KPIs for agent, define open action items for agent context, capture current system state for agent, design context refresh cadence, manage agent context size, enforce entity isolation in context, exclude PHI from Allevio context, build HIVE context package, build Allevio context package, build Column6 context package, build MBL HoldCo context package, define what data an agent loads at startup, design context freshness policy, build dynamic context block for system prompt, design entity data package for Claude agent."
argument-hint: "<entity name (MBL HoldCo / Allevio / HIVE / Column6) and agent name>"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
---

# Entity Context Builder

Design the entity-specific runtime context package that an MBL Partners agent loads at initialization — the structured data snapshot that tells the agent what is true right now about the entity it serves. This skill defines what data is essential, how fresh it must be, how large it can be, how entity isolation is enforced, and how HIPAA constraints shape what Allevio agents are allowed to load.

## When to Use

- A new agent has an approved system prompt (Block 1–5 complete) and Block 6 (entity context) needs to be specified before the agent can run its first production call.
- An existing agent's context package is stale or oversized — consuming too many tokens or missing KPIs that have become decision-critical — and a context audit is needed.
- A new portfolio entity is being onboarded to the MBL agent program and its context schema needs to be defined from scratch before any entity agents are deployed.
- Dr. Lewis is reviewing agent cost and suspects that context window bloat (too much data in Block 6) is driving up token counts beyond the model budget for a high-frequency agent.

## Entity Context Builder Framework

```
═══════════════════════════════════════════════════════
ENTITY CONTEXT DESIGN — MBL PARTNERS AI OPERATIONS
═══════════════════════════════════════════════════════

SECTION 1: CONTEXT PACKAGE IDENTITY
──────────────────────────────────────
Agent Name:
Target Entity: [ ] MBL HoldCo  [ ] Allevio  [ ] HIVE  [ ] Column6
Context Version:
Context Refresh Cadence: (see Section 4)
Injected As: [ ] First user message  [ ] Cached user turn  [ ] System prompt appendix (rare)
Context Owner (who is responsible for keeping source data current):

SECTION 2: CONTEXT DEFINITION
───────────────────────────────
A context package is the structured data snapshot the agent reads at runtime.
It answers: "What is true right now about this entity that this agent needs to act?"

Context has three tiers:
  ESSENTIAL — Agent cannot complete its mission without this data.
              Always included. Non-negotiable.
  USEFUL    — Improves quality of agent output but agent can function without it.
              Include when token budget allows.
  NOISE     — Data that adds length but does not change agent decisions.
              Never include. Cut ruthlessly.

SECTION 3: ENTITY CONTEXT SCHEMAS
────────────────────────────────────

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
MBL HOLDCO CONTEXT SCHEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ESSENTIAL:
  [ ] Current date + day of week (always — agent must know temporal position)
  [ ] Open action items from Matt Mathison's last meeting (from meet-* skills)
  [ ] Active Monday.com sprint: current tasks, owners, due dates, blockers
  [ ] Cash position summary (from QB): current balance, 30-day runway estimate
  [ ] Open AP items > $10K (from Bill.com): vendor, amount, due date
  [ ] Active portfolio entity status flags: any entity in alert/escalation state
  [ ] AI orchestration phase status: current phase, milestone, blockers

USEFUL:
  [ ] Week-over-week pipeline summary (from GHL CRM)
  [ ] Recent Teams messages flagged as decision-required (last 48 hrs)
  [ ] Upcoming meetings for Matt (next 5 business days)
  [ ] Open BD proposals: stage, value, expected close

NOISE (never include):
  [ ] Full QB transaction ledger (use summary only)
  [ ] All Monday.com tasks regardless of status (active/blocking only)
  [ ] Full email inbox (flagged items only)
  [ ] Historical meeting transcripts > 7 days old

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ALLEVIO CONTEXT SCHEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PHI ABSOLUTE PROHIBITION:
  Context loaded for Allevio agents MUST NOT contain any of the following:
    ✗ Patient names, DOBs, SSNs, MRNs, or any individual identifiers
    ✗ Individual claim details (even redacted claim IDs that could be re-identified)
    ✗ Diagnosis codes, treatment codes, or procedure codes tied to individuals
    ✗ Provider-patient encounter data of any kind
    ✗ Any data field from AdvancedMD or Marshall Medical Billing at row level

  If a data pull from source systems returns PHI, the context builder MUST:
    1. Halt the context pull immediately
    2. Log the PHI detection event to ~/.agents/hitl/audit-log.jsonl
    3. Escalate to Dr. Lewis before proceeding
    4. Use only aggregate / de-identified summary statistics in context

ESSENTIAL (aggregate / de-identified only):
  [ ] Current date + operational period
  [ ] Aggregate claims processed: count, total value, avg days-to-payment
  [ ] Claim denial rate (% of submitted claims denied, current period)
  [ ] Revenue cycle KPIs: PMPM (per member per month), collection rate
  [ ] Open escalation items (operational, not patient-level)
  [ ] Employer group enrollment counts (aggregate, not individual)
  [ ] Care coordination queue depth (count only, no individual cases)
  [ ] Compliance calendar: upcoming HIPAA deadlines, audit dates

USEFUL:
  [ ] Payer mix summary (% by payer category — no individual claim detail)
  [ ] Staffing capacity: current FTE count vs. plan
  [ ] Open vendor/supplier issues (non-PHI operational context)

NOISE (never include):
  [ ] Any row-level data from AdvancedMD or Marshall Medical Billing
  [ ] Individual member utilization data
  [ ] Provider credentialing details (unless agent is specifically a credentialing agent)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
HIVE PARTNERS CONTEXT SCHEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
LP DATA ISOLATION:
  HIVE context is isolated from all other entities.
  No MBL HoldCo, Allevio, or Column6 data in HIVE agent context.
  LP distribution data and individual LP capital account balances require
  HITL review before inclusion in any agent context package (T7 trigger).

WTI PRICE TRIGGER:
  If current WTI crude oil price crosses a threshold defined in the HIVE
  operations brief, flag this in context and trigger a HITL event (T6 class).
  WTI price must be sourced from a real-time feed at context refresh time.

ESSENTIAL:
  [ ] Current date + WTI crude price (real-time at context pull)
  [ ] Uinta Basin production summary: current BOPD (barrels per day), vs. plan
  [ ] Lease operating expense (LOE) summary: current period vs. budget
  [ ] Covercy fund summary: total committed capital, deployed, remaining
  [ ] LP distribution schedule: next distribution date, estimated amount
  [ ] Open landowner / operator issues (count + severity, not individual names)
  [ ] Environmental compliance status: any open items, next audit date

USEFUL:
  [ ] WTI price trend: 30-day moving average vs. current
  [ ] Production variance: field-by-field if HIVE ops agent; fund-level if LP agent
  [ ] Open capital call status (if active)

NOISE (never include):
  [ ] Individual LP identity data in context (LP names, contact info, account numbers)
  [ ] Full Covercy transaction ledger (use fund summary only)
  [ ] Historical production data > 90 days (use trend summary)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
COLUMN6 / SIPROCAL CONTEXT SCHEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
CCPA NOTE:
  Column6 handles consumer data (CTV/Mobile/Gaming ad targeting).
  Context must not include individual consumer identifiers, device IDs,
  or behavioral profiles. Use only aggregate campaign and audience metrics.

GROSS MARGIN FLOOR:
  Include current gross margin % in every Column6 context package.
  If gross margin < 35%, flag as ALERT in context and trigger HITL (T6 class).

ESSENTIAL:
  [ ] Current date + active campaign count
  [ ] Revenue summary: current month actual vs. plan, YTD vs. plan
  [ ] Gross margin %: current period (flag if < 35%)
  [ ] IO (Insertion Order) pipeline: open IOs, total value, at-risk IOs
  [ ] Media cost summary: current period actual vs. budget
  [ ] Active agency relationships: status, open issues
  [ ] Platform ops status: any delivery issues, fill rate anomalies

USEFUL:
  [ ] Top 5 campaigns by spend: performance summary
  [ ] Competitive context: any market rate shifts affecting CPM/CPC
  [ ] Upcoming IO renewals: next 30 days

NOISE (never include):
  [ ] Individual consumer/audience behavioral data
  [ ] Full campaign log at impression level
  [ ] Platform API raw event streams

SECTION 4: CONTEXT FRESHNESS POLICY
──────────────────────────────────────
Match refresh cadence to agent trigger frequency:

  Real-time (pull at each call):
    Use when: agent is event-driven or makes decisions sensitive to same-hour data.
    Examples: WTI price for HIVE; cash position for financial action agents.
    Cost: highest (API call at every agent invocation).

  Hourly cache (pull once, serve for 60 min):
    Use when: agent runs multiple times per hour but data changes slowly.
    Examples: Monday.com sprint state; pipeline status.
    Implementation: Krista.ai context cache with 60-min TTL.

  Daily snapshot (pulled once at agent start time):
    Use when: agent runs on a scheduled daily or weekly cadence.
    Examples: AP aging summary; LP distribution status; PMPM metrics.
    Implementation: morning context pull, cached for the day's agent runs.
    Cost: lowest. Preferred default for scheduled agents.

  On-demand (pulled when agent is triggered):
    Use when: agent is triggered by a specific event and context must reflect that event.
    Examples: meeting transcript agent; new IO received agent.

SECTION 5: CONTEXT SIZE MANAGEMENT
─────────────────────────────────────
Token budget for Block 6 (entity context) by model:
  claude-haiku-4-5:    ≤ 1,500 tokens  (tight — use ESSENTIAL only)
  claude-sonnet-4-6:   ≤ 3,000 tokens  (moderate — ESSENTIAL + selected USEFUL)
  claude-opus-4-8:     ≤ 6,000 tokens  (generous — ESSENTIAL + USEFUL, limit NOISE)

If context exceeds token budget:
  Step 1 — Remove all NOISE items (should already be absent)
  Step 2 — Trim USEFUL items: drop lowest-decision-impact first
  Step 3 — Summarize ESSENTIAL items: replace lists with bullet summaries
  Step 4 — If still over budget: split agent into two agents with separate contexts
  Step 5 — Document trim decisions in context package spec

SECTION 6: ENTITY ISOLATION ENFORCEMENT
──────────────────────────────────────────
Entity isolation rules:
  Rule 1 — Each agent's context package contains data from ONE entity only.
            Cross-entity roll-ups are built by a separate aggregator agent that
            has been explicitly scoped for cross-entity access and HITL-approved.
  Rule 2 — Context data source credentials are entity-scoped:
            Allevio QB ≠ MBL HoldCo QB. Separate credentials, separate pulls.
  Rule 3 — If a data source is shared (e.g., a shared Microsoft tenant),
            query filters MUST scope to entity-specific data.
            "All transactions" queries are never acceptable — always filter by entity.
  Rule 4 — Context packages are stored separately:
            ~/.agents/context/mbl-holdco/
            ~/.agents/context/allevio/
            ~/.agents/context/hive/
            ~/.agents/context/column6/
            Cross-directory reads are blocked by design.

═══════════════════════════════════════════════════════
CONTEXT SPEC STATUS: [ ] Draft  [ ] PHI-Cleared (Allevio)  [ ] Token-Counted  [ ] Approved
Approved By:                          Date:
═══════════════════════════════════════════════════════
```

## Output Format

```markdown
# Entity Context Spec: [Agent Name] — [Entity]
**Date:** [YYYY-MM-DD]  **Version:** [1.0.0]  **Refresh:** [cadence]

## Context Package (Block 6)
```
ENTITY CONTEXT — [ENTITY] — [YYYY-MM-DD HH:MM UTC]
Current Date: [date]
[ESSENTIAL item 1]: [value or "pull from [source]"]
[ESSENTIAL item 2]: [value or "pull from [source]"]
[USEFUL item 1]: [value or "pull from [source]"]
```

## Token Estimate
**Block 6 tokens:** [X] / [budget]  **Model:** [claude-*]

## Refresh Implementation
**Cadence:** [real-time / hourly / daily / on-demand]
**Source Systems:** [list]
**Pull Method:** [Krista.ai connector / direct API / manual]

## Entity Isolation Confirmation
[Statement confirming entity-scoped credentials and storage path]

## PHI Clearance (Allevio only)
[Statement confirming no PHI fields in context schema / or N/A]
```

## Output Contract

- **The context package is the agent's view of reality — its accuracy determines the quality of every decision the agent makes.** A context package that contains stale data (last week's cash position), missing data (open AP items not included), or wrong-entity data (Allevio KPIs in a HIVE agent) produces agent outputs that are confidently wrong. The freshness policy in Section 4 is not a nice-to-have — it is the mechanism that ensures the agent is acting on true information. Context specs that do not specify a refresh cadence are incomplete and will be returned for revision.

- **Entity isolation in Section 6 is the technical enforcement layer for MBL's portfolio governance policy.** Each portfolio company is a legally distinct entity with its own LP, compliance, and contractual obligations. An agent that accidentally surfaces HIVE LP distribution data in a Column6 context package is not just a technical error — it is a potential fiduciary breach. The isolated storage paths, entity-scoped credentials, and filtered query rules in Section 6 are the mechanism that makes "portfolio isolation required" a real constraint rather than a stated aspiration.

- **PHI exclusion from Allevio context is an absolute constraint that overrides all other context design decisions.** If a data source that would otherwise be ESSENTIAL for an Allevio agent's mission contains PHI at the row level, the context spec must find an alternative aggregate source or declare the data unavailable — it cannot include the PHI-containing source with a note to "be careful." The PHI ABSOLUTE PROHIBITION section of the Allevio schema is a hard gate. Any context spec for an Allevio agent that does not include an explicit PHI clearance statement is not approved, regardless of how well the rest of the spec is designed.

## System Dependencies

**Reads From:** Entity source systems (QuickBooks, Bill.com, Monday.com, Covercy, AdvancedMD aggregate APIs, GHL CRM, M365); approved agent brief for mission and decision requirements; agops-design-system-prompt-builder output (to know the token budget for Block 6); WTI price feed (HIVE agents).

**Writes To:** Context spec document at `~/.agents/context/<entity>/<agent-name>-context-spec.md`; runtime context cache at entity-scoped path; context pull implementation spec for Krista.ai connector configuration (HITL required before Krista.ai write).

**HITL Required:** Dr. Lewis approves all context specs before agent goes to production. Allevio context specs additionally require a PHI clearance statement before approval. Any context spec that includes a T7 trigger (HIVE LP data) requires HITL at design time and at each runtime pull.

## Test Cases

**Golden Path:** Context spec request for MBL HoldCo weekly AP summary agent. Entity: MBL HoldCo. ESSENTIAL items identified: current date, open AP items >$10K from Bill.com, cash position from QB, Monday.com active tasks. USEFUL items: upcoming Matt calendar items. NOISE excluded: full QB ledger. Token estimate: 1,800 tokens — within claude-sonnet-4-6 budget. Refresh: daily snapshot at 6 AM MT. Entity isolation: MBL HoldCo QB credentials, entity-scoped Bill.com filter. Spec approved.

**Edge Case:** HIVE context spec for a production summary agent pulls a Covercy report that includes individual LP capital account balances at the row level. Context builder detects this as a T7 trigger (LP data). Halts context pull. Fires HITL to Dr. Lewis: "HITL REQUIRED — T7 LP Data. Covercy pull returned individual LP balances. Recommend: replace with fund-level aggregate summary only. Awaiting approval." Context spec revised to use fund-level summary. Re-approved before agent runs.

**Adversarial:** An Allevio agent context spec is submitted that includes "claims denied by patient insurance category" broken down with claim IDs. The builder identifies that claim IDs are quasi-identifiers that could re-identify individual patients when combined with date and insurance category. PHI detection triggered. Context item rejected. Spec revised to use "denial rate by payer category (%)," which is aggregate and de-identified. PHI clearance issued. Spec approved with documentation of the detection and remediation.

## Audit Log

Every context spec produced by this skill is logged with the agent name, entity, ESSENTIAL/USEFUL items included, token count, refresh cadence, PHI clearance status (Allevio), isolation confirmation, and approval timestamp. Runtime context pulls are also logged (timestamp, source systems accessed, token count of resulting package) to support post-incident review. The design log lives at `~/.agents/context/audit-log.jsonl`; runtime pull logs live at `~/.agents/context/<entity>/pull-log.jsonl`. Monthly review by Dr. Lewis checks for context drift (source systems changing, new data fields appearing that may require re-evaluation of PHI or isolation rules).

## Deprecation

This skill is deprecated when MBL deploys a context management service — a Krista.ai-connected data layer that automatically assembles entity context packages from registered source systems, enforces token budgets, applies PHI filters, and refreshes on the configured cadence without a manually authored spec. Until that service is in production with a 30-day clean run across all four entities, this manual context spec process is the authoritative design method. Deprecation requires migration of all existing context specs into the new service's schema and validation that PHI exclusion and entity isolation rules are enforced programmatically at least as strictly as the manual process.
