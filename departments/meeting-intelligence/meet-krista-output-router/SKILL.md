---
name: meet-krista-output-router
description: "route meeting intelligence outputs, action items to monday.com, summaries to matt mathison, prep sheets to calendar, phi concerns dr lewis, entity routing meeting outputs, jimmy lindsley cc routing, output routing rules meeting, meeting output channels, route decisions meeting, route summaries meeting, route action items, phi alert routing, output format per channel, routing audit log, meeting intelligence distribution, output delivery routing, entity CEO routing outputs, routing meeting intelligence mbl, channel routing meeting outputs"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[output type and entity, e.g., 'action items for HIVE meeting 2026-06-22']"
---

# Krista Output Router

This skill is the distribution layer of the MBL meeting intelligence pipeline — it receives processed outputs from all upstream skills and routes each output type to the correct channel with the correct format and the correct recipients. Nothing goes to Matt Mathison, Monday.com, or any entity channel without passing through this router and its associated rules.

## When to Use

- Upstream processing is complete and outputs need to be distributed to their destination channels
- A specific output type (action items, summary, prep sheet) needs to be routed for a single meeting
- A routing rule needs to be audited (which outputs went where for a given meeting?)
- A PHI concern has been detected mid-pipeline and needs to be re-routed immediately to Dr. Lewis

## Output Router Framework

```
OUTPUT TYPES AND DEFAULT ROUTING
─────────────────────────────
TYPE                    | PRIMARY DESTINATION              | SECONDARY / CC
────────────────────────|──────────────────────────────────|─────────────────────────────
Action Items            | Monday.com (entity board)        | Action item extractor log
Decisions               | Decision registry (SharePoint)   | Entity decision log
Weekly Summary          | Matt Mathison (Outlook email)    | Jimmy Lindsley (CC), SharePoint
Prep Sheet              | Matt Mathison calendar (Outlook) | Matt email, SharePoint
Sentiment Report        | Dr. Lewis (internal only)        | SharePoint
PHI / HIPAA Alert       | Dr. Lewis (immediate, direct)    | Compliance log — no other routing
Entity CEO Summary      | Entity CEO (Outlook)             | Dr. Lewis (CC), SharePoint
Follow-Up Email         | All meeting attendees (Outlook)  | Dr. Lewis (CC), SharePoint
Pipeline Health Report  | Dr. Lewis (internal)             | SharePoint
Meeting Health Report   | Dr. Lewis (internal)             | SharePoint (entity CEOs on request)

ROUTING RULE ENFORCEMENT
─────────────────────────────
Rule 1 — PHI PRIORITY ROUTING:
  If any output is flagged with HIPAA_CONCERN or PHI_DETECTED:
  → Route ONLY to Dr. Lewis via direct alert
  → HALT all other routing for this output set
  → Do not include in any email, Monday.com task, or shared document
  → Log as PHI_ROUTE_OVERRIDE in audit trail

Rule 2 — DR. LEWIS GATE:
  Weekly Summary and Prep Sheet CANNOT route to Matt Mathison without:
  → Dr. Lewis review timestamp logged in routing record
  → Explicit approval flag set on the output
  → If gate not cleared: hold output, alert Dr. Lewis with deadline

Rule 3 — JIMMY LINDSLEY CC:
  CC Jimmy Lindsley on Weekly Summary email ONLY
  Do NOT CC on: prep sheets, sentiment reports, health reports, or entity-specific summaries
  Jimmy receives: the same document as Matt + no additional context

Rule 4 — ENTITY CEO ROUTING:
  Entity CEO receives:
  → Their own entity's action items (via Monday.com notification)
  → Their entity's follow-up email (as primary recipient)
  → Their entity's health report (on request from Dr. Lewis)
  Entity CEO does NOT receive:
  → Matt Mathison's weekly summary
  → Another entity's outputs
  → Sentiment reports (internal only)

Rule 5 — EXTERNAL PARTY ROUTING:
  External parties (vendors, LPs, partners) receive:
  → Commitment confirmation emails only
  → Nothing else from the meeting intelligence pipeline
  → All external emails reviewed by Dr. Lewis before send

ENTITY-SPECIFIC ROUTING OVERRIDES
─────────────────────────────
Allevio: All outputs must pass HIPAA clearance before routing to any channel.
         If any Allevio output lacks HIPAA_CLEARED status → hold, alert Dr. Lewis
HIVE:    LP-related outputs (LP summaries, commitment confirmations) → Dr. Lewis reviews
         before any external LP routing
Column6: Standard routing applies; no entity-specific overrides at this time

OUTPUT FORMAT REQUIREMENTS PER CHANNEL
─────────────────────────────
Monday.com:     Task format (name, owner, due, priority, notes with transcript ID)
Outlook Email:  Plain text or HTML; <500 KB attachment; no executables
SharePoint:     PDF preferred for archival; Word/Markdown for working documents
Calendar Event: PDF attachment; ≤1 page; attached to Matt Mathison's event only

ROUTING AUDIT LOG
─────────────────────────────
For every routing event:
  - Output type, source skill, entity
  - Destination channel and recipient(s)
  - Routing timestamp
  - Dr. Lewis gate status (cleared / not required / pending)
  - HIPAA status
  - Delivery confirmation (email delivered / Monday.com task created / etc.)
```

## Output Format

```markdown
## Routing Log — [Meeting Name or Output Set] | [DATE]

**Routing executed:** [Timestamp]
**Total outputs routed:** [n]
**PHI overrides triggered:** [n]
**Dr. Lewis gate clearances required:** [n] | Cleared: [n]

---

### ROUTING MANIFEST

| Output Type | Entity | Destination | Recipient(s) | Format | Status | Dr. Lewis Gate |
|-------------|--------|-------------|-------------|--------|--------|----------------|
| Action Items | [entity] | Monday.com | [board name] | Task | DELIVERED | Not required |
| Weekly Summary | MBL | Outlook | Matt M / CC: Jimmy L | Email+PDF | DELIVERED | CLEARED [ts] |
| Prep Sheet | MBL | Outlook Calendar | Matt M | PDF | DELIVERED | CLEARED [ts] |
| PHI Alert | Allevio | Direct Alert | Dr. Lewis | Alert | DELIVERED | N/A |
| Commitment Confirm | HIVE | Outlook | [LP Name] | Email | PENDING DR. LEWIS | Required |

---

### ROUTING EXCEPTIONS

| Output | Exception Type | Action Taken |
|--------|---------------|-------------|
| [output] | [PHI Override / Gate Pending / Format Error] | [action] |

---

**All routing complete:** [Yes | No — [n] outputs pending]
```

## Output Contract

- **PHI-flagged outputs must route exclusively to Dr. Lewis and must halt all other routing for that output set — the halt is unconditional and does not depend on the severity of the PHI flag.** The routing layer is the last defense before meeting intelligence outputs reach shared channels. A PHI flag at any severity level indicates that the content has not been appropriately reviewed and cleared for distribution. Routing even a "minor" PHI flag to Monday.com or email while the flag is unresolved exposes MBL to a reportable HIPAA breach. The halt-all rule eliminates any ambiguity about whether "this one seems low-risk enough to pass."

- **The Dr. Lewis gate for weekly summaries and prep sheets must be a logged, timestamped event — not an informal verbal confirmation.** Matt Mathison receives these documents as authoritative briefings from the MBL AI system. If the system can route a document to him without a recorded human review, it eliminates the accountability checkpoint that distinguishes AI-assisted output from AI-autonomous output. The logged gate also creates an audit trail: if a summary or prep sheet contains an error, the review timestamp tells Dr. Lewis exactly when and under what conditions it was approved.

- **Jimmy Lindsley must receive only the weekly summary email — routing any additional meeting intelligence outputs to him without explicit Dr. Lewis direction is a scope creep violation.** Jimmy Lindsley's CC on the weekly summary is a deliberate, bounded role — he receives awareness, not operational briefings. Expanding his routing to include entity summaries, health reports, or prep sheets without explicit direction would be an unauthorized scope expansion that could create information asymmetry or expectation misalignment. The router enforces this boundary by rule, not by judgment on each output.

## System Dependencies

### Reads from
- All upstream skill outputs (action items, decisions, summaries, prep sheets, alerts)
- Dr. Lewis review log (gate clearance confirmation)
- HIPAA status flags (from transcript receiver and transcript processor)
- MBL staff directory (recipient email verification)
- Entity routing rules (Allevio, HIVE overrides)

### Writes to
- Monday.com (action item tasks per entity board)
- Outlook (emails to Matt Mathison, Jimmy Lindsley, entity CEOs, external parties)
- Outlook Calendar (prep sheet attachment to Matt's event)
- SharePoint (archival copy of all routed outputs)
- Routing audit log (every routing event)

### HITL Required
- All weekly summaries and prep sheets before delivery to Matt Mathison
- All HIVE LP external communications
- All Allevio outputs (HIPAA clearance required)
- Any external party communications (vendor, LP, partner)
- Any routing exception or format error

## Test Cases

1. **Golden path:** A Tuesday MBL HoldCo sync produces action items (3 items → Monday.com), a decision (→ decision registry), and a follow-up email (→ all attendees). All three outputs are routed per standard rules. Dr. Lewis gate is required only for the follow-up email (contains Matt Mathison's commitments). Gate is cleared in 12 minutes. All three routing events log successfully. No PHI flags, no exceptions, full manifest complete.

2. **Edge case:** A weekly summary is ready Friday at 3:45 PM, but Dr. Lewis has not cleared the gate as of 4:15 PM (past the 4PM distribution target). The router logs a GATE_PENDING status, does not send the summary to Matt, and sends Dr. Lewis an automated reminder: "Weekly summary gate pending — target distribution time passed. Clear by 5PM Friday or delay to Monday 8AM." Dr. Lewis clears at 4:28 PM; the summary routes to Matt at 4:31 PM with a note in the routing log that distribution was 31 minutes late.

3. **Adversarial case:** A batch of Allevio outputs is ready to route — action items, decisions, and a follow-up email. Two of the five action items were generated from a transcript that is still in HIPAA_SCREENING_REQUIRED status (Dr. Lewis has not yet cleared it). The router detects the mixed HIPAA status, halts routing for the two flagged action items, routes the three cleared items to Monday.com, and holds the follow-up email (which references all five items) until Dr. Lewis clears or redacts the flagged content. The routing manifest shows 3 DELIVERED and 3 HELD, with PHI override reason noted.

## Audit Log

Every routing event is logged to the routing audit trail with: output type, source skill, entity, destination channel, recipient list, routing timestamp, Dr. Lewis gate status and clearance timestamp, HIPAA status at time of routing, delivery confirmation, and any exceptions or overrides applied. PHI override events carry elevated retention (7 years). All other routing logs are retained for 3 years in the MBL AI audit trail.

## Deprecation

This skill should be reviewed if the MBL meeting intelligence pipeline is rebuilt on a workflow orchestration platform (such as Krista.ai's future routing capabilities or a Monday.com automation layer) that handles multi-channel distribution natively. In that scenario, the routing rules should be migrated to the platform's native rule engine while the HIPAA halt rule and Dr. Lewis gate logic must be explicitly re-implemented and validated before this skill is retired.
