---
name: portops-ma-pipeline-tracker
description: "track M&A pipeline, deal stages for MBL, acquisition pipeline status, IOI LOI due diligence close stages, probability-weighted deal pipeline, Matt Mathison deal briefing, deal source tracking broker direct Morgan Sills, add-on platform new vertical deal type, HIVE WTI oil gas acquisition gate, Allevio healthcare add-on pipeline, weekly deal pipeline summary, active deals by stage, deal value estimate probability, pipeline dashboard, deal mix by type, acquisition funnel MBL portfolio, pipeline report for LP, M&A deal tracking private equity, deal sourcing broker fee implications, MBL acquisition pipeline update"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<optional: deal name, stage filter, or entity focus (Allevio/HIVE/Column6/new)>"
---

# M&A Pipeline Tracker

MBL Partners manages a multi-entity acquisition pipeline spanning healthcare (Allevio add-ons), oil & gas (HIVE Partners), ad tech (Column6), and new platform opportunities. This skill tracks every deal from prospect identification through close, maintains probability-weighted pipeline value, and produces the weekly Matt Mathison deal briefing during active acquisition periods.

## When to Use

- Producing the weekly deal pipeline summary for Matt Mathison during active acquisition periods
- Updating deal stage, probability, or value after a broker call, IOI submission, or LOI event
- Flagging HIVE deals that hit the WTI <$58/bbl gate and need to be paused
- Generating a probability-weighted pipeline snapshot for LP reporting or board prep
- Reconciling Morgan Sills' end-of-week Allevio deal updates into the master pipeline

## M&A Pipeline Tracker Framework

```
PIPELINE OVERVIEW
  Total active deals by stage: Prospect | IOI | LOI | Due Diligence | Closing
  Probability-weighted pipeline value: sum of (deal_value × stage_probability)
  Deal type mix: add-on (Allevio/HIVE/Column6) | new platform | new vertical
  Average deal size; largest deal in pipeline; oldest deal in pipeline

DEAL STAGE DEFINITIONS
  Prospect:      Identified; not yet engaged; internal interest only; no seller contact
  IOI:           Letter of Interest sent; seller aware; preliminary terms discussed
  LOI:           Letter of Intent signed by Matt Mathison; exclusivity typically in effect
  Due Diligence: Active DD underway across all workstreams; DD tracker activated
  Closing:       Definitive agreement signed; closing conditions being satisfied

DEAL TYPE CLASSIFICATION
  Add-on — Allevio:   Healthcare MSO targets; Morgan Sills primary source; HIPAA DD required
  Add-on — HIVE:      Oil & gas upstream/midstream; WTI gate applies; Uinta Basin preferred
  Add-on — Column6:   CTV/ad tech targets; gross margin ≥35% threshold required
  New Platform:       Net-new operating entity for MBL portfolio; full DD + THRIVE audit
  New Vertical:       Adjacent category entry; requires Matt Mathison strategic approval

SOURCE TRACKING
  Broker-sourced:   Intermediary engaged; seller-side fee applies; note firm and fee %
  Direct:           Company or founder reached out or MBL initiated; no broker fee
  Morgan Sills:     Allevio healthcare add-on pipeline; end-of-week deal update cadence
  Inbound referral: LP, advisor, or portfolio CEO referral; note relationship
  Conference/event: MBL team sourced at industry event; note event and team member

PROBABILITY-WEIGHTED PIPELINE
  Prospect:        5% weight × estimated deal value
  IOI:            15% weight × estimated deal value
  LOI:            40% weight × estimated deal value
  Due Diligence:  65% weight × estimated deal value
  Closing:        85% weight × estimated deal value
  TOTAL WEIGHTED VALUE: sum across all active deals

WTI GATE FOR HIVE ACQUISITIONS
  Rule: HIVE acquisitions paused if WTI crude <$58/bbl for 2+ consecutive weeks
  Current WTI price: [pull from market data or user-supplied]
  Gate status: OPEN (WTI ≥$58) | PAUSED (WTI <$58 for 2+ weeks)
  Active HIVE deals under gate: [list — each flagged as HOLD]
  Gate lift condition: WTI ≥$58/bbl for 5+ consecutive trading days

MATT MATHISON DEAL BRIEFING (Weekly — Active Periods Only)
  One-page summary per week when ≥1 deal is at IOI stage or beyond
  Deal-by-deal: name | type | stage | value estimate | source | next action | owner | ETA
  Escalation flags: deals stuck >2 weeks at stage; WTI gate hits; HIPAA triggers
  Sent: Monday morning before weekly leadership sync

PIPELINE DASHBOARD TEMPLATE
  Reporting date | Total deals | Total gross EV | Probability-weighted EV
  Deals added this week | Deals advanced this week | Deals killed this week
  Next Matt action required (LOI sign, briefing review, WTI gate decision)
```

## Output Format

```markdown
## MBL M&A Pipeline — Week of [DATE]

### Pipeline Summary
| Stage | Deals | Est. Value | Weighted Value |
|-------|-------|------------|----------------|
| Prospect | # | $XM | $XM |
| IOI | # | $XM | $XM |
| LOI | # | $XM | $XM |
| Due Diligence | # | $XM | $XM |
| Closing | # | $XM | $XM |
| **TOTAL** | **#** | **$XM** | **$XM** |

WTI Gate: [OPEN / PAUSED — $XX.XX/bbl as of DATE]

### Active Deals
| Deal | Type | Stage | Value Est. | Source | Next Action | Owner | ETA |
|------|------|-------|------------|--------|-------------|-------|-----|
| [Name] | [Type] | [Stage] | $XM | [Source] | [Action] | [Owner] | [Date] |

### Flags & Escalations
- [Any deal stuck, WTI gate hit, HIPAA trigger, Matt signature needed]

### Pipeline Notes
[Morgan Sills update, broker conversations, new prospects added this week]
```

## Output Contract

- Every deal in the pipeline must have a stage, deal type, estimated value, source, next action, and named owner. Incomplete records are flagged with [MISSING DATA] rather than silently omitted, because a hidden deal is worse than an imperfect record — Matt Mathison's deal briefing is only as good as the data behind it, and an undocumented deal that later closes creates LP reporting gaps.
- Probability weights are fixed at the stage-level values defined in the framework and never adjusted deal-by-deal unless Matt Mathison explicitly overrides with a documented rationale. Consistent weights make the pipeline comparable week-over-week and prevent optimism bias from inflating the weighted total in LP-facing materials.
- The WTI gate check is mandatory for every HIVE deal at any stage before any weekly briefing is issued. A HIVE deal advancing during a gate-pause period must be flagged with a HOLD banner in the output and Dr. Lewis must be notified immediately — proceeding without the gate check risks committing capital into a down-commodity environment against MBL's stated investment policy.

## System Dependencies

**Reads from:** Morgan Sills weekly deal update emails (Allevio pipeline); broker deal memos and NDAs; Matt Mathison deal notes; WTI spot price feed (user-supplied or market reference)
**Writes to:** Pipeline tracker (Monday.com board or shared spreadsheet); Matt Mathison weekly briefing document (M365/email)
**HITL Required:** Any deal advancing from Prospect to IOI requires Dr. Lewis confirmation; LOI stage requires Matt Mathison authorization before execution; WTI gate override requires Matt Mathison explicit written approval

## Test Cases

- **Golden path:** Morgan Sills submits Friday update with two new Allevio prospects and one existing IOI advancing to LOI. Tracker updates all three, flags LOI for Matt signature, applies HIPAA flag to healthcare targets, and outputs Monday briefing with probability-weighted pipeline change summary.
- **Edge case:** WTI drops to $55/bbl mid-week. HIVE deal currently at LOI stage. Tracker immediately flags HOLD, notifies Dr. Lewis, and notes gate status in the next Matt briefing even though it is not Monday — gate events are not deferred to the weekly cadence.
- **Adversarial:** User attempts to advance a HIVE deal to Due Diligence during a documented WTI gate-pause without providing a Matt Mathison override authorization code. Skill blocks the stage advancement and outputs an escalation flag rather than silently updating the record.

## Audit Log

Every pipeline update — stage change, value revision, source update, WTI gate flag, or Matt Mathison briefing delivery — is logged with timestamp, user, prior state, and new state. Audit entries are append-only and stored alongside the pipeline tracker. This log satisfies LP-level transparency requirements and provides the evidentiary record if a deal outcome is later questioned by a limited partner, outside counsel, or in the course of a regulatory examination.

## Deprecation

This skill is retired when MBL Partners deploys a dedicated deal management system (e.g., a Krista.ai-integrated CRM pipeline module) that natively tracks deal stages, probability weighting, and WTI gates with automated briefing generation. At that point, portops-ma-pipeline-tracker transitions to a configuration and override skill rather than primary tracker, and this SKILL.md is archived with a pointer to the replacement system.
