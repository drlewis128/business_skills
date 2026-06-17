---
name: fin-ops-finance-ops-review
description: "Quarterly finance operations health review — process efficiency, control effectiveness, and improvement roadmap. Use when the user says 'finance ops review', 'finance health review', 'finance operations review', 'quarterly finance review', 'finance ops health', 'review finance processes', 'finance process audit', 'finance operations health check', 'finance audit', 'finance process review', 'close health', 'finance maturity', 'finance function review', 'AP health', 'AR health', 'payroll health', 'finance improvement', or 'assess the finance function'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--focus <all|ap|ar|payroll|close|controls>]"
---

# Finance Ops Review

Conduct a quarterly finance operations health review for MBL portfolio companies — assessing the efficiency of core processes, the effectiveness of internal controls, and building a continuous improvement roadmap. The finance operations review is the mechanism by which Dr. Lewis maintains visibility into the health of the finance function at each portfolio company, prevents process degradation, and systematically improves the finance operations over time. A quarterly review takes 2-3 hours and surfaces issues before they compound into financial restatements, fraud exposures, or close failures.

## When to Use
- Quarterly (Q1-Q4) — standard cadence
- After a significant operational change (new controller, acquisition, rapid growth)
- Before exit — ensure finance operations are exit-ready
- After a close failure, a fraud incident, or an audit finding — assess root cause and improve
- Matt Mathison requests a finance function assessment

## Finance Operations Review Framework

```
Finance operations review dimensions (5 areas, scored 1-5):

  DIMENSION 1 — CLOSE HEALTH:
    Measures: Average close time (target: BD7); on-time delivery rate (%) to CEO; number of restatements in past 12 months
    Score 5 (Excellent): Close consistently BD6-BD7; no restatements; CEO receives financials on time every month
    Score 4 (Good): Close averages BD8-BD9; rare late delivery; no material restatements
    Score 3 (Acceptable): Close averages BD10-BD12; occasional late delivery; 1-2 minor adjustments
    Score 2 (Needs Improvement): Close >BD12 regularly; frequent late delivery; 3+ adjustments
    Score 1 (Critical): Close >BD15; financials delivered to CEO with significant delay or errors
    
    Data sources: Close calendar records (close calendar manager); BD delivery timestamps

  DIMENSION 2 — AP HEALTH:
    Measures: % of invoices processed within 2 business days of receipt; % of invoices paid on time (by due date); approval compliance rate (% of invoices with correct approval level); duplicate invoice detection rate; past-due AP balance %
    Score 5: All invoices processed within 2 days; 95%+ paid on time; 100% compliance; $0 past due >30 days
    Score 3: 75% processed within 2 days; 85% paid on time; 95% approval compliance; minor past due
    Score 1: Frequent late processing; late payments to key vendors; approval bypassed; significant past due
    
    Data sources: Bill.com processing timestamps; AP aging; approval audit log

  DIMENSION 3 — AR HEALTH:
    Measures: DSO (days sales outstanding; target ≤35 days); % of invoices sent within 1 business day of trigger; collections contact rate (% of past-due invoices contacted within 3 days of entering 31-day bucket); bad debt write-off rate
    Score 5: DSO ≤35 days; billing timeliness >95%; collections contact 100%; write-off rate <0.5%
    Score 3: DSO 36-50 days; billing 80% timely; collections contact 75%; write-off rate 1-2%
    Score 1: DSO >65 days; frequent late billing; collections reactive; write-off rate >3%
    
    Data sources: QuickBooks AR aging; billing records; collections log

  DIMENSION 4 — PAYROLL HEALTH:
    Measures: % of payrolls submitted on time (by Wednesday noon for Friday direct deposit); pre-submission review completion rate; payroll error rate; 401(k) remittance on time rate; EFTPS deposit confirmation
    Score 5: 100% on time; every payroll reviewed by Dr. Lewis; error rate <0.5%; 100% 401(k) on time; EFTPS confirmed monthly
    Score 3: 95% on time; review completion 90%; error rate 1-2%; 401(k) occasionally late
    Score 1: Frequent late submissions; skipped reviews; 2%+ error rate; late 401(k) remittances
    
    Data sources: Payroll provider submission timestamps; 401(k) remittance records; EFTPS log

  DIMENSION 5 — CONTROLS HEALTH:
    Measures: Segregation of duties compliance; approval matrix compliance (audit sample); vendor setup process compliance (W-9 on file for all active vendors); expense report audit compliance; fraud risk score
    Score 5: All controls operating effectively; no gaps; W-9 100% compliance; expense audits current; fraud risk score <3
    Score 3: Minor control gaps identified; corrective action in progress; W-9 95%+ compliance; some lag in expense audits
    Score 1: Material control gaps; approval matrix bypassed; missing W-9s; expense audits not performed; fraud risk score >6
    
    Data sources: Internal controls designer output; vendor W-9 audit; approval log sample; expense audit records; fraud risk assessment
    
Quarterly review process:

  Step 1 — PULL DATA (1 hour):
    Close health: Review last 3 closes (delivery dates; any restatements)
    AP health: QuickBooks past-due AP; Bill.com approval compliance log
    AR health: QuickBooks AR aging trend (DSO month by month); billing records
    Payroll health: Payroll provider submission log; 401(k) remittance dates; EFTPS
    Controls health: Vendor W-9 audit (sample); approval matrix sample; expense audit
    
  Step 2 — SCORE EACH DIMENSION (30 min):
    Score 1-5 for each dimension
    Flag any dimension at Score 3 or below as a "needs improvement" area
    Flag any dimension at Score 1 as a "critical" area requiring immediate action
    
  Step 3 — ROOT CAUSE FOR GAPS (30 min):
    For each Score ≤3: What is the specific root cause?
    Is it: Staffing (controller capacity); systems (QuickBooks limitation); process (no defined process); discipline (defined process not followed)?
    Root cause determines the right remediation
    
  Step 4 — IMPROVEMENT ROADMAP (30 min):
    For each gap: Specific action, owner, deadline, and expected score improvement
    Prioritize: Critical scores first; scores that affect exit readiness second
    
  Step 5 — DELIVER TO CEO AND MATT MATHISON:
    CEO receives: Finance ops health scores + top 3 improvement actions + any critical issues
    Matt Mathison receives: Portfolio-level summary (all 3 entities) + any critical issues at any entity
```

## Output Format

```markdown
# Finance Operations Health Review — [Entity] Q[N] [YYYY]
**Date:** [Date] | **Reviewed by:** Dr. Lewis
**Review period:** [Q start] to [Q end]

---

## Health Scorecard

| Dimension | Score (1-5) | Trend | Status |
|-----------|------------|-------|--------|
| 1. Close Health | [X] | ↑/↓/→ | 🟢/🟡/🔴 |
| 2. AP Health | [X] | | 🟢/🟡/🔴 |
| 3. AR Health | [X] | | 🟢/🟡/🔴 |
| 4. Payroll Health | [X] | | 🟢/🟡/🔴 |
| 5. Controls Health | [X] | | 🟢/🟡/🔴 |
| **Overall Finance Ops Score** | **[avg]** | | **🟢/🟡/🔴** |

**Status thresholds:** 🟢=4.0-5.0 | 🟡=3.0-3.9 | 🔴=Below 3.0

---

## Dimension Detail

### 1. Close Health — Score [X]/5
**Average close time (Q):** BD[N] | **Target:** BD7
**On-time CEO delivery rate:** [X]% | **Target:** 100%
**Restatements in past 12 months:** [N]
**Key issue:** [Specific — July close slipped to BD10 due to credit card statement not arriving until BD6]
**Improvement action:** [Set up automatic credit card statement download on BD1]

[Repeat for each dimension]

---

## Improvement Roadmap

| Dimension | Issue | Root cause | Action | Owner | Deadline | Expected score improvement |
|-----------|-------|-----------|--------|-------|---------|--------------------------|
| AR Health | DSO 48 days vs. 35-day target | No collections contact process | Implement fin-ops-collections-manager; Monday review cadence | Controller + Dr. Lewis | [Date] | 3 → 4 |
| Controls | 3 vendors missing W-9s | Vendor added during April crunch without full setup | Collect W-9s from 3 vendors; add W-9-before-first-payment reminder to Bill.com | Controller | [Date] | 3 → 5 |

---

## CEO Summary

**Finance operations health — [Entity] Q[N]:** Overall score [X.X]/5.
**Highlights:** [Close health is strong — BD7 or better all quarter. AR health needs attention — DSO is trending up (48 days vs. 35-day target).]
**Top 3 improvement actions:** (1) Collections process — Monday AR review implemented; (2) W-9 collection — 3 vendors by [date]; (3) [Third action].
**Critical issues:** [None / Specific]

---

## Matt Mathison Portfolio Brief (quarterly)

| Entity | Overall Score | Critical Issues | Top Improvement Priority |
|--------|-------------|----------------|------------------------|
| Allevio | [X.X]/5 | None | AR — DSO improvement |
| HIVE | [X.X]/5 | None | Close — BD8 consistently |
| Column6 | [X.X]/5 | ⚠️ Controls — missing W-9s | Vendor compliance |
| **Portfolio** | **[X.X]/5** | | |
```

## Output Contract
- Quarterly cadence with no exceptions — a quarterly review that is skipped when things seem fine is precisely the kind of discipline that allows problems to accumulate; Dr. Lewis conducts the finance operations review for all three portfolio companies in Q1, Q2, Q3, and Q4 regardless of how smooth operations appear; the review takes 2-3 hours per company and is the single most valuable preventive maintenance activity in finance operations; it is scheduled in Dr. Lewis's calendar at the start of each year as a recurring Q+1 week event
- Score calibration is consistent across companies and quarters — the same events always produce the same scores; a close that finishes on BD12 is always a Score 2 regardless of the reason; a company where the approval matrix was bypassed twice in the quarter is always a Score 3 or below on controls, regardless of how trusted the employees are; consistent scoring creates a trend line that shows genuine improvement (or degradation) over time; without consistent calibration, scores drift upward from optimism and stop being meaningful
- Improvement actions must have owners and deadlines — a list of findings without action owners and deadlines is an observation journal, not an improvement roadmap; every gap in the finance ops review is assigned to a specific owner (controller, Dr. Lewis, CEO) with a specific deadline; Dr. Lewis tracks the open action items from the prior quarter's review at the start of the current quarter's review: which actions were completed? Which were deferred? Which were not addressed? Incomplete actions carry forward with escalating urgency
- HITL required: Dr. Lewis conducts the quarterly review for all three portfolio companies; CEO receives the CEO summary within 2 business days of the review; Matt Mathison receives the quarterly portfolio brief; any dimension at Score 1 (Critical) requires immediate CEO and Matt Mathison notification, not waiting for the quarterly report; the quarterly review findings inform the annual VCP update (strategy-value-creation-plan)

## System Dependencies
- **Reads from:** Close calendar records (close calendar manager); Bill.com approval log; QuickBooks AP aging and AR aging; payroll provider submission log; 401(k) remittance records; EFTPS deposit confirmations; vendor W-9 audit; expense audit records; internal controls assessment (internal controls designer)
- **Writes to:** Finance ops review report (SharePoint/Finance/<Company>/FinOpsReview/[Quarter]/); CEO summary email; Matt Mathison quarterly brief; improvement action tracker (Monday.com or SharePoint); VCP update inputs (strategy-value-creation-plan)
- **HITL Required:** Dr. Lewis conducts all quarterly reviews; CEO receives CEO summary; Matt Mathison receives portfolio brief; any Score 1 (Critical) dimension triggers immediate notification outside the quarterly cycle

## Test Cases
1. **Golden path:** Allevio Q2 2026 review → Dr. Lewis pulls data: Close health — 3 closes in Q2 (April BD7, May BD8, June BD6) = average BD7 ✅; 0 restatements; score 4; AP health — all invoices processed within 2 days ✅; 94% paid on time (2 invoices accidentally missed in a batch); no approval bypasses; score 4; AR health — DSO 32 days (below 35-day target ✅); 100% invoices sent within 1 day; collections contact 95%; 0 write-offs; score 5; Payroll health — all 6 payrolls submitted on time; all reviewed by Dr. Lewis; 0 errors; 401(k) remitted within 5 days; EFTPS confirmed monthly; score 5; Controls health — vendor W-9 audit: all 18 active vendors have W-9 ✅; approval sample: 15 invoices checked, 100% correct level ✅; expense audits current; fraud risk score 2; score 5; Overall 4.6/5 🟢; CEO summary delivered same day; Matt Mathison portfolio brief includes Allevio Q2 ✅; no improvement actions required this quarter (minor: address the 2 missed-batch invoices in AP)
2. **Edge case:** Q3 2026 review for HIVE shows AR health deteriorating — DSO trending from 45 days to 58 days over 3 months → Dr. Lewis investigates: HIVE's AR is primarily the production payment receipts from the operator; the 58-day DSO reflects the standard 60-day production payment lag — not a collections problem; however, if the calculation includes some LOE reimbursements from the operator that are running long, that's a different issue; Dr. Lewis recalculates DSO excluding the normal production lag: adjusted DSO is 22 days for non-production receivables; the raw DSO number is misleading for a production revenue company; Dr. Lewis adjusts the AR health scorecard for HIVE to use adjusted DSO (excluding the normal production payment timing); HIVE AR health score is 4 (the only deduction is the LOE reimbursement that runs slightly long at 35 days vs. 30-day target); process improvement: track LOE reimbursements separately from production revenue in the AR aging
3. **Adversarial:** CEO resists the quarterly finance ops review: "We don't have time for this; the business is running fine" → Dr. Lewis explains: "I understand time is tight. This review takes me 2-3 hours per quarter — it's not something I ask you to attend; I conduct it independently and send you a 1-page summary. The purpose is to catch issues before they become crises. Last quarter, this review identified the W-9 gap for 3 vendors — a $180 fix that prevented a 1099 penalty situation. The cost of skipping the review is not 0; it's the cost of the next undetected issue." Dr. Lewis does not require CEO attendance at the review — the CEO receives the 1-page summary and is asked to acknowledge it; if the CEO wants to skip the summary, Dr. Lewis conducts the review and presents findings only when they rise to the level of the CEO summary threshold (Score 3 or below)

## Audit Log
All quarterly review reports retained. Score trends retained by entity and dimension. Improvement action tracking retained (completed, deferred, escalated). CEO summaries retained. Matt Mathison portfolio briefs retained. Critical issue escalations retained. Annual VCP update inputs retained.

## Deprecation
Retire when each portfolio company has a CFO who conducts quarterly finance operations reviews independently — with Dr. Lewis reviewing the scores and improvement roadmap, and Matt Mathison receiving the annual finance ops maturity assessment.
