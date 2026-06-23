---
name: revops-quota-design-model
description: "Design and manage sales quotas for MBL Partners portfolio entities. Use when the user says 'quota', 'sales quota', 'quota design', 'quota model', 'quota setting', 'rep quota', 'quota plan', 'quota attainment', 'quota allocation', 'quota fairness', 'is the quota realistic', 'set quota', 'annual quota', 'quarterly quota', 'revenue target', 'quota methodology', 'top-down quota', 'bottom-up quota', 'capacity planning quota', 'ramp quota', 'accelerator', 'commission accelerator', 'quota vs. target', 'team quota', 'should we hit our number', 'attainment rate', 'quota distribution', 'over-attainment', 'quota review', or 'is the quota achievable'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--rep <name>] [--period <annual|quarterly>] [--action <design|review|model>]"
---

# RevOps Quota Design Model

Design and validate sales quotas for MBL Partners portfolio entities — building quotas that are aggressive but achievable, grounded in pipeline capacity and market size, and structured to drive the right behavior without over-reliance on heroic individual performance. Quota that is too low destroys ambition; quota that is too high destroys morale and forecast credibility.

## When to Use
- Annual quota setting process (Q4 for the following year)
- Adding a new rep and assigning their ramp quota
- Entity CEO questioning whether current quota is realistic
- Designing accelerator structure for over-attainment

## Quota Design Framework

```
QUOTA DESIGN METHODOLOGY:

  STEP 1 — START WITH ENTITY REVENUE TARGET:
    Entity annual revenue target → set by entity CEO + Dr. Lewis in OKR process
    Bottom-up check: does the entity have enough rep capacity and pipeline to achieve the target?
    
  STEP 2 — BOTTOM-UP CAPACITY MODEL:
    Reps available × rep quota = total team quota
    Team quota should be 110-120% of revenue target (quota buffer accounts for attrition and ramp time)
    If team quota < 110% of target → hire or increase individual quotas (with market validation)
    If team quota > 150% of target → quotas may be too low (leaving upside on the table)
    
  STEP 3 — INDIVIDUAL QUOTA:
    Fully ramped AE quota = based on:
      (a) Market size: enough Tier 2 accounts in territory to close quota at realistic close rate?
      (b) Average deal size (ACV): how many deals at $X ACV to hit $Y quota?
      (c) Pipeline needed: quota ÷ close rate = pipeline required; is territory large enough to generate it?
    
  STEP 4 — RAMP QUOTA (NEW REPS):
    Month 1-2: 0% quota (learning and onboarding; no closed quota expected)
    Month 3: 25% of full quota (first deals closing from Month 1 pipeline building)
    Month 4: 50% of full quota
    Month 5: 75% of full quota
    Month 6+: 100% (fully ramped)
    
  STEP 5 — ACCELERATOR STRUCTURE:
    At 100% attainment: standard commission rate (see revops-commission-admin)
    At 110-125% attainment: 1.25× accelerator on incremental revenue above 100%
    At >125% attainment: 1.5× accelerator on incremental above 125%
    Purpose: reward over-performance financially; create pull effect for top reps
    
  ENTITY-SPECIFIC QUOTA CONTEXT:
    Allevio:
      Annual quota typically set as: new employer PMPM revenue / year
      Average ACV: $X per employer / year (based on 25-100 EE employer; PMPM × average enrollment)
      Close rate from Stage 4: ~35-40% (set quota assumptions based on actual)
      Ramp: 6 months to full productivity for a new AE unfamiliar with benefits/MSO space
    Column6:
      Quota set as: total IO value closed / year (not just new logos; includes renewals)
      Average IO: $X - $Y per agency per quarter (varies widely by agency size)
      Close rate from Stage 4 (qualified): ~45-55% (shorter cycle; more transactional)
      Ramp: 4 months (CTV market knowledge accelerates ramp vs. benefits)
      
  QUOTA GOVERNANCE:
    Quotas set annually; not adjusted mid-year except for M&A, product line change, or market failure
    If a rep consistently attains <50% quota for 2 consecutive quarters → entity CEO performance conversation
    If a rep consistently attains >140% quota for 2 consecutive quarters → quota may be too low; review
    Quota changes → entity CEO + Dr. Lewis must approve (not entity sales lead or rep)
```

## Output Format

```markdown
# Quota Design Model — [Entity] — [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Entity CEO | **Date:**

---

## Revenue Target Recap
Entity revenue target [Year]: $X

---

## Team Quota Model

| Rep | Type | Full quota | Ramp period | Effective quota (Year) |
|-----|------|-----------|------------|----------------------|
| [Name] | Ramped AE | $X/yr | — | $X |
| [Name] | New hire (Q1) | $X/yr | 6 months | $X (blended) |
| **Team total** | | | | $X |

Team quota / Revenue target ratio: [X]× (target: 1.10-1.20×)

---

## Individual Quota Validation

| Rep | Territory accounts (Tier 2) | Pipeline needed | Deals needed at avg ACV | Viable? |
|-----|---------------------------|----------------|------------------------|---------|
| [Name] | [N] accounts | $X | [N] deals | ✅/⚠️ |

---

## Accelerator Structure

| Attainment | Accelerator | Example: $X quota at 115% |
|-----------|------------|--------------------------|
| 0-99% | Standard commission (see plan) | |
| 100-124% | 1.25× on incremental | |
| 125%+ | 1.50× on incremental | |
```

## Output Contract
- Quota must be grounded in market math, not aspiration alone — setting Allevio quota at $1.2M new ARR for a single AE covering Phoenix metro without verifying that (a) there are enough Tier 2 employers in the territory; (b) the pipeline build rate supports the close rate assumption; and (c) the rep has enough selling time after onboarding tasks is not quota design — it is wishful thinking that will produce a demoralized rep and a bad forecast; Dr. Lewis validates every quota against the bottom-up capacity model before entity CEO sign-off; a quota that fails the capacity test gets adjusted or addressed through hiring
- Ramp quota is not optional for new hires — a new Allevio AE with zero ramp protection who is at 100% quota from Day 1 will spend the first 3 months in panic mode rather than building pipeline correctly; Dr. Lewis enforces the ramp schedule; the 6-month ramp for Allevio reflects the real learning curve for the MSO/benefits space, not a preference for being easy on new hires; the ramp is designed to produce a fully productive rep at Month 6 — a rep who skips ramp and closes nothing in Month 1-3 and then closes frantically in Month 4-6 has not been helped by removing the ramp; they've been set up to learn the wrong behaviors
- HITL required: annual quota design → entity CEO + Dr. Lewis must approve; mid-year quota adjustment → entity CEO + Dr. Lewis (rare; restricted to M&A or product line change); ramp structure for new hire → entity CEO + Dr. Lewis; accelerator structure → Dr. Lewis reviews (commission cost implication); consistent under-attainment (<50% for 2 quarters) → entity CEO performance conversation with Dr. Lewis aware

## System Dependencies
- **Reads from:** revops-territory-planner (territory capacity and account counts); revops-commission-admin (commission rate plan — quota ties to commission structure); revops-forecast-builder (historical close rates — basis for quota assumptions); fpa-annual-plan-builder (entity revenue target — source for top-down quota)
- **Writes to:** Quota plan (SharePoint → [Entity] → Sales → Quota → [Year]); commission plan document (feeds revops-commission-admin); GoHighLevel (rep quota targets for attainment tracking); entity CEO annual sales plan
- **HITL Required:** Annual quota → entity CEO + Dr. Lewis; mid-year adjustment → entity CEO + Dr. Lewis; ramp for new hire → entity CEO + Dr. Lewis; accelerator structure → Dr. Lewis; under-attainment (2 qtrs <50%) → entity CEO

## Test Cases
1. **Golden path:** Allevio quota design for Year 2. Entity revenue target: $420K new employer ARR. One ramped AE (full quota); one new AE starting Q2 (ramp schedule). Ramped AE quota: $280K (validated: 280K / $28K ACV = 10 deals; at 37% close rate = 27 Stage 4 deals needed; Phoenix Tier 2 accounts = 1,200; achievable). New AE ramp quota: Q2 0% / Q3 50% / Q4 75% = effective contribution $70K. Team total quota: $350K (1.17× entity target of $300K — within 1.1-1.2× target range; note: $420K revenue target includes base renewal ARR of $120K + new ARR $300K). Quota approved by Allevio CEO + Dr. Lewis December 15.
2. **Edge case:** Column6 entity CEO wants to increase AE quota by 40% mid-year because Q1 was stronger than expected → Dr. Lewis: "Mid-year quota changes are generally a bad idea and I'd advise against this. Here's why: if we raise the quota mid-year, we change the rules after the rep has already been performing to the original plan. That's a trust issue. If they hit 120% of original quota, they've earned the accelerator — changing the denominator retroactively destroys motivation. What I'd recommend: document the Q1 overperformance; have a transparent conversation with the rep about what we expect in H2; if they've proven they can attain at a higher level, set H2 quota at a stretch level that both parties agree to voluntarily; and use this Q1 data to set a higher annual quota for next year. The right time to change quota is December, not June."
3. **Adversarial:** Rep argues their quota is unfair compared to a peer's quota because the peer has a smaller geographic territory → Dr. Lewis: "Quota fairness isn't about territory size — it's about territory potential. A smaller geographic territory with 800 Tier 2 employers and a rep who covers all of them is not a 'smaller' territory than a large geography with 200 accounts. I'll pull the account count and pipeline data for both territories and we'll look at: (1) addressable account count by tier; (2) current coverage ratio; (3) actual ACV of closed deals in each territory. If the data shows a genuine disparity in territory potential, I'll bring a rebalancing proposal to the entity CEO. If the data shows the territories are comparably sized in terms of opportunity, I'll share that analysis with the rep and explain the methodology."

## Audit Log
Annual quota plans retained permanently. Quota approval records (entity CEO + Dr. Lewis). Mid-year adjustment records (restricted). Ramp schedule compliance records. Accelerator payment records. Attainment tracking (monthly; GoHighLevel).

## Deprecation
Quota methodology reviewed annually. ACV assumptions updated when entity pricing changes. Close rate assumptions updated when market or sales process changes significantly. Ramp period reviewed when entity product complexity changes. Accelerator structure reviewed annually.
