---
name: sales-onboarding-plan
description: "Build a 30-60-90 day onboarding plan for a new sales hire. Use when the user says 'onboard a new rep', 'sales onboarding', '30-60-90 day plan', 'new rep plan', 'ramp plan', 'onboarding schedule', or 'how do we onboard a new AE'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<role-title> [--entity <name>] [--level <entry|mid|senior>] [--ramp-months <3|6>]"
---

# Sales Onboarding Plan

Build a structured 30-60-90 day onboarding plan for a new sales hire. The first 90 days determine whether a rep succeeds or fails — reps with structured onboarding ramp 2× faster and have significantly lower first-year attrition.

## When to Use
- New sales rep starts (build before day 1)
- Sales manager is designing an onboarding program
- Evaluating why recent hires are failing to ramp
- Annual refresh of the onboarding program

## Onboarding Philosophy

- **Learn first, sell second** — Reps who don't understand the product, the customer, and the process make bad early calls that damage the brand
- **Immerse in the customer** — Shadow calls, listen to recordings, interview existing customers in the first 30 days
- **Ramped expectations** — Quota should ramp: 25-50% of full quota in month 1-2, 75% in month 3, full quota at month 4-6 depending on complexity
- **Manager checkpoints** — Weekly 1:1s in the first 30 days; catch problems early

## 30-60-90 Structure

### Days 1–30: Learn (Foundation)
Goals: Know the product, know the customer, know the process.
- [ ] Complete product training
- [ ] Shadow 5+ customer calls (listen only)
- [ ] Interview 3+ existing customers (what problem did we solve?)
- [ ] Review the sales playbook
- [ ] Get CRM access and learn the workflow
- [ ] Shadow a senior rep for a full week
- [ ] Pass product knowledge assessment

### Days 31–60: Practice (Guided Selling)
Goals: Run meetings with support; start building pipeline.
- [ ] Lead discovery calls with manager support
- [ ] Build initial pipeline (25–50% of quota level)
- [ ] Run first solo demos
- [ ] Submit first weekly pipeline review
- [ ] Debrief every call with manager
- [ ] Complete objection handling training

### Days 61–90: Execute (Independent Selling)
Goals: Running the full sales process; managing own pipeline.
- [ ] Manage full pipeline independently
- [ ] Hit 50–75% of full quota target (ramp quota)
- [ ] Present forecast at weekly pipeline review
- [ ] Close first deal (if sales cycle allows)
- [ ] Complete 90-day performance review

## Output Format

```markdown
# Sales Onboarding Plan — <Role> at <Entity>
**Rep name:** <name> | **Start date:** <date> | **Manager:** <name>
**Full quota (after ramp):** $<N> | **Ramp period:** <N> months

---

## Ramp Quota Schedule

| Month | Quota | Expectation |
|-------|-------|------------|
| Month 1 | $0 | Learning only |
| Month 2 | $<N> (25% of full) | First pipeline building |
| Month 3 | $<N> (50% of full) | First deals expected |
| Month 4–6 | $<N> (75–100%) | Full ramp expected |

---

## Days 1–30: Foundation

**Week 1: Orientation and Product**
| Day | Activity | Owner | Completion |
|-----|---------|-------|-----------|
| 1 | HR orientation, system access, introductions | HR + Manager | [ ] |
| 1–3 | Product training (core product) | Product team | [ ] |
| 4–5 | Sales playbook review | Manager | [ ] |
| 1–5 | Shadow calls with senior reps | Rep + Senior AE | [ ] |

**Week 2–4: Customer Immersion**
- [ ] Listen to 5 recorded discovery calls
- [ ] Interview 3 existing customers (30 min each)
- [ ] Shadow 3 live calls (discovery, demo, close)
- [ ] CRM setup and workflow certification

**30-Day Check-In Milestones:**
- [ ] Can articulate our ICP, value prop, and top 3 differentiators
- [ ] Knows the sales process stage-by-stage
- [ ] CRM is set up and rep has entered first 10 prospects
- [ ] Passed product knowledge quiz (score ≥ 80%)

---

## Days 31–60: Guided Selling

**Goals:** Build pipeline; lead first calls with manager support.
- [ ] Lead first 3 discovery calls (manager on the line)
- [ ] Submit weekly pipeline review (minimum 5 prospects in pipeline)
- [ ] Run first solo demo by day 45
- [ ] Pipeline coverage at 2× ramp quota

**60-Day Check-In Milestones:**
- [ ] Pipeline at 2× ramp quota
- [ ] Leads discovery calls independently
- [ ] First proposal sent
- [ ] Forecast submitted accurately

---

## Days 61–90: Independent Selling

**Goals:** Run full process; close first deal; hit ramp quota.
- [ ] Manage pipeline independently (weekly rep reviews)
- [ ] First close (goal, not required)
- [ ] Forecast accuracy within ±20% of actual
- [ ] Hit 50% of full quota target

**90-Day Performance Review:**
- Attainment vs. ramp quota
- Pipeline coverage ratio
- Call quality assessment
- Manager coaching assessment
- Go / No-go decision on full ramp

---

## Resources

| Resource | Location |
|---------|---------|
| Sales playbook | [Link or path] |
| Product training | [Link or path] |
| ICP and buyer personas | `icp-builder` output |
| Objection responses | `objection-handler` |
| CRM training | [Link] |

```

## Output Contract
- Ramp quota schedule always included — no rep should have ambiguous expectations in the first 90 days
- 30/60/90 milestones always defined — manager and rep aligned on checkpoints
- Resources always listed — new rep shouldn't have to hunt for materials
- HITL required: Manager reviews and approves before sharing with new hire; HR confirms employment terms match

## System Dependencies
- **Reads from:** Sales playbook, product training materials, CRM access workflow (provided)
- **Writes to:** Nothing (onboarding plan for manager and new rep)
- **HITL Required:** Sales manager and Dr. Lewis approve onboarding plan; HR confirms start logistics

## Test Cases
1. **Golden path:** Mid-market AE at MBL entity, 4-month ramp → full 30/60/90 with weekly milestones, ramp quota schedule, 90-day performance review criteria
2. **Edge case:** Experienced hire from a competitor → accelerate to 60-day ramp, reduce product basics, add competitive context and existing account shadowing in week 1-2
3. **Adversarial:** Request to skip the 30-day learning phase and put the rep on full quota immediately → flags that this increases failure probability, provides evidence, recommends modified accelerated ramp that still includes product and customer immersion before selling

## Audit Log
Onboarding plans retained by rep and start date. 90-day outcomes tracked for onboarding program improvement.

## Deprecation
Retire when sales enablement platform manages structured onboarding with automated milestone tracking and manager alerting.
