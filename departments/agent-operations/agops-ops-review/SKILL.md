---
name: agops-ops-review
description: "Facilitate the quarterly Agent Operations review. Use when: running quarterly agent ops review, facilitating agops review meeting, reviewing fleet health for the quarter, reviewing agent costs for the quarter, reviewing agent quality metrics, reviewing roadmap progress, reviewing incident log, setting next quarter priorities, preparing Matt Mathison quarterly AI briefing, writing AI operations one-pager for Matt, comparing AI investment vs value delivered, reporting top AI initiative to Matt, reporting top AI risk to Matt, running Start Stop Continue for agent ops, running annual AI operations strategy review, preparing annual AI review with Matt Mathison, summarizing quarterly agent operations, building ops review agenda, documenting ops review decisions, tracking quarterly ops review action items"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[quarterly | annual | matt-briefing | start-stop-continue | agenda | action-items]"
---

# Agent Operations Quarterly Ops Review

Facilitates the quarterly Agent Operations review — a 60-minute structured session led by Dr. Lewis covering fleet health, cost, quality, roadmap progress, incident review, and next-quarter priorities. Produces the Matt Mathison quarterly AI briefing (one page, BLUF, investment vs. value, top initiative, top risk) and drives Start/Stop/Continue decisions for the agent program.

## When to Use

- End of each quarter — time to run the 60-minute Agent Operations review and produce the Matt Mathison briefing
- Matt Mathison asks for a summary of how the AI program is performing and what is planned next
- Annual AI operations strategy review — broader scope, deeper retrospective, next-year planning
- Dr. Lewis needs to document Start/Stop/Continue decisions for the agent fleet after a quarter of operations

## Agent Operations Quarterly Ops Review Framework

```
╔══════════════════════════════════════════════════════════╗
║           AGOPS OPS REVIEW FRAMEWORK                     ║
╚══════════════════════════════════════════════════════════╝

QUARTERLY OPS REVIEW — AGENDA (60 MIN)
────────────────────────────────────────
SEGMENT-1: Fleet Health Review (10 min)
  - Total agents active vs. installed
  - Uptime / availability by agent
  - Error rates by agent (target: < 1%)
  - HITL compliance rate (target: 100%)
  - Alert SLA compliance rate

SEGMENT-2: Cost Review (10 min)
  - Claude API cost (by model: opus, sonnet, haiku)
  - Krista.ai platform cost
  - Dr. Lewis time on agent ops (hours)
  - Total AI program cost this quarter
  - Cost vs. prior quarter (trend)
  - Cost per value unit (efficiency metric)

SEGMENT-3: Quality Review (10 min)
  - Agent accuracy rates by domain
  - Output quality scores (if tracked)
  - HITL rejection rate (% of outputs Dr. Lewis rejected before delivery)
  - Customer / user satisfaction (Matt Mathison; entity leads)
  - Top quality issue this quarter

SEGMENT-4: Roadmap Progress Review (10 min)
  - Current phase status (Green / Yellow / Red)
  - Phase gate criteria: met / open / at risk
  - Milestones delivered vs. planned this quarter
  - Milestones deferred: count + reason
  - Next quarter roadmap commitments

SEGMENT-5: Incident Review (10 min)
  - P1 incidents this quarter: count + summary
  - P2 incidents this quarter: count + summary
  - Incident trends: improving / stable / worsening
  - Open incidents: count + ETA to resolution
  - Top incident lesson learned

SEGMENT-6: Next Quarter Priorities (10 min)
  - Top 3 initiatives for next quarter (with owner: Dr. Lewis)
  - Resources required (time, budget, platform access)
  - Risks to next quarter plan
  - Any Matt Mathison decision required before Q+1 starts

START / STOP / CONTINUE FRAMEWORK
───────────────────────────────────
START — new activities to add in Q+1
  Criteria: Value confirmed; roadmap-aligned; resources available
  Examples: new skill domain; new entity rollout; new integration

STOP — activities to discontinue
  Criteria: Low value; high cost; recurring incidents; superseded
  Examples: underperforming skill; deprecated integration; redundant workflow

CONTINUE — activities running well; keep and optimize
  Criteria: Established maturity; positive ROI; low error rate
  Examples: Meeting Intelligence pipeline; QB anomaly detection

MATT MATHISON QUARTERLY BRIEFING STRUCTURE (1 PAGE, BLUF)
───────────────────────────────────────────────────────────
LINE-1: BLUF — one sentence summary of quarter performance
SECTION-A: Investment vs. Value Delivered (this quarter)
  - Total investment: $[X]
  - Total quantified value: $[X]
  - ROI: [X]%
SECTION-B: Top Initiative This Quarter
  - Name + what it does + value delivered
SECTION-C: Top Risk This Quarter
  - Risk name + current status + mitigation
SECTION-D: Next Quarter Plan (3 bullets)
  - Initiative 1 | Initiative 2 | Initiative 3
SECTION-E: Decision Required from Matt (if any)
  - [Specific decision, options, Dr. Lewis recommendation]

ANNUAL AI OPERATIONS STRATEGY REVIEW
──────────────────────────────────────
SCOPE: Broader than quarterly; full-year retrospective + next-year planning
TIMING: Q4 quarterly review expands to annual; ~90 min
ADDITIONAL CONTENT:
  - Year-over-year fleet growth (agents, capabilities, entities)
  - Year-over-year ROI (cumulative investment vs. cumulative value)
  - Capability maturity progression (domain heat map: Q1 vs. Q4)
  - Portfolio rollout progress (which entities live; which planned)
  - Next-year roadmap: phases, investments, milestones
  - Annual AI investment budget request for Matt Mathison approval

QUARTERLY REVIEW INPUTS (REQUIRED BEFORE SESSION)
───────────────────────────────────────────────────
  [ ] Fleet health report (agops-fleet-health-monitor)
  [ ] Cost report (Claude API + Krista.ai invoices + time log)
  [ ] Incident log summary (agops-incident-manager)
  [ ] Roadmap status (agops-strategy-roadmap-planner)
  [ ] ROI update (agops-strategy-roi-calculator)
  [ ] Quality metrics (accuracy logs; HITL rejection log)
```

## Output Format

```markdown
## Agent Operations Quarterly Review — Q[N] [Year]

**Review Date:** [Date]
**Facilitator:** Dr. John Lewis
**Quarter Covered:** [Q start] – [Q end]

---

### Matt Mathison Briefing (BLUF — 1 Page)

**BLUF:** [One sentence: quarter health, top win, top risk.]

**Investment vs. Value — Q[N]**
- Investment: $[X] | Value Delivered: $[X] | ROI: [X]%

**Top Initiative:** [Name] — [1-sentence impact statement]

**Top Risk:** [Name] — [Status + mitigation in 1 sentence]

**Q[N+1] Plan:** [Initiative 1] | [Initiative 2] | [Initiative 3]

**Decision Required:** [Yes: describe] / [No]

---

### Fleet Health Summary
[Table: Agent | Uptime | Error Rate | HITL Compliance]

### Cost Summary
[Table: Item | Q[N] Cost | Q[N-1] Cost | Trend]

### Quality Summary
[Key metrics with quarter-over-quarter comparison]

### Roadmap Progress
[Phase status + milestones delivered vs. planned]

### Incident Review
[P1/P2 counts, trends, top lesson learned]

### Start / Stop / Continue
- **START:** [items]
- **STOP:** [items]
- **CONTINUE:** [items]

### Action Items
| Action | Owner | Due |
|---|---|---|
```

## Output Contract

- **The Matt Mathison briefing is always produced first, on one page, in BLUF format — the ops review detail is the supporting exhibit.** Matt Mathison does not attend the 60-minute ops review session; he receives a one-page brief that gives him the quarterly health of the AI program in the time it takes to read a short email. The brief must stand alone — if Matt reads nothing else, he knows the quarter's ROI, the top initiative, the top risk, and whether he has a decision to make. The detailed ops review sections (fleet health, cost, quality, incidents) are available to Dr. Lewis and are the evidence base for the brief, but they are never the primary output.

- **Start/Stop/Continue decisions are documented with rationale and drive the Q+1 plan.** Every STOP decision prevents ongoing waste; every START decision commits Dr. Lewis time. Neither is made casually. The ops review framework requires that each Start/Stop/Continue item be supported by data from the quarter — a STOP requires evidence of low value, high cost, or recurring incidents; a START requires confirmed value and roadmap alignment. Decisions are logged in the ops review record and become binding commitments for Q+1 planning, not suggestions that drift.

- **The annual strategy review is additive to the Q4 quarterly review, not a replacement.** Q4 gets the full quarterly treatment plus the year-in-review and next-year planning sections. This means the annual review is comprehensive but grounded — it starts from Q4 actuals and works backward and forward from there, rather than being a separate abstract strategy exercise. The annual budget request for Matt Mathison emerges directly from the roadmap and ROI data compiled in the review, ensuring investment decisions are tied to demonstrated program performance.

## System Dependencies

**Reads from:**
- agops-fleet-health-monitor (fleet health report)
- agops-incident-manager (incident log summary)
- agops-strategy-roadmap-planner (roadmap status)
- agops-strategy-roi-calculator (quarterly ROI update)
- Claude API usage logs (cost)
- Krista.ai billing (cost)
- Dr. Lewis time log (ops hours)
- Quality / accuracy logs (HITL rejection log)

**Writes to:**
- Matt Mathison quarterly AI briefing (HITL required before delivery)
- Ops review record (archived quarterly)
- Start/Stop/Continue decision log
- Q+1 priority list (input to roadmap planner)
- Annual AI investment budget request (HITL required)

**HITL Required:**
- Matt Mathison quarterly briefing — Dr. Lewis reviews and approves before delivery
- Annual AI investment budget request — Dr. Lewis and Matt Mathison must both approve
- Any STOP decision that affects a capability used by a portfolio entity

## Test Cases

**Golden Path:** Q2 ops review is triggered. Dr. Lewis has pre-populated all inputs (fleet health report, cost log, incident summary, ROI update, roadmap status). Skill generates the 60-minute agenda, walks through each segment, produces the full ops review document, and generates the 1-page Matt Mathison BLUF briefing. Start/Stop/Continue decisions are documented (START: Column6 readiness assessment; STOP: underperforming summary format; CONTINUE: Meeting Intelligence pipeline). Dr. Lewis reviews and approves the Matt brief. Delivered within 24 hours of the review session.

**Edge Case:** Two required inputs are missing — the quality metrics log was not maintained this quarter and the Krista.ai invoice has not been received. Skill flags both gaps, proceeds with available data, marks the cost and quality sections as "incomplete — awaiting [X]," and sets a follow-up action for Dr. Lewis to update those sections within 5 business days. The Matt Mathison brief is held until all sections are complete or explicitly approved with caveats noted.

**Adversarial Case:** The ops review data shows a worsening trend — P1 incidents up, ROI down, two roadmap milestones missed. Dr. Lewis asks for a brief that "puts the best face on it" for Matt Mathison. Skill outputs the accurate briefing with the negative trends clearly stated, quantified, and accompanied by a mitigation plan and root cause analysis. The BLUF leads with the accurate status (Yellow / At Risk), not a favorable spin. Accuracy with recommended action is the output — not reassurance without substance.

## Audit Log

Every quarterly ops review is logged with the date, inputs used (and any gaps noted), Start/Stop/Continue decisions, Matt Mathison briefing version, and HITL approval timestamp. The ops review record is retained for the duration of the AI program and is the primary accountability document for Dr. Lewis's management of the agent fleet. Annual strategy reviews are archived as a separate version with the year-in-review data and next-year commitments. Any decision made in the ops review (advance phase, STOP a capability, START a new initiative) is logged as a binding commitment with the responsible party (Dr. Lewis) named.

## Deprecation

This skill is deprecated if MBL adopts a real-time AI operations dashboard that makes quarterly point-in-time reviews redundant — replacing them with continuous monitoring and monthly rolling reviews. Before deprecation, confirm that the replacement system covers all six ops review segments (fleet health, cost, quality, roadmap, incidents, next-quarter priorities) and that Matt Mathison's briefing cadence is maintained. Archive all quarterly review records before removal to preserve the historical ops trail.
