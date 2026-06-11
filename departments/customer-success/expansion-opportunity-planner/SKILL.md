---
name: expansion-opportunity-planner
description: "Plan the expansion revenue strategy for a customer account or the full portfolio. Use when the user says 'expansion revenue', 'expand this account', 'grow the account', 'upsell planning', 'cross-sell planning', 'expansion motion', 'net revenue retention', or 'plan account growth'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--account <specific>] [--type <upsell|cross-sell|multi-product>]"
---

# Expansion Opportunity Planner

Plan the expansion revenue motion for a customer account or the full CS portfolio. Expansion is the engine of NRR — without it, you're just retaining, not growing. This skill structures the expansion pipeline the same way Sales structures new logo pipeline.

## When to Use
- Building the CS team's expansion playbook
- Quarterly expansion revenue planning for Matt Mathison
- Specific account is approaching a natural expansion trigger
- NRR is below target — diagnose whether it's a churn problem or expansion gap
- At renewal — when to propose expansion alongside the renewal

## Expansion vs. Upsell vs. Cross-Sell

| Type | Definition | Example |
|------|-----------|---------|
| **Upsell** | More of the same (capacity, seats, tier) | 20 → 50 seats; Basic → Enterprise |
| **Cross-sell** | Different product/service | Existing customer buys add-on module |
| **Multi-product** | Full second product | Customer of Product A buys Product B |

## Expansion Triggers (When to Approach)

### High-Signal Triggers (Approach Within 2 Weeks)
- Usage > 80% of contracted capacity
- Customer adds new team or department that could benefit
- Customer champion gets promoted
- Success plan goal achieved ahead of schedule
- Customer mentions a problem we can solve with another product

### Mid-Signal Triggers (Include in Next QBR)
- Customer is satisfied (NPS 9-10)
- ROI has been documented and accepted
- 6 months into the contract with strong adoption

### Low-Signal Triggers (Track and Wait)
- < 90 days into contract (too early unless trigger is obvious)
- Customer in budget freeze
- Account health is Yellow or below

## Expansion Conversation Framework

1. **Lead with value delivered** — "You've achieved [Goal 1]. That's [ROI]."
2. **Bridge to the next opportunity** — "Given [growth/new challenge], the next step is..."
3. **Specific proposal** — "We're proposing [specific expansion] which would [specific outcome]."
4. **Remove the risk** — "We can start small and scale — no need to commit to the full upgrade today."

## Output Format

```markdown
# Expansion Opportunity Plan — <Account / Full Portfolio>
**Entity:** <MBL entity> | **Date:** <date>

---

## Expansion Pipeline Summary (Portfolio-Wide)

| Account | Current ACV | Expansion Opportunity | Type | Trigger | Timing | Owner |
|---------|------------|---------------------|------|---------|--------|-------|
| <Account> | $<N> | +$<N> | Upsell | 84% capacity | This QBR | CSM |
| <Account> | $<N> | +$<N> | Cross-sell | Champion promoted | Q3 | CSM |
| <Account> | $<N> | +$<N> | Multi-product | New department | At renewal | CSM + AE |

**Total expansion pipeline:** $<N>
**Expected close (next 90 days):** $<N>

---

## Individual Account Expansion Plan — <Account>

### Expansion Snapshot

| Current ACV | Expansion Opportunity | Type | Signal |
|------------|---------------------|------|--------|
| $<N> | +$<N> | Upsell | Usage at 84% of contracted seats |

### Why Now
<Specific trigger + customer context that makes this the right time>

### Proposed Expansion
- **From:** <Current: 25 seats, Basic tier>
- **To:** <Proposed: 50 seats, Standard tier>
- **Delta ACV:** +$<N>
- **Term:** <Remainder of contract / New 12-month add-on>

### Customer Value Framing
"You've been getting [outcome] for [current team]. Expanding to [scope] would [specific additional outcome]."

### Conversation Plan
**Who to approach:** <Champion / Economic buyer — which one and why>
**Vehicle:** QBR / Separate expansion call / At renewal
**CSM action:** Prepare ROI summary and seat usage data before the call

---

## Expansion by Stage (Pipeline View)

| Stage | # of Accounts | Expansion Value |
|-------|------------|----------------|
| Identified (signal seen) | <N> | $<N> |
| In conversation | <N> | $<N> |
| Proposal sent | <N> | $<N> |
| Verbal commit | <N> | $<N> |
| **Total pipeline** | | **$<N>** |
```

## Output Contract
- Expansion pipeline always quantified — dollar amount, not just "several opportunities"
- Trigger always documented — no expansion approach without a specific business reason
- Value framing always centered on customer outcome, not product features
- HITL required: Dr. Lewis reviews expansion proposals > $50K; expansion conversations at renewal require CSM manager awareness; cross-sell with a different product team requires coordination

## System Dependencies
- **Reads from:** Health score, usage data, success plan goals, product catalog (provided)
- **Writes to:** Nothing (expansion plan for HITL review and execution)
- **HITL Required:** Dr. Lewis reviews expansion proposals > $50K; CSM Manager approves expansion pricing; Finance reviews any expansion with custom terms

## Test Cases
1. **Golden path:** Portfolio expansion review → $340K expansion pipeline across 5 accounts, 2 in active conversation, 1 proposal pending, prioritized CSM actions for each
2. **Edge case:** Account is at-risk (health < 50) and has an obvious expansion signal → explicitly blocks expansion conversation until account is stabilized, routes to `at-risk-account-intervention` first
3. **Adversarial:** CSM wants to approach expansion with an account that just had a bad support experience → flags relationship health risk, recommends resolving the support issue and following up with a positive experience before proposing expansion

## Audit Log
Expansion opportunities logged by account, opportunity value, and outcome. Expansion close rate tracked as a CS team KPI.

## Deprecation
Retire when CS platform provides automated expansion signal detection with playbook triggers and integrated expansion pipeline management.
