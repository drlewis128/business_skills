---
name: engineering-roadmap-planner
description: "Build and maintain the engineering technology roadmap. Use when the user says 'engineering roadmap', 'tech roadmap', 'what should we build next', 'engineering priorities', 'quarterly engineering plan', 'technology strategy', 'engineering backlog prioritization', 'what to build this quarter', or 'engineering planning'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--horizon <quarter|half|annual>] [--mode <build|review|reprioritize>]"
---

# Engineering Roadmap Planner

Build and maintain the engineering technology roadmap for MBL Partners and portfolio companies. An engineering roadmap translates business priorities into sequenced technical work — it answers "what are we building, why, and in what order?" It is not a project plan (no dates until committed) and not a backlog (no line items until groomed). This skill produces the roadmap artifact and helps prioritize when capacity forces trade-offs.

## When to Use
- Quarterly planning cycle — setting engineering priorities for next 90 days
- Annual technology strategy review
- Capacity crunch — need to cut scope and communicate trade-offs clearly
- New portfolio company integration — what technical work is required to connect to MBL stack?
- Stakeholder asks "what's engineering working on?" or "when will X be done?"

## Roadmap Framework

```
Horizon 1 (Now — current quarter):
  Committed work — specific, scoped, resourced
  Delivery dates are real expectations

Horizon 2 (Next — next 1-2 quarters):
  Planned work — sequenced but not started
  Dates are estimates; may shift based on H1 outcomes

Horizon 3 (Later — 6-12 months):
  Strategic bets and research
  No commitments; directional only
```

## Priority Scoring

| Factor | Weight | Scoring Guide |
|--------|--------|--------------|
| Business impact (revenue/risk) | 40% | 1-5: 1=minimal, 5=critical path to revenue or compliance |
| Engineering effort | 30% | 1-5: 1=weeks, 5=quarters (inverse — less effort = higher score) |
| Strategic alignment | 20% | 1-5: 1=nice to have, 5=core to MBL AI strategy |
| Dependencies (unblocks others) | 10% | 1-5: 1=standalone, 5=blocks 3+ other workstreams |

**Priority score = (Business × 0.4) + (Effort × 0.3) + (Strategy × 0.2) + (Dependencies × 0.1)**

## Output Format

```markdown
# Engineering Roadmap — <Entity>
**Period:** <quarter/half/year> | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Executive Summary
<3-4 sentences: top priorities this period, key trade-offs made, what's been deferred and why>

---

## Horizon 1 — Committed (Current Quarter)

| Initiative | Business Driver | Team | Size | Target | Status |
|-----------|---------------|------|------|--------|--------|
| [Initiative 1] | [Why it matters] | [Who] | S/M/L | [Date] | 🟢 On track |
| [Initiative 2] | | | | | 🟡 At risk |

**Committed capacity:** <N> engineers × <N> sprints = <N> engineer-weeks

---

## Horizon 2 — Planned (Next 1-2 Quarters)

| Initiative | Business Driver | Priority Score | Dependency |
|-----------|---------------|--------------|-----------|
| [Initiative A] | | 4.2 | Requires H1 auth work |
| [Initiative B] | | 3.8 | Standalone |

---

## Horizon 3 — Strategic Bets (6-12 Months)

| Initiative | Hypothesis | Signal to Advance |
|-----------|-----------|-----------------|
| [Initiative X] | [What we believe] | [What must be true to commit] |

---

## Deferred / Descoped

| Initiative | Reason Deferred | Revisit Trigger |
|-----------|---------------|----------------|
| [Initiative Y] | Capacity constraint; low business impact score | If <condition>, re-evaluate Q3 |

---

## Key Risks and Dependencies

| Risk | Impact | Owner | Mitigation |
|------|--------|-------|-----------|
| [Risk 1] | H1 delayed | Dr. Lewis | [Plan] |

---

## Matt Mathison Bottom Line

**What gets built this quarter:** <2-3 bullets, business outcome framing>
**What's being deferred:** <1-2 bullets>
**What we need from business:** <decisions or unblocks needed>
```

## Output Contract
- Business driver always required for H1 and H2 items — "technical debt" is not a business driver; "reduces deployment failures that delay client onboarding" is
- Priority scoring always documented — how we rank trade-offs must be auditable
- Deferred items always documented — what's cut is as important as what's built
- HITL required: Dr. Lewis owns engineering roadmap; Matt Mathison approves H1 commitments; stakeholders notified of scope changes; roadmap review quarterly

## System Dependencies
- **Reads from:** Business priorities (Matt Mathison), sprint velocity data (Monday.com), incident history, compliance calendar (legal department)
- **Writes to:** Engineering roadmap document (SharePoint); Monday.com sprint board
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews and approves H1 commitments; stakeholders briefed on changes

## Test Cases
1. **Golden path:** Q3 engineering roadmap for MBL → H1: API gateway + Krista.ai integration (8 weeks); H2: OpenFang agent runtime deployment + Monday.com automation expansion; H3: Autonomous deal pipeline agent; deferred: legacy report migration (low business impact score 2.1); Matt Mathison approves — H1 commitments locked
2. **Edge case:** Allevio requests emergency HIPAA technical safeguard work mid-quarter → HIPAA compliance is a compliance kill criterion per THRIVE; insert into H1, identify what to defer; communicate trade-off to Matt Mathison within 24 hours; use priority scoring to select what moves out
3. **Adversarial:** Business stakeholder demands a specific feature be "committed" without providing capacity — roadmap commitments require engineering capacity math; "committed" means resourced; if they want it committed, identify what comes out; document the decision; no phantom commitments

## Audit Log
Roadmap versions retained by quarter. Scope change decisions documented. Priority scoring worksheets retained.

## Deprecation
Retire when entity adopts a dedicated engineering planning platform (Linear, Shortcut, Jira with roadmap module) with integrated capacity modeling.
