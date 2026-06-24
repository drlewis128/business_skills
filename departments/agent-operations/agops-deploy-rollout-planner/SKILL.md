---
name: agops-deploy-rollout-planner
description: "Plan the rollout of a new agent or workflow to MBL Partners and portfolio entities. Trigger phrases: plan agent rollout, rollout sequencing, deploy to portfolio, entity rollout plan, MBL first then portfolio, rollout criteria, agent go-live plan, validation before rollout, portfolio deployment, rollout timeline, rollback plan, agent deployment plan, entity CEO briefing, rollout communication, agent launch sequence, phase rollout plan, controlled deployment, rollout sign-off, portfolio extension, deployment readiness check"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[agent-name] [target-entity: MBL|Allevio|HIVE|Column6] [target-go-live-date]"
---

# Agent Rollout Planner

This skill produces a structured rollout plan for deploying a new MBL agent or workflow — from MBL HoldCo validation through portfolio-entity extension. All rollouts follow the MBL sequencing rule: MBL runs first, portfolio runs only after Dr. Lewis signs off on validated results.

## When to Use

- A new agent or Krista.ai workflow has passed integration testing and is ready for go-live planning
- Matt Mathison or Dr. Lewis has approved a new capability for controlled deployment to one or more entities
- A portfolio entity (Allevio, HIVE, Column6) requests an agent capability already validated at MBL HoldCo
- A rollout needs a communication plan, rollback playbook, and go/no-go criteria documented before launch

## Agent Rollout Planner Framework

```
ROLLOUT OVERVIEW
────────────────────────────────────────────────────────────────
Agent Name:
Version:
Rollout Owner: Dr. John Lewis
Approving Principal: Matt Mathison
Target Entities (in sequence):
  Phase A: MBL HoldCo (ALWAYS FIRST)
  Phase B: [Portfolio Entity] — conditional on Phase A validation
Target Go-Live (Phase A):
Target Go-Live (Phase B): [Phase A completion + 60 days minimum]

ROLLOUT SEQUENCING RULES
────────────────────────────────────────────────────────────────
RULE 1 — MBL FIRST, ALWAYS
  MBL HoldCo is the required first deployment target. No portfolio
  entity receives an agent before MBL has run it in production and
  validated results over a minimum 30-day window.

RULE 2 — VALIDATION GATE (ALL MUST PASS)
  □ Quality score: ≥4.0 (Dr. Lewis internal rubric — output accuracy,
    tone, completeness)
  □ HITL escalation rate: <20% of runs require human correction
  □ Cost per run: within approved budget ±10%
  □ Dr. Lewis satisfaction: explicit written sign-off required
  □ No data incidents in the validation window

RULE 3 — PORTFOLIO EXTENSION
  After validation gate passes at MBL, portfolio rollout may begin.
  Minimum 60-day buffer between MBL go-live and first portfolio entity.
  Sequence: MBL → Allevio → HIVE → Column6 (default; adjust per risk profile).

ENTITY-SPECIFIC ROLLOUT CHECKLIST
────────────────────────────────────────────────────────────────
MBL HOLDCO (Phase A)
  □ Integration test sign-off by Dr. Lewis
  □ HITL routing confirmed (Dr. Lewis as primary HITL)
  □ System connections live (Krista.ai / M365 / Monday.com / QB as needed)
  □ Cost monitoring active (daily spend alert set)
  □ Monitoring dashboard created
  □ Rollback plan documented (see below)

ALLEVIO (Phase B — HIPAA ENTITY)
  □ HIPAA BAA confirmed with all AI vendors in the data path
  □ PHI exclusion verified — integration tester sign-off required
  □ Allevio CEO / ops lead briefed (entity CEO briefing — see template)
  □ HITL routing confirmed (Allevio HITL ≠ Dr. Lewis unless escalation)
  □ Data isolation confirmed — Allevio data never touches HIVE or Column6

HIVE PARTNERS (Phase B — LP DATA ENTITY)
  □ LP data isolation confirmed
  □ WTI price trigger logic reviewed if agent touches production data
  □ HIVE CEO / ops lead briefed
  □ Distribution and financial outputs require Dr. Lewis HITL override

COLUMN6 / SIPROCAL (Phase B — CCPA ENTITY)
  □ CCPA compliance confirmed for any audience/campaign data
  □ Gross margin gate: agent outputs touching financials must confirm ≥35% margin floor
  □ Column6 CEO / ops lead briefed

ENTITY CEO BRIEFING TEMPLATE
────────────────────────────────────────────────────────────────
Subject: [Agent Name] — Rollout to [Entity] — [Date]
Recipients: [Entity CEO], Dr. John Lewis (CC: Matt Mathison)
Contents:
  1. What the agent does (plain language, 3 sentences max)
  2. What data it reads / writes
  3. Who reviews outputs before action is taken (HITL owner at entity)
  4. How to pause or stop the agent immediately (emergency contact: Dr. Lewis)
  5. What success looks like (quality score target, HITL rate target)

ROLLOUT TIMELINE
────────────────────────────────────────────────────────────────
T-14 days  Integration testing complete; Dr. Lewis signs off
T-7 days   Entity CEO briefing delivered
T-3 days   System connections confirmed live in production credentials
T-0        Phase A (MBL) go-live; monitoring active
T+30 days  Validation review: quality score, HITL rate, cost check
T+45 days  Dr. Lewis validation sign-off (if gate passes)
T+60 days  Phase B entity preparation begins
T+75 days  Phase B go-live (first portfolio entity)

ROLLBACK PLAN
────────────────────────────────────────────────────────────────
TRIGGER CONDITIONS (any one triggers immediate rollback):
  - Quality score drops below 3.0 on three consecutive runs
  - HITL rate exceeds 50% in any rolling 7-day window
  - Data incident (wrong entity data accessed, PHI detected in output)
  - Cost exceeds approved budget by >25% in any single week
  - Matt Mathison requests pause for any reason

ROLLBACK PROCEDURE (target: <15 minutes to full stop)
  Step 1: Dr. Lewis disables agent trigger in Krista.ai (off switch)
  Step 2: Notify Matt Mathison and entity CEO (email + SMS)
  Step 3: Preserve last 10 run logs for post-mortem
  Step 4: Flag as "suspended" in skill registry and Monday.com board
  Step 5: Schedule post-mortem within 48 hours
```

## Output Format

```markdown
## Rollout Plan — [Agent Name] — v[X.X.X]

**Rollout Owner:** Dr. John Lewis
**Approving Principal:** Matt Mathison
**Status:** [DRAFT | APPROVED | ACTIVE | SUSPENDED]

### Phase A — MBL HoldCo
- Go-Live Target: [Date]
- Validation Window: [Date] → [Date]
- Validation Gate Status: [PENDING | PASS | FAIL]

### Phase B — Portfolio Extension
- Entity: [Name]
- Go-Live Target: [Date — minimum 60 days after Phase A]
- Entity CEO Briefed: [YES / NO / DATE]

### Rollback Trigger Status
- [ ] No incidents in validation window
- [ ] Cost within budget
- [ ] Quality score ≥4.0

### Dr. Lewis Sign-Off
Signature: ___________________________ Date: ___________
```

## Output Contract

- Every rollout plan produced by this skill enforces the MBL-first sequencing rule as a non-negotiable constraint. Portfolio entities are never listed as Phase A targets regardless of who requests the plan, because the MBL HoldCo validation window is the only mechanism that surfaces integration failures, cost overruns, and HITL calibration issues before they reach HIPAA, LP-data, or CCPA-sensitive environments.

- The validation gate thresholds (quality ≥4.0, HITL <20%, cost ±10%, Dr. Lewis sign-off) are the minimum bar for portfolio extension, not aspirational targets. These numbers were chosen because an agent running below them in production will generate more manual correction work than it eliminates, reversing the ROI case that justified the build.

- The rollback plan is written as a timed procedure (target <15 minutes) because agent failures in production compound quickly — a bad output sent to Matt Mathison or an entity CEO damages trust in the entire AI program. Speed of shutdown is treated as a safety feature, not a fallback of last resort.

## System Dependencies

**Reads from:**
- Skill registry (MEMORY.md / project_skill_registry.md) for agent version and status
- Integration test sign-off record (SharePoint → AI-Ops → Integration Tests)
- Monday.com AI-Ops board for rollout task status

**Writes to:**
- SharePoint → AI-Ops → Rollout Plans → [Agent Name]
- Monday.com AI-Ops board (new rollout card with phase timeline)
- Audit log (see below)

**HITL Required:**
- Dr. Lewis must sign validation gate before Phase B begins
- Matt Mathison briefed at Phase A go-live and Phase B go-live
- Entity CEO briefing is mandatory before any portfolio entity goes live

## Test Cases

**Golden Path:** `agops-deploy-rollout-planner "Meeting Intelligence Weekly Summary" MBL 2026-07-15` — Produces a complete rollout plan with Phase A targeting MBL HoldCo on July 15, 60-day buffer computed to September 13 for first portfolio entity, all checklists populated, entity CEO briefing template rendered, rollback plan included.

**Edge Case:** User requests rollout plan for Allevio as the first target before MBL validation. Skill refuses to produce a Phase A Allevio plan and outputs a corrective notice explaining the MBL-first rule, then offers to generate an MBL Phase A plan with Allevio as Phase B after the 60-day buffer.

**Adversarial:** User provides a go-live date that is only 10 days out from the request date, bypassing the T-14 integration test checkpoint. Skill flags the timeline as non-compliant, marks the integration test sign-off as MISSING, and outputs a warning that go-live cannot proceed without it — does not silently compress the timeline.

## Audit Log

Every rollout plan generated by this skill is logged with the agent name, version, target entities, go-live dates, validation gate results, and the identity of the approving principal. Logs are written to SharePoint → AI-Ops → Audit → Rollout-Logs in append-only format. Dr. Lewis reviews the rollout audit log monthly; Matt Mathison receives a quarterly summary of all agents that went live, were suspended, or were rolled back during the period.

## Deprecation

This skill is deprecated when MBL adopts a formal MLOps or agent lifecycle management platform that natively enforces rollout sequencing, validation gates, and rollback procedures with system-level controls. Until that platform is in place, this skill is the authoritative rollout planning standard for all MBL agent deployments. Deprecation requires written approval from Dr. John Lewis and Matt Mathison.
