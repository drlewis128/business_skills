---
name: meet-agenda-builder
description: "build meeting agenda, create agenda mbl meeting, structured meeting agenda, bluf agenda format, agenda decision discussion fyi, meeting agenda time allocation, agenda from action items, agenda from monday.com, matt mathison agenda standards, meeting agenda template, mbl leadership meeting agenda, pre-work agenda requirements, participant preparation agenda, decision first agenda, 60 minute agenda meeting, agenda item owner outcome, recurring meeting agenda, meeting agenda no outcome, agenda design efficiency, agenda item sourcing"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[meeting name, attendees, and list of topics or open action items to agenda-ize]"
---

# Meeting Agenda Builder

This skill builds structured, decision-first meeting agendas for MBL leadership meetings that respect Matt Mathison's time standards, ensure every agenda item has an owner and defined outcome, and source open action items from Monday.com to prevent decisions from falling through the cracks. A well-structured agenda is the most effective meeting efficiency tool available — this skill builds them to a standard.

## When to Use

- A recurring MBL or entity meeting is coming up and needs an agenda built from open action items and pending decisions
- Matt Mathison requests an agenda for an ad hoc leadership meeting
- An existing meeting agenda is unstructured or lacks decision clarity and needs to be reformatted
- Dr. Lewis is designing a new recurring meeting cadence and needs the agenda template established

## Agenda Builder Framework

```
MBL MEETING STANDARDS (Non-Negotiable)
─────────────────────────────
- Default duration: 25 minutes (small group) or 50 minutes (leadership review)
- No meeting exceeds 60 minutes without Matt Mathison explicit approval
- Every agenda item must have: owner, type, and defined outcome
- Items without an outcome cannot be on the agenda — move to async or drop
- Decision items always precede discussion items; discussion items precede updates/FYIs
- Pre-work requirements must be listed if any attendee must prepare something in advance

AGENDA ITEM TYPES
─────────────────────────────
DECISION:    A specific choice must be made in this meeting — owner proposes, group decides
DISCUSSION:  No decision required; goal is alignment, exploration, or input gathering
REVIEW:      Owner presents status; group raises concerns; no discussion unless critical
APPROVAL:    Formal sign-off on a document, budget, or action — typically <5 minutes
FYI:         Informational only — should be async unless time-critical
WORKING:     Collaborative work session — owner leads, group co-creates

ITEM SUITABILITY CHECK
─────────────────────────────
Before adding any item:
  ✓ Does this item require the people in the room? (If not → async)
  ✓ Is the outcome clearly defined? (If not → do not add until outcome is stated)
  ✓ Can this be resolved via email? (If yes → async, flag to initiator)
  ✓ Is this item duplicated on a prior agenda that already resolved it? (If yes → remove)

SOURCING ITEMS FROM MONDAY.COM
─────────────────────────────
- Query open action items on entity Monday.com board: filter by status = "Needs Discussion"
  or "Blocked" or overdue items requiring decision
- Pull deferred decisions from decision registry (items explicitly tabled for next meeting)
- Surfaced items: present to Dr. Lewis for HITL confirmation before adding to agenda
- Do not auto-add all open items — only items that require group decision or discussion

AGENDA STRUCTURE
─────────────────────────────
SECTION 1 — OPENING (2 min)
  - Purpose statement (why this meeting exists, what success looks like)

SECTION 2 — DECISIONS (priority — time-boxed)
  - [Owner] | DECISION | [Outcome: what will be decided] | [n min]

SECTION 3 — REVIEWS / UPDATES (if any)
  - [Owner] | REVIEW | [Topic] | [n min] — raise critical concerns only

SECTION 4 — DISCUSSION (if any)
  - [Owner] | DISCUSSION | [Topic] | [n min]

SECTION 5 — FYIs (optional — can be sent async)
  - [text] — Owner: [name] — Can be emailed instead if time constrained

SECTION 6 — ACTION ITEMS / CLOSE (3 min)
  - Confirm all decisions made
  - Confirm all action items captured
  - Confirm next meeting date and focus

TIME ALLOCATION RULES
─────────────────────────────
- Decisions: minimum 5 min each; maximum 15 min (escalate to deeper session if unresolved)
- Reviews: maximum 5 min each (no surprises — pre-work required)
- Discussions: maximum 10 min each
- Opening + Close: fixed at 2 + 3 = 5 minutes (non-negotiable)
- Buffer: never schedule agenda items to fill 100% of time — leave 10% buffer
```

## Output Format

```markdown
# [Meeting Name] — Agenda
**Date/Time:** [Day, Date | Time | Platform]
**Duration:** [25 | 50] minutes
**Facilitator:** [Name]
**Prepared by:** Dr. John Lewis

---

## PRE-WORK REQUIRED
- [Attendee name]: [What they must prepare before the meeting]
- *(If none: "No pre-work required — come ready to decide")*

---

## AGENDA

| # | Type | Item | Owner | Outcome | Time |
|---|------|------|-------|---------|------|
| 1 | OPENING | Purpose & success criteria | Facilitator | Shared context | 2 min |
| 2 | DECISION | [Topic] | [Name] | [Specific outcome] | [n] min |
| 3 | REVIEW | [Topic] | [Name] | [Concerns flagged] | [n] min |
| 4 | DISCUSSION | [Topic] | [Name] | [Alignment on X] | [n] min |
| 5 | CLOSE | Action items + next meeting | Facilitator | All items captured | 3 min |

**Total: [n] minutes | Buffer: [n] minutes**

---

## ITEMS DEFERRED TO ASYNC
- [Item] — Owner: [name] — Action: [email/Monday.com/Slack]

## ITEMS DROPPED (No Clear Outcome)
- [Item] — Reason: [why removed]

---
*MBL Partners Meeting Standards: Decisions first. No item without an outcome. Default 25/50 min.*
```

## Output Contract

- **Every agenda item must have an owner, a type, and a defined outcome before it is included — items that cannot answer "what will be decided or accomplished?" must be deferred to async or removed.** Agendas without defined outcomes are wish lists, not operational tools. When Matt Mathison opens a meeting with an agenda item labeled "discuss Q3 budget," no one in the room knows whether they are making a decision, reviewing a proposal, or exploring options — and the meeting will drift. The outcome field forces the agenda author to commit to what the meeting is actually for.

- **Decision items must always appear before discussion or update items in the agenda sequence.** Executive time in a meeting is most valuable and most focused at the beginning. Discussions about strategy or updates about ongoing work are valuable, but they can expand to fill any available time. By placing decisions first, the agenda guarantees that the highest-stakes items get resolved even if the meeting runs long. Placing decisions at the end — after 40 minutes of updates — produces low-quality decisions made by a group whose attention has been depleted.

- **Items that can be resolved via email or async communication must not be placed on a meeting agenda.** Meeting cost is real: every hour with four people in a room costs the organization four person-hours plus the cognitive overhead of context-switching. Items that are informational, do not require discussion, or can be decided by one person without group input belong in an email or a Monday.com update. The agenda builder's suitability check is not a courtesy — it is a cost-control mechanism applied to the most expensive collaborative resource in the organization.

## System Dependencies

### Reads from
- Monday.com: open action items with status "Needs Discussion," "Blocked," or overdue
- Decision registry: deferred decisions scheduled for this meeting
- Microsoft Outlook: meeting invite (to confirm attendees, time, duration)
- Prior meeting agendas (for recurring meetings — check what was covered last time)

### Writes to
- Outlook: Agenda attached to calendar event (or sent as meeting update)
- Monday.com: Agenda item tags updated (items moved to "On Agenda" status)
- SharePoint: `/Meeting Intelligence/Agendas/[Entity]/[Year]/[Month]/`

### HITL Required
- Any agenda that includes a decision item with budget or personnel implications
- Recurring meeting agendas — Dr. Lewis confirms sourced items before distribution
- Any meeting where Matt Mathison is the primary decision maker
- Any Allevio meeting agenda (HIPAA-adjacent content check on item descriptions)

## Test Cases

1. **Golden path:** A HIVE Partners monthly ops review is scheduled in 3 days. Monday.com shows two blocked action items and one overdue commitment. The decision registry shows one deferred decision (vendor selection). The builder creates a 50-minute agenda: 2 min opening, 10 min vendor decision (DECISION), 5 min overdue commitment review (REVIEW), 8 min blocked items (DECISION), 5 min general ops update (REVIEW), 17 min Q3 planning discussion (DISCUSSION), 3 min close. Buffer: 5 min. Pre-work: HIVE CFO to prepare vendor comparison by Tuesday. Dr. Lewis reviews and attaches to Outlook calendar.

2. **Edge case:** An internal MBL HoldCo meeting is requested with seven agenda items submitted by different team members. Three of the items are informational updates that could be emailed. The builder removes those three, adds them to the "Deferred to Async" section, and emails the owners noting their items will be handled via email update. The remaining four items fit cleanly into a 25-minute agenda. The reduced agenda is more focused and the meeting runs to time.

3. **Adversarial case:** A submitted agenda item reads: "Talk about the Allevio situation." The builder cannot determine the type (decision? discussion? review?), the owner, or the outcome. It flags the item as INCOMPLETE and returns it to Dr. Lewis with a HITL prompt: "Please clarify: what is the Allevio situation? Who owns this item? What decision or outcome is expected?" The item is not placed on the agenda until those fields are populated.

## Audit Log

Every agenda build logs the meeting name, calendar event ID, number of items sourced from Monday.com, number of items removed as async-appropriate, total agenda duration, Dr. Lewis review timestamp, and Outlook distribution timestamp. Items dropped for lack of outcome are logged separately with the reason, preserving an audit trail of what was intentionally excluded and why. Logs are retained for 2 years in the MBL AI audit trail.

## Deprecation

This skill should be reviewed if MBL adopts a meeting management platform (such as Fellow.app or a Notion-based system) that includes native agenda building with Monday.com integration. In that scenario, the sourcing and formatting functions may be replaced by platform-native tools, though the MBL meeting standards (decisions first, defined outcomes, 25/50-minute defaults) should be codified in any replacement platform before this skill is retired.
