---
name: portops-portfolio-health-dashboard
description: "portfolio health dashboard, real-time portfolio status, entity health overview, portfolio health report, weekly portfolio brief, entity status check, Matt weekly one-pager, portfolio green yellow red status, portfolio summary for managing partner, WTI trigger monitoring, portfolio entity scorecard, all entities health, portfolio health for Matt, weekly portfolio summary, portfolio at a glance, entity health signal, portfolio rollup, MBL portfolio dashboard, four entity status, portfolio health check"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "week ending date, any known entity flags or incidents to highlight"
---

# Portfolio Health Dashboard

This skill produces the weekly one-page portfolio health dashboard delivered to Matt Mathison every Monday, summarizing the 🟢/🟡/🔴 health status of all four MBL portfolio entities: Allevio, HIVE Partners, Column6/Siprocal, and MBL HoldCo. It surfaces the critical signals — WTI trigger status, PMPM trend, gross margin, and cash runway — so Matt can identify where attention is needed in under two minutes.

## When to Use

- Generating the weekly Monday briefing for Matt Mathison on all portfolio entities
- Responding to Matt or Dr. Lewis asking "how is the portfolio doing this week?"
- Producing a rapid health snapshot before a board call, LP conversation, or deal review
- Escalating a 🔴 status entity that requires same-day leadership attention

## Portfolio Health Dashboard Framework

```
PORTFOLIO HEALTH DASHBOARD — WEEK ENDING [DATE]
Prepared by: Dr. John Lewis | For: Matt Mathison

═══════════════════════════════════════════════════════
ENTITY HEALTH OVERVIEW
═══════════════════════════════════════════════════════

[🟢/🟡/🔴] ALLEVIO (Healthcare MSO)
  Signal: PMPM $[X] | Members: [X] | Employers: [X]
  Clinical: [status] | RCM: DSO [X] days | Compliance: [status]
  Key Alert: [top concern or NONE]

[🟢/🟡/🔴] HIVE PARTNERS (Oil & Gas)
  Signal: WTI $[X]/bbl — [ABOVE/BELOW/AT] $58 TRIGGER
  Production: [X] BBL/day | LOI Pipeline: [X] active
  WTI Acquisition Gate: [OPEN / PAUSED — Week [X] of 2]
  Key Alert: [top concern or NONE]

[🟢/🟡/🔴] COLUMN6 / SIPROCAL (CTV/Mobile/Gaming)
  Signal: Gross Margin [X]% — [ABOVE/BELOW ≥35% THRESHOLD]
  IO Pipeline: [X] active | Agency Tiers: [X] Tier-1
  CCPA Status: [compliant/flag] | Key Alert: [concern or NONE]

[🟢/🟡/🔴] MBL HOLDCO (Management Company)
  Signal: Cash [X]-month runway | Overhead Ratio: [X]%
  Systems: M365/Krista.ai/QuickBooks/Bill.com [UP/FLAG]
  Strategic Initiatives: AI Phase [X] | Key Alert: [concern or NONE]

═══════════════════════════════════════════════════════
PORTFOLIO CRITICAL FLAGS
═══════════════════════════════════════════════════════
[List any 🔴 items requiring Matt's same-day decision]
[NONE if all entities 🟢 or 🟡]

═══════════════════════════════════════════════════════
RECOMMENDED ACTIONS THIS WEEK
═══════════════════════════════════════════════════════
1. [Action → Owner → Due]
2. [Action → Owner → Due]
3. [Action → Owner → Due]

═══════════════════════════════════════════════════════
WTI ACQUISITION GATE STATUS
═══════════════════════════════════════════════════════
Current WTI: $[X]/bbl | Trigger: $58/bbl for 2+ weeks
Week 1 below trigger: [date or N/A]
Week 2 below trigger: [date or N/A — if reached, PAUSE]
Gate Status: [OPEN / PAUSED]
```

## Output Format

```markdown
## MBL PORTFOLIO HEALTH — [WEEK ENDING DATE]

**Overall Portfolio:** [🟢 All Clear / 🟡 Watch / 🔴 Action Required]

| Entity | Status | Top Signal | Key Alert |
|--------|--------|------------|-----------|
| Allevio | 🟢/🟡/🔴 | PMPM $X | [flag or —] |
| HIVE | 🟢/🟡/🔴 | WTI $X / BBL X | [flag or —] |
| Column6 | 🟢/🟡/🔴 | GM X% | [flag or —] |
| MBL HoldCo | 🟢/🟡/🔴 | Cash Xmo | [flag or —] |

**Matt's Actions Required:** [numbered list or NONE]
**Dr. Lewis Follow-ups:** [numbered list]
```

## Output Contract

- The dashboard must always include WTI acquisition gate status for HIVE, even when green, because the two-week consecutive rule means a single week below $58 must be tracked immediately to avoid a delayed response when the second week triggers. Missing this signal for even one cycle can result in a LOI commitment made after the gate should have closed.
- Allevio health signals must use only aggregate, de-identified data — PMPM, member count, employer count, DSO. No individual member or patient data may appear in any form in this output. Violating this constraint is a HIPAA violation and could expose MBL Partners to regulatory liability.
- The 🔴 status for any entity triggers a same-day notification requirement to Matt Mathison and the relevant entity CEO. The dashboard must explicitly name the escalation path and responsible party so there is no ambiguity about who acts and by when.

## System Dependencies

**Reads from:** Covercy (HIVE production/WTI), AdvancedMD aggregate (Allevio), Column6 internal reporting, QuickBooks (MBL cash), Monday.com (initiative status), Krista.ai (system health)
**Writes to:** Monday.com (weekly board item), Matt Mathison email/Teams
**HITL Required:** Dr. Lewis reviews before sending to Matt; any 🔴 entity requires Matt same-day acknowledgment

## Test Cases

- **Golden path:** All four entities 🟢, WTI above $58, Column6 GM at 38%, Allevio PMPM stable — produces clean one-page with no escalations
- **Edge case:** WTI at $57.50 entering week 1 of potential trigger — dashboard correctly flags "Week 1 of 2 — monitor" and sets reminder for next cycle
- **Adversarial:** Attempt to include individual Allevio member claim data — skill must refuse and substitute aggregate-only metrics, logging the refusal

## Audit Log

Every dashboard output is timestamped, versioned, and archived in SharePoint under /MBL/Portfolio/Weekly-Health-Dashboard/[YYYY]/[MM]. Dr. Lewis retains the master log of all 🔴 escalations and Matt's response time. The WTI gate tracking log is a separate running record updated each Monday in the HIVE folder, documenting the price, gate status, and any LOI decisions made that week.

## Deprecation

This skill is retired if MBL Partners adopts a real-time portfolio analytics platform that natively surfaces entity health signals in a unified dashboard; in that event, this skill is replaced by a data-quality-check skill that validates the platform's outputs before Matt views them. Deprecation requires Matt Mathison approval and a 4-week parallel-run period.
