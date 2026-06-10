---
name: ai-strategy-roadmap
description: "Develop and track the AI strategy roadmap for MBL and portfolio companies. Use when the user says 'AI roadmap', 'AI strategy', 'where are we with AI', 'AI initiative status', 'AI deployment plan', 'AI implementation update', or 'what should we do with AI'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--phase <0|1|2|3>] [--output <roadmap|status|recommendation>]"
---

# AI Strategy Roadmap

Develop, maintain, and report on the AI strategy roadmap for MBL Partners and portfolio companies. Aligned to the MBL AI Orchestration Architecture: Krista.ai as the orchestration layer, with Claude API for intelligence and Monday.com for action execution.

## When to Use
- Quarterly AI strategy review with Matt
- When evaluating a new AI tool or vendor
- Before presenting AI initiatives to LPs or the board
- When a portfolio company asks for AI guidance
- When determining what to build next in the MBL AI program

## MBL AI Architecture Principles
1. **Orchestration, not replacement** — AI coordinates systems, doesn't replace them
2. **Systems of record stay external** — QuickBooks, GoHighLevel, Covercy own their data
3. **Krista.ai as control plane** — above Microsoft, QuickBooks, Bill.com, Monday.com
4. **Build at MBL first** — validate before rolling to portfolio companies
5. **API-driven, audited, permissioned** — all AI actions logged and secured
6. **Portfolio isolation** — each entity gets secure, permissioned access

## MBL AI Phase Structure

### Phase 0 — Discovery (Current)
Capability assessment with Krista.ai team. Define integration touchpoints. Establish data access and permissions.

### Phase 1 — Foundation
- Core workflow automation (AP, meeting summaries)
- Skill library deployment (this project)
- Monday.com integration for AI-driven action items

### Phase 2 — Meeting Intelligence
- Weekly meeting summary → Matt's briefing
- Auto-push action items to Monday.com
- Transcript pipeline via Krista.ai / Granola

### Phase 3 — Pre-Meeting Intelligence
- Auto-generate pre-meeting prep sheets from CRM + calendar
- Relationship signals from prior meeting data
- Deal flow context for pipeline meetings

### Phase 4 — Portfolio Rollout
- Allevio: Revenue cycle automation, patient ops
- HIVE: Production reporting, LP distributions
- Column6: Ad ops intelligence, campaign analysis

## Roadmap Output

```markdown
# MBL AI Strategy Roadmap — <date>
**Current Phase:** Phase <N> | **Entity:** <entity>

## Phase Status
| Phase | Name | Status | Target |
|-------|------|--------|--------|
| 0 | Discovery | ✅ Complete | — |
| 1 | Foundation | 🔄 In Progress | Q3 2026 |
| 2 | Meeting Intelligence | ⬜ Planned | Q4 2026 |
| 3 | Pre-Meeting Intelligence | ⬜ Planned | Q1 2027 |
| 4 | Portfolio Rollout | ⬜ Planned | H2 2027 |

## Current Phase Details — Phase <N>: <Name>
**Objective:** <phase goal>
**Owner:** Dr. John Lewis

### Active Workstreams
| Initiative | Status | Completion | Blocker |
|-----------|--------|------------|---------|
| Skill library (Finance) | ✅ Done | 100% | — |
| Skill library (Executive) | 🔄 In Progress | 60% | — |
| Krista.ai Phase 0 assessment | 🔄 In Progress | 80% | Waiting on Krista team |

### Decisions Needed
<Any decisions required to advance the roadmap>

## AI Tool Registry
| Tool | Purpose | Status | Owner |
|------|---------|--------|-------|
| Krista.ai | Orchestration | Phase 0 | Dr. Lewis |
| Claude API | Intelligence | Active | Dr. Lewis |
| Granola / Krista | Meeting transcription | Evaluating | Dr. Lewis |
| Monday.com | Action execution | Active | Dr. Lewis |

## Portfolio AI Opportunity Map
| Entity | Highest-Value AI Use Case | Readiness | Priority |
|--------|--------------------------|-----------|----------|
| Allevio | Revenue cycle automation | Medium | High |
| HIVE | LP reporting automation | Medium | High |
| Column6 | Ad ops intelligence | Low | Medium |

## Recommended Next 90-Day Focus
1. <Recommendation 1>
2. <Recommendation 2>
3. <Recommendation 3>
```

## Output Contract
- Always aligned to MBL's 4-phase architecture model
- Portfolio opportunities always include readiness assessment — no unrealistic timelines
- Tool recommendations include cost/effort context
- HITL required before any new AI vendor commitment is made

## System Dependencies
- **Reads from:** Phase tracker, active initiative status, Krista.ai engagement status
- **Writes to:** Nothing (outputs roadmap and recommendations)
- **HITL Required:** Matt Mathison reviews before presenting AI roadmap to board or LPs

## Test Cases
1. **Golden path:** Current phase status requested → clean phase summary with active workstreams and decisions needed
2. **Edge case:** Portfolio company asks "what AI should we do?" → outputs opportunity map for that entity with readiness and priority
3. **Adversarial:** Request to add an AI tool that bypasses MBL architecture principles → flags the conflict, explains the principle, recommends a compliant alternative

## Audit Log
Roadmap versions retained by date. Tool decisions documented in executive decision log.

## Deprecation
This skill evolves with the AI program — review and update quarterly. Retire specific sections as they are superseded by operational reality.
