---
name: sales-onboarding-plan
description: "Onboard new sales reps for MBL portfolio companies. Use when the user says 'onboard a new rep', 'sales rep onboarding', 'new rep starting', 'first 90 days', 'new hire plan', 'sales onboarding', 'onboarding plan', 'rep onboarding', 'new sales hire', 'getting a rep up to speed', 'sales rep ramp', 'rep ramp plan', 'new employee sales', '30-60-90 day plan', '90-day plan', 'onboarding checklist', 'new rep checklist', 'first week', 'day 1 plan', 'rep is starting Monday', 'sales training plan', or 'how to onboard a sales rep'."
metadata:
  version: 2.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--rep <name>] [--start-date <date>] [--action <build|review|track>]"
---

# Sales Onboarding Plan

Onboard new sales reps for MBL portfolio companies — building a structured 90-day plan that gets a new rep productive faster, prevents costly onboarding gaps, and sets clear expectations from Day 1. The first 90 days of a sales hire are the highest-leverage period of the relationship: a rep who gets strong onboarding reaches full productivity in 4-5 months; a rep who is handed a lead list and told "good luck" takes 8-10 months or never gets there.

## When to Use
- A new sales rep is starting (prepare at least 1 week before their start date)
- Building the onboarding program for a portfolio company that hasn't had one
- A rep returns from extended leave and needs to be reonboarded
- A rep transfers from one portfolio company to another

## Sales Onboarding Framework

```
30-60-90 DAY STRUCTURE:

  WEEK 1 (Days 1-5) — ORIENTATION AND FOUNDATION:
    Day 1:
      □ IT setup: Laptop; Microsoft 365 (Outlook; Teams; SharePoint); GoHighLevel CRM access
      □ Meet the team: CEO; Dr. Lewis; other reps (if any); operations team
      □ Receive the Sales Playbook (sales-sales-playbook) — sign acknowledgment
      □ Commission plan review: Dr. Lewis walks through the commission structure and quota
      □ Territory briefing: Dr. Lewis presents the territory plan; rep acknowledges in writing
      □ Benefits and HR paperwork: Completed with HR
      
    Days 2-3: Product and Market Deep Dive
      □ Allevio: How the MSO model works (clinical; financial; operational); PMPM economics;
          meet the clinical or operations lead; shadow a member services call
        Column6: How the CTV supply chain works; IAB compliance; sellers.json; inventory walkthrough
        HIVE: Mineral rights acquisition process; LOI structure; Uinta Basin geography
      □ Read all existing case studies and customer references
      □ Review the ICP (sales-ideal-customer-profile) — who we sell to and who we don't
      
    Days 4-5: Sales Process and Tools
      □ Review the CRM (GoHighLevel) — how to log activities; pipeline stages; deal records
      □ Review the outbound sequences (sales-outbound-sequencer) — email templates; LinkedIn approach
      □ Discovery framework (sales-discovery-framework) — MEDDPICCC walkthrough with Dr. Lewis
      □ Call script (sales-call-script) — reviewed and practiced (rep rehearses the opener 10×)
      □ Dr. Lewis role play: Rep plays the rep; Dr. Lewis plays the prospect
      
  MONTH 1 (Days 1-30) — LEARNING AND FIRST CONTACTS:
    Week 1: Orientation (above)
    Week 2: Shadow 3 existing rep calls or Dr. Lewis calls with prospects; take notes
    Week 3: Rep makes their first 20 outbound calls (25% quota rate — fully supported)
    Week 4: Rep runs their first discovery call (Dr. Lewis joins and debriefs immediately after)
    
    Month 1 milestones:
      □ Has read the playbook (acknowledged)
      □ Has reviewed all 40+ active skills relevant to the sales function
      □ Has made 50+ outbound contacts
      □ Has run 2-3 discovery calls (with Dr. Lewis on the line)
      □ Can accurately describe the MEDDPICCC framework and the ICP
      □ Has a ramp pipeline of at least 5 qualified leads (not closed; but identified)
      
  MONTH 2 (Days 31-60) — FIRST DEALS AND INDEPENDENCE:
    Month 2 milestones:
      □ First proposal submitted (with Dr. Lewis review before submission)
      □ Running discovery calls independently (Dr. Lewis debrief after each one)
      □ CRM hygiene audit passed — all activity logged; deals complete
      □ Running 50% of monthly outreach activity quota independently
      □ Has attended one QBR with an existing account (as an observer)
      
  MONTH 3 (Days 61-90) — APPROACHING FULL PRODUCTIVITY:
    Month 3 milestones:
      □ At 75% of full monthly activity quota
      □ Running discovery calls independently (debrief weekly with Dr. Lewis)
      □ Has closed or is actively negotiating at least one deal
      □ Has been introduced to the broker referral program contacts
      □ 90-day performance review with Dr. Lewis and CEO
      
  FULL RAMP SCHEDULE:
    Month 1: No quota (ramp month — focus on learning)
    Month 2: 25% of full monthly quota
    Month 3: 50% of full monthly quota
    Month 4: 75% of full monthly quota
    Month 5+: 100% of full monthly quota
    
    Note: The ramp schedule is consistent with the commission plan (sales-commission-modeler)
      which also applies the ramp rate to commission calculations

90-DAY REVIEW CRITERIA:
  Is the rep on track? Assess:
  □ Activity levels (outreach volume; discovery calls run)
  □ Pipeline built (how much qualified pipeline has been built from scratch?)
  □ Process adherence (are they using MEDDPICCC? logging in CRM?)
  □ Coachability (are they implementing coaching feedback?)
  □ Cultural alignment (THRIVE — are they a good fit?)
  If the rep is not on track by Day 90: Dr. Lewis and CEO review — is this a skill gap
    (continue coaching) or a fit gap (address immediately)?
```

## Output Format

```markdown
# Sales Onboarding Plan — [Rep Name] | [Entity]
**Start date:** [Date] | **Territory:** [West Valley Maricopa / Column6 Tier 2 / etc.]
**Prepared by:** Dr. Lewis | **Approved by:** CEO | **Ramp quota starts:** [Month 2 start date]

---

## Week 1 Checklist

| Day | Activity | Owner | Complete |
|-----|---------|-------|---------|
| Day 1 | IT setup + CRM access | IT + Dr. Lewis | ☐ |
| Day 1 | Playbook review + sign | Dr. Lewis | ☐ |
| Day 1 | Commission + territory briefing | Dr. Lewis | ☐ |
| Day 2-3 | Product deep dive + shadow calls | CEO + Dr. Lewis | ☐ |
| Day 4-5 | CRM training + outbound sequences | Dr. Lewis | ☐ |
| Day 5 | Role play with Dr. Lewis | Dr. Lewis | ☐ |

---

## 30-Day Milestones

| Milestone | Target date | Complete |
|-----------|------------|---------|
| Playbook acknowledged | Day 1 | ☐ |
| 50+ outbound contacts | Day 30 | ☐ |
| 2+ discovery calls run (Dr. Lewis on call) | Day 30 | ☐ |
| 5 qualified leads in pipeline | Day 30 | ☐ |

---

## Ramp Quota Schedule

| Month | Quota (% of full) | Dollar target | Commission rate |
|-------|-----------------|--------------|----------------|
| Month 1 | 0% | $0 | N/A |
| Month 2 | 25% | $[X]K | 6% (below-quota rate) |
| Month 3 | 50% | $[X]K | 6-8% |
| Month 4 | 75% | $[X]K | 8% |
| Month 5+ | 100% | $[X]K | 8-10% (standard) |
```

## Output Contract
- Onboarding is not optional — a rep who receives no structured onboarding will build their own process, which may or may not match the playbook; the first 90 days determine whether the rep succeeds or fails; Dr. Lewis owns the onboarding plan and ensures it is executed; gaps in the onboarding process (rep never reviewed the playbook; rep was never shown how to use CRM; rep never ran a role play) create performance problems that are expensive to fix 6 months later
- The 90-day review is a mutual evaluation — the 90-day review is not only about whether the company wants to keep the rep; it is also about whether the rep wants to stay; Dr. Lewis uses the 90-day review to address any unmet expectations on both sides; if the rep expected a larger territory, a different product, or a different sales process, better to surface those issues at Day 90 than at Month 6; the 90-day review includes a candid conversation with the CEO
- Ramp quota protects the rep and the forecast — a new rep who is held to 100% quota from Day 1 will fail their quota, lose their commission, and may leave; a rep on a properly designed ramp quota builds confidence as they ramp up; the ramp also protects the forecast (don't count on a new rep for full-quota revenue until Month 5)
- HITL required: Dr. Lewis builds and executes the onboarding plan; CEO meets with the rep on Day 1 and participates in the 90-day review; HR administers benefits; employment agreement; and I-9 verification; Matt Mathison is not involved in individual rep onboarding; Dr. Lewis does not assign a territory without a written acknowledgment from the rep; the CEO must approve the commission plan before it is presented to the rep on Day 1

## System Dependencies
- **Reads from:** Sales playbook (sales-sales-playbook — the primary reference document for the rep's first 5 days); commission plan (sales-commission-modeler — shared with the rep on Day 1); territory plan (sales-territory-planner — rep's territory documented and acknowledged); ICP (sales-ideal-customer-profile); discovery framework (sales-discovery-framework — MEDDPICCC walkthrough); call script (sales-call-script — practiced in the first week); CRM training materials (GoHighLevel)
- **Writes to:** Onboarding checklist (SharePoint/HR/<Company>/Onboarding/[Rep]_OnboardingChecklist.xlsx); CRM rep record (GoHighLevel — new rep activated; territory assigned); commission plan acknowledgment (SharePoint/HR — rep signs the commission plan); territory acknowledgment (SharePoint/HR — rep signs the territory document); 90-day review record (SharePoint/HR — outcome of the Day 90 assessment); sales-kpi-dashboard (rep is added to the performance tracking dashboard from Month 2 onward)
- **HITL Required:** Dr. Lewis executes the onboarding plan; CEO meets on Day 1 and Day 90; HR processes all employment paperwork; Dr. Lewis does not skip the Day 5 role play (it is a required onboarding milestone); Dr. Lewis does not assign quota until Month 2 (ramp month 1 is quota-free by design); the 90-day review outcome is communicated to the CEO and HR before any action is taken

## Test Cases
1. **Golden path:** New Allevio rep starts Monday → Dr. Lewis executes the plan: Day 1: Laptop ready; GoHighLevel access activated; CEO 30-minute welcome meeting; Dr. Lewis commission + territory walkthrough; playbook signed; Day 2-3: Clinical director shadows Dr. Lewis on an explanation of the Allevio model; rep reads 6 case studies; reviews the ICP; Day 4: GoHighLevel training (2 hours); outbound sequence review; Day 5: Role play — rep practices the cold call opener 8× then does a mock discovery call; Dr. Lewis feedback: "Good pain questions; you moved to the proposal too fast without confirming the decision-maker — let's work on that"; Week 2: Rep shadows 2 Dr. Lewis calls; Week 3: Rep makes 30 outbound calls (Dr. Lewis available by phone); Week 4: Rep runs first discovery call (Dr. Lewis joins; debrief 30 min after); Day 30 review: All milestones met; 7 qualified leads in pipeline; Month 2 ramp quota activated: 25% of full quota target
2. **Edge case:** Rep hired for Allevio has prior B2B sales experience but no benefits background — the product is complex → Dr. Lewis extends the product deep dive to 2 weeks; the ramp quota stays the same (Month 2 at 25%) but the first two months of outreach will be fully supported with Dr. Lewis on every call; CEO approves the extended product phase; rep is productive by Month 4 (1 month slower than average; acceptable for a non-benefits background hire)
3. **Adversarial:** A new rep arrives with 10 years of experience and tells Dr. Lewis on Day 2 that they "don't need the training — I know how to sell" and wants to skip the playbook review and role play → Dr. Lewis: "I hear you — 10 years of experience is valuable and I want to use it. Here's the situation: the playbook review and the role play aren't about teaching you how to sell. They're about aligning on how we sell here, so I can support your work effectively. The role play is a 5-minute exercise that lets me see how you'll handle this specific market and buyer. We'll do it together and I'll share what I see. If your process is better than what's in the playbook, I want to know that — it'll improve the playbook for the whole team." Rep completes the role play; Dr. Lewis identifies a strength (excellent objection handling) and a gap (doesn't confirm the economic buyer early enough); both noted in the onboarding record; coaching targets set

## Audit Log
All onboarding checklists retained by rep, entity, and date. Commission plan acknowledgments retained. Territory acknowledgments retained. Role play records retained. Day 30 and Day 90 review records retained. Ramp quota schedule retained. All Day 90 review outcomes documented (on-track / coaching required / separation discussion initiated).

## Deprecation
Retire when each portfolio company has a VP of Sales who owns the onboarding program and a dedicated Sales Enablement resource — with Dr. Lewis reviewing the onboarding plan annually and the CEO participating in all Day 90 reviews for new sales hires.
