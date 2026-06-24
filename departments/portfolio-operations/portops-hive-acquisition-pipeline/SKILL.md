---
name: portops-hive-acquisition-pipeline
description: "HIVE acquisition pipeline, LOI tracker HIVE, acreage deal pipeline, oil and gas acquisition status, Uinta Basin deal flow, geological risk assessment, WTI acquisition gate, deal stage tracker HIVE, LOI sign-off tracker, due diligence workstream, acquisition pause WTI trigger, HIVE deal pipeline, Matt LOI approval, oil field acquisition monitor, deal value tracker, acreage evaluation, HIVE M&A pipeline, acquisition risk flag, deal thesis HIVE, pipeline coordinator Dr. Lewis"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "optional: deal ID or 'all', stage filter (LOI | DD | PAUSED | CLOSED), or 'WTI gate check'"
---

# HIVE Acquisition Pipeline

HIVE Partners pursues oil and gas acreage acquisitions in the Uinta Basin with a WTI-gated investment policy — when WTI trades below $58/bbl for two or more consecutive weeks, all new LOI activity is paused and existing pipeline advancement halts pending Matt Mathison's direction. This skill tracks the full prospect-to-close pipeline, enforces the WTI gate automatically, and ensures no LOI advances without Dr. Lewis staging and explicit Matt Mathison sign-off.

## When to Use

- A new acreage opportunity enters the pipeline and needs a deal record created with geological risk score
- An LOI is ready to advance — confirm WTI gate is open and Matt sign-off is queued
- WTI price has been below $58/bbl for two or more consecutive weeks — freeze pipeline and notify Matt
- An active deal requires a due diligence workstream status check across legal, geological, financial, and environmental tracks
- Weekly pipeline brief for Dr. Lewis showing stage distribution, aggregate deal values, and gate status

## HIVE Acquisition Pipeline Framework

```
PIPELINE OVERVIEW
  Active LOIs: count, aggregate acreage under LOI, aggregate estimated deal value
  Prospects: count, acreage, preliminary value estimate
  Deals in due diligence: count, workstream completion % by track
  Deals in closing: count, expected close date, Matt Mathison approval status
  Total pipeline: aggregate acreage and dollar value across all active stages

WTI GATE LOGIC
  Daily WTI monitoring: NYMEX front-month WTI spot price
  Gate condition: WTI < $58.00/BBL for 14+ consecutive calendar days
  Gate action: ALL new LOI submissions flagged PAUSED immediately on day 14
  Gate action: ALL deals at Screening, LOI, DD stages frozen — no advancement permitted
  Notification: Dr. Lewis (immediate) + Entity CEO (same day) + Matt Mathison (same day)
  Override authority: Matt Mathison only; override must be in writing and logged
  Resume condition: WTI >= $58.00/BBL for 5+ consecutive trading days
  Resume action: Dr. Lewis confirms gate open; Matt Mathison re-approves each paused deal individually

DEAL STAGE TRACKING
  Stage 1 — Prospect: acreage identified; geological risk scored; no capital commitment
  Stage 2 — Initial Interest: operator contact made; production data requested
  Stage 3 — IOI (Indication of Interest): non-binding; economic model run at WTI scenarios
  Stage 4 — LOI (Letter of Intent): WTI gate check required; Matt Mathison approval required
  Stage 5 — Due Diligence: legal, geological, financial, environmental workstreams active
  Stage 6 — Closing: final Matt Mathison approval; legal closing checklist completion
  PAUSED: WTI gate triggered; applicable to Stages 2 through 5
  Days in stage tracked for all active deals; >90 days in any single stage triggers a review flag

GEOLOGICAL RISK ASSESSMENT
  Required at Stage 1 (Prospect) and updated at Stage 4 (LOI)
  Fields: formation (Green River, Wasatch, etc.), average depth (ft), EUR estimate (MBOE)
  Reserve classification: Proved / Probable / Possible (SEC definitions)
  Offset well data quality: High (3+ producing offsets) / Medium (1-2 offsets) / Low (no offsets)
  Geological risk score: High / Medium / Low — "Unknown" is not permitted past Stage 1
  Reserve report from third-party engineer required before Stage 5 (Due Diligence) advances

DEAL VALUE ESTIMATION
  Per-BOE acquisition cost: total purchase price / proved EUR (MBOE x 1000)
  NPV modeling: at $60, $65, $70/BBL WTI; discount rate per HIVE investment policy
  Purchase price per acre: total price / gross acreage
  IRR at acquisition price: modeled at $60/$65/$70 WTI with type curve from geological report
  Deal economics must show positive IRR at $60/BBL before advancing to LOI stage

DUE DILIGENCE CHECKLIST
  Legal: title search complete, title defects cleared, purchase agreement reviewed
  Environmental: Phase 1 ESA complete, no recognized environmental conditions (RECs) outstanding
  Geological: third-party reserve report received, EUR range confirmed
  Regulatory: DOGM permit status verified, existing violations cleared
  Financial: seller financials reviewed, working interest and NRI confirmed
  Each workstream tracked as % complete; any blocker flags the deal as BLOCKED regardless of other tracks

MATT MATHISON APPROVAL PROTOCOL
  All LOIs (Stage 4): Dr. Lewis stages the LOI document → Matt Mathison reviews and signs
  All deals >$500K total consideration: Matt Mathison explicit written approval required at each stage gate
  All deal closings: Matt Mathison final approval before wire authorization
  No LOI may be transmitted to seller without a logged Matt approval event

WEEKLY PIPELINE BRIEF
  Distributed to Dr. Lewis and Matt Mathison during active acquisition periods
  Content: WTI gate status, stage distribution summary, Matt sign-off queue, DD blockers
  Format: one-page BLUF with deal detail appendix
```

## Output Format

```markdown
# HIVE Acquisition Pipeline — [Date]
**Prepared by:** Dr. John Lewis | **Data reviewed:** [Yes/Pending]

## WTI Gate Status
- Current WTI: $[XX.XX]/BBL | Consecutive days below $58: [N]
- **Pipeline Status:** [ACTIVE / PRE-WARN (day [N] of 14) / FROZEN — Matt Mathison notified [date]]

## Pipeline Summary
| Stage          | Deal Count | Total Acreage | Aggregate Value |
|----------------|------------|---------------|-----------------|
| Prospect       | [N]        | [X] acres     | $[X]M est.      |
| Initial Interest| [N]       | [X] acres     | $[X]M est.      |
| IOI            | [N]        | [X] acres     | $[X]M est.      |
| LOI            | [N]        | [X] acres     | $[X]M est.      |
| Due Diligence  | [N]        | [X] acres     | $[X]M est.      |
| Closing        | [N]        | [X] acres     | $[X]M           |
| PAUSED         | [N]        | [X] acres     | $[X]M est.      |

## Active Deal Detail
| Deal ID | Stage | Acreage | Est. Value | Geo Risk | Days in Stage | Next Action       |
|---------|-------|---------|------------|----------|---------------|-------------------|
| [ID]    | LOI   | [X]     | $[X]M      | Medium   | [N]           | Matt sign-off     |
| [ID]    | DD    | [X]     | $[X]M      | Low      | [N]           | Legal title clear |

## Matt Sign-Off Queue
- [Deal ID] — [Acreage], $[X]M est. — LOI ready; geological risk: [Level]; WTI gate: [OPEN/CLOSED]

## Due Diligence Workstreams
| Deal ID | Legal | Geological | Financial | Environmental | Regulatory | Blocker? |
|---------|-------|------------|-----------|---------------|------------|----------|
| [ID]    | [X]%  | [X]%       | [X]%      | [X]%          | [X]%       | [Yes/No] |

## WTI Scenario Economics (Active LOI/DD Deals)
| Deal ID | IRR @$60 | IRR @$65 | IRR @$70 | Go/No-Go |
|---------|----------|----------|----------|----------|
| [ID]    | [X]%     | [X]%     | [X]%     | GO       |
```

## Output Contract

- WTI gate status must appear at the top of every pipeline report with the current WTI price and consecutive-day count explicitly stated — the gate status is never implied or buried. A pipeline report with an ambiguous or missing gate status is invalid because the gate is the primary investment policy control governing HIVE's acquisition activity.
- No LOI record may show status "transmitted" or "executed" without a logged Matt Mathison approval event including timestamp, method of approval, and deal ID. The absence of this record is a hard block on deal advancement; an LOI transmitted without Matt's approval is a governance violation that must be escalated immediately to Dr. Lewis and Matt regardless of the deal's merits.
- Geological risk must be scored using the defined rubric on every deal at Prospect stage or later. "Unknown" is not an acceptable risk rating past Stage 1 because LOI pricing and NPV modeling depend on reserve estimates; advancing a deal with an unknown geological risk score creates capital exposure without a risk-adjusted decision framework.

## System Dependencies

**Reads from:** Covercy (existing HIVE asset benchmarks for comparative production modeling), QuickBooks (cost actuals for active DD cost tracking), WTI spot price feed (gate logic, scenario economics), SharePoint (geological reports, LOI drafts, DD documents under HIVE / Acquisitions / [Deal ID])
**Writes to:** Monday.com (deal stage cards, due diligence task boards, Matt sign-off tasks, WTI gate alert cards), SharePoint (deal records and audit trail), email (WTI pause notifications to Dr. Lewis, entity CEO, and Matt Mathison)
**HITL Required:** Every LOI advancement requires Dr. Lewis staging confirmation then Matt Mathison written approval; WTI gate PAUSE declaration requires Dr. Lewis confirmation and Matt Mathison notification; deal closure requires Matt Mathison final approval and wire authorization; WTI recovery re-activation requires Dr. Lewis gate confirmation and Matt Mathison individual deal re-approval

## Test Cases

- **Golden path:** Active deal at Screening stage with WTI at $62/bbl, geological risk scored Medium, IRR positive at $60/bbl scenario, economic model complete — pipeline advances deal to IOI then LOI stage, Matt sign-off task created in Monday.com with deal summary, no gate warnings triggered
- **Edge case:** WTI falls to $57.90/bbl on day 14 (first day of week 2 threshold) — gate must fire PAUSED status on that exact day's run, not at end of week; all deals at Stages 2 through 5 freeze simultaneously; Matt Mathison notification sends within the same reporting cycle, not deferred to next morning
- **Adversarial:** LOI record in Monday.com shows "executed" status but the pipeline audit log contains no Matt Mathison approval event for that deal ID — system must flag this as a governance violation, escalate to Dr. Lewis immediately, freeze any further advancement of that deal, and hold the state until the approval gap is resolved or the LOI is formally voided

## Audit Log

Every pipeline state change logs: deal ID, prior stage, new stage, WTI price at time of change, initiating agent run ID, Dr. Lewis staging confirmation timestamp, Matt Mathison approval timestamp and method (email, verbal-confirmed, signed document). WTI gate PAUSE and RESUME events are logged as critical events in a separate compliance log entry in SharePoint under HIVE Partners / Acquisitions / Compliance / Pipeline Audit Logs, retained for 7 years. All deal records are retained indefinitely until the underlying asset is sold or the deal is formally abandoned.

## Deprecation

This skill is deprecated when HIVE Partners completes its Uinta Basin acquisition strategy and enters a pure operations-and-exit phase with no new LOI activity, or when a dedicated deal management platform integrating with Covercy replaces the Monday.com-based tracking workflow. Deprecation requires Matt Mathison sign-off, a full export of all deal records to the successor system verified by Dr. Lewis, and confirmation that the WTI gate logic is replicated in the successor system before this skill is retired.

---

MBL CONTEXT:
- MBL Partners = private equity holding firm; Matt Mathison = Managing Partner (final authority)
- Dr. John Lewis = Principal Systems Engineer & Director of AI Strategy
- HITL chain: Dr. Lewis → entity CEO → Matt Mathison
- HIVE Partners = oil & gas; Uinta Basin UT; LP returns; Covercy (ops system); WTI $58/bbl for 2+ consecutive weeks → PAUSE new acquisitions; BBL/day production metric; key metric is BOE (barrel of oil equivalent)
- THRIVE = Truth, Hustle, Respect, Integrity, Value, Enjoy
