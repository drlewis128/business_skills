---
name: meet-column6-brief
description: "Column6 weekly meeting briefing, Column6 operational brief from meetings, CTV meeting intelligence summary, Column6 campaign performance from meetings, agency relationship meeting synthesis, IO pipeline meeting topics, Column6 technology meeting brief, client confidentiality in meeting outputs, gross margin meeting monitoring, Column6 gross margin 35 percent target, Column6 entity CEO briefing, Column6 meeting intelligence, ad performance meeting topics, media meeting summary, Column6 meeting action items, CTV mobile gaming meeting brief, Siprocal meeting synthesis, Column6 weekly ops brief for Matt Mathison, Column6 CCPA meeting compliance"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date, e.g. 2026-06-28]"
---

# Column6 Ops Meeting Brief

This skill synthesizes all Column6-tagged meeting transcripts from Krista.ai into a weekly operational briefing covering campaign performance, agency relationships, IO pipeline, and technology. Client names are never included in shared outputs without Column6 entity CEO approval, and any gross margin figure mentioned in meetings is extracted and flagged against the ≥35% target.

## When to Use

- Weekly meeting intelligence cycle runs for Column6 (every Friday/Monday)
- A gross margin figure discussed in any Column6 meeting falls below the 35% threshold
- A client name or confidential campaign data appears in a transcript destined for the weekly brief
- Matt Mathison requests an ad-hoc Column6 meeting synthesis for a specific period

## Column6 Ops Brief Framework

```
COLUMN6 OPS MEETING BRIEF — WEEK ENDING [DATE]
===============================================

CLIENT CONFIDENTIALITY STATUS: [CLEAR / FLAGGED — ENTITY CEO APPROVAL NEEDED]
GROSS MARGIN TRIGGER: [NOT TRIGGERED / TRIGGERED — [value]% vs. ≥35% target]

SECTION 1: MEETING INVENTORY
  - Total Column6 meetings recorded this week: [N]
  - Meeting types: [Campaign / Agency / IO Pipeline / Technology / Leadership / Finance]
  - Key participants (by role)
  - Meetings without transcripts: [list with reason]

SECTION 2: CAMPAIGN PERFORMANCE
  - Campaign topics discussed (no client names unless CEO-approved)
  - Performance signals mentioned in meetings (pacing; delivery; CPM; completion rates)
  - Campaign issues or escalations raised
  - Action items for campaign team

SECTION 3: AGENCY RELATIONSHIPS
  - Agency relationship topics discussed (agency names allowed; client names not)
  - Relationship health signals (new business; renewals; disputes; growth)
  - Agency commitments made in meetings → action items
  - Pipeline signals for Matt Mathison awareness

SECTION 4: IO PIPELINE
  - Insertion order discussions from meetings
  - Pipeline stage updates mentioned
  - Revenue commitments or at-risk IOs flagged
  - IO action items (owner; due date)

SECTION 5: GROSS MARGIN MONITORING
  - Gross margin discussed in meetings this week: [YES / NO]
  - If YES: value mentioned; context; meeting and speaker
  - Gross margin vs. target (≥35%): [ON TARGET / BELOW TARGET — [value]%]
  - If BELOW TARGET: flag for Column6 CEO + Matt Mathison; include context from meeting

SECTION 6: TECHNOLOGY
  - Platform or technology topics discussed
  - Integration or product issues surfaced
  - Technology action items

SECTION 7: CCPA COMPLIANCE
  - Any consumer data or privacy topics mentioned in meetings: [YES / NO]
  - If YES: topic; sensitivity level; escalation recommendation

SECTION 8: COLUMN6 CEO BRIEFING SUMMARY
  - BLUF: [2 sentences — what the Column6 CEO needs to know this week]
  - Top 3 action items requiring CEO attention
  - Matt Mathison items: [gross margin, pipeline, relationship items requiring MP awareness]

SECTION 9: DR. LEWIS REVIEW CHECKLIST
  [ ] Client confidentiality confirmed (no unapproved client names)
  [ ] Gross margin trigger assessed
  [ ] CCPA topics escalated if applicable
  [ ] Attribution verified for all action items
  [ ] Output approved for distribution to Column6 CEO
```

## Output Format

```markdown
## Column6 Ops Brief — Week Ending [DATE]

**Client Confidentiality:** CLEAR ✓
**Gross Margin Status:** [ON TARGET / BELOW TARGET — [value]% vs. ≥35%]
**Dr. Lewis Approved:** [ ] Pending / [x] Approved — [date]

**BLUF:** [2 sentences — what matters most this week at Column6]

**Campaign Performance:** [3-5 bullet points — no client names]

**Agency Relationships:** [signals; pipeline; action items]

**IO Pipeline:** [status; at-risk; action items]

**Gross Margin:** [status + context from meetings]

**Technology:** [topics; issues; action items]

**CCPA:** [NONE / topic + escalation]

**Top Action Items:**
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | ...    | ...   | ... |

**For Matt Mathison:** [gross margin, pipeline, agency items]
```

## Output Contract

- **Client names in shared documents require explicit Column6 entity CEO approval.** The brief is structured to use campaign descriptors (e.g., "a mid-market retail campaign," "a regional auto dealer IO") rather than client names, so that the weekly brief can be shared across MBL's internal channels without risk of leaking advertiser relationships. When a client name is operationally necessary for Matt Mathison's decision-making, the Column6 CEO approves inclusion and the output is marked as restricted distribution accordingly.

- **Gross margin monitoring is a financial health signal for Matt Mathison, not a performance review trigger.** When gross margin is mentioned in meetings below the 35% threshold, the brief extracts the exact figure, the context of the discussion (e.g., "discussed in Q2 finance review as a below-target result for streaming inventory"), and any remediation steps already being discussed by the team. This gives Matt Mathison the information he needs to ask a focused question in his next Column6 touchpoint rather than requiring a full financial report pull.

- **CCPA topics surface to legal review, not just the weekly brief.** If any discussion in a Column6 meeting touches consumer data handling, opt-out obligations, or data use consent — even informally — the topic is flagged in Section 7 and Dr. Lewis assesses whether legal review is warranted. CTV and mobile advertising operate in a CCPA-sensitive environment, and casual meeting references to consumer data practices can indicate systemic compliance gaps that need attention before they become enforcement exposure.

## System Dependencies

### Reads from
- Krista.ai transcripts (Column6-tagged meetings only)
- Monday.com Column6 board (prior action item status)
- Prior week's Column6 brief (for gross margin trend comparison)

### Writes to
- SharePoint: /Meeting Intelligence/Column6/[Year]/[Month]/[Date]-column6-ops-brief.md
- Monday.com: Column6 action items board
- Dr. Lewis gross margin alert queue (when triggered below 35%)

### HITL Required
- Dr. Lewis: client confidentiality review + full brief approval before distribution
- Column6 entity CEO: receives brief after Dr. Lewis approval; approves any client name inclusions
- Matt Mathison: gross margin alerts and pipeline items in weekly MBL summary

## Test Cases

1. **Golden path:** Week with 7 Column6 meetings, no client names in outputs, gross margin mentioned at 38% (on target), IO pipeline healthy — clean brief produced, approved, Column6 CEO receives on schedule.
2. **Edge case:** A meeting references a well-known brand's campaign using the brand's name casually in a performance discussion — brief must substitute a descriptor for the client name, flag the occurrence for Dr. Lewis noting entity CEO approval is needed if Matt Mathison needs the specific client context, and proceed with the sanitized version.
3. **Adversarial:** A Column6 finance meeting transcript discusses gross margin at 29% for a specific product line but attributes it to a seasonal adjustment that management believes will self-correct. Brief must still flag the below-target figure prominently with the management context included — it cannot allow the "seasonal" framing to suppress the threshold alert to Matt Mathison, who needs the full picture to calibrate his concern level.

## Audit Log

Every Column6 Ops Brief is logged in SharePoint with the generation timestamp, source transcript IDs, client confidentiality review status, gross margin trigger log (if applicable), Dr. Lewis review timestamp, Column6 CEO approval for any client names included, and distribution record. Audit records are retained for 3 years per the Meeting Intelligence retention policy.

## Deprecation

This skill is deprecated if Column6 implements a dedicated operational intelligence platform that ingests Krista.ai transcripts natively with client confidentiality controls and gross margin monitoring integration. Deprecation requires Dr. Lewis and Column6 entity CEO approval, a 30-day parallel validation, and Matt Mathison confirmation that the replacement meets his briefing format and gross margin alert requirements.
