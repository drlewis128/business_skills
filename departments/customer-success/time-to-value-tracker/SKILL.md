---
name: time-to-value-tracker
description: "Measure and improve time-to-first-value for new customers. Use when the user says 'time to value', 'TTV', 'time to first value', 'when did they get value', 'how fast are customers getting value', 'value realization speed', or 'onboarding speed metrics'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--account <specific>] [--period <cohort-date>]"
---

# Time-to-Value Tracker

Measure and analyze the time from contract signature to first customer value realization. Time-to-value (TTV) is one of the strongest predictors of long-term retention — customers who achieve value quickly renew at higher rates and expand. Every week of delay in value delivery is a week of churn risk accumulating.

## When to Use
- Monthly CS metrics review (TTV is a core operational KPI)
- Onboarding program design or optimization
- When early churn is higher than expected (TTV may be the root cause)
- Cohort analysis — do certain segments take longer to get value?
- Board or LP reporting (customer efficiency metric)

## Defining "First Value" (By Product Type)

First value is the moment the customer achieves the first meaningful outcome they came for — not just first login or completing training.

| Product Type | Example First Value Definition |
|-------------|-------------------------------|
| SaaS platform | First transaction processed / first report run / first workflow automated |
| Healthcare RCM | First claim submitted and acknowledged |
| Analytics tool | First insight that informs a decision |
| Communication tool | First message sent to customers |
| Services engagement | First deliverable accepted by customer |

**Rule:** Define TTV before onboarding starts. If you can't define it, you can't measure it.

## TTV Categories

| Category | TTV | Health Interpretation |
|---------|-----|---------------------|
| **Fast** | < 30 days | Strong onboarding; likely to renew |
| **Standard** | 30–60 days | Normal; monitor adoption to confirm value is building |
| **Slow** | 61–90 days | At-risk; investigate blocker |
| **Delayed** | > 90 days | Red flag; intervention required |

## TTV Analysis Dimensions

- TTV by customer segment (SMB vs. mid-market vs. enterprise)
- TTV by CSM (are some CSMs consistently faster?)
- TTV by industry (healthcare vs. general business)
- TTV by acquisition source (are referred customers faster?)
- TTV correlation to renewal rate (does faster TTV predict renewal?)

## Output Format

```markdown
# Time-to-Value Analysis — <Entity>
**Date:** <date> | **Cohort analyzed:** <date range>
**First value definition:** <Specific definition for this product>

---

## Portfolio TTV Summary

| Category | Count | % of Cohort | Avg TTV (days) |
|---------|-------|------------|---------------|
| Fast (< 30 days) | <N> | X% | <N> |
| Standard (30–60 days) | <N> | X% | <N> |
| Slow (61–90 days) | <N> | X% | <N> |
| Delayed (> 90 days) | <N> | X% | <N> |

**Portfolio average TTV:** <N> days | **Target:** < <N> days
**vs. Prior cohort:** <N> days faster / slower

---

## TTV by Segment

| Segment | Avg TTV | vs. Average | Trend |
|---------|--------|------------|-------|
| SMB | <N> days | +/- X days | ⬆️ |
| Mid-market | <N> days | +/- X days | |
| Enterprise | <N> days | +/- X days | |

---

## TTV Outliers (Delayed — > 90 Days)

| Account | TTV (days) | Blocker | CSM | Action |
|---------|-----------|---------|-----|--------|
| <Account> | <N> days | IT integration delayed | <CSM> | Escalate to CS Manager |
| <Account> | <N> days | Low user adoption post-training | <CSM> | Re-onboarding scheduled |

---

## Root Cause Analysis (Why TTV Is Slow)

| Root Cause | Frequency | Impact | Fix |
|-----------|---------|--------|-----|
| IT/integration delays | X% of slow TTVs | High | Pre-implementation technical checklist |
| Training attendance low | X% | Medium | Required training with manager sponsorship |
| No defined first value milestone | X% | High | Set TTV milestone in success plan at kickoff |

---

## Improvement Actions

| Action | Owner | Target Impact | Due |
|--------|-------|--------------|-----|
| Add TTV milestone to success plan template | CS Manager | -7 days avg TTV | <date> |
| Pre-implementation IT checklist | CS Manager + IT | -5 days for integration-heavy deployments | <date> |
| Mandatory training within 15 days of kickoff | CSM team | -10 days for training-blocked accounts | <date> |
```

## Output Contract
- TTV always measured against a defined "first value" — not first login or training completion
- Slow and delayed accounts always surfaced with root cause and action
- TTV always benchmarked against prior cohort — direction of travel matters
- HITL required before TTV data is used in board reporting or to redesign the onboarding program

## System Dependencies
- **Reads from:** Implementation tracker, product usage data, CSM notes (provided or from CS platform)
- **Writes to:** Nothing (analysis for HITL review and CS process improvement)
- **HITL Required:** CS Manager reviews TTV analysis monthly; Dr. Lewis reviews before board/LP reporting; onboarding program changes require CS Manager approval

## Test Cases
1. **Golden path:** 15-account cohort analysis → average TTV 42 days, 3 outliers above 90 days (IT delays dominant), SMB customers 18 days faster than enterprise, 3 process improvements recommended
2. **Edge case:** No TTV milestone was defined in onboarding → flags this as a critical gap, recommends retrospectively defining first value for the cohort, implements TTV milestone as first priority in next onboarding cycle
3. **Adversarial:** Request to declare TTV achieved based on first login → refuses, explains that first login is not value realization, uses product-specific definition of first value

## Audit Log
TTV data retained by account and cohort. Correlation between TTV and 12-month renewal rate tracked.

## Deprecation
Retire when CS platform tracks TTV automatically from product milestones with real-time cohort analysis and automated alerts for delayed accounts.
