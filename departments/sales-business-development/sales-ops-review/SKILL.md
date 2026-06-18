---
name: sales-ops-review
description: "Run the quarterly sales operations review for MBL portfolio companies. Use when the user says 'sales ops review', 'sales operations review', 'quarterly sales review', 'QSR', 'sales function review', 'how is sales doing', 'sales health check', 'sales effectiveness review', 'review the sales function', 'sales audit', 'are we set up for success in sales', 'sales infrastructure review', 'sales strategy review', 'how well is our sales process working', 'sales process review', 'sales system review', 'assess the sales organization', 'sales team review', 'annual sales review', 'sales capacity review', or 'sales planning review'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4|annual>] [--action <run|prepare|present>]"
---

# Sales Operations Review

Run the quarterly sales operations review for MBL portfolio companies — assessing the health of the sales function across pipeline, process, people, and tools, and delivering a structured report with specific recommendations. The sales ops review is not a KPI dashboard readout; it is a diagnostic that evaluates whether the sales function is set up to hit its targets in the coming quarter, not just whether it hit them in the last one.

## When to Use
- Beginning of each quarter (Q1 through Q4 — looking forward into the current quarter)
- Annual sales planning (October — building the following year's plan)
- A significant miss or win that warrants investigation of root causes
- Matt Mathison requesting a portfolio-level sales health assessment

## Sales Ops Review Framework

```
REVIEW STRUCTURE — 5 DIMENSIONS:

  1. PIPELINE HEALTH:
     Coverage ratio: Is the pipeline coverage ≥3× quota for the quarter?
       <3×: Alert — action required this week; <2×: Crisis — CEO alert within 24 hours
     Quality: What % of pipeline is ICP-fit and in the right stage?
       Flag: Any deal >60 days in the same stage without an explanation
     Weighted forecast: What does the 3-scenario model predict for the quarter?
       (Commit; Upside; Downside — see sales-forecast-builder)
     Win rate trend: Is the win rate improving; stable; or declining vs. prior quarter?
       
  2. PROCESS HEALTH:
     Playbook adherence: Are reps following the playbook? (Discovery → MEDDPICCC; CRM logging)
     CRM hygiene score: What % of active deal records are complete and current? (target: >90%)
     Inbound response time: Are inbound leads getting responses within 1 hour?
     Proposal quality: Are proposals going out within the approved structure and with Dr. Lewis review?
     
  3. PEOPLE HEALTH:
     Rep attainment: Where is each rep vs. quota? (MTD or QTD depending on quarter timing)
     Activity levels: Are reps hitting outreach activity targets?
     Skill gaps: From coaching sessions — what patterns are emerging?
     Rep retention risk: Is any rep showing departure signals? (declined meetings; LinkedIn updates)
     Vacancy: Are there open roles? What's the hiring timeline? (see sales-hiring-scorecard)
     
  4. RETENTION AND EXPANSION HEALTH:
     GRR: What is the current Gross Retention Rate? (target: >90% Allevio; >70% Column6)
     Renewals due: Which accounts are renewing this quarter? Are we on track?
     At-risk accounts: How many are in Yellow or Red status? What's the response plan?
     Expansion pipeline: What upsell or cross-sell opportunities are in progress?
     
  5. INFRASTRUCTURE AND TOOLS:
     GoHighLevel: Is the CRM being used correctly? Any configuration issues?
     Commission calculation: Are all Q[X-1] commissions calculated and approved?
     Quota and territory: Do the current quotas and territories still reflect market reality?
     Playbook currency: Is the playbook up to date? Any updates needed based on Q[X-1] learnings?

REVIEW OUTPUT — THREE DELIVERABLES:
  1. Sales Ops Report (internal — Dr. Lewis + CEO + Matt Mathison):
     Full 5-dimension assessment; specific findings; specific recommendations
     
  2. CEO Briefing (15-minute verbal summary):
     BLUF — what is the single most important thing the CEO needs to know?
     Top 3 risks entering the next quarter
     Top 2 opportunities
     2-3 recommended CEO actions
     
  3. Matt Mathison Portfolio Summary (if requested):
     One-page summary: Pipeline; forecast; retention status; headcount
     Flagged risks and recommended actions
```

## Output Format

```markdown
# Sales Operations Review — [Entity] | Q[X] [YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Reviewed with:** CEO [Date]

---

## BLUF (Bottom Line Up Front)

**Overall sales health:** 🟢 Strong / 🟡 Caution / 🔴 At-Risk
**Most important issue:** [Single sentence — the one thing the CEO must act on]
**Forecast for Q[X]:** Commit $[X]K | Upside $[X]K | Downside $[X]K

---

## 1. Pipeline Health

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Pipeline coverage | >3× | [X]× | 🟢 / 🟡 / 🔴 |
| Win rate (trailing 90 days) | >30% | [X]% | 🟢 / 🟡 / 🔴 |
| Stale deals (>60 days no progress) | 0 | [N] | 🟢 / 🟡 / 🔴 |
| Weighted pipeline (Commit) | $[X]K quota | $[X]K | 🟢 / 🟡 / 🔴 |

---

## 2. Process Health

| Dimension | Finding | Status |
|-----------|---------|--------|
| CRM hygiene score | [X]% complete records | 🟢 / 🟡 / 🔴 |
| Inbound response time | Avg [X] min | 🟢 / 🟡 / 🔴 |
| Discovery debrief rate | [X]% of discovery calls debriefed | 🟢 / 🟡 / 🔴 |
| Proposal review rate | [X]% >$50K proposals reviewed by Dr. Lewis | 🟢 / 🟡 / 🔴 |

---

## 3. People Health

| Rep | QTD attainment | Pipeline coverage | Skill focus | Risk |
|-----|--------------|-----------------|-------------|------|
| [Rep A] | [X]% | [X]× | [Closing] | Low |
| [Rep B] | [X]% | [X]× | [Discovery] | Medium — coaching active |

---

## 4. Retention Health

**GRR:** [X]% (target: >90%) | **Renewals due this quarter:** [N]
**At-risk accounts:** [N Yellow; N Red] | **Expansion in progress:** [N opportunities; $[X]K pipeline]

---

## 5. Infrastructure

**Commission status:** Q[X-1] commissions [Calculated / Pending] | Approved by CEO: [Yes/No]
**Playbook update needed:** [Yes — specific section / No]
**GoHighLevel issues:** [None / Specific issue]

---

## Recommendations (prioritized)

1. **[Highest priority action]** — [Who does it; by when]
2. [Second priority]
3. [Third priority]

---

## CEO Actions Required

| Action | CEO decision needed | By when |
|--------|-------------------|---------|
| [Hire 3rd rep — territory carved; interview process starts] | Yes | [Date] |
| [At-risk account — CEO leads retention call for Group A] | Yes | This week |
```

## Output Contract
- The BLUF is the most important part — the CEO and Matt Mathison are busy; the first thing they read must tell them whether there is a problem and what the most important action is; Dr. Lewis writes the BLUF before filling in any other section of the report; if Dr. Lewis can't write a one-sentence BLUF that captures the most important thing, the review is not complete enough
- The review assesses the future, not just the past — most pipeline reviews look backward; the sales ops review looks forward: "Given what we see in the pipeline, process, people, and retention, are we going to hit our targets next quarter?"; a green scorecard for Q2 with a 1× pipeline coverage ratio entering Q3 is not a success — it is a crisis that hasn't arrived yet; Dr. Lewis builds the review to be predictive, not retrospective
- Recommendations must be specific and assigned — "we need to improve win rate" is an observation; "Rep B will add the Compelling Event question to every discovery call for the next 30 days and Dr. Lewis will review the impact at the next coaching session" is a recommendation; every recommendation in the sales ops review has a specific owner and a specific due date; Dr. Lewis follows up on prior-quarter recommendations in every review
- HITL required: Dr. Lewis conducts the review and writes the report; CEO reviews and approves the CEO briefing before it is presented to Matt Mathison; Matt Mathison receives the portfolio summary quarterly (or upon request); any recommendation that requires CEO action is flagged explicitly; Dr. Lewis does not communicate recommendations to Matt Mathison without the CEO's review; the CEO is the decision-maker on all staffing and investment recommendations in the review

## System Dependencies
- **Reads from:** sales-kpi-dashboard (all quantitative metrics — pipeline; win rate; GRR; attainment); sales-forecast-builder (3-scenario forecast for the quarter); sales-pipeline-manager (pipeline quality; stale deals; coverage ratio); sales-crm-hygiene-manager (CRM hygiene score); sales-coaching-framework (rep-level performance and skill gaps); sales-renewal-manager (renewals due; at-risk accounts); sales-quota-setter (quota attainment — is the quota the right number?); sales-hiring-scorecard (open roles; hiring status)
- **Writes to:** Sales ops report (SharePoint/Sales/<Company>/OpsReviews/[YYYY-Q#]_SalesOpsReview.pdf); CEO briefing memo; Matt Mathison portfolio summary (upon request); follow-up action tracking (Monday.com — sales ops action items from the review); coaching priorities (sales-coaching-framework — ops review surfaces skill gaps for the coaching agenda); quota/territory review triggers (if ops review reveals structural issues — sales-quota-setter; sales-territory-planner)
- **HITL Required:** Dr. Lewis conducts and writes; CEO reviews before Matt Mathison receives; Matt Mathison sees the portfolio view quarterly; Dr. Lewis does not communicate externally (Matt Mathison) without CEO review; any recommendations affecting headcount require CEO and Matt Mathison approval; any below-target forecast must be communicated to Matt Mathison by the CEO (not Dr. Lewis directly)

## Test Cases
1. **Golden path:** Q2 2027 Allevio sales ops review → Dr. Lewis runs the review: Pipeline health: 3.8× coverage (Green); win rate: 31% trailing 90 days (Green); 0 stale deals; Commit forecast: $195K; Upside: $240K; Process: CRM hygiene 94% (Green); inbound response time 28 minutes average (Green); Discovery debrief rate 88% (Yellow — Rep B missed 2 debriefs); People: Rep A at 78% quota MTD (on track for 100% by month end); Rep B at 58% MTD (Yellow — coaching in progress; close rate improving); Retention: GRR 93% (Green); 2 renewals due in Q2 (both on track; no at-risk); Expansion: 1 opportunity in progress ($20K upsell at a Group that just hired 30 employees); BLUF: "Sales is in a healthy position entering Q2. The one action the CEO needs to take: Rep B's close rate is improving but we need the CEO to join one of Rep B's Q2 proposal calls to demonstrate executive commitment and provide live coaching. Pipeline is strong; retention is solid." CEO reviews; approves; joins Rep B's next proposal call
2. **Edge case:** Q3 2027 ops review for Column6 reveals pipeline coverage of 1.6× (below the 2× crisis threshold) → Dr. Lewis: "BLUF: CRISIS. Column6 pipeline coverage is 1.6× — below the 2× crisis threshold. CEO alert required within 24 hours. At 1.6× coverage and a 25% win rate, the probability of hitting Q3 revenue targets is low (<40%). Immediate actions required: (1) CEO reviews the top 5 pipeline deals today — are the probability scores accurate? Is any deal being mis-staged?; (2) Rep activates the emergency outreach protocol: 50 outbound contacts in the next 5 business days; focus exclusively on Priority A leads; (3) Dr. Lewis identifies any inbound leads from the past 30 days that weren't followed up adequately; (4) CEO considers whether to bring in pipeline from adjacent markets (brand-direct deals; smaller IO commitments). Matt Mathison must be briefed — this will affect Q3 revenue." CEO alerted same day; Matt Mathison briefed; pipeline reviewed; 3 of 5 top deals confirmed viable; outreach sprint executed

3. **Adversarial:** A CEO reviews the Q4 ops report and disagrees with Dr. Lewis's recommendation to hire a 3rd Allevio rep ("We can't afford it right now") → Dr. Lewis: "I understand the cash constraint. Here's the trade-off clearly: without a 3rd rep, the West Valley territory has 3,400 ICP-qualified employer groups and Rep A can realistically contact 200/year. That territory produces ~18-20 new groups/year at current capacity. The full West Valley potential is 3× higher. A 3rd rep costs $[X]K in loaded comp (fully burdened) and has the potential to add $[X]K in new bookings in Year 1. The payback period is 8-10 months. The decision is yours — I want you to have the financial case clearly before deciding. If the answer is no, I'll focus on maximizing Rep A's time in West Valley and re-evaluate at Q1 2028." CEO has the data; makes the decision; Dr. Lewis documents the decision and its rationale; hiring deferred to Q1 2028 when the balance sheet allows

## Audit Log
All quarterly ops review reports retained by entity and period. CEO review records retained. Matt Mathison portfolio summaries retained. Recommendation tracking records retained (what was recommended; who was assigned; what happened). Prior-quarter follow-up tracking retained. CEO action records retained (decisions made from the ops review).

## Deprecation
Retire when each portfolio company has a VP of Sales who owns the sales ops review — with Dr. Lewis reviewing the report and Matt Mathison receiving the portfolio summary. Escalate to annual review only (from quarterly) when each company's sales function is self-sufficient.
