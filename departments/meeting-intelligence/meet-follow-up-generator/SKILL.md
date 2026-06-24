---
name: meet-follow-up-generator
description: "generate meeting follow up, post-meeting email, meeting recap email, action items follow up email, meeting decisions summary email, follow up email attendees, monday.com task creation follow up, meeting commitments follow up, entity CEO follow up, matt mathison follow up format, meeting follow up 2 hours, follow up communication meeting, commitment confirmation email, hipaa check follow up allevio, follow up timing standard, meeting output email, meeting recap communication, post-meeting tasks, follow up email format mbl, meeting conclusion communication"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[transcript ID or meeting name and date for follow-up generation]"
---

# Meeting Follow-Up Generator

This skill generates all post-meeting outputs — follow-up emails to attendees, Monday.com task creation for all commitments, and confirmation messages to parties who made commitments — within two hours of meeting end. It ensures that the momentum and accountability established in a meeting is captured immediately rather than dissipating before anyone acts.

## When to Use

- A meeting has concluded and follow-up communications need to go out within the 2-hour window
- Monday.com boards need to be updated with commitments made in a just-completed meeting
- Matt Mathison needs a concise follow-up sent on his behalf to meeting attendees summarizing decisions and next steps
- An entity CEO needs a formatted post-meeting communication for their team

## Follow-Up Generator Framework

```
TIMING STANDARD
─────────────────────────────
Target:   Within 2 hours of meeting end
Maximum:  Same business day as meeting
Exception: If HIPAA flag is active on Allevio transcript → hold all follow-ups pending
           Dr. Lewis HITL clearance before any communication goes out

HIPAA CHECK — ALLEVIO MEETINGS FIRST
─────────────────────────────
Before generating ANY follow-up for an Allevio meeting:
  □ Confirm transcript processing HIPAA status = CLEARED
  □ Review all action items and decisions for PHI-adjacent language
  □ Strip any member names, case references, or clinical detail from follow-up text
  □ Route Allevio follow-ups through Dr. Lewis review before sending

FOLLOW-UP EMAIL FORMAT
─────────────────────────────
Subject line:   [Meeting Name] — Follow-Up | [Date]
Recipients:     All meeting attendees (Reply-All appropriate unless external)
From:           Dr. John Lewis <jlewis@mblpartners.com> (or on behalf of Matt Mathison if directed)

BODY STRUCTURE:
  1. Opening (1 sentence): What the meeting accomplished
  2. KEY DECISIONS (bullet list): Numbered list — one line per decision
  3. ACTION ITEMS (table): Owner | Item | Due Date
  4. NEXT STEPS: Next meeting date (if known) or when to expect further communication
  5. Close: "Reach out to Dr. Lewis with any questions or corrections by [date]."

FORMAT RULES:
  - Total email: under 250 words
  - No filler ("Great meeting everyone!")
  - No passive voice ("It was decided that...") → use active voice ("Matt approved...")
  - Action items formatted as table for scannability
  - Do not include discussion points — decisions and actions only

MATT MATHISON FOLLOW-UP FORMAT
─────────────────────────────
When Matt Mathison leads the meeting or is primary decision maker:
  - Follow-up sent by Dr. Lewis on behalf of Matt (or by Matt directly if he prefers)
  - BLUF in first line: "Today we decided [X] and [Y]. Next action is on [owner] by [date]."
  - Matt's commitments called out explicitly: "Matt committed to [X] by [date]."
  - All action items copied to Matt's Monday.com board

ENTITY CEO FOLLOW-UP FORMAT
─────────────────────────────
For meetings led by entity CEO (without Matt Mathison present):
  - Follow-up sent by entity CEO (content prepared by this skill)
  - Dr. Lewis receives CC
  - Entity-specific format: more operational detail than Matt-level format
  - Monday.com tasks pushed to entity board automatically

MONDAY.COM TASK CREATION
─────────────────────────────
For every action item confirmed in the meeting:
  - Create task: [Action text] | Owner | Due Date | Priority | Entity group
  - Link to meeting transcript ID in task Notes field
  - Set status: Not Started
  - Notify assigned owner via Monday.com notification
  - Do not create duplicate tasks — check registry first

COMMITMENT CONFIRMATION
─────────────────────────────
For any external party who made a commitment in the meeting:
  - Send separate confirmation email to that party: "Per our discussion on [date], 
    you committed to [X] by [date]. Please confirm this is accurate."
  - Log confirmation sent in commitment tracker
  - If no response within 2 business days: flag for follow-up escalation
```

## Output Format

```markdown
## Follow-Up Package — [Meeting Name] | [DATE]

**Distribution Status:** [READY | PENDING HITL | HIPAA HOLD]
**Target send time:** [Timestamp]

---

### ATTENDEE FOLLOW-UP EMAIL (Draft)

**Subject:** [Meeting Name] — Follow-Up | [Date]
**To:** [attendee emails]
**CC:** [Dr. Lewis; Jimmy Lindsley if applicable]

[Meeting Name] | [Date]

Today we [accomplished/decided/reviewed] [1-sentence summary].

**Decisions Made:**
1. [Decision text] — Made by: [Name]
2. [Decision text] — Made by: [Name]

**Action Items:**
| Owner | Action | Due |
|-------|--------|-----|
| [Name] | [action text] | [date] |

**Next:** [Next meeting date or next expected communication]

Questions or corrections → jlewis@mblpartners.com by [date].

---

### MONDAY.COM TASKS (Queued for Push)
| Task | Owner | Due | Priority | Board Group |
|------|-------|-----|----------|-------------|
| [text] | [name] | [date] | [level] | [entity] |

**Push Status:** [QUEUED | PUSHED | FAILED — reason]

---

### COMMITMENT CONFIRMATIONS (External Parties)
| Party | Commitment | Confirmation Email Sent | Response Received |
|-------|-----------|------------------------|-------------------|
| [Name] | [commitment text] | [Yes/No] | [Yes/No/Pending] |
```

## Output Contract

- **The follow-up email must go out within 2 hours of meeting end — every hour of delay reduces the probability that attendees will act on their commitments.** Research on meeting effectiveness consistently shows that action item completion rates drop sharply when follow-ups are delayed more than a few hours. The 2-hour window preserves the momentum of the meeting while attendees are still focused on it. A follow-up sent the next morning is processed as email backlog — not as a live accountability signal.

- **Monday.com tasks must be created with the transcript ID linked in the Notes field on every task — not just the action item text.** Action items without source context become orphaned tasks. When an assignee asks "where did this come from?" or "what was the context for this task?" the answer must be one click away — not a search through email archives. The transcript link enables any team member to go from task → meeting → full context without involving Dr. Lewis or anyone else in the loop.

- **No follow-up communication for an Allevio meeting may be sent before the HIPAA check is complete and Dr. Lewis has reviewed.** Follow-up emails are uncontrolled communications — once sent, they cannot be recalled. An Allevio meeting follow-up containing a member name, a case description, or clinical detail sent to a distribution list that includes external parties or non-HIPAA-trained staff constitutes a reportable breach. The 2-hour timing standard does not override the HIPAA gate. If the HIPAA check cannot be completed in time, the follow-up is delayed — not bypassed.

## System Dependencies

### Reads from
- Processed transcript output from meet-transcript-processor (decisions and action items)
- Action item extractor output (formatted action items with owners and due dates)
- Decision tracker output (decisions logged from this meeting)
- Open action item registry (deduplication before Monday.com push)
- Microsoft Outlook (attendee email addresses from calendar event)

### Writes to
- Outlook: Draft follow-up email (Dr. Lewis reviews before send, or auto-sends if pre-approved)
- Monday.com: New tasks per entity board
- Commitment tracker: External party confirmations logged
- SharePoint: `/Meeting Intelligence/Follow-Ups/[Entity]/[Year]/[Month]/`

### HITL Required
- All Allevio meeting follow-ups — Dr. Lewis review before send
- Any follow-up where Matt Mathison's name or commitments are included
- External party commitment confirmation emails — Dr. Lewis confirms wording
- Any follow-up where a contentious decision is being communicated

## Test Cases

1. **Golden path:** A 50-minute Column6 Q2 review ends at 2:30 PM. By 4:00 PM the skill has generated a clean follow-up email (3 decisions, 5 action items, 187 words), created 5 Monday.com tasks on the Column6 board, and queued a commitment confirmation to the Column6 media agency for a deliverable they committed to by end of month. Dr. Lewis reviews in 10 minutes, approves, and the email sends at 4:12 PM. All Monday.com tasks pushed and owners notified.

2. **Edge case:** A meeting ends with a decision that one attendee verbally contested before ultimately deferring to the group. The follow-up email drafts the decision as made. Dr. Lewis reviews and notes the contested decision should include a brief qualifier: "After discussion, the group agreed to [X] — [dissenter name] noted concerns about [topic], which will be revisited in 30 days." This context preserves the decision while acknowledging the dissent and setting a review trigger.

3. **Adversarial case:** An Allevio ops call ends and the transcript is still in HIPAA HOLD because a flagged segment is pending Dr. Lewis review. The follow-up generator detects the HIPAA HOLD, halts all follow-up generation, and sends Dr. Lewis an alert: "Allevio follow-up blocked — transcript ID [X] in HIPAA HOLD. Review and clear to release follow-up." No emails are drafted, no Monday.com tasks are created, and no commitment confirmations are sent until the hold is cleared.

## Audit Log

Every follow-up generation run logs the meeting name, transcript ID, HIPAA flag status, number of action items pushed to Monday.com, follow-up email send timestamp, Dr. Lewis review timestamp, and commitment confirmation count. Failed Monday.com task pushes are logged with error codes. Audit logs are stored in the MBL AI audit trail with a 3-year retention minimum.

## Deprecation

This skill should be reviewed if Krista.ai introduces a native post-meeting follow-up generation feature that integrates directly with Monday.com and Outlook. In that scenario, the core pipeline (transcript → follow-up → task push) may be handled natively, though the HIPAA gate for Allevio meetings and the Dr. Lewis review checkpoint should be preserved in any replacement workflow before this skill is retired.
