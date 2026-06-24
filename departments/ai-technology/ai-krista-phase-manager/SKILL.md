---
name: ai-krista-phase-manager
description: "Manage Krista.ai phase progression for MBL Partners AI orchestration rollout. Use when the user says 'Krista phase', 'Krista rollout phase', 'Krista Phase 0', 'Krista Phase 1', 'Krista Phase 2', 'AI phase', 'AI rollout phase', 'AI roadmap phase', 'phase assessment', 'phase transition', 'move to next phase', 'when do we move to the next phase', 'phase criteria', 'phase gate', 'phase readiness', 'phase exit criteria', 'Krista.ai roadmap', 'Krista progress', 'Krista status', 'Krista deployment status', 'AI deployment status', 'MBL AI phase', 'AI orchestration phase', 'phase plan', 'phase update', 'phase report', 'phase milestone', 'Krista milestone', 'AI milestone', 'Krista.ai team', 'Krista capability assessment', 'Phase 0 assessment', 'Phase 0 complete', 'start Phase 1', or 'AI program phases'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--phase <0|1|2|3|4>] [--action <status|assess|transition|report|plan>]"
---

# AI Krista Phase Manager

Manage Krista.ai phase progression for MBL Partners AI orchestration — tracking phase completion criteria, assessing readiness for phase transitions, and documenting the progression from Phase 0 (discovery) through full portfolio deployment. The phased approach ensures MBL validates AI at the center before scaling to portfolio companies.

## When to Use
- Assessing current phase status and readiness for next phase
- Reporting AI program progress to Matt Mathison
- Planning the next phase's deliverables and timeline
- Evaluating Phase 0 completion and gate to Phase 1

## Krista Phase Management Framework

```
MBL AI ORCHESTRATION PHASE MAP:

  PHASE 0 — DISCOVERY (current as of June 2026):
    Purpose: Assess Krista.ai capabilities; identify MBL AI quick wins; establish baseline
    Key activities:
      → Krista.ai capability assessment (what can Krista do today vs. what MBL needs)
      → MBL systems inventory (what integrations are possible; what are the priorities)
      → Use case evaluation (ai-use-case-evaluator applied to all proposed use cases)
      → Risk assessment baseline (ai-risk-assessor applied to priority use cases)
      → Governance framework draft (ai-governance-framework v1 created)
    Exit criteria (gate to Phase 1):
      → Krista capability assessment complete and documented
      → Top 3 use cases identified and scored (Meeting Intelligence as Phase 1 target)
      → Risk framework in place for all identified use cases
      → Governance framework v1 approved by Matt Mathison
      → Krista.ai team has confirmed integration readiness for Meeting Intelligence
    Timeline: Phase 0 complete Q2-Q3 2026
    
  PHASE 1 — MEETING INTELLIGENCE:
    Purpose: Deploy Meeting Intelligence System (weekly summaries + Monday.com push)
    Key activities:
      → Meeting summary workflow built and deployed (ai-krista-workflow-builder)
      → Dr. Lewis HITL process established and running
      → Matt Mathison receives weekly summary for 4 consecutive weeks → quality confirmed
      → Monday.com push tested and operational
      → SharePoint meeting intelligence archive established
    Exit criteria (gate to Phase 2):
      → Meeting summaries delivered for 8 consecutive weeks with ≥4.0 quality score
      → Matt Mathison confirms value ("this is useful; continue")
      → HITL process functioning within 2-hour review turnaround
      → Zero PHI incidents in Allevio-adjacent summaries
    Timeline: Phase 1 target Q3 2026 deployment
    
  PHASE 2 — PRE-MEETING PREP INTELLIGENCE:
    Purpose: Automate pre-meeting prep sheet generation for Matt Mathison
    Key activities:
      → Calendar integration with Teams → auto-trigger prep sheet 48 hours before meeting
      → Entity KPI data pull integrated (QuickBooks; Covercy; Monday.com) into prep
      → Participant intelligence research workflow
    Exit criteria:
      → Pre-meeting prep delivered for 8 consecutive significant meetings with Matt's approval
      → Prep sheet delivery within 48-hour standard in 9/10 meetings
    Timeline: Phase 2 target Q4 2026
    
  PHASE 3 — PORTFOLIO MONITORING INTELLIGENCE:
    Purpose: Automated portfolio performance monitoring and anomaly alerting
    Key activities:
      → Portfolio dashboard auto-generation from QuickBooks/Covercy/Monday.com
      → Anomaly detection (cash drop; WTI trigger; Allevio GRR decline)
      → Automated alerts to Dr. Lewis; escalation to Matt Mathison
    Timeline: Phase 3 target Q1 2027
    
  PHASE 4 — PORTFOLIO COMPANY ROLLOUT:
    Purpose: Extend validated MBL AI workflows to Allevio; HIVE; Column6
    Key activities:
      → Entity-specific Krista deployments (each entity gets a validated workflow set)
      → Entity CEO training and onboarding
      → HIPAA-compliant Allevio deployment (separate assessment)
    Timeline: Phase 4 target Q2-Q3 2027
    Prerequisite: Phases 1-3 producing consistent quality at MBL level
    
PHASE GATE CRITERIA (universal):
  All exit criteria met (documented)
  Zero active Critical incidents in current phase
  Matt Mathison has confirmed phase value before transitioning
  Dr. Lewis has documented lessons learned from current phase
  Next phase plan approved by Matt Mathison (budget; timeline; resources)
```

## Output Format

```markdown
# MBL AI Orchestration — Phase Status Report
**Current Phase:** Phase [N] — [Phase Name] | **Date:** [Date] | **Prepared by:** Dr. Lewis

---

## Phase [N] Status: [On Track / At Risk / Complete]

| Exit Criterion | Status | Notes |
|----------------|--------|-------|
| [Criterion 1] | ✅ Complete / 🟡 In Progress / ❌ Not Started | |

---

## Phase Completion: [X]%
**Estimated Phase [N] completion:** [Date]
**Phase [N+1] start target:** [Date]

---

## Phase [N+1] Preview
**Focus:** [Next phase description]
**Key deliverables:** [List]
**Resource requirements:** [Dr. Lewis hours; Krista.ai team; Matt Mathison time]
**Budget:** [Monthly cost estimate]

---

## Issues and Risks
- [Any blockers to phase exit; risk level]
```

## Output Contract
- Phase transitions require Matt Mathison's explicit confirmation, not just exit criteria completion — the phase framework exists to ensure Matt Mathison validates AI value before MBL invests in the next phase; Dr. Lewis does not declare a phase complete and begin the next phase unilaterally; the phase exit conversation with Matt Mathison is: "Phase 1 exit criteria are met — you've received 8 consecutive weekly meeting summaries, all scoring ≥4.0, and you confirmed they're valuable. I'd like your approval to begin Phase 2 (pre-meeting prep automation). Here's what Phase 2 requires and what it will cost."; Matt Mathison's approval is the gate, not the exit criteria checklist alone
- Phase timelines are targets, not commitments — the phase framework gives Matt Mathison a view of the AI roadmap, but timelines shift based on Krista.ai team availability, integration complexity discoveries in Phase 0, and Matt Mathison's bandwidth to validate; when a timeline slips, Dr. Lewis proactively updates Matt Mathison: "Phase 1 target was Q3 2026; we're now targeting Q4 2026 because the Teams-to-Krista meeting detection integration took 3 weeks longer than estimated; here is the revised timeline and the reason"; no surprises on phase timing
- HITL required: phase transition → Matt Mathison explicit approval before next phase begins; phase plan → Dr. Lewis prepares; Matt Mathison reviews and approves budget and timeline; Phase 4 (portfolio rollout) → each entity CEO included in planning; Allevio Phase 4 → HIPAA assessment complete before deployment; phase exit report → Dr. Lewis prepares; Matt Mathison reviews; any phase pause (incident; budget constraint) → Matt Mathison decides

## System Dependencies
- **Reads from:** Krista.ai Phase 0 assessment documentation; current phase exit criteria status; conversation audit reports (quality metrics); ROI tracking (phase value confirmation); meeting summary distribution records (Phase 1 metrics); Matt Mathison feedback; Krista.ai team project status updates
- **Writes to:** Phase status reports (SharePoint → MBL → AI Strategy → Phase Reports → [Phase] → [Date]); Matt Mathison phase briefings; phase transition plans; lessons learned documents; Phase 4 entity deployment plans
- **HITL Required:** Phase transition → Matt Mathison explicit approval; phase plan → Matt Mathison approves budget/timeline; Phase 4 entity plans → entity CEO included; Allevio Phase 4 → HIPAA assessment; phase pause → Matt Mathison decides; quarterly phase status → Matt Mathison sees

## Test Cases
1. **Golden path:** Phase 0 → Phase 1 transition (Q3 2026). Dr. Lewis prepares phase exit report: capability assessment ✅; use cases scored ✅ (Meeting Intelligence = 24/25 Tier 1); risk framework ✅; governance v1 ✅; Krista integration readiness ✅. Phase 0 complete. Dr. Lewis presents to Matt Mathison: "Phase 0 is complete. Meeting Intelligence is Tier 1 priority. I want to start Phase 1 in August — here's the plan [2-page spec]: workflow design in week 1; integration build in weeks 2-3; testing in week 4; live delivery to you in week 5. Monthly cost increase: $240/month in additional Claude API usage. Your approval to proceed?" Matt Mathison: "Let's do it." Phase 1 begins.
2. **Edge case:** Phase 1 exit criterion — "Matt Mathison confirms value" — is ambiguous; Matt is satisfied with the summaries but hasn't explicitly said "this is valuable, continue to Phase 2" → Dr. Lewis: "I want to make the phase transition explicit. Matt — you've been receiving weekly meeting summaries for 8 weeks. From my end, the quality metrics look good (average score 4.6/5; zero missed deliveries; HITL turnaround averaging 90 minutes). I want to ask you directly: is the Meeting Intelligence System delivering value for you? And would you like me to proceed to Phase 2 (pre-meeting prep automation)?" Matt Mathison: "Yes, it's working well. Let's move to Phase 2." Phase 1 formally closed. Phase 2 begins.
3. **Adversarial:** Matt Mathison wants to skip Phase 1 and go directly to Phase 3 (portfolio monitoring) because "that's where the real value is" → Dr. Lewis: "I understand the appeal — portfolio monitoring has direct bottom-line impact. But I want to flag why the phase sequence matters: Phase 1 (Meeting Intelligence) is the simplest workflow we'll deploy, and it's how we validate that Krista's integration with Teams, Monday.com, and SharePoint actually works at MBL's scale. If we skip Phase 1 and go to Phase 3, we're deploying a complex multi-entity data pipeline before we've validated the basic integration architecture. The risk: if something is wrong with the Teams → Krista → Monday.com integration, we'll discover it in Phase 3 when it's much more complex to diagnose. Phase 1 takes 4 weeks. That's the learning investment that makes Phase 3 much lower risk. Can we proceed with Phase 1 on an accelerated timeline and plan Phase 3 to start in January?"

## Audit Log
Phase status reports (all phases; permanent; SharePoint). Matt Mathison phase approval records (transition gates). Phase exit criteria completion records. Phase timeline change records (reason; new timeline). Lessons learned documents (all phases). Phase 4 entity deployment records. HIPAA assessment records (Allevio Phase 4). Budget approval records (all phases).

## Deprecation
Phase framework reviewed after Phase 4 completion. Phase map updated if new portfolio companies are added. Phase exit criteria updated based on lessons learned from each completed phase. Timeline targets reviewed quarterly and updated in phase status reports.
