---
name: success-metrics-framework
description: "Define and align on success metrics with a customer. Use when the user says 'success metrics', 'define what success looks like', 'what are we measuring', 'KPIs for this customer', 'customer success criteria', 'how do we measure ROI', or 'outcomes for this account'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--stage <onboarding|steady-state|renewal>] [--format <brief|full>]"
---

# Success Metrics Framework

Define and align on success metrics with a specific customer. Metrics set in onboarding become the renewal conversation. If you don't define what success looks like upfront, you'll never be able to prove you delivered it — and renewals become price negotiations instead of ROI validations.

## When to Use
- Kickoff meeting prep (define success before you start)
- Steady-state QBR (track against agreed metrics)
- At-risk account intervention (re-align on metrics if original goals changed)
- Renewal preparation (build the ROI case from agreed metrics)
- New stakeholder onboarded (align them to the existing success metrics)

## Metric Categories

| Category | Description | Examples |
|---------|------------|---------|
| **Business outcomes** | What the customer is trying to achieve with their business | Revenue growth, cost reduction, compliance, scale |
| **Product adoption** | How well they're using the product | DAU/WAU, feature adoption %, licenses utilized |
| **Operational efficiency** | Process improvements from using the product | Time saved per task, manual process eliminated |
| **Financial ROI** | Hard-dollar return vs. cost of the product | Cost savings, revenue increase attributable to product |
| **User satisfaction** | How the end users feel about the product | CSAT, NPS, user-reported satisfaction |
| **Time to value** | How fast they achieved first value | Days to first meaningful outcome |

## Metric Selection Principles

1. **Start with their goals, not product capabilities** — "What would make this a clear success in 12 months?" before "Here's what our product measures"
2. **Max 5 metrics** — More than 5 creates noise; pick the ones that matter for this customer
3. **At least one quantitative** — Qualitative success is hard to defend at renewal
4. **Baseline required** — A metric without a baseline is meaningless (e.g., "time saved" needs to know current time spent)
5. **Customer must sign off** — These are joint metrics; if the customer doesn't agree, they'll dispute the results

## Output Format

```markdown
# Success Metrics Framework — <Account>
**Entity:** <MBL entity> | **Stage:** Onboarding / Steady-State / Renewal
**Alignment meeting:** <date> | **Customer champion:** <name>
**CSM:** <name>

---

## Customer Business Goals (from discovery)
1. <Primary business goal>
2. <Secondary goal>
3. <Constraint or risk they're managing>

---

## Agreed Success Metrics

| Metric | Category | Baseline | Target | Measurement Method | Review Frequency |
|--------|---------|---------|--------|------------------|----------------|
| [Metric 1] | Business outcome | <current baseline> | <target by date> | <how measured> | Monthly |
| [Metric 2] | Product adoption | <baseline> | <target> | Product analytics | Weekly |
| [Metric 3] | Operational efficiency | <hours spent today> | <reduced target> | Self-reported + product data | Quarterly |
| [Metric 4] | Financial ROI | <current cost> | <cost after product> | Finance records | Quarterly |
| [Metric 5] | User satisfaction | NPS: <baseline> | NPS: <target> | Quarterly NPS survey | Quarterly |

---

## Baseline Documentation

| Metric | Baseline Value | How Captured | Date |
|--------|--------------|-------------|------|
| [Metric 1] | <value> | Customer self-reported / Product data / Finance system | <date> |

---

## Success Milestones

| Milestone | Target Date | Metric | What "Done" Looks Like |
|-----------|------------|--------|----------------------|
| First value milestone | <30 days> | [Metric] | <specific measurable outcome> |
| Onboarding complete | <60 days> | [Metric] | <specific outcome> |
| ROI positive | <90 days> | [Financial metric] | <specific number> |

---

## Customer Sign-Off

> "I agree that the metrics above represent what success looks like for our engagement. I understand that progress against these metrics will be reviewed at our QBR."

**Champion signature / acknowledgment:** ____________
**Date:** ____________

---

## Metric Review History

| Date | Status | Notes |
|------|--------|-------|
| <kickoff> | Baseline set | All metrics agreed and documented |
```

## Output Contract
- Maximum 5 metrics selected — noise reduction is a feature, not a limitation
- Every metric has a documented baseline — no baseline = don't include the metric
- Customer champion sign-off always included — these are joint commitments, not unilateral declarations
- HITL required: CS Manager reviews framework before presenting to customer; any change to metrics post-kickoff requires manager approval

## System Dependencies
- **Reads from:** Discovery notes, kickoff notes, success plan (provided)
- **Writes to:** Nothing (framework document for customer alignment and CSM tracking)
- **HITL Required:** CS Manager reviews metrics before kickoff alignment; Dr. Lewis reviews metrics for any strategic account > $100K ACV

## Test Cases
1. **Golden path:** Healthcare MSO onboarding, primary goal = reduce billing reconciliation time → 5 metrics defined: billing cycle time (operational), license utilization (adoption), cost per claim (financial ROI), end-user CSAT, time to first clean claim submission; all with baselines captured; champion signs off at kickoff
2. **Edge case:** Customer says "we just need it to work" and won't commit to specific metrics → facilitates the "what would make this worth renewing in 12 months?" conversation to surface implicit expectations, documents agreed proxy metrics (uptime, adoption rate, support ticket volume)
3. **Adversarial:** Customer changes their success criteria at renewal to something that was never agreed → references the original signed-off metrics, acknowledges goals can evolve, proposes a formal goal-update session with appropriate context to avoid the pattern repeating

## Audit Log
Success metric frameworks retained by account and version. Metric changes tracked with date and reason. CSM and manager sign-off logged.

## Deprecation
Retire when CS platform provides a native success planning module with metric tracking, baseline capture, and customer alignment workflow.
