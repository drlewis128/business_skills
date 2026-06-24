---
name: thrive-pulse-survey-builder
description: "thrive pulse survey, build thrive survey mbl, administer thrive culture survey, six question thrive pulse, one per pillar survey, thrive likert scale survey, anonymous culture survey, quarterly pulse survey thrive, monthly pulse survey entity below 3.5, m365 forms thrive survey, microsoft viva pulse thrive, survey response rate target 70 percent, below 60 percent data quality flag, thrive pillar score trend, anomaly flag survey results, callie survey administration, fitz pilot survey instrument, thrive survey design, culture survey mbl portfolio, entity health pulse survey"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "<entity> <quarter> <year>"
---

# THRIVE Pulse Survey Builder

A six-question pulse survey that takes less than three minutes is the most reliable, low-friction data source for culture health — but only if the questions are precise, the anonymity is real, and the results are acted on visibly. This skill designs, administers, and processes THRIVE-aligned pulse surveys for all MBL entities.

## When to Use

- Dr. Lewis is scheduling the quarterly THRIVE pulse survey cycle for one or more entities
- An entity's overall culture health score has dropped below 3.5 and monthly surveys are required
- Callie is designing or updating a survey instrument and needs the canonical question set
- Fitz is piloting a new survey instrument before it goes to a full entity cohort

## THRIVE Pulse Survey Builder Framework

```
THRIVE PULSE SURVEY — [ENTITY] | Q[Q] [YEAR] | [FREQUENCY: QUARTERLY / MONTHLY]
══════════════════════════════════════════════════════════════════════════════════════

SURVEY DESIGN PRINCIPLES
─────────────────────────────────────────────────────
  □ 6 questions only — one per THRIVE pillar; no additions without Dr. Lewis approval
  □ 1-5 Likert scale (1 = Strongly Disagree; 5 = Strongly Agree)
  □ Fully anonymous — no identifiers; no IP logging; platform must guarantee this
  □ < 3 minutes to complete — respect for respondent time IS a Respect pillar behavior
  □ Administered via: M365 Forms (standard) or Microsoft Viva Pulse (if licensed)
  □ Mobile-optimized — critical for HIVE field crews and Allevio clinical staff

CANONICAL QUESTION SET (do not modify without Dr. Lewis approval)
─────────────────────────────────────────────────────
  Q1 [TRUTH]     "At [entity], I feel safe to speak the truth, raise concerns,
                  and share bad news without negative consequences."

  Q2 [HUSTLE]    "People at [entity] take ownership of their work and follow through
                  without being chased — I see real accountability here."

  Q3 [RESPECT]   "I feel respected by my colleagues, my manager, and the organization
                  — and I see others treated with genuine respect too."

  Q4 [INTEGRITY] "I am confident that [entity] operates with high ethical standards
                  and would not ask me to do something that feels wrong."

  Q5 [VALUE]     "The work I do at [entity] creates real, meaningful value — not just
                  activity — and I can see how my work makes a difference."

  Q6 [ENJOY]     "I find my work at [entity] genuinely engaging and energizing —
                  this is a place where I can thrive over the long term."

  Optional open question (added at Dr. Lewis discretion; max 1):
  "Is there anything specific about the culture here you'd like us to know?"
  (Free text; anonymous; reviewed by Dr. Lewis only)

SURVEY FREQUENCY LOGIC
─────────────────────────────────────────────────────
  Standard:         Quarterly (all entities)
  Elevated:         Monthly — triggered when entity overall score < 3.5 for one quarter
  Emergency:        Ad hoc — triggered after a significant incident or leadership change
  Restored to quarterly: when two consecutive monthly surveys return score ≥ 3.5

  Current entity frequency:
    Allevio:    [Quarterly / Monthly]
    HIVE:       [Quarterly / Monthly]
    Column6:    [Quarterly / Monthly]
    MBL HoldCo: [Quarterly / Monthly]

DISTRIBUTION METHOD
─────────────────────────────────────────────────────
  Standard (office/hybrid): M365 Forms link via Outlook; Callie distributes
  Field (HIVE basin crews): SMS link or paper form with online submission code
  Clinical (Allevio):       M365 Forms via Teams channel; Callie coordinates
  Small cohort (<10):       Microsoft Viva Pulse (if available) for richer analytics

  Distribution timing: Monday morning delivery; reminder Thursday if <50% responded
  Survey window: 5 business days; closes Friday at 5pm local time

RESPONSE RATE TARGETS AND QUALITY FLAGS
─────────────────────────────────────────────────────
  ≥ 70%: Reliable — proceed with full analysis and reporting
  60–69%: Usable — report with caveat; flag low response in dashboard
  < 60%: Data quality flag — do NOT report as authoritative entity scores
           Action: Callie investigates cause; Dr. Lewis notified; re-survey may be required
           Common causes: survey fatigue, trust deficit, timing collision, access issues

  Response rate by entity this period:
    Allevio: ___%  | HIVE: ___%  | Column6: ___%  | MBL HoldCo: ___%

RESULT PROCESSING
─────────────────────────────────────────────────────
  Step 1: Download raw scores (no individual identifiers)
  Step 2: Calculate pillar averages (Q1=Truth avg; Q2=Hustle avg; etc.)
  Step 3: Calculate entity overall average
  Step 4: Compare to prior period (trend: ↑ ↓ →)
  Step 5: Anomaly detection:
            □ Any pillar moves ≥ 0.5 in either direction (one quarter)
            □ Any pillar below 3.0
            □ Integrity below 4.0
            □ Open-text responses with Integrity or Respect concern language
  Step 6: Flag any anomalies to Dr. Lewis before publishing results
  Step 7: Deliver scores to entity CEO and thrive-culture-kpi-dashboard

CALLIE'S SURVEY ADMINISTRATION ROLE
─────────────────────────────────────────────────────
  □ Schedule survey distribution dates per entity (quarterly calendar)
  □ Build and publish the M365 Forms survey (canonical questions; entity-branded)
  □ Distribute survey links and reminders
  □ Download and format results for Dr. Lewis review
  □ Track response rates and flag < 60% in real-time
  □ Coordinate with entity HR/admin for field distribution (HIVE; Allevio clinical)

FITZ'S PILOT TESTING ROLE
─────────────────────────────────────────────────────
  □ Test all new or modified survey instruments before entity-wide deployment
  □ Pilot with a 5-10 person test group; confirm anonymity, mobile rendering, timing
  □ Report any question clarity issues back to Callie for revision
  □ Sign off on instrument before Callie schedules entity-wide distribution
```

## Output Format

```markdown
## THRIVE Pulse Survey Results — [Entity] | Q[Q] [YEAR]
**Distributed:** [Date] | **Closed:** [Date] | **Administered by:** Callie

### Response Rate
**Respondents:** [N] / [Total eligible] = [%] — [Reliable / Usable / Data Quality Flag]

### Pillar Scores
| Pillar | Score | Prior Quarter | Trend | Alert? |
|--------|-------|--------------|-------|--------|
| Truth | | | | |
| Hustle | | | | |
| Respect | | | | |
| Integrity | | | | |
| Value | | | | |
| Enjoy | | | | |
| **Overall** | | | | |

### Anomaly Flags
[None / List with pillar, score, magnitude, and action required]

### Open Text Themes (if optional question included)
[Summary — 2-4 sentences; no identifiable content]

### Distribution to KPI Dashboard
**Transmitted:** [Yes / Pending] | **Date:** [Date]
```

## Output Contract

- The canonical six-question set is fixed and cannot be modified by an entity CEO or manager without Dr. Lewis approval — question consistency across entities and quarters is the foundation of comparability, and ad-hoc question additions destroy the portfolio-level trend analysis that is one of the primary program outputs.

- Response rate below 60% triggers a data quality flag that prevents the results from being published as authoritative entity scores — publishing low-response data as if it were representative actively misleads entity leadership and corrupts the KPI dashboard; the flag is not a soft warning but a hard stop on formal reporting.

- Anomaly detection runs before results are shared with entity CEOs — Dr. Lewis reviews all flagged results first because an entity CEO who receives an Integrity anomaly without context may react in ways that compromise the anonymity guarantee, and maintaining that anonymity is essential to survey validity in all subsequent quarters.

## System Dependencies

### Reads from
- Prior quarter pillar scores (trend comparison baseline; Dr. Lewis program log)
- Entity employee roster count (denominator for response rate)
- Fitz pilot test sign-off (required before any new instrument goes live)

### Writes to
- thrive-culture-kpi-dashboard (pillar scores; quarterly input)
- thrive-portfolio-culture-monitor (entity scores; quarterly data feed)
- Dr. Lewis anomaly review log (flagged results; pre-CEO-distribution)
- Callie's response rate tracker (per entity; per period)

### HITL Required
- Callie reviews response rate at Day 3 of the survey window and sends reminders
- Dr. Lewis reviews all anomaly flags before results are distributed to entity CEOs
- Fitz must sign off on any modified survey instrument before Callie deploys it

## Test Cases

1. **Golden path:** Q2 quarterly survey for all four entities. Callie distributes Monday via M365 Forms. By Thursday: Allevio 74%, HIVE 68%, Column6 71%, MBL HoldCo 82%. All above 60%. Callie sends one reminder to HIVE. Final rates: all ≥70%. Results processed; no anomalies. Dr. Lewis reviews clean results; distributes to entity CEOs by Friday EOD. KPI dashboard updated.

2. **Edge case:** Allevio response rate hits 58% after 5 days. Data quality flag triggered. Callie investigates: survey distributed during a major EHR downtime week; clinical staff had no M365 access for two days. Dr. Lewis approves a 3-day extension. Final rate reaches 67% (usable with caveat). Results reported with note; full quarterly cycle counts as complete with flagged confidence level.

3. **Adversarial:** Column6 entity CEO requests that a seventh question be added to the quarterly survey asking about "individual manager performance by name." Callie escalates to Dr. Lewis. Request denied: named attribution would destroy anonymity, invalidate the instrument's canonical status, and create retaliation risk. Entity CEO offered an alternative: the manager effectiveness KPI (KPI 7) derived from existing Respect and Hustle items, which already surfaces manager-level signals without naming individuals in the survey.

## Audit Log

Survey administration records include: distribution date, closure date, response count, response rate, and platform used. Anomaly flags are logged with date detected, pillar, score, and Dr. Lewis review timestamp. Instrument version is tracked — any deviation from the canonical question set creates a new version number with change log. Fitz pilot test sign-offs are retained as instrument certification records.

## Deprecation

This skill is reviewed annually by Callie and Dr. Lewis. The canonical question set is reviewed every two years and may be updated if THRIVE pillar definitions change or if pillar question performance data (internal validity) indicates a question is not measuring its intended construct. Fitz must re-pilot any revised instrument. The skill is deprecated if MBL adopts a licensed pulse survey platform that provides these capabilities natively, provided the six-question canonical set is preserved.
