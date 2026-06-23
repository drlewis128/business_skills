---
name: revops-territory-planner
description: "Design and manage sales territories for MBL Partners portfolio entities. Use when the user says 'territory', 'territory plan', 'territory design', 'territory management', 'sales territory', 'coverage model', 'rep coverage', 'assign accounts', 'account assignment', 'territory split', 'territory carve', 'named account model', 'geographic territory', 'territory planning', 'territory review', 'who owns which accounts', 'how do we divide accounts', 'territory allocation', 'territory fairness', 'territory balance', 'white space', 'territory capacity', 'rep capacity', 'territory quota', 'territory productivity', 'accounts by rep', 'territory overlap', or 'territory conflict'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--model <geographic|named-account|vertical>] [--action <design|review|assign|rebalance>]"
---

# RevOps Territory Planner

Design and manage sales territory models for MBL Partners portfolio entities — creating fair, capacity-matched coverage models that maximize pipeline coverage of the addressable market without territory conflicts or orphaned accounts. Territory design is a strategic lever: the wrong territory model leaves money uncovered or overloads reps at the expense of pipeline quality.

## When to Use
- New entity hiring a first or additional sales rep
- Annual territory review (Q4, to set for the following year)
- Territory conflict between reps
- Entity CEO asking about whitespace or uncovered market

## Territory Planning Framework

```
TERRITORY MODEL BY ENTITY:

  ALLEVIO (AZ-based employer B2B):
    Model: Geographic + Employer Size
    Primary geography: Arizona (Maricopa, Pima, Yavapai, Pinal counties — core markets)
    Secondary geography: Flagstaff/NAU corridor; Tucson metro
    Account segmentation:
      Tier 1: Employers ≥100 employees (high ACV; direct CEO attention)
      Tier 2: Employers 25-99 employees (primary rep coverage)
      Tier 3: Employers <25 employees (broker channel only; no direct rep time)
    Rep capacity model (B2B SaaS benchmark):
      Full-cycle AE: ≤40 active deals in pipeline (Stages 3-7) at any time
      SDR/BDR: ≤200 Tier 2 prospects in sequence at any time
    Territory ownership: reps own accounts they bring in; inbound leads assigned by territory zip code
    Conflict resolution: Dr. Lewis arbitrates; entity CEO confirms
    
  COLUMN6 (national agency relationships):
    Model: Named Account (not geographic — agencies are national)
    Named accounts: agencies with ≥$1M annual CTV/programmatic spend potential
    Coverage: 1 AE per ≤30 named agency accounts
    Tier 1 agencies: >$1M CTV spend potential → AE + entity CEO engagement
    Tier 2 agencies: $250K-$1M → standard AE coverage
    Tier 3 agencies: <$250K → marketing-led nurture only; no direct AE time
    Inbound agencies: assigned by AE availability and geographic fit (AE relationship + time zone)
    
  HIVE (Uinta Basin mineral rights):
    Model: Parcel/Landowner (not geographic in the traditional sense — driven by acreage map)
    Territory: defined by geological acreage blocks in DOGM records
    Assignment: HIVE CEO manages landowner relationships directly; no separate rep structure
    
TERRITORY CAPACITY PLANNING:
  When to add a rep:
    Existing rep pipeline utilization consistently >85% (>34 of 40 capacity deals active)
    Coverage ratio consistently >4× (more pipeline than reps can properly manage)
    Response time to Stage 2 leads slipping past 48 hours → capacity constraint
    Whitespace analysis shows ≥20% of Tier 2 ICP not being covered
  
TERRITORY REVIEW CADENCE:
  Annual: Q4 → entity CEO + Dr. Lewis design next year's territory model + quota allocation
  Quarterly: coverage ratio review — are all Tier 2 accounts being touched?
  Rep departure: immediate territory reassignment within 7 days; entity CEO + Dr. Lewis decide
```

## Output Format

```markdown
# Territory Plan — [Entity] — [Year]
**Model:** [Geographic / Named Account] | **Approved by:** Entity CEO + Dr. Lewis

---

## Rep Coverage Model

| Rep | Territory / Account Tier | Capacity (max deals) | Current pipeline deals | Coverage % |
|-----|--------------------------|---------------------|----------------------|-----------|
| [Rep name] | [Territory / Accounts] | 40 | [N] | [X]% |

---

## Whitespace Analysis

| Tier | Total addressable | Currently covered | Gap | Priority |
|------|-----------------|-----------------|-----|---------|
| Tier 1 (≥100 EE) | [N] | [N] | [N] | [High/Med] |
| Tier 2 (25-99 EE) | [N] | [N] | [N] | |

---

## Territory Conflicts (if any)
[List conflict / resolution / owner]

---

## Capacity Recommendation
[Add rep? / Current coverage sufficient / Broker channel for Tier 3?]
```

## Output Contract
- Territory design is capacity planning, not geography coloring — defining "Phoenix metro" as one rep's territory without calculating how many Tier 2 employers (25-99 employees) exist in that geography and whether one rep can cover them is not territory planning; it is geography naming; Dr. Lewis requires every territory plan to include an addressable account count (Tier 1 and Tier 2) and a capacity utilization estimate so the entity CEO knows whether the territory is under-resourced, over-resourced, or appropriately staffed; a territory that contains 800 Tier 2 employers and one full-cycle AE is a territory that will never be covered and will produce a disappointing pipeline
- Named account territories require explicit ownership lists in GoHighLevel — for Column6, every named agency account must be tagged with the owning AE in GoHighLevel; when a new agency reaches out and there is no named account ownership, it gets assigned within 24 hours (entity CEO + Dr. Lewis decide); an unowned Tier 1 agency account is a $1M opportunity that belongs to someone and will be worked by someone — that someone needs to be decided before the first call, not after
- HITL required: annual territory design → entity CEO + Dr. Lewis; new rep territory allocation → entity CEO + Dr. Lewis; rep departure territory reassignment → entity CEO + Dr. Lewis within 7 days; territory conflict escalation → Dr. Lewis arbitrates; GoHighLevel account ownership changes → entity sales lead approves

## System Dependencies
- **Reads from:** GoHighLevel (account assignments; deal pipeline per rep; account tier tags); revops-pipeline-manager (pipeline utilization per rep); revops-quota-design-model (quota allocation ties to territory capacity); mktg-demand-generation-manager (ICP definition and market size by segment)
- **Writes to:** Territory plan (SharePoint → [Entity] → Sales → Territory → [Year]); GoHighLevel (account ownership tags; territory assignment); entity CEO territory model document; Dr. Lewis portfolio coverage summary
- **HITL Required:** Annual design → entity CEO + Dr. Lewis; new rep allocation → entity CEO + Dr. Lewis; departure reassignment → entity CEO + Dr. Lewis; conflict → Dr. Lewis; GHL ownership changes → entity sales lead

## Test Cases
1. **Golden path:** Allevio annual territory review (Q4). One AE currently covering all Phoenix metro. Whitespace analysis: Maricopa County Tier 2 employers (25-99 EE): 1,200 total; AE currently active with 38 deals (95% capacity — above 85% threshold for hiring trigger). Pima County (Tucson): 340 Tier 2 employers; zero coverage. Recommendation: (1) Hire a second AE to cover Tucson/Pima County in Q1; (2) carve Phoenix metro by zip code with clear ownership boundary in GHL; (3) Tier 3 employers (<25 EE) → broker referral channel exclusively; no AE time. Entity CEO approves. Territory plan documented and GHL account tags updated before new hire start date.
2. **Edge case:** Two Column6 AEs both logged contact with the same agency on the same day, creating a territory conflict → Dr. Lewis: "This is a priority-1 conflict — two AEs calling the same agency creates a poor first impression and internal confusion. First: I'm assigning the agency to [AE1] based on first contact timestamp in GoHighLevel. Second: I'm establishing a 'first logged contact = ownership' rule as the tiebreaker for unassigned named accounts, effective immediately. Third: all Column6 Tier 1 and Tier 2 accounts must be assigned in GoHighLevel by end of this week — I'm working with the entity CEO to assign any currently unowned Tier 1 accounts within 24 hours. Unowned accounts create conflict by design."
3. **Adversarial:** AE argues their territory is too large and they can't cover it effectively, but the pipeline data shows they're only at 60% capacity (24/40 deals active) → Dr. Lewis: "I hear the concern, but the data tells a different story. At 24 active deals, you're at 60% capacity — below the threshold where we'd look at adding coverage. A rep who feels overwhelmed at 60% pipeline utilization is either managing deals inefficiently or spending time on activities that aren't moving deals forward. Let's dig into the GoHighLevel data: how many of those 24 deals have had activity in the last 7 days? That conversation should happen with the entity CEO before we redesign the territory based on a capacity feeling rather than capacity data."

## Audit Log
Annual territory plans retained permanently. Territory conflict resolution records. GoHighLevel account ownership change records. Capacity utilization tracking (monthly). New rep territory allocation records. Rep departure reassignment records.

## Deprecation
Territory model reviewed annually (Q4). Capacity benchmarks reviewed when entity sales cycle or ACV changes. Named account tier thresholds reviewed when Column6 market segment changes. Allevio ICP geography reviewed if Allevio expands beyond Arizona.
