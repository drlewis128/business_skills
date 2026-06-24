---
name: meet-agenda-analyzer
description: "analyze meeting agenda, agenda item classification, decision items agenda, risk items agenda, agenda gap identification, what decisions are being made meeting, agenda analysis prep sheet, pre-meeting agenda review, agenda coaching matt mathison, critical agenda items, agenda risk identification, missing agenda items, agenda decision analysis, what matt needs to know agenda, approval agenda items, discussion agenda items, agenda preparation brief, agenda intelligence meeting, agenda depth analysis, agenda for prep sheet"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[meeting agenda text or calendar invite with agenda attached]"
---

# Meeting Agenda Analyzer

This skill reads an incoming meeting agenda and produces a structured analysis of what decisions are on the table, what risks exist, what gaps are present, and what Matt Mathison specifically needs to know before walking into the room. Its output feeds directly into meet-prep-sheet-builder as the agenda intelligence layer.

## When to Use

- A meeting agenda has been received and needs to be analyzed before a prep sheet is built
- Matt Mathison is attending a meeting where the agenda contains complex or high-stakes items
- An agenda appears incomplete or unstructured and needs to be decoded for its implied decision requirements
- Dr. Lewis needs a risk assessment of an upcoming meeting's agenda before briefing Matt

## Agenda Analyzer Framework

```
ITEM CLASSIFICATION
─────────────────────────────
Classify each agenda item into one of:
  DECISION:    A specific choice must be made — options exist, someone decides
  DISCUSSION:  Input gathering, exploration, alignment — no formal decision
  REVIEW:      Status update or reporting — no action required unless issues found
  APPROVAL:    Formal sign-off — document, budget, contract, or personnel action
  FYI:         Informational only — no discussion expected or required
  AMBIGUOUS:   Item is unclear — cannot classify without more context → flag for HITL

For AMBIGUOUS items: generate the most likely classification based on meeting context
and flag it as INFERRED.

DECISION ANALYSIS
─────────────────────────────
For each DECISION or APPROVAL item:

  What is being decided?
    - State the specific choice in plain language
    - Identify the options being considered (if visible from agenda or prior context)
    - Who is the likely decision maker? (Matt Mathison? Entity CEO? Group?)

  What does Matt need to know to decide?
    - Prior decisions on this topic (from decision registry)
    - Key facts required to evaluate options
    - Who is likely to advocate for which position?

  What is the default outcome if no decision is made?
    - Status quo maintained? Action taken by default? Deadline missed?
    - Irreversible if deferred? → flag immediately

RISK ITEM IDENTIFICATION
─────────────────────────────
Flag as risk if agenda item involves any of:
  - Budget allocation or approval (financial impact)
  - Personnel changes (hiring, firing, restructuring)
  - Contract execution or termination (legal commitment)
  - LP or investor relations (reputational and capital risk)
  - Entity operational issues flagged in prior meetings
  - Items where prior sentiment analysis showed resistance or tension

RISK SEVERITY:
  🔴 HIGH:    Irreversible action; budget >$50K; LP relationship; active conflict
  🟡 MEDIUM:  Reversible decision with notable cost; personnel discussion; vendor change
  🟢 LOW:     Routine approval; minor budget; administrative decision

AGENDA GAP IDENTIFICATION
─────────────────────────────
Flag missing items if:
  - Open action items from prior meetings involve this group and are not addressed
  - A deferred decision was scheduled for this meeting and is not on the agenda
  - A known risk or issue at the entity level is not reflected in the agenda
  - Pre-work requirements are absent for decision items (who prepared the proposal?)
  - The meeting has no defined outcome or closing action

MATT MATHISON COACHING (TOP 1–2 ITEMS)
─────────────────────────────
Based on the analysis, identify the 1–2 most critical items for Matt's preparation:
  - What is the single most important decision he may need to make?
  - Is there a "trap" in the agenda — an item that sounds minor but is consequential?
  - What position should he be prepared to hold based on prior decisions?
  - Is there an item where he should ask more questions rather than decide in the meeting?

ALLEVIO AGENDA CHECKS
─────────────────────────────
For any Allevio meeting agenda:
  ✓ Scan item descriptions for clinical language (patient, member-level, clinical protocol)
  ✓ Flag any item that might lead to PHI disclosure in discussion
  ✓ Note that clinical agenda items require Dr. Lewis awareness before Matt attends
```

## Output Format

```markdown
## Agenda Analysis — [Meeting Name] | [DATE]

**Agenda Items:** [n total] | **Decisions:** [n] | **Risk Items:** [n] | **Gaps:** [n]
**Overall Agenda Risk Level:** [🔴 HIGH | 🟡 MEDIUM | 🟢 LOW]

---

### ITEM CLASSIFICATION

| # | Agenda Item | Type | Decision Maker | Risk Level |
|---|-------------|------|---------------|------------|
| 1 | [item text] | [type] | [name] | [🔴/🟡/🟢/–] |

---

### DECISION ANALYSIS

**Item [n]: [Decision item text]**
- What's being decided: [plain-language statement]
- Options on the table: [options or "Not stated in agenda"]
- What Matt needs to know: [key context — 1–3 bullets]
- Default if no decision: [status quo / consequence]
- Irreversible: [Yes — flag | No]

---

### RISK ITEMS

| Item | Risk Type | Severity | What Could Go Wrong |
|------|-----------|----------|---------------------|
| [text] | [Budget/Personnel/LP/etc.] | [🔴/🟡/🟢] | [1-sentence risk description] |

---

### AGENDA GAPS

- **[Gap description]:** [What is missing and why it matters]
- **[Gap description]:** [What is missing and why it matters]

---

### MATT MATHISON COACHING

**Most Critical Item:** [Item name]
[2–3 sentences on what Matt needs to know, what position to hold, or what to ask]

**Watch Out For:** [1–2 sentence "trap" or nuance not obvious from agenda text]

---

**Allevio Flag:** [CLEAR | CLINICAL LANGUAGE DETECTED — HITL Required]
```

## Output Contract

- **Every DECISION and APPROVAL item must have an explicit analysis of what the default outcome is if no decision is made — because "no decision" is always a decision.** In practice, many agenda items are framed as optional discussions when they are actually binding choices with a default path if the group fails to act. Matt Mathison needs to know when a meeting's inaction carries the same consequence as a deliberate choice — a contract auto-renews, a budget is unallocated, a deadline passes. Surfacing the no-decision consequence transforms passive meeting attendance into active decision management.

- **Risk items must be classified with severity before the prep sheet is built — not identified as generic risks without prioritization.** Matt Mathison attends meetings with multiple risk items regularly. A list of risks without severity levels forces him to re-do the prioritization himself, defeating the purpose of the analysis. The 🔴/🟡/🟢 severity framework gives him a scanning mechanism so he can allocate his cognitive attention appropriately before and during the meeting.

- **Agenda gaps must be flagged and surfaced to Dr. Lewis before the prep sheet is delivered — not left for Matt to discover mid-meeting.** A deferred decision that was supposed to be on this agenda but isn't represents a planning failure that could cause the meeting to go off-track or produce incomplete outcomes. A missing pre-work requirement means a decision item arrives underprepared. Dr. Lewis has the relationship context to determine whether a gap is intentional (item dropped legitimately) or accidental (item forgotten), and should address it before Matt walks in.

## System Dependencies

### Reads from
- Meeting agenda (from Outlook calendar invite or provided text)
- Decision registry (deferred decisions scheduled for this meeting)
- Open action item registry (prior open items for this attendee group)
- Meet-pre-meeting-researcher output (entity context and risk baseline)
- Prior meeting agendas for this group (recurring meeting pattern comparison)

### Writes to
- Meet-prep-sheet-builder input queue (agenda analysis section)
- HITL alert queue (ambiguous items, gaps, Allevio clinical flags)
- Dr. Lewis notification (HIGH risk items require immediate awareness)

### HITL Required
- Any agenda item classified as AMBIGUOUS that cannot be confidently resolved
- HIGH-severity risk items — Dr. Lewis confirms risk assessment before it goes to Matt
- Allevio meeting agendas with clinical language detected
- First analysis for any new meeting type or new external counterparty

## Test Cases

1. **Golden path:** A HIVE Partners quarterly LP review agenda has six items: LP performance update (REVIEW), Q3 capex approval (APPROVAL — HIGH risk, $2.1M), water disposal vendor renewal (DECISION — MEDIUM), personnel update (REVIEW), Q4 outlook (DISCUSSION), and next meeting (FYI). The analyzer classifies all six, flags the capex approval as HIGH risk (irreversible commitment), identifies one gap (deferred Q2 production variance discussion not on agenda), and coaches Matt: "Capex approval is the headline item — come with the CFO's numbers memorized. The variance discussion from Q2 may come up informally even though it's not on the agenda."

2. **Edge case:** The agenda contains only: "1. Updates 2. Strategy 3. Next steps." All three items are AMBIGUOUS. The analyzer infers the most likely classification based on prior meeting patterns (REVIEW, DISCUSSION, Action Item Rollup), flags all three as INFERRED, and returns a HITL prompt to Dr. Lewis: "Agenda is unstructured — classifications below are inferred from prior meeting pattern. Please confirm or correct before prep sheet is built."

3. **Adversarial case:** An Allevio leadership agenda includes the item: "Review utilization management outcomes for high-cost members." The analyzer detects clinical language ("utilization management," "high-cost members") and triggers a CLINICAL LANGUAGE DETECTED flag. It halts further prep sheet population for this item, alerts Dr. Lewis, and recommends that the item either be confirmed as business-metrics-only (aggregate data, no individuals) or be removed from Matt's prep context if it involves individual member cases.

## Audit Log

Every agenda analysis run logs the meeting name, calendar event ID, number of items classified, number flagged as AMBIGUOUS, risk levels assigned, gaps identified, Allevio clinical flag status, and Dr. Lewis review timestamp. HIGH-risk item flags are logged with severity justification. Logs are retained in the MBL AI audit trail for 2 years.

## Deprecation

This skill should be reviewed if the agenda builder skill is enhanced to include classification and risk assessment at build time, making a separate analysis step redundant. It should also be reviewed if the prep sheet builder gains the ability to ingest unstructured agenda text directly. Deprecation requires Dr. Lewis to confirm that the replacement workflow preserves the gap detection, risk classification, and Matt Mathison coaching functions before this skill is retired.
