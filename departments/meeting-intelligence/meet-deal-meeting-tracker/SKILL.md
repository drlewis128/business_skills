---
name: meet-deal-meeting-tracker
description: "track deal meetings, M&A meeting intelligence, deal flow meeting tracker, LOI meeting tracking, due diligence meeting summary, management presentation meeting intelligence, board meeting deal tracking, negotiation meeting tracker, deal close meeting summary, deal meeting registry, which deals are in meetings, who attends deal meetings, deal stage meeting tracking, deal meeting confidentiality, Matt Mathison deal briefing, daily deal briefing during active deals, deal meeting cadence monitoring, deal meeting intelligence for MBL, M&A meeting synthesis, acquisition meeting tracker"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[deal name or 'all active deals', optional date range]"
---

# Deal Meeting Tracker

This skill tracks all deal-related meetings across MBL Partners and portfolio companies, maintaining a registry of which deals are in what stage, who is attending, and what is being decided. Deal meeting outputs operate under the highest confidentiality standard in the Meeting Intelligence program — Dr. Lewis reviews all outputs before any distribution, and Matt Mathison receives a daily briefing during active deal phases.

## When to Use

- An active deal is in LOI, due diligence, negotiation, or closing phase and Matt Mathison needs a daily intelligence update
- Dr. Lewis requests a deal meeting registry snapshot to assess deal bandwidth across the organization
- A deal meeting occurs and action items need to be captured with deal-level confidentiality controls
- The weekly meeting intelligence cycle identifies new deal-stage meetings that need to be registered

## Deal Meeting Tracker Framework

```
DEAL MEETING INTELLIGENCE — [DEAL NAME OR "ALL ACTIVE DEALS"]
==============================================================

CLASSIFICATION: CONFIDENTIAL — DR. LEWIS REVIEW REQUIRED BEFORE ANY DISTRIBUTION

SECTION 1: DEAL REGISTRY
  Deal Name: [internal code name or placeholder until Dr. Lewis approves public name]
  Entity: [MBL / Allevio / HIVE / Column6 / new acquisition target]
  Deal Type: [Acquisition / Divestiture / Partnership / Investment / Other]
  Current Stage: [Screening / LOI / Diligence / Management Presentation / Board / Negotiation / Closing]
  Primary Deal Owner: [name + role]
  Supporting Cast: [advisors; legal; finance; operations]
  Last Meeting: [date + type]
  Next Meeting: [date + type + agenda if known]

SECTION 2: MEETING HISTORY (CURRENT WEEK)
  For each deal meeting this week:
  - Date / Meeting Type / Attendees (by role) / Duration
  - Key topics discussed
  - Decisions made
  - Action items (owner; due date; confidentiality level)
  - Deal stage movement: [YES — advanced to [stage] / NO — held at [stage]]
  - Concerns or blockers surfaced

SECTION 3: DEAL ACTION ITEM TRACKER
  | Action Item | Owner | Due Date | Status | Confidentiality |
  |-------------|-------|----------|--------|-----------------|
  | ...         | ...   | ...      | ...    | ...             |
  (All deal action items default to CONFIDENTIAL unless Dr. Lewis downgrades)

SECTION 4: DEAL CADENCE MONITORING
  - Meeting cadence for this deal: [daily / 2x week / weekly / ad hoc]
  - Cadence vs. stage expectation: [ON TRACK / BEHIND — [gap] / AHEAD]
  - Days since last meeting with counterparty: [N]
  - Recommended cadence adjustment: [if applicable]

SECTION 5: MATT MATHISON DEAL BRIEFING
  (Generated daily during active LOI / Diligence / Negotiation / Closing phases)
  - BLUF: [1-2 sentences — deal status today]
  - Progress since yesterday: [specific advances or stalls]
  - Today's scheduled deal meetings: [time / type / who]
  - Decisions Matt needs to make today: [if any]
  - Risks surfaced in recent meetings: [top 2]
  - Action items that need Matt's attention: [if any]

SECTION 6: DR. LEWIS REVIEW CHECKLIST
  [ ] No counterparty names in any shared document without Dr. Lewis approval
  [ ] Deal financials not referenced in meeting output without CFO/deal lead approval
  [ ] Action items classified correctly (all deal items default to CONFIDENTIAL)
  [ ] Matt Mathison daily brief approved for distribution
  [ ] Deal registry updated with latest stage and meeting history
```

## Output Format

```markdown
## Deal Meeting Brief — [Deal Code Name] — [DATE]

**Classification:** CONFIDENTIAL
**Stage:** [Current deal stage]
**Dr. Lewis Approved:** [ ] Pending / [x] Approved — [date/time]

**BLUF:** [1-2 sentences — deal status]

**This Week's Meetings:**
- [Date]: [Meeting type] — [Key outcome]
- [Date]: [Meeting type] — [Key outcome]

**Decisions Made:**
- [Decision + who made it]

**Open Action Items:**
| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| ...    | ...   | ... | ...    |

**Next Meeting:** [Date / Type / Agenda]

**Risks:** [Top 2 surfaced in recent meetings]

**Matt Mathison — Decision Required:** [YES — [topic] / NONE]
```

## Output Contract

- **Deal meeting outputs default to CONFIDENTIAL and cannot be downgraded without Dr. Lewis approval.** Unlike standard operational meeting intelligence, deal meeting outputs are never distributed to entity CEOs, operations teams, or any audience beyond the named deal team and Matt Mathison without explicit Dr. Lewis sign-off on each output. This default exists because deal meetings routinely include information that — if disclosed prematurely — can compromise negotiating position, trigger regulatory review requirements, or breach confidentiality agreements with counterparties.

- **Matt Mathison's daily deal briefing is time-sensitive and format-constrained.** During active LOI, due diligence, negotiation, and closing phases, Matt receives a BLUF-first daily briefing by 8am MST covering exactly four elements: what advanced, what is scheduled today, what decisions he needs to make, and what risks surfaced. The briefing is never more than 150 words. More detail is available on request, but the daily brief is a decision-support tool, not an information dump — Matt needs to scan it in under 60 seconds and know what to do.

- **Deal cadence monitoring is an early warning system.** A deal that goes silent — no counterparty meetings for more than 5 business days during an active stage — is flagged to Matt Mathison immediately with an assessment of whether the silence indicates normal process (e.g., counterparty conducting internal review) or a deal health signal (e.g., counterparty pulling back). This flag is generated automatically when the deal registry identifies a cadence gap, and it carries a recommended next action (e.g., "Dr. Lewis recommends a check-in call with [counterparty contact] to reestablish timeline").

## System Dependencies

### Reads from
- Krista.ai transcripts (deal-tagged meetings; deal tags applied by Dr. Lewis at meeting creation)
- Deal registry (maintained in SharePoint under /Deal Intelligence/Active Deals/)
- Monday.com deal board (action item tracking for deal team)

### Writes to
- SharePoint: /Deal Intelligence/[Deal Code]/Meeting-Intelligence/[Date]-meeting-brief.md (restricted)
- Monday.com: Deal action items board (confidential items only visible to deal team members)
- Matt Mathison daily deal briefing (email + Monday.com notification)

### HITL Required
- Dr. Lewis: all deal meeting outputs reviewed and approved before any distribution
- Matt Mathison: daily brief recipient; decision items require his acknowledgment
- Entity CEO or deal lead: consulted by Dr. Lewis before any deal output is distributed to non-deal-team audiences

## Test Cases

1. **Golden path:** Active acquisition deal in diligence phase — 3 deal meetings this week, 8 action items captured, deal advancing, Matt Mathison receives clean daily brief each morning, Dr. Lewis approves each within 1 hour of generation.
2. **Edge case:** A deal meeting occurs in a general MBL leadership meeting (deal mentioned in passing during a broader strategy discussion) — tracker must identify the deal reference, extract only the deal-relevant content, apply CONFIDENTIAL classification to that extract, and present it in the deal brief separately from the broader meeting's output.
3. **Adversarial:** A deal team member mentions the target company's actual name in a meeting transcript. The deal code name has been used in all prior outputs. Tracker must flag the name disclosure to Dr. Lewis immediately, withhold the output until Dr. Lewis determines whether the actual name can be used or whether the transcript must be sanitized before the brief is generated.

## Audit Log

Every deal meeting brief is logged in SharePoint under the deal's restricted folder with the generation timestamp, source transcript IDs, classification level, Dr. Lewis review timestamp and approval, and distribution list. Deal audit logs are retained indefinitely while the deal is active and for 5 years post-close or post-termination. All deal logs are restricted to Dr. Lewis and Matt Mathison by default.

## Deprecation

This skill is deprecated when MBL implements a dedicated deal management platform with native meeting intelligence integration and CONFIDENTIAL data handling. Deprecation requires Dr. Lewis and Matt Mathison approval, a deal-by-deal migration of active deal meeting records to the new platform, and a 60-day parallel run to validate the replacement system meets deal confidentiality and daily briefing SLA requirements.
