---
name: sales-ops-review
description: "Run quarterly sales operations reviews for MBL portfolio company sales teams. Use when the user says 'sales ops review', 'sales operations review', 'QBR', 'quarterly business review', 'quarterly review', 'sales review', 'Q review', 'Q1 review', 'Q2 review', 'Q3 review', 'Q4 review', 'end of quarter', 'end of year', 'sales performance review', 'team performance review', 'ops review', 'sales ops', 'sales operations', 'sales health', 'team health', 'revenue review', 'revenue analysis', 'growth analysis', 'what worked', 'what didn't work', 'sales lessons', 'lessons learned', 'next quarter plan', 'Q plan', 'next quarter', 'sales planning', 'headcount review', 'sales headcount', 'territory review', 'quota review', 'commission review', 'comp plan review', 'sales stack', 'sales tools', 'sales tech', 'GHL review', 'CRM review', 'process review', 'sales process review', 'Allevio sales review', 'Column6 sales review', 'HIVE review', 'Matt Mathison review', 'entity CEO review', or 'Dr. Lewis review'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|all>] [--period <Q1|Q2|Q3|Q4|annual>] [--action <run|prepare|brief>]"
---

# Sales Ops Review

Run quarterly sales operations reviews for MBL portfolio company sales teams — assessing pipeline health, quota attainment, process compliance, and next-quarter planning across all entities. The QBR is the highest-leverage leadership ritual in sales operations: it forces a structured look at what's working, what's not, and what changes need to happen before next quarter becomes a repeat of this one. Done right, it takes 90 minutes and produces a clear action plan.

## When to Use
- End of each quarter (standing process for Dr. Lewis + entity CEOs)
- Before Matt Mathison's quarterly briefing on entity performance
- When a major sales metric (attainment; coverage; win rate) has changed significantly
- Annual sales planning (headcount; quotas; comp plan; territory)

## QBR Framework

```
QBR STRUCTURE (90 minutes):
  Section 1 — Scoreboard (15 min): What did we actually do this quarter?
  Section 2 — Pipeline health (20 min): What does next quarter look like?
  Section 3 — Process analysis (20 min): What's working? What needs to change?
  Section 4 — People review (15 min): Who is thriving? Who needs help?
  Section 5 — Next quarter plan (20 min): What are we committing to?
  
SECTION 1 — SCOREBOARD:
  Revenue metrics (by entity):
    Quota attainment %: [Bookings ÷ Quota]
    # of deals closed: [N]
    Average ACV (Allevio) or IO value (Column6)
    New logos: [N new employers or agencies]
    Repeat business: Column6 repeat IO rate %; Allevio renewal rate
    
  Pipeline metrics:
    Current pipeline coverage: [X]× quota (is it ≥3×?)
    Pipeline added this quarter: [$X]
    Win rate from Stage 4+: [X%] (target ≥35% Allevio; ≥50% Column6)
    Average days in pipeline: [N days]
    
  HIVE metrics:
    LOIs sent: [N] | LOIs accepted: [N] | Assets acquired: [N]
    WTI average for quarter: [$X/bbl] | Any trigger events?
    Matt Mathison briefed: [Date]
    
SECTION 2 — PIPELINE HEALTH:
  Coverage ratio: ≥3× required; <2× = intervention
  Stage distribution: top-heavy vs. bottom-heavy (see sales-pipeline-review)
  Close date accuracy: did Q[N] predicted closes actually close?
  Stalled deals: how many Stage 5+ deals are stalled >30 days?
  Next quarter revenue forecast: Commit + Best Case + Upside
  
SECTION 3 — PROCESS ANALYSIS:
  Wins analysis: what did the winning deals have in common?
    Champion presence? Discovery quality? Competitive position? Compelling event?
    
  Loss analysis: what did the lost deals have in common?
    Stage they were lost (early vs. late)?
    Primary loss code (budget/timing/competition/no compelling event)?
    Any pattern requiring product, pricing, or positioning change?
    
  Sequence performance: email response rates; which sequences need updating?
  CRM hygiene: is GHL data quality high enough for accurate forecasting?
  Compliance: any HIPAA near-misses? Commission disputes? Territory conflicts?
  
SECTION 4 — PEOPLE REVIEW:
  Attainment by rep:
    ≥100%: recognize + protect (workload; comp plan satisfaction)
    70-99%: on track; any coaching needed?
    50-69%: at risk; coaching plan active?
    <50%: formal review; entity CEO + Dr. Lewis decide next steps before QBR ends
    
  Ramp review: new hires on track with ramp schedule?
  Headcount needs: right size for next quarter's targets?
  
SECTION 5 — NEXT QUARTER PLAN:
  Top 3 priorities (entity CEO commits; Dr. Lewis supports):
    Pipeline: what will be done to build/protect 3× coverage
    Process: what process change is being made this quarter
    People: any hiring, coaching, or team structure change
    
  Specific commitments: owner + metric + date for each
  
MATT MATHISON QUARTERLY BRIEFING:
  Format: 1-page summary + 5-minute verbal
  Content: entity-level revenue (vs. quota); pipeline coverage; top risk; top opportunity; HIVE update
  Timing: within 5 business days of end of quarter
  Dr. Lewis drafts; entity CEO reviews; Matt Mathison receives
  HIPAA: Allevio summary is employer-aggregate ACV only (no individual employee data)
  
ANNUAL SALES PLANNING (Q4 QBR extension):
  Quota-setting for next year (see sales-quota-builder)
  Commission plan review (see sales-commission-calculator)
  Territory design for next year (see sales-territory-planner)
  Headcount plan: how many AEs needed to hit revenue target?
  ICP refresh: any changes based on win/loss data?
  Matt Mathison briefed on next-year plan before quotas are finalized
```

## Output Format

```markdown
# Sales QBR — [Entity / All] | [Q Period] | [Date]
**Attendees:** Entity CEO; Dr. Lewis; [Reps] | **Matt Mathison briefed:** [Date]

---

## Section 1: Scoreboard
| Metric | Q[N] Actual | Q[N] Target | Status |
|--------|------------|-------------|--------|
| Quota attainment | [X%] | 100% | ✅/⚠️/❌ |
| Deals closed | [N] | [N] | ✅/⚠️/❌ |
| Win rate (Stage 4+) | [X%] | ≥35%/≥50% | ✅/⚠️/❌ |
| Pipeline coverage | [X]× | ≥3× | ✅/⚠️/❌ |

---

## Section 2: Pipeline Health
[Coverage ratio; stage distribution; forecast]

---

## Section 3: What Worked / What Didn't
**Win patterns:** [Top 3]
**Loss patterns:** [Top 3 loss codes; systemic issue if any]

---

## Section 4: People
| Rep | Attainment | Status | Action |
|-----|-----------|--------|--------|
| [Name] | [X%] | ✅/⚠️/❌ | [Coaching / Recognize / PIP] |

---

## Section 5: Next Quarter Commitments
1. [Priority 1 — owner; metric; date]
2. [Priority 2 — owner; metric; date]
3. [Priority 3 — owner; metric; date]
```

## Output Contract
- The QBR produces decisions, not just reports — every QBR exits Section 5 with 3 specific commitments that have an owner, a metric, and a date; Dr. Lewis tracks these commitments and reviews progress at the next monthly pipeline review; if a commitment from last quarter wasn't completed, it leads Section 5 of this quarter's QBR — accountability is only real if it's revisited; the QBR is not a presentation of results to Dr. Lewis, it is a decision-making session where entity CEO and Dr. Lewis commit to specific changes
- The Matt Mathison briefing is 1 page written by Dr. Lewis, reviewed by entity CEO — not a QBR data dump; Matt Mathison's attention is scarce; he needs BLUF (did we hit quota; pipeline health; top risk; top opportunity; what he needs from him if anything); a 1-page summary gives him the context to ask the right questions without sitting through a 90-minute QBR; Dr. Lewis drafts; entity CEO reviews for accuracy; the Allevio summary is employer-aggregate ACV only (no individual employee data); HIVE update includes WTI status and any LOI or acquisition activity
- HITL required: QBR commitments → entity CEO commits publicly in QBR; Dr. Lewis tracks; <50% attainment decision → entity CEO + Dr. Lewis decide before QBR ends; Matt Mathison briefing → entity CEO reviews before Dr. Lewis sends; HIVE section → Matt Mathison decision on pipeline and WTI; headcount changes → entity CEO + Dr. Lewis decide; quota/comp changes → entity CEO + Dr. Lewis + Matt Mathison before publishing; Allevio briefing → aggregate ACV only; annual plan → Matt Mathison briefed before quotas finalized

## System Dependencies
- **Reads from:** GHL (pipeline; attainment; win/loss codes; stage data; CRM hygiene score); commission records (sales-commission-calculator); pipeline review reports (sales-pipeline-review); quota assignments (sales-quota-builder); territory data (sales-territory-planner); win/loss analysis (sales-competitive-playbook); HIVE acquisition pipeline; WTI price history
- **Writes to:** QBR report (SharePoint → [Entity] → Sales → QBR → [Quarter]); Matt Mathison briefing (SharePoint → MBL → Briefings → [Entity] → [Quarter]); next-quarter commitments (SharePoint + GHL); people review records (attainment concerns; PIP; headcount); annual plan records (Q4 only)
- **HITL Required:** QBR commitments → entity CEO commits; <50% attainment → entity CEO + Dr. Lewis; Matt Mathison briefing → entity CEO reviews; HIVE → Matt Mathison; headcount → entity CEO + Dr. Lewis; quota/comp → entity CEO + Dr. Lewis + Matt Mathison; Allevio → aggregate only; annual plan → Matt Mathison before finalization

## Test Cases
1. **Golden path:** Q2 2026 Allevio QBR. Scoreboard: 2 AEs; quota $1.2M; bookings $892K; attainment 74%. AE 1: 93%. AE 2: 55%. Pipeline: 2.4× (below 3×). Win rate: 31% (below 35%). Loss codes: 3 "no compelling event"; 3 "timing"; 2 "competitor (telemedicine)." Win pattern: CFO in demo = 3 of 4 wins. Loss pattern: CFO not in demo = 7 of 8 losses. Decision: CFO attendance required for all demos starting July 1. AE 2 coaching plan initiated. Pipeline commitment: add 30 new Tier 1 prospects by July 15. Matt Mathison briefing drafted June 5; entity CEO reviews June 7; sent June 9.
2. **Edge case:** Win rate drops from 38% to 22% in one quarter → Dr. Lewis: "Root cause analysis before any process change. Questions: (1) Is the drop concentrated in one rep or across both? (2) Is it happening early (Stage 3-4 losses) or late (Stage 6-7 losses)? (3) Has the competitive landscape changed? (4) Are we pursuing lower-ICP prospects? Analysis steps: (1) GHL loss code review; (2) MEDDPICCC completion on lost vs. won deals; (3) Entity CEO joins next 3 discovery calls. QBR commitment: root cause identified by July 31; recommendation by August 15."
3. **Adversarial:** Entity CEO asks to skip the QBR: "We know what's going on; too busy" → Dr. Lewis: "I can cut it to 45 minutes with a tighter agenda. But without the structured review, the decisions that need making (AE 2's performance; below-3× pipeline; win rate drop) get deferred until there's a crisis. The QBR is the mechanism. I'll prep all the analysis in advance so we spend the 45 minutes on decisions only — no data review, just decisions. Can we do Thursday at 8am?"

## Audit Log
QBR records (all entities; all quarters; attendees; decisions; commitments; SharePoint). Matt Mathison briefing records (all entities; quarters; date sent; entity CEO review). Commitment tracking (commitment; owner; metric; date; completion). People review records (attainment; coaching; PIP; headcount). Annual plan records (Q4; quota; comp; territory; headcount; Matt Mathison briefing). HIPAA records (Allevio briefings — aggregate-only confirmed).

## Deprecation
QBR framework reviewed annually. Matt Mathison briefing format reviewed when Matt Mathison updates his preferences. Win rate targets reviewed when sales motion changes. People review criteria reviewed when HR policies change. Annual plan process reviewed when MBL's fiscal year calendar changes.
