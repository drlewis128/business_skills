---
name: meet-ops-review
description: "meeting intelligence operations review, monthly meeting intelligence ops review, quarterly meeting intelligence ops review, Dr. Lewis monthly ops review, pipeline health monthly review, KPI trends ops review, quality issues ops review, Matt Mathison feedback ops review, quarterly OKR grading ops review, roadmap progress ops review, Phase 2 Phase 3 status ops review, next quarter plan meeting intelligence, Matt Mathison satisfaction survey quarterly, improvement backlog management, start stop continue meeting intelligence, annual program review Matt Mathison, Krista AI ops review meeting intelligence"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[review type: 'monthly' | 'quarterly' | 'annual', period e.g. 'Q2 2026']"
---

# Meeting Intelligence Ops Review

This skill facilitates the monthly (30-minute) and quarterly (60-minute) Meeting Intelligence operations review, covering pipeline health trends, KPI performance, quality findings, Matt Mathison satisfaction, OKR grades, and the improvement backlog. The annual program review with Matt Mathison is also supported, using a Start/Stop/Continue framework to drive continuous improvement decisions.

## When to Use

- End of month: Dr. Lewis conducts the 30-minute monthly pipeline and KPI review
- End of quarter: Dr. Lewis conducts the 60-minute OKR grading and roadmap review (Krista.ai team invited when relevant)
- Annual review cycle: Dr. Lewis and Matt Mathison conduct the annual program review
- The improvement backlog has grown to >5 open items and needs a prioritization session

## Ops Review Framework

```
MEETING INTELLIGENCE OPS REVIEW — [REVIEW TYPE] — [PERIOD]
===========================================================
Review type: MONTHLY (30 min) / QUARTERLY (60 min) / ANNUAL
Participants: Dr. John Lewis [+ Krista.ai team if quarterly] [+ Matt Mathison if annual]
Facilitator: Dr. John Lewis

=== MONTHLY REVIEW (30 MIN) ===

SECTION 1: PIPELINE HEALTH — MONTH SUMMARY (10 min)
  - Overall pipeline uptime this month: [%]
  - SLA compliance this month: [%]
  - Open errors carried into next month: [N] — [list]
  - Most significant pipeline event this month: [description]
  - Trend vs. prior month: IMPROVING / STABLE / DEGRADING
  - Action: [what needs to change in the pipeline next month]

SECTION 2: KPI TRENDS — MONTH REVIEW (10 min)
  | KPI | Target | Month Avg | vs. Prior Month | On Track? |
  |-----|--------|-----------|-----------------|-----------|
  | Transcripts/week | ... | ... | ... | Y/N |
  | Action items/meeting | ... | ... | ... | Y/N |
  | Prep sheet on-time | ... | ... | ... | Y/N |
  | Closure rate | ... | ... | ... | Y/N |
  | Summary quality | ... | ... | ... | Y/N |
  | PHI guard | 100% | ... | ... | Y/N |
  | Matt rating | ... | ... | N/A | Y/N |
  | Pipeline uptime | ... | ... | ... | Y/N |
  - KPIs at risk: [list]
  - Action: [top 1-2 KPI improvement priorities for next month]

SECTION 3: QUALITY FINDINGS — MONTH REVIEW (5 min)
  - Summary quality issues this month: [most common failure type; frequency]
  - Attribution disputes this month: [N; resolutions]
  - PHI events this month: [N; pre-dist catch rate; any incidents]
  - Privacy check flags this month: [N; types; resolutions]
  - Systemic quality issue identified: [YES — description / NO]

SECTION 4: IMPROVEMENT BACKLOG TRIAGE (5 min)
  Open improvement items:
  | # | Improvement | Priority | Effort | Status | Owner |
  |---|-------------|----------|--------|--------|-------|
  | 1 | ...         | H/M/L    | H/M/L  | ...    | ...   |
  - New items added this month: [N]
  - Items completed this month: [N]
  - Items to deprioritize: [N]
  - Next month's top improvement: [item]

=== QUARTERLY REVIEW (60 MIN) ===

SECTION 1: OKR GRADING (20 min)
  [Full OKR grade table from meet-okr-tracker]
  Overall grade: STRONG / ON TRACK / AT RISK / OFF TRACK
  - Off-track KRs: [list with root cause and recovery plan]
  - KRs improving: [list with driver of improvement]
  - OKR grade presented to: Dr. Lewis [+ Matt Mathison summary]

SECTION 2: MATT MATHISON SATISFACTION SURVEY (10 min)
  Survey questions (1–5 scale):
  Q1: "The weekly briefing gives me the information I need to manage the portfolio."
  Q2: "The format and length of the briefing work for me."
  Q3: "The action items and follow-ups from meetings are being tracked effectively."
  Results: Q1 [N/5] | Q2 [N/5] | Q3 [N/5] | Average [N/5]
  Matt's verbatim feedback: [if any]
  Action from feedback: [specific change based on Matt's input]

SECTION 3: ROADMAP PROGRESS REVIEW (15 min)
  Phase 2 — Weekly Summary + Monday.com Push:
    Status: [COMPLETE / IN PROGRESS — milestone details]
    Blockers: [if any]
  Phase 3 — Pre-Meeting Prep Sheets:
    Status: [COMPLETE / IN PROGRESS — milestone details]
    Blockers: [if any]
  Portfolio Rollout Status:
    MBL: [stable / issues] | Allevio: [status] | HIVE: [status] | Column6: [status]
  Next Quarter Roadmap Focus: [top 2-3 initiatives]

SECTION 4: KRISTA.AI RELATIONSHIP REVIEW (if team present) (10 min)
  - Integration reliability this quarter: [%]
  - Issues requiring Krista.ai engineering attention: [list]
  - Feature requests for Krista.ai team: [list]
  - Contract/SLA review: [any issues with current terms]
  - Krista.ai team commitments for next quarter: [list]

SECTION 5: START/STOP/CONTINUE (5 min)
  START (things we should begin doing):
  - [Item 1]
  - [Item 2]
  STOP (things we should stop doing):
  - [Item 1]
  CONTINUE (things working well to maintain):
  - [Item 1]
  - [Item 2]

=== ANNUAL REVIEW (WITH MATT MATHISON) ===

SECTION 1: YEAR IN REVIEW
  - Total meetings processed: [N]
  - Total action items generated and tracked: [N]
  - Average annual closure rate: [%]
  - Matt Mathison satisfaction trend (4 quarters): [Q1: N | Q2: N | Q3: N | Q4: N]
  - PHI incidents: [N — all caught pre-distribution: YES/NO]
  - Phase roadmap completion: [phases completed; phases in progress]

SECTION 2: VALUE DELIVERED
  - Decisions tracked that would have been lost without Meeting Intelligence: [examples]
  - Action items that would not have been followed up: [N; dollar value if quantifiable]
  - Matt's meeting prep time reduction: [estimate]
  - THRIVE Integrity link: organizational commitment-keeping rate over the year

SECTION 3: NEXT YEAR PLAN
  - Priorities for the coming year
  - Matt Mathison's input on what matters most
  - Budget and resource requirements
  - Matt Mathison approval for next year's program direction
```

## Output Format

```markdown
## Meeting Intelligence Ops Review — [Type] — [Period]

**Participants:** Dr. John Lewis [others if applicable]
**Review Date:** [date]

**Monthly Summary:** [pipeline health; KPIs on track; top quality issue; top improvement item]

**Quarterly OKR Grade:** [STRONG/ON TRACK/AT RISK/OFF TRACK] — [N/8 KRs on target]

**Matt Mathison Satisfaction:** [N/5] — [key feedback]

**Start/Stop/Continue:**
- START: [items]
- STOP: [items]
- CONTINUE: [items]

**Top Actions from Review:**
1. [action + owner + due date]
2. [action + owner + due date]
```

## Output Contract

- **The monthly review is Dr. Lewis's accountability session with himself.** No external audience is required for the monthly review — it is a 30-minute structured self-audit of whether the Meeting Intelligence program is operating as designed. The value of the monthly cadence is that it forces Dr. Lewis to examine pipeline health, KPI trends, and quality issues on a regular basis rather than only when something breaks visibly. Programs that are only reviewed when they fail tend to fail more.

- **The quarterly Matt Mathison satisfaction survey is the most important data collection event in the ops review cycle.** Matt's three responses determine whether the program is actually serving his needs — not whether the pipeline is operationally healthy. A perfectly healthy pipeline delivering summaries that Matt finds unhelpful is a failed program. The survey results drive the Start/Stop/Continue framework for the following quarter, and any Q-o-Q decline in Matt's satisfaction triggers an immediate follow-up conversation — the decline cannot be addressed from the ops review alone.

- **The annual program review with Matt Mathison is the governing body for the Meeting Intelligence program.** Matt owns the definition of value for this program; Dr. Lewis owns the delivery. The annual review is the one meeting per year where Matt explicitly confirms or redirects the program's priorities for the coming year. Dr. Lewis brings a year-in-review (quantitative), a value delivered narrative, and a proposed next-year plan; Matt responds with his priorities and approvals. Nothing in the Meeting Intelligence program's direction changes between annual reviews without Matt's explicit input.

## System Dependencies

### Reads from
- Pipeline health reports (monthly archive)
- KPI dashboard archives (monthly and quarterly)
- Quality review logs (monthly aggregate)
- OKR tracker (quarterly grades)
- Matt Mathison satisfaction survey responses
- Improvement backlog (SharePoint)

### Writes to
- SharePoint: /Meeting Intelligence/Ops-Reviews/[date]-[type]-ops-review.md
- Improvement backlog (updated with new items; completed items marked closed)
- Next-quarter improvement plan (output of quarterly review)
- Annual program plan (output of annual review; Matt Mathison approves)

### HITL Required
- Dr. Lewis: owns and runs all review types; sole participant in monthly review
- Krista.ai team: invited to quarterly review when integration topics require joint discussion
- Matt Mathison: participates in annual review; receives quarterly OKR summary and satisfaction survey

## Test Cases

1. **Golden path:** Q2 quarterly review — OKR grade STRONG (7.5/8), Matt satisfaction 4.4/5, Phase 2 complete, Phase 3 at 80% — clean review, Start/Stop/Continue yields 2 starts (prep sheet quality improvements), 1 stop (over-detailed pipeline health email that Matt never reads), 2 continues; next quarter plan documented.
2. **Edge case:** The quarterly Krista.ai team review reveals the integration is being deprecated in 6 months in favor of a new API version. Ops review must capture this as a HIGH-priority improvement item, escalate to Dr. Lewis for technical planning, and flag to Matt Mathison that a platform migration is coming — it cannot be treated as a routine backlog item.
3. **Adversarial:** Matt Mathison's annual review reveals he has not been reading the weekly briefings consistently for the past quarter because they "feel too long" — but he never provided this feedback in the quarterly satisfaction surveys (he rated format 4/5 each time). Annual review must surface the gap between survey response and actual behavior, treat the revelation as an urgent format problem requiring immediate adjustment in Q1 of the following year, and add a more direct format feedback question to future quarterly surveys.

## Audit Log

Every ops review generates a structured record in SharePoint: participants, date, key findings, decisions made, and action items. The improvement backlog is updated as part of every review, and the backlog state is tracked over time to measure whether the program is addressing its own improvement opportunities. Annual review records include Matt Mathison's sign-off on the next-year plan. All ops review records are retained for 3 years.

## Deprecation

This skill is deprecated when the Meeting Intelligence program transitions to a mature steady-state operation with a dedicated ops cadence managed through MBL's standard business rhythm — and the Start/Stop/Continue, OKR grading, and Matt Mathison satisfaction feedback are all handled natively within that cadence without requiring a separate skill to structure the review. Dr. Lewis approves deprecation; Matt Mathison confirms the program governance is adequately handled.
