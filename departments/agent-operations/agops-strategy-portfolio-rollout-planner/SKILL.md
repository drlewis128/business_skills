---
name: agops-strategy-portfolio-rollout-planner
description: "Plan the rollout of MBL's agent capabilities to portfolio companies. Use when: planning portfolio agent rollout, sequencing rollout across entities, assessing entity readiness for agents, evaluating Allevio AI readiness, evaluating Column6 AI readiness, evaluating HIVE AI readiness, planning HIPAA compliance overlay for Allevio, planning CCPA overlay for Column6, planning LP data controls for HIVE, customizing agents for portfolio entities, building entity CEO buy-in plan, preparing rollout success metrics, estimating rollout timeline, planning 12-18 month portfolio deployment, building entity IT maturity assessment, designing per-entity agent customization, planning post-MBL validation rollout, managing portfolio rollout decision authority, reporting rollout progress to Matt Mathison, planning portfolio agent training"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[entity:<allevio|column6|hive> | readiness-assessment | rollout-plan | ceo-buyin | success-metrics | timeline]"
---

# Agent Operations Strategy Portfolio Rollout Planner

Plans and manages the structured rollout of MBL's validated agent capabilities to portfolio companies — Allevio, Column6, and HIVE — following the build-at-MBL-first philosophy. This skill covers entity readiness assessment, compliance overlay design (HIPAA, CCPA, LP data), CEO buy-in planning, success metrics, and 12-18 month rollout timeline governance under Matt Mathison's decision authority.

## When to Use

- MBL validation of a capability is complete and Dr. Lewis is assessing readiness to begin portfolio rollout
- A portfolio entity CEO or leadership team is asking about AI capabilities and Dr. Lewis needs a structured readiness assessment before committing to a rollout date
- Matt Mathison needs to make a go/no-go decision on extending agent capabilities to a specific entity
- Quarterly rollout progress update — actuals vs. plan, risks, next-entity readiness gate

## Agent Operations Strategy Portfolio Rollout Planner Framework

```
╔══════════════════════════════════════════════════════════╗
║       AGOPS PORTFOLIO ROLLOUT PLANNER FRAMEWORK          ║
╚══════════════════════════════════════════════════════════╝

ROLLOUT SEQUENCE (MANDATORY — BUILD AT MBL FIRST)
───────────────────────────────────────────────────
STAGE-0: MBL HoldCo validation (complete before any entity rollout)
  Gate: capability ESTABLISHED at MBL; 0 P1 incidents in 90 days
STAGE-1: Allevio rollout (first portfolio entity)
  Why first: most complex compliance (HIPAA); proves compliance model
STAGE-2: Column6 rollout
  Why second: CCPA compliance; gross margin monitoring use case proven
STAGE-3: HIVE Partners rollout
  Why third: LP data sensitivity; WTI trigger; smaller team; less urgent
STAGE-4: Full portfolio optimization
  All entities running; shared learnings; ongoing optimization

ENTITY READINESS ASSESSMENT
─────────────────────────────
ALLEVIO — readiness checklist
  SYSTEMS:
    [ ] AdvancedMD / Marshall Medical Billing API access confirmed
    [ ] M365 integration available for Krista.ai orchestration
    [ ] Data environment isolated from MBL HoldCo (required)
  COMPLIANCE:
    [ ] HIPAA BAA in place with all agent platform vendors
    [ ] PHI absolute prohibition control designed and tested
    [ ] PHI boundary verification: no PHI in any agent output
    [ ] HITL required for ALL Allevio outputs (Dr. Lewis or designee)
  IT MATURITY:
    [ ] IT contact identified at Allevio for integration support
    [ ] System access provisioning process defined
    [ ] Incident escalation path confirmed
  LEADERSHIP:
    [ ] Allevio CEO briefed and supportive
    [ ] Use cases prioritized by Allevio leadership
    [ ] Success metrics agreed with Allevio

COLUMN6 — readiness checklist
  SYSTEMS:
    [ ] Column6 CTV/Mobile/Gaming data systems accessible
    [ ] M365 or equivalent for Krista.ai orchestration
    [ ] Data environment isolated (CCPA compliance)
  COMPLIANCE:
    [ ] CCPA controls designed and tested
    [ ] Gross margin ≥ 35% monitoring use case scoped
    [ ] Consumer data handling: no PII in agent outputs without consent
    [ ] HITL required for all financial and compliance outputs
  IT MATURITY:
    [ ] Column6 IT contact identified
    [ ] Integration access provisioning process defined
  LEADERSHIP:
    [ ] Column6 CEO briefed and supportive
    [ ] Use cases prioritized (gross margin, campaign ops)
    [ ] Success metrics agreed

HIVE PARTNERS — readiness checklist
  SYSTEMS:
    [ ] Covercy integration accessible
    [ ] Oil & gas ops data (Uinta Basin) accessible
    [ ] LP distribution data isolated and access-controlled
  COMPLIANCE:
    [ ] LP data controls: no LP names/distributions in agent outputs
    [ ] WTI trigger alert scoped and threshold set
    [ ] Regulatory filing compliance monitoring scoped
    [ ] HITL required for all LP-facing and financial outputs
  IT MATURITY:
    [ ] HIVE IT contact (or Dr. Lewis proxy) identified
  LEADERSHIP:
    [ ] HIVE leadership briefed
    [ ] Use cases prioritized (LP reporting, WTI monitoring)

ENTITY-SPECIFIC CUSTOMIZATION REQUIRED
────────────────────────────────────────
ALLEVIO CUSTOMIZATIONS:
  - PHI isolation layer on ALL agent inputs/outputs
  - HIPAA audit trail overlay on every agent interaction
  - Allevio entity vocabulary loaded into agent context
  - Allevio-specific skills installed and tested

COLUMN6 CUSTOMIZATIONS:
  - CCPA compliance overlay
  - Gross margin monitoring threshold (≥35%) configured
  - Column6 / Siprocal entity vocabulary loaded
  - Media cost and campaign ops skills configured

HIVE CUSTOMIZATIONS:
  - LP data isolation layer (no LP names, amounts, distributions)
  - WTI price trigger configured with alert threshold
  - HIVE / Uinta Basin entity vocabulary loaded
  - Royalty tracking and LP distribution skills configured

CEO BUY-IN PLAN
────────────────
APPROACH: Build confidence through phased demos before commitment
  Step 1: Show MBL results (ROI, time saved, capability demonstrated)
  Step 2: Describe entity-specific use cases in CEO's own terms
  Step 3: Commit to compliance-first rollout (HIPAA, CCPA handled)
  Step 4: Start narrow (1-2 use cases) before broad deployment
  Step 5: Define success metrics CEO cares about (not agent metrics)

ROLLOUT SUCCESS METRICS (per entity)
──────────────────────────────────────
  - Time from commitment to first agent live: target < 90 days
  - Use case delivery rate: % of committed use cases live on schedule
  - Agent accuracy: ≥ 95% on entity test case suite
  - HITL compliance: 100% (zero outputs bypassing HITL)
  - Entity leadership satisfaction: qualitative; quarterly check-in
  - Value delivered: $ quantified per entity per quarter

TIMELINE (12-18 MONTHS FROM MBL VALIDATION)
─────────────────────────────────────────────
Months 1-3:   MBL validation complete; Allevio readiness assessment
Months 4-6:   Allevio rollout; Stage-1 live
Months 7-9:   Column6 readiness + rollout; Stage-2 live
Months 10-12: HIVE readiness + rollout; Stage-3 live
Months 13-18: Full portfolio optimization; Stage-4 ongoing
```

## Output Format

```markdown
## Portfolio Rollout Plan — [Entity / Date]

**BLUF:** [One sentence: entity readiness status and recommended action.]
**Matt Mathison Decision Required:** [Yes / No — if yes, describe decision]

### Entity Readiness Assessment — [Entity Name]
| Category | Status | Blocker | Resolution |
|---|---|---|---|
| Systems | Ready / Not Ready | [blocker] | [action] |
| Compliance | Ready / Not Ready | [blocker] | [action] |
| IT Maturity | Ready / Not Ready | [blocker] | [action] |
| Leadership | Ready / Not Ready | [blocker] | [action] |

**Readiness Gate:** [Pass | Fail | Conditional on X]

### Customization Required
- [Item 1]: [Description and effort estimate]
- [Item 2]: [Description and effort estimate]

### Rollout Timeline — [Entity]
| Milestone | Target Date | Owner |
|---|---|---|
| Readiness gate passed | [date] | Dr. Lewis |
| Customization complete | [date] | Dr. Lewis |
| First agent live | [date] | Dr. Lewis |
| Full use case set live | [date] | Dr. Lewis |

### Success Metrics
[Agreed metrics with entity leadership.]

### Risks
| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
```

## Output Contract

- **The rollout sequence is fixed and exceptions require Matt Mathison approval.** Allevio goes first because it is the most compliance-intensive — proving the HIPAA/PHI control model at Allevio validates the compliance framework for all subsequent entity rollouts. Column6 second, HIVE third. Any request to reorder the sequence (e.g., "HIVE wants to go first") is evaluated against the compliance model implications and requires explicit Matt Mathison approval before the sequence changes. This is not bureaucracy — it is risk management for a PE firm with regulatory exposure across multiple entities.

- **Readiness gate failures block rollout and are not negotiable.** If Allevio cannot confirm a BAA with Krista.ai, the rollout does not begin. If HIVE cannot confirm LP data isolation, the rollout does not begin. Entity leadership enthusiasm is not a substitute for gate criteria. Dr. Lewis documents the failed gate, identifies the blocking item and owner, and communicates a revised timeline. Premature rollout with open compliance gates exposes MBL to regulatory risk that outweighs any benefit from moving faster.

- **Entity CEO buy-in is a prerequisite to readiness assessment, not a post-rollout activity.** Agents deployed to portfolio entities without CEO awareness and alignment create organizational resistance, misuse risk, and erode the MBL AI brand within the portfolio. The buy-in plan (demo MBL results, entity use cases, compliance commitment, narrow start) must be executed before readiness assessment resources are committed. Dr. Lewis leads the buy-in conversation for all entities; Matt Mathison sponsors the initiative at the CEO level.

## System Dependencies

**Reads from:**
- MBL capability assessment (agops-strategy-capability-assessor)
- Entity systems access confirmations (IT contacts)
- Krista.ai vendor BAA status (legal / compliance)
- agops-strategy-roadmap-planner (Phase 4 / Phase 5 gate criteria)
- Portfolio entity incident/compliance logs

**Writes to:**
- Matt Mathison rollout decision brief (HITL required)
- Per-entity readiness assessment report
- Rollout risk register
- Entity-specific customization task list (input to Dr. Lewis build queue)

**HITL Required:**
- All rollout go/no-go decisions — Matt Mathison approves; Dr. Lewis executes
- Any entity-specific agent output during rollout testing phase
- Any output involving PHI (Allevio), LP data (HIVE), or consumer PII (Column6)

## Test Cases

**Golden Path:** MBL Meeting Intelligence (Phase 2) has run reliably for 90 days with 0 P1 incidents. Dr. Lewis initiates Allevio readiness assessment. All systems checks pass; BAA is confirmed with Krista.ai; HIPAA PHI isolation control is designed and tested. Allevio CEO is briefed, selects 2 use cases (meeting intelligence + RCM anomaly detection). Readiness gate passes. Matt Mathison approves rollout. Dr. Lewis begins customization. First agent live at Allevio in 72 days.

**Edge Case:** Allevio does not have a direct M365 integration available for Krista.ai. Skill flags this as a systems blocker, identifies workaround options (email-based trigger, API bridge), estimates effort for each, and presents to Dr. Lewis for decision before briefing Matt Mathison. Readiness gate is conditionally passed pending workaround selection and implementation. Timeline is adjusted to reflect added build time.

**Adversarial Case:** Column6 leadership asks to skip the readiness assessment and go straight to agent deployment based on MBL's success. Skill outputs the readiness checklist with all open items for Column6, quantifies the compliance risks of skipping (CCPA exposure, unvalidated system access), and recommends against bypassing the gate. Output is structured as a Dr. Lewis briefing document supporting a "proceed with readiness assessment first" decision, not a flat refusal — giving Matt Mathison the information to make the call.

## Audit Log

Every readiness assessment, gate decision, rollout milestone, and customization task is logged with timestamp, entity, decision-maker, and outcome. HITL approvals for go/no-go decisions are logged with Matt Mathison's name and date. Entity-level compliance gate results (HIPAA BAA confirmed, PHI isolation tested, CCPA controls verified) are retained permanently as compliance evidence. Any gate failure and remediation is logged as a compliance event with resolution date and confirmatory evidence.

## Deprecation

This skill is deprecated when all portfolio entities have completed Stage-3 rollout and are in steady-state operations (Stage-4 optimization). At that point, ongoing portfolio agent management is handled through the entity-specific ops skills (agops-ops-review, fleet health, incident management) rather than a rollout planner. Archive the final rollout timeline and entity readiness records before removal — they constitute the compliance evidence trail for the full portfolio deployment.
