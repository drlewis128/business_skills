---
name: sales-quota-setter
description: "Set and model sales quotas for MBL portfolio companies. Use when the user says 'quota', 'sales quota', 'set quotas', 'quota setting', 'sales targets', 'revenue targets', 'rep quota', 'quota model', 'how much should we expect to sell', 'quota attainment', 'quota planning', 'sales goal', 'sales goal setting', 'annual sales target', 'quarterly target', 'rep target', 'team quota', 'territory quota', 'quota methodology', 'quota too high', 'quota too low', 'quota fairness', or 'sales plan'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--rep <name>] [--period <annual|quarterly>] [--action <set|model|review>]"
---

# Quota Setter

Set and model sales quotas for MBL portfolio companies — translating the annual revenue plan into rep-level targets that are credible, achievable, and motivating. A quota that is too high destroys motivation before the year starts; a quota that is too low doesn't generate the revenue the business needs; a quota set without logic produces neither trust nor accountability. Dr. Lewis sets quotas from the top down (revenue plan) and the bottom up (territory capacity) and reconciles the difference.

## When to Use
- Annual sales planning (October-November for the following year)
- Adding a new sales rep (what is their ramp quota?)
- The revenue plan changes and quotas need to be recalibrated
- A rep challenges their quota as unfair

## Quota Setting Framework

```
QUOTA SETTING METHODOLOGY — TWO APPROACHES RECONCILED:

  TOP-DOWN APPROACH (from the revenue plan):
    Step 1: Pull the annual revenue target from the operating plan (fpa-annual-budget-builder)
      Allevio example: $800K new employer group bookings in 2027
    Step 2: Determine the number of selling reps (including ramp-up for new hires)
    Step 3: Add a quota cushion (total rep quotas should exceed the revenue target by 10-20%)
      Reason: Not every rep will hit 100%; the cushion ensures the company hits its target
      if average attainment is 80-90%
    Step 4: Allocate between reps based on their territory size and experience
    
  BOTTOM-UP APPROACH (from territory capacity):
    Step 1: Define each rep's territory (accounts; geography; industry vertical)
    Step 2: Estimate the number of qualified leads available in the territory
    Step 3: Apply historical win rate and average deal size to estimate territory revenue potential
    Step 4: Set the quota at 60-70% of the territory's estimated potential
      (Reps should be able to hit quota at 60-70% of full territory penetration in year 1)
      
  RECONCILIATION:
    If top-down quota > bottom-up capacity: Either (a) hire more reps; or (b) lower the revenue plan
    If top-down quota < bottom-up capacity: Either (a) increase the revenue plan; or (b) reduce rep count
    
  RAMP QUOTA (new hires):
    A new sales rep cannot hit full quota on Day 1 — they need time to build a pipeline
    Standard ramp schedule:
      Month 1-2: No quota (onboarding and learning)
      Month 3: 25% of full monthly quota
      Month 4: 50% of full monthly quota
      Month 5: 75% of full monthly quota
      Month 6+: 100% of full monthly quota
    Adjust based on: Territory maturity; prior experience; product complexity
    Allevio: Longer ramp (4-6 months) due to the employer group sales cycle (45-60 days)
    Column6: Shorter ramp (3-4 months) — agency buyers often make faster decisions

QUOTA ALLOCATION PRINCIPLES:
  Fair: Based on objective territory characteristics (market size; account count)
    Not based on: Last year's performance (punishes success) or subjective judgment
  Achievable: 70-80% of reps should be able to achieve their quota in a normal year
    If <50% attain quota: Quotas are too high or territory is under-supported
    If >90% attain quota: Quotas may be too low
  Motivating: There should be meaningful upside above quota (accelerators)
    Accelerator: After hitting quota, the commission rate increases
    Example: 100% of quota = 8% commission; 110%+ = 10% commission; 125%+ = 12% commission
  Transparent: Reps know exactly how their quota was set and why

QUOTA CALIBRATION — WHAT TO WATCH:
  If quota attainment falls below 70%: Quotas are too high; reassess territory or reduce targets
  If quota attainment is above 95%: Quotas may be too low; increase next cycle
  If quota attainment varies wildly by rep: Territory imbalance; investigate
    (One rep at 140% and another at 40% suggests territory allocation is unfair, not rep quality)
```

## Output Format

```markdown
# Sales Quota Plan — [Entity] | [Year]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Approved by:** CEO + Matt Mathison

---

## Revenue Plan to Quota Allocation

| Component | Amount |
|----------|--------|
| Annual revenue target (new bookings) | $[X]K |
| Quota cushion (15%) | $[X]K |
| Total rep quota pool | $[X]K |

---

## Rep Quota Allocation

| Rep | Territory | Monthly quota | Annual quota | Ramp month | Full quota by |
|-----|----------|--------------|-------------|-----------|--------------|
| [Rep A] | [Maricopa — 50-150 EE companies] | $[X]K/mo | $[X]K | N/A (tenured) | — |
| [Rep B] | [Pima County — new hire] | Ramp | $[X]K | Month 3 | Month 6 |
| **Team total** | | | **$[X]K** | | |

---

## Territory Capacity Validation

| Rep | Territory potential | Quota | Quota as % of potential |
|-----|-------------------|-------|------------------------|
| [Rep A] | $[X]K | $[X]K | [X]% (target: 60-70%) |

---

## Attainment Targets

| Attainment level | % of reps expected to reach | Commission rate |
|-----------------|---------------------------|----------------|
| <75% | <20% (flag for coaching) | 6% |
| 75-99% | — | 8% |
| 100-124% | — | 8% |
| 125%+ | — | 12% (accelerator) |
```

## Output Contract
- Quotas are set from data, not intuition — a quota set by saying "let's aim for 20% growth" without validating that the territory can support 20% growth is a guess with consequences; Dr. Lewis validates every quota against territory capacity before finalizing; if the top-down revenue plan requires a quota that exceeds territory capacity, the gap is escalated to Matt Mathison as a resource constraint
- Rep input is solicited but not determinative — the rep's view of their territory capacity is valuable input; it is also subject to anchoring bias (reps prefer lower quotas); Dr. Lewis solicits rep input on territory capacity and documents it; Dr. Lewis also builds the capacity model independently; where they diverge, Dr. Lewis investigates the reason before finalizing
- Ramp periods are not optional — a new rep who fails to hit 100% quota in month 1 is not underperforming; they are ramping; failing to build a ramp quota into the system and then placing a new hire on a performance plan for a ramp-period miss is a management failure, not a rep failure; Dr. Lewis builds the ramp schedule into every quota model for new hires and communicates it explicitly before the hire joins
- HITL required: Dr. Lewis builds the quota model; CEO reviews and approves; Matt Mathison approves quotas that connect to the revenue plan in the annual operating plan; reps are informed of their quotas before the period begins (never retroactively); quota changes after the period has started require CEO + Dr. Lewis + (if material) Matt Mathison approval; Dr. Lewis does not set quotas without the CEO's review of the territory allocation logic

## System Dependencies
- **Reads from:** fpa-annual-budget-builder (revenue target by entity — the top-down quota input); sales territory definitions (sales-territory-planner — territory capacity estimates); historical attainment data (sales-kpi-dashboard — prior year win rate; average deal size; sales cycle); rep headcount (hr-headcount-planner — how many reps are active or planned); ramp schedule (new hire planned start dates)
- **Writes to:** Quota plan document (SharePoint/Sales/<Company>/Quotas/[Year]_QuotaPlan.xlsx); commission plan (sales-commission-modeler — quota is the threshold for commission calculation); sales forecast inputs (sales-forecast-builder — quota is the denominator for coverage ratio and attainment); employment agreements (hr-employment-agreement-manager — quota referenced in variable compensation agreements)
- **HITL Required:** Dr. Lewis builds; CEO reviews and approves; Matt Mathison approves as part of the annual operating plan; reps are informed before period start; quota revisions require CEO approval; Dr. Lewis does not communicate final quotas to reps without CEO sign-off; Dr. Lewis does not reduce quotas mid-period without CEO + Matt Mathison approval (this is a material change to the compensation plan)

## Test Cases
1. **Golden path:** Setting Allevio 2027 quotas → Revenue target: $800K new bookings; 2 reps (1 tenured; 1 new hire starting March 1); quota cushion 15%: total rep quota pool = $800K × 1.15 = $920K; Rep A (tenured; Maricopa territory): $600K annual quota ($50K/month); territory capacity model: 150 addressable groups × 30% win rate × $40K avg ACV = $1.8M potential; $600K = 33% of potential (conservative — achievable); Rep B (new hire; Pima County; start March): ramp quota: March = $12.5K; April = $25K; May = $37.5K; June-December = $50K; full-year quota = $237.5K; total rep quota pool: $600K + $237.5K = $837.5K (below the $920K pool — Rep A's quota could increase slightly or the revenue plan is set conservatively); CEO reviews; approves; Matt Mathison sees it in the operating plan; reps notified
2. **Edge case:** The Allevio revenue plan calls for $1.2M in new bookings but Dr. Lewis's territory capacity model shows maximum potential of $850K with 2 reps → Dr. Lewis: "There's a gap between the revenue plan and territory capacity. The $1.2M target requires $1.38M in rep quotas (with cushion). With 2 reps and a maximum territory potential of $850K at full penetration, I can't build a quota model that credibly supports $1.2M without adding a third rep. Options: (1) Hire a third rep — adds $90-110K in loaded comp cost for 8 months of the year; (2) Adjust the revenue plan to $850K (more credible given territory capacity); (3) Expand the territory — are there adjacent markets outside Maricopa and Pima County? Matt Mathison: this is a resource planning decision. I recommend option 1 or 2." Matt Mathison and CEO decide; resource plan updated
3. **Adversarial:** A sales rep challenges their $600K quota as "impossible" three weeks into the new year → Dr. Lewis pulls the territory capacity model: "Rep A's territory has 150 addressable employer groups in Maricopa. Our historical win rate is 30% and average ACV is $40K. Full territory penetration = $1.8M. I set the quota at 33% of potential — well below the standard 60-70% target. The rep's claim that the quota is impossible would require that either: (1) the addressable market is smaller than my model shows; or (2) our win rate and ACV assumptions are wrong. Let's look at both together." Meeting scheduled with the rep and CEO to review the territory model; rep identifies 3 addressable industries they believe are non-starters for Allevio; model adjusted; quota confirmed at $550K (small reduction based on territory refinement); rep accepts

## Audit Log
All quota plans retained by entity and year. Territory capacity models retained. CEO and Matt Mathison approval records retained. Rep notification records retained. Mid-year quota revision records retained with rationale and approvals. Historical attainment vs. quota retained by rep and year.

## Deprecation
Retire when each portfolio company has a dedicated Sales Operations or VP of Sales who owns the quota-setting process — with Dr. Lewis reviewing the methodology and Matt Mathison approving through the annual operating plan.
