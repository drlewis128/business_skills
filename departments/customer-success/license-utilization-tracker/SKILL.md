---
name: license-utilization-tracker
description: "Track license and seat utilization across customer accounts. Use when the user says 'license utilization', 'seat utilization', 'who is using their licenses', 'unused seats', 'license compliance', 'over-provisioned', 'under-provisioned', or 'seats vs active users'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--account <specific>] [--flag <over|under|both>]"
---

# License Utilization Tracker

Track license and seat utilization across customer accounts. Low utilization predicts churn; high utilization signals upsell opportunity. Both states need action — this skill surfaces the picture clearly.

## When to Use
- Monthly adoption review (utilization is a component)
- Before a QBR (know the utilization story before you walk in)
- Renewal preparation — utilization drives the renewal conversation
- Upsell identification — who is approaching capacity?
- Rightsizing conversation — customer overpaying for licenses they're not using

## Utilization States

| State | Definition | Risk | Action |
|-------|-----------|------|--------|
| **Critical Low** | < 30% of seats active | Churn | Immediate intervention |
| **Low** | 30–50% | At Risk | Re-onboarding, training |
| **Standard** | 50–80% | None | Maintain engagement |
| **High** | 80–95% | None | Upsell opportunity flag |
| **At Capacity** | > 95% | Frustration if blocked | Proactive upsell conversation |
| **Overprovisioned** | Customer paying for more than they use, trend stable or declining | Churn | Rightsizing conversation |

## Rightsizing Policy

When a customer has been underutilizing for > 2 consecutive quarters:
- Initiate a rightsizing conversation proactively
- Offer to reduce their license count at renewal
- Rationale: Better to reduce ACV and retain the customer than lose them because they feel they're overpaying
- **Requires CSM Manager approval before initiating** — reduces ARR intentionally

## Output Format

```markdown
# License Utilization Report — <Entity>
**Date:** <date> | **Accounts tracked:** <N>

---

## Portfolio Utilization Summary

| Utilization Band | Accounts | ARR | % of ARR |
|----------------|---------|-----|---------|
| At Capacity (> 95%) | <N> | $<N> | X% |
| High (80–95%) | <N> | $<N> | X% |
| Standard (50–79%) | <N> | $<N> | X% |
| Low (30–49%) | <N> | $<N> | X% |
| Critical Low (< 30%) | <N> | $<N> | X% |

---

## Account-Level Utilization

| Account | Licensed | Active | Utilization | Trend | Status | Action |
|---------|---------|--------|------------|-------|--------|--------|
| <Account> | 50 | 49 | 98% | ⬆️ | At Capacity | Upsell call |
| <Account> | 100 | 28 | 28% | ⬇️ | Critical Low | Intervention |
| <Account> | 25 | 13 | 52% | → | Standard | Maintain |

---

## Upsell Signals (At Capacity or High — Approach Within 2 Weeks)

| Account | Current Licenses | Utilization | Recommended Add | Est. ACV Increase |
|---------|---------------|------------|----------------|-----------------|
| <Account> | 50 | 98% | +25 seats | +$<N>/year |
| <Account> | 20 | 90% | Upgrade to next tier | +$<N>/year |

---

## Rightsizing Candidates (Overprovisioned — Requires Manager Approval)

| Account | Current Licenses | Active | Quarters Below 50% | Risk if No Action |
|---------|---------------|--------|-------------------|-----------------|
| <Account> | 100 | 32 | 3 | High churn risk at renewal |

**Rightsizing action required before renewal:** <N> accounts | **ARR impact:** -$<N> (preventive)

---

## Utilization Trend Analysis

| Account | M-3 | M-2 | M-1 | Current | Trend Assessment |
|---------|-----|-----|-----|---------|----------------|
| <Account> | 65% | 58% | 49% | 42% | ⬇️ Declining — investigate |
| <Account> | 45% | 55% | 68% | 74% | ⬆️ Recovering — re-onboarding working |
```

## Output Contract
- Utilization always shown as trend, not snapshot — direction matters more than point-in-time
- Upsell signals and rightsizing candidates always flagged separately — different conversations
- Rightsizing always requires manager approval — intentional ACV reduction is a business decision
- HITL required: Dr. Lewis reviews rightsizing decisions > $20K ACV impact; CS Manager approves all rightsizing conversations before they happen

## System Dependencies
- **Reads from:** License/seat provisioning data, product login/activity data (provided or from product analytics)
- **Writes to:** Nothing (report for HITL review and CSM action)
- **HITL Required:** CS Manager approves rightsizing conversations; Dr. Lewis reviews significant ACV reductions before CSM initiates; upsell proposals > $50K require Dr. Lewis visibility

## Test Cases
1. **Golden path:** 12-account utilization review → 2 upsell signals (capacity), 1 rightsizing candidate (30% utilization, 3 quarters stable), 2 critical-low intervention flags, trend analysis for all accounts
2. **Edge case:** Account has low active seats but customer claims all work is done by 2 power users → investigate whether low seat count is a true utilization gap or a workflow concentration; if the latter, reframe around value delivered not seat count
3. **Adversarial:** CSM wants to let a low-utilization customer renew at full price without a rightsizing conversation → flags that this is short-term revenue protection at the risk of long-term churn, recommends proactive rightsizing conversation, explains that customer will figure out they're overpaying and leave

## Audit Log
Utilization snapshots retained by account and period. Rightsizing conversations and outcomes tracked.

## Deprecation
Retire when CS platform or product analytics provides real-time license utilization dashboards with automated upsell and rightsizing alerts.
