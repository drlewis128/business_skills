---
name: cs-ops-review
description: "Run the quarterly CS operations review for MBL portfolio companies. Use when the user says 'CS ops review', 'CS operations review', 'quarterly CS review', 'CS team review', 'CS retrospective', 'CS process review', 'CS system review', 'CS quarterly retrospective', 'review CS operations', 'CS ops audit', 'how is CS running', 'CS process audit', 'CS function review', 'review the CS function', 'CS team assessment', 'CS operating review', 'quarterly customer success review', 'CS function audit', 'CS infrastructure review', or 'assess the CS function'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--quarter <Q1|Q2|Q3|Q4 YYYY>] [--action <run|prepare|report>]"
---

# CS Ops Review

Run the quarterly CS operations review for MBL portfolio companies — assessing the health of the CS function itself (not just the customer portfolio), identifying process breakdowns, improving the tools and playbooks, and setting priorities for the next quarter. The CS Ops Review is Dr. Lewis's audit of how the CS function is running; it produces changes to process, not just insights about customers.

## When to Use
- End of each quarter (before setting next-quarter OKRs with cs-okr-tracker)
- A specific CS process is breaking down and needs a structured review
- A new CS hire is onboarded (review and update the playbooks before they start)
- Annual CS function planning (bigger version of the quarterly review)

## CS Ops Review Framework

```
REVIEW STRUCTURE (3-4 hours; Dr. Lewis and the CS team):

  SECTION 1 — METRICS RETROSPECTIVE (60 min):
    Review cs-kpi-dashboard for the quarter:
      □ GRR: Did we hit the target? If not, what drove the miss?
      □ NRR: Did expansion offset churn? Where did expansion come from?
      □ Churn: Which accounts churned? Voluntary vs. involuntary? Root causes?
      □ Health score distribution: How did it change over the quarter?
      □ QBR completion: Did we complete all Priority A QBRs?
      □ TTV: Are we hitting the onboarding timeline targets?
    For each miss: What is the process change that would have prevented it?
    For each win: What process made it work? Can we replicate it?
    
  SECTION 2 — PROCESS AUDIT (60 min):
    Review the core CS processes against the skills:
      □ Onboarding (cs-onboarding-coordinator): Was TTV on target? Any patterns in delays?
      □ Health scoring (cs-health-score-tracker): Are all accounts scored weekly? Any accounts missed?
      □ QBRs (cs-qbr-preparer): QBR quality — were the right things covered? Customer engagement?
      □ Escalations (cs-escalation-manager): P1/P2 response times? Any recurrence?
      □ Renewals (cs-renewal-coordinator): Did we start at Day -120? Any last-minute renewals?
      □ Expansion (cs-expansion-spotter): How many opportunities were identified? Conversion rate?
      □ Churn prediction (cs-churn-predictor): Did signals appear before churns? Were they logged?
    For each process: What worked? What broke? What's the fix?
    
  SECTION 3 — SYSTEM AND TOOL AUDIT (30 min):
    □ GoHighLevel CRM: Is all contact information current? Any accounts with stale data?
    □ SharePoint: Are all required documents in the right folders? Any missing success plans?
    □ AdvancedMD (Allevio): Any data pulls that are slow or unreliable?
    □ Column6 reporting dashboard: Is the data up-to-date? Any reporting gaps?
    □ Covercy (HIVE): Are all landowner records current? Any missing payment records?
    □ Any tool that is causing the CS team friction: flag for IT resolution
    
  SECTION 4 — TEAM ASSESSMENT (30 min):
    □ Review each CS rep's portfolio: health score distribution; QBR completion; escalation handling
    □ Identify the rep who needs the most coaching this quarter (cs-coaching-framework)
    □ Identify the rep who is performing above expectations (recognition; development opportunity)
    □ Headcount planning: Is the team sized correctly for the current portfolio?
      Current CSM capacity: [N] accounts; $[X]M ARR per CSM (target: $1.5-4M ARR per CSM)
      If ARR per CSM is >$4M: at risk of burnout and quality degradation; flag for hiring
      If ARR per CSM is <$1.5M: underutilized; either hire has been made too early or pipeline is strong
    □ Any hiring needed in the next 90 days? (cs-hiring-scorecard ready to deploy?)
    
  SECTION 5 — PRIORITIES FOR NEXT QUARTER (30 min):
    Based on the retrospective findings, set 2-3 operational priorities:
    Examples:
      "Priority 1: Get QBR completion for Priority B accounts from 82% to 95%;
        root cause was scheduling — implementing a calendar block system this quarter"
      "Priority 2: Reduce TTV by 10 days — the census file delay at Allevio onboarding
        is the primary cause; implementing a Day 1 census request workflow this quarter"
    These priorities feed into the next-quarter OKRs (cs-okr-tracker)
    
  POST-REVIEW DELIVERABLES:
    □ Process change log: What specifically is changing? Who owns it? By when?
    □ Playbook updates: Any cs-* skills that need to be updated based on this quarter's learnings?
    □ Coaching plan updates: Any rep coaching plans that need revision?
    □ Next-quarter priority memo: 1 page; Dr. Lewis sends to CEO
```

## Output Format

```markdown
# CS Ops Review — [Entity] | Q[X] [YYYY]
**Date:** [Date] | **Attendees:** Dr. Lewis + [CS rep names]
**Duration:** [X] hours

---

## Q[X] Metrics Retrospective

| Metric | Q[X] Target | Q[X] Actual | Status | Root cause of miss (if any) |
|--------|------------|------------|--------|---------------------------|
| GRR | >90% | [X]% | ✅ / ❌ | |
| NRR | >100% | [X]% | ✅ / ❌ | |
| QBR completion (Priority A) | 100% | [X]% | ✅ / ❌ | |
| TTV | ≤84 days | [X] days | ✅ / ❌ | |

---

## Process Findings

| Process | Status | Issue | Fix | Owner | Due |
|---------|--------|-------|-----|-------|-----|
| Onboarding | ✅ / ⚠️ / ❌ | [Issue] | [Change] | [Name] | [Date] |
| Health scoring | | | | | |
| QBR quality | | | | | |

---

## Team Assessment

| Rep | Portfolio (Green/Yellow/Red) | QBR completion | Coaching priority |
|-----|---------------------------|---------------|-----------------|
| [Name] | [N]/[N]/[N] | [X]% | [Skill area] |

---

## Q[X+1] Operational Priorities

1. [Priority] — [Owner] — [Metric target] — [Specific process change]
2.
3.

---

## Process Change Log

| Change | Skill/tool updated | Owner | Effective date |
|--------|-------------------|-------|---------------|
| [Change] | [cs-skill-name] | [Name] | [Date] |
```

## Output Contract
- Root cause required for every miss — "we didn't hit GRR because some customers churned" is not a root cause; "we didn't hit GRR because 2 accounts churned due to champion changes that weren't caught in the health score early enough — the reps weren't updating health scores weekly and the champion departure signal wasn't logged for 3 weeks" is a root cause; Dr. Lewis requires that every metric miss has a specific, process-level root cause before the CS Ops Review concludes; without a root cause, the fix is a guess
- Process changes must be specific and owned — "we'll do better next quarter" is not a process change; "starting Monday, every CS rep adds a 30-minute health score review to their Monday calendar; Dr. Lewis will spot-check 3 accounts per rep on Tuesday to confirm it was done" is a process change; Dr. Lewis requires every process finding to produce a specific change with a name, an action, an owner, and a due date
- Playbooks are live documents — the cs-* skill files in the library are the CS playbooks; when the quarterly review finds that a process isn't working as designed, Dr. Lewis updates the relevant skill file within 10 business days; a process review that identifies a skill that's wrong but doesn't update it is a review that has been done but not finished
- HITL required: Dr. Lewis runs the quarterly CS Ops Review; CEO receives the next-quarter priority memo within 5 business days of the review; any headcount decision (hiring or reduction) requires CEO approval; any skill/playbook update requires Dr. Lewis approval before the update is applied; Matt Mathison receives the annual CS Ops Review summary as part of the portfolio operating review

## System Dependencies
- **Reads from:** cs-kpi-dashboard (Q metrics); cs-health-score-tracker (health trend data); cs-coaching-framework (rep coaching notes and development plans); cs-okr-tracker (Q OKR grades — what did we say we'd do vs. what we did?); GoHighLevel CRM (data quality audit — are all records current?); SharePoint (document completeness audit — are all required files present?)
- **Writes to:** CS Ops Review report (SharePoint/CustomerSuccess/<Company>/OpsReviews/Q[X]_[YYYY]_OpsReview.pdf); process change log (SharePoint/CustomerSuccess/<Company>/OpsReviews/ProcessChangeLog.pdf — updated each quarter); next-quarter priority memo (CEO); updated cs-* skill files (when process changes require playbook updates); cs-okr-tracker (next quarter OKR inputs from priorities)
- **HITL Required:** Dr. Lewis runs the review; CEO receives the priority memo; headcount decisions require CEO approval; playbook updates require Dr. Lewis approval; Matt Mathison receives annual ops review summary

## Test Cases
1. **Golden path:** Q2 Allevio CS Ops Review — GRR: 93.1% ✅; NRR: 102.4% ✅; QBR completion Priority A: 100% ✅; TTV: 91 days avg ❌ (target 84); root cause: "Census file delivery is averaging 9 days from kickoff call instead of 5 — the delay is consistently in the employer's payroll team, not the implementation team; we've been accepting the delay instead of escalating to the HR Director" → Fix: "Day 1 kickoff packet includes a census request with a 5-day return deadline and an explicit note that the go-live date is contingent on receipt; Dr. Lewis calls the HR Director on Day 6 if census hasn't arrived — no exceptions"; process change logged; cs-onboarding-coordinator skill updated; Q3 OKR includes TTV improvement target; CEO receives the priority memo including the TTV fix
2. **Edge case:** The system audit reveals that 7 of 22 Allevio accounts have no success plan in SharePoint — the accounts have been active for 6+ months → Dr. Lewis: "This is a process failure, not a documentation failure. Success plans should be built in Month 1. If 7 accounts don't have plans, the reps either skipped them or built them and didn't file them. I'm assigning each rep to audit their accounts this week: either locate the plan and file it, or build it if it doesn't exist. I'll check next Monday. Going forward: every new account has a success plan filed in SharePoint within 30 days of go-live — that's a hard milestone in the onboarding tracker." All 7 accounts have success plans built within 10 days; onboarding tracker updated; cs-onboarding-coordinator updated with the 30-day filing milestone
3. **Adversarial:** A CS rep proposes skipping the Q4 ops review because "everyone is focused on December renewals and year-end" → Dr. Lewis: "I understand the timing pressure — and that's exactly why we do the Q4 review before the holiday crunch, not during it. The Q4 ops review sets us up for Q1: the headcount decisions we make in Q4 start in January; the playbook updates we make in December are ready for January onboarding. If we skip Q4, we start Q1 without the improvements Q4 would have produced. I'll make the Q4 review 2 hours instead of 4 — but we're doing it." Abbreviated Q4 ops review held; 2 critical process changes identified; both implemented before January 1

## Audit Log
All quarterly ops review reports retained by entity and quarter. Process change logs retained and updated each quarter. CEO priority memo records retained. Playbook update records retained (what changed; when; Dr. Lewis approval). Headcount decision records retained.

## Deprecation
Retire when each portfolio company has a dedicated CS Ops function that owns the quarterly process review — with Dr. Lewis reviewing the annual CS Ops Review summary and the CEO approving all structural changes to the CS function.
