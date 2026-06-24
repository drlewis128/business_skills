---
name: sales-quota-builder
description: "Set and manage sales quotas for MBL portfolio company sales teams. Use when the user says 'quota', 'sales quota', 'quota setting', 'quota design', 'quota model', 'annual quota', 'monthly quota', 'quarterly quota', 'quota assignment', 'rep quota', 'AE quota', 'quota attainment', 'quota performance', 'against quota', 'hitting quota', 'missing quota', 'below quota', 'above quota', 'quota review', 'quota update', 'quota challenge', 'quota appeal', 'how much should the quota be', 'what is the right quota', 'revenue target', 'sales target', 'ACV target', 'IO target', 'booking target', 'rep target', 'ramp quota', 'ramp period', 'new hire quota', 'ramping AE', 'quota attainment rate', 'plan attainment', 'OTE', 'on-target earnings', 'quota to OTE ratio', 'sales capacity model', 'capacity planning', 'quota capacity', 'Allevio quota', 'Column6 quota', 'HIVE quota', or 'revenue plan'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--period <annual|quarterly|monthly>] [--action <set|review|attainment|ramp>]"
---

# Sales Quota Builder

Set and manage sales quotas for MBL portfolio company sales teams — building entity-specific quota models that are achievable, motivating, and aligned with company revenue targets. A quota that can't be hit destroys morale; a quota that's too easy destroys discipline. The target is 60-70% of reps at or above quota with the top 20% significantly exceeding — that distribution signals the quota is calibrated correctly.

## When to Use
- Setting annual quotas for each entity's sales team
- Setting a ramp quota for a new AE hire
- Reviewing quota attainment at quarterly business review
- Recalibrating quota when market conditions change materially

## Quota Design Framework

```
QUOTA DESIGN PRINCIPLES:
  Revenue-first: quota is derived from the company's revenue plan, not from reps' comfort
  Capacity-based: quota must be achievable with the rep's territory and ICP universe
  OTE alignment: quota × commission rate = a meaningful OTE (on-target earnings) for the market
  Ramp fairness: new reps are not held to full quota until they're fully ramped
  Transparency: every rep knows their quota, how it was set, and how attainment is calculated
  
QUOTA CALCULATION METHOD:
  Step 1 — Revenue plan:
    Entity CEO provides annual revenue target for the entity
    Bottoms-up sanity check: can the reps collectively hit that target given territory + win rate?
    
  Step 2 — Capacity model:
    Capacity per AE = territory potential × expected win rate × average ACV
    Example (Allevio): 80 ICP Tier 1+2 accounts × 15% win rate × $90K ACV = $1.08M rep capacity
    Aggregate rep capacity must exceed revenue target by 20% (coverage for attrition + misses)
    
  Step 3 — Quota per rep:
    Quota = revenue target ÷ rep headcount (adjusted for ramp on new hires)
    Quota must be ≤85% of rep's territory capacity (leaves room for win rate variation)
    If quota >85% of capacity: territory too small or win rate assumption too optimistic
    
  Step 4 — OTE validation:
    Quota × commission rate = on-target commission
    On-target commission + base salary = OTE
    OTE must be competitive for the role and market; entity CEO validates against comp benchmarks
    
ALLEVIO QUOTA MODEL:
  Product: employer-sponsored primary care MSO
  Quota unit: ACV (Annual Contract Value) in dollars
  Average ACV: $75K-$120K (varies by employer size and PMPM rate)
  Quota period: annual; tracked monthly (1/12 of annual each month)
  Pipeline requirement: maintain 3× quota coverage at all times
  Ramp period: 90 days (Month 1: 25%; Month 2: 50%; Month 3: 75%; Month 4+: 100%)
  Quota attainment target: 60-70% of reps at or above quota annually
  
COLUMN6 QUOTA MODEL:
  Product: CTV/Mobile/Gaming IO (Insertion Order)
  Quota unit: IO bookings in dollars (recognized at campaign delivery milestones)
  Average IO: $50K-$250K (varies by agency size)
  Quota period: quarterly (IO business is more cyclical; Q4 highest; Q1 lowest)
  Adjustment: Q1 quota 80% of Q2-Q3; Q4 quota 120% of Q2-Q3
  Pipeline requirement: maintain 3× quota coverage at all times
  Ramp period: 60 days (faster than Allevio; IOs close faster)
  Repeat IO rate metric runs alongside quota (≥60% repeat; tracked quarterly)
  
HIVE QUOTA MODEL:
  HIVE acquisition is not a standard rep quota model
  Matt Mathison sets the annual acquisition target ($ of acquisition ACV)
  Dr. Lewis manages deal sourcing against that target
  No individual rep quota for HIVE — entity-level acquisition target only
  
RAMP QUOTA (new AE):
  Month 1: 25% of full quota (learning; pipeline building; no close expected)
  Month 2: 50% of full quota (first deals possible; pipeline maturing)
  Month 3: 75% of full quota (ramp-up; first close should occur)
  Month 4+: 100% of full quota
  If rep has not closed any deal by end of Month 3: performance conversation with entity CEO + Dr. Lewis
  Ramp period shortens if the rep was previously in the same role at a competitor
  
QUOTA ATTAINMENT TRACKING:
  Monthly: entity CEO reviews attainment vs. quota for all reps
  Quarterly: formal QBR with attainment by rep; trending up or down
  Below 70% attainment at Q2: performance improvement discussion initiated
  Below 50% attainment at Q3: formal PIP consideration; entity CEO + Dr. Lewis
  Above 100% attainment: commissions calculate at accelerated rate (confirm with comp plan)
  
QUOTA RECALIBRATION:
  Triggers: market contraction >15%; ICP shrinks materially; competitor takes major market share
  Process: entity CEO + Dr. Lewis review; Matt Mathison informed; quota adjusted mid-year only if conditions warrant
  Not a trigger: one rep having a bad quarter; seasonal softness within expected range
  Recalibration requires written justification and Matt Mathison sign-off before rep communication
```

## Output Format

```markdown
# Quota Plan — [Entity] | [Rep Name / Team] | [Year / Quarter]
**Entity CEO approved:** [Date] | **Dr. Lewis reviewed:** [Date]

---

## Revenue Target Context
| Item | Value |
|------|-------|
| Entity revenue target | $[X] |
| Rep headcount (full) | [N] |
| Aggregate rep capacity | $[X] |
| Coverage ratio (capacity ÷ target) | [X]× (target ≥1.2×) |

---

## Quota Assignment

| Rep | Territory ACV potential | Quota | Ramp status | Pipeline required (3×) |
|-----|------------------------|-------|-------------|------------------------|
| [Name] | $[X] | $[X] | [Full / Month N of ramp] | $[X] |

---

## Attainment Summary (period)
| Rep | Quota | Booked ACV | Attainment % | Status |
|-----|-------|-----------|--------------|--------|
| [Name] | $[X] | $[X] | [X%] | ✅ On track / ⚠️ At risk / ❌ Below |

---

## Action Items
[Any performance concerns, ramp milestones, or recalibration recommendations]
```

## Output Contract
- Quota must have coverage capacity support before it's assigned — a rep cannot hit a quota if their territory doesn't contain enough ICP accounts at a realistic win rate to generate that ACV; Dr. Lewis runs the capacity check (territory potential × win rate × avg ACV) before any quota is approved; if the capacity check shows the quota requires a >85% win rate, the quota is unrealistic and the options are: increase territory; reduce quota; or hire more reps; entity CEO makes the call; Dr. Lewis provides the math; the quota number is never set by "what we need from a P&L perspective" without verifying it's achievable
- The ramp period is a commitment to the new rep — a new AE who is held to 100% quota in Month 1 is being set up to fail and knows it; the ramp schedule (25/50/75/100%) is published to the rep on their first day; it is honored regardless of whether the rep is "ahead of schedule"; ramp also affects commission — reps on ramp pay commission on their actual attainment against the ramped quota (not the full quota); entity CEO confirms the ramp commission calculation with HR/finance before the first payroll period of the hire
- HITL required: quota setting → entity CEO approves; Dr. Lewis reviews capacity model; Matt Mathison informed of entity revenue targets; below 50% attainment at Q3 → entity CEO + Dr. Lewis performance decision; quota recalibration mid-year → Matt Mathison sign-off before communication to reps; new hire ramp schedule → entity CEO confirms with finance before first payroll; OTE validation → entity CEO confirms against comp market benchmarks; commission accelerators → entity CEO + finance confirm before quota is published

## System Dependencies
- **Reads from:** Entity revenue targets (entity CEO; Matt Mathison annual planning); territory data (sales-territory-planner — territory ACV potential by rep); win rate data (sales-pipeline-review — historical close rates by entity); average ACV data (GHL — closed deals by entity); headcount data (entity CEO — current and planned reps); compensation benchmarks (entity CEO / HR); GHL attainment data (monthly booked ACV vs. quota)
- **Writes to:** Quota documentation (SharePoint → [Entity] → Sales → Quotas → [Year] → [Rep]); GHL (quota field per rep; attainment tracking); entity CEO attainment reporting (monthly); QBR attainment report (quarterly); performance documentation (below-attainment records; entity CEO + Dr. Lewis); Matt Mathison revenue summary (quarterly)
- **HITL Required:** Quota setting → entity CEO approves; Matt Mathison revenue target informed; below 50% Q3 → entity CEO + Dr. Lewis; recalibration → Matt Mathison sign-off; ramp commission → entity CEO + finance; OTE validation → entity CEO; accelerator triggers → entity CEO + finance confirm

## Test Cases
1. **Golden path:** Allevio annual quota setting. Entity revenue target: $1.2M ACV (new employer enrollments). 2 full-time AEs. Capacity check: AE 1 territory — 80 ICP accounts; 18% win rate; $88K avg ACV → $1.27M capacity. AE 2 territory — 75 ICP accounts; 18% win rate; $88K avg ACV → $1.19M capacity. Aggregate capacity: $2.46M → coverage ratio 2.05× (above 1.2× minimum). Quota per AE: $600K ($1.2M ÷ 2). Capacity check: AE 1 $600K ÷ $1.27M = 47% capacity required (below 85% ✅). AE 2 $600K ÷ $1.19M = 50% capacity required (below 85% ✅). OTE: $600K × 8% commission = $48K on-target commission + $65K base = $113K OTE. Entity CEO validates against market. Approved. Quota documented in GHL and SharePoint.
2. **Edge case:** Q2 attainment review: AE 1 at 45% attainment; AE 2 at 90% attainment → Dr. Lewis: "AE 1 at 45% at mid-year is a concern. Before a PIP discussion, I need to understand: (1) Is AE 1's pipeline at 3× quota? If not, the funnel is broken — prospecting issue, not a close rate issue. (2) Has AE 1 had discovery calls with appropriate ICP accounts? (3) Are they losing deals at proposal stage (competitive) or losing before proposal (qualification issue)? Dr. Lewis reviews AE 1's GHL pipeline with entity CEO. If pipeline is healthy (3×) but close rate is poor: coaching on proposal/close. If pipeline is thin: territory coverage and prospecting. Decision to initiate formal performance review requires entity CEO + Dr. Lewis alignment before any communication to AE 1."
3. **Adversarial:** Entity CEO says "just set the quota at $1.5M per rep — we need the revenue and reps should stretch" without running a capacity check → Dr. Lewis: "I need to run the capacity check before we set $1.5M. AE 1's territory has 80 ICP accounts at 18% win rate and $88K ACV — that's $1.27M capacity. $1.5M quota requires a 64% win rate on AE 1's territory at current ACV — that's not realistic. Options: (1) Expand AE 1's territory to support $1.5M (adds 30-40 Tier 1 accounts); (2) Keep $1.2M quota and hire a third AE; (3) Set $1.5M knowing it's a stretch target and accept that attainment will be 70-80% as a planning assumption. What's the right call? I'll model all three. Matt Mathison should see this before we lock the quota."

## Audit Log
Quota setting records (all reps; annual quota; capacity model; entity CEO approval; SharePoint). Attainment records (monthly; by rep; GHL). QBR attainment reports (quarterly; entity CEO). Performance records (below-attainment reviews; PIP discussions). Recalibration records (trigger; justification; Matt Mathison sign-off). Ramp commission confirmation records (finance; entity CEO). OTE validation records.

## Deprecation
Quota model reviewed annually (aligned to entity revenue planning cycle). Win rate assumptions reviewed quarterly against GHL actuals. Average ACV assumptions reviewed when product pricing changes. OTE benchmarks reviewed annually against comp market data. Ramp schedule reviewed when sales cycle length changes materially.
