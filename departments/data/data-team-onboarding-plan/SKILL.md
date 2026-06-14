---
name: data-team-onboarding-plan
description: "Build a 30/60/90-day onboarding plan for a new data analyst or data engineer. Use when the user says 'onboard a data person', 'data analyst onboarding', 'data engineer first 90 days', 'new data hire', 'data team onboarding', 'ramp up data analyst', 'first week for data engineer', or 'data hire onboarding plan'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--name <name>] [--role <analyst|engineer|scientist>] [--company <entity>]"
---

# Data Team Onboarding Plan

Build a structured 30/60/90-day onboarding plan for new data team members. A data hire without a structured onboarding plan will spend their first month figuring out where data lives, what tools to use, and what the business means by "churn" — instead of building anything useful. A good onboarding plan cuts time-to-contribution from months to weeks. For MBL, where data infrastructure is early-stage, the onboarding plan is also part of building institutional knowledge.

## When to Use
- A new data analyst or engineer starts
- A contractor joins the data function
- Portfolio company is onboarding their first data person
- A technical team member is transitioning into a data role

## Onboarding Philosophy

```
Week 1: Environment and context — not production access yet
  Get tools working, understand the business, meet stakeholders
  Read all existing documentation, data catalogs, architecture docs

Month 1 (Days 1-30): Understand before building
  Learn the data landscape: what exists, where it lives, what quality it has
  Shadow Dr. Lewis on data tasks before owning any
  No new pipelines, no new models — understand what exists first

Month 2 (Days 31-60): First contribution
  Own a small, well-defined data task
  Write first dbt model or dashboard under Dr. Lewis supervision
  Run first data quality audit independently

Month 3 (Days 61-90): Full ownership
  Own a full data domain independently
  Lead the weekly data ops review
  Propose the first independent initiative
```

## Output Format

```markdown
# Data Team Onboarding Plan — <Name>
**Role:** <Data Analyst / Data Engineer / Data Scientist>
**Start date:** <date>
**Company:** <MBL / Allevio / HIVE / Column6>
**Plan author:** Dr. John Lewis

---

## Day 1 Checklist

- [ ] Access provisioned: BigQuery, Metabase, dbt Cloud (or local), Fivetran dashboard
- [ ] Access provisioned: GoHighLevel (read-only), QuickBooks (read-only), Monday.com
- [ ] Access provisioned: GitHub (data repo), SharePoint (data documentation)
- [ ] Dr. Lewis 1:1 introductory meeting (1 hour) — MBL context, data landscape overview
- [ ] Data catalog reviewed: [link to SharePoint/Data/Catalog]
- [ ] Architecture document reviewed: [link to SharePoint/Data/Architecture]
- [ ] Buddy assigned: <name> (if applicable)

---

## Week 1: Environment + Context

**Goals:** All tools working; understand the business context; no production changes

| Day | Activity | Output |
|-----|---------|--------|
| Mon | 1:1 with Dr. Lewis; tools setup; read data catalog | All tools accessible |
| Tue | Read architecture doc; shadow Dr. Lewis on ops review | Notes on data flow |
| Wed | Stakeholder interviews: Matt Mathison (15 min), portfolio lead (15 min) | Notes on what data they use |
| Thu | Read all existing dbt models; trace 1 metric from source to dashboard | Metric lineage documented |
| Fri | Week 1 reflection: what's clear, what's confusing → share with Dr. Lewis | 1-page doc |

---

## Month 1 (Days 1-30): Learn

**Milestone: 30-day review with Dr. Lewis**
**Success criteria:**
- [ ] Can explain where MBL's core data comes from (all 4 sources)
- [ ] Can explain the dbt model structure (raw → staging → marts)
- [ ] Has audited the data quality of at least 1 data source
- [ ] Has traced 3 metrics from source to dashboard
- [ ] Has met all key stakeholders and understands their data needs

**Key activities:**

| Activity | Goal | By day |
|---------|------|--------|
| Data catalog review (all tables) | Understand what data exists | Day 7 |
| 3 metric lineage traces | Understand data flow | Day 14 |
| Data quality audit (1 source) | Understand current data health | Day 21 |
| Shadow 2 data tasks with Dr. Lewis | Understand how work gets done | Day 10, 20 |
| Stakeholder interviews (all key users) | Understand data needs | Day 15 |

**What NOT to do in Month 1:**
- ❌ Push code to production
- ❌ Modify existing dbt models without Dr. Lewis review
- ❌ Create new dashboards (understand existing ones first)
- ❌ Change data access permissions

---

## Month 2 (Days 31-60): First Contribution

**Milestone: 60-day review with Dr. Lewis**
**Success criteria:**
- [ ] Has shipped 1 dbt model or dashboard to production (reviewed by Dr. Lewis)
- [ ] Has resolved 1 data quality issue independently
- [ ] Owns and runs the weekly data ops tracker review
- [ ] Can answer basic data questions from stakeholders without Dr. Lewis

**Key activities:**

| Activity | Goal | By day |
|---------|------|--------|
| Write first dbt model (staging layer) | First code contribution | Day 40 |
| Deploy to production (Dr. Lewis reviews) | First production deployment | Day 50 |
| Own weekly data ops review | Process ownership | Day 35 |
| Resolve 1 data quality issue | Independent problem solving | Day 55 |

---

## Month 3 (Days 61-90): Full Ownership

**Milestone: 90-day review with Dr. Lewis**
**Success criteria:**
- [ ] Owns a full data domain independently (CRM data, financial data, or AI metrics)
- [ ] Has proposed 1 improvement initiative
- [ ] Is the primary contact for data questions in their domain
- [ ] Pipeline health and data quality for their domain is their responsibility

**Key activities:**

| Activity | Goal | By day |
|---------|------|--------|
| Own 1 data domain fully | Full responsibility for a domain | Day 70 |
| Propose first independent initiative | Show independent judgment | Day 80 |
| Run 90-day review with Dr. Lewis | Demonstrate readiness | Day 90 |

---

## 90-Day Review Framework

Dr. Lewis assesses on:
1. **Technical competence:** Can they write clean SQL, design good models, debug pipeline failures?
2. **Business understanding:** Do they know what the metrics mean and why they matter?
3. **Independence:** Are they asking the right questions without needing constant guidance?
4. **Communication:** Can they explain data findings to non-technical stakeholders?

**Outcome:** Full domain ownership / Extended supervised period / Role adjustment
```

## Output Contract
- Day 1 checklist always complete — missing access on day 1 signals disorganized onboarding
- Month 1 is always learn-first — no production code without Dr. Lewis review in Month 1
- 30/60/90 milestones have binary success criteria — "doing well" is not a milestone
- 90-day review produces an explicit ownership decision
- HITL required: Dr. Lewis designs and approves onboarding plan; all production deployments in Month 1-2 require Dr. Lewis review; 30/60/90 reviews conducted by Dr. Lewis; Matt Mathison informed of 90-day outcome for portfolio company data hires

## System Dependencies
- **Reads from:** Existing data catalog, architecture docs, dbt models, pipeline configurations
- **Writes to:** Onboarding plan (SharePoint/Hiring); access provisioning checklist
- **HITL Required:** Dr. Lewis designs plan; reviews all Month 1 production work; conducts milestone reviews

## Test Cases
1. **Golden path:** Data analyst onboarding → Day 1: all access; Week 1: tools, context, stakeholder interviews; Month 1: data catalog mastered, 3 metric traces, 1 quality audit; Month 2: first dbt model shipped, owns ops review, resolves 1 quality issue; Month 3: owns CRM data domain; 90-day review: full domain ownership granted; Dr. Lewis transitions from coach to reviewer
2. **Edge case:** Data hire is joining a team where data infrastructure doesn't exist yet (building from scratch) → reframe Month 1 as "build the foundation" rather than "understand existing"; priorities shift to architecture decisions and first pipeline; still should spend Week 1 understanding the business before writing any code; the "don't change production" rule still applies — Week 1 is understanding, Week 2 is planning, Week 3+ is building
3. **Adversarial:** New data hire wants to "modernize the stack" and replace existing systems in Month 1 → Month 1 is for learning, not changing; a hire who changes the stack in Month 1 is operating with 3 weeks of context; even if their instincts are right, the transition risk isn't worth it; Dr. Lewis should channel improvement ideas into a Month 3 initiative proposal after they've built full context; good ideas are still good ideas 3 months later

## Audit Log
Onboarding plans retained per hire. Milestone review outcomes documented. Production deployment approvals logged.

## Deprecation
Retire when MBL has a dedicated People/HR function with a standardized data team onboarding program.
