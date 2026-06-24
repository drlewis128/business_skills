---
name: meet-pre-meeting-researcher
description: "research meeting context, prior meeting history attendees, pre-meeting background research, entity status for meeting prep, attendee background research, market context meeting prep, wti price hive meeting, healthcare market allevio meeting, ctv market column6 meeting, open action items attendees, meeting history lookup, relationship history attendees, entity kpi status meeting, pre-meeting intelligence gathering, research for prep sheet, meeting context builder, external attendee research, prior decisions context, meeting research mbl, research upcoming meeting"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[meeting name, attendee list, and meeting date]"
---

# Pre-Meeting Researcher

This skill gathers and synthesizes the contextual intelligence needed to build a high-quality pre-meeting prep sheet for Matt Mathison, pulling from prior transcript history, open action item registries, entity KPI baselines, and relevant market context. It feeds directly into meet-prep-sheet-builder and should always run first in the prep sheet pipeline.

## When to Use

- A prep sheet needs to be built for an upcoming meeting and raw research context is required first
- Matt Mathison is meeting with an external party whose history with MBL needs to be surfaced
- An entity meeting is upcoming and current KPI status and open issues need to be gathered
- Market context (WTI, healthcare, CTV) is relevant to the meeting and needs to be pulled

## Pre-Meeting Researcher Framework

```
RESEARCH SCOPE DETERMINATION
─────────────────────────────
Based on meeting type and entity, activate the relevant research modules:

INTERNAL MBL MEETING:
  ✓ Prior meeting history (last 3 meetings with this group)
  ✓ Open action items — all attendees
  ✓ Decision history — relevant topics in past 90 days
  ✓ Entity KPI status

EXTERNAL MEETING (vendor, partner, prospect):
  ✓ Prior meeting history (from transcript registry)
  ✓ GHL CRM record for primary contact
  ✓ Open commitments from prior meetings with this party
  ✓ Company/org background (LinkedIn, website — if publicly available)
  ✓ Any contractual or commercial relationship status

ENTITY-SPECIFIC MARKET CONTEXT:
  HIVE Partners:   WTI price (current vs. last meeting); Uinta Basin activity; LP market sentiment
  Allevio:         Healthcare market headlines; CMS regulatory updates; MSO competitive landscape
  Column6:         CTV market share trends; programmatic spend benchmarks; relevant ad tech news
  MBL HoldCo:     PE market conditions; interest rate environment if relevant to capital decisions

MODULE 1 — PRIOR MEETING HISTORY
─────────────────────────────
- Query transcript registry: same attendee group in past 180 days
- Extract: meeting dates, primary topics, key decisions made, action items created
- Flag: any commitments made by Matt Mathison to this group that are still open
- Summarize: 3-bullet "last time we met" context block

MODULE 2 — OPEN ACTION ITEMS
─────────────────────────────
- Query action item registry: filter by attendee names + entity
- Identify: items due before or at the meeting date
- Flag: overdue items — these will likely be raised in the meeting
- Flag: re-commits (same item open from 2+ prior meetings) — pattern signal

MODULE 3 — DECISION HISTORY CONTEXT
─────────────────────────────
- Query decision registry: filter by entity + relevant topic keywords from agenda
- Surface: decisions made in past 90 days that are relevant to this meeting's agenda
- Flag: any deferred decisions that were explicitly scheduled for this meeting
- Note: any decisions that may be reversed or challenged in this meeting

MODULE 4 — ENTITY STATUS BASELINE
─────────────────────────────
Pull current status for the entity involved:
  - THRIVE baseline score (if available from most recent entity review)
  - KPI health: which metrics are green/yellow/red
  - Open issues: any escalations, personnel changes, or operational disruptions
  - Financial context: burn rate, revenue status, any budget-relevant context

MODULE 5 — MARKET CONTEXT (ENTITY-SPECIFIC)
─────────────────────────────
HIVE:     Current WTI price vs. 90-day average; any Uinta Basin regulatory changes
Allevio:  Any CMS or state Medicaid updates in past 30 days; competitor MSO news
Column6:  CTV market spend trends; any major ad tech platform changes; programmatic benchmarks
MBL:      PE fundraising environment; any relevant macro conditions if capital is on the agenda

MODULE 6 — RELATIONSHIP CONTEXT
─────────────────────────────
- How long has this relationship been active?
- What is the current relationship health signal (from sentiment analyzer history)?
- Any known friction points or sensitivities?
- Who is the primary relationship owner — Matt Mathison or entity CEO?

RESEARCH OUTPUT PACKAGE
─────────────────────────────
Structured output formatted for direct handoff to meet-prep-sheet-builder:
  - Last meeting summary (3 bullets)
  - Open action items (table)
  - Relevant decisions (table)
  - Entity status snapshot (4-line summary)
  - Market context brief (2-3 sentences)
  - Relationship context note (2-3 sentences)
```

## Output Format

```markdown
## Pre-Meeting Research Package — [Meeting Name] | [DATE]

**Prepared for:** meet-prep-sheet-builder
**Research completed:** [Timestamp]
**Meeting in:** [n] hours

---

### LAST TIME WE MET (Prior Meeting History)
- [Date]: [Meeting name] — Key topic: [topic] — Matt present: [Yes/No]
- [Date]: [Meeting name] — Key topic: [topic] — Matt present: [Yes/No]
- [Date]: [Meeting name] — Key topic: [topic] — Matt present: [Yes/No]

### OPEN ACTION ITEMS (These Attendees)
| Item | Owner | Due | Status | Overdue? |
|------|-------|-----|--------|----------|
| [text] | [name] | [date] | [Open/Overdue] | [Yes/No] |

### RELEVANT DECISIONS (Past 90 Days)
| Decision | Date | Maker | Status |
|----------|------|-------|--------|
| [text] | [date] | [name] | [Open/In Progress] |

### ENTITY STATUS SNAPSHOT
- KPI Health: [Green/Yellow/Red overview]
- Open Issues: [any escalations or operational flags]
- Financial Context: [relevant financial state if applicable]
- THRIVE Score: [if available]

### MARKET CONTEXT
[2–3 sentences of relevant market conditions for this entity]

### RELATIONSHIP CONTEXT
[2–3 sentences on relationship history, health, and any sensitivities]

---

**Research Confidence:** [HIGH | MEDIUM — limited prior history | LOW — new relationship]
**Missing Data Flags:** [Any data gaps that could not be filled]
```

## Output Contract

- **Research must be completed and packaged at least 26 hours before the meeting to give the prep sheet builder and Dr. Lewis sufficient review time.** The prep sheet must be delivered to Matt Mathison 24 hours before the meeting. If research is not complete at 26 hours, the prep sheet builder cannot produce a reviewed and approved document on time. This skill must trigger automatically when a new calendar event is detected on Matt Mathison's calendar — not when someone manually initiates it.

- **Market context must use current data, not cached or stale information — especially WTI prices for HIVE meetings and CMS regulatory updates for Allevio.** Presenting Matt Mathison with market context that is 30 days old as if it is current is worse than presenting no market context at all, because it creates false confidence. WTI prices, regulatory changes, and ad market conditions shift materially over weeks. If a live data pull is not possible, the output must clearly note the data source date so Matt can calibrate accordingly.

- **Open action items that are overdue must be flagged as overdue — not listed as open items without a status distinction.** Overdue items in a meeting carry a different conversational weight than current open items. If Matt Mathison walks into a meeting without knowing that a commitment from three weeks ago is overdue, he cannot proactively address it. Burying overdue items in a general open item list creates an accountability blind spot and undermines the trust that the meeting intelligence system is designed to build.

## System Dependencies

### Reads from
- Transcript registry (prior meeting history lookup)
- Open action item registry (open items by attendee and entity)
- Decision registry (prior decisions by entity and topic)
- GHL CRM (external contact records and relationship history)
- Meet-sentiment-analyzer history (relationship health signals)
- External market data: WTI price API, CMS updates, CTV market reports (via web search)

### Writes to
- Research package queue (handoff to meet-prep-sheet-builder)
- Meet-attendee-profiler (updates triggered if new attendee context surfaced)

### HITL Required
- Any external attendee with no prior MBL history — Dr. Lewis may have context not in the registry
- Any meeting where a sensitive or unresolved conflict was identified in prior sentiment history
- Market context for HIVE if WTI has moved more than 10% since last meeting (material context)

## Test Cases

1. **Golden path:** Matt Mathison has a Column6 Q2 business review in 28 hours with the Column6 CEO and CFO. The researcher finds two prior meetings with this group in the transcript registry, surfaces four open action items (one overdue), pulls two relevant decisions (Q2 budget approval and a vendor termination), generates a CTV market context brief noting that programmatic spend is up 12% YoY, and confirms the relationship health is positive (sentiment analyzer shows constructive tone in prior meetings). Full research package delivered to meet-prep-sheet-builder 26 hours before the meeting.

2. **Edge case:** The meeting is with a new external prospect — no prior history in any registry, no GHL CRM record. The researcher flags research confidence as LOW, generates a minimal package with only publicly available information about the organization (from web search), notes the absence of prior history explicitly, and flags for Dr. Lewis HITL so he can add any context he has from personal knowledge before the prep sheet is built.

3. **Adversarial case:** Research for a HIVE Partners LP update meeting surfaces an Allevio action item in the open item registry for one attendee who sits on both entities' operational calls. The researcher correctly includes only the HIVE-relevant action items and flags the Allevio item as entity-scoped exclusion — it does not appear in the HIVE meeting research package, because cross-entity operational items could create confusion or inadvertently expose information that should stay within an entity's boundary.

## Audit Log

Each research run logs the meeting name, calendar event ID, research modules activated, data sources queried, research completion timestamp, confidence level, missing data flags, and handoff status to meet-prep-sheet-builder. The log also records any HITL flags raised and their resolution status. Logs are stored in the MBL AI audit trail with a 2-year retention minimum.

## Deprecation

This skill should be reviewed if a future version of Krista.ai or the MBL orchestration platform includes a native pre-meeting intelligence module that auto-populates context from connected systems. In that scenario, this skill's registry lookup and market context modules may be partially or fully redundant. Deprecation requires Dr. Lewis to confirm that the replacement system covers all six research modules with equivalent or better data freshness guarantees before this skill is retired.
