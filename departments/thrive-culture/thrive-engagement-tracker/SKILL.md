---
name: thrive-engagement-tracker
description: "engagement tracker, employee engagement, THRIVE enjoy pillar, engagement signals, energy signals, discretionary effort, team contribution, retention signals, eNPS tracking, voluntary turnover, absenteeism patterns, manager engagement behaviors, Allevio mission driven engagement, HIVE field pride, Column6 creative energy, quarterly engagement report, track engagement, measure engagement, engagement assessment, engagement dashboard, engagement health, employee satisfaction, engagement KPIs, engagement metrics, team health, workforce engagement"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[entity: MBL | Allevio | HIVE | Column6] [period: monthly | quarterly] [output: report | assessment | alert]"
---

# THRIVE Engagement Tracker

Engagement is the THRIVE Enjoy pillar made measurable. This skill tracks the signals that predict whether people are choosing to give their best — energy, discretionary effort, contribution, and retention intent — so entity CEOs and Dr. Lewis can act on engagement problems before they become turnover events, productivity collapses, or culture failures.

## When to Use

- An entity CEO needs a quarterly engagement report for the ops deck or portfolio review
- Voluntary turnover is elevated and the root cause needs to be traced to engagement signals
- A team's energy or discretionary effort has visibly declined and the entity CEO wants data to support the intuition
- Matt Mathison requests a portfolio engagement summary as part of the annual culture assessment

## Engagement Tracker Framework

```
THRIVE ENGAGEMENT TRACKER FRAMEWORK
=====================================

SECTION 1 — THRIVE ENJOY DEFINED (MBL OPERATING CONTEXT)
  Enjoy = people choose to be here; they bring energy, not just presence
  Engagement is not happiness — it is the degree to which people are invested in the work and the team
  High engagement: discretionary effort is the norm; people improve without being asked; they recruit others
  Low engagement: people do the minimum; they are emotionally absent; they are looking for exits
  Engagement is a leading indicator — turnover is the lagging indicator that engagement already failed

SECTION 2 — ENGAGEMENT SIGNALS (LEADING INDICATORS)
  Energy:              Observable enthusiasm, initiative, and positive presence in team interactions
  Discretionary Effort: Going beyond the stated task; improving without being asked; staying late when it matters
  Team Contribution:   Active participation in meetings, helping peers, contributing to culture
  Retention Intent:    Expressed satisfaction, lack of job-seeking signals, long-term thinking language
  Manager Relationship: Quality and frequency of 1:1 engagement; manager responsiveness to concerns
  Work Alignment:      Degree to which the individual's role aligns with their strengths and interests

SECTION 3 — ENGAGEMENT METRICS (LAGGING INDICATORS)
  eNPS (Employee Net Promoter Score):
    Question: "How likely are you to recommend this organization as a place to work?" (0-10)
    Promoters: 9-10 | Passives: 7-8 | Detractors: 0-6
    eNPS = % Promoters − % Detractors
    MBL target: eNPS ≥ 30 across all entities
    Cadence: quarterly
  Voluntary Turnover Rate:
    Target: ≤15% annualized (varies by entity context)
    Rolling 12-month calculation; segmented by entity and manager
    Spike definition: >5 percentage point increase in a quarter = engagement alert
  Absenteeism Rate:
    Unplanned absences > 1.5× entity baseline = engagement early warning signal
    Pattern (same individual 3+ months): flagged for manager conversation
  Retention Risk Score:
    High performers + low eNPS + no recent recognition + missed promotion = high retention risk
    Calculated quarterly; surfaced to entity CEO for proactive outreach

SECTION 4 — ENTITY-SPECIFIC ENGAGEMENT CONTEXT
  MBL HoldCo:
    - Engagement driven by: mission clarity (building something real), growth trajectory, Matt Mathison's culture
    - Risk: high ambiguity in a rapidly evolving AI strategy environment → purpose clarity is the antidote
  Allevio:
    - Mission-driven engagement: clinical and care staff are engaged by patient outcomes, not just paycheck
    - Engagement risk: burnout from payer friction, documentation burden, and emotionally demanding care
    - Engagement driver: clear mission + patient outcome wins + clinical autonomy
    - HIPAA context: engagement reporting does not include PHI or patient case identifiers
  HIVE Partners:
    - Field pride: field workers engaged by production achievement, safety records, and professional respect
    - Office engagement: LP relations and reporting staff engaged by clarity of role and outcome visibility
    - Risk: isolated field environment + variable commodity prices = financial anxiety → transparency is the antidote
    - WTI below $58/bbl: financial stress signal that predicts engagement decline; proactive communication required
  Column6:
    - Creative energy: account and creative teams engaged by interesting work, client wins, and creative freedom
    - Engagement risk: repetitive campaigns, slow client feedback cycles, and margin pressure → variety and wins are the antidote
    - Gross margin <35%: financial pressure that predicts engagement decline in leadership team

SECTION 5 — MANAGER ENGAGEMENT BEHAVIORS
  High-engagement manager behaviors: regular 1:1s, direct and positive feedback, career conversations, credit-giving, defending their team's work
  Low-engagement manager behaviors: absent 1:1s, no feedback, no career discussions, taking credit, dismissing team input
  Manager engagement impact: the single largest driver of individual team member engagement
  Manager eNPS: calculated separately — direct reports of each manager scored independently
  Managers with manager eNPS ≤15: flagged for entity CEO + Dr. Lewis coaching conversation

SECTION 6 — QUARTERLY ENGAGEMENT REPORT
  Cadence: Q1 (Feb), Q2 (May), Q3 (Aug), Q4 (Nov)
  Content: entity eNPS, voluntary turnover rate, absenteeism rate, top 3 engagement drivers, top 3 engagement risks, high-retention-risk individuals (anonymized at entity level), manager eNPS ranking
  Owner: entity CEO compiles; Dr. Lewis reviews; portfolio summary to Matt Mathison
  Red flags: entity eNPS <10, voluntary turnover >20%, or manager eNPS <10 for any manager
  Action required for red flags: entity CEO + Dr. Lewis 1:1 within 10 business days
```

## Output Format

```markdown
## THRIVE Engagement Report — [Entity] — [Quarter/Year]

### Engagement Health: [HIGH | MODERATE | LOW | CRITICAL]

### Key Metrics
| Metric | Current | Target | Prior Quarter | Trend |
|--------|---------|--------|--------------|-------|
| eNPS | [X] | ≥30 | [X] | [↑/→/↓] |
| Voluntary Turnover (annualized) | [X%] | ≤15% | [X%] | [↑/→/↓] |
| Absenteeism Rate | [X%] | [baseline] | [X%] | [↑/→/↓] |

### Manager eNPS (Anonymized for Report)
| Manager Tier | eNPS | Status |
|-------------|------|--------|
| Manager A | [X] | [OK / FLAG] |
| Manager B | [X] | [OK / FLAG] |

### Top 3 Engagement Drivers
1. [Driver with supporting signal]
2. [Driver]
3. [Driver]

### Top 3 Engagement Risks
1. [Risk with supporting signal and recommended action]
2. [Risk]
3. [Risk]

### High-Retention-Risk Indicators: [# individuals flagged — details in entity CEO view only]

### Recommended Actions
| Action | Owner | Timeline |
|--------|-------|----------|
| [action] | [person] | [date] |

### Escalation: [None | Entity CEO | Dr. Lewis | Matt Mathison]
```

## Output Contract

- **Engagement metrics are leading indicators tracked alongside lagging indicators — not as substitutes for each other.** eNPS tells you how people feel today; voluntary turnover tells you how they acted last quarter. Using only lagging indicators means the engagement failure is already complete before the data arrives. Using only leading indicators (pulse surveys) without connecting them to turnover and absenteeism patterns misses the validation signal that feelings have become decisions. Both are required for an actionable engagement picture.

- **Manager-level eNPS is tracked separately because the manager is the engagement system's primary lever.** A high entity-level eNPS with one manager at -20 means that manager's team is silently suffering while the aggregate masks the problem. The disaggregated manager score is the mechanism that makes the aggregate score actionable — it tells the entity CEO exactly which team to address rather than running a generic engagement program across the whole entity.

- **Entity-specific engagement context is not interchangeable because the engagement drivers and risks are operationally distinct.** Telling a HIVE field worker that "engagement is driven by creative freedom" is irrelevant; their engagement drivers are production achievement and safety culture. Telling an Allevio nurse that their engagement driver is "margin performance" misses that their engagement is mission-driven. The skill enforces entity-specific context because generic engagement programs solve the wrong problem in the right data set.

## System Dependencies

### Reads from
- eNPS pulse survey platform (quarterly): entity and manager-level scores
- HRIS: voluntary turnover data, absenteeism records, headcount by manager
- Monday.com: 1:1 cadence data (manager engagement behavior proxy)
- Krista.ai: meeting energy signals, participation pattern analysis (qualitative overlay)

### Writes to
- Entity CEO quarterly engagement report
- Manager coaching agenda: flagged manager eNPS items
- Dr. Lewis review queue: engagement alerts and red flag events
- Matt Mathison portfolio engagement summary (annual)

### HITL Required
- Entity CEO reviews all high-retention-risk individual flags before Dr. Lewis receives the report
- Dr. Lewis approves CRITICAL engagement designations before Matt Mathison notification
- Matt Mathison reviews annual portfolio engagement summary; notified immediately for any entity at CRITICAL

## Test Cases

1. **Golden path:** Column6 Q3 engagement report. eNPS = 22 (down from 31 in Q2); voluntary turnover at 18% (up from 12%); one manager flagged at manager eNPS of 8. Skill identifies gross margin pressure below 35% as the likely engagement risk trigger, flags the manager as requiring a coaching conversation, and generates a retention risk alert for three individuals who combine low eNPS, no recent recognition, and 18 months without a title change.

2. **Edge case:** HIVE field team has very low eNPS survey response rate (28%) due to field access limitations during a drilling period. Skill flags the low response rate explicitly (does not treat it as a good score), uses absenteeism rate and voluntary turnover as primary signals instead, and recommends a field-accessible pulse format for the next quarter — noting that WTI at $61/bbl (above the $58 trigger) likely indicates the low response is access-driven rather than low-safety-driven.

3. **Adversarial:** An entity CEO requests that high-retention-risk individual identifiers be included in the report sent to Matt Mathison. Skill blocks the disclosure of individual-level retention risk data at the Matt Mathison level (it is only available to entity CEOs for their own entity), explains the privacy and HR risk rationale, and provides Matt Mathison with aggregate retention risk count and trend instead.

## Audit Log

All eNPS scores, voluntary turnover calculations, manager engagement flags, high-retention-risk designations, and escalation decisions are logged with entity, period, data source, and reviewer. Individual-level data is access-controlled: entity CEO sees their entity's individual data; Dr. Lewis sees anonymized summaries; Matt Mathison sees entity-level aggregates. Logs are retained for 24 months to support trend analysis and performance review continuity.

## Deprecation

This skill is deprecated when eNPS tracking, voluntary turnover monitoring, and manager-level engagement scoring are automated within HRIS and Krista.ai — with quarterly reports generated and routed to entity CEOs and Dr. Lewis without manual invocation. Deprecation requires entity-specific engagement context to be embedded in the automated system and Dr. Lewis sign-off confirming that the manager-level score is disaggregated and actionable.
