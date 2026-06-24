---
name: meet-prep-sheet-builder
description: "build pre-meeting prep sheet, matt mathison meeting prep, one page meeting brief, pre-meeting briefing document, meeting preparation sheet, attendee briefing meeting, agenda analysis prep, meeting context document, prep sheet matt mathison 24 hours, recommended questions meeting, executive meeting prep, meeting intelligence prep, decision prep meeting, pre-meeting one pager, meeting background document, prep for upcoming meeting, matt meeting prep delivery, pre-meeting brief bluf, prepare matt mathison for meeting, meeting prep 24 hour delivery"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[meeting name or calendar event ID for the upcoming meeting]"
---

# Pre-Meeting Prep Sheet Builder

This skill produces exactly one page of structured meeting intelligence delivered to Matt Mathison 24 hours before any scheduled meeting, giving him full context on who will be in the room, what decisions are on the table, what the history is with this group, and what questions he should be asking. It is the primary output of Meeting Intelligence Phase 3 and represents the highest-value deliverable in the pre-meeting workflow.

## When to Use

- A meeting appears on Matt Mathison's calendar within the next 48 hours and a prep sheet has not yet been built
- Matt Mathison requests background on an upcoming external or internal meeting
- Dr. Lewis wants to ensure Matt is prepared for a high-stakes negotiation, board interaction, or entity review
- A scheduled meeting has changed attendees or agenda and the prep sheet needs to be rebuilt

## Prep Sheet Builder Framework

```
INPUT REQUIREMENTS
─────────────────────────────
Required:
  - Meeting name and date/time
  - Attendee list (from Outlook calendar invite)
  - Agenda (from invite or stated separately)
Optional (enriches output):
  - Prior meeting history with this group (from transcript registry)
  - Open action items involving attendees (from action item registry)
  - Entity KPI context (from entity status baseline)

SECTION 1 — BLUF (Top of Page — Always First)
─────────────────────────────
- 2–3 sentences maximum
- State: what this meeting is for + the most important thing Matt needs to know
- Flag any landmines: unresolved conflicts, open commitments, difficult attendees
- Example: "This is the Q2 HIVE LP review. The LP group last raised concerns about
  water disposal costs in March — that topic is likely to resurface. Capex approval
  is the key decision Matt needs to make."

SECTION 2 — MEETING CONTEXT
─────────────────────────────
- Meeting name, date, time, location/platform
- Meeting type: Decision | Review | Negotiation | 1:1 | Board | External
- Recurring or one-time? If recurring: how long has this meeting been running?
- Primary purpose: What is this meeting supposed to accomplish?

SECTION 3 — ATTENDEE PROFILES (1–2 sentences per person)
─────────────────────────────
For each attendee (excluding Matt Mathison):
  - Name + Role + Entity/Organization
  - Key context: history with MBL, known priorities, communication style, open items
  - For external contacts: GHL CRM link + relationship status
  - ⚠️  Allevio clinical staff: professional role and MBL interaction history ONLY —
       no clinical information, no patient context, no clinical credentials detail
       beyond what is needed for meeting context

SECTION 4 — AGENDA ANALYSIS
─────────────────────────────
For each agenda item:
  - Item: [text]
  - Type: Decision | Discussion | Update | Approval | FYI
  - What Matt needs to know: [1 sentence of background]
  - Decision items: what options exist? What is Matt likely to be asked to approve?

SECTION 5 — RECOMMENDED QUESTIONS / POSITIONS
─────────────────────────────
- 2–4 recommended questions Matt should ask (based on agenda gaps or open items)
- 1–2 positions or stances Matt should be prepared to hold (based on prior decisions)
- Flag any commitment Matt made in a prior meeting with this group that may come up

SECTION 6 — OPEN ITEMS FROM PRIOR MEETINGS
─────────────────────────────
- List any action items or commitments from prior meetings with these attendees
  that are still open — Matt may be asked to report on these
- Flag any re-commits (same item raised multiple times) as a pattern signal

FORMAT ENFORCEMENT
─────────────────────────────
- Exactly 1 page when rendered (approximately 400–500 words)
- BLUF always at top — never buried
- No prose paragraphs longer than 2 sentences
- Bullet points preferred over narrative
- Deliver via Outlook calendar event attachment + direct email to Matt Mathison
- Delivery timing: 24 hours before meeting (±2 hours)
```

## Output Format

```markdown
# Meeting Prep — [Meeting Name]
**Date/Time:** [Day, Date | Time | Platform/Location]
**Prepared by:** Dr. John Lewis | Delivered: [Timestamp]

---

## BOTTOM LINE UP FRONT
[2–3 sentences: purpose of meeting + most important context + any landmines]

---

## MEETING CONTEXT
- **Type:** [Decision | Review | Negotiation | 1:1 | Board | External]
- **Purpose:** [1-sentence statement]
- **Recurring:** [Yes — [cadence] | No — one-time]

---

## WHO'S IN THE ROOM

| Name | Role | Context |
|------|------|---------|
| [Name] | [Role / Entity] | [1–2 sentence profile] |

---

## AGENDA ANALYSIS

| Item | Type | What Matt Needs to Know |
|------|------|------------------------|
| [Agenda item] | [Decision/Discussion/Update/Approval/FYI] | [1 sentence] |

---

## RECOMMENDED QUESTIONS
1. [Question]
2. [Question]
3. [Question — optional]

## POSITIONS TO HOLD
- [Position or stance — based on prior decisions or commitments]

---

## OPEN ITEMS FROM PRIOR MEETINGS
- [Action item or commitment] — Owner: [name] — Due: [date] — Status: [Open/Overdue]

---
*Meeting Intelligence System — MBL Partners | jlewis@mblpartners.com | 602-880-6491*
```

## Output Contract

- **The BLUF must appear at the top of the prep sheet without exception, and it must name the most consequential thing Matt Mathison needs to know before walking into the room.** Matt Mathison may receive the prep sheet while between meetings, on his phone, or in a 60-second window before the meeting starts. If the most important context is buried in Section 4, he may miss it entirely. The BLUF is not a summary of the whole document — it is a prioritized alert. It should answer: "If Matt reads only one thing, what would change how he shows up in this meeting?"

- **The prep sheet must fit on exactly one page — the discipline of one page is non-negotiable and exists by design.** A two-page prep sheet signals that the builder did not make hard prioritization choices. Matt Mathison's time is the most constrained resource in the MBL system. A one-page constraint forces the skill to decide what matters and exclude what does not — exactly the judgment call that earns trust with a managing partner. If content cannot fit on one page, the skill must cut, not expand.

- **Attendee profiles for Allevio clinical staff must contain only professional role and MBL interaction history — no clinical credentials, no patient interaction context, no clinical scope information.** Prep sheets are delivered via email and stored as calendar attachments — environments that are not HIPAA-controlled. Including clinical staff profiles that reference their clinical scope or patient-facing roles creates PHI-adjacent risk and violates the principle of minimum necessary information. MBL's relationship with Allevio clinical staff is business-operational; the prep sheet needs to reflect only that dimension.

## System Dependencies

### Reads from
- Microsoft Outlook calendar (meeting details, attendee list, agenda from invite)
- meet-pre-meeting-researcher output (prior meeting history, entity context)
- meet-attendee-profiler output (attendee profile database)
- Open action item registry (open items involving meeting attendees)
- Meet-context-builder output (decision history and relationship context)

### Writes to
- Outlook: Prep sheet attached to Matt Mathison's calendar event
- Outlook: Direct email to Matt Mathison (jlewis@mblpartners.com sends)
- SharePoint: `/Meeting Intelligence/Prep Sheets/[Year]/[Month]/`

### HITL Required
- Dr. Lewis reviews all prep sheets before delivery — no automated delivery to Matt
- Any meeting involving external counterparties with active negotiations
- Any Allevio meeting where clinical staff are attendees (HIPAA profile check)
- Any meeting where Matt Mathison has an open commitment that he may not remember

## Test Cases

1. **Golden path:** Matt Mathison has a HIVE Partners LP review call in 26 hours. The researcher surfaces three prior meetings with this LP group, identifies two open action items (one overdue), and notes that WTI prices have dropped 8% since last quarter (relevant market context). The builder produces a one-page prep sheet with a BLUF noting the price context and the overdue item, four attendee profiles, an agenda analysis of five items (two decisions, two updates, one FYI), and two recommended questions. Dr. Lewis reviews, approves, and the prep sheet is attached to Matt's calendar event and emailed 24 hours before the call.

2. **Edge case:** A meeting has no formal agenda attached to the calendar invite — only a meeting title ("Allevio Ops Sync"). The builder flags the missing agenda to Dr. Lewis, generates a prep sheet based on the most likely agenda items derived from prior Allevio ops meeting patterns and open action items, and clearly marks the Agenda Analysis section as "INFERRED — no agenda provided." Dr. Lewis reviews, confirms the inferred agenda is reasonable, and the prep sheet is delivered with the inferred caveat retained.

3. **Adversarial case:** The attendee list for an Allevio meeting includes a physician listed in the calendar as "Dr. [Name], Medical Director — Utilization Management." The attendee profiler attempts to pull clinical scope information from a prior meeting transcript where this physician discussed clinical protocols. The builder detects clinical scope content in the profile, strips it, and includes only: "[Name] — Medical Director, Allevio | Joined Allevio Q1 2025 | Prior MBL meeting: [date], discussed operational KPIs." The clinical protocol context is excluded.

## Audit Log

Every prep sheet build logs the meeting name, calendar event ID, delivery timestamp (target vs. actual), Dr. Lewis review timestamp, attendee count, HIPAA flag status, and SharePoint storage path. The audit log also captures whether an agenda was explicitly provided or inferred, and whether any attendee profile content was redacted for HIPAA compliance. Logs are retained for 3 years in the MBL AI audit trail.

## Deprecation

This skill should be reviewed if Matt Mathison's calendar or executive assistant workflow changes such that the 24-hour delivery window or email-attachment format no longer fits his prep process. It should also be re-evaluated if the meeting intelligence system evolves to a real-time briefing model (delivered in the 10 minutes before a meeting rather than 24 hours prior). Any format change requires Matt Mathison's explicit feedback and Dr. Lewis sign-off before the new standard is applied.
