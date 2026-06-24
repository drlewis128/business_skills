---
name: sales-pipeline-review
description: "Run pipeline reviews and health assessments for MBL portfolio company sales teams. Use when the user says 'pipeline review', 'pipeline health', 'pipeline report', 'pipeline status', 'pipeline meeting', 'pipeline call', 'review the pipeline', 'what is in the pipeline', 'pipeline summary', 'deal review', 'deal status', 'deal update', 'opportunity review', 'opportunity status', 'forecast', 'sales forecast', 'revenue forecast', 'commit forecast', 'upside forecast', 'forecast accuracy', 'pipeline coverage', 'pipeline coverage ratio', '3x pipeline', 'pipeline health score', 'stalled deals', 'stuck deals', 'deals at risk', 'deal risk', 'close date accuracy', 'weighted pipeline', 'unweighted pipeline', 'pipeline by stage', 'stage distribution', 'funnel', 'funnel analysis', 'funnel health', 'conversion rate', 'stage conversion', 'rep pipeline', 'AE pipeline', 'pipeline by rep', 'Allevio pipeline', 'Column6 pipeline', 'HIVE pipeline', 'weekly pipeline', 'monthly pipeline', 'quarterly pipeline', 'QBR', 'quarterly business review', 'sales QBR', 'pipeline velocity', or 'deal velocity'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|all>] [--period <weekly|monthly|quarterly>] [--rep <name|all>]"
---

# Sales Pipeline Review

Run pipeline reviews and health assessments for MBL portfolio company sales teams — evaluating pipeline coverage, stage distribution, deal health, and forecast accuracy to give entity CEOs and Dr. Lewis an accurate picture of where revenue will come from and what's at risk. A pipeline review is not a deal update meeting; it is a diagnostic that tells the entity CEO whether the team will hit quota and what needs to change if they won't.

## When to Use
- Weekly pipeline check (standing process for entity CEOs)
- Monthly pipeline review (Dr. Lewis + entity CEO)
- Quarterly QBR (Dr. Lewis + entity CEO + Matt Mathison briefing)
- Any time a close date is approaching and deal health is uncertain

## Pipeline Review Framework

```
PIPELINE HEALTH METRICS:

  Coverage ratio: total pipeline ACV ÷ remaining quota for the period
    Target: ≥3× quota coverage at all times
    Warning: <2× → immediate intervention; entity CEO notification
    Critical: <1× → no mathematical path to quota without new pipeline; escalate to Dr. Lewis + Matt Mathison
    
  Stage distribution (healthy funnel shape):
    Stage 1-2 (Prospect/Contacted): 40-50% of contacts (top of funnel volume)
    Stage 3-4 (Discovery/Qualified): 25-35% of pipeline
    Stage 5-6 (Proposal/Negotiation): 15-25% of pipeline
    Stage 7+ (Closing/Closed): 5-10% (should be converting regularly)
    Too top-heavy (>60% in Stage 1-2): prospecting activity is high but conversion is low
    Too bottom-heavy (>40% in Stage 5+): short-term revenue looks good but future pipeline is thin
    
  Deal velocity:
    Average days in each stage (Allevio: Stage 3 avg 14 days; Stage 5 avg 21 days)
    Deals older than 2× the average for their stage → flagged as stalled
    Stalled Allevio deal: Stage 5 for >42 days → entity CEO + rep review this week
    
  Close date accuracy:
    Track predicted close date vs. actual close date over time
    If close dates slip >2 weeks consistently: either reps are padding dates or deals aren't qualified
    Reps who consistently slip close dates: MEDDPICCC review — is the paper process known?
    
  Win rate by stage:
    Stage 4+ to close win rate: target ≥35% (Allevio); ≥50% (Column6)
    If win rate <25% from Stage 4: proposal or competitive issue → entity CEO + Dr. Lewis
    
ALLEVIO PIPELINE REVIEW STANDARDS:
  Pipeline unit: ACV ($)
  Coverage: ≥3× monthly quota in active pipeline at all times
  MEDDPICCC minimum: by Stage 4, ≥6/8 dimensions populated in GHL
  Compelling event: every Stage 4+ opportunity must have a known benefits renewal date
  Stall triggers: no activity in 21 days (Stage 3-4); 14 days (Stage 5+); 7 days (Stage 7)
  HIPAA: pipeline reporting is employer-level aggregate ACV only — no employee-level data in any pipeline report
  
COLUMN6 PIPELINE REVIEW STANDARDS:
  Pipeline unit: IO booking value ($)
  Coverage: ≥3× quarterly quota (IO business is episodic; quarterly tracking more relevant than monthly)
  Campaign flight date: every Stage 5+ opportunity must have a campaign flight date
  Stall triggers: no activity in 10 days (Stage 3-4); 7 days (Stage 5+)
  Repeat IO tracking: 90-day post-campaign repeat IO rate tracked alongside new pipeline
  Gross margin: >35% required on all Stage 5+ opportunities before moving to close
  
HIVE PIPELINE REVIEW STANDARDS:
  Pipeline unit: acquisition opportunity value ($)
  Coverage: not a quota model; Matt Mathison reviews acquisition pipeline monthly
  WTI trigger: every HIVE opportunity notes WTI status at last review
  HIVE pipeline report format: active opportunities + LOI status + WTI check
  Matt Mathison reviews HIVE pipeline monthly; all LOIs require his approval
  
PIPELINE REVIEW PROCESS (monthly):
  Step 1: Export GHL pipeline by entity; calculate coverage ratio
  Step 2: Stage distribution analysis — flag top-heavy or bottom-heavy funnel
  Step 3: Stall review — identify deals with no recent activity
  Step 4: Close date review — flag deals with slip patterns
  Step 5: MEDDPICCC completeness audit (Allevio/Column6) — flag incomplete deals
  Step 6: Allevio HIPAA check — confirm no employee-level data in pipeline reports
  Step 7: Prepare entity CEO briefing
  Step 8: HIVE: confirm WTI status; review LOI pipeline with Matt Mathison
  
INTERVENTION TRIGGERS:
  Coverage <2×: entity CEO + rep — add 10 new ICP prospects to pipeline this week
  Coverage <1×: entity CEO + Dr. Lewis + Matt Mathison — quota attainment at risk this period
  Stalled Stage 5+ for >30 days: entity CEO calls the prospect directly
  Win rate <25% from Stage 4: sales methodology review with all reps
  Close date slip pattern on single rep: MEDDPICCC coaching; Dr. Lewis involves entity CEO
```

## Output Format

```markdown
# Pipeline Review — [Entity] | [Period] | [Date]
**Coverage ratio:** [X]× quota | **Status:** ✅ Healthy / ⚠️ At risk / ❌ Critical
**Quota remaining:** $[X] | **Pipeline (weighted):** $[X] | **Pipeline (unweighted):** $[X]

---

## Coverage Summary
| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Total pipeline (unweighted) | $[X] | ≥3× = $[X] | ✅/⚠️/❌ |
| Coverage ratio | [X]× | ≥3× | ✅/⚠️/❌ |
| Stage 4+ pipeline | $[X] | — | — |
| Close-quarter pipeline | $[X] | — | — |

---

## Stage Distribution
| Stage | # Deals | $ Value | % of pipeline | Health |
|-------|---------|---------|---------------|--------|
| Stage 1-2 (Top of funnel) | [N] | $[X] | [X%] | [✅/⚠️] |
| Stage 3-4 (Discovery/Qualified) | [N] | $[X] | [X%] | [✅/⚠️] |
| Stage 5-6 (Proposal/Negotiation) | [N] | $[X] | [X%] | [✅/⚠️] |
| Stage 7+ (Close/Closed) | [N] | $[X] | [X%] | [✅/⚠️] |

---

## Deals Requiring Attention
| Deal | Stage | AE | Days stalled | Issue | Recommended action |
|------|-------|-----|-------------|-------|-------------------|
| [Name] | [N] | [Name] | [N days] | [Stall/Slip/No activity] | [Action] |

---

## Forecast
- **Commit (≥80% confidence):** $[X]
- **Best case (50-79% confidence):** $[X]
- **Upside (25-49% confidence):** $[X]
- **Coverage conclusion:** [Will hit quota / At risk / Below quota — needs intervention]
```

## Output Contract
- Pipeline coverage below 2× triggers immediate action, not a note to discuss later — when the coverage ratio drops below 2×, the entity CEO is notified that day; not at the next monthly review; not "we'll watch it"; the reason is that Allevio's 60-90 day sales cycle means a pipeline problem today is a revenue problem in 60-90 days; waiting until next month's review means the earliest possible close date for new pipeline is 60-90 days after you discover the problem, which means you've lost an entire quarter; the entity CEO + rep immediate action is: identify 10 new ICP-qualified prospects and initiate outreach within 5 business days; Dr. Lewis confirms the new prospects are ICP-qualified before the rep contacts them
- A deal in Stage 5+ with no activity in 2 weeks is a stalled deal — not a "prospect is busy" deal; if the entity CEO or Dr. Lewis calls the prospect and discovers they've been waiting for the rep to follow up, the deal was lost through neglect, not lost in fair competition; the stall review is not punitive — it's diagnostic; sometimes a stalled deal reveals that the rep is stuck because they don't know how to advance it (coaching opportunity); sometimes it reveals the deal was never properly qualified (should be closed as lost); sometimes the prospect is genuinely delayed (valid; document the delay and the expected restart date in GHL); the purpose of the stall review is to surface the real status so the pipeline coverage number is accurate
- HITL required: coverage <2× → entity CEO notified same day; coverage <1× → entity CEO + Dr. Lewis + Matt Mathison; stalled Stage 5+ >30 days → entity CEO calls prospect; win rate <25% from Stage 4 → entity CEO + Dr. Lewis methodology review; HIVE pipeline → Matt Mathison monthly review; any LOI pipeline → Matt Mathison approval before close; Allevio pipeline reports → employer-level ACV only (no employee data); pipeline report shared with Matt Mathison → entity CEO + Dr. Lewis review before sending

## System Dependencies
- **Reads from:** GHL (all entity pipelines; stage data; activity dates; close dates; ACV; MEDDPICCC fields; rep ownership; notes); quota assignments (sales-quota-builder); territory data (sales-territory-planner); win/loss records (sales-competitive-playbook); WTI current price (HIVE opportunities); Column6 IO gross margin data
- **Writes to:** Pipeline review reports (SharePoint → [Entity] → Sales → Pipeline-Reviews → [Date]); entity CEO briefing; Matt Mathison quarterly briefing (entity-level revenue summary); GHL (stall flags; stage corrections; activity log updates); intervention records (coverage <2×; entity CEO action); win rate trend reports (quarterly)
- **HITL Required:** Coverage <2× → entity CEO same day; coverage <1× → entity CEO + Dr. Lewis + Matt Mathison; stalled Stage 5+ >30 days → entity CEO calls; win rate <25% → entity CEO + Dr. Lewis; HIVE pipeline → Matt Mathison monthly; LOI pipeline → Matt Mathison approval; pipeline reports to Matt Mathison → entity CEO + Dr. Lewis review before send; Allevio pipeline HIPAA → employer-level ACV only

## Test Cases
1. **Golden path:** Monthly Allevio pipeline review (June 2026). Quota remaining (July target): $200K. Pipeline: Stage 1-2: 35 contacts ($1.2M potential); Stage 3-4: 12 deals ($680K); Stage 5-6: 5 deals ($320K); Stage 7: 2 deals ($140K). Total unweighted: $2.34M. Coverage ratio: $2.34M ÷ $200K = 11.7× ✅. Win rate Stage 4+: 17 deals closed from Stage 4 in last 6 months (7 won; 10 lost) = 41% ✅. No stalled Stage 5+ deals. One Stage 4 deal stalled 18 days (rep coaching). Close date review: 3 deals slipped 1-2 weeks (within normal range). Recommendation: healthy pipeline; no intervention needed; confirm prospecting continues at 15/week to maintain coverage through Q3.
2. **Edge case:** Column6 pipeline review shows 2.1× coverage — below 3× target. Entity CEO briefed same day. Analysis: 8 active agency opportunities; 3 have imminent flight dates (within 30 days = good); 5 are Stage 3-4 with uncertain close dates. Issue: top of funnel thin — only 12 new agency contacts in last 30 days vs. 10/week target. Action: "Entity CEO and Column6 AE: (1) Add 20 new agency contacts to GHL this week (specific Tier 2 targets identified by Dr. Lewis from ICP list); (2) Review 5 Stage 3-4 deals — confirm flight dates; if no flight date, close date is not credible; (3) Repeat IO check — are there any Tier 2 agencies within 90 days of last campaign completion that should be in re-engagement sequence?" Coverage reported to Dr. Lewis; not yet at <1× threshold.
3. **Adversarial:** Rep insists a $180K Allevio deal should count as "Commit" in the forecast because "they told me verbally they're moving forward" — but the HR Director still needs CFO sign-off and there's no proposal signed → Dr. Lewis: "Verbal from an HR Director without CFO sign-off is not a Commit — it's Best Case at 50-60% confidence. A Commit means: (1) All decision makers have said yes; (2) Paper process is underway (legal review or contract draft sent); (3) Close date is within 30 days and confirmed by the economic buyer, not just the champion. Until the CFO is engaged and the paper process has started, this is Best Case. I'll update the GHL forecast category and the pipeline report reflects Best Case — which is still $180K of value, just not counted as certain revenue this period."

## Audit Log
Pipeline review reports (all entities; all dates; SharePoint). Coverage ratio records (monthly; entity; action trigger if <2×). Intervention records (coverage <2×; who notified; action taken; date). Stage correction records (stalled deal reclassifications; entity CEO approval). Win rate trend data (quarterly; by entity; by stage). Matt Mathison quarterly briefings. HIPAA compliance records (Allevio pipeline reports — employer-level only; no employee data confirmed). HIVE pipeline records (Matt Mathison monthly review dates; WTI at review; LOI status).

## Deprecation
Pipeline review process reviewed annually. Stage distribution health benchmarks reviewed when average sales cycle length changes. Stall thresholds reviewed when entity sales motion changes. Coverage ratio minimum reviewed when quota model changes. HIVE pipeline format reviewed when acquisition thesis changes.
