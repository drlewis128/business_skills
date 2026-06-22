---
name: hr-ops-review
description: "Run the quarterly or annual HR function operations review for MBL Partners. Use when the user says 'HR ops review', 'HR function review', 'review the HR function', 'HR quarterly review', 'HR annual review', 'how is HR performing', 'HR function assessment', 'evaluate HR operations', 'HR retrospective', 'HR effectiveness', 'review our HR function', 'is HR working', 'HR performance review', 'HR function report', 'HR leadership review', 'HR priorities', 'HR plan', 'HR roadmap', 'HR strategy review', 'people strategy', 'HR budget review', 'HR function health', 'HR OKR review', or 'HR function scorecard'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--period <q1|q2|q3|q4|annual>] [--year <YYYY>] [--audience <entity-ceo|matt-mathison|portfolio>] [--action <build|present>]"
---

# HR Ops Review

Run the quarterly and annual HR function operations review — aggregating talent, compliance, engagement, and compensation metrics across MBL Partners and all portfolio companies, identifying systemic risks, and establishing HR priorities for the next period. The HR ops review is the function's accountability cadence; it is the forum where Dr. Lewis demonstrates the business value of the people function and where Matt Mathison or entity CEOs can redirect HR priorities.

## When to Use
- Quarterly cadence (Q1/Q2/Q3/Q4 cycle)
- Annual HR function review (combined with annual planning)
- Matt Mathison requests a portfolio HR briefing
- An entity CEO needs to understand the state of their HR function

## HR Ops Review Framework

```
REVIEW STRUCTURE:

  SECTION 1 — PEOPLE METRICS SUMMARY:
    Pull from hr-metrics-dashboard for each entity
    Headcount vs. plan; attrition (voluntary regrettable); time to fill; eNPS; compa-ratio health
    Portfolio-level roll-up: aggregate metrics across all entities
    Highlight: which entity is above threshold? Which is below?
    
  SECTION 2 — TALENT PIPELINE:
    Open requisitions by entity; days open
    Hiring pace vs. headcount plan
    Key pipeline risks: roles open >60 days; critical roles unfilled
    
  SECTION 3 — COMPENSATION HEALTH:
    Compa-ratio distribution by entity
    Employees below 0.85 (underpaid risk — retention)
    Employees above 1.15 (above-band risk — budget)
    Off-cycle adjustments made this quarter
    Merit cycle status (if Q4 review)
    
  SECTION 4 — PERFORMANCE MANAGEMENT:
    Active PIPs by entity; outcomes to date
    Coaching conversation documentation rate
    Q4: performance review completion rate
    
  SECTION 5 — COMPLIANCE STATUS:
    I-9 completion rate (new hires this quarter)
    Benefits enrollment compliance
    Handbook acknowledgment rate (% current)
    OIG/LEIE monthly check status (Allevio — 100% or flag)
    Any EEOC/employment law changes in effect this quarter
    
  SECTION 6 — ENGAGEMENT AND CULTURE:
    eNPS by entity (quarterly)
    THRIVE culture assessment results (annual only)
    Any ER complaints filed; status
    
  SECTION 7 — RISKS AND ALERTS:
    Any metric above threshold (per hr-metrics-dashboard alert criteria)
    Legal/compliance risks (any open investigations; EEOC activity)
    Key person dependency risks (from hr-high-performer-identifier)
    Compensation equity flags
    
  SECTION 8 — NEXT PERIOD PRIORITIES:
    3-5 specific HR initiatives for next quarter
    Owner and target completion date for each
    Budget implications (if any)

CADENCE:
  Quarterly entity-level: Dr. Lewis + entity CEO (45-60 min)
  Quarterly portfolio-level: Dr. Lewis → Matt Mathison briefing (30-min summary)
  Annual: full review including THRIVE assessment + comp band review + headcount plan
  
PORTFOLIO-LEVEL SYNTHESIS (for Matt Mathison):
  Cross-entity attrition comparison: which entity has the highest regrettable attrition?
  Cross-entity compensation health: which entity has the most below-band risk?
  Cross-entity compliance: any entity with compliance gaps?
  Dr. Lewis recommendation: where does portfolio-level HR investment have highest ROI?
  
ANTI-PATTERNS (what this review is NOT):
  Not a status update for its own sake — every section ends with implication + action
  Not a data dump — Dr. Lewis synthesizes and interprets; doesn't just present tables
  Not an internal audit — forward-looking priorities > backward-looking findings
```

## Output Format

```markdown
# HR Ops Review — [Quarterly: Q[X] / Annual] | [Year]
**Prepared by:** Dr. Lewis | **Audience:** [Entity CEO / Matt Mathison / Portfolio] | **Date:** [Date]

---

## Portfolio / Entity Summary

| Entity | FTE | Regrettable attrition | eNPS | Compa-ratio health | Top risk |
|--------|-----|----------------------|------|-------------------|---------|
| MBL (HQ) | | | | | |
| Allevio | | | | | |
| HIVE | | | | | |
| Column6 | | | | | |
| **Portfolio** | | | | | |

---

## Risks and Alerts
🔴 [Critical — immediate action]
⚠️ [Watch — monitor this quarter]

---

## Compliance Status
- [ ] I-9 compliance: [%] | ✅ / ⚠️ / 🔴
- [ ] OIG/LEIE monthly check (Allevio): ✅ / 🔴 [Date last completed]
- [ ] Handbook acknowledgments: [%] | ✅ / ⚠️
- [ ] Open ER cases: [Count] | Status

---

## Q[X+1] / [Year+1] HR Priorities

| Priority | Entity | Owner | Target | Investment |
|---------|--------|-------|--------|-----------|
| [Specific initiative] | | Dr. Lewis | [Date] | [Budget / Time] |

---

## Actions Required Before Next Review
1. [Action — owner — due date]
```

## Output Contract
- Every section ends with an implication, not just data — "eNPS at Allevio dropped from 32 to 14 this quarter" is a data point; "eNPS at Allevio dropped 18 points quarter-over-quarter, which correlates with the 3 manager-level hires in Q2 and the care coordinator team reorganization; I recommend a pulse check within 2 weeks and a manager effectiveness program starting in [month]" is an insight with an action; Dr. Lewis does not present the HR ops review as a report — it is a briefing with explicit interpretation and recommended actions for every metric that has moved meaningfully
- The portfolio synthesis for Matt Mathison is concise and decision-ready — Matt Mathison does not need a detailed HR report for each entity; he needs: which entity has the highest talent risk right now, what is the root cause, and what is Dr. Lewis doing about it; the portfolio briefing is 30 minutes maximum; Dr. Lewis prepares a one-page summary with the top 3 risks, their financial impact, and the recommended action for each; everything else is available in the entity-level detail if Matt wants to go deeper
- HR priorities for the next quarter are specific and owned — "improve engagement" is not a priority; "administer Q3 eNPS survey across all entities and present results to entity CEOs by [date]" is a priority; Dr. Lewis leaves every HR ops review with 3-5 specific, dated, owner-assigned initiatives for the next quarter; these initiatives are logged in Monday.com and reviewed at the next ops review for completion
- HITL required: entity-level ops review → Dr. Lewis + entity CEO (45-60 min); portfolio summary → Dr. Lewis + Matt Mathison (30 min, quarterly); OIG/LEIE flag → immediate escalation before review meeting; ER case review → entity CEO briefed on status (no PII; aggregate only); investment request >$25K → Matt Mathison approval; compliance gap → Dr. Lewis + entity CEO + legal counsel; key person risk → entity CEO action plan committed in review

## System Dependencies
- **Reads from:** hr-metrics-dashboard (all entity HR metrics); hr-attrition-analyzer (attrition detail); hr-compliance-calendar (compliance status by entity); hr-engagement-analyzer (eNPS; engagement scores); hr-compensation-benchmarker (compa-ratio health); hr-headcount-planner (open reqs; hiring pace); hr-employee-relations (open ER case count — no PII); hr-pip-builder (active PIPs)
- **Writes to:** HR ops review report (SharePoint → HR → Ops Reviews → [Period]); entity CEO action items (Monday.com); Matt Mathison portfolio briefing; next-quarter HR priority list; Monday.com HR workboard (priorities); Dr. Lewis HR calendar (quarterly cadence)
- **HITL Required:** Entity-level review → Dr. Lewis + entity CEO; portfolio summary → Dr. Lewis + Matt Mathison; OIG/LEIE flag → immediate; ER case → entity CEO briefed; investment >$25K → Matt Mathison; compliance gap → Dr. Lewis + CEO + legal; key person risk → entity CEO action

## Test Cases
1. **Golden path:** Q3 portfolio HR ops review for Matt Mathison (30-min summary). Top 3 risks: (1) Allevio regrettable attrition 18% annualized — root cause: care coordinator comp 12% below market; recommended action: $42K comp adjustment approved by Allevio CEO + Dr. Lewis (within threshold; Matt notified). (2) Column6 VP Sales is Red flight risk — retention conversation scheduled this week with Column6 CEO. (3) HIVE I-9 compliance: 1 of 3 new hires had Section 2 completed on Day 5 (2 days late) — self-correcting; documentation updated; process reminder to HIVE CEO. Matt Mathison: "Good briefing — focus on Allevio." Next review: October.
2. **Edge case:** Matt Mathison asks for an ad-hoc portfolio HR briefing outside the quarterly cadence → Dr. Lewis: "I can have a briefing ready within 24 hours. I'll pull the current metrics from each entity dashboard and synthesize the top risks and actions. I'll flag anything that has changed materially since last quarter's review. If there's a specific entity or metric you want me to focus on, let me know and I'll lead with that."
3. **Adversarial:** Entity CEO says the HR ops review is "too much time" and wants to skip to quarterly → Dr. Lewis: "I understand the time pressure. Let me make the entity-level review more efficient — I'll send you the one-page summary 24 hours before the meeting, so we spend the 45 minutes on interpretation and decisions rather than walking through data. If anything is green and on track, we spend zero time on it. We focus on the red and yellow items. Most quarters, that's 20-25 minutes of real conversation. Does that work?"

## Audit Log
HR ops review reports retained 3 years. Entity CEO action commitments retained. Matt Mathison portfolio briefing records retained. Priority list completion records retained (vs. committed). Investment request records retained.

## Deprecation
Review structure updated when HR function scope changes. Portfolio summary format updated if Matt Mathison reporting preferences change. Cadence reviewed annually.
