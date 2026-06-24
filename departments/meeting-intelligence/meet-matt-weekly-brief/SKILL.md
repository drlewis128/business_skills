---
name: meet-matt-weekly-brief
description: "Matt Mathison weekly meeting brief, format weekly briefing for Matt Mathison, BLUF first weekly summary for Matt, under 200 words Matt Mathison briefing, entity by entity weekly summary Matt, bullet format meeting brief Matt, top 3 items for Matt attention, Monday 9am delivery Matt Mathison, direct no hedging briefing Matt, what to include in Matt briefing, what to exclude from Matt briefing, synthesized themes only Matt briefing, Matt action items called out explicitly, Jimmy Lindsley CC format, Matt Mathison satisfaction feedback loop, weekly meeting intelligence for managing partner"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date, e.g. 2026-06-28]"
---

# Matt Mathison Weekly Brief

This skill formats the weekly meeting intelligence brief specifically for Matt Mathison, applying his exact format preferences: BLUF first, under 200 words, entity-by-entity in bullets, top 3 attention items flagged explicitly, delivered Monday by 9am MST with no hedging and no meeting-by-meeting blow-by-blow. Jimmy Lindsley receives the same document as CC — no modifications.

## When to Use

- The weekly meeting intelligence cycle is complete and all entity briefs have passed quality review
- Dr. Lewis has approved the underlying entity briefs and the Matt brief is the final formatting step
- A revised Matt brief is needed after a quality review returned the initial draft
- The weekly brief missed the Monday 9am deadline and a late delivery needs to be prepared with a note to Matt

## Matt Brief Framework

```
MATT MATHISON WEEKLY MEETING BRIEF
====================================
Week ending: [DATE]
Delivery target: Monday [DATE+3] by 9:00am MST
Formatted by: Dr. John Lewis
Distribution: Matt Mathison (primary) | Jimmy Lindsley (CC)

FORMATTING RULES (apply before drafting)
  [ ] BLUF is the first sentence — 1-2 sentences max
  [ ] Total word count for Matt's section: ≤200 words
  [ ] Format: bullets only (no paragraphs, no narrative prose)
  [ ] Tone: direct; no hedging language; no "it seems" / "perhaps" / "we believe"
  [ ] No meeting-by-meeting breakdown — synthesize across all meetings into themes
  [ ] Matt's action items are in a dedicated "Your Action Required" section — not buried
  [ ] Entity sections are 2-4 bullets each — never more
  [ ] Decisions are stated as facts: "X was decided" not "the team discussed X"
  [ ] Commitments are attributed: "Dr. Lewis will Y by [date]" not "it was agreed Y would happen"

SECTION 1: BLUF
  [1-2 sentences. State the most important thing from the week across all entities.
   If there is nothing that requires Matt's attention, state that explicitly — "Clean week."
   If there is something urgent, lead with it — do not bury it under entity sections.]

  Example: "HIVE had a WTI pricing discussion that warrants your attention; all other 
  entities are on track. Three action items require your sign-off this week."

SECTION 2: ENTITY SUMMARIES
  MBL
  - [Key decision or theme — 1 bullet]
  - [Key action item or commitment — 1 bullet]
  - [Third bullet only if genuinely significant]

  Allevio
  - [Key theme from Allevio meetings — compliance, clinical, billing — 1-2 bullets]
  - [Action item if applicable]

  HIVE
  - [Key theme from HIVE meetings — production, LP, WTI if triggered — 1-2 bullets]
  - [Action item if applicable]

  Column6
  - [Key theme from Column6 meetings — campaign, gross margin, IO — 1-2 bullets]
  - [Action item if applicable]

  CROSS-ENTITY (only if a topic spans multiple entities)
  - [Cross-portfolio signal — 1 bullet max]

SECTION 3: YOUR ACTION REQUIRED
  [Items Matt must decide, approve, or follow up on this week. Empty section = none.]
  1. [Specific action + context + recommended deadline]
  2. [Specific action + context + recommended deadline]
  3. [Maximum 3 items — if more than 3, Dr. Lewis triages and presents only top 3]

SECTION 4: OPEN ITEMS FROM LAST WEEK (STATUS UPDATE)
  [Items Matt was waiting on or had assigned — brief status only]
  - "[Prior item]: [DONE / IN PROGRESS — expected completion / BLOCKED — reason]"

WORD COUNT CHECK
  Matt's brief word count: [N] words
  Status: WITHIN LIMIT (≤200) / OVER LIMIT — compress [identify which bullets to cut]

JIMMY LINDSLEY CC
  Content: IDENTICAL to Matt's brief — no modifications
  Distribution: CC on the same email as Matt's delivery
  No separate Jimmy section; no operational additions; same document, same timing
```

## Output Format

```markdown
**MBL Meeting Intelligence — Week of [DATE]**

**BLUF:** [1-2 sentences — the one thing Matt needs to know]

**MBL**
- [bullet]
- [bullet]

**Allevio**
- [bullet]
- [bullet]

**HIVE**
- [bullet]
- [bullet]

**Column6**
- [bullet]
- [bullet]

**Your Action Required:**
1. [action + context + deadline]
2. [action if any]

**Open Items Update:**
- [prior item]: [status]

---
*Full briefs available in SharePoint. Reply or call 602-880-6491 for any questions.*
*Jimmy Lindsley — CC'd on this summary.*
```

## Output Contract

- **Under 200 words is a hard constraint enforced before delivery, not a target.** If the draft exceeds 200 words, it does not go to Matt — it goes back to Dr. Lewis for compression. The compression instructions identify specific bullets that are either redundant, available in the SharePoint detail document on request, or lower priority than what is already included. Matt Mathison runs MBL Partners across multiple portfolio companies; 200 words is the ceiling because he should be able to read and act on this brief in under 60 seconds. A brief that requires more than 60 seconds to scan has failed.

- **"Your Action Required" is the most important section and must never be empty when action is genuinely needed.** The purpose of the weekly brief is not to inform Matt about what happened — it is to surface what requires his attention and decision. If there are action items for Matt buried in the entity summaries but not in the "Your Action Required" section, the brief has hidden the work Matt needs to do. Every item Matt is expected to act on this week lives in that section, explicitly stated, with a recommended deadline. Empty "Your Action Required" only when there is genuinely nothing for Matt to do.

- **Jimmy Lindsley receives exactly the same document Matt receives — no parallel brief, no operational additions.** The CC-based approach is intentional: Jimmy sees the same summary Matt sees, which means Jimmy is always aligned with what Matt knows. If Jimmy needs additional operational context that is not in Matt's brief, that context travels through a separate operational communication — not by modifying the weekly brief. The weekly brief has one format, one audience, and one word count discipline. Customizing it for Jimmy introduces a second version that must be quality-checked, which adds overhead without proportionate value.

## System Dependencies

### Reads from
- Approved entity briefs (Allevio, HIVE, Column6 ops briefs — post quality review and Dr. Lewis approval)
- MBL weekly meeting synthesis (post quality review)
- Open action item dashboard (Matt's items and this week's status updates)
- Prior week's Matt brief (for "Open Items Update" section)

### Writes to
- Matt Mathison email (delivered Monday by 9am MST)
- Jimmy Lindsley email (CC, same delivery)
- SharePoint: /Meeting Intelligence/MBL/[Year]/[Month]/[Date]-matt-weekly-brief.md
- Delivery confirmation log

### HITL Required
- Dr. Lewis: reviews and approves Matt brief before delivery; confirms word count compliance; approves "Your Action Required" items are complete and correctly stated
- Matt Mathison: recipient; no review or approval required — he receives the final approved brief
- Jimmy Lindsley: CC recipient; no role in the brief preparation

## Test Cases

1. **Golden path:** Clean week — all entities on track, 1 item for Matt's action (a HIVE LP communication timing decision), brief drafted at 183 words, BLUF is clean, all entity sections are 2 bullets, delivered Monday at 8:47am MST.
2. **Edge case:** A week with 5 items that could go in "Your Action Required." Dr. Lewis must triage and select the top 3 — the brief cannot exceed 3 action items regardless of how many could theoretically be included. The other 2 items are either delegated (handled by Dr. Lewis without Matt's involvement this week) or deferred to next week's brief with a note in the "Open Items" section.
3. **Adversarial:** The quality reviewer passes a draft that is 206 words — just 6 over the limit. The Matt brief skill must still return the draft as "OVER LIMIT — compress" with specific instructions identifying 6+ words to remove. There is no "close enough" on the word count. The 200-word limit is what Matt agreed to; exceeding it, even by 6 words, is a format non-compliance that erodes the discipline the brief depends on.

## Audit Log

Every Matt weekly brief is archived in SharePoint with the delivery timestamp, word count at delivery, Dr. Lewis approval timestamp, and confirmation of Jimmy Lindsley CC delivery. If a brief is delivered late (after 9am MST Monday), the reason is documented in the archive and in the pipeline health log. Late deliveries are tracked as SLA misses in the KPI dashboard. Archive is retained for 3 years.

## Deprecation

This skill is deprecated when the meeting intelligence pipeline generates the Matt Mathison weekly brief automatically with the same format discipline (BLUF first, ≤200 words, entity-by-entity bullets, "Your Action Required" explicitly populated) and delivers it within SLA without requiring Dr. Lewis formatting intervention — and Matt Mathison confirms his satisfaction with the automated brief over at least one full quarter. Dr. Lewis retains the right to review any brief before delivery even after automation; the skill is deprecated when the formatting step itself is no longer needed.
