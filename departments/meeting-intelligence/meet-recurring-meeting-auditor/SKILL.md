---
name: meet-recurring-meeting-auditor
description: "audit recurring meetings, recurring meeting value, eliminate low roi meetings, meeting inventory entity, meeting value assessment, keep restructure eliminate meeting, meeting cost calculation recurring, meeting audit scoring, eliminate unnecessary meetings, meeting transition communication, meeting debt concept, entity CEO meeting portfolio review, recurring meeting roi, unnecessary meeting patterns, meeting elimination protocol, meeting cadence audit, low value meeting identification, meeting rationalization, recurring meeting review, meeting portfolio audit mbl"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[entity name or 'all' for full MBL recurring meeting audit]"
---

# Recurring Meeting Auditor

This skill conducts structured audits of every recurring meeting across MBL and its portfolio entities to identify which meetings are producing value, which should be restructured, and which should be eliminated — then manages the transition to eliminate meeting debt before it compounds. It applies the principle that an unnecessary recurring meeting is not just a bad hour; it is a bad hour that repeats indefinitely.

## When to Use

- A quarterly recurring meeting audit is due for an entity or MBL HoldCo
- An entity CEO reports that their team is spending too much time in meetings
- A new project or phase launch has added new recurring meetings and the existing portfolio has not been rationalized
- Matt Mathison wants to reduce his own or an entity's meeting burden before a high-demand quarter

## Recurring Meeting Auditor Framework

```
MEETING INVENTORY
─────────────────────────────
Pull all recurring calendar events from Outlook per entity:
  - Filter: recurring events (weekly, biweekly, monthly, quarterly)
  - Exclude: one-time events, personal calendar blocks
  - For each meeting collect:
      Name | Owner | Attendees | Duration | Cadence | Age (when was it created?) | Last reviewed

FLAG FOR IMMEDIATE REVIEW:
  - Any recurring meeting older than 6 months with no documented scope review
  - Any recurring meeting with >8 attendees
  - Any recurring meeting >60 min duration
  - Any recurring meeting with no agenda template

VALUE ASSESSMENT CRITERIA
─────────────────────────────
Score each meeting across 4 dimensions (1–5 each):

1. DECISION OUTPUT:
   5 = Consistently produces decisions or approvals that cannot be made async
   3 = Occasionally produces decisions; mostly status updates
   1 = Zero decisions in past 90 days

2. COORDINATION VALUE:
   5 = Coordination at this frequency is genuinely necessary
   3 = Some coordination value, but lower frequency would suffice
   1 = All coordination could happen via Monday.com or email

3. RELATIONSHIP VALUE:
   5 = Face time is necessary to maintain a key relationship (LP, board, partner)
   3 = Moderate relationship value; async maintains adequately
   1 = No relationship component; purely operational

4. UNIQUE VALUE (what would be lost if eliminated?):
   5 = Unique context or insight produced only in this meeting format
   3 = Moderate unique value; could be partially replicated async
   1 = Nothing unique; all output could be produced without this meeting

SCORING → RECOMMENDATION:
  16–20: KEEP — high value; optimize cadence if any score is 3 or below
  10–15: RESTRUCTURE — change cadence, reduce attendees, or split meeting types
  5–9:   ELIMINATE — replace with async alternative
  1–4:   ELIMINATE IMMEDIATELY — this meeting has no defensible value

MEETING DEBT CONCEPT
─────────────────────────────
Meeting debt is the cumulative cost of keeping unnecessary meetings alive:
  - An unnecessary weekly 30-min meeting with 3 people = ~75 hours/year wasted organization-wide
  - Meeting debt compounds: it consumes time that should go to execution
  - Unlike financial debt, meeting debt is invisible — it looks like "just another meeting"
  - The audit makes meeting debt visible by attaching a dollar cost to each meeting

Total meeting debt per entity = sum of annual costs of all ELIMINATE-scored meetings

ELIMINATION PROTOCOL
─────────────────────────────
Step 1: Dr. Lewis reviews all ELIMINATE recommendations — confirms before any communication
Step 2: Entity CEO (or meeting owner) notified of recommendation with rationale
Step 3: Transition communication sent to all attendees — see template below
Step 4: Meeting removed from all calendars
Step 5: Replacement async mechanism confirmed (Monday.com board, email cadence, etc.)
Step 6: 30-day follow-up: confirm no information gaps created by elimination

TRANSITION COMMUNICATION TEMPLATE
─────────────────────────────
Subject: [Meeting Name] — Transitioning to [Async/Reduced Cadence]

After reviewing our meeting portfolio, we are [eliminating | reducing the cadence of]
[Meeting Name] effective [Date].

What changes: [specific change]
What replaces it: [Monday.com board / email update / merged into [other meeting]]
Who to contact with questions: [Dr. Lewis or entity owner]

This is part of MBL's ongoing effort to protect team time for execution.

ENTITY CEO PORTFOLIO REVIEW
─────────────────────────────
Produce a separate summary per entity CEO:
  - Total recurring meetings in their portfolio: [n]
  - Total annual hours in recurring meetings: [n hrs]
  - Total estimated annual cost: $[amount]
  - Recommended to eliminate: [n] meetings → saves [n hrs/yr] and $[amount/yr]
  - Recommended to restructure: [n] meetings
  - Meeting debt total: $[amount/yr]
```

## Output Format

```markdown
# Recurring Meeting Audit — [Entity] | [DATE]

**Meetings Audited:** [n]
**Total Annual Meeting Cost (recurring):** $[amount]
**Meeting Debt Identified:** $[amount] (eliminate-scored meetings)
**Matt Mathison Hours Recoverable:** [n hrs/yr]

---

## AUDIT RESULTS

| Meeting | Owner | Cadence | Attendees | Duration | Age | Score | Recommendation |
|---------|-------|---------|-----------|----------|-----|-------|----------------|
| [name] | [owner] | [weekly] | [n] | [min] | [mo] | [n/20] | [KEEP/RESTRUCTURE/ELIMINATE] |

---

## ELIMINATE (Priority Actions)

### [Meeting Name] — Score: [n/20] — Annual Cost: $[amount]
- **Reason:** [Why this meeting has no defensible value]
- **What's lost:** [Nothing | Specific gap and how it's covered]
- **Async replacement:** [Monday.com board / email update / none needed]
- **Transition communication:** [READY | Draft attached]

---

## RESTRUCTURE

### [Meeting Name] — Score: [n/20]
- **Current:** [cadence, duration, attendees]
- **Recommended:** [new cadence, duration, or attendee change]
- **Impact:** Saves [n hrs/yr] | $[amount/yr]

---

## ENTITY CEO PORTFOLIO SUMMARY
- **Total recurring meeting hours/yr:** [n hrs]
- **Hours recoverable:** [n hrs] if all ELIMINATE and RESTRUCTURE actions taken
- **Meeting debt:** $[amount/yr]
```

## Output Contract

- **Every eliminated meeting must have a named async replacement before the elimination is executed — "we'll figure out a replacement" is not acceptable.** Eliminating a meeting without establishing what replaces its coordination or information-sharing function creates an operational gap that will be filled by informal communication, missed updates, or a new ad hoc meeting within weeks. The replacement mechanism must be specific: a Monday.com board update, a weekly email report, an expanded agenda item in an adjacent meeting, or a formal confirmation that no replacement is needed because the meeting produced nothing of value.

- **The total meeting debt figure must be calculated and presented in dollar terms — not just hours — because dollar figures create the cognitive impact that hours do not.** Telling an entity CEO that their team has 40 hours per year in unnecessary recurring meetings produces a mild reaction. Telling them that those meetings cost $62,000 per year in fully-loaded staff time produces action. The dollar figure is not an accountant's concern — it is a leadership motivator. Meeting debt made invisible in hours stays invisible; meeting debt expressed in dollars becomes a line item that demands a decision.

- **The 30-day follow-up check after meeting elimination is mandatory — not optional — and must be logged.** Recurring meetings are sometimes keeping a coordination function alive that nobody consciously thought about until the meeting disappeared. The 30-day follow-up exists to detect information gaps, missed coordination, or relationship strain that emerged after elimination. Without the follow-up, meeting eliminations can create silent organizational damage that only surfaces months later. The follow-up is the quality control step that makes elimination decisions reversible and evidence-based.

## System Dependencies

### Reads from
- Microsoft Outlook (recurring calendar events — all entities)
- Transcript registry (decision output history per recurring meeting)
- Decision registry (decisions produced by each recurring meeting over past 90 days)
- Action item registry (action item generation rate per recurring meeting)
- Meeting health tracker (efficiency scores per recurring meeting)

### Writes to
- Audit report: `/Meeting Intelligence/Recurring Audit/[Entity]/[Year]/[Quarter]/`
- Transition communications: drafted and queued for Dr. Lewis review
- Monday.com: Elimination action items (per approved meeting removal)
- Outlook: Calendar event removal (post-approval only)

### HITL Required
- All ELIMINATE recommendations — Dr. Lewis must confirm before any meeting is canceled
- All restructure recommendations involving Matt Mathison's calendar
- Transition communications — Dr. Lewis or entity CEO reviews wording before sending
- 30-day follow-up assessment — Dr. Lewis reviews gap reports

## Test Cases

1. **Golden path:** A quarterly audit of HIVE Partners' recurring meetings covers 9 meetings. Two score KEEP (LP quarterly call, ops leadership monthly). Four score RESTRUCTURE (weekly water ops sync → biweekly; monthly finance review → remove 2 observer-only attendees; weekly team standup → 25 min instead of 60; quarterly all-hands → merge with ops leadership monthly). Three score ELIMINATE (biweekly vendor check-in → replaced by Monday.com status board; weekly safety briefing → replaced by email report; ad hoc HIVE CEO check-in → no replacement needed, ad hoc contact sufficient). Total recovery: 84 hrs/yr, $41,000 in meeting debt eliminated.

2. **Edge case:** One recurring meeting in the audit — a monthly Allevio clinical quality review — scores 12/20 (RESTRUCTURE), but the restructuring recommendation involves reducing the meeting from 60 to 30 minutes. The auditor notes that this meeting involves clinical staff and the restructuring recommendation may affect clinical quality processes. It flags the recommendation as PENDING HITL and does not include it in the standard transition communication workflow until Dr. Lewis and the Allevio ops lead confirm the restructuring does not affect any compliance-required meeting elements.

3. **Adversarial case:** A meeting owner pushes back on an ELIMINATE recommendation, arguing that the meeting is "important for team culture." The auditor does not change the score or recommendation based on qualitative pushback without evidence. Instead, it logs the pushback, requests that the meeting owner provide: (a) a specific example of a decision or coordination output from the past 90 days that could not have been handled async, and (b) evidence that the culture value is not achievable through a lower-cost format. If no evidence is provided within 5 business days, the ELIMINATE recommendation stands.

## Audit Log

Every audit run logs the entity, number of meetings audited, scores assigned, recommendation distribution (keep/restructure/eliminate), total meeting debt identified, elimination and restructuring actions approved, transition communications sent, and 30-day follow-up status. Follow-up gaps (coordination or information gaps detected post-elimination) are logged separately for organizational learning. Logs are stored in the MBL AI audit trail with a 2-year retention minimum.

## Deprecation

This skill should be reviewed at the conclusion of MBL's AI Orchestration Project Phase 0 to determine whether meeting portfolio governance should be embedded in the entity-level operating cadence rather than run as a periodic audit. If a continuous meeting health monitoring system (via meet-meeting-health-tracker) makes quarterly audits redundant, this skill's elimination protocol and transition communication functions should be migrated to the health tracker before deprecation. Dr. Lewis sign-off required.
