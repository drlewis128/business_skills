---
name: fin-okr-tracker
description: "Build and track Finance function OKRs for MBL Partners and portfolio companies. Use when the user says 'finance OKRs', 'finance objectives', 'finance goals', 'financial function OKRs', 'finance department OKRs', 'finance team OKRs', 'CFO OKRs', 'Controller OKRs', 'financial close OKRs', 'close quality OKRs', 'reporting OKRs', 'audit readiness OKRs', 'finance performance', 'finance team performance', 'measure the finance function', 'how is finance doing', 'finance accountability', 'finance metrics', 'finance KPIs for the finance team', 'financial operations OKRs', 'treasury OKRs', 'finance goals for the quarter', 'quarterly finance goals', 'finance function goals', or 'track finance team performance'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--period <Q1|Q2|Q3|Q4|annual>] [--action <build|review|score|update>] [--focus <close|reporting|controls|audit|cash>]"
---

# Fin OKR Tracker

Build and track Finance function OKRs for MBL Partners and portfolio companies — establishing the measurable commitments for the finance function itself (not just for the businesses it serves) that ensure the financial infrastructure is operating at the quality level MBL requires. The finance function's job is to produce reliable data, on time, with clean controls, so that Matt Mathison, entity CEOs, LPs, and auditors can trust what they see. Finance function OKRs make that accountability explicit and measurable.

## When to Use
- Beginning of each quarter (set the finance function's OKRs from the annual plan)
- Mid-quarter check-in (is the finance function hitting its commitments?)
- End of quarter (score and debrief the finance function's performance)
- Finance function is underperforming and needs an improvement target
- Matt Mathison asks how the finance function is performing

## Finance OKR Framework

```
FINANCE FUNCTION OKR STRUCTURE:

  Focus areas for Finance function OKRs:
    1. Close quality and timeliness
    2. Financial reporting accuracy and speed
    3. Controls compliance
    4. Cash management effectiveness
    5. Audit readiness
    6. Finance function capacity and team development (if team exists)

STANDARD FINANCE OKRs (customize per entity; adapt per quarter):

  O1: DELIVER FINANCIAL DATA THAT ENABLES CONFIDENT DECISIONS
    KR1: Monthly close completed by the 15th of each month (all entities) — 3/3 months
    KR2: Board financial report delivered within 10 business days of month-end — 3/3 months
    KR3: Zero unexplained variances in the QuickBooks health check — all 3 months
    
  O2: PROTECT ENTITY CASH WITH TIGHT CONTROLS
    KR1: No AP payment made without required approval (0 violations in the quarter)
    KR2: 13-week cash flow updated every Monday (13/13 weeks)
    KR3: DSO at or below target for all entities — at quarter-end
      Allevio: ≤35 days | HIVE: ≤45 days | Column6: ≤55 days
    
  O3: MAINTAIN AUDIT-READY BOOKS YEAR-ROUND
    KR1: Monthly bank reconciliations current by the 15th — 3/3 months
    KR2: Zero undocumented journal entries >$500 — all 3 months
    KR3: PBC list items submitted within 48 hours of auditor request (if audit in progress)
    
  O4: ENABLE PORTFOLIO FINANCIAL INTELLIGENCE
    KR1: LP quarterly report delivered by the 45th day after quarter-end
    KR2: Variance analysis available to Matt Mathison by the 20th of each month — 3/3
    KR3: EBITDA improvement initiatives — at least 2 active per entity with tracked progress
    
OKR SCORING METHODOLOGY:

  Same as exec-okr-tracker:
    0.0: Not achieved
    0.3: Partial — significantly short
    0.7: Mostly achieved — minor gap
    1.0: Fully achieved
    
  Scoring finance KRs:
    KR1 (close by 15th): 3/3 months = 1.0 | 2/3 = 0.7 | 1/3 = 0.3 | 0/3 = 0.0
    KR2 (zero violations): Any violation = 0.3; minor violation corrected = 0.7; none = 1.0
    
  Finance function OKRs that score below 0.7 for 2 consecutive quarters:
    Trigger: Dr. Lewis conducts a root cause analysis
    Options: process improvement; additional capacity (hire); technology improvement; training
    Matt Mathison notification: if root cause is capacity or technology, this is a resource decision

QUARTERLY FINANCE FUNCTION DEBRIEF:

  15 minutes; Dr. Lewis + entity Controller (if applicable):
    What did we score? (Overall and per KR)
    What drove the misses? (A: execution; B: plan; C: external; D: resource)
    What carries forward to next quarter?
    What do we need to do differently?
    
  Result: updated OKRs for the next quarter; any resource requests logged
```

## Output Format

```markdown
# Finance Function OKR Tracker — [Entity] — Q[N] [Year]
**Owner:** Dr. Lewis | **Entity:** [Entity] | **Tracked by:** Dr. Lewis

---

## Quarter OKRs

### O1: Deliver Financial Data That Enables Confident Decisions

| Key Result | Target | Current | Score |
|-----------|--------|---------|-------|
| Monthly close by 15th (3/3 months) | 3/3 | [N]/3 | [0-1.0] |
| Board report within 10 business days (3/3) | 3/3 | [N]/3 | [0-1.0] |
| Zero unexplained QB variances (3/3 months) | 0 violations | [N] violations | [0-1.0] |

**O1 Score:** [Average]

---

### O2: Protect Entity Cash With Tight Controls

[Same format]

---

### O3: Maintain Audit-Ready Books Year-Round

[Same format]

---

### O4: Enable Portfolio Financial Intelligence

[Same format]

---

## Quarter Summary

| OKR | Score | Status |
|-----|-------|--------|
| O1: Data quality | [Score] | 🟢/🟡/🔴 |
| O2: Cash controls | [Score] | 🟢/🟡/🔴 |
| O3: Audit readiness | [Score] | 🟢/🟡/🔴 |
| O4: Intelligence | [Score] | 🟢/🟡/🔴 |
| **Overall** | **[Avg]** | |

---

## Debrief Notes

**What worked:** [Specific win]
**What didn't:** [Miss with root cause]
**Next quarter adjustment:** [Specific change]
```

## Output Contract
- Finance function is accountable too — it is easy for the finance function to track everyone else's OKRs and metrics while avoiding accountability for its own performance; MBL finance function OKRs are Dr. Lewis's personal commitment to the quality of financial infrastructure; if the close is late, if the bank rec has unexplained items, if the AP controls are bypassed — these are finance function failures that should be tracked, scored, and corrected; Dr. Lewis reports his own finance OKR performance to Matt Mathison quarterly with the same rigor as entity CEO OKRs
- Process improvement is the response to consistent misses — if a finance OKR scores below 0.7 for 2 consecutive quarters, "working harder" is not the root cause analysis; the question is whether the process is right, the tools are right, or the capacity is right; Dr. Lewis diagnoses the root cause and comes to Matt Mathison with a specific fix (process redesign; technology investment; additional headcount) rather than a commitment to "try harder"
- OKRs build the audit trail — finance function OKRs, when tracked consistently, create a documented history of how the finance function performed: how many times the close was on time, how many AP controls violations occurred, how many months the 13-week cash flow was current; this history is valuable for the annual audit (demonstrates financial controls maturity), for LP reporting (demonstrates operational rigor), and for entity sale processes (acquirers assess finance function quality)
- HITL required: Dr. Lewis sets finance function OKRs in alignment with Matt Mathison's expectations at the annual planning kickoff; quarterly OKR scores are shared with Matt Mathison; any OKR that reflects a resource constraint (capacity to do the work) is brought to Matt as a staffing or technology decision; LP report delivery is a fiduciary commitment — any miss on the LP report OKR is an immediate Matt Mathison discussion

## System Dependencies
- **Reads from:** All fin-* skills (the OKRs measure the outputs of the finance function skills — close timing from fin-entity-close; bank rec status from fin-quickbooks-reviewer; AP violations from fin-ap-manager; DSO from fin-ar-manager; LP report delivery from fin-lp-financial-disclosure)
- **Writes to:** Finance OKR tracker (SharePoint → Finance → OKRs → [YYYY]-Q[N]); exec-action-tracker (finance OKR action items); exec-okr-tracker (finance OKR summary feeds into the portfolio OKR review)
- **HITL Required:** Finance OKRs set with Matt Mathison alignment at annual planning; quarterly scores shared with Matt Mathison; resource constraint OKRs (capacity; technology) escalated to Matt as decisions; LP report delivery OKR miss is an immediate Matt discussion

## Test Cases
1. **Golden path:** Q2 finance OKR score; O1 (data quality): close on time 3/3; board report 3/3; QB health clean 3/3 — Score: 1.0. O2 (controls): 0 AP violations; 13-week cash flow current 13/13; DSO: Allevio 34 (✅); HIVE 43 (✅); Column6 52 (✅) — Score: 1.0. O3 (audit readiness): bank recs current 3/3; 0 undocumented JEs; N/A (no audit this Q) — Score: 1.0. O4 (intelligence): LP report delivered Day 43; variance analysis 3/3; EBITDA initiatives: Allevio 3 active, HIVE 2 active, Column6 2 active — Score: 0.95 (LP report 2 days early; close enough to 1.0). Overall: 0.99. Exceptional quarter. Debrief: "Strong quarter. The 13-week cash flow update discipline has been the most impactful habit change — we caught the Column6 week-8 cash concern early enough to resolve it before it became a crisis. Keep the discipline."
2. **Edge case:** Close was late in 2 of 3 months (16th and 18th vs. 15th deadline) → Score O1 KR1: 0.3 (1/3 on time). Dr. Lewis debrief: "Two late closes in a quarter is not a 'bad month' — it's a process issue. Root cause: the HIVE Controller isn't submitting the Covercy reconciliation in time for me to close by the 15th. The Covercy statement comes out on the 10th; the reconciliation was being done on the 13th-14th, which left no buffer. Fix: HIVE Controller does the reconciliation immediately on the 10th when the statement is available. I've already implemented this for Q3. Second root cause: the Allevio IBNR accrual estimate wasn't ready until the 16th — the clinical team is late with the claims data. Fix: I've requested that AdvancedMD data be pulled on the 8th each month. Both fixes are in exec-action-tracker. Q3 target: 3/3 on time."
3. **Adversarial:** Matt asks why the finance function has OKRs when "we should just do the basics" → Dr. Lewis: "Fair question. The OKRs aren't bureaucracy — they're the commitment that the basics actually happen, consistently, at the required quality. The close-by-the-15th deadline is a basic; tracking whether we hit it 3/3 months makes it accountable and surfaces when the process is failing. Without the OKR tracking, 'we close the books every month' doesn't tell you whether that's the 10th or the 22nd. The finance function OKRs take me 20 minutes per quarter to score and 15 minutes to debrief. In exchange, you have documented evidence that the financial infrastructure is operating at a consistent quality level — which matters to the auditors, matters to LPs, and matters to any acquirer doing diligence. I'm comfortable removing any specific KR that you think is tracking the wrong thing. Which one doesn't feel useful?"

## Audit Log
All quarterly finance OKR scorecards retained. Debrief notes retained. Root cause analysis records for misses. Matt Mathison review records. Resource request records (capacity; technology).

## Deprecation
Retire when each entity has a dedicated CFO who sets and tracks their own finance function OKRs — with Dr. Lewis tracking the portfolio-level finance quality indicators and Matt Mathison receiving the quarterly finance function performance summary.
