---
name: meet-monthly-meeting-report
description: "monthly meeting intelligence report, MBL monthly meeting summary, month in review meeting intelligence, how many meetings this month, meeting decisions monthly review, action items generated monthly, action items closed monthly, Matt Mathison monthly briefing, meeting health month summary, meeting cost monthly, meeting efficiency monthly, decision rate monthly, trending topics monthly, open commitments aging monthly, Dr. Lewis monthly meeting intelligence audit, monthly leadership meeting report, entity meeting summary monthly, monthly meeting intelligence briefing for Matt"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[month and year, e.g. 'June 2026']"
---

# Monthly Meeting Intelligence Report

This skill builds the monthly meeting intelligence report for MBL leadership, synthesizing the full month's meeting data into a one-page Matt Mathison briefing plus a detailed operational review for Dr. Lewis. The report covers meeting volume, decisions made, action item generation and closure, trending topics, and open commitments aging — with a month-end audit that Dr. Lewis reviews before any portion goes to Matt Mathison.

## When to Use

- Month-end meeting intelligence cycle runs (first Monday of each new month)
- Dr. Lewis requests a monthly program audit to assess the health of the Meeting Intelligence system
- Matt Mathison asks for a month-in-review briefing covering what his leadership team decided and committed to
- The monthly report is an input to the quarterly OKR and program ops review cycles

## Monthly Meeting Report Framework

```
MONTHLY MEETING INTELLIGENCE REPORT — [MONTH YYYY]
===================================================

SECTION 1: MONTH-IN-REVIEW OVERVIEW
  - Report period: [first day] to [last day of month]
  - Total meetings recorded and processed: [N]
  - By entity:
    | Entity  | Meetings | Participants (avg) | Decisions | Action Items | Closed |
    |---------|----------|--------------------|-----------|--------------|--------|
    | MBL     | ...      | ...                | ...       | ...          | ...    |
    | Allevio | ...      | ...                | ...       | ...          | ...    |
    | HIVE    | ...      | ...                | ...       | ...          | ...    |
    | Column6 | ...      | ...                | ...       | ...          | ...    |
    | TOTAL   | ...      | ...                | ...       | ...          | ...    |
  - Meetings without transcripts (gap analysis): [N; reasons]

SECTION 2: DECISIONS MADE THIS MONTH
  All decisions captured across all entities:
  | Date | Entity | Decision | Decision-Maker | Status (implemented/pending) |
  |------|--------|----------|----------------|------------------------------|
  | ...  | ...    | ...      | ...            | ...                          |
  - Decision rate: [N decisions per meeting — target: ≥0.5 decisions per meeting]
  - High-significance decisions (flagged by Dr. Lewis): [list]

SECTION 3: ACTION ITEM SUMMARY
  - Generated this month: [N total across all entities]
  - Closed on time: [N] ([%])
  - Closed late: [N] ([%])
  - Still open at month end: [N] ([%])
  - Escalated during month (>14 days): [N]
  - Entity with highest closure rate: [entity] at [%]
  - Entity with lowest closure rate: [entity] at [%] — [flag if <70%]
  - Oldest still-open item at month end: [description; age; owner; entity]

SECTION 4: MEETING HEALTH — COST AND EFFICIENCY
  - Estimated meeting time this month (all entities): [N hours]
  - Estimated meeting cost (fully-loaded rate × hours):
    Formula: avg fully-loaded rate $X/hr × N participant-hours = $Y
    Note: use agreed fully-loaded rate established with Matt Mathison
  - Decision rate vs. meeting cost: [$Z per decision made]
  - Efficiency vs. prior month: [improving / declining / stable]
  - Meetings flagged as low-decision/low-action (likely candidates for cancellation): [N]

SECTION 5: TRENDING TOPICS — MONTH SUMMARY
  - Top 5 topics of the month (by frequency): [list with trend vs. prior month]
  - Topics that emerged this month (new): [list]
  - Topics that resolved this month (declining to <10% of peak): [list]
  - Persistent topics (3+ months in top 10): [flag for Matt Mathison strategic attention]
  - Cross-entity topics (appearing in ≥3 entities): [list — portfolio-level signal]

SECTION 6: OPEN COMMITMENTS AGING
  - Items open 0-7 days: [N] — normal
  - Items open 8-14 days: [N] — monitor
  - Items open 15-30 days: [N] — at risk; flagged to entity CEOs
  - Items open >30 days: [N] — CRITICAL; Matt Mathison attention required
  - Critical items: [list with owner; entity; description; days open]

SECTION 7: MATT MATHISON MONTHLY BRIEFING (ONE PAGE)
  BLUF: [2 sentences — state of the organization's meeting intelligence this month]

  ENTITY SUMMARIES (3-4 bullets each):
  MBL: [key decisions; major commitments; open items; notable trends]
  Allevio: [key decisions; major commitments; open items; notable trends]
  HIVE: [key decisions; major commitments; open items; notable trends]
  Column6: [key decisions; major commitments; open items; notable trends]

  MATT'S ACTION REQUIRED:
  - [Item 1: what he needs to decide or follow up on]
  - [Item 2]
  - [Item 3]

  PROGRAM HEALTH:
  - Action item closure rate: [%] vs. ≥80% target
  - Decision rate: [N/meeting] vs. ≥0.5 target
  - Open items >30 days: [N] — requires attention if >0

SECTION 8: DR. LEWIS MONTH-END AUDIT
  [ ] All entity briefs for the month reviewed and quality-checked
  [ ] PHI incidents this month: [N] — assessed and documented
  [ ] Privacy checks completed for all distributed outputs
  [ ] Attribution disputes this month: [N] — all resolved
  [ ] Action item escalations this month: [N] — all entity CEOs notified
  [ ] Pipeline reliability this month: [% uptime vs. SLA]
  [ ] Matt Mathison satisfaction check: [rating if collected]
  [ ] Monthly report approved for distribution to Matt Mathison
```

## Output Format

```markdown
## Monthly Meeting Intelligence Report — [Month YYYY]

**Dr. Lewis Audit:** [COMPLETE / PENDING] | **Approved for Matt:** [YES / NO]

### Matt Mathison Monthly Briefing (One Page)

**BLUF:** [2 sentences]

**MBL:** [3-4 bullets]
**Allevio:** [3-4 bullets]
**HIVE:** [3-4 bullets]
**Column6:** [3-4 bullets]

**Your Action Required:**
1. [item]
2. [item]

**Program Health:**
- Closure rate: [%] | Decision rate: [N/mtg] | Open >30d: [N]

---
*Detailed operational report available: SharePoint /Meeting Intelligence/Monthly-Reports/[month]-report.md*
```

## Output Contract

- **The Matt Mathison one-page briefing is the primary deliverable — the detailed report is the support document.** Matt receives the one-page briefing via email by the first Monday of the new month by 9am MST. The detailed operational report is available in SharePoint and referenced in the briefing, but Matt is not expected to read it. Dr. Lewis reads it. If Matt wants to drill into any section, Dr. Lewis can prepare a targeted briefing on request. The one-page discipline prevents the monthly briefing from becoming a data dump that Matt skims or ignores.

- **Persistent topics (3+ months in top 10) are a strategic escalation signal, not a normal reporting item.** When a topic has appeared in the top 10 across three consecutive months, it has moved from "active discussion" to "unresolved organizational challenge." The monthly report must explicitly flag persistent topics to Matt Mathison with a clear statement that this topic has not resolved in 90+ days and a recommended strategic response — whether that is a dedicated working session, a policy decision, or a leadership conversation. Persistent topics sitting in meeting intelligence outputs without resolution represent accumulated organizational drag.

- **The month-end audit by Dr. Lewis is the program's internal accountability check.** Before any monthly report reaches Matt Mathison, Dr. Lewis reviews the audit checklist to confirm that every pipeline component functioned correctly, every privacy event was handled properly, every attribution dispute was resolved, and the program's KPIs are accurately represented. This audit is not an aspirational step — it is the mechanism by which Dr. Lewis certifies to Matt Mathison that the meeting intelligence program is operating with integrity. A failed audit item (e.g., an unresolved PHI incident) delays the monthly report until resolved.

## System Dependencies

### Reads from
- All weekly entity briefs for the month (from SharePoint)
- Action item database (Monday.com rolling 30-day data)
- Topic trend reports for the month
- PHI incident register (Allevio)
- Pipeline health logs
- Quality review logs

### Writes to
- SharePoint: /Meeting Intelligence/Monthly-Reports/[YYYY-MM]-monthly-report.md
- Matt Mathison monthly briefing email (one-page format)
- Dr. Lewis month-end audit log

### HITL Required
- Dr. Lewis: completes month-end audit checklist before any distribution; approves one-page Matt briefing
- Matt Mathison: receives one-page briefing; no approval required (he is the recipient, not a reviewer)
- Entity CEOs: not routine recipients of the monthly report — Dr. Lewis shares entity-specific sections with CEOs on request or when their action is required

## Test Cases

1. **Golden path:** June month-end — 72 meetings processed, 38 decisions captured, 156 action items generated (82% closed on time), 3 trending topics, 0 items open >30 days, 0 PHI incidents — clean audit, Matt receives one-page briefing on July 6 at 8:55am MST.
2. **Edge case:** A month in which two major holidays reduced meeting volume by 40% compared to the prior month. The report must contextualize the lower decision and action item counts relative to the reduced meeting volume rather than flagging them as a performance decline — decision rate per meeting is the correct efficiency metric, not total decisions.
3. **Adversarial:** The month-end audit reveals that one weekly Allevio brief was distributed to Matt Mathison without Dr. Lewis privacy review due to a pipeline configuration error. The monthly report must document this as an audit finding, assess whether any confidential Allevio data reached Matt without proper review, and include a corrective action in the Dr. Lewis audit log — even if no harm resulted from the specific distribution.

## Audit Log

Every monthly report is archived in SharePoint with the full report, the one-page Matt Mathison briefing, the Dr. Lewis audit checklist completion record, and the distribution timestamp. Monthly reports are retained for 3 years per the Meeting Intelligence retention policy. The Dr. Lewis audit completion record is retained separately as program governance documentation.

## Deprecation

This skill is deprecated when MBL implements a meeting analytics platform that produces automated monthly reports with entity-level breakdowns, decision and action item metrics, topic trend summaries, and one-page executive briefings at the quality and format standard this skill provides. Deprecation requires a 3-month parallel validation and Matt Mathison's explicit confirmation that the automated report meets his monthly briefing needs.
