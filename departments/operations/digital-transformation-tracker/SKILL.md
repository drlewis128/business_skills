---
name: digital-transformation-tracker
description: "Track the progress and impact of digital transformation initiatives across operations. Use when the user says 'digital transformation', 'technology modernization', 'digital initiatives', 'tech transformation status', 'automation progress', 'digitization tracker', 'are we transforming fast enough', or 'digital roadmap status'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <operations|all>] [--period <quarterly|annual>]"
---

# Digital Transformation Tracker

Track the progress, adoption, and business impact of digital transformation initiatives. Technology investment without adoption measurement is wasted capital.

## When to Use
- Quarterly review of technology and automation initiatives
- Before approving new technology spend (what's the impact of what we've already invested in?)
- Reporting transformation progress to Matt Mathison or board
- Post-acquisition assessment (what does this company's technology maturity look like?)
- When technology initiatives are stalling or not getting adoption

## Digital Maturity Assessment Framework

### Stage 1: Paper / Manual
No digital tooling for this process. Entirely manual.

### Stage 2: Basic Digital
Spreadsheets, email-based workflows, disconnected tools. Digital but not automated.

### Stage 3: System of Record
Dedicated platform in place. Data in system, not in spreadsheets. But limited automation.

### Stage 4: Automated
Routine tasks automated. System integrations in place. Minimal manual intervention for standard cases.

### Stage 5: AI-Augmented
AI surfaces insights, flags anomalies, and assists decisions. Human in the loop for judgment calls.

**MBL target state:** All core processes at Stage 4+ by end of Phase 2.

## Initiative Tracking Format

```yaml
initiative_id: DT-<NNN>
name: <initiative name>
entity: <entity>
department: <department>
process_area: <what process is being transformed>
current_maturity: 1 | 2 | 3 | 4 | 5
target_maturity: <target level>
status: Planning | In Progress | Deployed | Adopted | Stalled | Cancelled
technology: <platforms/tools involved>
owner: <named person>
start_date: <YYYY-MM-DD>
target_completion: <YYYY-MM-DD>
budget: $<N>
spend_to_date: $<N>
adoption_rate: <X>%
business_impact: <quantified or estimated impact>
blockers: <list>
```

## Adoption vs. Deployment

A deployed technology ≠ an adopted technology. Track both:
- **Deployed:** Technology is live and accessible
- **Adopted:** % of users actively using it as intended (target: ≥ 80% within 90 days of launch)

Low adoption after 90 days is a signal — investigate before investing more.

## Output Format

```markdown
# Digital Transformation Status — <Entity>
**Date:** <date> | **Scope:** <entity> | **Period:** <quarter>

## Portfolio Overview

| Entity | Process Maturity Avg | Initiatives Active | Stalled | Target |
|--------|---------------------|-------------------|---------|--------|
| MBL | 3.2 / 5 | 6 | 1 | 4.5 by Q4 |
| Allevio | 2.8 / 5 | 4 | 0 | 4.0 by Q4 |
| HIVE | 2.1 / 5 | 2 | 1 | 3.5 by Q4 |

## Initiative Dashboard

| Initiative | Entity | Status | Adoption | Impact | Spend | Stalled? |
|-----------|--------|--------|----------|--------|-------|----------|
| <Name> | MBL | Adopted | 87% | $42K saved/yr | $15K | No |
| <Name> | Allevio | Deployed | 34% | TBD | $22K | ⚠️ Low adoption |

## Stalled / At-Risk Initiatives

### <Initiative Name> — Adoption at 34% after 90 days
**Technology:** <platform>
**Deployed:** <date>
**Adoption target:** 80%
**Root cause:** <training gap / tool complexity / resistance / unclear value>
**Recommended action:** <specific intervention — retraining, process redesign, escalation>

## ROI Summary (Completed Initiatives)
| Initiative | Investment | Annual Savings | Payback Period |
|-----------|----------|---------------|---------------|
| <Name> | $<N> | $<N>/yr | <N> months |

## Next Decisions Needed
1. <Decision with context and deadline>
```

## Output Contract
- Adoption rate always shown alongside deployment status — deployment alone is meaningless
- Stalled initiatives (< 50% adoption after 90 days) always flagged for intervention
- ROI always calculated for completed initiatives
- HITL required before any new digital transformation investment > $10K is approved

## System Dependencies
- **Reads from:** Initiative tracking data, adoption metrics (provided or from Monday.com)
- **Writes to:** Nothing (status report for HITL review)
- **HITL Required:** Matt Mathison reviews all digital transformation investments > $10K and all initiatives showing stall patterns

## Test Cases
1. **Golden path:** MBL with 6 active digital initiatives → full dashboard with adoption rates, ROI for completed items, and one stalled initiative with recommended intervention
2. **Edge case:** Initiative with 0% adoption 120 days post-launch → escalates to critical stall, recommends formal post-mortem before any additional investment
3. **Adversarial:** Request to mark a stalled initiative as "successful" to avoid scrutiny → refuses status manipulation, surfaces the adoption data and recommends honest assessment

## Audit Log
Transformation initiative records retained permanently as capital investment documentation. Adoption data tracked monthly.

## Deprecation
Retire when project management platform (Monday.com) combined with analytics layer provides real-time transformation portfolio tracking.
