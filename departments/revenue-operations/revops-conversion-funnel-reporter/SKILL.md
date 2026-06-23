---
name: revops-conversion-funnel-reporter
description: "Report on conversion rates across the revenue funnel for MBL Partners portfolio entities. Use when the user says 'conversion rate', 'funnel conversion', 'funnel report', 'conversion funnel', 'stage conversion', 'pipeline conversion', 'lead to close', 'how many leads convert', 'conversion analytics', 'conversion analysis', 'conversion metrics', 'conversion optimization', 'funnel analysis', 'funnel optimization', 'conversion by stage', 'where are we losing people', 'where does the funnel leak', 'funnel drop-off', 'funnel efficiency', 'conversion benchmark', 'conversion tracking', 'top of funnel to close', 'lead to revenue', 'MQL to close', 'SQL to close', 'opportunity to close', 'close rate', 'stage-to-stage conversion', 'conversion improvement', or 'funnel performance'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--stage <mql|sql|stage3|stage4|stage5|stage6|all>] [--period <30|60|90|180>] [--action <report|analyze|benchmark>]"
---

# RevOps Conversion Funnel Reporter

Report and analyze conversion rates across the revenue funnel for MBL Partners portfolio entities — measuring the conversion efficiency at every stage from lead to close, identifying where the funnel leaks, and recommending targeted interventions to improve the stages with the worst conversion relative to benchmarks. Funnel analysis is surgical: it tells you exactly which stage to fix rather than "improve sales."

## When to Use
- Monthly or quarterly conversion funnel report for entity CEO
- Diagnosing a pipeline or revenue problem (is it volume or conversion?)
- Comparing funnel performance across periods to identify trends
- Targeting a specific stage for improvement intervention

## Conversion Funnel Framework

```
FUNNEL STAGES AND CONVERSION POINTS (ALLEVIO):

  STAGE 0 — ALL LEADS
    → to Stage 1 (ICP-confirmed): Lead-to-ICP conversion = how many leads are actually ICP?
    Target: ≥60% (if <40% → lead source quality issue; ICP targeting too broad)
    
  STAGE 1 — ICP CONFIRMED LEADS
    → to MQL: ICP-to-MQL = how many ICP leads meet MQL criteria (2+ engagements)?
    Target: ≥55% (if <40% → lead nurture program needs improvement; outbound cadence insufficient)
    
  MQL → SQL (Connected Conversation):
    Target: ≥35% MQL-to-SQL
    If <25%: lead quality issue; criteria too loose OR outreach timing/messaging issue
    If >55%: criteria may be too tight; or conversely the reps are exceptional
    
  SQL → Stage 4 (Qualified):
    Target: ≥75% of discovery calls result in qualified deal
    If <60%: discovery process is not completing MEDDPICCC; reps advancing to Stage 4 incorrectly
    
  Stage 4 → Stage 5 (Proposal):
    Target: ≥80% of Stage 4 deals result in a proposal delivered
    If <65%: deals are stalling in discovery/qualification; economic buyer not being identified
    
  Stage 5 → Stage 6 (Negotiation):
    Target: ≥65% of proposals lead to negotiation
    If <50%: proposals are not compelling; ROI case may be weak; wrong stakeholder receiving proposal
    
  Stage 6 → Stage 7 (Verbal Commit):
    Target: ≥70% of negotiations result in verbal commitment
    If <55%: close discipline issue; negotiation skills; or deal was not well-qualified in Stage 4
    
  Stage 7 → Closed Won:
    Target: ≥85% of verbal commits close
    If <70%: contract issues; legal delays; ghosting after verbal — need escalation protocol
    
  OVERALL CLOSE RATE (Stage 4 → Closed Won):
    Target: ≥35% (Allevio); ≥45% (Column6)
    This is the headline metric; but stage-by-stage breakdown shows where the rate is lost
    
FUNNEL ANALYSIS CADENCE:
  Monthly: MQL volume and MQL→SQL rate only (fast-moving leading indicators)
  Quarterly: full funnel conversion report (all stages); entity CEO + Dr. Lewis
  Triggered: close rate drops >5 percentage points month-over-month → immediate analysis
  
CONVERSION DIAGNOSIS METHODOLOGY:
  Step 1: identify the stage where conversion is most below benchmark (the bottleneck)
  Step 2: sample 3-5 deals that failed at that stage; pull GHL notes; identify pattern
  Step 3: form hypothesis: is this a message problem? a qualification problem? a timing problem? a rep capability problem?
  Step 4: recommend one specific intervention; implement; measure at next monthly review
  One intervention at a time — changing multiple things simultaneously makes it impossible to know what worked
```

## Output Format

```markdown
# Conversion Funnel Report — [Entity] — [Period]
**Deals analyzed:** [N] in period | **Data source:** GoHighLevel

---

## Full Funnel Conversion

| Stage | Volume | Converted | Conversion Rate | Target | Status |
|-------|--------|-----------|----------------|--------|--------|
| All Leads | | | | | |
| → ICP Confirmed | | | X% | ≥60% | ✅/⚠️ |
| → MQL | | | X% | ≥55% | |
| MQL → SQL | | | X% | ≥35% | |
| SQL → Stage 4 (Qual.) | | | X% | ≥75% | |
| Stage 4 → Stage 5 (Prop.) | | | X% | ≥80% | |
| Stage 5 → Stage 6 (Neg.) | | | X% | ≥65% | |
| Stage 6 → Stage 7 (Verbal) | | | X% | ≥70% | |
| Stage 7 → Closed Won | | | X% | ≥85% | |
| **Overall Stage 4→Close** | | | **X%** | **≥35%** | |

---

## Bottleneck Stages
[Stages most below benchmark; root cause hypothesis; recommended intervention]

---

## Trend (vs. Prior Quarter)

| Stage | Prior Quarter | This Quarter | Change |
|-------|--------------|-------------|--------|
| MQL → SQL | X% | X% | ±X% |
| Stage 4 → Close | X% | X% | ±X% |

---

## Actions
1. [Intervention — owner — implementation date — measurement date]
```

## Output Contract
- Conversion rate improvement requires focus, not multitasking — the single most common funnel improvement mistake is trying to improve every stage simultaneously (a new email sequence AND rep training AND revised proposal AND better qualification questions all at once); if all four are changed simultaneously and close rate improves, the team doesn't know which change drove the improvement; if close rate doesn't improve, they don't know what didn't work; Dr. Lewis enforces one intervention per quarter per entity, with measurement at the next monthly review; this discipline takes patience but produces learnable, repeatable improvement
- Volume and conversion are separate levers — a pipeline that is 30% below target could be caused by insufficient MQL volume at the top of the funnel OR by poor conversion at Stage 4→5; these are completely different root causes requiring different interventions (demand gen investment vs. sales training); a funnel report that shows MQL volume is on target but Stage 5→6 conversion is 38% (vs. 65% target) has identified a specific, actionable problem in how proposals are being received; Dr. Lewis always diagnoses volume vs. conversion before prescribing any intervention
- HITL required: close rate drop >5 percentage points → entity CEO + Dr. Lewis immediate analysis; bottleneck intervention → entity CEO approves before implementation; rep-level conversion analysis → entity CEO and sales lead involved; Stage 4→Close rate below 25% for 2 months → entity CEO + Dr. Lewis performance review; conversion benchmark changes → entity CEO + Dr. Lewis

## System Dependencies
- **Reads from:** GoHighLevel (deal stage history; stage timestamps; deal outcomes; volume per stage; rep assignment); revops-sales-process-manager (stage exit criteria and definitions); revops-win-loss-tracker (why deals fail at specific stages → conversion root cause); revops-deal-velocity-analyzer (velocity by stage → conversion-velocity correlation)
- **Writes to:** Conversion funnel reports (SharePoint → [Entity] → RevOps → Funnel → [Period]); entity CEO bottleneck briefings; intervention plan records; conversion trend tracking; Dr. Lewis portfolio funnel summary (quarterly)
- **HITL Required:** Close rate drop >5pts → entity CEO + Dr. Lewis; bottleneck intervention → entity CEO approves; rep-level analysis → entity CEO + sales lead; Stage 4→Close <25% 2 months → entity CEO + Dr. Lewis; benchmark changes → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Q3 conversion funnel report. Overall Stage 4→Close: 37% (✅ above 35% target). Stage analysis: MQL→SQL 34% (⚠️ just below 35% benchmark); SQL→Stage 4 82% (✅); Stage 4→5 78% (⚠️ slightly below 80%); Stage 5→6 61% (⚠️ below 65%); Stage 6→7 72% (✅); Stage 7→Close 88% (✅). Bottleneck: Stage 5→6 (61% vs. 65% target). Root cause analysis: pulled 5 deals that failed Stage 5→6 — 3 had proposals delivered to HR contact (not economic buyer); proposal never reached decision-maker. Intervention: add "proposal delivered to economic buyer" as mandatory exit criteria for Stage 5; sales lead trains AEs this week. Measurement: check Stage 5→6 conversion in October report. Entity CEO approves intervention.
2. **Edge case:** GoHighLevel stage history is incomplete for 30% of deals because AEs are not updating stages in real-time → Dr. Lewis: "This is a data quality problem that is making the conversion funnel analysis unreliable. If 30% of deals don't have accurate stage timestamps, the conversion rates I'm calculating are based on 70% of the data — which may be systematically biased toward the better-documented deals. Before I present this conversion analysis as actionable, I need to address the data quality. Step 1: I'm auditing GHL for deals missing stage dates. Step 2: entity CEO requires AEs to back-fill stage dates for all closed deals in the last 90 days (available in GHL notes and email timestamps). Step 3: going forward, stage update within 24 hours is a weekly pipeline health check item. I'll re-run the conversion analysis in 30 days with clean data."
3. **Adversarial:** Entity CEO argues that the conversion funnel benchmarks are "too high for our market" and wants to set the MQL→SQL target at 20% instead of 35% → Dr. Lewis: "Setting a target we know we can easily beat is not a useful target — it's a way of avoiding accountability. My question is: what is the best-in-class MQL→SQL rate for B2B benefits/MSO sales? Industry data points to 25-40%; our 35% benchmark is within normal range, not aspirational. If you believe our market is fundamentally different — for example, Arizona employers are more skeptical of MSO models than the national average — show me the data. What I can do: run the MQL→SQL rate by lead source to see if certain sources convert much lower than others (which would support adjusting the target for that specific source). But setting a portfolio-wide target of 20% because 35% is hard is not something I can support."

## Audit Log
Quarterly conversion funnel reports. Monthly MQL→SQL tracking records. Close rate tracking (monthly). Bottleneck analysis records. Intervention plans with entity CEO approval. Intervention results records (before/after conversion rate). Conversion benchmark documentation with entity CEO + Dr. Lewis sign-off.

## Deprecation
Conversion benchmarks reviewed when entity ICP changes significantly. Stage definitions reviewed when sales process changes. Funnel stages reviewed when GoHighLevel pipeline configuration changes. Analysis period reviewed when entity deal volume grows. Diagnosis methodology reviewed when close rate patterns shift fundamentally.
