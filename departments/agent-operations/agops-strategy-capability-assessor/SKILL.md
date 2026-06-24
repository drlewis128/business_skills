---
name: agops-strategy-capability-assessor
description: "Assess MBL's current agent capabilities and gaps. Use when: assessing what agents can do today, inventorying agent capabilities, measuring capability maturity, identifying capability gaps, conducting gap analysis on agent operations, evaluating skill library coverage, assessing Meeting Intelligence maturity, reviewing portfolio monitoring capability, auditing financial ops agent coverage, deciding build vs buy for capability gaps, preparing semi-annual capability briefing for Matt, integrating Krista Phase 0 assessment results, mapping domains to maturity levels, benchmarking agent capability against roadmap targets, identifying underperforming capability domains, surfacing missing agent coverage, planning capability investments, reporting on skill library depth, conducting agent capability audit, evaluating agent program maturity"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[full-assessment | domain:<name> | gap-analysis | build-vs-buy | matt-briefing | krista-phase0]"
---

# Agent Operations Strategy Capability Assessor

Inventories, assesses, and reports on MBL's current agent capabilities and gaps across all domains — skill library, Meeting Intelligence, portfolio monitoring, financial ops, and Krista.ai platform integration. Produces semi-annual capability briefings for Matt Mathison and integrates Krista.ai Phase 0 assessment findings into the ongoing capability map.

## When to Use

- Semi-annual capability briefing cycle — Matt Mathison needs to know what the agent program can and cannot do today
- Dr. Lewis is evaluating a new capability request and needs to assess current coverage vs. gap before committing to a build
- Krista.ai Phase 0 assessment complete — results need to be integrated into the MBL capability map
- A build vs. buy decision is required for a capability gap identified in the roadmap or ops review

## Agent Operations Strategy Capability Assessor Framework

```
╔══════════════════════════════════════════════════════════╗
║         AGOPS CAPABILITY ASSESSOR FRAMEWORK              ║
╚══════════════════════════════════════════════════════════╝

CAPABILITY INVENTORY STRUCTURE
────────────────────────────────
DOMAIN-1: SKILL LIBRARY
  Coverage: ~1600 skills installed; symlinked to ~/.claude/skills/
  GitHub: drlewis128/business_skills
  Maturity: [Emerging | Developing | Established | Optimized]
  Assessment questions:
    - What % of MBL use cases have a corresponding skill?
    - How many skills are actively triggered vs. installed-only?
    - Are skill definitions current with MBL entity vocabulary?
    - Are portfolio-specific skills (Allevio, HIVE, Column6) in place?

DOMAIN-2: MEETING INTELLIGENCE
  Coverage: Weekly summary + Monday.com push; pre-meeting prep sheets
  Maturity: [Emerging | Developing | Established | Optimized]
  Assessment questions:
    - Is weekly summary pipeline live and delivering to Matt?
    - Is Monday.com action item push operational?
    - Is pre-meeting prep (Phase 3) built and tested?
    - What is the error rate on summary accuracy?

DOMAIN-3: PORTFOLIO MONITORING
  Coverage: Allevio (HIPAA/PHI controls); HIVE (WTI trigger; LP data);
            Column6 (gross margin ≥35%; CCPA); MBL HoldCo (M365; QB; GHL)
  Maturity: [Emerging | Developing | Established | Optimized]
  Assessment questions:
    - Are entity-specific monitoring agents live?
    - Are compliance boundary controls (PHI isolation) verified?
    - Is the portfolio health dashboard operational?
    - Are alerts reaching Dr. Lewis within SLA?

DOMAIN-4: FINANCIAL OPS AGENTS
  Coverage: QB reconciliation; Bill.com anomaly detection;
            AP/AR monitoring; payroll variance
  Maturity: [Emerging | Developing | Established | Optimized]
  Assessment questions:
    - Which financial ops skills are live vs. installed-only?
    - What is the error catch rate on financial anomaly detection?
    - Is HITL enforced on all financial action outputs?
    - Are QB and Bill.com integrations current and authenticated?

DOMAIN-5: KRISTA.AI PLATFORM INTEGRATION
  Coverage: Phase 0 — capability assessment; Phase 1+ pending
  Maturity: [Phase 0 | Phase 1 | Phase 2 | Phase 3+]
  Assessment questions:
    - What Krista.ai capabilities have been confirmed in Phase 0?
    - What platform limitations were identified?
    - Which MBL integrations (M365, QB, Monday) are Krista-ready?
    - Is the Phase 0 → Phase 1 gate cleared?

CAPABILITY MATURITY SCALE
───────────────────────────
EMERGING     — Skill exists; not yet tested in MBL context
DEVELOPING   — Tested; running with manual oversight; gaps present
ESTABLISHED  — Running reliably; HITL controls active; metrics tracked
OPTIMIZED    — Reliable; metrics improving; used for portfolio decisions

GAP ANALYSIS METHODOLOGY
─────────────────────────
STEP-1: List capabilities MBL should have (from roadmap + use cases)
STEP-2: Assess each capability against maturity scale
STEP-3: Flag DEVELOPING and EMERGING items as gaps
STEP-4: Prioritize gaps by: business impact × roadmap dependency
STEP-5: For each priority gap → Build vs. Buy analysis

BUILD VS. BUY DECISION CRITERIA
─────────────────────────────────
BUILD if:
  - MBL-specific context required (entity vocabulary, data access)
  - Competitive advantage in the capability
  - Dr. Lewis can build in < 4 hrs of effort
  - No suitable external skill available in skill library

BUY / ADOPT if:
  - Generic capability; no MBL differentiation needed
  - External skill exists and requires < 2 hrs to configure
  - Krista.ai platform natively covers the use case
  - Build would take > 8 hrs and value doesn't justify

SEMI-ANNUAL BRIEFING CADENCE — MATT MATHISON
──────────────────────────────────────────────
H1 BRIEFING (June): Full capability inventory + gap analysis
H2 BRIEFING (December): Progress update + next year capability plan
FORMAT: 1 page; BLUF; domain heat map; top 3 gaps; recommended investments
```

## Output Format

```markdown
## MBL Agent Capability Assessment — [Date / Period]

**BLUF:** [One sentence: overall maturity level, top gap, recommended action.]

### Capability Heat Map
| Domain | Maturity | Top Gap | Priority |
|---|---|---|---|
| Skill Library | [level] | [gap] | [H/M/L] |
| Meeting Intelligence | [level] | [gap] | [H/M/L] |
| Portfolio Monitoring | [level] | [gap] | [H/M/L] |
| Financial Ops | [level] | [gap] | [H/M/L] |
| Krista.ai Integration | [level] | [gap] | [H/M/L] |

### Top 3 Capability Gaps
1. **[Gap Name]** — [Description. Business impact. Recommended action: Build / Buy / Defer.]
2. **[Gap Name]** — [Description. Business impact. Recommended action.]
3. **[Gap Name]** — [Description. Business impact. Recommended action.]

### Krista.ai Phase 0 Integration Notes
[Summary of Phase 0 findings relevant to capability assessment.]

### Recommended Investments (Next 90 Days)
| Capability | Action | Effort | Value |
|---|---|---|---|

### Decision Required from Matt Mathison
[Any investment approval or priority direction needed.]
```

## Output Contract

- **Capability maturity ratings are evidence-based, not aspirational.** A domain is rated ESTABLISHED only if it is running reliably with active HITL controls, metrics being tracked, and no open P1/P2 incidents. Rating a domain higher than evidence supports creates a false picture of MBL's AI readiness and leads to premature phase advancement or portfolio rollout before the foundation is solid. Every maturity rating in the assessment must cite the evidence that supports it — "weekly summary pipeline delivered 12 of 12 weeks with 0 P1 errors" is evidence; "we plan to have it working" is not.

- **Gap analysis drives roadmap and investment decisions, so completeness matters more than brevity.** The capability assessment is the input to the roadmap planner and ROI calculator. A gap that is missed here will not be planned, funded, or built. Dr. Lewis reviews the gap list against the full roadmap before finalizing any assessment output, and any gap that maps to a Phase 2+ dependency is automatically escalated to High priority. Gaps are never omitted to make the assessment look better.

- **Krista.ai Phase 0 findings are integrated explicitly and not treated as a separate document.** Phase 0 is the foundation of MBL's entire AI orchestration program. Its findings — what the platform can and cannot do, what integrations are Krista-ready, what limitations exist — must be absorbed into the capability map, not filed separately. If Phase 0 reveals a platform limitation that creates a gap in Meeting Intelligence or portfolio monitoring, that gap appears in the assessment with its Phase 0 source cited. This ensures the capability map is always a single source of truth for MBL AI readiness.

## System Dependencies

**Reads from:**
- Skill library index (~/.agents/skills/ directory)
- Krista.ai Phase 0 assessment report
- Agent fleet health metrics (agops-fleet-health-monitor)
- Meeting Intelligence delivery log
- Portfolio monitoring alert log
- Financial ops error catch log
- agops-strategy-roadmap-planner (phase gate criteria)

**Writes to:**
- Matt Mathison semi-annual capability briefing (HITL required)
- Capability gap register (input to roadmap planner)
- Build vs. buy decision log

**HITL Required:**
- Semi-annual briefing to Matt Mathison — Dr. Lewis reviews before delivery
- Any build vs. buy recommendation involving > 8 hrs of Dr. Lewis build time
- Any capability rating change that affects Phase 4 or Phase 5 readiness

## Test Cases

**Golden Path:** H1 semi-annual assessment is triggered. Skill inventories all 5 domains, pulls maturity evidence from fleet health and delivery logs, integrates Phase 0 Krista.ai findings, identifies 3 priority gaps (Meeting Intelligence not yet live = Developing; portfolio monitoring for Column6 missing CCPA overlay = Developing; financial ops QB integration authenticated but not tested = Emerging). Produces 1-page BLUF briefing with heat map and recommended investments. Dr. Lewis reviews, approves, delivers to Matt Mathison.

**Edge Case:** Krista.ai Phase 0 assessment is delayed and findings are not yet available. Skill proceeds with assessment of all other domains, marks Krista.ai Integration as "Assessment Pending — Phase 0 not complete," and flags this in the briefing as a blocker for Phase 1 gate readiness. Briefing is delivered with explicit caveat that Phase 1 recommendation is held until Phase 0 is complete.

**Adversarial Case:** Dr. Lewis is asked to rate Meeting Intelligence as ESTABLISHED for a board presentation before the pipeline has been tested. Skill requires evidence to support any maturity rating. Without test results or delivery logs, the rating cannot be ESTABLISHED — it is flagged as DEVELOPING at best. Output includes a note: "Maturity rating requires evidence of reliable delivery. Current status: pipeline built, not yet tested in production. Recommend pilot run before briefing."

## Audit Log

Every capability assessment is logged with timestamp, domains assessed, evidence sources cited, maturity ratings assigned, gaps identified, and build vs. buy decisions recorded. Semi-annual briefing outputs are version-controlled with Matt Mathison delivery confirmation noted. Any change to a maturity rating between assessments is logged as an event with the triggering evidence (e.g., "Meeting Intelligence upgraded from Developing to Established — 12-week delivery log confirmed; 0 P1 errors").

## Deprecation

This skill is deprecated when MBL's agent program reaches OPTIMIZED maturity across all domains and capability assessment is absorbed into the quarterly ops review (agops-ops-review) as a standing agenda item rather than a semi-annual standalone exercise. At that point, the detailed assessment methodology is archived as a reference document, and ongoing capability tracking is handled through the ops review and fleet health dashboard.
