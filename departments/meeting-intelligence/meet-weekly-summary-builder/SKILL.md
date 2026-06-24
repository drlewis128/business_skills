---
name: meet-weekly-summary-builder
description: "build weekly meeting summary, weekly meeting intelligence report, matt mathison weekly summary, bluf meeting summary, aggregate meetings week, entity meeting summary rollup, weekly action item rollup, weekly decision rollup, meeting week in review, monday.com push action items, email matt mathison summary, jimmy lindsley cc summary, mbl weekly meeting report, allevio week summary, hive week summary, column6 week summary, risk flags meeting week, meeting intelligence phase 2, weekly meeting digest, executive meeting summary"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date, e.g., 2026-06-27, or 'current week']"
---

# Weekly Meeting Summary Builder

This skill aggregates all processed meeting intelligence from the current week across MBL HoldCo, Allevio, HIVE Partners, and Column6, and produces a concise BLUF-first weekly summary document for Matt Mathison. It is the primary output of Meeting Intelligence Phase 2 — the weekly cadence that keeps Matt informed without requiring him to attend every meeting or review raw transcripts.

## When to Use

- Friday (or end of business week) and all week's transcripts have been processed and cleared
- Matt Mathison requests a mid-week meeting intelligence status check
- Dr. Lewis needs to review the draft weekly summary before it goes to Matt
- A significant escalation or risk flag emerged during the week that requires immediate incorporation

## Weekly Summary Builder Framework

```
PRE-BUILD CHECKLIST
─────────────────────────────
□ All week's transcripts in registry with status = COMPLETE (no PENDING HITL or HIPAA HOLD)
□ Action item extractor has run on all transcripts
□ Decision tracker has run on all transcripts
□ Dr. Lewis has reviewed and cleared all HITL flags for the week
□ HIPAA holds resolved or confirmed excluded before any Allevio content is included

BLUF SECTION — TOP 3 ITEMS
─────────────────────────────
RULE: Matt Mathison reads the BLUF and may read nothing else. It must stand alone.
- Select top 3 items from the week: decisions requiring his awareness, risks, or wins
- Each BLUF item: 1 sentence of fact + 1 sentence of implication or recommended action
- Priority order: Irreversible decisions > Risk flags > Strategic wins > Noteworthy updates
- No filler language. No "it was a great week." Lead with what matters.

ENTITY-BY-ENTITY SECTION
─────────────────────────────
For each entity (MBL HoldCo → Allevio → HIVE → Column6):

  MEETINGS THIS WEEK: [n] meetings | [total duration]
  KEY DECISIONS: [list — 1 line each, Decision ID in brackets]
  ACTION ITEMS: [count] new | [count] re-commits | [count] overdue
  RISK FLAGS: [any escalations, concerns, or unusual sentiment from the week]
  NOTABLE: [wins, progress milestones, or context Matt should have]

  ⚠️  ALLEVIO: Confirm all content is HIPAA-cleared before including. No PHI, no member-level
      detail, no clinical case references. Business metrics only (claims ratio, member counts,
      revenue, operational KPIs).

FORMAT RULES
─────────────────────────────
- Total length: UNDER 200 words for the main body (BLUF + entity summaries)
- Action item table: separate appendix — does not count toward 200-word limit
- Decision log: separate appendix — does not count toward 200-word limit
- Use bullet points, not prose paragraphs, for entity sections
- No jargon, no hedging, no passive voice
- BLUF items must be comprehensible without reading the rest of the document

DISTRIBUTION
─────────────────────────────
Primary:  Matt Mathison — email (Outlook) + document link (SharePoint)
CC:       Jimmy Lindsley — email only (no Monday.com push)
Board:    Monday.com — all action items pushed to entity boards (not the summary document)
Storage:  SharePoint /Meeting Intelligence/Weekly Summaries/[Year]/[Week]/

TIMING STANDARD
─────────────────────────────
- Draft ready: Friday 3PM
- Dr. Lewis review: Friday 3PM–4PM
- Distribution: Friday 4PM (or Monday 8AM if Friday review window missed)
- Never distribute without Dr. Lewis HITL sign-off
```

## Output Format

```markdown
# MBL Meeting Intelligence — Week of [DATE RANGE]
**Prepared by:** Dr. John Lewis, Director of AI Strategy
**For:** Matt Mathison (Managing Partner) | CC: Jimmy Lindsley
**Distributed:** [Timestamp]

---

## BOTTOM LINE UP FRONT

1. **[Entity | Topic]:** [1-sentence fact]. [1-sentence implication or action needed.]
2. **[Entity | Topic]:** [1-sentence fact]. [1-sentence implication or action needed.]
3. **[Entity | Topic]:** [1-sentence fact]. [1-sentence implication or action needed.]

---

## THIS WEEK BY ENTITY

### MBL HoldCo
- Meetings: [n] | Decisions: [n] | New Action Items: [n] | Risk Flags: [n]
- [Key point]
- [Key point]

### Allevio *(HIPAA-Cleared — Business Operations Only)*
- Meetings: [n] | Decisions: [n] | New Action Items: [n] | Risk Flags: [n]
- [Key point]

### HIVE Partners
- Meetings: [n] | Decisions: [n] | New Action Items: [n] | Risk Flags: [n]
- [Key point]

### Column6
- Meetings: [n] | Decisions: [n] | New Action Items: [n] | Risk Flags: [n]
- [Key point]

---

## APPENDIX A — ACTION ITEMS (Full List)
[Output from meet-action-item-extractor — full table]

## APPENDIX B — DECISIONS LOGGED THIS WEEK
[Output from meet-decision-tracker — full table]

---
*Meeting Intelligence System — MBL Partners | Dr. John Lewis, jlewis@mblpartners.com*
```

## Output Contract

- **The BLUF section must stand alone as a complete briefing — Matt Mathison may read only these three items and nothing else.** Matt Mathison operates at managing partner velocity and cannot be expected to read a full document on every delivery. The BLUF is not a teaser or a table of contents — it is the complete decision-relevant information for the week, compressed to three items. If the BLUF requires reading the entity sections to be meaningful, it has failed. Each item must contain a fact and an implication or recommended action with zero assumed context.

- **The main body must be under 200 words exclusive of appendices — if it exceeds this, the skill must trim before delivery, not after.** This constraint exists because executive summaries that grow unchecked stop being summaries. The 200-word limit forces prioritization: only what genuinely requires Matt Mathison's awareness makes the cut. Information that is operationally important but not Matt-level belongs in the Monday.com board or entity-level communications, not this document. The appendices exist precisely so that full detail is available without inflating the main body.

- **No Allevio content may appear in the summary unless it has been explicitly HIPAA-cleared by Dr. Lewis.** The weekly summary is distributed via email to Matt Mathison and Jimmy Lindsley, and stored in SharePoint. These channels are not PHI-protected environments. Even a single member name, case reference, or diagnosis detail in an emailed summary would constitute a HIPAA breach. The HIPAA-cleared flag must be present on every Allevio transcript in the input set before the Allevio section is written. If any Allevio transcript remains in HIPAA HOLD, the Allevio section must either be omitted or include only content from cleared transcripts.

## System Dependencies

### Reads from
- Processed transcript registry (confirmation that all week's transcripts are COMPLETE)
- Action item extractor output (all week's action items)
- Decision tracker output (all week's decisions)
- Sentiment analyzer output (risk signals and meeting tone flags)
- Dr. Lewis HITL clearance log (confirms all flags resolved before distribution)

### Writes to
- SharePoint: `/Meeting Intelligence/Weekly Summaries/[Year]/Week-[nn]/`
- Outlook: Draft email to Matt Mathison with SharePoint link (CC Jimmy Lindsley)
- Monday.com: Action item push (via meet-krista-output-router — not directly)

### HITL Required
- Dr. Lewis must review and approve draft before any distribution
- Any week where an Allevio HIPAA flag was raised during transcript processing
- Any BLUF item that involves an irreversible decision or a significant risk flag
- First delivery of any new week format or template change

## Test Cases

1. **Golden path:** A standard week with 7 meetings across all four entities, all transcripts COMPLETE, no HIPAA flags. The builder aggregates 12 action items, 4 decisions, and 0 risk flags. The BLUF identifies HIVE's capex approval, a Column6 Q2 performance win, and an overdue Allevio IT action item as the top 3. The main body is 187 words. Dr. Lewis reviews at 3:15 PM Friday, approves, and the email goes to Matt at 3:58 PM with the SharePoint link and Monday.com boards updated.

2. **Edge case:** One Allevio transcript is still in HIPAA HOLD at 3PM Friday. The builder proceeds with all other entity content, omits the Allevio section, and includes a note: "Allevio — 1 meeting pending HIPAA clearance review; Allevio update to follow separately." Dr. Lewis reviews, approves the partial summary, and it distributes on time. A separate Allevio-only update is sent once Dr. Lewis clears the transcript.

3. **Adversarial case:** A draft summary is generated where the BLUF reads: "It was a busy week across all entities with good progress." This is filler language and fails the BLUF test — it contains no facts, no implications, and no recommended actions. The skill's output validator rejects this BLUF, flags it for Dr. Lewis, and returns a BLUF-incomplete error rather than delivering a substandard document to Matt Mathison.

## Audit Log

Every weekly summary build logs the week ending date, number of transcripts included, number excluded (HIPAA hold or incomplete), word count of the main body, Dr. Lewis review timestamp, distribution timestamp, and SharePoint storage path. The audit log also captures the distribution list (Matt Mathison + Jimmy Lindsley) and confirms Monday.com push completion. Logs are stored in the MBL AI audit trail with a 3-year retention minimum.

## Deprecation

This skill should be reviewed if MBL adopts a dedicated executive intelligence dashboard that replaces the email-and-document delivery model. If Matt Mathison begins receiving meeting intelligence through a real-time dashboard rather than a weekly email, the formatting and distribution components of this skill would require significant revision. Deprecation requires Dr. Lewis to confirm that the replacement system preserves the BLUF-first format, the 200-word discipline, and the HIPAA-cleared gate for Allevio content.
