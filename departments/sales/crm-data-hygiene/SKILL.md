---
name: crm-data-hygiene
description: "Audit and clean CRM data quality for accurate pipeline and forecasting. Use when the user says 'CRM data', 'clean up the CRM', 'CRM hygiene', 'data quality', 'pipeline data is wrong', 'CRM audit', 'fix the pipeline', or 'contacts are out of date'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--system <gohighlevel|salesforce|hubspot>] [--scope <contacts|deals|pipeline|full>]"
---

# CRM Data Hygiene

Audit and clean CRM data to ensure pipeline accuracy, forecast reliability, and reporting integrity. Bad CRM data produces bad forecasts, bad territory planning, and bad decisions. This skill runs a structured data quality audit and outputs a prioritized cleanup plan.

## When to Use
- Pipeline data doesn't match rep conversations
- Forecast accuracy is poor (actual vs. forecasted diverges consistently)
- New sales leader needs to trust the CRM before making decisions
- Quarterly data cleanup before board or LP reporting period
- Before migrating CRM data to a new system

## CRM Data Quality Dimensions

### 1. Contact Quality
- [ ] Contacts have valid email addresses (no bounces)
- [ ] Contacts have confirmed phone numbers
- [ ] Job title and company are current (people change roles)
- [ ] Contacts linked to accounts correctly
- [ ] No duplicate contact records

### 2. Deal / Opportunity Quality
- [ ] Every open deal has a realistic close date (no "12/31" catch-all dates)
- [ ] Every deal has a confirmed deal value
- [ ] Stage reflects actual progress (not rep's wishful thinking)
- [ ] Last activity date within 30 days (no stale deals in pipeline)
- [ ] Every deal has a next step and next step date
- [ ] No deals stuck in same stage for > 45 days without a flag

### 3. Account Quality
- [ ] Company name standardized (no "Acme Corp", "Acme Corporation", "acme corp" duplicates)
- [ ] Account owner assigned
- [ ] Industry and segment tagged correctly
- [ ] Revenue and employee count populated for ICP scoring

### 4. Pipeline Accuracy
- [ ] Pipeline total matches sum of individual deal values
- [ ] No "ghost deals" — deals in pipeline with no contact activity in 60+ days
- [ ] Weighted pipeline matches applied probabilities × deal values

### 5. Historical Records
- [ ] Lost deals have a loss reason recorded
- [ ] Won deals have the correct close date and amount
- [ ] No open deals for accounts that have churned

## Hygiene Scoring

| Category | Weight | Criteria |
|---------|--------|---------|
| Contact completeness | 20% | % of contacts with email + phone + title |
| Deal freshness | 30% | % of open deals with activity in last 30 days |
| Stage accuracy | 25% | % of deals with valid next step + close date |
| Account deduplication | 15% | No duplicate accounts |
| Loss reason coverage | 10% | % of closed-lost deals with loss reason |

**Score > 80%:** CRM in good shape; maintain with weekly rep hygiene checks
**Score 60–79%:** Moderate cleanup needed; assign owner, 2-week sprint
**Score < 60%:** Major cleanup needed; dedicate sprint week + rep training

## Output Format

```markdown
# CRM Data Hygiene Audit — <Entity>
**System:** <GoHighLevel / Salesforce / HubSpot> | **Date:** <date>

## Overall Data Quality Score: X% — <Grade>

## Hygiene Scores by Category

| Category | Score | Status | Priority |
|---------|-------|--------|---------|
| Contact completeness | X% | 🟢 / 🟡 / 🔴 | |
| Deal freshness | X% | | High |
| Stage accuracy | X% | | |
| Account deduplication | X% | | |
| Loss reason coverage | X% | | |

## Critical Issues (Fix This Week)

1. **[Issue]** — Affects: <N> records | Action: <specific fix>
2. **[Issue]** — Affects: <N> records | Action: <specific fix>

## Ghost Pipeline Detected

| Deal | Rep | Last Activity | Days Stale | Recommended Action |
|------|-----|--------------|-----------|-------------------|
| <Deal> | <Rep> | <date> | <N> days | Force a decision call or close lost |
| <Deal> | <Rep> | <date> | <N> days | |

## Duplicate Records Detected

| Type | Count | Examples | Action |
|------|-------|---------|--------|
| Duplicate contacts | <N> | [Name x2] | Merge, keep most recent |
| Duplicate accounts | <N> | [Account x2] | Merge, move deals to primary |

## 2-Week Cleanup Plan

**Week 1 (Reps):**
- [ ] Update close dates on all open deals with 12/31 catch-all dates
- [ ] Add loss reason to all closed-lost deals from last 90 days
- [ ] Confirm stage accuracy for all deals in Stage 3+

**Week 2 (Ops/Admin):**
- [ ] Merge duplicate contact and account records
- [ ] Archive ghost deals (no activity in 60+ days)
- [ ] Validate deal values against signed contracts

## Ongoing Hygiene Rules (Prevent Recurrence)
1. Deal cannot advance stage without meeting exit criteria in `deal-stage-reviewer`
2. Close date can only be moved by manager approval
3. Weekly pipeline review includes hygiene check — reps report on last activity for every Stage 3+ deal
```

## Output Contract
- Ghost deals always surfaced — no hiding stale pipeline
- Cleanup plan always includes specific owners, actions, and timeline
- Score always documented for trend tracking (next quarter's audit compares to this baseline)
- HITL required before archiving or deleting any deal records from the CRM

## System Dependencies
- **Reads from:** CRM export or direct CRM API data (GoHighLevel, Salesforce, HubSpot)
- **Writes to:** Nothing without HITL approval (cleanup actions require human execution)
- **HITL Required:** Dr. Lewis or sales manager approves before any deals are archived, merged, or deleted; Finance reviews before pipeline is adjusted for forecasting

## Test Cases
1. **Golden path:** 50-deal pipeline audit → overall score 71%, 8 ghost deals, 12 deals with 12/31 close dates, 5 duplicate accounts, 2-week cleanup plan assigned to reps and ops
2. **Edge case:** Only 5 open deals → full audit still runs, notes small sample size, scores as percentages and absolutes
3. **Adversarial:** Request to delete lost deals rather than mark them closed-lost with reason → refuses, requires all deals to be closed with loss reason for win/loss analysis integrity

## Audit Log
Hygiene audit results retained by entity and quarter. Pre/post scores documented to measure improvement.

## Deprecation
Retire when CRM platform includes native data quality scoring with automated duplicate detection and pipeline health alerts.
