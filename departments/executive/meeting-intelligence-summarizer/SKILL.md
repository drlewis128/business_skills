---
name: meeting-intelligence-summarizer
description: "Generate structured meeting summaries with action items from transcripts or notes. Use when the user says 'meeting summary', 'summarize this meeting', 'what were the action items', 'meeting notes', 'pull action items from transcript', 'Granola summary', 'meeting recap', or 'what did we decide'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<transcript-or-notes> [--meeting-type <leadership|client|board|pipeline>] [--push-monday <yes|no>]"
---

# Meeting Intelligence Summarizer

Convert meeting transcripts or notes into a structured intelligence brief: key decisions, action items, unresolved issues, and relationship signals. Primary input feed for the MBL Meeting Intelligence System.

## When to Use
- After any meeting with notes or a Krista.ai / Granola transcript
- Weekly meeting batch processing (Meeting Intelligence Phase 2 workflow)
- When preparing a follow-up email after a client or pipeline meeting
- Before a follow-up meeting (review what was decided last time)

## Output Sections

### 1. Meeting Header
- Date, participants, meeting type, duration

### 2. BLUF (3 sentences)
What was the meeting about? What was decided? What's the most important thing to know?

### 3. Key Decisions
Explicit decisions made during the meeting (not suggestions, not discussions — confirmed decisions).

### 4. Action Items
| # | Owner | Action | Due | Priority |
|---|-------|--------|-----|----------|

Rules for action items:
- Must have a specific named owner (not "the team")
- Must be actionable (verb + outcome)
- Must have a due date (if not stated, infer "next meeting" or "end of week")
- Flag items where no owner was assigned

### 5. Unresolved Issues / Open Questions
Topics that were raised but not decided — need follow-up.

### 6. Relationship / Sentiment Signals (external meetings)
For pipeline, client, or LP meetings:
- Buyer signals (positive / negative / neutral)
- Key concerns raised
- Relationship temperature

### 7. Next Steps (cross-reference with action items)
What happens after this meeting? Who is the accountable driver?

## Meeting Type Variations

### Leadership / WOR
- Focus on decisions and action items
- Flag unresolved blockers
- Highlight cross-entity dependencies

### Pipeline / M&A
- Capture deal interest level, seller's stated priorities, timing
- Note any mentions of other bidders or competing processes
- Flag follow-up data requests

### Board
- Document any formal votes and outcomes
- Capture director concerns and direction to management
- Flag follow-up commitments made to the board

### Client / Vendor
- Capture relationship health indicators
- Action items on both sides
- Any contract or scope changes discussed

## Output Format

```markdown
# Meeting Summary — <Meeting Title>
**Date:** <date> | **Participants:** <names> | **Type:** <type> | **Duration:** <X> min

## BLUF
<3 sentences>

## Decisions Made
1. <Decision 1 — who decided, what was decided>
2. <Decision 2>

## Action Items
| # | Owner | Action | Due | Priority |
|---|-------|--------|-----|----------|
| 1 | Dr. Lewis | Send revised model to Morgan Sills | Jun 13 | P1 |

## Open Issues
1. <Issue — context and next step to resolve>

## Relationship Signals (if applicable)
- Buyer interest: Strong / Moderate / Low
- Key concern: <concern>
- Temperature: Warm / Neutral / Cool

## Next Meeting
Date: <date if scheduled> | Prep needed: <what>
```

## Output Contract
- Every action item has a named human owner — never "TBD" or "the team"
- Decisions and open issues are always separated (never mixed)
- Sentiment signals only for external meetings — not internal leadership reviews
- HITL required before pushing action items to Monday.com

## System Dependencies
- **Reads from:** Meeting transcript (Granola, Krista.ai, or manual notes)
- **Writes to:** Monday.com action items (with HITL approval) — Meeting Intelligence Phase 2
- **HITL Required:** Before distributing summary externally or pushing to Monday.com

## Test Cases
1. **Golden path:** Clean 30-min leadership call transcript → BLUF, 3 decisions, 5 action items, 2 open issues
2. **Edge case:** Transcript with no explicit action items discussed → outputs "No explicit action items captured — review open issues for implied next steps"
3. **Adversarial:** Pipeline call transcript where deal was implicitly killed but not stated explicitly → flags as "deal status unclear — requires explicit follow-up" rather than marking as dead

## Audit Log
Meeting summaries retained with transcript source and distribution date. Action item push to Monday.com logged with board/item ID.

## Deprecation
Retire when Meeting Intelligence Phase 2 (Krista.ai → Monday.com pipeline) runs fully automated, with this skill as the extraction engine within that workflow.
