---
name: data-literacy-trainer
description: "Build data literacy across a non-technical team. Use when the user says 'data literacy', 'teach the team about data', 'help people understand data', 'data training', 'non-technical data education', 'data culture', 'help stakeholders read dashboards', 'data skills training', or 'make the team more data-driven'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--audience <executive|operations|sales|all>] [--level <beginner|intermediate>]"
---

# Data Literacy Trainer

Build data literacy across MBL's team so that more decisions are made based on data and fewer are made based on opinion. Data literacy is the ability to read, understand, and act on data — it doesn't require technical skills. A non-technical person with data literacy knows how to interpret a trend line, what statistical significance means in plain English, how to spot a misleading chart, and how to ask the right question of a dataset. For MBL, data literacy is how the whole team benefits from the data infrastructure Dr. Lewis builds.

## When to Use
- Team members don't use dashboards that exist
- Same data question gets asked differently by different people
- Stakeholders misinterpret charts or draw wrong conclusions
- Matt Mathison wants the team to be more data-driven
- Portfolio company is building a data culture from scratch
- New dashboard deployed — need to train the audience

## Data Literacy Levels

```
Level 1 — Consumer (most business stakeholders):
  Can read a dashboard and understand what it's saying
  Can spot obvious anomalies ("this looks wrong")
  Knows what the company's key metrics mean
  Knows who to ask for data questions
  Doesn't confuse correlation with causation

Level 2 — Analyst (team leads, PMs, CS leads):
  Can write basic SQL or use a BI tool to answer their own questions
  Can design a simple A/B test
  Can distinguish between statistical significance and practical significance
  Can build a basic chart in Metabase or Google Sheets

Level 3 — Data professional (Dr. Lewis, data engineers):
  Can design and build data pipelines
  Can write complex SQL, dbt models, Python scripts
  Understands data modeling, data quality, data governance
```

## Output Format

```markdown
# Data Literacy Training Plan — <Audience>
**Date:** <date> | **Trainer:** Dr. Lewis
**Target level:** Level 1 (Consumer) / Level 2 (Analyst)
**Audience:** <Matt Mathison / MBL team / Portfolio company team>
**Format:** Self-paced / Workshop / 1:1 coaching

---

## Training Curriculum

### Module 1: Understanding Our Key Metrics (Level 1 — All staff)

**Learning objectives:**
- Define MBL's top 5 metrics precisely
- Explain the difference between ARR and revenue
- Describe what NRR means and why it matters
- Identify where to find the current value of each metric

**Content:**

**The 5 metrics you need to know:**

| Metric | What it means in plain English | Where to find it | Target |
|--------|-------------------------------|-----------------|--------|
| ARR | The annualized value of all our signed recurring contracts | Portfolio dashboard | $X |
| NRR | % of revenue we kept from existing customers, including growth | Revenue analytics | >100% |
| Pipeline | Total value of deals we're actively working | CRM dashboard | $Y coverage |
| D7 Retention | % of users who come back within 7 days | Product dashboard | >45% |
| Action item completion | % of AI-extracted actions completed | Meeting Intelligence | >50% |

**Common mistakes:**
- ❌ "Revenue is up" → Which revenue? Monthly billed? ARR? One-time? Be specific.
- ❌ "Retention is 80%" → Retention of what? Users? Revenue? Over what period?
- ✅ "D7 user retention is 48% for the Feb cohort, up 5pp from January"

---

### Module 2: Reading Dashboards (Level 1 — All staff)

**Learning objectives:**
- Read any dashboard in under 2 minutes
- Identify when a number is concerning vs. normal
- Know when to escalate vs. investigate yourself

**The 3-step dashboard reading method:**
1. Look at the header: What's the overall health? (Red/Yellow/Green)
2. Find what changed: What moved since last period?
3. Ask "so what?": Does this require action, or just monitoring?

**Interpreting trend lines:**
- ↑ Consistently up over 3+ periods: trend is real
- ↑ One spike then flat: likely an event, not a trend
- ↓ Single drop: investigate; may be noise
- ↓ Consistently down 3+ periods: problem — escalate

**When to escalate vs. investigate:**
| Situation | Do this |
|-----------|---------|
| Single data point looks odd | Check if it's a weekend/holiday; ask in #data-questions |
| 3+ periods of decline | Escalate to your lead + Dr. Lewis |
| Red metric in executive dashboard | Dr. Lewis has already been notified |

---

### Module 3: Avoiding Common Data Mistakes (Level 1 — All staff)

**The 5 data traps:**

**Trap 1: Correlation ≠ Causation**
"Summaries sent increased AND retention increased — summaries cause retention!"
Reality: Both may have increased for a different reason. Don't assume causation without a controlled experiment.

**Trap 2: Small sample sizes**
"Our 3 beta users all love it — it'll definitely work at scale!"
Reality: N=3 is not a sample. Wait for N≥30 before making decisions.

**Trap 3: Cherry-picking time periods**
"Look, retention went up 20% this week!"
Reality: Was the prior week an all-time low? Always compare to a meaningful baseline.

**Trap 4: Confusing activity with outcomes**
"We sent 200 summaries this month!" 
Reality: Did anyone act on them? Activity metrics measure effort, not value.

**Trap 5: Averaging averages**
"Average deal size is up!"
Reality: Average of averages is mathematically wrong. Sum the totals, then divide.

---

### Module 4: Basic SQL (Level 2 — Team leads, PMs)

**Learning objectives:**
- Write a basic SELECT query
- Filter with WHERE
- Aggregate with COUNT, SUM, AVG
- Join two tables

**Curriculum:** Hands-on session using MBL's BigQuery + a tutorial query set
**Duration:** 2 × 90-minute sessions
**Prerequisite:** Module 1 + 2 completed

---

## Training Delivery

| Audience | Format | Duration | Cadence | Owner |
|---------|--------|---------|---------|-------|
| All MBL team | Async video + quiz | 45 min | Once (+ new hire) | Dr. Lewis |
| Team leads | Workshop | 3 hours | Quarterly refresh | Dr. Lewis |
| Matt Mathison | 1:1 dashboard walkthrough | 30 min | On new dashboard launch | Dr. Lewis |
| Portfolio company team | Webinar | 60 min | At product rollout | Dr. Lewis |

---

## Data Literacy Assessment

**Level 1 check (pass/fail):**
1. What is MBL's ARR (approx)?
2. If D7 retention drops from 48% to 38%, is that significant?
3. What does NRR > 100% mean?

**Pass threshold:** 3/3 correct

**Level 2 check:**
Write a SQL query that counts the number of meetings per entity in the last 30 days.
```

## Output Contract
- All training always concrete with MBL's actual metrics — generic "here's what ARR means" training isn't adopted; "here's our ARR and how to find it" is
- Data traps section always included — the most expensive data errors come from misinterpretation, not bad data
- Assessment always included — training without assessment has no quality check
- Delivery format matched to audience — Matt Mathison gets a 30-minute 1:1; a portfolio company gets a webinar
- HITL required: Dr. Lewis designs and delivers training; training content changes reviewed by Dr. Lewis; assessment results reviewed by Dr. Lewis to identify data literacy gaps

## System Dependencies
- **Reads from:** MBL metric definitions, existing dashboards, data catalog
- **Writes to:** Training materials (SharePoint/Data/Training); assessment results
- **HITL Required:** Dr. Lewis designs and delivers; assessment results inform further coaching

## Test Cases
1. **Golden path:** MBL team data literacy training → Module 1: 5 key metrics defined with real MBL values; delivered as async 20-min video; Module 2: dashboard reading method — 3-step approach applied to live Portfolio KPI dashboard; Module 3: 5 data traps with MBL examples; assessment: 3 questions, 85% of team passes; follow-up: 1:1 coaching for those who didn't pass
2. **Edge case:** Portfolio company has low data literacy and actively distrusts the data ("the numbers are always wrong") → build trust before training on usage; start with a data quality audit so they see the data being improved; then train on how to read it; a team that distrusts data won't use it regardless of training; trust first, then literacy
3. **Adversarial:** Training is created but nobody does it → data literacy training has the same adoption challenge as any training; make it short (<30 min), practical (uses their actual dashboards), and tied to something they care about ("this will save you 2 hours of manual reporting"); for Matt Mathison, a 30-minute 1:1 is more effective than a 2-hour recorded course

## Audit Log
Training materials versioned. Assessment scores recorded per participant. Quarterly data literacy survey (team self-reported) retained.

## Deprecation
Retire when data literacy is embedded in the culture — new hire onboarding includes data literacy, team members regularly self-serve answers from dashboards, and data disputes are rare.
