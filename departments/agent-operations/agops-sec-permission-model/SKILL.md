---
name: agops-sec-permission-model
description: "Define and enforce agent permission boundaries across MBL Partners AI infrastructure. Use when designing new agent permissions, auditing existing agent access, enforcing entity data isolation, reviewing read-only vs read-write tiers, documenting which agent can do what, restricting Allevio agent from HIVE data, blocking PHI access at the permission layer, requiring Dr. Lewis approval for financial write actions, conducting quarterly permission audits, standing up a new portfolio agent, onboarding an agent to a new system, reviewing access after an incident, mapping agent capabilities to data sources, enforcing least-privilege across Krista.ai workflows, defining scope boundaries before agent deployment, verifying entity isolation between portfolio companies, updating permission docs after system changes, flagging unauthorized permission requests, or generating permission model artifacts for board review."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[agent-id] [entity] [permission-tier: read-only|read-write|financial-write]"
---

# Agent Permission Model

This skill defines, documents, and enforces the permission boundaries governing every AI agent operating within the MBL Partners ecosystem. It ensures least-privilege access across all portfolio entities, prevents cross-entity data leakage, and gates financial write actions behind mandatory HITL approval from Dr. John Lewis.

## When to Use

- A new agent or skill is being deployed and its access scope must be formally defined before go-live.
- An existing agent is being audited for permission drift or access creep during quarterly review.
- A cross-entity data request is detected and must be evaluated against isolation rules before proceeding.
- An agent is requesting financial write access and Dr. Lewis approval workflow must be initiated.

## Agent Permission Model Framework

```
═══════════════════════════════════════════════════════════
SECTION 1: PERMISSION TIER DEFINITIONS
═══════════════════════════════════════════════════════════

TIER 0 — READ-ONLY (Default for all new agents)
  - May read: aggregated, de-identified, or public-facing data
  - May NOT write to any system of record
  - May NOT access PHI, LP data, or individual financial records
  - Examples: meet-summary-builder, cs-health-score-tracker
  - Approval required: None (Dr. Lewis reviews at deployment)

TIER 1 — READ-WRITE (Elevated; requires documented justification)
  - May read: entity-scoped data per isolation rules
  - May write: non-financial outputs (Monday.com tasks, SharePoint docs)
  - May NOT modify QuickBooks, Bill.com, or financial SORs
  - Examples: ops-project-tracker, hr-onboarding-coordinator
  - Approval required: Dr. Lewis sign-off before deployment

TIER 2 — FINANCIAL-WRITE (Restricted; HITL mandatory on every action)
  - May read: QB/Bill.com data for analysis only
  - May write: only with explicit HITL gate on each transaction
  - Every action: logged, timestamped, Dr. Lewis reviewed within 24h
  - Examples: fin-ops-ap-processor, fin-ops-payment-runner
  - Approval required: Dr. Lewis written approval + Matt Mathison awareness

═══════════════════════════════════════════════════════════
SECTION 2: ENTITY ISOLATION RULES
═══════════════════════════════════════════════════════════

RULE: No agent scoped to Entity A may read, write, or infer data
      from Entity B. Isolation is enforced at context assembly.

  ALLEVIO agents:
    - Read: Allevio-scoped SharePoint, Monday.com boards, AdvancedMD
      aggregates ONLY
    - HARD BLOCK: HIVE data, Column6 data, MBL HoldCo financials
    - HARD BLOCK: Any individual PHI — see agops-sec-phi-guard

  HIVE agents:
    - Read: Covercy production data, HIVE-scoped LP summaries (aggregate)
    - HARD BLOCK: Allevio data, Column6 data, individual LP PII without
      Matt Mathison written authorization
    - WTI trigger: Any LP distribution calc requires HITL

  COLUMN6 agents:
    - Read: Column6 SharePoint, campaign analytics, gross margin reports
    - HARD BLOCK: Consumer PII without CCPA review
    - Gross margin gate: Flag if any output implies margin <35%

  MBL HOLDCO agents:
    - Read: Cross-portfolio aggregates (entity-level, not individual)
    - Matt Mathison outputs: ALL require HITL review by Dr. Lewis first

═══════════════════════════════════════════════════════════
SECTION 3: PHI ACCESS PROHIBITION (ABSOLUTE)
═══════════════════════════════════════════════════════════

  - No agent at any tier may receive, process, or output individual PHI
  - Allevio context packages: aggregate/de-identified data only
  - If PHI detected in any agent input or output: HALT → notify Dr. Lewis
  - Enforcement tool: agops-sec-phi-guard (run before every Allevio output)
  - BAA status for Claude API: Dr. Lewis maintains and verifies quarterly

═══════════════════════════════════════════════════════════
SECTION 4: FINANCIAL WRITE PERMISSION GATE
═══════════════════════════════════════════════════════════

  STEP 1: Agent identifies need for financial write action
  STEP 2: Agent generates proposed action summary (no execution yet)
  STEP 3: Summary routed to Dr. Lewis via Krista.ai HITL channel
  STEP 4: Dr. Lewis reviews, approves or rejects with reason
  STEP 5: If approved → action executes → logged immediately
  STEP 6: Matt Mathison receives daily financial action digest

  NEVER: Execute financial writes autonomously, batch approve,
         or skip logging under time pressure

═══════════════════════════════════════════════════════════
SECTION 5: PERMISSION MODEL DOCUMENTATION
═══════════════════════════════════════════════════════════

  Maintained in: SharePoint → AI-Ops → Security → Permission-Registry.xlsx
  Format per agent:
    Agent ID | Entity Scope | Tier | Systems Accessible |
    PHI-Adjacent | Financial-Write | HITL Required | Last Reviewed

  Update triggers: New deployment, incident, quarterly audit, system change

═══════════════════════════════════════════════════════════
SECTION 6: QUARTERLY PERMISSION AUDIT
═══════════════════════════════════════════════════════════

  Owner: Dr. John Lewis
  Cadence: Q1/Q2/Q3/Q4 (Jan 15, Apr 15, Jul 15, Oct 15)
  Scope: All active agents, all tiers, all entity assignments
  Output: Permission Audit Report → Matt Mathison summary
  Action items: Revoke drift, document justifications, update registry
```

## Output Format

```markdown
## Permission Model Report — [Agent ID] — [Date]

**Entity Scope:** [Allevio | HIVE | Column6 | MBL HoldCo | Cross-Portfolio]
**Permission Tier:** [0 Read-Only | 1 Read-Write | 2 Financial-Write]
**PHI Adjacent:** [Yes — PHI Guard Required | No]
**HITL Required:** [Always | Financial Actions Only | Never]
**Systems Accessible:** [list]
**Systems Blocked:** [list]
**Dr. Lewis Approval Status:** [Approved [date] | Pending | Not Required]
**Next Review Date:** [date]

### Isolation Verification
- [ ] Entity A data cannot reach Entity B context
- [ ] PHI guard confirmed active (if Allevio-scoped)
- [ ] Financial write gate confirmed (if Tier 2)

### Audit Notes
[Free text — anomalies, changes, justifications]
```

## Output Contract

- Every permission model output is a binding, versioned record that defines the exact systems an agent may access and at what tier; this document governs agent deployment approval and is stored in SharePoint under AI-Ops → Security → Permission-Registry so that any audit, incident response, or new team member can reconstruct the full access picture without interviewing anyone.

- Entity isolation rules are not advisory — they are hard enforcement constraints that must be verified at context assembly time, not at output time; if an Allevio-scoped agent ever receives HIVE or Column6 data in its context window, that is a security incident to be logged and reported to Dr. Lewis immediately, regardless of whether the data appeared in the final output.

- The financial-write HITL gate exists because AI agents operating on QuickBooks, Bill.com, or any financial system of record without human review creates material financial risk for MBL Partners and its portfolio companies; every financial write action must carry a timestamp, Dr. Lewis approval record, and Matt Mathison awareness digest entry, with no exceptions for urgency or operational convenience.

## System Dependencies

**Reads from:** SharePoint AI-Ops → Security → Permission-Registry.xlsx; Krista.ai agent registry; Monday.com board configuration; Claude API deployment configs

**Writes to:** SharePoint AI-Ops → Security → Permission-Registry.xlsx (audit updates); Krista.ai HITL channel (approval requests); Monday.com AI-Ops board (audit action items)

**HITL Required:** Yes — Dr. Lewis must approve all Tier 1 and Tier 2 deployments; Dr. Lewis conducts all quarterly audits; Matt Mathison receives quarterly summary

## Test Cases

**Golden Path:** New Allevio agent is deployed; permission model skill generates Tier 0 Read-Only scoping, PHI Guard flagged as required, HIVE/Column6 hard-blocked, Dr. Lewis approval documented, registry updated same day.

**Edge Case:** An existing MBL HoldCo agent is expanded to include Monday.com write access mid-quarter; skill detects tier change from 0 to 1, requires Dr. Lewis re-approval, updates registry with change date and justification, flags next audit to verify no further drift.

**Adversarial:** A new skill requests Tier 2 Financial-Write access to QuickBooks without a justification document; permission model skill blocks deployment, routes rejection to Dr. Lewis with explanation, logs the request attempt with timestamp and requestor identity for audit trail.

## Audit Log

All permission model actions — new agent scoping, tier changes, quarterly audit completions, isolation violations, and HITL approval events — are written to SharePoint → AI-Ops → Audit-Logs → Security → Permission-Model → [Year] within 15 minutes of the event. Each entry captures: timestamp, agent ID, entity scope, tier assigned or changed, Dr. Lewis approval status, and any anomaly flags. Dr. Lewis reviews the permission log weekly as part of the standing AI-Ops security review, and a quarterly summary is prepared for Matt Mathison covering all permission changes, audit findings, and open remediation items.

## Deprecation

This skill is deprecated when MBL Partners adopts a dedicated Identity and Access Management (IAM) platform that programmatically enforces agent permissions at the infrastructure layer, rendering manual permission model documentation redundant; until that system is live and validated through at least one full quarterly audit cycle, this skill remains the authoritative source of truth for agent access boundaries across all portfolio entities. Deprecation requires Dr. Lewis written sign-off and Matt Mathison awareness.
