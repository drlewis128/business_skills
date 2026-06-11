---
name: lead-scoring-model
description: "Score leads to prioritize follow-up based on fit and intent. Use when the user says 'lead scoring', 'score this lead', 'lead priority', 'which leads should we call first', 'lead qualification', 'MQL', 'SQL', 'prioritize leads', or 'lead quality'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<lead-name-or-list> [--entity <name>] [--model <fit|intent|composite>]"
---

# Lead Scoring Model

Score and prioritize leads based on fit and intent signals. Without a scoring model, salespeople chase the loudest leads, not the best ones — and the best leads go cold while noise gets attention.

## When to Use
- Prioritizing a list of inbound leads
- Deciding which outbound prospects to contact first
- Qualifying a lead before routing to a salesperson
- MQL (Marketing Qualified Lead) → SQL (Sales Qualified Lead) conversion criteria
- Monthly pipeline hygiene (remove unscored or low-scoring leads)

## Two-Dimensional Scoring

### Dimension 1: Fit Score
Does this prospect match the ICP? (See `icp-builder`)

Score 0-50 based on firmographic criteria:

| Criterion | Max Points | Scoring |
|---------|-----------|---------|
| Industry match | 15 | ICP industry: 15 | Adjacent: 8 | Other: 0 |
| Company size | 15 | Sweet spot: 15 | Edge of range: 8 | Outside: 0 |
| Geography | 10 | Target geo: 10 | Partial: 5 | Outside: 0 |
| Business model | 10 | Target model: 10 | Partial: 5 | Mismatch: 0 |

### Dimension 2: Intent Score
Is this prospect actively looking or showing buying signals?

Score 0-50 based on behavioral signals:

| Signal | Points | Notes |
|--------|--------|-------|
| Inbound inquiry (contacted us) | 25 | Strongest signal |
| Website pricing page visit | 20 | High intent |
| Demo request | 20 | High intent |
| Content download (relevant) | 10 | Mid intent |
| Email click | 8 | Mid intent |
| LinkedIn post about problem we solve | 10 | Good signal |
| Attended our webinar | 10 | Good signal |
| Trigger event (funding, new exec, etc.) | 15 | External signal |
| Referral from customer | 20 | Trust transfer |
| Open outbound (no response) | 5 | Low intent |

### Composite Score and Routing

| Total Score | Tier | Routing |
|------------|------|---------|
| 80-100 | A — Hot | Contact within 24 hours; senior rep |
| 60-79 | B — Warm | Contact within 3 days; standard rep |
| 40-59 | C — Cool | Add to nurture sequence; follow up in 2 weeks |
| 20-39 | D — Cold | Nurture only; no immediate call |
| < 20 | F — Disqualify | Remove from active pipeline; archive |

## BANT Qualification Check (Overlay on Scoring)

For leads above threshold (≥ 60), validate:
- **Budget** — Do they have funds available? (Approximate budget range known or inferable?)
- **Authority** — Is our contact the decision-maker or influencer?
- **Need** — Is there a clear, stated problem we solve?
- **Timeline** — Is there a window to buy? (No timeline = no urgency)

BANT all Yes → SQL (Sales Qualified Lead) → Move to pipeline

## Output Format

```markdown
# Lead Scoring — <Name / Company>
**Date:** <date> | **Entity:** <entity>

## Score Summary
**Fit Score:** <N>/50
**Intent Score:** <N>/50
**Total Score:** <N>/100
**Tier:** A / B / C / D / F
**Routing:** <action>

## Fit Breakdown

| Criterion | Score | Notes |
|---------|-------|-------|
| Industry | <N>/15 | <industry — ICP match or not> |
| Company size | <N>/15 | <size assessment> |
| Geography | <N>/10 | <location> |
| Business model | <N>/10 | <model type> |

## Intent Breakdown

| Signal | Score | Notes |
|--------|-------|-------|
| <Signal observed> | <N> | <context> |
| <Signal> | <N> | |

## BANT Assessment (if Tier A or B)

| Factor | Status | Notes |
|--------|--------|-------|
| Budget | Confirmed / Likely / Unknown / No | <evidence> |
| Authority | Decision-maker / Champion / Unknown | <contact title> |
| Need | Stated / Inferred / Unknown | <evidence> |
| Timeline | Known / Inferred / Unknown | <evidence> |

**SQL:** Yes / No / Pending qualification

## Recommended Next Action
<Specific action — type of outreach, urgency, rep assignment>
```

## Output Contract
- Every score component has documented evidence — no arbitrary scoring
- Routing recommendation always explicit and follows the tier framework
- BANT always applied before declaring SQL for high-scoring leads
- HITL required before any A-tier lead is escalated to executive-level engagement (Matt Mathison, Dr. Lewis)

## System Dependencies
- **Reads from:** Lead data, firmographic information, behavioral signals (provided or from CRM)
- **Writes to:** Lead scores to CRM (GoHighLevel) with HITL
- **HITL Required:** Sales manager reviews all A-tier leads before routing; Dr. Lewis approves any executive outreach

## Test Cases
1. **Golden path:** Inbound request from PE-backed healthcare company in AZ → Fit 42/50, Intent 35/50, Tier A, BANT assessment, immediate follow-up recommendation
2. **Edge case:** Lead with high fit but zero intent signals → Tier C, nurture recommendation with trigger-based follow-up plan
3. **Adversarial:** Request to score a lead as A to meet quota → refuses score inflation, provides honest assessment with documentation

## Audit Log
Lead scores retained in CRM by lead and date. Score changes tracked for model calibration.

## Deprecation
Retire when CRM (GoHighLevel) implements automated lead scoring with real-time intent signal integration.
