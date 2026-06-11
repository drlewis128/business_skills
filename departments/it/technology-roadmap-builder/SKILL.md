---
name: technology-roadmap-builder
description: "Build the IT technology roadmap for an entity. Use when the user says 'technology roadmap', 'IT roadmap', 'technology strategy', 'what technology do we need', 'IT planning', 'where is IT going', 'tech roadmap', or 'build our technology plan'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--horizon <1y|3y>] [--format <brief|full|board>]"
---

# Technology Roadmap Builder

Build the IT technology roadmap connecting technology investments to business objectives. Most entities run IT reactively — fixing things as they break. A technology roadmap makes IT proactive — aligning investments to business goals before the need becomes a crisis.

## When to Use
- Annual IT planning (what's on the roadmap for next year?)
- Board or executive presentation on IT strategy
- Portfolio company assessment — where should technology take them in 3 years?
- Post-M&A integration planning — what does the combined technology stack look like?
- Business strategy refresh (new markets, new products) → technology implications

## Roadmap Layers

| Layer | What It Covers | Horizon |
|-------|--------------|---------|
| **Foundation** | Security, infrastructure reliability, data backup, access management | Year 1 — must-haves |
| **Efficiency** | Automation, integrations, productivity tools, AI enablement | Year 1-2 — high ROI |
| **Scale** | Systems that can grow with the business; replace systems that can't | Year 2-3 |
| **Innovation** | New capabilities that create competitive advantage | Year 2-3 |

## Business → Technology Alignment

For each major business objective, identify the technology requirement:
```
Business goal: "Grow revenue 30% next year"
→ CRM must handle 2× pipeline volume
→ Sales team needs better AI-assisted outreach
→ Finance reporting must support more complex deal structures

Business goal: "Reduce operational cost by 15%"
→ Automate 3 manual workflows via Krista.ai
→ Consolidate 2 redundant SaaS tools
→ Right-size cloud infrastructure
```

## Output Format

```markdown
# Technology Roadmap — <Entity>
**Date:** <date> | **Horizon:** 12-36 months
**Prepared by:** Dr. John Lewis / IT Manager | **Approved by:** Matt Mathison

---

## Strategic Technology Objectives

1. **Security-first foundation** — Every system secured before new capabilities are added
2. **AI enablement** — Krista.ai as the AI orchestration layer for MBL + portfolio
3. **Integration over silos** — Systems that talk to each other; data that flows where it's needed
4. **Scale without proportional headcount** — Technology replaces manual work as we grow

---

## Roadmap by Horizon

### Now (0-6 months) — Foundation and Quick Wins

| Initiative | Category | Business Driver | Owner | Cost | Status |
|-----------|---------|---------------|-------|------|--------|
| MFA enforcement across all systems | Security | Cyber insurance / breach prevention | IT Manager | $0 (policy) | In progress |
| Krista.ai Phase 0 → Phase 1 | AI Orchestration | Meeting intelligence; MBL AI strategy | Dr. Lewis | $<N> | Active |
| SaaS stack rationalization (3 tools to cut) | Efficiency | $32K/year savings identified | IT Manager | $0 (cancellations) | Planned |
| Backup verification monthly cadence | Infrastructure | DR readiness | IT Tech | $0 (process) | Planned |

### Next (6-12 months) — Efficiency and Integration

| Initiative | Category | Business Driver | Owner | Cost | Status |
|-----------|---------|---------------|-------|------|--------|
| Microsoft 365 × Monday.com integration | Integration | Reduce manual task creation | IT Engineer | $0 (native) | Planned |
| Krista.ai Phase 2 — Meeting Intelligence | AI Orchestration | Weekly summaries to Matt Mathison | Dr. Lewis | $<N> | Planned |
| Cloud cost optimization (Reserved Instances) | Infrastructure | $28K/year savings | IT Engineer | $<N> upfront | Planned |
| SOC 2 Type 1 readiness (Allevio) | Compliance | Customer requirement | IT + Legal | $<N> | Q3 |

### Later (12-36 months) — Scale and Innovation

| Initiative | Category | Business Driver | Owner | Cost | Status |
|-----------|---------|---------------|-------|------|--------|
| HIVE Partners — AI-driven LP reporting | AI / Automation | Automated weekly Covercy → LP comms | Dr. Lewis | TBD | Planning |
| Allevio — RCM automation via Krista.ai | AI / Healthcare | Reduce manual billing work | Allevio + IT | TBD | Concept |
| MBL Portfolio Intelligence Dashboard | Data / Analytics | Matt Mathison visibility across entities | Dr. Lewis | TBD | Concept |

---

## Technology Decisions Made

| Decision | Rationale | Date Decided | Owner |
|---------|---------|------------|-------|
| Krista.ai as AI orchestration layer | Coordinates systems above Microsoft/QB/Bill.com; already recording meetings | Phase 0 | Dr. Lewis |
| Microsoft 365 as identity backbone | Core to Krista.ai integration; already deployed | Pre-existing | IT |
| GoHighLevel as CRM (MBL + North Vista) | Email agent routing; CRM for portfolio GTM | Active | Sales |

---

## Dependencies and Sequencing

| Later Initiative | Depends On |
|----------------|-----------|
| Krista.ai Phase 2 | Krista.ai Phase 0 complete + Microsoft 365 integration active |
| SOC 2 Type 1 (Allevio) | IT risk register complete + security controls documented |
| AI-driven LP reporting (HIVE) | Covercy API access confirmed + Krista.ai Phase 1 active |
```

## Output Contract
- Every initiative ties to a stated business driver — technology for its own sake is not on the roadmap
- Dependencies always mapped — initiatives that can't proceed without a predecessor are blocked until the predecessor is done
- Sequencing always shown: Now / Next / Later (not a flat list)
- HITL required: Dr. Lewis owns and approves the roadmap; Matt Mathison reviews annually; Finance reviews cost implications

## System Dependencies
- **Reads from:** Business strategy, current technology stack, IT risk register, project backlog (provided)
- **Writes to:** Nothing (roadmap document for executive review and planning)
- **HITL Required:** Dr. Lewis approves roadmap before board presentation; Matt Mathison reviews portfolio-level technology strategy annually; Finance reviews cost of initiatives > $50K

## Test Cases
1. **Golden path:** Annual MBL roadmap → 4 Now initiatives (security + Krista Phase 1), 4 Next initiatives (integrations + cloud optimization), 3 Later initiatives (portfolio intelligence + AI automation); dependencies mapped, costs estimated, Matt Mathison briefed
2. **Edge case:** Portfolio company has no technology strategy and aging infrastructure → starts with Foundation tier (security, backup, access management) before any efficiency or innovation investments; explicitly sequences this and explains why
3. **Adversarial:** Executive wants to skip Foundation and jump straight to AI automation → explains the risk (building AI on an insecure foundation amplifies the blast radius of a breach), proposes a parallel track (foundational security in parallel with limited AI pilot to maintain momentum)

## Audit Log
Technology roadmaps retained by entity and year. Initiative completion tracked against roadmap commitments.

## Deprecation
This skill produces a living document — update annually, not retire. Deprecate when entity has a dedicated CTO or IT Director with a formal strategic planning process.
