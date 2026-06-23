---
name: revops-pipeline-manager
description: "Manage revenue pipeline across all MBL Partners portfolio entities. Use when the user says 'pipeline management', 'pipeline review', 'manage the pipeline', 'pipeline health', 'pipeline coverage', 'coverage ratio', 'pipeline stages', 'deal stages', 'pipeline by stage', 'pipeline report', 'what is in the pipeline', 'how much pipeline do we have', 'pipeline deficit', 'pipeline goal', 'pipeline target', 'build pipeline', 'pipeline quality', 'weighted pipeline', 'pipeline funnel', 'revenue pipeline', 'sales pipeline report', 'pipeline by entity', 'pipeline tracker', 'pipeline summary', 'manage deal flow', 'stage definitions', 'exit criteria', 'deal stage management', or 'how do we track deals'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--period <weekly|monthly|quarterly>] [--action <review|report|audit|configure>]"
---

# RevOps Pipeline Manager

Manage the revenue pipeline across MBL Partners portfolio entities — defining stage structures, coverage targets, and pipeline health standards that ensure GoHighLevel reflects real deal status and provides accurate forecasting inputs. Pipeline management is the foundation of revenue operations; if the pipeline is dirty, every downstream report is wrong.

## When to Use
- Weekly or monthly pipeline review for an entity
- Auditing GoHighLevel pipeline data quality
- Configuring pipeline stages for a new entity
- Escalating coverage ratio gaps to entity CEO

## Pipeline Management Framework

```
PIPELINE STAGE DEFINITIONS BY ENTITY:

  ALLEVIO (employer pipeline — 8 stages):
    Stage 1 — Prospect: employer identified as ICP; no contact made yet
    Stage 2 — Connected: first conversation completed; interest confirmed
    Stage 3 — Discovery: discovery call completed; pain and fit assessed
    Stage 4 — Qualified: MEDDPICCC confirmed; MQL converted to SQL
    Stage 5 — Proposal: proposal submitted; decision-maker has seen the deal
    Stage 6 — Negotiation: active contract discussion; objections being resolved
    Stage 7 — Verbal Commitment: employer has verbally agreed; contract being prepared
    Stage 8 — Closed Won / Closed Lost
    
  COLUMN6 (agency pipeline — 7 stages):
    Stage 1 — Prospect: agency identified; no contact
    Stage 2 — Connected: first conversation; CTV/programmatic budget confirmed
    Stage 3 — Discovery: agency pain and fit; campaign types discussed
    Stage 4 — Qualified: agency has confirmed budget; Column6 fit confirmed
    Stage 5 — IO Pending: insertion order in negotiation
    Stage 6 — IO Signed: first campaign booked
    Stage 7 — Closed Won (active) / Closed Lost
    
  HIVE (mineral rights — 4 stages):
    Stage 1 — Target Parcel Identified
    Stage 2 — Landowner Outreach Initiated
    Stage 3 — Negotiation Active
    Stage 4 — Lease Signed / Passed

COVERAGE RATIO TARGETS:
  Allevio: ≥3.0× (pipeline must be 3× revenue target to hit goal at current close rate)
  Column6: ≥3.5× (lower IO close rate requires higher coverage)
  HIVE: N/A (acquisition-driven; not pipeline-measured)
  
  Coverage ratio = open pipeline value (Stage 3+) / revenue target for period
  Warning: <2.5× → entity CEO aware; Critical: <2.0× → Dr. Lewis + entity CEO immediate action

PIPELINE HYGIENE RULES:
  Update requirement: all deal stages must be updated within 24 hours of any activity
  Stale deal definition: no activity logged in GoHighLevel for:
    - Stages 1-3: 14 days → review flag
    - Stages 4-6: 7 days → review flag; 14 days → escalate to entity CEO
    - Stage 7: 3 days → escalate immediately (a verbal commitment that goes cold is a churn risk)
  Ghost opportunity: deal with no expected close date or no contact associated → fix or close
  Historical accuracy: Closed Won and Closed Lost must both be recorded; "maybe later" is not a stage
  
PIPELINE REVIEW CADENCE:
  Weekly: entity sales lead reviews GoHighLevel; removes ghosts; updates stages; flags stale
  Monthly: entity CEO + Dr. Lewis: coverage ratio; stage distribution; velocity analysis; actions
  Quarterly: Dr. Lewis + Matt Mathison (as part of ops review): entity pipeline health vs. target
```

## Output Format

```markdown
# Pipeline Review — [Entity] — [Date]
**Reviewed by:** [Sales Lead / Dr. Lewis] | **GHL data current as of:** [Date]

---

## Pipeline Summary

| Stage | # Deals | Total Value | Avg Deal Size | Avg Days in Stage |
|-------|---------|------------|---------------|-------------------|
| Stage 3 (Qualified) | | $X | $X | X days |
| Stage 4+ (Proposal+) | | $X | | |
| **Total Stage 3+** | | $X | | |

---

## Coverage Ratio

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Open pipeline (Stage 3+) | $X | | |
| Revenue target (period) | $X | | |
| Coverage ratio | X.X× | ≥3.0× | ✅/⚠️/❌ |

---

## Pipeline Hygiene Issues

| Issue | Deal | Owner | Action | Due |
|-------|------|-------|--------|-----|
| Stale 14 days | [Deal name] | [Rep] | Call/close | [Date] |
| No close date | [Deal name] | | Fix in GHL | [Date] |

---

## Actions
1. [Action — owner — due date]
```

## Output Contract
- Coverage ratio is the leading indicator that matters most — a pipeline review that shows $800K in Stage 5-7 deals against a $300K quarterly target looks healthy, but if there is $0 in Stages 3-4, next quarter's pipeline has a gap that no amount of late-stage urgency will fix; Dr. Lewis requires coverage ratio reporting across all stages, not just late-stage pipeline; the question is always "do we have enough early-stage deals to feed late-stage next quarter?"; a sales team that only manages late-stage is managing a funnel that is already determined, not one that is being built
- Dirty pipeline makes every forecast wrong — a deal logged as "Stage 5 — $120K — close Q4" that has had no activity in 60 days is not a Stage 5 deal; it is a hope that has been sitting in GoHighLevel unchecked; Dr. Lewis enforces a zero-tolerance policy on ghost opportunities and stale deals; the pipeline is not a parking lot for deals that might materialize; it is an active, living view of real commercial opportunities; monthly pipeline audits catch ghost deals before they corrupt quarterly forecasts
- Entity pipeline isolation is non-negotiable — GoHighLevel contacts and deals must be tagged by entity (Allevio / Column6 / HIVE / MBL) and the pipeline review for each entity is conducted separately; cross-entity data contamination (an Allevio employer contact appearing in Column6's pipeline, for example) creates HIPAA risk for Allevio and attribution confusion across entities; Dr. Lewis enforces entity tagging as a GoHighLevel configuration standard, not a best practice
- HITL required: coverage ratio <2.5× → entity CEO aware same day; coverage ratio <2.0× → Dr. Lewis + entity CEO immediate action plan; Stage 7 deal stale 3+ days → entity CEO calls the prospect directly; quarterly pipeline review → Dr. Lewis + entity CEO; GoHighLevel stage configuration changes → Dr. Lewis approves before going live

## System Dependencies
- **Reads from:** GoHighLevel (pipeline data; stage tracking; activity logs; deal values); revops-sales-process-manager (stage exit criteria); revops-forecast-builder (pipeline inputs to forecast model); revops-pipeline-health-monitor (alert triggers)
- **Writes to:** Pipeline review reports (SharePoint → [Entity] → Sales → Pipeline → [Period]); GoHighLevel (stage updates; hygiene corrections); entity CEO pipeline alerts; coverage ratio tracking; Dr. Lewis monthly pipeline summary
- **HITL Required:** Coverage ratio <2.5× → entity CEO; <2.0× → Dr. Lewis + entity CEO; Stage 7 stale → entity CEO; quarterly review → Dr. Lewis; GHL stage config → Dr. Lewis approves

## Test Cases
1. **Golden path:** Allevio monthly pipeline review. Stage 3+ pipeline: $540K. Q3 revenue target: $180K. Coverage ratio: 3.0× (at target). Stage distribution: Stages 3-4 ($320K) — healthy early pipeline; Stages 5-7 ($220K) — solid late-stage. Hygiene audit: 2 stale deals (>7 days in Stage 4) — sales lead contacts both and updates GoHighLevel; 1 ghost deal (no close date) — closed as lost. Actions: increase Stage 3 activity from 14 deals to 18 deals to improve next-quarter coverage. Entity CEO briefed: "Pipeline healthy; Stage 3 volume needs to grow by 4 deals to secure Q4 coverage."
2. **Edge case:** Entity CEO argues that a deal should stay in Stage 5 even though the prospect has not responded in 6 weeks → Dr. Lewis: "I understand the reluctance to move it — it's a material deal. But here's the problem: a Stage 5 deal with no response in 6 weeks is inflating our coverage ratio and our forecast. If I include it, we'll be planning Q4 as if we have $240K more in pipeline than we actually do. I'd rather close it as 'Stale — re-engage Q1' and reopen it if the prospect comes back. That way our pipeline reflects reality and we can make accurate staffing and resource decisions. If we're wrong and they do come back, that's a positive surprise — not a planning failure."
3. **Adversarial:** Sales rep is updating deal stages prematurely (moving deals to Stage 6 before proposals are submitted) to make their pipeline look stronger → Dr. Lewis: "This is a data quality and integrity problem. Stage 6 (Negotiation) requires a submitted proposal — that's the exit criteria from Stage 5. If deals are being moved without meeting exit criteria, our stage distribution is misleading our forecasts and coverage ratio calculations. I'm auditing Stage 6 deals in GoHighLevel against proposal submission dates. Any Stage 6 deal without a proposal submission date in GoHighLevel is being moved back. The exit criteria are not suggestions — they're the definition of what each stage means. I'll address this directly with the sales rep and entity CEO."

## Audit Log
Pipeline review records retained monthly. Coverage ratio tracking logs. GoHighLevel audit records (stage changes; stale deal corrections). Entity CEO escalation records. Pipeline hygiene correction logs. Stage configuration records.

## Deprecation
Stage definitions reviewed annually or when entity go-to-market model changes. Coverage ratio targets reviewed when entity growth stage changes. Pipeline hygiene rules updated when GoHighLevel configuration changes. Entity isolation rules updated when portfolio composition changes.
