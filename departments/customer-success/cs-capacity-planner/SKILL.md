---
name: cs-capacity-planner
description: "Plan CS team capacity, headcount, and account load for MBL portfolio companies. Use when the user says 'CS capacity', 'CS team capacity', 'CSM capacity', 'account load', 'how many accounts per CSM', 'CSM account ratio', 'CS headcount', 'CS team sizing', 'how many CSMs do we need', 'CSM workload', 'CS team workload', 'do we need to hire a CSM', 'CSM coverage', 'account coverage model', 'CS staffing', 'CS team staffing plan', 'CSM staffing model', 'CS team growth plan', 'when to hire CS', 'CS hire trigger', 'ARR per CSM', or 'CS team scalability'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <assess|plan|model|hire>] [--timeframe <now|Q1|Q2|Q3|Q4|annual>]"
---

# CS Capacity Planner

Plan CS team capacity, headcount, and account load for MBL portfolio companies — ensuring that every CS rep has a manageable portfolio that allows for proactive relationship management without sacrificing quality, and identifying the right time to hire before the team hits a breaking point. An understaffed CS team doesn't fail loudly; it fails quietly through missed QBRs, ignored Yellow accounts, and reactive escalations that a properly staffed team would have prevented.

## When to Use
- Quarterly (assess current capacity against the portfolio)
- Annual planning (model capacity needs for the next 12-18 months)
- A new account is won (does it require a new hire?)
- A CSM gives notice (backfill timing and interim coverage plan)
- ARR per CSM crosses $3.5M (approaching burnout threshold — hire planning begins)

## CS Capacity Framework

```
CAPACITY MODEL:

  ARR per CSM benchmarks:
    Target: $1.5M - $3.5M ARR per CSM (across all account tiers)
    Optimal: $2M - $2.5M ARR per CSM (best for quality and rep health)
    Overstretched: >$3.5M ARR per CSM → hire trigger; QBR quality and health score frequency begin to degrade
    Underutilized: <$1.5M ARR per CSM → evaluate hiring timing; new pipeline must justify the cost
    
  ACCOUNT COMPLEXITY ADJUSTMENT:
    Not all ARR is equal for CS capacity purposes; adjust the raw ARR figure:
    
    High-complexity accounts (Allevio Priority A; Column6 annual agreements >$200K;
      HIVE landowners with legal complexity):
      Apply a 1.5× multiplier to the ARR for capacity purposes
      Example: A $200K Allevio account with clinical complexity and open enrollment approaching
        counts as $300K of capacity load
        
    Low-complexity accounts (Column6 IO accounts; Allevio small groups <50 members;
      HIVE individual landowners with clean title):
      Apply a 0.7× multiplier
      
  ACCOUNT COUNT per CSM:
    Typical CS portfolio size: 15-25 accounts per CSM
    Priority A accounts: Maximum 8-10 per CSM (each requires significant time investment)
    Priority B accounts: Can manage 15-20 per CSM
    Priority C/D accounts: Can manage 40-60 per CSM (digital CS; cs-digital-cs-builder)
    
  HIRING TRIGGER (when ANY of these are true):
    □ ARR per CSM (complexity-adjusted) exceeds $3.5M
    □ A CSM is consistently missing QBR deadlines for Priority B accounts
    □ Health score update frequency drops below weekly for Priority A accounts
    □ Response time to customer inquiries exceeds 24 hours on average
    □ A new client win is projected to push any CSM above 25 total accounts
    □ Dr. Lewis is personally covering for CS team capacity on a regular basis
    
  LEAD TIME FOR CS HIRING:
    From hire decision to full productivity: 90 days
    Recruitment: 4-6 weeks; Offer to start: 2-4 weeks; Onboarding to full load: 90 days
    Total: 5-6 months from "we need someone" to "they can carry a full book"
    Implication: If the team will be overstretched in 6 months, start recruiting now

ENTITY-SPECIFIC CAPACITY CONSIDERATIONS:

  ALLEVIO:
    High seasonality: Q3 (July-October) is peak load — open enrollment for Jan 1 plans;
      Q4 is off-peak for new onboardings; CSMs should have capacity for Q3 renewal conversations
    Clinical coordination: Allevio accounts that require clinical program support from the CS team
      consume 20-30% more CS time than straightforward benefits accounts
      
  COLUMN6:
    Campaign-based variability: A CSM with 8 active IOs running simultaneously is at higher
      capacity than a CSM with 8 accounts where 2 are active
    Track active campaigns per CSM (not just accounts)
    Over-stretched signal: More than 5 active campaigns per CSM simultaneously
    
  HIVE:
    Landowner density by geography: CSMs serving landowners in the same geographic area
      (same township) can cover more efficiently (shared context)
    Lease renewal intensity: In the 6 months before a lease renewal, a HIVE account requires 
      3× normal CS time — CSMs with multiple renewals in the same period need capacity relief

CAPACITY RISK MODEL:
  Current ARR: $[X]M
  Current CS team: [N] CSMs
  Current ARR per CSM: $[X]M
  Pipeline ARR (next 90 days): $[X]M
  Projected ARR per CSM at full close rate: $[X]M
  
  If projected ARR per CSM > $3.5M: hire authorized
  If projected ARR per CSM 3.0-3.5M: prepare hire plan; begin passive recruiting
  If projected ARR per CSM < 3.0M: monitor quarterly
```

## Output Format

```markdown
# CS Capacity Assessment — [Entity] | [Date]

---

## Current State

| CSM | Accounts | ARR | Complexity-adjusted ARR | Status |
|-----|---------|-----|------------------------|--------|
| [CSM 1] | [N] | $[X]K | $[X]K | ✅ Optimal / ⚠️ Approaching / ❌ Overstretched |
| [CSM 2] | | | | |
| **Total** | [N] | $[X]K | $[X]K | |

**ARR per CSM (avg):** $[X]K (target: $1.5M–$3.5M)
**Hire trigger met:** Yes / No

---

## 12-Month Capacity Projection

| Quarter | Projected ARR | CSMs | ARR per CSM | Action needed |
|---------|-------------|------|------------|--------------|
| Q[X] | $[X]M | [N] | $[X]M | None / Hire planning |
| Q[X+1] | $[X]M | [N] | $[X]M | |

---

## Hire Recommendation

**Hire needed:** Yes — by [Date] / No / Monitor
**If yes, role:** CSM / CS Lead / CS Ops
**Hiring lead time:** [N] months from decision to full productivity
**Start recruiting by:** [Date]
**Budget impact:** ~$[X]K fully loaded annual cost
```

## Output Contract
- Lead time is the key variable — Dr. Lewis reviews the capacity model at the quarterly CS Ops Review (cs-ops-review); the question is not "are we overstretched today?" but "will we be overstretched in 90 days?"; a CS team that starts recruiting when they are already overstretched will be overstretched for 6 months during the hiring and ramp period; capacity planning prevents that gap by making the hire decision before the pain is acute
- Quality degradation is the signal, not utilization — a CSM who is at 110% capacity but still doing excellent work is manageable short-term; a CSM who is at 90% capacity but missing QBR deadlines and logging stale health scores is already showing quality degradation at what looks like a reasonable utilization level; Dr. Lewis tracks QBR completion rates and health score frequency as leading indicators of capacity stress, not just the ARR number
- Account complexity matters more than account count — a CSM with 12 Allevio Priority A accounts with open enrollments in Q3 is more constrained than a CSM with 20 Column6 IO accounts; the complexity-adjusted ARR model captures this; Dr. Lewis does not evaluate CSM workload by raw account count
- HITL required: Dr. Lewis approves all CS hiring decisions; CEO approves all new CS headcount (title; salary band; start date); Matt Mathison is notified when CS headcount increases; any backfill hire triggered by a CSM departure requires CEO approval on the backfill timeline and coverage plan; Dr. Lewis reviews the capacity model quarterly

## System Dependencies
- **Reads from:** GoHighLevel CRM (account count per CSM; ACV per account; account tier); QuickBooks (total ARR by entity; historical growth rate); cs-health-score-tracker (health score update frequency — weekly? — proxy for CSM capacity); cs-qbr-preparer (QBR completion rates — declining rates indicate capacity stress); cs-okr-tracker (O4 capability OKR — headcount targets); pipeline data (sales team — what ARR is expected to close in the next 90 days?)
- **Writes to:** CS capacity assessment (SharePoint/CustomerSuccess/<Company>/Capacity/[YYYY-Q]_CapacityAssessment.pdf); hire recommendation memo (CEO — when hire trigger is met); annual capacity plan (SharePoint/Portfolio/<YYYY>_CSCapacityPlan.pdf — part of the annual operating plan); cs-ops-review (Section 4 team assessment — capacity is a key input)
- **HITL Required:** Dr. Lewis approves all CS hiring decisions; CEO approves new headcount; Matt Mathison notified of headcount increases; quarterly capacity review required; backfill hires require CEO approval on timeline and coverage plan

## Test Cases
1. **Golden path:** Q3 capacity assessment — Allevio; 2 CSMs; CSM1: 18 accounts, $1.8M ARR, 3 Priority A with Q3 open enrollment (1.5× adjustment: $2.1M adjusted); CSM2: 14 accounts, $1.4M ARR, 1 Priority A (adjusted $1.55M); pipeline: $650K expected to close in Q4; if closed, CSM1 takes $2.35M adjusted (acceptable); CSM2 takes $2.2M adjusted (acceptable) → No hire needed in Q3; monitor Q4; if Q4 pipeline closes at above forecast, begin passive recruiting → Dr. Lewis documents the model; CSM assignments for Q4 new accounts pre-planned; quarterly model reviewed at Q4 ops review
2. **Edge case:** A CSM gives 2 weeks' notice — their portfolio is $2.1M ARR (15 accounts, 5 Priority A) → Dr. Lewis: "2 weeks is not enough time to backfill a $2.1M portfolio. Here's the coverage plan: I'm personally taking 4 of the 5 Priority A accounts immediately (calling each customer today to introduce continuity); the 5th Priority A goes to CSM2 temporarily; the 10 Priority B accounts go to CSM2 with a reduced cadence for 90 days; Priority C and D accounts go to light-touch until we have someone. CEO briefed. We start recruiting today — not next week. Hire target: onboarded within 45 days; full portfolio transfer at Day 90." Coverage plan executed; all Priority A customers contacted same day; no churn during the transition
3. **Adversarial:** Sales closes a $280K Allevio Priority A account during Q3 peak and assumes the CS team will absorb it → Dr. Lewis: "I need to be direct with you: we don't have capacity to onboard a $280K Priority A account in Q3. CSM1 is at $2.1M adjusted ARR with 3 open enrollments running; CSM2 is at $2.2M adjusted. Adding a $420K adjusted load (this account has open enrollment complexity) to either rep will push them into the overstretched zone during our peak season. I'm not saying we shouldn't take the client — I'm saying we need to hire first or delay onboarding until January. CEO decision. I'll have the capacity model in your inbox within the hour." CEO reviews; decides to hire immediately; interim: Dr. Lewis personally manages the new account onboarding for 60 days while the new CSM hire is recruited

## Audit Log
All quarterly capacity assessments retained by entity and quarter. Hire recommendation records retained (trigger date; hire approved; actual start date; time-to-full-productivity). Coverage plan records for departing CSMs retained. CEO hiring approval records retained.

## Deprecation
Retire when each portfolio company has a CS operations function that manages capacity modeling as a standing process — with Dr. Lewis reviewing the annual capacity plan and the CEO approving all CS headcount changes.
