---
name: thrive-culture-kpi-dashboard
description: "thrive culture kpi dashboard, thrive health score by pillar kpi, integrity score trend kpi, voluntary turnover rate thrive, thrive departure rate kpi, new hire 90 day integration pass rate kpi, thrive hr incident rate, manager thrive effectiveness score, recognition event frequency kpi, entity culture dashboard, portfolio culture kpi, weekly dr lewis culture review, monthly entity ceo dashboard, quarterly matt mathison kpi, kpi threshold alert thrive, culture metrics dashboard mbl, thrive kpi report, culture performance indicators, thrive dashboard one page entity, culture health indicators mbl"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "<entity | portfolio> <period>"
---

# THRIVE Culture KPI Dashboard

KPIs make culture legible to a portfolio operator — not as a feeling, but as a measured system with trends, thresholds, and alerts. This skill builds and maintains the THRIVE culture KPI dashboard at both the entity and portfolio level, with tiered review cadences for Dr. Lewis, entity CEOs, and Matt Mathison.

## When to Use

- Dr. Lewis is conducting his weekly culture program review and needs the current KPI state
- An entity CEO requests their monthly culture dashboard for a leadership team meeting
- Matt Mathison is preparing for a quarterly portfolio review and needs the culture KPI section
- A KPI threshold alert has been triggered and Dr. Lewis needs to identify the affected entity and pillar

## THRIVE Culture KPI Dashboard Framework

```
THRIVE CULTURE KPI DASHBOARD — [ENTITY | PORTFOLIO] | [PERIOD]
══════════════════════════════════════════════════════════════════════════════════════

ENTITY-LEVEL KPIs (one page per entity)
─────────────────────────────────────────────────────

KPI 1: ENTITY THRIVE HEALTH SCORE BY PILLAR
  Source: Quarterly pulse survey (thrive-pulse-survey-builder)
  Format: Pillar scores (1-5) + trend arrow (↑ ↓ →)
  ┌──────────┬────────┬──────────┬────────────────────────────┐
  │ Pillar   │ Score  │ Q-1 Score│ Trend    │ Alert?          │
  ├──────────┼────────┼──────────┼──────────┼─────────────────┤
  │ Truth    │        │          │          │ <3.0 = RED      │
  │ Hustle   │        │          │          │ <3.0 = RED      │
  │ Respect  │        │          │          │ <3.0 = RED      │
  │ Integrity│        │          │          │ <4.0 = RED      │
  │ Value    │        │          │          │ <3.0 = RED      │
  │ Enjoy    │        │          │          │ <3.0 = RED      │
  │ OVERALL  │        │          │          │ <3.5 = YELLOW   │
  └──────────┴────────┴──────────┴──────────┴─────────────────┘

KPI 2: INTEGRITY SCORE TREND (separate; always first alert)
  Current score: _____ | Prior quarter: _____ | Delta: _____
  4+ quarters rolling: Q-3[__] Q-2[__] Q-1[__] Current[__]
  Trend classification: [Improving / Stable / Declining]
  Alert: Any Integrity score < 4.0 → IMMEDIATE escalation (not quarterly cycle)

KPI 3: VOLUNTARY TURNOVER RATE
  Period: [Quarter / TTM]
  Total employees (start of period): _______
  Voluntary departures: _______
  Voluntary turnover rate: _______%
  Alert: > 15% annualized = YELLOW | > 25% annualized = RED

KPI 4: THRIVE-ATTRIBUTED DEPARTURE RATE
  Source: thrive-exit-interview-analyzer
  Total voluntary departures: _______
  THRIVE-attributed (controllable; values/culture): _______
  THRIVE-attributed rate: _______%
  Alert: > 5% of total departures = YELLOW | > 10% = RED

KPI 5: NEW HIRE 90-DAY INTEGRATION PASS RATE
  Source: thrive-30-60-90-culture tracker (Callie)
  New hires reaching Day 90 (period): _______
  Full Integration verdicts: _______
  Pass rate: _______%
  Alert: < 85% = YELLOW | < 70% = RED

KPI 6: THRIVE-RELATED HR INCIDENT RATE
  Source: HR / entity CEO report
  Definition: Any formal HR action with THRIVE pillar as contributing factor
    (Integrity: ethics/compliance violations; Respect: harassment/conduct;
     Truth: dishonesty; Hustle: gross negligence; Value: fraud; Enjoy: harassment)
  Incidents (quarter): _______
  Alert: > 0 Integrity incidents = IMMEDIATE | > 2 any pillar = YELLOW

KPI 7: MANAGER THRIVE EFFECTIVENESS SCORE
  Source: Direct report pulse responses (Respect + Hustle items specific to manager)
  Calculated: Average of direct reports' manager-specific THRIVE ratings
  Entity avg: _____ | Lowest-scoring manager: _____ (score: _____)
  Alert: Any manager below 3.0 = coaching conversation required

KPI 8: RECOGNITION EVENT FREQUENCY
  Source: Entity recognition log (thrive-recognition-program output)
  Definition: Formal THRIVE recognition events (shoutouts, awards, callouts)
  Target: ≥ 4 recognition events per entity per month
  Current month: _____ events | Running avg: _____
  Alert: < 2 events in a month = YELLOW | 0 events = RED

PORTFOLIO-LEVEL KPI ROLL-UP
─────────────────────────────────────────────────────
  Entity          Health  Integrity  Turnover  Integration  Incidents  Recognition
  ──────────────────────────────────────────────────────────────────────────────
  Allevio         ___     ___        ___%      ___%         ___        ___/mo
  HIVE            ___     ___        ___%      ___%         ___        ___/mo
  Column6         ___     ___        ___%      ___%         ___        ___/mo
  MBL HoldCo     ___     ___        ___%      ___%         ___        ___/mo
  ──────────────────────────────────────────────────────────────────────────────
  Portfolio Avg   ___     ___        ___%      ___%         ___        ___/mo

REVIEW CADENCE
─────────────────────────────────────────────────────
  Weekly:    Dr. Lewis (KPI 1 trend; KPI 2 Integrity; KPI 6 incidents)
  Monthly:   Entity CEO (full entity dashboard; 1-page)
  Quarterly: Matt Mathison (portfolio roll-up + entity summaries)

ALERT THRESHOLDS SUMMARY
─────────────────────────────────────────────────────
  GREEN  — All KPIs within target
  YELLOW — Any KPI below threshold but not critical
  RED    — Critical threshold breached; requires action within 5 business days
  ESCALATE — Integrity < 4.0 or Integrity incident → immediate; no waiting
```

## Output Format

```markdown
## THRIVE Culture KPI Dashboard
**Entity:** [Name | Portfolio] | **Period:** [Q/Month/Year]
**Prepared by:** Dr. John Lewis | **Date:** [Date]

### KPI Scorecard
| KPI | Value | Target | Status |
|-----|-------|--------|--------|
| Overall Health Score | | ≥3.5 | 🟢/🟡/🔴 |
| Integrity Score | | ≥4.0 | 🟢/🔴 |
| Voluntary Turnover | | ≤15% | 🟢/🟡/🔴 |
| THRIVE-Attributed Departures | | ≤5% | 🟢/🟡/🔴 |
| 90-Day Integration Pass Rate | | ≥85% | 🟢/🟡/🔴 |
| HR Incidents (THRIVE-related) | | 0 Integrity | 🟢/🔴 |
| Manager Effectiveness | | ≥3.5 | 🟢/🟡/🔴 |
| Recognition Events (monthly) | | ≥4/mo | 🟢/🟡/🔴 |

### Active Alerts
[None / List with KPI, entity, value, and required action]

### Pillar Health by Entity
[Table — filled from entity dashboards]
```

## Output Contract

- Integrity is listed as a standalone KPI with its own row, its own alert threshold (4.0, not 3.5), and its own immediate escalation path — it is never combined with the overall health score in dashboard presentation because the kill criterion principle requires that Integrity be visible as a separate signal at all times, not averaged into a composite.

- The manager effectiveness score (KPI 7) is reported at the individual manager level to the entity CEO, not just as an entity average — culture problems frequently concentrate in one team under one manager, and an entity average can mask a 2.1 score from a single manager who is creating a toxic environment for 8 people.

- Recognition event frequency (KPI 8) is tracked because it is a leading indicator of culture health, not a lagging one — entities with consistent recognition activity show higher Enjoy and Respect scores in subsequent quarters, and a drop in recognition frequency often precedes a Enjoy pillar decline by one to two quarters.

## System Dependencies

### Reads from
- thrive-pulse-survey-builder quarterly scores (KPIs 1, 2)
- HR voluntary departure log + thrive-exit-interview-analyzer (KPIs 3, 4)
- thrive-30-60-90-culture Callie tracker (KPI 5)
- Entity CEO HR incident log (KPI 6)
- Direct report pulse survey manager items (KPI 7)
- thrive-recognition-program event log (KPI 8)

### Writes to
- Monthly entity CEO dashboard (PDF or M365 document)
- Quarterly Matt Mathison portfolio KPI section
- Dr. Lewis weekly review log (abbreviated; alert items only)
- Alert notification queue (entity CEO and Dr. Lewis; threshold-triggered)

### HITL Required
- Dr. Lewis reviews all threshold alerts before they are transmitted to entity CEOs
- Any RED or ESCALATE alert is personally communicated by Dr. Lewis (not automated)
- Matt Mathison quarterly KPI section is approved by Dr. Lewis before delivery

## Test Cases

1. **Golden path:** Allevio monthly dashboard — all 8 KPIs in GREEN. Integrity at 4.2. Turnover 8% annualized. 90-day pass rate 91%. Six recognition events in the month. Dr. Lewis weekly review: no alerts. Entity CEO receives clean dashboard. Monthly review completed in 15 minutes.

2. **Edge case:** HIVE recognition events drop to 1 in October (target: ≥4). YELLOW alert triggered. Dr. Lewis reviews: two managers were on field travel; recognition program was not delegated. Alert transmitted to HIVE entity CEO with suggestion to delegate recognition authority during travel periods. No escalation required; corrective action logged.

3. **Adversarial:** Column6 KPI 6 (HR incidents) shows 1 Integrity incident in Q3 — an account manager submitted falsified campaign performance data to a client. ESCALATE alert triggered immediately. Dr. Lewis notifies entity CEO same day. Integrity score investigated in next pulse cycle (expedited to 30 days rather than waiting for quarterly). Matt Mathison notified. Incident logged with resolution status tracked monthly until closed.

## Audit Log

KPI dashboard records are maintained for every period (weekly alert log, monthly entity dashboards, quarterly portfolio roll-ups) and retained for five years. Alert transmissions are logged with trigger timestamp, recipient, and response timestamp. Dr. Lewis's weekly review log is a running document that captures any KPI movement ≥0.3 in either direction between periods. Matt Mathison's quarterly dashboards are filed as board-adjacent artifacts.

## Deprecation

This skill is reviewed annually during the THRIVE culture ops review. KPI thresholds are reviewed annually and adjusted based on prior-year data and portfolio growth. It is deprecated when MBL implements a formal people analytics platform that generates these dashboards automatically, provided that platform preserves the Integrity-first alert logic and the individual manager effectiveness view. Fitz must validate any successor dashboard against a known dataset before the prior skill is retired.
