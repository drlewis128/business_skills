---
name: meet-decision-tracker
description: "track decisions made in meetings, identify decisions from transcript, document meeting decisions, decision log mbl, decision registry entities, decision vs discussion meeting, reversible irreversible decision, who decided what meeting, decision rationale capture, decision maker identification, decision history matt mathison, entity decision log, decision audit trail, meeting decision documentation, decision tree across meetings, decision record sharepoint, log decisions meeting, decision outcome tracking, decision search history, decision pattern meeting intelligence"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[processed transcript ID or meeting date range for cross-meeting decision pull]"
---

# Meeting Decision Tracker

This skill identifies, documents, and maintains a running log of decisions made across all MBL entity meetings, creating a searchable decision history that enables Matt Mathison and Dr. Lewis to track what was decided, by whom, and why — without relying on individual memories or scattered notes. It distinguishes genuine decisions from ongoing discussions and flags reversible versus irreversible choices.

## When to Use

- A processed transcript needs decisions extracted and logged to the entity decision registry
- Matt Mathison or Dr. Lewis needs to look up what was decided in a prior meeting on a given topic
- A decision appears to contradict or supersede a prior decision — cross-meeting conflict detection
- The weekly summary needs a decision rollup across all entities for the current week

## Decision Tracker Framework

```
DECISION IDENTIFICATION
─────────────────────────────
HARD DECISION SIGNALS:
  - "We've decided to..."
  - "The decision is..."
  - "We're going with [option]"
  - "Approved." / "Agreed." following a specific proposal
  - "Moving forward with [X] — [name] will lead"

DISCUSSION-ONLY SIGNALS (do NOT log as decisions):
  - "We should think about..."
  - "One option would be..."
  - "What if we..."
  - Debate without resolution
  - "Let's revisit this next week" — log as DEFERRED, not decision

DECISION QUALITY CHECK:
  - Must have: what was decided + who decided + date
  - Should have: rationale, options considered, who was in room
  - Flag incomplete: log INCOMPLETE status, HITL for missing fields

DECISION CLASSIFICATION
─────────────────────────────
TYPE A — STRATEGIC:     Affects entity direction, budget, or personnel; Matt Mathison typically present
TYPE B — OPERATIONAL:   Affects day-to-day entity operations; entity CEO present
TYPE C — ADMINISTRATIVE: Process, vendor, or routine approval; any authorized party
DEFERRED:               Item raised but explicitly tabled — log with deferred date

REVERSIBILITY FLAG:
  REVERSIBLE:     Can be undone without major cost or disruption
  SEMI-REVERSIBLE: Can be undone with moderate cost (contract, personnel change)
  IRREVERSIBLE:   Cannot be undone without significant loss (legal binding, public announcement)
  → Irreversible decisions always require HITL confirmation before logging as final

DECISION RECORD STRUCTURE
─────────────────────────────
  Field             | Description
  ──────────────────|───────────────────────────────────
  Decision ID       | [ENTITY]-DEC-[YYYYMMDD]-[nn]
  Entity            | MBL HoldCo | Allevio | HIVE | Column6
  Meeting           | [Meeting name + Transcript ID]
  Date              | [YYYY-MM-DD]
  Decision Text     | Plain-language statement of what was decided
  Decision Type     | A (Strategic) | B (Operational) | C (Administrative) | Deferred
  Decision Maker(s) | Named individuals — Matt Mathison flagged separately
  Rationale         | Why this option was chosen (from transcript context)
  Options Considered| Alternatives discussed before decision (if stated)
  Reversibility     | Reversible | Semi-Reversible | Irreversible
  Outcome Status    | Open (no result yet) | In Progress | Completed | Reversed
  Related Decisions | IDs of prior or downstream decisions in same thread

CROSS-MEETING DECISION ANALYSIS
─────────────────────────────
- On each new decision, query registry for same-entity decisions on same topic in past 90 days
- Flag if new decision conflicts with prior decision → CONFLICT ALERT for HITL
- Identify decision threads: decisions that build on or reverse prior choices
- Track Matt Mathison decision frequency per entity — flag if entity has zero decisions in 30 days
```

## Output Format

```markdown
## Decision Log Entry — [ENTITY] | [DATE]

**Decision ID:** [ENTITY]-DEC-[YYYYMMDD]-[nn]
**Source Meeting:** [Meeting Name] | Transcript ID: [ID]
**Decision Type:** [A | B | C | Deferred]
**Reversibility:** [Reversible | Semi-Reversible | Irreversible]

---

**DECISION:** [Plain-language statement]

**Decision Maker(s):** [Names]
**Matt Mathison Present:** [Yes | No]
**Rationale:** [From transcript context]
**Options Considered:** [List or "Not stated"]

**Related Prior Decisions:** [IDs or "None"]
**Conflict Flag:** [NONE | CONFLICT with [Decision ID] — HITL Required]
**Outcome Status:** Open

---

### Weekly Decision Rollup (Multi-Meeting View)

| Decision ID | Entity | Date | Summary | Type | Maker | Reversibility |
|-------------|--------|------|---------|------|-------|---------------|
| [ID] | [Entity] | [Date] | [50-char summary] | [A/B/C] | [Name] | [Rev/Semi/Irrev] |
```

## Output Contract

- **Every logged decision must have a named decision maker — Matt Mathison must be explicitly flagged when he is the deciding party.** The decision log is used for accountability and governance. When Matt Mathison makes a strategic call, that decision needs to be traceable to him so that downstream execution teams understand the authority level behind it and can escalate appropriately if execution conflicts arise. Decisions attributed to "the group" without a named lead cannot be used for effective governance and dilute accountability across the organization.

- **Conflict detection against prior decisions must run on every new decision before it is logged as final.** MBL is a multi-entity PE firm where decisions made in one entity meeting can directly affect another entity or reverse a prior HoldCo-level direction. Logging a conflicting decision without flagging it allows organizational whiplash — teams executing in opposite directions without knowing it. The conflict flag preserves Matt Mathison's ability to make informed choices about which decision supersedes the other.

- **Irreversible decisions must be confirmed via HITL before being logged and must be preserved in the registry permanently — they may never be deleted, only marked Reversed with an explanation.** Once an irreversible decision is made (a contract is signed, a public commitment is made, personnel is terminated), the organizational record of how that decision was reached has legal, financial, and governance value. Deleting or overwriting the record eliminates the audit trail that protects MBL in due diligence, litigation, or LP inquiries.

## System Dependencies

### Reads from
- Processed transcript output from meet-transcript-processor
- MBL decision registry (SharePoint — for conflict detection and decision threading)
- MBL staff directory (decision maker name resolution)
- Microsoft Outlook calendar (cross-reference meeting date and attendees)

### Writes to
- MBL decision registry: `/Meeting Intelligence/Decision Log/[Entity]/`
- Weekly summary input queue (decision rollup section)
- Conflict alert queue (for HITL escalation to Dr. Lewis)

### HITL Required
- Any irreversible decision before it is logged as final
- Any conflict detected between new and prior decisions
- Incomplete decision records (missing decision maker or decision text)
- Any decision where Matt Mathison's presence or approval is ambiguous

## Test Cases

1. **Golden path:** A HIVE Partners board call transcript contains three clear decisions: (1) approve Q3 capex budget (Type A, Matt Mathison present, Irreversible — requires HITL), (2) switch to a new water disposal vendor (Type B, HIVE ops lead, Semi-Reversible), (3) move the monthly LP update to the third Thursday (Type C, Reversible). The tracker logs all three, runs conflict checks (no prior conflicts), flags item 1 for HITL before finalizing, and queues all three for the weekly decision rollup.

2. **Edge case:** A Column6 media planning meeting contains extensive debate about shifting spend from CTV to programmatic, ending with "let's revisit this after Q2 numbers are in." The tracker classifies this as DEFERRED — not a decision — and logs it with the deferred date and a note that Q2 performance data is the stated trigger for reopening. The deferred item appears in the weekly summary under "Decisions Deferred" rather than the decision log.

3. **Adversarial case:** An Allevio operations call produces a decision to "move forward with the Martinez enrollment approach going forward." A prior Allevio decision from six weeks earlier (DEC-20260510-03) specified a different enrollment methodology. The conflict detector fires, flags the new decision as CONFLICT with DEC-20260510-03, and halts logging until Dr. Lewis reviews whether the new decision intentionally supersedes the prior one or was made without awareness of the prior direction.

## Audit Log

Every decision logged by this skill records the Decision ID, entity, source transcript ID, decision type, reversibility classification, conflict check outcome, and HITL flag status in the MBL AI audit trail. Decision records themselves are immutable once confirmed — amendments are appended as versioned notes rather than overwrites. Audit log entries for irreversible decisions carry an elevated retention classification and are accessible only to Dr. Lewis and authorized governance reviewers.

## Deprecation

This skill should be reviewed if MBL adopts a dedicated governance or GRC platform that includes native decision logging and conflict detection. In that scenario, this skill's registry write functions would be replaced by API calls to the governance platform while extraction logic may still be valuable. Deprecation requires Dr. Lewis to verify that the replacement platform preserves the full decision record structure — including reversibility classification and conflict history — before this skill is retired.
