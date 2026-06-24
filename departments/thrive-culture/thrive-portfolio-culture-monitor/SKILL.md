---
name: thrive-portfolio-culture-monitor
description: "monitor thrive culture across portfolio, portfolio culture dashboard, mbl portfolio culture health, allevio hive column6 mbl culture scores, cross entity culture comparison, portfolio culture trend, early warning culture flag, declining pillar two quarters, matt mathison quarterly culture brief, annual portfolio culture summary, thrive entity comparison, portfolio culture report, entity culture health by pillar, weakest strongest culture pillar, portfolio thrive monitoring, culture health dashboard all entities, quarterly culture review portfolio, thrive portfolio overview, entity culture risk signal, portfolio culture intelligence"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "<quarter> <year>"
---

# THRIVE Portfolio Culture Monitor

Culture health is a portfolio risk factor — a single entity with a declining Integrity score is a governance, retention, and reputation exposure for all of MBL. This skill produces the portfolio-level culture monitoring view that Dr. Lewis uses to manage entity-level culture risk and brief Matt Mathison quarterly.

## When to Use

- Dr. Lewis is preparing the quarterly portfolio culture brief for Matt Mathison
- An entity CEO requests a cross-entity benchmark to understand how their culture compares
- An early warning flag has been triggered (pillar declining two quarters in a row at any entity)
- Dr. Lewis is conducting the annual portfolio culture summary for the year-end review

## THRIVE Portfolio Culture Monitor Framework

```
THRIVE PORTFOLIO CULTURE MONITOR — Q[Q] [YEAR]
══════════════════════════════════════════════════════════════════════════════════════

DATA SOURCES
─────────────────────────────────────────────────────
  Primary:   Quarterly pulse survey scores (thrive-pulse-survey-builder output)
  Secondary: 90-day integration pass rates (thrive-30-60-90-culture output)
  Secondary: THRIVE assessment averages (thrive-assessment-builder output)
  Secondary: Voluntary turnover rate (THRIVE-attributed departures)
  Secondary: Exit interview THRIVE signals (thrive-exit-interview-analyzer output)

PORTFOLIO CULTURE DASHBOARD — CURRENT QUARTER
─────────────────────────────────────────────────────
ENTITY HEALTH SCORES (1-5 scale; pulse survey + assessment composite)

               TRUTH  HUSTLE  RESPECT  INTEGRITY  VALUE  ENJOY  OVERALL
  ─────────────────────────────────────────────────────────────────────
  Allevio       ___    ___     ___       ___       ___    ___    ___
  HIVE          ___    ___     ___       ___       ___    ___    ___
  Column6       ___    ___     ___       ___       ___    ___    ___
  MBL HoldCo   ___    ___     ___       ___       ___    ___    ___
  ─────────────────────────────────────────────────────────────────────
  PORTFOLIO AVG ___    ___     ___       ___       ___    ___    ___

  TARGET: All entities ≥ 3.5 overall | INTEGRITY ≥ 4.0 at all entities | No pillar < 3.0

CROSS-ENTITY COMPARISON
─────────────────────────────────────────────────────
  STRONGEST ENTITY OVERALL:  _________________ ([overall score])
  WEAKEST ENTITY OVERALL:    _________________ ([overall score])
  STRONGEST PILLAR PORTFOLIO: _________________ ([pillar] avg [score])
  WEAKEST PILLAR PORTFOLIO:   _________________ ([pillar] avg [score])
  INTEGRITY FLOOR CHECK:      All ≥ 4.0? [YES / NO — if NO, entity: _____]

EARLY WARNING FLAGS — AUTOMATIC TRIGGERS
─────────────────────────────────────────────────────
  Flag Type 1: Any entity pillar declining two consecutive quarters
    Entity: _____ | Pillar: _____ | Q-2: ___ | Q-1: ___ | Current: ___
    Action: Dr. Lewis notifies entity CEO within 5 business days
    Matt Mathison: notified if decline continues into Q+1

  Flag Type 2: Any entity Integrity score below 4.0
    Entity: _____ | Score: ___
    Action: Dr. Lewis + entity CEO same-day review
    Matt Mathison: immediate notification; no waiting for next quarterly cycle

  Flag Type 3: Any entity overall score below 3.0
    Entity: _____ | Score: ___
    Action: Emergency culture review within 30 days
    Matt Mathison: briefed with remediation plan

  Flag Type 4: Portfolio-wide pillar declining two consecutive quarters
    Pillar: _____ | Q-2: ___ | Q-1: ___ | Current: ___
    Action: Program-level intervention; Callie + Dr. Lewis root cause analysis

PORTFOLIO CULTURE TREND
─────────────────────────────────────────────────────
  IMPROVING  — Portfolio average up ≥0.2 from prior quarter
  STABLE     — Portfolio average within ±0.1 of prior quarter
  DECLINING  — Portfolio average down ≥0.2 from prior quarter
  
  Current trend: _______________
  Prior quarter portfolio avg: ___ | Current: ___ | Delta: ___

MATT MATHISON QUARTERLY BRIEF (1-page BLUF)
─────────────────────────────────────────────────────
  FORMAT: BLUF first — one sentence on portfolio health
  ENTITY-BY-ENTITY: each entity in 2-3 sentences (score, trend, top signal)
  TOP RISK:     The one thing Matt needs to know first
  TOP STRENGTH: The one culture win worth recognizing
  RECOMMENDATION: 1-2 sentences on what Dr. Lewis will do next quarter

ANNUAL PORTFOLIO CULTURE SUMMARY
─────────────────────────────────────────────────────
  Year-over-year pillar trends (all 4 entities)
  Culture-attributed voluntary turnover rate (annual)
  New hire 90-day integration pass rate (annual; by entity)
  Early warning flags triggered (count; resolved vs. open)
  Integrity floor breaches (count; resolution status)
  Callie playbook additions tied to culture gaps identified
  Matt Mathison annual culture attestation (signature required)
```

## Output Format

```markdown
## THRIVE Portfolio Culture Monitor — Q[Q] [YEAR]
**Prepared by:** Dr. John Lewis | **Date:** [Date]

### Portfolio Health Dashboard
| Entity | T | H | R | I | V | E | Overall | Trend |
|--------|---|---|---|---|---|---|---------|-------|
| Allevio | | | | | | | | |
| HIVE | | | | | | | | |
| Column6 | | | | | | | | |
| MBL HoldCo | | | | | | | | |
| **Portfolio Avg** | | | | | | | | |

### Early Warning Flags
**Active Flags:** [None / List with entity, pillar, and consecutive-quarter count]

### Cross-Entity Comparison
- Strongest entity: [Name] ([score])
- Weakest entity: [Name] ([score])
- Integrity floor status: [All clear / Flag at: Entity, score]

### Portfolio Trend
**Status:** [Improving / Stable / Declining] | Delta: [+/- X from prior quarter]

### Matt Mathison Quarterly Brief
**BLUF:** [1 sentence]
**Allevio:** [2-3 sentences]
**HIVE:** [2-3 sentences]
**Column6:** [2-3 sentences]
**MBL HoldCo:** [2-3 sentences]
**Top Risk:** [1 sentence]
**Top Strength:** [1 sentence]
**Recommendation:** [1-2 sentences]
```

## Output Contract

- The Integrity floor check is computed first and reported first in every quarterly brief — Integrity below 4.0 at any entity is a same-day escalation regardless of where it falls in the quarterly calendar, and the monitoring system must never bury an Integrity signal behind a favorable overall average.

- Early warning flags are triggered automatically based on two-quarter decline logic and must be documented with the specific quarters, scores, and the entity CEO notification date — flags that are detected but not acted upon within five business days are a program failure, not just a data point, and the audit log captures notification timing as evidence of response.

- The Matt Mathison quarterly brief is a fixed-format one-pager in BLUF style — not a data dump — because the value of portfolio monitoring is the synthesis and the recommended action, not the raw scores; Dr. Lewis's judgment about what the data means for MBL strategy is the primary deliverable of this skill.

## System Dependencies

### Reads from
- thrive-pulse-survey-builder quarterly results (all entities; pillar scores)
- thrive-30-60-90-culture 90-day integration pass rates (Callie's tracker)
- thrive-exit-interview-analyzer quarterly departure signal reports
- THRIVE assessment averages (entity-level; Dr. Lewis program log)

### Writes to
- Matt Mathison quarterly culture brief (PDF or M365 document; filed and delivered)
- Dr. Lewis portfolio culture log (quarterly; historical trend)
- Entity CEO early warning notifications (triggered automatically by flag logic)
- Annual portfolio culture summary (year-end; Matt Mathison attestation)

### HITL Required
- Dr. Lewis reviews and approves every quarterly brief before delivery to Matt Mathison
- Entity CEO notified directly by Dr. Lewis for any early warning flag — not via automated message
- Matt Mathison signs the annual portfolio culture summary (attestation)

## Test Cases

1. **Golden path:** Q2 monitoring cycle. All four entities return overall scores ≥3.6. Integrity floor: all ≥4.0. No early warning flags triggered. Portfolio trend: Improving (+0.15 from Q1). Matt Mathison brief written in BLUF format; top strength is HIVE's Hustle score (4.3, highest in portfolio); recommendation is to leverage HIVE's accountability culture as a cross-entity case study.

2. **Edge case:** Column6 Integrity score drops from 4.1 (Q1) to 3.8 (Q2) — not below 4.0, but a material decline. Early warning flag is not auto-triggered (floor not breached) but Dr. Lewis flags it manually as a watch item in the quarterly brief. Column6 CEO is notified informally. Monitoring elevated to monthly for Q3.

3. **Adversarial:** Allevio Enjoy score has declined for two consecutive quarters (Q1: 3.9, Q2: 3.5, Q3: 3.2). Flag triggers. Dr. Lewis reviews exit interview data: three departures in Q3 cited burnout and workload. Entity CEO is notified within 3 business days. Matt Mathison is included in the flag notification. Root cause analysis by Callie reveals no workload management skill in the THRIVE playbook — added to Callie's development backlog. Remediation plan delivered to entity CEO within 30 days.

## Audit Log

Portfolio culture monitoring records are maintained by Dr. Lewis as a rolling four-quarter dataset. Each quarterly brief is dated, versioned, and filed with delivery confirmation to Matt Mathison. Early warning flag notifications include the trigger date, notification date, entity CEO recipient, and resolution status. The annual summary is retained as a board-level program artifact and includes Matt Mathison's attestation signature.

## Deprecation

This skill is reviewed annually during the THRIVE culture ops review. It is deprecated when MBL expands beyond four entities and a more scalable portfolio monitoring infrastructure is required, or when the pulse survey platform (M365 Forms / Microsoft Viva) is replaced and data inputs change materially. The early warning flag logic and the BLUF brief format are considered core artifacts and must be preserved in any successor monitoring skill.
