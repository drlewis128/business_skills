---
name: cs-team-capacity-planner
description: "Plan Customer Success team capacity and headcount. Use when the user says 'CS team capacity', 'CSM headcount', 'how many CSMs do we need', 'CS team sizing', 'CS headcount planning', 'CS team capacity model', or 'scale the CS team'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--current-arr <amount>] [--growth-rate <percent>] [--model <ratio|outcome>]"
---

# CS Team Capacity Planner

Plan Customer Success team headcount and capacity allocation. CS teams that are understaffed churn accounts; teams that are overstaffed waste margin. This skill builds the capacity model that justifies headcount and guides CS hiring plans.

## When to Use
- Annual planning (how many CSMs do we need next year?)
- ARR is growing and team is stretched thin
- NRR is declining — could be a coverage problem
- Portfolio company assessment — is their CS team sized appropriately?
- Hiring budget request for Matt Mathison or Finance

## CS Capacity Models

### Model 1: ARR-Based Ratio
Simplest model: divide total ARR by target ARR-per-CSM.
```
CSMs needed = Total ARR / Target ARR per CSM

Industry benchmarks:
SMB-heavy CS: $1M ARR per CSM
Mixed (SMB/Mid): $1.5M ARR per CSM
Enterprise/Complex: $800K-$1.2M ARR per CSM
Digital/Tech-touch: $3-5M ARR per CSM
```

### Model 2: Account-Based Ratio
Divide accounts by tier capacity:
```
CSMs needed = (Tier 1 accounts / 12) + (Tier 2 accounts / 30) + (Tier 3 accounts / 80)
(Numbers adjust based on product complexity and CSM capability)
```

### Model 3: Outcome-Based
Work backwards from desired outcomes:
- How many QBRs should we deliver per quarter? (Drives time per Tier 1 account)
- What renewal coverage rate do we need? (Time per renewal conversation)
- How many at-risk interventions do we need capacity for? (Time per at-risk play)
```
CSM capacity = (Hours available/year per CSM) / (Average hours per account per year)
Available hours: 1,800/year (assumes 2,000 total minus 200 for admin/training)
```

## Output Format

```markdown
# CS Team Capacity Plan — <Entity>
**Date:** <date> | **Planning horizon:** <next 12 months>

---

## Current State

| Metric | Current | Target |
|--------|---------|--------|
| Total ARR | $<N> | $<N> (in 12 months) |
| Total accounts | <N> | <N> |
| Tier 1 accounts | <N> | <N> |
| Tier 2 accounts | <N> | <N> |
| Tier 3 accounts | <N> | <N> |
| Current CSM headcount | <N> | |
| Current ARR per CSM | $<N> | |

---

## Capacity Requirement Analysis

### Method 1: ARR Ratio
**Target ARR per CSM:** $1.5M (mixed segment)
**Current ARR / Target:** $<N> / $1.5M = <N> CSMs needed (current)
**ARR in 12 months / Target:** $<N> / $1.5M = <N> CSMs needed (future)
**Gap:** Need <N> additional CSMs over 12 months

### Method 2: Account Ratio
| Tier | Accounts | Capacity per CSM | CSMs Needed |
|------|---------|----------------|------------|
| Tier 1 | <N> | 12 accounts | <N> |
| Tier 2 | <N> | 30 accounts | <N> |
| Tier 3 | <N> | 80 accounts (digital) | <N> |
| **Total** | | | **<N> CSMs** |

### Method 3: Outcome-Based
| Activity | Frequency | Time (hrs) | Total Hrs/Year |
|---------|---------|-----------|--------------|
| QBR delivery (Tier 1) | Quarterly × <N> accounts | 4 hrs per QBR | <N> hrs |
| Monthly check-in (Tier 1+2) | Monthly × <N> accounts | 1 hr per call | <N> hrs |
| Renewal management | 90-day cycle × <N> renewals | 8 hrs per renewal | <N> hrs |
| At-risk intervention | <N> accounts/year | 20 hrs per account | <N> hrs |
| Implementation/onboarding | <N> accounts/year | 15 hrs per account | <N> hrs |
| **Total hours required** | | | **<N> hrs** |
| **CSMs needed at 1,800 hrs** | | | **<N> CSMs** |

---

## Hiring Plan

| Role | When | Priority | Rationale |
|------|------|---------|---------|
| CSM (Tier 1 focus) | Q3 | Critical | Tier 1 coverage at ratio 1:18 — max is 1:15 |
| CSM (Mid-market) | Q4 | High | ARR growth hitting capacity ceiling |
| CS Operations | Q3 | Medium | Data and tooling can free up CSM time |

---

## Cost Model

| Role | Salary (loaded) | ARR Protection Potential | ROI |
|------|---------------|------------------------|-----|
| CSM hire | $<N> | $1.5M ARR (at ratio) | <N>× |

**Recommendation:** Hire <N> CSMs over the next <N> months. Each CSM protects approximately $<N>M in ARR at current NRR.
```

## Output Contract
- All three capacity methods always run and compared — no single-method dependency
- Cost model always included — headcount requests must show ROI to Finance
- Hiring timeline always specific — "hire when needed" is not a plan
- HITL required: Dr. Lewis and Finance approve headcount; Matt Mathison reviews for portfolio companies

## System Dependencies
- **Reads from:** ARR data, account count by tier, renewal calendar (provided)
- **Writes to:** Nothing (capacity model for HITL review and headcount planning)
- **HITL Required:** Dr. Lewis reviews capacity model; Finance approves headcount budget; Matt Mathison reviews for portfolio company planning

## Test Cases
1. **Golden path:** $4.5M ARR entity growing 30%/year, 3 CSMs → capacity model shows 1 CSM needed now (ratio-based), 2 more in 12 months at growth pace, cost model shows $135K loaded cost protects $1.5M ARR (11× ROI)
2. **Edge case:** Entity is losing ARR (declining NRR) → capacity model shows potential for right-sizing CSM team, but recommends diagnosing NRR root cause before reducing headcount (may need more CS, not less)
3. **Adversarial:** Request to cut CS headcount to reduce costs → runs full capacity model, shows ARR at risk from reduced coverage, provides break-even analysis comparing CSM cost to expected churn increase

## Audit Log
Capacity plans retained by entity and planning cycle. Actual headcount vs. plan tracked quarterly.

## Deprecation
Retire when CS platform integrates capacity planning with automated account load monitoring and headcount modeling tools.
