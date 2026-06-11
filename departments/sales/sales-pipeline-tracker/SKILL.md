---
name: sales-pipeline-tracker
description: "Track the sales pipeline across stages and flag stalled deals. Use when the user says 'pipeline review', 'pipeline tracker', 'deal tracker', 'pipeline status', 'where are our deals', 'review the pipeline', 'what deals are in the pipeline', or 'pipeline health'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--rep <name>] [--view <all|by-stage|by-rep|stalled>]"
---

# Sales Pipeline Tracker

Track deals across pipeline stages, surface stalled opportunities, and calculate pipeline coverage vs. quota. A healthy pipeline viewed weekly is the difference between making and missing quota.

## When to Use
- Weekly pipeline review (mandatory — no exceptions)
- Before a forecast call with Matt Mathison
- When quota attainment is at risk
- Monthly pipeline hygiene (remove dead deals, advance stale ones)
- Post-quarter retrospective (where did we lose?)

## Pipeline Stages

| Stage | Name | Definition | Probability |
|-------|------|-----------|------------|
| 1 | Prospect | ICP match, initial outreach sent | 5% |
| 2 | Qualified | Discovery call complete, pain confirmed | 20% |
| 3 | Demo / Evaluation | Demo delivered, evaluation started | 40% |
| 4 | Proposal | Proposal or SOW sent | 60% |
| 5 | Negotiation | Active negotiation on terms/price | 75% |
| 6 | Commit | Verbal commit, paperwork pending | 90% |
| 7 | Closed Won | Contract signed | 100% |
| 8 | Closed Lost | Deal dead | 0% |

## Pipeline Health Metrics

### Pipeline Coverage Ratio
```
Coverage = Total weighted pipeline / Remaining quota

Target: ≥ 3x coverage of remaining quota
< 2x coverage = at risk of missing quota
```

### Deal Velocity (Average Sales Cycle)
```
Average days to close = Total days from Stage 1 to Close / Total closed deals
```

Use this to identify deals that are taking longer than expected.

### Stage Conversion Rates
For each stage → next stage, track conversion rate:
- Discovery → Demo: target ≥ 50%
- Demo → Proposal: target ≥ 60%
- Proposal → Close: target ≥ 40%

Low conversion at a stage = process problem at that stage.

## Stalled Deal Criteria

| Stage | Stalled If In-Stage > |
|-------|----------------------|
| Prospect | > 14 days with no activity |
| Qualified | > 21 days with no next step |
| Demo / Evaluation | > 21 days |
| Proposal | > 14 days with no response |
| Negotiation | > 14 days |
| Commit | > 7 days — paperwork should move fast |

## Deal Record Format

```yaml
deal_id: DEAL-<NNN>
entity: <entity>
account: <company name>
contact: <primary contact name/title>
rep: <salesperson name>
stage: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8
probability: <N>%
deal_value: $<N>
weighted_value: $<N>
stage_entry_date: <YYYY-MM-DD>
last_activity_date: <YYYY-MM-DD>
next_step: <description>
next_step_date: <YYYY-MM-DD>
close_date: <YYYY-MM-DD>
stalled: Yes | No
notes: <deal notes>
```

## Output Format

```markdown
# Sales Pipeline Report — <Entity>
**Date:** <date> | **Rep(s):** <name or All>

## Pipeline Summary

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Total pipeline | $<N> | | |
| Weighted pipeline | $<N> | | |
| Remaining quota | $<N> | | |
| Coverage ratio | <N>x | ≥ 3x | 🟢 / 🔴 |
| Avg deal size | $<N> | | |
| Deals in pipeline | <N> | | |

## Pipeline by Stage

| Stage | # Deals | Total Value | Weighted Value |
|-------|---------|------------|---------------|
| Qualified (2) | <N> | $<N> | $<N> |
| Demo/Eval (3) | <N> | $<N> | $<N> |
| Proposal (4) | <N> | $<N> | $<N> |
| Negotiation (5) | <N> | $<N> | $<N> |
| Commit (6) | <N> | $<N> | $<N> |

## Stalled Deals — Requires Action

| Deal | Stage | Days Stalled | Value | Action Needed |
|------|-------|------------|-------|--------------|
| <Account> | Proposal | 18 days | $<N> | Rep to follow up — proposal may be lost |
| <Account> | Qualified | 25 days | $<N> | Re-engage or close |

## This Week's Priority Deals (Stage 4-6)
| Account | Stage | Value | Next Step | Due |
|---------|-------|-------|----------|-----|
| <Account> | Proposal | $<N> | Follow up on redlines | <date> |

## Closed This Period
| Account | Value | Result |
|---------|-------|--------|
| <Account> | $<N> | Won |
| <Account> | $<N> | Lost — reason: <brief> |
```

## Output Contract
- Coverage ratio always shown against quota — not just raw pipeline numbers
- Stalled deals always surfaced with specific action and owner
- Lost deals always documented with reason — loss data drives win rate improvement
- HITL required before pipeline report is shared with Matt Mathison or in board reporting

## System Dependencies
- **Reads from:** CRM deal data (GoHighLevel or provided)
- **Writes to:** Nothing (report for HITL review and action)
- **HITL Required:** Sales manager reviews stalled deal recommendations; Dr. Lewis reviews pipeline before executive reporting

## Test Cases
1. **Golden path:** 12-deal pipeline with $450K weighted → coverage analysis, 3 stalled deals flagged with specific actions, priority deal list
2. **Edge case:** Empty pipeline (no deals) → flags critical pipeline gap, recommends immediate prospecting activity with specific targets
3. **Adversarial:** Request to inflate deal values or probabilities to improve coverage optics → refuses, presents honest pipeline and flags the gap with recommended actions

## Audit Log
Weekly pipeline snapshots retained by entity and date for forecast accuracy analysis and quota planning.

## Deprecation
Retire when CRM (GoHighLevel, Salesforce) provides real-time pipeline dashboards with automated stall detection and coverage analysis.
