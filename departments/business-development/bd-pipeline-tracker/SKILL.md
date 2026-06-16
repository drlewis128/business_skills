---
name: bd-pipeline-tracker
description: "Track and manage the BD partnership pipeline. Use when the user says 'BD pipeline', 'business development pipeline', 'track partnership prospects', 'BD deal tracker', 'partnership pipeline status', 'where are we with partnership prospects', 'partner pipeline review', 'BD funnel', 'partnership development tracker', or 'BD activity pipeline'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <weekly|monthly|quarterly>]"
---

# BD Pipeline Tracker

Track and manage the business development pipeline — the collection of partnership prospects at various stages from initial identification through signed agreement. Without a formal BD pipeline, partnership development is reactive (whoever shows up gets attention) and invisible (no one knows how many prospects are being worked or where they are in the process). A BD pipeline makes the activity visible, prioritizable, and reportable to Matt Mathison.

## When to Use
- Weekly or monthly review of BD activity and pipeline status
- Matt Mathison asks "what's in the BD pipeline?"
- Prioritizing which partnership prospects to focus BD time on
- Identifying pipeline that is stalling (prospects that haven't moved in 30+ days)
- Quarterly BD planning — how much pipeline is needed to hit partner growth goals?

## BD Pipeline Stages

```
BD Pipeline Stages:

Stage 1 — Identified: Prospect has been identified as a potential partner; not yet contacted
Stage 2 — Contacted: First outreach sent; awaiting response
Stage 3 — Conversation: Discovery call completed; evaluating fit
Stage 4 — Qualified: Partner qualifies per scorecard; moving toward proposal
Stage 5 — Proposal/Term sheet: Partnership model presented; in negotiation
Stage 6 — Legal review: Agreement in legal review; near signing
Stage 7 — Signed: Agreement executed; moving to onboarding
Stage X — Passed: Evaluated and passed; reason documented
```

## Output Format

```markdown
# BD Pipeline — <Company Name>
**Period:** [Week of [Date] / Month of [Month] [Year]]
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison

---

## TL;DR

- **Active prospects:** [N] partners at Stages 1-6
- **Signed this period:** [N] new agreements
- **Passed this period:** [N] prospects — [primary reason]
- **Stalled (>30 days no movement):** [N] prospects — action needed
- **Action needed:** [1-2 specific items]

---

## Pipeline Overview by Stage

| Stage | # Prospects | Notes |
|-------|------------|-------|
| 1 — Identified | [N] | [Status note] |
| 2 — Contacted | [N] | [Awaiting response from [N]] |
| 3 — Conversation | [N] | [In active discovery] |
| 4 — Qualified | [N] | [Ready for proposal] |
| 5 — Proposal | [N] | [In negotiation] |
| 6 — Legal | [N] | [Expected signing: [dates]] |
| 7 — Signed (this period) | [N] | |
| X — Passed (this period) | [N] | |
| **Total active** | **[N]** | |

---

## Pipeline Detail

| Prospect | Entity | Stage | Partner type | Est. value | Last action | Next action | Owner | Due |
|---------|--------|-------|------------|-----------|------------|------------|-------|-----|
| [Name] | [Entity] | [Stage N] | [Referral/Co-sell/etc.] | $[X]/yr | [Date + what] | [Specific next step] | Dr. Lewis | [Date] |
| [Name] | [Entity] | [Stage N] | | $[X]/yr | [Date + what] | | Dr. Lewis | [Date] |

---

## Stalled Prospects (>30 days no movement)

| Prospect | Stage | Days stalled | Likely reason | Action plan |
|---------|-------|-------------|--------------|------------|
| [Name] | [Stage] | [N] days | [Gone quiet / awaiting legal / waiting on their decision] | [Re-engage / escalate / close] |

---

## Signed This Period

| Partner | Entity | Date signed | Agreement type | Est. Year 1 value |
|---------|--------|------------|---------------|------------------|
| [Name] | [Entity] | [Date] | [Referral / Co-sell] | $[X] |

---

## Passed This Period

| Prospect | Entity | Reason for pass | Re-engage date (if any) |
|---------|--------|----------------|------------------------|
| [Name] | [Entity] | [Specific reason] | [Date / None] |

---

## Pipeline Metrics

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| New prospects identified | [N] | [N] | [N]/month | ✅ / ⚠️ |
| Discovery calls completed | [N] | [N] | [N]/month | ✅ / ⚠️ |
| Partners qualified (Stage 4+) | [N] | [N] | [N]/month | ✅ / ⚠️ |
| New agreements signed | [N] | [N] | [N]/quarter | ✅ / ⚠️ |
| Average days from contact to signed | [N] | [N] | <[N] days | ✅ / ⚠️ |

---

## Matt Mathison Summary

BD pipeline for [Company]: [N] active prospects across [N] stages. [N] agreements signed this period. [N] stalled prospects — [action plan]. Next agreements expected: [Date range]. **Matt Mathison decision needed:** [Intro to [prospect] if Matt has relationship / Approve budget for [specific BD activity] / No action — Dr. Lewis managing]
```

## Output Contract
- Pipeline always visible and current — a BD pipeline that's only updated quarterly gives Matt Mathison a 90-day lag on BD health; the pipeline must be updated at minimum monthly with a weekly cadence during active recruitment phases
- Stalled prospects always called out — a prospect who hasn't moved in 30 days is a management problem, not a pipeline highlight; the stalled list must be explicit with a specific action plan for each
- Next action always assigned with a due date — "pursuing" is not a pipeline status; every active prospect must have a specific next step, an owner, and a due date; without this, pipeline reviews are a conversation about what has happened, not what will happen
- Pass rationale always documented — passes without documented rationale create a pattern of unexplained BD activity; the reason for each pass is strategic intelligence for future outreach decisions and program design
- HITL required: Dr. Lewis owns and updates the pipeline; Matt Mathison reviews monthly; any prospect where Matt has an existing relationship is flagged for his awareness before first outreach; any agreement entering legal review requires Matt Mathison notification

## System Dependencies
- **Reads from:** Partner qualification scores, discovery call notes, legal review status, CRM
- **Writes to:** BD pipeline report (SharePoint/BD/Pipeline); CRM; Matt Mathison brief
- **HITL Required:** Dr. Lewis owns; Matt Mathison reviews monthly; Matt Mathison flagged for relationship conflicts and agreements entering legal

## Test Cases
1. **Golden path:** Allevio monthly BD pipeline review → 12 active prospects; 3 at Stage 5 (proposal); 2 agreements signed (both referral); 1 stalled at Stage 3 (45 days — gone quiet after discovery call; action: re-engage with new case study); 2 passed (outside geography); Pipeline velocity: avg 38 days contact-to-signed (target <45 days — on track); Matt Mathison briefed: no action needed this month; next signing expected within 10 days (Stage 6 legal review)
2. **Edge case:** A prospect at Stage 4 (qualified) becomes unresponsive after a positive discovery call → don't remove from pipeline; mark as stalled with date; try 2 re-engagement attempts using different channels (if emailed, try LinkedIn; if LinkedIn, try email); if no response after 3 attempts, move to "dormant" status (not passed — they may become active again in 6 months); schedule a calendar reminder to re-engage at 90 days
3. **Adversarial:** The BD pipeline has many prospects at Stage 1 and 2 but very few making it to Stage 4 (qualified) — a conversion problem → this is a qualification funnel issue; examine: are prospects being identified correctly against the ideal partner profile? Are discovery calls converting to qualification because of the wrong ICP match? Or because the partnership model isn't compelling? Diagnose before adding more Stage 1 prospects; a pipeline with many unqualified prospects is not a healthy pipeline — it's a list

## Audit Log
Pipeline reports retained by period. Pass rationale documented. Signing dates and partner values logged. Stalled prospect actions tracked. Matt Mathison briefing outcomes retained.

## Deprecation
Retire when portfolio companies have CRM-integrated BD pipeline management with automated stage tracking, stall alerts, and real-time Matt Mathison dashboards.
