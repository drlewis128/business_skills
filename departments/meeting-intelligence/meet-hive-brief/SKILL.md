---
name: meet-hive-brief
description: "HIVE weekly meeting briefing, HIVE operational brief from meetings, HIVE production ops meeting summary, HIVE LP relationship meeting intelligence, HIVE land meeting synthesis, HIVE acquisition meeting topics, HIVE oil and gas meeting brief, LP data confidentiality in meetings, WTI price trigger monitoring from meetings, WTI $58 per barrel alert, HIVE deal flow meeting escalation, HIVE entity CEO briefing, HIVE meeting intelligence, oil gas meeting summary, Uinta Basin meeting briefing, HIVE partners meeting synthesis, HIVE meeting action items, LP confidential meeting output protection, HIVE weekly brief for Matt Mathison"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date, e.g. 2026-06-28]"
---

# HIVE Ops Meeting Brief

This skill synthesizes all HIVE Partners-tagged meeting transcripts from Krista.ai into a weekly operational briefing covering production ops, LP relationships, land acquisitions, and deal flow. LP data confidentiality standards are enforced at the output level — no LP-identifiable information appears in any document distributed outside secure channels — and any mention of WTI pricing in meetings triggers an immediate flag to Matt Mathison.

## When to Use

- Weekly meeting intelligence cycle runs for HIVE Partners (every Friday/Monday)
- WTI pricing is discussed in any HIVE meeting transcript during the week
- A deal or acquisition topic surfaces in HIVE meetings requiring Dr. Lewis escalation
- Matt Mathison requests an ad-hoc HIVE meeting synthesis for a specific period

## HIVE Ops Brief Framework

```
HIVE PARTNERS OPS MEETING BRIEF — WEEK ENDING [DATE]
=====================================================

LP DATA GUARD STATUS: [CLEAR / FLAGGED — DR. LEWIS REVIEW REQUIRED]
WTI TRIGGER STATUS: [NOT MENTIONED / MENTIONED — FLAG TO MATT MATHISON]

SECTION 1: MEETING INVENTORY
  - Total HIVE meetings recorded this week: [N]
  - Meeting types: [Production / LP Relations / Land / Acquisitions / Leadership / Finance]
  - Key participants (by role)
  - Meetings without transcripts: [list with reason]

SECTION 2: PRODUCTION OPS
  - Production topics discussed this week
  - Operational decisions made
  - Action items (owner; due date)
  - Equipment, well, or field issues surfaced in meetings
  - Safety or environmental topics flagged

SECTION 3: LP RELATIONSHIPS
  - LP relationship topics discussed (NO LP names or capital amounts in this output)
  - Relationship health signals (concern; positive; neutral)
  - LP communication commitments made in meetings → action items
  - Distribution or reporting discussions → flag for HIVE CEO

SECTION 4: LAND & ACQUISITIONS
  - Active land topics discussed
  - Acquisition targets or discussions (high confidentiality — Dr. Lewis reviews)
  - Regulatory or permitting topics from meetings
  - Action items for land team

SECTION 5: WTI PRICE MONITORING
  - WTI mentioned in meetings this week: [YES / NO]
  - If YES: context of mention; meeting and speaker; current price referenced
  - WTI at or below $58/bbl: [YES — IMMEDIATE MATT MATHISON FLAG / NO]
  - Impact assessment: [operational / financial / strategic]
  - Recommended Matt Mathison response

SECTION 6: DEAL FLOW
  - Any M&A or deal topics discussed in HIVE meetings: [YES / NO]
  - If YES: topic description (no counterparty names without Dr. Lewis approval); stage; urgency
  - Escalation: [Dr. Lewis notified: YES/NO | Date/time]

SECTION 7: HIVE CEO BRIEFING SUMMARY
  - BLUF: [2 sentences — what the HIVE CEO needs to know this week]
  - Top 3 action items requiring CEO attention
  - Matt Mathison items: [LP, WTI, deal items requiring Managing Partner awareness]

SECTION 8: DR. LEWIS REVIEW CHECKLIST
  [ ] LP data guard confirmed CLEAR
  [ ] WTI trigger assessed and flagged if applicable
  [ ] Deal flow items escalated if applicable
  [ ] Attribution verified for all action items
  [ ] Output approved for distribution to HIVE CEO
```

## Output Format

```markdown
## HIVE Ops Brief — Week Ending [DATE]

**LP Data Guard:** CLEAR ✓
**WTI Trigger:** [NOT TRIGGERED / TRIGGERED — Matt Mathison notified [date/time]]
**Dr. Lewis Approved:** [ ] Pending / [x] Approved — [date]

**BLUF:** [2 sentences — what matters most this week at HIVE]

**Production Ops:** [3-5 bullet points]

**LP Relationships:** [signals only — no LP names or capital data]

**Land & Acquisitions:** [topics; decisions; action items]

**WTI Monitoring:** [status + context if triggered]

**Deal Flow:** [NONE / escalated topic summary]

**Top Action Items:**
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | ...    | ...   | ... |

**For Matt Mathison:** [LP, WTI, deal items]
```

## Output Contract

- **LP confidentiality is a structural constraint, not a redaction step.** The brief is designed from the ground up so that LP names, individual capital commitments, distribution amounts, and LP contact information are never included in the output — not removed after the fact. When LP relationship topics arise, they are described by relationship health signal and action type only (e.g., "LP communication commitment made; follow-up call scheduled for [date]"). If an LP name is necessary for operational context, that information travels only in a separate, secure channel reviewed by Dr. Lewis and the HIVE CEO.

- **The WTI $58/bbl trigger is a hard alert threshold, not a monitoring note.** Any mention of WTI pricing at or below $58/bbl in any HIVE meeting transcript activates an immediate notification to Matt Mathison — not as part of the weekly brief, but as a standalone alert generated within 2 hours of the transcript being processed. The alert includes the exact meeting, speaker, context of the discussion, and a one-paragraph impact assessment covering operational, financial, and strategic dimensions for HIVE Partners.

- **Deal flow topics escalate to Dr. Lewis before appearing in any brief.** If an acquisition target, LOI discussion, or M&A topic surfaces in a HIVE meeting transcript, Dr. Lewis is notified within 4 hours with the full transcript excerpt. Dr. Lewis determines what, if anything, appears in the weekly brief for the HIVE CEO, and what is held for a separate deal intelligence channel. Deal meeting intelligence at HIVE operates under higher confidentiality standards than standard operational intelligence.

## System Dependencies

### Reads from
- Krista.ai transcripts (HIVE-tagged meetings only)
- Monday.com HIVE board (prior action item status)
- Prior week's HIVE brief (for trend comparison)
- WTI price feed reference (for context when price is mentioned in meetings)

### Writes to
- SharePoint: /Meeting Intelligence/HIVE/[Year]/[Month]/[Date]-hive-ops-brief.md (restricted access)
- Monday.com: HIVE action items board
- Matt Mathison WTI alert queue (when triggered)
- Dr. Lewis deal flow escalation log

### HITL Required
- Dr. Lewis: LP data guard + deal flow review + full brief approval before distribution
- HIVE entity CEO: receives brief after Dr. Lewis approval
- Matt Mathison: WTI trigger alerts (immediate); LP and deal items in weekly MBL summary

## Test Cases

1. **Golden path:** Week with 6 HIVE meetings, no LP data in outputs, WTI not mentioned, no deal flow — clean brief produced, approved by Dr. Lewis, HIVE CEO receives on schedule.
2. **Edge case:** A meeting references "our largest LP is asking about Q3 distributions" — LP identity is not stated, but the reference implies a specific LP. Brief correctly describes this as "a major LP raised a distribution timing inquiry" and flags for HIVE CEO follow-up, without speculating on LP identity or including distribution amounts.
3. **Adversarial:** A production meeting transcript includes a passing reference to WTI at "$56 per barrel" in a budgeting discussion. WTI trigger fires immediately (below $58 threshold), Matt Mathison alert is generated within 2 hours, and the alert correctly identifies this as a threshold breach requiring attention — it does not wait for the weekly brief cycle.

## Audit Log

Every HIVE Ops Brief is logged in SharePoint with the generation timestamp, source transcript IDs, LP data guard result, WTI trigger status, deal flow escalation log (if applicable), Dr. Lewis review timestamp, and distribution record. LP-related audit entries are held in a separate restricted log accessible only to Dr. Lewis and the HIVE entity CEO. All audit records are retained for 3 years.

## Deprecation

This skill is deprecated if HIVE implements a dedicated operational intelligence platform that ingests Krista.ai transcripts with native LP confidentiality enforcement and WTI price monitoring integration. Deprecation requires a 30-day parallel validation confirming the replacement meets LP data standards, WTI trigger response time, and Matt Mathison briefing format requirements. Dr. Lewis approves; Matt Mathison confirms.
