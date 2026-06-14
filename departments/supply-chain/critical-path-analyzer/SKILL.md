---
name: critical-path-analyzer
description: "Identify the critical path in supply chain, procurement, and project timelines to surface the longest sequence of dependent tasks and flag schedule risk. Use when the user says 'critical path', 'what is the longest lead time', 'what could delay this', 'procurement timeline', 'critical timeline', 'what are the dependencies', 'supply chain timeline', 'when can we have this', 'schedule risk', or 'path to completion'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--scope <procurement|project|supply-chain|launch>] [--entity <Allevio|HIVE|MBL>] [--deadline <date>]"
---

# Critical Path Analyzer

Identify the critical path in supply chain and procurement timelines — the longest chain of dependent tasks that determines the earliest possible completion date. In procurement and supply chain, the critical path is almost always driven by the longest lead time item. If you don't find and manage the critical path, the project will be late because of something that was foreseeable from the start.

## When to Use
- Launching a new product, service, or clinical program requiring procurement
- Planning a facility opening, clinic launch, or well startup that depends on supply
- Contract negotiation has a hard deadline — what must happen first?
- Matt Mathison asks "when can we actually start operations?"
- Post-mortem on a late delivery — was this foreseeable?

## Critical Path Methodology

```
Critical Path Method (CPM) — adapted for supply chain:

Concepts:
  Task: Any discrete action with a duration (e.g., "Issue RFQ to suppliers" — 3 days)
  Dependency: A task that must complete before another can start (Finish-to-Start)
  Critical path: The longest chain of dependent tasks from start to finish
  Float (slack): How much a non-critical task can slip without delaying the project
  
Key insight for procurement critical path:
  Supplier lead time is almost always the single largest driver of the critical path
  → Identify the longest-lead-time item FIRST, then work backwards
  
Warning signs that critical path is not being managed:
  - RFQ issued to all suppliers at the same time (correct), but RFQ for longest-lead item issued last
  - Awaiting specification finalization before issuing ANY RFQs (serial, not parallel)
  - Critical path item identified late — project already delayed before it started
  - Contract negotiation running in parallel with supplier selection (inefficient sequencing)
```

## Output Format

```markdown
# Critical Path Analysis — <Project / Launch / Procurement>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / MBL>
**Project:** <Description>
**Required completion date:** <date>
**Earliest possible completion (per critical path):** <date>
**Schedule status:** ✅ On track / ⚠️ At risk / 🔴 Already late

---

## Task List with Durations and Dependencies

| ID | Task | Owner | Duration | Depends on | Earliest start | Latest start | Float |
|----|------|-------|---------|-----------|---------------|-------------|-------|
| T1 | Define specifications | Allevio Clinical Lead | 5 days | — | Day 1 | Day 1 | 0 |
| T2 | Develop supplier list | Dr. Lewis | 2 days | T1 | Day 6 | Day 6 | 0 |
| T3 | Issue RFQ — standard items | Dr. Lewis | 1 day | T1 | Day 6 | Day 12 | 6 |
| T4 | Issue RFQ — long-lead item | Dr. Lewis | 1 day | T1 | Day 6 | Day 6 | 0 |
| T5 | Supplier RFQ response period | Suppliers | 10 days | T4 | Day 7 | Day 7 | 0 |
| T6 | Evaluate bids; select supplier | Dr. Lewis | 3 days | T5 | Day 17 | Day 17 | 0 |
| T7 | Contract negotiation | Dr. Lewis + Legal | 5 days | T6 | Day 20 | Day 20 | 0 |
| T8 | PO issuance | Dr. Lewis | 1 day | T7 | Day 25 | Day 25 | 0 |
| T9 | Supplier manufacturing lead time | Supplier | 28 days | T8 | Day 26 | Day 26 | 0 |
| T10 | Freight transit | Carrier | 5 days | T9 | Day 54 | Day 54 | 0 |
| T11 | Receiving, inspection, acceptance | Dr. Lewis + team | 2 days | T10 | Day 59 | Day 59 | 0 |
| T12 | Staff training (if required) | Allevio | 3 days | T11 | Day 61 | Day 61 | 0 |
| **T13** | **Operations start** | | **—** | **T12** | **Day 64** | **Day 64** | **0** |

---

## Critical Path

```
Critical Path: T1 → T2 → T4 → T5 → T6 → T7 → T8 → T9 → T10 → T11 → T12 → T13
Total duration: 64 days
```

**Critical path driver:** Supplier manufacturing lead time (T9 = 28 days) — this is the longest single task and cannot be compressed without supplier negotiations or alternate sourcing.

**Non-critical tasks (have float):**
- T3 (standard item RFQ): 6 days of float — can start up to Day 12 without impacting completion

---

## Schedule Analysis

| Key date | Status |
|---------|--------|
| Required completion: Day 1 target date | <date> |
| Earliest possible completion: Day 64 | <date> |
| Today's date | <date> |
| Day 1 (can we start today?) | <assessment> |
| Schedule gap | <Ahead by X days / On track / Behind by X days> |

**If Day 64 > required completion date:**
The project cannot be completed by the required date on the current critical path.
Options (choose one or combine):
1. Compress T9 (supplier lead time): Can supplier expedite for premium? Cost: $X; saves N days → new completion: Day Y
2. Parallel sourcing: Qualify a second supplier with shorter lead time; run in parallel with primary → adds risk but compresses by N days
3. Pre-order before spec finalized: Accept spec change risk to place PO now → saves N days; risk: may need to modify order
4. Extend the deadline: Present the facts to Matt Mathison; this is a real constraint, not a planning failure

---

## Risk Register (Critical Path)

| Risk | Impact | Probability | Days at risk | Mitigation |
|------|--------|-----------|-------------|-----------|
| Supplier lead time extends | High | Medium | +7 days | Include escalation clause in PO; weekly supplier check-in |
| Specification changes after T1 | High | Low | Restarts T2-T4 | Freeze specs at T1 completion; changes require Dr. Lewis approval |
| Contract negotiation exceeds 5 days | Medium | Low | +3 days | Use standard MBL contract; pre-identify deal-breakers before entering negotiation |
| Freight delay | Medium | Low | +3-5 days | Use tracked carrier; add 3-day buffer in freight plan |

---

## Compression Options (if behind schedule)

| Option | Days saved | Cost | Risk |
|--------|-----------|------|------|
| Expedite supplier manufacturing | <N> | $X premium | Supplier may not be able to |
| Air freight instead of ground | <N> | $X | High cost; use only if schedule gap is worth it |
| Parallel sourcing (second supplier) | <N> | $X (dual-sourcing premium) | Quality consistency |
| Pre-order before final specs | <N> | Potential rework cost | Spec change during manufacturing |

**Recommended compression:** <specific recommendation based on schedule gap>

---

## Timeline Visual (Gantt)

```
Day:   1   5   10  15  20  25  30  35  40  45  50  55  60  65
       |   |   |   |   |   |   |   |   |   |   |   |   |   |
T1     [===]
T2         [=]
T4         [=]
T5          [=========]
T6                    [==]
T7                       [====]
T8                           [=]
T9                            [==========================]       ← CRITICAL
T10                                                    [====]
T11                                                        [=]
T12                                                         [==]
       CRITICAL PATH: ────────────────────────────────────────
       FLOAT (T3): Day 6-12 slack shown above critical path
```

---

## Escalation Requirement

🔴 **Schedule risk requiring Matt Mathison notification:**
If the critical path puts the required completion date at risk by more than 5 days, notify Matt Mathison immediately with:
- Current projected completion vs. required date
- Root cause (which task is the bottleneck)
- Compression options with cost and timeline
- Recommended action
```

## Output Contract
- Critical path always identified explicitly — "we're working on it" is not the same as "the critical path is X and it takes Y days"
- Longest-lead-time item always identified first — this is almost always the critical path driver in procurement
- Schedule gap always quantified in days — never leave it as "we might be late"
- Compression options always presented when behind schedule — identifying the problem without presenting solutions is not useful
- Matt Mathison escalation triggered if >5 days at risk
- HITL required: Dr. Lewis owns the analysis and maintains the critical path; entity leads own their task durations; schedule changes affecting operations escalated to Matt Mathison; any decision to compress (expedite, dual-source, pre-order) reviewed by Dr. Lewis; spend commitments from compression require standard purchase authority approval

## System Dependencies
- **Reads from:** Supplier lead time data (supplier communications), project specifications, entity operations timelines
- **Writes to:** Critical path plan (SharePoint/Operations/Projects/<project>); procurement timeline tracker; escalation notice to Matt Mathison if required
- **HITL Required:** Dr. Lewis owns analysis; entity leads validate task durations; Matt Mathison notification for >5-day schedule risk; compression decisions via standard purchase authority matrix

## Test Cases
1. **Golden path:** Allevio new clinical program — supplies needed in 60 days → Critical path: spec finalization (5d) → RFQ (1d) → supplier response (10d) → award (2d) → contract (5d) → PO (1d) → manufacturing (25d) → freight (4d) → receipt/inspection (2d) → training (5d) = 60 days exactly; zero float on critical path; no compression needed; all items ordered simultaneously on Day 7; monitoring: weekly supplier check-in from PO issuance; plan is on track
2. **Edge case:** Specification is not finalized — clinical team says "we'll know in 2 weeks" → the 2-week specification delay pushes the critical path to 74 days (over 60-day target by 14 days); present this math immediately; options: (a) freeze specs now on what we know (even if not perfect) and allow scope change protocol; (b) accept the 74-day timeline and adjust the program launch; (c) identify which items are spec-independent (standard consumables) and order those now to run in parallel; don't wait — the cost of waiting compounds daily
3. **Adversarial:** A stakeholder claims "the supplier told us it would only take 2 weeks" without documentation → verbal lead time commitments from suppliers are unreliable; require written confirmation of lead time with the PO or as a condition of award; build the critical path on a conservative lead time (add 25% buffer to verbal estimates); if the supplier delivers in 2 weeks, we finish early; if the verbal estimate was wrong, we're not surprised; "the supplier said so" is not a plan

## Audit Log
Critical path analysis retained per project. Actual vs. planned dates tracked. Compression decisions documented. Escalations to Matt Mathison retained.

## Deprecation
Retire when MBL has project management software (Monday.com, Smartsheet, or equivalent) with native critical path / Gantt chart functionality and supply chain lead time integration.
