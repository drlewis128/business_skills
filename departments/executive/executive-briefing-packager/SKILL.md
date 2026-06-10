---
name: executive-briefing-packager
description: "Compile a structured executive briefing from multiple data sources into a BLUF-first summary. Use when the user says 'executive briefing', 'brief Matt', 'leadership summary', 'exec summary', 'prepare briefing', 'daily brief', 'morning brief', 'leadership update', or 'summary for Matt'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--period <daily|weekly>] [--recipient <name>] [--sources <list>]"
---

# Executive Briefing Packager

Compile a structured executive briefing for Matt Mathison or other MBL leadership from multiple data sources. BLUF-first. Designed for speed-to-decision.

## When to Use
- Weekly leadership meeting preparation
- Before Matt's Monday start (weekly standing brief)
- Pre-board or pre-LP meeting (situation overview)
- Any time Matt needs a single-pane-of-glass view across the portfolio

## Briefing Structure

### Section 1 — BLUF (Bottom Line Up Front)
3 sentences max. What do you need to know right now? What decisions are required this week?

### Section 2 — Portfolio Status (Traffic Light)
| Entity | Status | Signal | Week's Top Issue |
|--------|--------|--------|-----------------|
| MBL Partners | 🟢 | On track | |
| Allevio | 🟡 | Watch | |
| HIVE Partners | 🟢 | On track | |
| Column6 | 🔴 | Needs attention | |

### Section 3 — Financial Snapshot (This Week)
- Cash position (aggregate)
- Any invoices > $50K due or overdue
- Deal flow status (active LOIs / pipeline)

### Section 4 — Strategic Priorities This Week
- In-flight initiative status (from OKR/initiative tracker)
- Decisions needed from Matt
- Deadlines hitting this week

### Section 5 — External Watch Items
- Market, regulatory, or competitive signals
- Relevant news for MBL sectors (PE, healthcare, oil & gas, CTV)

### Section 6 — Action Items Owned by Matt
- Carryover from last week (not yet completed)
- New this week

## Output Format

```markdown
# MBL Executive Brief — Week of <date>
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison

---

## BLUF
<3 sentences: what matters most, what decisions are needed>

---

## Portfolio Status
[traffic light table]

## Financial Snapshot
...

## Strategic Priorities
...

## Action Items — Matt
| # | Item | Due | Status |
|---|------|-----|--------|
```

## Output Contract
- Total length: 1 page when printed (< 500 words excluding tables)
- BLUF section always appears first — no exceptions
- Action items owned by Matt are always a named, dated list
- HITL required before sending to Matt or distribution list

## System Dependencies
- **Reads from:** Portfolio company updates, financial snapshot (from `financial-kpi-briefing`), OKR tracker, Monday.com boards, Granola meeting summaries (if available)
- **Writes to:** Nothing (outputs draft for Dr. Lewis review)
- **HITL Required:** Dr. Lewis reviews and approves before sending to Matt

## Test Cases
1. **Golden path:** All portfolio status green, no decisions needed → clean brief, BLUF states "steady week, no escalations"
2. **Edge case:** Two decisions needed by Matt in different domains → BLUF surfaces both, decision items in Section 4
3. **Adversarial:** No data provided → requests minimum inputs (portfolio status, financial snapshot) before generating

## Audit Log
Weekly briefs retained with distribution date and recipient. Version-controlled if revised after initial send.

## Deprecation
Retire when Meeting Intelligence System (Phase 2 of MBL AI Orchestration) auto-generates weekly briefings via Krista.ai pipeline.
