---
name: portops-portfolio-okr-tracker
description: "portfolio OKR tracker, track OKRs across all portfolio entities, entity CEO accountability, quarterly OKR review, Matt quarterly OKR brief, annual OKR setting, OKR grading, portfolio objectives and key results, Allevio OKRs, HIVE OKRs, Column6 OKRs, MBL OKRs, October OKR planning, OKR accountability chain, portfolio OKR rollup, entity OKR status, OKR health check, quarterly portfolio OKR, OKR scorecard, portfolio goal tracking"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "quarter (Q1/Q2/Q3/Q4), year, entity name or 'all', grading mode (mid-quarter check / end-of-quarter grade)"
---

# Portfolio OKR Tracker

This skill tracks OKRs across all four MBL portfolio entities with entity CEO accountability at the objective level, delivering Matt Mathison's quarterly portfolio OKR brief and supporting the annual October OKR-setting cadence. It uses a 0.0–1.0 confidence/grade scale and enforces the HITL chain — entity CEO owns each objective, Dr. Lewis audits, Matt approves the quarterly brief.

## When to Use

- Mid-quarter OKR confidence check for any or all entities
- End-of-quarter OKR grading and Matt's quarterly portfolio brief
- October annual OKR-setting facilitation across all entity CEOs
- Escalating an OKR that has fallen below 0.3 confidence and needs intervention

## Portfolio OKR Tracker Framework

```
PORTFOLIO OKR TRACKER — [Q# YEAR] | [MID-QTR CHECK / EOQ GRADE]
Prepared by: Dr. John Lewis | For: Matt Mathison

OKR GRADING SCALE:
  0.0-0.3 = 🔴 Off Track — intervention required
  0.4-0.6 = 🟡 At Risk — needs attention
  0.7-0.9 = 🟢 On Track — continue
  1.0     = ✅ Achieved (stretch target)

═══════════════════════════════════════════════════════
ALLEVIO — HEALTHCARE MSO OKRs
═══════════════════════════════════════════════════════
OBJECTIVE 1: [Objective title — entity CEO accountable]
  KR 1.1: [Key Result] | Target: [X] | Current: [X] | Score: [0.0-1.0]
  KR 1.2: [Key Result] | Target: [X] | Current: [X] | Score: [0.0-1.0]
  KR 1.3: [Key Result] | Target: [X] | Current: [X] | Score: [0.0-1.0]
  Objective Score: [avg] [🔴/🟡/🟢/✅]
  CEO Commentary: [brief]
  Dr. Lewis Note: [if any concern]

OBJECTIVE 2: [Objective title]
  [same structure]

═══════════════════════════════════════════════════════
HIVE PARTNERS — OIL & GAS OKRs
═══════════════════════════════════════════════════════
OBJECTIVE 1: [e.g., Maintain production at X BBL/day]
  KR 1.1: BBL/day avg | Target: [X] | Current: [X] | Score: [X]
  KR 1.2: Cost per BOE | Target: $[X] | Current: $[X] | Score: [X]
  KR 1.3: LOIs closed | Target: [X] | Current: [X] | Score: [X]
  Note: WTI gate — if PAUSED, acquisition KRs auto-flagged 🟡

OBJECTIVE 2: [LP returns / distribution OKR]
  [same structure]

═══════════════════════════════════════════════════════
COLUMN6 / SIPROCAL — CTV/MOBILE/GAMING OKRs
═══════════════════════════════════════════════════════
OBJECTIVE 1: [e.g., Achieve gross margin ≥35% every month]
  KR 1.1: Monthly GM% | Target: ≥35% | Min: 35% | Score: [X]
  KR 1.2: IO pipeline | Target: [X] | Current: [X] | Score: [X]
  KR 1.3: New agencies | Target: [X] | Current: [X] | Score: [X]

OBJECTIVE 2: [CCPA compliance OKR or agency tier expansion]
  [same structure]

═══════════════════════════════════════════════════════
MBL HOLDCO — MANAGEMENT COMPANY OKRs
═══════════════════════════════════════════════════════
OBJECTIVE 1: [AI orchestration phases delivered]
  KR 1.1: Phase milestone | Target: [X] | Status: [X] | Score: [X]
  KR 1.2: Portfolio skills deployed | Target: [X] | Current: [X]
  KR 1.3: Matt system satisfaction | Target: [X/5] | Current: [X]

OBJECTIVE 2: [Cost discipline / overhead ratio]
  [same structure]

═══════════════════════════════════════════════════════
PORTFOLIO OKR SCORECARD
═══════════════════════════════════════════════════════
Entity         | Avg Score | Status
-------------- |-----------|--------
Allevio        | [X]       | 🔴/🟡/🟢/✅
HIVE Partners  | [X]       | 🔴/🟡/🟢/✅
Column6        | [X]       | 🔴/🟡/🟢/✅
MBL HoldCo     | [X]       | 🔴/🟡/🟢/✅
PORTFOLIO AVG  | [X]       | [overall]

INTERVENTIONS REQUIRED (score <0.3):
[List entity, objective, KR, recommended action, owner]
[NONE if all ≥0.3]

OCTOBER OKR PLANNING NOTE:
[Q4 only — remind entity CEOs to submit draft OKRs for next year by [date]]
```

## Output Format

```markdown
## PORTFOLIO OKR STATUS — [Q# YEAR]

| Entity | Obj 1 | Obj 2 | Avg | Trend |
|--------|-------|-------|-----|-------|
| Allevio | 🟢 0.8 | 🟡 0.5 | 0.65 | → |
| HIVE | 🟢 0.9 | 🟢 0.7 | 0.80 | ↑ |
| Column6 | 🔴 0.2 | 🟡 0.6 | 0.40 | ↓ |
| MBL HoldCo | 🟢 0.8 | 🟢 0.8 | 0.80 | ↑ |

**Interventions Required:** [list or NONE]
**Matt's Review Date:** [scheduled]
```

## Output Contract

- Entity CEO accountability is non-negotiable: every objective must have a named entity CEO as the accountable owner, and any intervention triggered by a score below 0.3 must be routed to that CEO with a required response by the next check-in date. Dr. Lewis does not absorb entity CEO accountability — he audits and routes, but the CEO is answerable to Matt for OKR performance.
- The WTI acquisition gate directly impacts HIVE acquisition-related OKRs: when the gate is PAUSED, any key results tied to new acquisitions or LOI count are automatically flagged 🟡 (not 🔴, because the pause is policy-compliant, not a failure) with a note explaining the gate status. This prevents penalizing HIVE leadership for a market-driven constraint.
- The October annual cadence is a hard calendar constraint, not a suggestion — this skill must include a reminder flag beginning September 15 of each year to prompt entity CEOs to draft next-year OKRs for Matt's review by October 1, so that the annual planning session can finalize them by October 31.

## System Dependencies

**Reads from:** Monday.com (OKR boards per entity), entity CEO self-reports, Covercy (HIVE KR data), QuickBooks (MBL financial KRs), AdvancedMD aggregate (Allevio KRs)
**Writes to:** Monday.com (OKR tracking boards), SharePoint /MBL/Portfolio/OKRs/[YYYY]/, Matt Mathison quarterly brief email
**HITL Required:** Entity CEO approves their OKR scores; Dr. Lewis audits before sending to Matt; Matt signs quarterly portfolio OKR brief

## Test Cases

- **Golden path:** All entities Q2 on track, portfolio avg 0.75, no interventions — produces clean brief with trend arrows and October planning reminder in Q3
- **Edge case:** HIVE acquisition KR showing 0.2 because WTI gate PAUSED — skill auto-adjusts rating to 🟡 with gate explanation rather than 🔴 failure grade
- **Adversarial:** Entity CEO submits OKR scores without supporting data — skill flags as unvalidated, marks with asterisk, and requires Dr. Lewis to verify before forwarding to Matt

## Audit Log

All quarterly OKR packages are archived in SharePoint with entity CEO score submissions, Dr. Lewis audit notes, and Matt's final brief delivery timestamp. Score changes between submission and audit are logged with justification. The annual OKR-setting session notes and approved OKRs are stored in /MBL/Portfolio/OKRs/[YYYY]/Annual-Setting/ for LP and board reference.

## Deprecation

This skill is retired when MBL adopts an OKR platform (e.g., Lattice, Workboard) integrated with entity systems that auto-updates KR progress; the replacement skill focuses on exception-based alerting and Matt's brief formatting. Deprecation requires entity CEO agreement and Matt Mathison approval, with a 60-day transition overlap.
