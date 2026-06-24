---
name: agops-strategy-roadmap-planner
description: "Plan the MBL AI agent operations roadmap. Use when: planning AI roadmap, updating roadmap phases, reviewing phase gate criteria, quarterly roadmap review with Matt, assessing current AI phase, preparing phase 0 Krista assessment, planning phase 1 integrations, scoping phase 2 Meeting Intelligence, designing phase 3 pre-meeting prep, mapping phase 4 portfolio agents, planning phase 5 portfolio rollout, estimating investment per phase, quantifying value per phase, setting phase gate criteria, communicating roadmap to Matt Mathison, presenting AI strategy to leadership, sequencing agent builds, tracking roadmap progress, identifying roadmap risks, updating phase timelines, prioritizing AI initiatives"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[phase | gate-review | quarterly-update | investment-model | value-summary]"
---

# Agent Operations Strategy Roadmap Planner

Plans and maintains the MBL AI agent operations roadmap across all phases — from Phase 0 Krista.ai capability assessment through Phase 5 full portfolio rollout. This skill produces structured roadmap documents, phase gate reviews, investment estimates, and quarterly briefings for Matt Mathison aligned to MBL's build-at-MBL-first philosophy.

## When to Use

- Matt Mathison asks for an update on where we are in the AI roadmap or what comes next
- Dr. Lewis needs to assess whether the current phase meets gate criteria before advancing
- Planning quarterly roadmap reviews or preparing the annual AI strategy update
- Estimating investment requirements or expected value for any roadmap phase

## Agent Operations Strategy Roadmap Planner Framework

```
╔══════════════════════════════════════════════════════════╗
║           AGOPS ROADMAP PLANNER FRAMEWORK                ║
╚══════════════════════════════════════════════════════════╝

PHASE INVENTORY
───────────────
Phase 0  — Krista.ai Capability Assessment       [CURRENT]
Phase 1  — Core Integrations (M365, QB, Monday)
Phase 2  — Meeting Intelligence (weekly summaries → Matt)
Phase 3  — Pre-Meeting Prep (prep sheets, attendee profiles)
Phase 4  — Portfolio Ops Agents (Allevio, Column6, HIVE)
Phase 5  — Full Portfolio Rollout & Optimization

PHASE GATE CRITERIA (per phase)
────────────────────────────────
TECHNICAL GATE
  [ ] All integrations operational and passing health checks
  [ ] Agent accuracy ≥ 95% on test case suite
  [ ] Error rate < 1% over 30-day period
  [ ] All audit logs active and verified

BUSINESS GATE
  [ ] Dr. Lewis sign-off on technical readiness
  [ ] Matt Mathison approval to advance phase
  [ ] Value delivered ≥ expected value (ROI gate)
  [ ] No open P1/P2 incidents from current phase

COMPLIANCE GATE
  [ ] HITL controls verified active
  [ ] PHI/LP data isolation confirmed (portfolio phases)
  [ ] Krista.ai permissions reviewed and current
  [ ] All outputs logged and auditable

INVESTMENT MODEL (per phase)
──────────────────────────────
Phase 0:  Dr. Lewis time (discovery + assessment) — internal cost
Phase 1:  Krista.ai integration build + M365/QB/Monday config
Phase 2:  Meeting Intelligence pipeline build + prompt engineering
Phase 3:  Pre-meeting prep agent + attendee research automation
Phase 4:  Per-entity customization + compliance overlays (HIPAA, CCPA)
Phase 5:  Portfolio deployment + training + ongoing optimization

EXPECTED VALUE (per phase)
───────────────────────────
Phase 0:  Risk reduction — avoid wrong platform bet; foundation clarity
Phase 1:  Baseline automation — data flows, no manual bridging
Phase 2:  4-6 hrs/week Matt time recovered; meeting quality up
Phase 3:  2-3 hrs/week meeting prep time saved; better decisions
Phase 4:  Portfolio ops efficiency; error reduction; scale without headcount
Phase 5:  Full system ROI realized; LP-level value creation narrative

QUARTERLY ROADMAP REVIEW AGENDA (Matt Mathison)
──────────────────────────────────────────────────
1. Current phase status (Green / Yellow / Red)
2. Phase gate criteria — met / not met / at risk
3. Next phase preview — scope, investment, timeline
4. Roadmap risks and mitigations
5. Any phase adjustments required (scope, sequence, timeline)

ROADMAP RISK REGISTER
──────────────────────
Risk: Krista.ai platform limitations discovered in Phase 0
  Mitigation: Document capability gaps; evaluate alternatives
Risk: Phase gate criteria not met on schedule
  Mitigation: Hold phase, root-cause analysis, remediation plan
Risk: Portfolio entity readiness lower than expected
  Mitigation: Entity readiness assessment before Phase 4 commitment
Risk: Budget pressure causes phase compression
  Mitigation: Value gate must be met before advancing; no shortcuts
```

## Output Format

```markdown
## MBL AI Roadmap — [Quarter / Date]

**Current Phase:** [Phase N — Name]
**Phase Status:** [Green | Yellow | Red]
**Overall Roadmap Health:** [On Track | At Risk | Behind]

### Phase Gate Review — [Current Phase]
| Gate Criterion | Status | Notes |
|---|---|---|
| [criterion] | Met / Not Met | [detail] |

### Next Phase — [Phase N+1 Name]
- **Scope:** [summary]
- **Investment Required:** [estimate]
- **Expected Value:** [quantified]
- **Ready to Advance:** [Yes | No | Conditional on X]

### Roadmap Risk Summary
| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|

### Recommended Decision
[BLUF — one sentence. Action Matt Mathison needs to take, if any.]
```

## Output Contract

- **Every roadmap output leads with phase status and a clear recommended decision.** Matt Mathison's time is the scarcest resource at MBL. A roadmap document that buries the status or fails to name a required decision forces re-reading and delays action. The BLUF recommendation must be the first substantive line and must be actionable — not "we are monitoring" but "advance to Phase 1" or "hold at Phase 0 until [X] is resolved."

- **Phase gate criteria are binary pass/fail, not narrative assessments.** Each gate criterion is either met or not met. Qualitative language like "mostly met" or "trending positive" is prohibited in gate reviews because it obscures decision authority. If a criterion is not met, the phase does not advance — Matt Mathison approves exceptions explicitly. This protects the MBL AI program from scope creep and half-baked rollouts.

- **Investment and value estimates are updated at every quarterly review and versioned.** The roadmap is a living document. As actuals come in (Dr. Lewis hours logged, Krista.ai costs billed, agent errors tracked), estimates for future phases are revised using real data. LP-level ROI narratives depend on accurate cumulative investment figures. Stale estimates undermine trust with Matt Mathison and the LP reporting chain.

## System Dependencies

**Reads from:**
- Krista.ai Phase 0 capability assessment outputs
- Agent fleet health dashboard (agops-fleet-health-monitor)
- Incident log (agops-incident-manager)
- ROI tracker (agops-strategy-roi-calculator)
- Dr. Lewis time logs

**Writes to:**
- Matt Mathison quarterly roadmap briefing (HITL required)
- Annual AI strategy document
- Roadmap risk register

**HITL Required:**
- Any roadmap output sent to Matt Mathison — Dr. Lewis reviews and approves before delivery
- Phase advancement decisions — explicit Matt Mathison approval required
- Any change to Phase 5 portfolio rollout sequence

## Test Cases

**Golden Path:** Dr. Lewis requests a Phase 0 → Phase 1 gate review. Skill pulls phase gate criteria, assesses each criterion against current state, produces a pass/fail table, and delivers a one-page briefing recommending advancement with a clear conditional ("Advance to Phase 1 upon Krista.ai contract execution"). Matt Mathison reviews, approves, Phase 1 begins.

**Edge Case:** Phase gate criteria are partially met — 7 of 10 pass, 3 are open. Skill does not recommend advancement. Instead, it produces a remediation plan for the 3 open items with owners (Dr. Lewis), estimated resolution dates, and a re-gate review date. Roadmap status is set to Yellow. Matt Mathison is briefed on the hold.

**Adversarial Case:** A portfolio entity CEO pressures Dr. Lewis to skip Phase 4 readiness assessment and begin rollout immediately. Skill outputs a risk summary showing the specific compliance gaps (e.g., Allevio PHI isolation not verified), quantifies the risk (HIPAA exposure, audit failure), and documents that phase gate criteria are not met. The output supports Dr. Lewis in declining the request with a structured, defensible rationale.

## Audit Log

Every roadmap planning session is logged with timestamp, requesting user, phase under review, gate criteria evaluated, outcome (advance / hold / remediate), and any Matt Mathison approval recorded. Logs are stored in the MBL Agent Operations audit trail and are available for quarterly ops review. Phase advancement without a logged gate review and Matt Mathison approval is a compliance violation and must be flagged immediately to Dr. Lewis.

## Deprecation

This skill is deprecated when MBL's AI roadmap reaches steady-state operations (all phases complete, portfolio fully deployed, and ongoing optimization is managed through agops-ops-review). At that point, roadmap planning transitions to annual AI strategy reviews managed directly by Dr. Lewis and Matt Mathison without structured phase gate criteria. Archive this skill file with the final roadmap version attached before removal.
