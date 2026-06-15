---
name: board-meeting-preparer
description: "Prepare board meeting agenda, materials checklist, and pre-read package. Use when the user says 'board meeting prep', 'prepare board materials', 'board agenda', 'board package', 'board deck prep', 'board pre-read', or 'what do we need for the board meeting'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--date <YYYY-MM-DD>] [--entity <name>] [--type <regular|annual|special>]"
---

# Board Meeting Preparer

Prepare the complete board meeting package: agenda, materials checklist, logistics, and pre-read distribution plan. Well-run board meetings project professionalism to directors and LPs.

## When to Use
- 4+ weeks before a scheduled board meeting
- When a special board meeting is called (acquisition vote, governance matter)
- Annual meeting preparation

## Standard Board Meeting Agenda

### Pre-Meeting (Async, sent 7 days prior)
- Financial statements (current period)
- Management letter / CEO update
- Prior meeting minutes (for approval)
- Any consent items for approval

### Meeting Structure (2-3 hours typical)
1. **Call to order & quorum** (5 min)
2. **Approve prior minutes** (5 min)
3. **Financial review** (20-30 min)
   - P&L vs. budget
   - Cash position
   - Key metrics
4. **Operating review** (20-30 min)
   - Department/portfolio company updates
   - Strategic initiative status
5. **Key decisions / Action items** (30-45 min)
   - Items requiring board vote
   - Strategic options under discussion
6. **Executive session** (without management, 15 min)
7. **Action items recap & next meeting** (10 min)
8. **Adjourn**

## Materials Checklist

### Financial Materials
- [ ] Board-formatted P&L (current period + YTD vs. budget)
- [ ] Balance sheet snapshot
- [ ] Cash flow summary
- [ ] KPI dashboard (entity-specific)
- [ ] Covenant compliance (if applicable)

### Operations Materials
- [ ] CEO / MD letter
- [ ] Department / entity update slides
- [ ] Strategic initiative status
- [ ] Key risks and mitigations

### Governance Materials
- [ ] Prior meeting minutes (draft)
- [ ] Consent calendar (routine approvals bundled)
- [ ] Any resolutions requiring vote
- [ ] Updated cap table (if equity events occurred)

### Legal / Compliance
- [ ] Any regulatory updates
- [ ] Material contracts executed since last meeting

## Output Format

```markdown
# Board Meeting Prep — <Entity> — <date>
**Meeting Type:** Regular / Special | **Quorum Required:** <N> directors

## Agenda (Final)
[formatted agenda with time allocations]

## Materials Checklist
| Item | Owner | Status | Due |
|------|-------|--------|-----|
| Financial statements | Finance | ⚠️ In progress | <7 days before meeting> |
| Prior minutes | Legal/Secretary | ❌ Not started | <7 days before meeting> |

## Pre-Read Distribution Plan
- Send to: Board members, observers
- Send date: <7 days before meeting>
- Format: PDF, password protected
- Distribution channel: Secure email / board portal

## Logistics
- Platform: <Zoom / in-person / hybrid>
- Call-in details: [to be confirmed]
- Recording: Yes / No (confirm with legal)

## Open Items Requiring Decision This Meeting
1. <Item 1>
2. <Item 2>
```

## Output Contract
- Agenda always includes executive session time
- Pre-read distribution at least 7 days prior (never less)
- HITL required before any board materials are finalized or distributed

## System Dependencies
- **Reads from:** Financial statements, KPI dashboard, prior minutes, strategic tracker
- **Writes to:** Nothing (outputs checklist and agenda draft)
- **HITL Required:** Matt Mathison reviews all materials before distribution to board

## Test Cases
1. **Golden path:** Regular quarterly meeting → complete agenda and materials checklist in one output
2. **Edge case:** Special meeting called with 5-day notice → flags compressed timeline, identifies which standard materials can be abbreviated
3. **Adversarial:** No prior minutes drafted → escalates as blocker, meeting cannot proceed without minute approval

## Audit Log
Board meeting packages versioned and retained. Distribution dates and recipients logged.

## Deprecation
Retire when board management platform (e.g., BoardEffect, Diligent) handles agenda building and materials distribution.
