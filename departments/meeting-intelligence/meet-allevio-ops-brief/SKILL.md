---
name: meet-allevio-ops-brief
description: "allevio weekly meeting briefing, allevio operational brief from meetings, allevio clinical ops meeting summary, allevio employer relationship meeting synthesis, allevio billing meeting intelligence, allevio compliance meeting topics, allevio meeting intelligence brief, PHI guard for meeting outputs, HIPAA meeting transcript protection, PMPM metrics from meetings, allevio regulatory topics from meetings, allevio entity CEO briefing, allevio meeting synthesis, healthcare meeting intelligence, MSO meeting summary, allevio operations weekly report from transcripts, allevio meeting action items, allevio compliance escalation from meetings"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date, e.g. 2026-06-28]"
---

# Allevio Ops Meeting Brief

This skill synthesizes all Allevio-tagged meeting transcripts from Krista.ai into a weekly operational briefing for the Allevio entity CEO and Matt Mathison, covering clinical ops, employer relationships, billing performance, and compliance. Every output passes through a mandatory PHI guard — no individually identifiable health information ever appears in meeting intelligence outputs.

## When to Use

- Weekly meeting intelligence cycle runs for the Allevio entity (every Friday/Monday)
- A compliance or regulatory topic surfaces in any Allevio meeting transcript during the week
- PMPM or billing metrics are discussed in an Allevio meeting and need to be flagged for Matt
- Dr. Lewis requests an ad-hoc Allevio meeting synthesis for a specific time period

## Allevio Ops Brief Framework

```
ALLEVIO OPS MEETING BRIEF — WEEK ENDING [DATE]
===============================================

PHI GUARD STATUS: [CLEAR / FLAGGED — DO NOT DISTRIBUTE]
  If FLAGGED: stop processing; notify Dr. Lewis immediately before continuing

SECTION 1: MEETING INVENTORY
  - Total Allevio meetings recorded this week: [N]
  - Meeting types: [Clinical Ops / Employer Relations / Billing / Compliance / Leadership]
  - Participants (by role, not name if PHI risk exists)
  - Meetings without transcripts: [list with reason]

SECTION 2: CLINICAL OPS
  - Key topics discussed
  - Decisions made
  - Action items generated (owner; due date)
  - Escalations or concerns flagged in meetings
  - PHI check: CLEAR / FLAGGED

SECTION 3: EMPLOYER RELATIONSHIPS
  - Employer accounts discussed (company names only — no member details)
  - Relationship health signals (renewal concerns; expansion opportunities; complaints)
  - Action items for employer success team
  - Escalations requiring Allevio CEO or Matt Mathison attention

SECTION 4: BILLING & REVENUE CYCLE
  - PMPM metrics mentioned in meetings → extract value + context
  - PMPM trend signal: [↑ / ↓ / stable vs. prior discussion]
  - Billing or RCM issues surfaced in meetings
  - Action items for billing / Marshall Medical Billing coordination

SECTION 5: COMPLIANCE & REGULATORY
  - Any compliance topic mentioned in meetings this week: [YES / NO]
  - If YES: topic description (no PHI); severity assessment; recommended escalation path
  - Regulatory deadlines or filings discussed
  - HIPAA-related meeting topics (handled with extra sensitivity)

SECTION 6: ALLEVIO CEO BRIEFING SUMMARY
  - BLUF: [2 sentences — what the CEO needs to know this week]
  - Top 3 action items requiring CEO attention
  - Decisions requiring CEO input or approval
  - Matt Mathison items: [items that require Managing Partner awareness]

SECTION 7: DR. LEWIS REVIEW CHECKLIST
  [ ] PHI guard confirmed CLEAR
  [ ] No LP or NDA-protected data in output
  [ ] PMPM values in context (not raw member count data)
  [ ] Compliance topics escalated if severity ≥ medium
  [ ] Attribution verified for all action items
  [ ] Output approved for distribution to Allevio CEO
```

## Output Format

```markdown
## Allevio Ops Brief — Week Ending [DATE]

**PHI Guard:** CLEAR ✓
**Dr. Lewis Approved:** [ ] Pending / [x] Approved — [date]

**BLUF:** [2 sentences — what matters most this week at Allevio]

**Clinical Ops:** [3-5 bullet points]

**Employer Relationships:** [key accounts; signals; action items]

**Billing / PMPM:** [metrics mentioned; trend; action items]

**Compliance:** [NONE THIS WEEK / topic + severity + escalation]

**Top Action Items:**
| # | Action | Owner | Due |
|---|--------|-------|-----|
| 1 | ...    | ...   | ... |

**For Matt Mathison:** [items requiring Managing Partner awareness]
```

## Output Contract

- **PHI is a hard stop, not a filter.** If any individually identifiable health information — member names, SSNs, diagnoses, claims details, eligibility status for a named individual — appears in a transcript, the output process halts immediately. The entire draft is withheld, Dr. Lewis is notified with the specific flagged content identified, and no partial output is distributed. A HIPAA breach assessment is initiated. This is not a review step — it is a gate that cannot be bypassed under any circumstance.

- **PMPM metrics require context, not raw data.** When PMPM figures are extracted from transcripts, the output includes the value, the meeting context in which it was discussed (e.g., "discussed in employer renewal call as below-target"), and the trend direction relative to prior discussions. Raw PMPM numbers without context can be misread; the brief exists to give Matt Mathison and the Allevio CEO enough signal to act, not enough data to second-guess without understanding the conversation.

- **Compliance escalation is mandatory and immediate.** Any compliance or regulatory topic mentioned in an Allevio meeting — regardless of how casually it was raised — must appear in Section 5 with a severity assessment. Medium or higher severity items are escalated to Dr. Lewis before the weekly brief is distributed. The entity CEO is notified of high-severity compliance topics via direct communication from Dr. Lewis, separate from the weekly brief, within 4 hours of identification.

## System Dependencies

### Reads from
- Krista.ai transcripts (Allevio-tagged meetings only)
- Monday.com Allevio board (prior action item status)
- Prior week's Allevio Ops Brief (for PMPM trend comparison)

### Writes to
- SharePoint: /Meeting Intelligence/Allevio/[Year]/[Month]/[Date]-allevio-ops-brief.md (access restricted)
- Monday.com: Allevio action items board
- Dr. Lewis notification queue: PHI flags, compliance escalations

### HITL Required
- Dr. Lewis: PHI guard review + full brief approval before any distribution
- Allevio entity CEO: receives brief after Dr. Lewis approval
- Matt Mathison: receives Allevio section of weekly MBL summary (not full brief)

## Test Cases

1. **Golden path:** Week with 8 Allevio meetings, no PHI detected, PMPM trending up, one compliance topic (low severity), 12 action items extracted — brief produced cleanly, Dr. Lewis approves, Allevio CEO receives within SLA.
2. **Edge case:** A meeting transcript references a specific employer group's member utilization breakdown — this is aggregate employer data, not individual PHI. Brief must correctly distinguish aggregate employer metrics (allowed with employer name) from individual member data (not allowed) and proceed with the appropriate section populated.
3. **Adversarial:** A transcript includes a clinical staff member casually mentioning a patient by first name in passing during a billing discussion. PHI guard must catch the name reference, halt output, notify Dr. Lewis with the exact transcript line, and trigger HIPAA breach assessment protocol — even though the mention was incidental and not the meeting's subject.

## Audit Log

Every Allevio Ops Brief is logged in SharePoint with the generation timestamp, list of source transcript IDs, PHI guard result, Dr. Lewis review timestamp and approval status, and distribution list. The audit log is retained for a minimum of 3 years per the Meeting Intelligence retention policy. Any PHI flag events are logged separately in a HIPAA incident register maintained by Dr. Lewis.

## Deprecation

This skill is deprecated if Allevio implements its own dedicated operational reporting system that ingests Krista.ai transcripts directly with HIPAA-compliant PHI handling, eliminating the need for a manual synthesis step. Deprecation requires Dr. Lewis approval, a 30-day parallel-run validation that the replacement system matches PHI guard standards, and Matt Mathison sign-off that the replacement meets his briefing format requirements.
