---
name: cs-success-plan-builder
description: "Build customer success plans for MBL portfolio company accounts. Use when the user says 'success plan', 'customer success plan', 'CSP', 'joint success plan', 'account success plan', 'mutual success plan', 'customer goals', 'success goals', 'what does success look like', 'customer objectives', 'what are the customer outcomes', 'desired outcomes', 'customer milestones', 'success criteria', 'define success for this customer', 'what does the customer want to achieve', 'customer roadmap', 'success roadmap', 'customer value plan', or 'value plan'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--period <annual|semi-annual>] [--action <build|review|update>]"
---

# CS Success Plan Builder

Build customer success plans for MBL portfolio company accounts — documenting the customer's goals, the metrics that define success, the milestones that mark progress, and the actions both parties (Allevio/HIVE/Column6 and the customer) commit to. A success plan makes the value exchange explicit: the customer knows what they signed up for; the CS team knows what they committed to deliver; and both parties can measure whether the relationship is working. Without a success plan, "success" is whatever the customer decides it is when renewal comes.

## When to Use
- Onboarding a new customer (build the success plan during the first 30 days)
- Annual account review (renew and update the success plan)
- A customer is asking "are we getting value?" (the success plan is the answer)
- Preparing for a QBR (the success plan is the agenda foundation)

## Success Plan Framework

```
SUCCESS PLAN STRUCTURE:

  1. CUSTOMER GOALS (why did they sign?):
     What business problem were they trying to solve when they chose us?
     What does "this was worth it" look like in 12 months?
     Capture in the customer's own words — not the CS team's interpretation
     
     Examples by entity:
       Allevio: "Reduce benefits cost by 15% while maintaining plan quality for our employees"
         "Get our claim ratio below 80% — we were at 87% last year"
         "Simplify benefits administration so our HR Director can focus on other work"
       Column6: "Reach cord-cutters in the 35-54 age bracket with measurable attribution"
         "Replace 20% of our linear TV budget with CTV and prove equivalent or better reach"
       HIVE: "Monetize mineral rights we've owned for 30 years without understanding their value"
         "Receive a fair royalty and stay informed about what's happening on our land"
         
  2. SUCCESS METRICS (how will we measure "got there?"):
     Quantify the goal — every goal needs a metric
     Allevio:
       □ Claim ratio target: <80% by Month 12 (from current X%)
       □ PMPM vs. prior carrier: Savings of $[X] per member per month
       □ Member enrollment: ≥[X]% of eligible employees enrolled by Month 3
       □ HR Director time savings: Estimated [X] hours/month vs. prior approach
     Column6:
       □ VCR (Video Completion Rate): ≥92% across all campaigns
       □ CPM target: ≤$[X] for the agreed audience segment
       □ Attribution: [X] incremental conversions per $1,000 of spend
       □ Spend target: $[X]K IO value per quarter
     HIVE:
       □ Lease bonus received: $[X] per acre (documented in executed lease)
       □ Royalty rate: [X]% of gross production revenue
       □ First royalty payment: Within [N] months of first production
       
  3. MILESTONES (checkpoints that show progress):
     Break the 12-month journey into 30-60-90 day checkpoints
     Each milestone should be binary (done or not done) and date-specific
     Allevio 90-day milestones:
       Month 1: All members enrolled; ID cards issued; first claim submitted
       Month 3: First EOB (Explanation of Benefits) reviewed with HR Director
       Month 6: First semi-annual cost analysis delivered; claim ratio trending toward target
       Month 12: Annual renewal analysis; savings documented; success plan reviewed
     Column6 milestones:
       Month 1: First IO delivered at ≥92% VCR
       Month 3: First attribution report reviewed with the agency
       Month 6: Expanded IO (volume increase) or additional brand/DMA
       Month 12: Annual performance review; next-year campaign plan
       
  4. MUTUAL COMMITMENTS (what each party agrees to do):
     Customer commitments:
       Allevio HR Director: Attend QBRs; submit census updates within 5 business days;
         respond to benefit questions forwarded by Allevio within 48 hours
       Column6 media buyer: Deliver creative assets by Day 1 of each IO;
         review campaign reports within 1 week; provide brand safety/targeting feedback quarterly
     Our commitments:
       Allevio CS: Weekly contact during onboarding; monthly claim ratio report;
         QBR every quarter; 24-hour response to any complaint
       Column6 CS: Campaign live within 5 business days of IO; weekly pacing reports;
         attribution dashboard always current; VCR ≥92% or proactive remediation
         
  5. RISK FLAGS (what could prevent success?):
     Identify the 2-3 biggest risks to the customer achieving their goals:
       Allevio: Champion change (HR Director leaves); member non-compliance with clinical care;
         unexpected high-cost claim event outside our control
       Column6: Creative quality issues; targeting misconfiguration; market CPM volatility
       HIVE: Title dispute; development timeline delay; commodity price impact on production

SUCCESS PLAN REVIEW CADENCE:
  Monthly: CS rep verifies metrics are being tracked; any off-track metrics flagged
  Quarterly QBR: Full success plan review — are we on track? What needs adjustment?
  Annual: Full renewal of the success plan — did we achieve the Year 1 goals?
    New goals set for Year 2; new metrics defined; mutual commitments renewed
```

## Output Format

```markdown
# Customer Success Plan — [Account Name] | [Entity]
**Plan period:** [Start date] to [End date] | **ACV:** $[X]K
**Customer primary contact:** [Name, Title] | **CS owner:** Dr. Lewis / [Name]
**Plan created:** [Date] | **Last reviewed:** [Date]

---

## Customer Goals

| Goal | Customer's own words | Metric |
|------|---------------------|--------|
| Reduce benefits cost | "We were at 87% claim ratio — want to get under 80" | Claim ratio <80% by Month 12 |
| Simplify administration | "Our HR Director spends 8 hrs/week on benefits questions" | HR time savings >4 hrs/week by Month 6 |

---

## Success Metrics Dashboard

| Metric | Baseline | Target | Month 3 | Month 6 | Month 12 |
|--------|---------|--------|---------|---------|---------|
| Claim ratio | 87% | <80% | [X]% | [X]% | [X]% |
| PMPM vs. prior carrier | $680 | ≤$620 | — | $[X] | $[X] |
| Member enrollment | — | ≥85% | [X]% | [X]% | [X]% |

---

## Milestone Tracker

| Milestone | Target date | Status | Notes |
|-----------|------------|--------|-------|
| All members enrolled | [Date] | ✅ / ⏳ / ❌ | |
| First EOB reviewed | [Date] | ✅ / ⏳ / ❌ | |
| Claim ratio below 83% | [Date] | ✅ / ⏳ / ❌ | |
| Claim ratio below 80% | [Date] | ✅ / ⏳ / ❌ | |

---

## Mutual Commitments

**Customer:** [List of what they agreed to do]
**Allevio/Column6/HIVE:** [List of what we committed to deliver]

---

## Risk Register

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| HR Director change | Medium | High | Build depth with CFO now |
```

## Output Contract
- Goals in the customer's words, not ours — "improve ROI" is not a customer goal; "reduce our benefits spend by 15% while keeping our employees happy" is a customer goal; the success plan captures what the customer said during the sales process and the kickoff call; Dr. Lewis reviews every success plan to confirm the goals reflect what the customer actually said, not what we think they should want; a success plan whose goals don't match what the customer thinks they're paying for is a relationship problem waiting to happen
- Every goal has a metric — a goal without a metric is a wish; "reduce claim ratio" needs a number ("below 80% by Month 12 from a baseline of 87%"); Dr. Lewis requires every goal in the success plan to have a specific metric, a baseline, a target, and a date; without these, it is impossible to prove value at renewal
- The plan is co-owned — the success plan is a joint document; the customer signs off on their goals and the mutual commitments; a success plan the customer has never seen is not a success plan — it is a CS rep's internal note; Dr. Lewis walks through the success plan with the customer on the first QBR and asks for explicit agreement; "does this accurately capture what you're trying to achieve?" is the question that creates alignment
- HITL required: Dr. Lewis builds success plans for all accounts >$100K ACV; the customer primary contact reviews and approves the success plan within 30 days of go-live; CEO reviews the success plans for all Priority A accounts quarterly; Dr. Lewis does not advance an account to steady-state CS management without a completed success plan; any change to success metrics (raising or lowering a target) requires Dr. Lewis approval and customer acknowledgment

## System Dependencies
- **Reads from:** Sales discovery notes (sales-discovery-framework — what pain did the customer articulate?); kickoff call notes (cs-onboarding-coordinator — what goals were confirmed at kickoff?); claim ratio data (Allevio AdvancedMD — baseline claim ratio for the account); Column6 benchmark data (average VCR by category — what is a realistic target for this agency?); HIVE LOI terms (executed lease — royalty rate; bonus per acre for the success metrics)
- **Writes to:** Customer success plan (SharePoint/CustomerSuccess/<Company>/SuccessPlans/[Account]_[Year]_SuccessPlan.pdf); QBR agenda (cs-qbr-preparer — success plan metrics are the QBR agenda framework); health score model (cs-health-score-tracker — success plan metrics feed the outcome achievement dimension); cs-kpi-dashboard (milestone achievement rates across all accounts)
- **HITL Required:** Dr. Lewis builds and reviews success plans for >$100K ACV; customer primary contact approves the plan within 30 days of go-live; CEO reviews Priority A account success plans quarterly; Dr. Lewis does not approve a success plan that has goals without metrics; metric target changes require Dr. Lewis approval and customer acknowledgment

## Test Cases
1. **Golden path:** Allevio — 120-member employer group signs; kickoff call reveals their goals: (1) "Get our claim ratio below 80% — it was 87% last year and our CFO is furious about the cost"; (2) "Our HR Director wants to stop answering employee benefits calls — she spends 8 hours a week on it" → Dr. Lewis builds the success plan: Goal 1: Claim ratio <80% by Month 12 (baseline 87%; Year 1 target 80%; interim check at Month 6: should be at ≤83%); Goal 2: HR Director time savings — baseline survey conducted at Month 1 (8 hours/week on benefits); target ≤4 hours/week by Month 6; success plan sent to HR Director for review; HR Director reviews and says "yes, this is exactly what we're trying to achieve"; plan signed by both parties; used as QBR agenda at every quarterly review
2. **Edge case:** Column6 agency says their goal is "brand awareness" — a non-measurable goal → Dr. Lewis pushes back: "I hear you on brand awareness — let me translate that into something we can measure together. Brand awareness for a CTV campaign typically means: (a) reach (unique households reached per IO); (b) frequency (average exposures per household); (c) brand recall lift (survey-based — available through Nielsen OneCount). Which of these reflects what you're trying to achieve? Alternatively, if the ultimate goal is driving conversions, we can set an attribution target — X incremental conversions per $1K of spend. I need at least one measurable metric in the success plan so we can both agree at your renewal whether it was worth it." Agency chooses reach + frequency as primary metrics; attribution as secondary; success plan built with quantified targets
3. **Adversarial:** A CS rep skips building a success plan for a new account ("the customer doesn't want to do paperwork — they just want results") → Dr. Lewis: "The success plan isn't paperwork for the customer — it's protection for us. When renewal comes and the customer says 'we didn't get value,' we need to be able to point to what we agreed 'value' meant when they signed. Without a success plan, we're arguing about outcomes we never defined. I'll run the success plan conversation — it's a 20-minute call, and I'll frame it as 'I want to make sure we're focused on the right things for your team.' That framing almost always works. I'll do it this week before the first QBR." Dr. Lewis runs the success plan conversation; plan built and signed off; used at every subsequent QBR

## Audit Log
All customer success plans retained by account, entity, and year. Customer sign-off records retained. Success metric tracking records retained monthly. Goal achievement records at renewal retained. Metric target change records (with Dr. Lewis approval) retained.

## Deprecation
Retire when each portfolio company has a CS platform that natively manages success plans and milestone tracking — with Dr. Lewis reviewing the success plan template annually and the CEO reviewing Priority A account success plans quarterly.
