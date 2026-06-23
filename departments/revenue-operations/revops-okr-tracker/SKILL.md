---
name: revops-okr-tracker
description: "Track and manage quarterly Revenue Operations OKRs for MBL Partners portfolio entities. Use when the user says 'OKR', 'OKRs', 'objectives and key results', 'RevOps OKR', 'quarterly goals', 'Q goals', 'revenue operations goals', 'ops goals', 'quarterly objectives', 'revenue goals', 'pipeline goal', 'conversion goal', 'data quality goal', 'tech performance goal', 'RevOps targets', 'RevOps KPIs for the quarter', 'what are our RevOps goals', 'OKR review', 'OKR progress', 'OKR update', 'OKR check-in', 'OKR report', 'OKR status', 'are we on track', 'quarterly RevOps review', 'mid-quarter check-in', 'goal tracking', 'RevOps objectives', 'ops objectives', 'set RevOps goals', 'draft OKRs', 'plan RevOps OKRs', or 'RevOps quarterly planning'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--quarter <Q1|Q2|Q3|Q4>] [--year <2026|2027>] [--action <draft|review|check-in|close>]"
---

# RevOps OKR Tracker

Track and manage quarterly Revenue Operations OKRs across MBL Partners portfolio entities — setting specific, measurable objectives for pipeline health, conversion improvement, data quality, technology performance, and cross-functional collaboration, then reviewing progress mid-quarter and closing with outcome records. OKRs make RevOps accountable for business outcomes, not just activity.

## When to Use
- Beginning of quarter: draft OKRs with entity CEO
- Mid-quarter: 6-week check-in on OKR progress
- End of quarter: close OKRs with results and retrospective
- Annual planning: set portfolio-level RevOps OKRs for the year

## OKR Framework

```
OKR DESIGN PRINCIPLES:
  Objective: qualitative, ambitious, directional (one sentence; starts with a verb)
  Key Result: quantitative, measurable, binary (did we hit the number or not?)
  Maximum: 3 Objectives per entity per quarter; 3 Key Results per Objective = 9 KRs max
  Ambitious: at 100% confidence the target is wrong — 70% confidence is the right stretch level
  Owner: each KR has a named owner (Dr. Lewis; entity CEO; specific function lead)
  
REVOPS OKR CATEGORIES:

  PIPELINE & FORECASTING:
    Obj: "Achieve predictable, well-covered pipeline for [Q+1] revenue targets"
    Example KRs:
      KR1: Pipeline coverage ≥3× revenue target for all active entities by week 8 of Q
      KR2: Forecast accuracy ≤±10% for Commit scenario in all 3 months of Q
      KR3: ≥90% of Stage 4+ deals have MEDDPICCC ≥60% complete in GHL
      
  CONVERSION & PROCESS:
    Obj: "Identify and fix the single biggest conversion bottleneck in the Allevio funnel"
    Example KRs:
      KR1: Run full conversion funnel analysis by week 4 (identify bottleneck)
      KR2: Implement one targeted intervention by week 6 (entity CEO approved)
      KR3: Measure Stage 5→6 conversion rate at week 12; target +5pts vs. Q start
      
  DATA QUALITY:
    Obj: "Achieve industry-leading CRM data quality across all entity subaccounts"
    Example KRs:
      KR1: GHL field completion ≥95% for required fields across all entity records
      KR2: Zero PHI incidents in Allevio GHL subaccount (compliance; target is 0)
      KR3: Monthly data quality score ≥85/100 for all 3 months of Q
      
  TECHNOLOGY & AUTOMATION:
    Obj: "Automate the top 3 highest-volume RevOps manual tasks"
    Example KRs:
      KR1: Identify top 3 manual RevOps tasks (time-tracked by week 2)
      KR2: Automation 1 live in GHL by week 6 (tested; entity CEO approved; HIPAA reviewed if Allevio)
      KR3: Automation 2 and 3 live by week 10; combined time savings ≥4 hrs/week documented
      
  CROSS-FUNCTIONAL:
    Obj: "Establish MQL definition alignment across all MBL commercial entities"
    Example KRs:
      KR1: All entity CEOs sign off on entity-specific MQL definition by week 4
      KR2: MQL definitions documented in GHL and entity GTM playbook by week 6
      KR3: First marketing-sales alignment meeting with shared MQL data held by week 8

OKR REVIEW CADENCE:
  Week 1: draft OKRs; entity CEO + Dr. Lewis approve; owners confirmed
  Week 6: mid-quarter check-in; progress RAG status (Green/Yellow/Red); at-risk KRs escalated
  Week 12/13: close OKRs; score each KR (0%/50%/100%/110%); retrospective; inform next quarter

SCORING:
  0%: KR not started or abandoned
  50%: KR in progress but not completed; partial outcome
  100%: KR achieved as defined
  110%: KR exceeded (rare; flag specifically)
  OKR score: average of all KR scores; ≥70% = success; <50% = retrospective required
```

## Output Format

```markdown
# RevOps OKRs — [Entity] — Q[N] [Year]
**Drafted by:** Dr. Lewis | **Approved:** Entity CEO | **Date:** [Date]

---

## Objective 1: [Qualitative objective statement]

| Key Result | Owner | Target | Week 6 Status | Final Score |
|-----------|-------|--------|--------------|------------|
| KR1.1: [Measurable target] | [Owner] | [Number/date] | 🟡 In Progress | |
| KR1.2: | | | | |
| KR1.3: | | | | |

**Objective 1 Score: [X%]**

---

## Objective 2: ...

---

## OKR Summary

| Objective | Score | Status |
|-----------|-------|--------|
| Obj 1 | X% | ✅/⚠️/🔴 |
| Obj 2 | X% | |
| Obj 3 | X% | |
| **Portfolio average** | **X%** | |

---

## Retrospective (End of Quarter)
**What worked:** [1-2 bullets]
**What didn't:** [1-2 bullets]
**What's carrying forward to next quarter:** [1-2 bullets]
```

## Output Contract
- OKRs are a commitment, not a wish list — the most common OKR failure mode is setting OKRs that are really activity metrics disguised as outcomes ("run 3 conversion analyses" instead of "improve Stage 5→6 conversion by 5 points"); Dr. Lewis writes Key Results as outcomes (the measurable change in the world) not activities (the work the team does); the distinction matters because an activity OKR can be completed and have zero business impact; an outcome OKR that is only 50% achieved has still measurably moved the business forward and the team has learned something; Dr. Lewis will push back hard on entity CEOs who want to set activity-based KRs
- Mid-quarter check-in is where OKRs do their work — a 6-week check-in that shows a Key Result is Red (not achievable at current pace) gives the team 6 weeks to either adjust the target or change the approach; a check-in at week 11 that shows the same Red status gives 2 weeks of panic; Dr. Lewis schedules the week 6 check-in in calendar before the quarter starts; it is non-negotiable; 30 minutes; outcomes are logged; at-risk KRs get a specific pivot plan or a documented decision to retire that KR and focus resources on achieving the others
- HITL required: OKR drafting → entity CEO + Dr. Lewis; OKR approval → entity CEO signs off; any KR that writes to financial or operational systems → Dr. Lewis reviews automation plans; mid-quarter Red status → entity CEO + Dr. Lewis immediate; OKR score <50% → entity CEO retrospective required; portfolio OKR summary → Matt Mathison receives (quarterly)

## System Dependencies
- **Reads from:** GoHighLevel (KR data: pipeline coverage; conversion rates; data quality metrics); revops-gtm-kpi-tracker (Tier 1 and Tier 2 KPI data → foundation for KR targets); revops-pipeline-health-monitor (pipeline coverage KR tracking); revops-customer-data-integrity (data quality KR tracking)
- **Writes to:** OKR documents (SharePoint → [Entity] → RevOps → OKRs → [Year] → [Quarter]); entity CEO OKR approval record; mid-quarter check-in records; end-of-quarter close records with scores; retrospective documents; portfolio OKR summary (Dr. Lewis → Matt Mathison)
- **HITL Required:** OKR drafting → entity CEO + Dr. Lewis; approval → entity CEO; automation KRs → Dr. Lewis; Red mid-quarter → entity CEO + Dr. Lewis; <50% score → entity CEO retrospective; portfolio summary → Matt Mathison

## Test Cases
1. **Golden path:** Allevio Q3 2026 RevOps OKRs. Objective 1: "Achieve pipeline coverage ≥3× target by end of Q3 to protect Q4 revenue." KR1: coverage ≥3× for all 3 months (June/July/August); KR2: Stage 4+ deal MEDDPICCC ≥60% by week 8; KR3: forecast accuracy ≤±10% in all 3 months. Objective 2: "Fix Stage 5→6 conversion bottleneck identified in Q2 analysis." KR1: Root cause confirmed by week 3; KR2: intervention implemented by week 5 (entity CEO approved); KR3: Stage 5→6 conversion ≥65% by week 12. Week 6 check-in: Obj 1 all Green; Obj 2 KR2 Yellow (intervention designed but delayed 2 weeks). Pivot plan: intervention by week 7. Week 12: Obj 1 score 100%; Obj 2 score 83% (KR3: Stage 5→6 was 62% at week 12 — short of 65% but improving). Portfolio average: 94%. Success. Entity CEO retrospective: "execution on Obj 2 was slower than planned but the improvement trend is real."
2. **Edge case:** Entity CEO wants to add a 4th Objective mid-quarter because a new strategic priority emerged → Dr. Lewis: "Adding a 4th Objective mid-quarter creates a choice: which of the 3 existing Objectives gets de-prioritized? OKRs work because they force focus. If we add a 4th Objective without removing or descoping an existing one, we've effectively declared that all 4 are a priority — which means none of them are. Here's what I'd recommend: if the new priority is genuinely more important than one of the existing 3, we formally retire that Objective (document the decision; carry it to Q4 if needed) and add the new one. If it's as important as the existing 3, then we add it — but I'd want entity CEO to acknowledge that Q3 OKR scores are likely to take a hit and that's an acceptable tradeoff."
3. **Adversarial:** RevOps analyst argues that OKRs are "corporate BS" and they'd rather just "do the work" → Dr. Lewis: "I've heard this before, and I understand the frustration — OKRs done badly are busywork. Here's the version I run: 3 objectives; 9 key results; 30-minute drafting session with entity CEO; 30-minute week 6 check-in; 30-minute close. 90 minutes of your time over 13 weeks. In exchange: you know exactly what the two most important RevOps problems are this quarter, you have entity CEO alignment on your priorities, and when you close a KR at 110% you have a documented win. I don't run OKRs for optics — I run them because without them, RevOps expands to fill every request that comes in and there's no way to prioritize. Try one quarter. If it doesn't add value, we talk."

## Audit Log
OKR documents per entity per quarter (permanent). Entity CEO approval records. Mid-quarter check-in records. End-of-quarter close records with scores. Retrospective documents. KR pivot decisions (Red status → documented pivot). Portfolio OKR summary (Matt Mathison). OKR score trend tracking across quarters.

## Deprecation
OKR categories reviewed when RevOps function scope changes. KR design principles reviewed annually. Scoring methodology reviewed when entity CEO requests changes. Cadence reviewed when entity team size changes significantly. Portfolio OKR summary reviewed when Matt Mathison's reporting preferences change.
