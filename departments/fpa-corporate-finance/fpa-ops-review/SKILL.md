---
name: fpa-ops-review
description: "Conduct quarterly FP&A function operations review for portfolio companies. Use when the user says 'FP&A review', 'finance function review', 'quarterly FP&A review', 'FP&A ops review', 'finance ops review', 'how is the FP&A function doing', 'FP&A audit', 'FP&A assessment', 'FP&A quality check', 'finance function assessment', 'FP&A improvement', 'what is working in finance', 'FP&A retrospective', 'FP&A performance review', 'quarter-end review', 'close quality review', 'financial reporting quality', 'FP&A function evaluation', or 'quarterly finance review'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--quarter <YYYYQN>] [--action <review|assess|improve>]"
---

# FP&A Ops Review

Conduct quarterly operations reviews of the FP&A function across MBL portfolio companies — assessing the quality, timeliness, and completeness of financial reporting deliverables; identifying process gaps; and setting improvement priorities for the next quarter. The FP&A function is the engine that produces the financial intelligence Matt Mathison and the portfolio company CEOs use to make decisions. An FP&A ops review is the governance mechanism that ensures the engine is running cleanly — deliverables go out on time, numbers are accurate, and the function is becoming more efficient over time.

## When to Use
- End of each quarter — mandatory FP&A ops review for the full portfolio
- A recurring financial error pattern is identified — root cause the issue
- A new finance hire joins — 90-day onboarding assessment
- Matt Mathison asks "how is the finance function performing?"
- Dr. Lewis identifies a quality or timeliness problem in the close cycle

## FP&A Ops Review Framework

```
REVIEW DIMENSIONS:

  1. TIMELINESS (0-25 points):
     BD7 delivery rate: Did all CEO financial packages land by BD7 this quarter? (0-10)
       Full marks (10/10): All 3 months delivered by BD7 without exception
       Partial (6/10): 1 late delivery in the quarter
       Poor (0/10): 2+ late deliveries or a board package delivered late
     Board package lead time: Was every board package delivered >10 days before the board meeting? (0-8)
     LP report timeliness: If a quarterly LP report was due, was it on time per the LP agreement? (0-7)
     
  2. ACCURACY (0-25 points):
     Revenue recognition errors: Were any recognition errors identified post-close? (0-10)
     Variance explanations: Were all material variances ($10K+ EBITDA) explained with root cause? (0-8)
     Reconciliation: Did all bank accounts reconcile without exception items? (0-7)
     
  3. COMPLETENESS (0-25 points):
     Deliverables checklist: Were all required deliverables produced? (Board package, rolling forecast, management report) (0-10)
     Covenant compliance: Was the covenant compliance report filed on time for all applicable entities? (0-8)
     Risk register updated: Was the financial risk register reviewed for any new material risks? (0-7)
     
  4. PROCESS QUALITY (0-25 points):
     Close cycle improvement: Is the close taking fewer days or the same days vs. prior quarter? (0-8)
     Documentation quality: Are the key assumptions and variances documented clearly enough for audit? (0-8)
     Issue escalation: Were material issues (cash alerts, covenant risks, EBITDA misses) surfaced to the CEO and Matt Mathison proactively? (0-9)
     
  SCORING:
    90-100: Excellent — FP&A function is operating at a high standard
    75-89: Good — minor improvements needed in one or two areas
    60-74: Needs improvement — specific gaps identified; action plan required
    <60: Poor — systemic issue; immediate improvement plan required

QUARTERLY IMPROVEMENT CYCLE:
  Q1 review → Identify gaps → Set Q2 targets → Q2 review → Measure improvement
  Each quarter: One or two specific improvement actions (not a laundry list)
  Improvement actions are specific and measurable:
    "Reduce average BD close from BD7 to BD6 by implementing automated bank feed reconciliation"
    "Eliminate revenue recognition errors by adding a peer review step to the BD5 preliminary close"
    
FINANCE FUNCTION MATURITY MODEL:
  Level 1 — Reactive: Close is painful; deliverables are late; numbers are questioned
  Level 2 — Stable: Close happens on time; numbers are accurate; basic reporting in place
  Level 3 — Analytical: Variance analysis is insightful; forecasting is accurate; risk is monitored
  Level 4 — Strategic: FP&A is a strategic partner to the CEO; financial intelligence drives decisions
  Current MBL target: Level 3 for all portfolio companies by end of Year 3
  
CLOSE QUALITY INDICATORS:
  Clean close: No revenue recognition revisions after BD5; no journal entries after BD6 sign-off
  Accurate close: Variance from preliminary to final <2% of revenue; <1% of EBITDA
  Timely close: All source data received by BD4; preliminary close by BD5; sign-off by BD6; CEO delivery BD7
  Documented close: Every material variance has a written explanation before sign-off
```

## Output Format

```markdown
# FP&A Ops Review — [Entity or Portfolio] | [Quarter YYYYQN]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Presented to:** [Matt Mathison / CEO]

---

## Scorecard

| Dimension | Weight | Score | Grade |
|-----------|--------|-------|-------|
| Timeliness | 25 | [X]/25 | [A/B/C/D] |
| Accuracy | 25 | [X]/25 | [A/B/C/D] |
| Completeness | 25 | [X]/25 | [A/B/C/D] |
| Process Quality | 25 | [X]/25 | [A/B/C/D] |
| **Total** | **100** | **[X]/100** | **[Excellent/Good/Needs Improvement/Poor]** |

---

## Timeliness Review

| Deliverable | Due | Delivered | On Time? |
|-------------|-----|-----------|---------|
| [Company A] BD7 — [Month 1] | BD7 | BD6 | ✅ |
| [Company B] BD7 — [Month 1] | BD7 | BD8 | ❌ (1 day late — reason) |
| Board package | [Date] | [Date] | ✅ |
| LP report (if due) | [Date] | [Date] | ✅ |

---

## Accuracy Review

| Issue | Identified when? | Impact | Root Cause | Corrected? |
|-------|----------------|--------|-----------|-----------|
| [Revenue restatement for X] | BD10 | $12K | Manual error in revenue allocation | ✅ |
| [No issues] | — | — | — | — |

---

## Improvement Priorities — Q[N+1]

| Priority | Action | Owner | Target | Success Measure |
|----------|--------|-------|--------|----------------|
| #1 | [Automate bank feed reconciliation to eliminate BD3 manual step] | Dr. Lewis | BD of Q[N+1] | Close by BD3 consistently |
| #2 | [Add revenue recognition peer review at BD5] | Dr. Lewis | Month 1 of Q[N+1] | Zero revenue restatements in Q[N+1] |

---

## Function Maturity Assessment

**Current maturity level:** [Level 1/2/3/4] — [Description of where the function is]
**Target for next quarter:** [Level X] — [Specific improvements that will get there]
**Overall trend:** Improving / Stable / Declining
```

## Output Contract
- Self-assessment requires honesty — the FP&A ops review is Dr. Lewis evaluating his own work (and the work of the finance function he has built); the value of the review depends entirely on the honesty of the assessment; a self-assessment that scores every category at 90%+ is worthless; Dr. Lewis applies the same standard to himself that he applies to the portfolio companies' financial results — truth first, no sugarcoating; if the BD7 delivery was late twice this quarter, that scores poorly; if a revenue recognition error was made and caught post-close, that costs accuracy points; the score reflects reality
- One or two improvement actions per quarter — a quarterly ops review that produces a 12-item improvement plan produces nothing; Dr. Lewis identifies the one or two most impactful improvements and executes them in the next quarter; the following quarter's review confirms whether the improvements were realized; improvement compound over time: if Dr. Lewis closes one gap per quarter, the FP&A function meaningfully improves over two years; if he generates a new list of 12 items every quarter and implements none, the function stays at the same level
- Matt Mathison visibility builds trust — presenting a quarterly FP&A ops review to Matt Mathison (even when the scores are imperfect) demonstrates that Dr. Lewis manages the finance function as a business with accountability, not as a personal domain; a finance leader who surfaces their own gaps before Matt Mathison asks about them is demonstrating exactly the character that the function needs to model for the rest of the organization
- HITL required: Dr. Lewis conducts the review; Matt Mathison receives the quarterly summary as part of the portfolio management cadence; if the review identifies a gap that requires CEO action (a CEO who is not providing source data on time, disrupting the close), Dr. Lewis escalates to Matt Mathison with the specific problem and the requested correction; Dr. Lewis does not manage the CEOs directly, but he does surface problems to Matt Mathison that prevent the FP&A function from performing

## System Dependencies
- **Reads from:** Monthly close checklists (fpa-planning-calendar-manager — for timeliness data); prior quarter's management reports and board packages (for accuracy and completeness review); covenant compliance certification records; financial risk register update history; LP report delivery records; any revenue or EBITDA restatements or corrections from the quarter; prior quarter's ops review (for trend comparison and improvement tracking)
- **Writes to:** FP&A ops review (SharePoint/Finance/MBL/FPAOpsReview/[YYYY-QN]_OpsReview.pdf); Matt Mathison quarterly portfolio update (FP&A function status included); improvement action tracker (SharePoint/Finance/MBL/FPAOpsReview/ImprovementTracker.xlsx); close calendar (updated with any process changes from the review)
- **HITL Required:** Dr. Lewis conducts; Matt Mathison receives the quarterly report; Matt Mathison can direct specific improvements or escalate if the FP&A function performance is materially below expectations; the ops review is a Dr. Lewis deliverable to Matt Mathison — it is not reviewed by the portfolio company CEOs (they receive their own management reports; the ops review is the meta-level assessment of the function itself)

## Test Cases
1. **Golden path:** Q2 FP&A ops review for the full portfolio → Timeliness: All 9 CEO deliveries (3 companies × 3 months) on time; board package 11 days before meeting ✅; Q2 LP report delivered by Day 44 ✅; Score 24/25; Accuracy: One minor revenue reclassification between employer groups at Allevio (caught at BD6 sign-off, not a close error); no restatements; Score 23/25; Completeness: All deliverables produced; covenant compliance filed for all applicable entities ✅; risk register reviewed ✅; Score 25/25; Process Quality: Close time at Allevio improved from BD8 to BD7 (progress toward BD7 target); one material variance (HIVE EBITDA shortfall) escalated to Matt Mathison proactively on BD5 ✅; Score 22/25; Total: 94/100 — Excellent; Improvement actions for Q3: (1) Allevio close to BD7 consistently (target BD6 by Q4); (2) Automate the HIVE production data import to eliminate a manual entry step at BD4
2. **Edge case:** Q3 review reveals the board package for the October board meeting was delivered 4 days before the meeting (vs. the 10-day target) → Timeliness score drops: Board package delivery: 4 days < 10 days = ❌; scored 0/8 for this dimension; Total timeliness: 17/25; Overall: 79/100 — Good but with a notable gap; Dr. Lewis documents the root cause: "The October board package was 6 days late because the Allevio EBITDA restatement (caught at BD6) required rebuilding three pages of the package and the variance analysis. Root cause: the variance analysis was built before the close was finalized. Fix: build the variance analysis after BD6 sign-off, not before. This adds 1 day to the package build timeline but eliminates the rework risk. Implementation: Q4 close." Improvement action identified; owner: Dr. Lewis; target: Q4 board package delivered ≥10 days before board
3. **Adversarial:** Matt Mathison reviews the Q2 ops review and scores 94/100 and asks "if everything is excellent, why did the HIVE EBITDA miss the plan by 22%?" → Dr. Lewis clarifies: "The ops review grades the FP&A function's execution of its responsibilities — timeliness, accuracy, completeness, and process quality. The HIVE EBITDA miss is a business performance issue, not an FP&A execution issue. The FP&A function did exactly what it should: we identified the WTI-driven variance on BD5, explained the root cause accurately (WTI at $63.50 vs. $67 plan), and escalated to you proactively. The ops review score does not measure whether the portfolio companies hit their EBITDA — it measures whether the finance function accurately reported, forecast, and communicated the results. I score those separately: business performance is tracked in the KPI dashboard and portfolio performance model; FP&A function performance is tracked here." Matt Mathison understands the distinction; ops review score and business performance are different instruments

## Audit Log
All quarterly FP&A ops reviews retained by quarter and entity. Improvement action tracking log retained (Q-by-Q: what was committed, what was delivered). Timeliness records retained (delivery date for every financial deliverable). Accuracy records retained (any restatements or corrections, with root cause). Function maturity level tracked over time (Level 1→2→3→4 progression). Matt Mathison presentations retained.

## Deprecation
Retire when each portfolio company has a dedicated CFO who conducts their own monthly finance function review — with Dr. Lewis reviewing the portfolio-level FP&A performance quarterly and Matt Mathison receiving a consolidated function health update.
