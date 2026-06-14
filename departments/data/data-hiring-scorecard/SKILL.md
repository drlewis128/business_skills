---
name: data-hiring-scorecard
description: "Evaluate data analyst and data engineer candidates with a structured scorecard. Use when the user says 'hire a data analyst', 'data engineer interview', 'data scientist hiring', 'evaluate data candidate', 'data team hiring', 'data analyst scorecard', 'analytics hire', or 'assess data skills'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--role <analyst|engineer|scientist>] [--company <MBL|Allevio|HIVE|Column6>]"
---

# Data Hiring Scorecard

Evaluate data team candidates against MBL's requirements. MBL needs data people who can work across the full stack — from raw SQL to stakeholder communication — without a large supporting team. A data analyst who can only make dashboards, or a data engineer who can't talk to business stakeholders, won't cut it. MBL needs full-stack data contributors who can own a domain end-to-end.

## When to Use
- Hiring a data analyst, data engineer, or data scientist at MBL or a portfolio company
- Evaluating a data contractor
- Portfolio company building a data team — score their candidates
- Deciding between candidates with different skill profiles

## Role Definitions for MBL

```
Data Analyst:
  Primary: SQL, dashboards, business metric definitions, stakeholder communication
  Secondary: Basic Python/dbt, data quality auditing
  MBL need: Someone who can answer "what does this metric mean?" and "why did it change?"

Data Engineer:
  Primary: ETL/ELT pipelines, data warehouse design, dbt, infrastructure
  Secondary: Python, SQL, data quality monitoring
  MBL need: Someone who can build and maintain the data pipeline without constant supervision

Data Scientist:
  Primary: Statistical modeling, forecasting, ML, experiment design
  Secondary: SQL, Python, business communication
  MBL need: Someone who can build AI-adjacent analytical models (not training LLMs)
```

## Scorecard (100 points)

```
Technical Skills (50 points)
  SQL proficiency           — 20 points
  Data modeling             — 10 points
  BI/visualization          — 10 points
  Programming (Python/dbt)  — 10 points (engineer: 20; analyst: 5)

Business Acumen (30 points)
  Stakeholder communication — 15 points
  Metric thinking           — 15 points

MBL Fit (20 points)
  Speed and autonomy        — 10 points
  THRIVE alignment          — 10 points

Hire thresholds:
  85-100: Exceptional — offer fast
  70-84:  Strong hire
  55-69:  Conditional — specific gaps must be acceptable
  <55:    Pass
```

## Output Format

```markdown
# Data Hiring Scorecard — <Candidate Name>
**Date:** <date> | **Role:** <Analyst / Engineer / Scientist>
**Company:** <entity> | **Interviewer:** Dr. John Lewis

---

## Scorecard

### Technical Skills (50 points)

**SQL Proficiency — <N>/20**

| Question/Task | Notes | Score (0-5) |
|--------------|-------|------------|
| Write a query to calculate D7 retention from an events table | <notes on approach and correctness> | <N> |
| Explain why this query is slow (show a query plan) | <notes> | <N> |
| Write a cohort analysis for monthly acquisition cohorts | <notes> | <N> |
| Rewrite this correlated subquery as a JOIN | <notes> | <N> |

---

**Data Modeling — <N>/10**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| How would you model this business process as a set of database tables? | <notes> | <N> |
| What's the difference between a star schema and a normalized schema? When do you use each? | <notes> | <N> |

---

**BI/Visualization — <N>/10**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| Walk me through a dashboard you built. Who was it for, what did they do with it? | <notes> | <N> |
| How do you decide what to put on a dashboard vs. what goes in a report vs. what's in the data? | <notes> | <N> |

---

**Programming (Python / dbt) — <N>/10**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| How comfortable are you with Python for data? Walk me through something you built. | <notes> | <N> |
| Have you used dbt? Walk me through how you'd structure a dbt project. (Engineer only) | <notes> | <N> |

---

### Business Acumen (30 points)

**Stakeholder Communication — <N>/15**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| Tell me about a time you had to explain a complex analysis to someone who isn't technical. | <notes> | <N> |
| What do you do when a stakeholder asks for a report but you think they're asking the wrong question? | <notes> | <N> |
| How do you handle a situation where the data tells a story the business doesn't want to hear? | <notes> | <N> |

---

**Metric Thinking — <N>/15**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| How would you define "active user" for a meeting intelligence product? What are the edge cases? | <notes> | <N> |
| You see ARR dropped 15% this month. Walk me through how you diagnose it. | <notes> | <N> |
| What's the difference between a leading and lagging indicator? Give an example from your past work. | <notes> | <N> |

---

### MBL Fit (20 points)

**Speed and Autonomy — <N>/10**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| Tell me about a time you built something from scratch with no guidance. | <notes> | <N> |
| If you had to ship a useful dashboard in 48 hours, what would you cut and why? | <notes> | <N> |

**THRIVE Alignment — <N>/10**

| Dimension | Signal | Notes | Score (0-2) |
|-----------|--------|-------|------------|
| Truth | Will they report bad news clearly? | <notes> | <N> |
| Hustle | Evidence of moving fast | <notes> | <N> |
| Integrity | How they handled data ethically | <notes> | <N> |
| Value | Do they think about ROI of their work? | <notes> | <N> |
| Respect | How they talk about past teams | <notes> | <N> |

---

## Total Score: <N>/100

**Hire / Pass / Hold:** <decision>
**Key strengths:** <list>
**Key concerns:** <list>
**Recommendation to Dr. Lewis / Matt Mathison:** <BLUF — 2 sentences>
```

## Output Contract
- SQL assessment always includes a live coding component — "claims SQL proficiency" without a test is not a qualification
- Business acumen always assessed — a data person who can't communicate findings to non-technical stakeholders is only half useful
- THRIVE alignment scored — a technically excellent candidate with poor Truth/Integrity scores is a risk in a data role
- Recommendation always includes BLUF — Dr. Lewis reads the bottom line, not the full scorecard
- HITL required: Dr. Lewis reviews all scorecards; Matt Mathison approves data hires for MBL; portfolio company data hires reviewed by Dr. Lewis before offer

## System Dependencies
- **Reads from:** Candidate resume, SQL test results, portfolio/GitHub
- **Writes to:** Hiring scorecard (SharePoint/Hiring)
- **HITL Required:** Dr. Lewis reviews; Matt Mathison approves offers; offer letter requires both approvals

## Test Cases
1. **Golden path:** Data analyst candidate → SQL: 16/20 (strong, missed optimizing a slow query); Data modeling: 8/10; BI: 9/10 (strong dashboard portfolio); Python/dbt: 5/10 (basic Python, no dbt experience); Stakeholder: 14/15 (excellent communicator); Metrics: 12/15 (good on definitions, weaker on diagnosis); Speed/autonomy: 8/10; THRIVE: 9/10; Total: 81/100; Hire — dbt gap acceptable if willing to learn, confirm before offer
2. **Edge case:** Candidate has strong credentials (Google, Netflix) but performs poorly on the SQL test → credentials don't transfer — score based on demonstrated performance; a Netflix engineer who can't write a cohort query in the interview is not a data analyst MBL needs; credentials explain where they've been, the test shows where they are now
3. **Adversarial:** Candidate pre-prepared all the "right" answers to common data interview questions but can't go deeper on any of them → probe by going one level deeper on every answer; "tell me more about how you handled that" or "show me the SQL you would write for that"; rehearsed answers have a ceiling; genuine competence doesn't

## Audit Log
Scorecards retained per candidate per role. Hire/pass decisions documented. Outcome tracking: hired candidates' performance vs. scorecard.

## Deprecation
Retire when MBL has a dedicated recruiting function with established data team hiring process and standardized technical assessments.
