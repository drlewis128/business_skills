---
name: renewal-risk-identifier
description: "Identify and assess renewal risk for existing customers. Use when the user says 'renewal risk', 'which customers might churn', 'at-risk accounts', 'churn risk', 'renewal health', 'customers at risk of not renewing', or 'identify churn signals'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <90days|6months>] [--account <specific-name>]"
---

# Renewal Risk Identifier

Identify customers at risk of not renewing and prioritize intervention. Losing a renewal is expensive — 5-7× more costly than retaining an existing customer. This skill scores renewal risk early enough to save accounts before it's too late.

## When to Use
- 90-120 days before a customer's renewal date (standard early warning review)
- Health score drops below threshold for any active customer
- Account has had a service issue, change in champion, or competitor contact
- Quarterly churn review for Matt Mathison
- Building a save plan for an account that is flagging risk

## Renewal Risk Framework

### Risk Signals (Weighted Score)

| Signal | Weight | 🔴 High Risk | 🟡 Medium Risk | 🟢 Low Risk |
|--------|--------|------------|--------------|-----------|
| Product usage | 25% | < 30% of contracted seats/features used | 30–70% used | > 70% consistently used |
| Support tickets | 15% | ≥ 3 unresolved issues in 90 days | 1-2 unresolved | All resolved promptly |
| Champion health | 20% | Champion departed or is disengaged | Neutral / uncertain | Champion active and vocal |
| Executive engagement | 15% | No executive contact in 6 months | Sporadic contact | Regular QBR cadence |
| NPS / satisfaction | 10% | NPS < 7 or active complaint | NPS 7-8 | NPS 9-10 |
| Competitive activity | 10% | Prospect evaluating competitor | Competitive inquiry | No competitive activity |
| Payment health | 5% | Overdue invoice > 30 days | 15-29 days late | Always on time |

### Renewal Risk Score
```
Risk Score = Σ (Signal weight × risk factor)
0–30: Low risk (🟢 renew likely)
31–60: Medium risk (🟡 intervention recommended)
61–100: High risk (🔴 save plan required immediately)
```

## Intervention Tiers

| Risk Score | Action | Urgency | Owner |
|-----------|--------|---------|-------|
| 0–30 | Standard renewal conversation | 60 days before renewal | CSM |
| 31–60 | Executive outreach + value review | 90 days before renewal | CSM + Manager |
| 61–100 | Save plan activated | Immediately | Dr. Lewis + CSM |

## Output Format

```markdown
# Renewal Risk Assessment — <Account> at <Entity>
**Renewal date:** <date> | **ACV:** $<N> | **Days to renewal:** <N>

## Risk Score: X/100 — 🟢 Low / 🟡 Medium / 🔴 HIGH

## Signal Breakdown

| Signal | Score | Evidence | Risk Factor |
|--------|-------|---------|------------|
| Product usage | X/25 | X% of seats active | 🟢 / 🟡 / 🔴 |
| Support tickets | X/15 | <N> open tickets | |
| Champion health | X/20 | Champion departed / active | |
| Executive engagement | X/15 | Last QBR: <date> | |
| NPS / satisfaction | X/10 | NPS: <N> | |
| Competitive activity | X/10 | <none / evaluating X> | |
| Payment health | X/5 | Invoice status | |

## Key Risk Drivers

1. **[Primary risk]** — <Specific evidence>
2. **[Secondary risk]** — <Specific evidence>

## Save Plan (If High or Medium Risk)

### Immediate Actions (This Week)
- [ ] **[Action]** — Owner: <name> | Due: <date>
- [ ] **[Action]** — Owner: <name> | Due: <date>

### 30-Day Plan
| Action | Owner | Goal |
|--------|-------|------|
| [Action] | [Name] | Reconnect champion; get NPS above 7 |
| [Executive sponsor call] | Dr. Lewis | Demonstrate MBL leadership commitment |
| [Value review / QBR] | CSM | Quantify ROI delivered; reset success metrics |

### Renewal Conversation Strategy
- Lead with: [specific value delivered — use their success metrics]
- Address: [primary concern directly and proactively]
- Bring: [executive sponsor if needed]
- Deadline: Must have verbal commit by <date> to process renewal paperwork

## Revenue at Risk
**ACV at risk:** $<N> | **Churn cost (5× CAC):** $<N>
**Probability of renewal (current trajectory):** X%
```

## Output Contract
- Risk score always calculated with evidence — no subjective "they seem fine"
- Save plan always specific and actionable for any account > Medium risk
- Revenue at risk always quantified — connects churn risk to business impact
- HITL required: Dr. Lewis reviews all High-risk renewal accounts; Matt Mathison approves save plan spending

## System Dependencies
- **Reads from:** CRM account data, product usage data, support ticket logs, NPS data (provided or from CS platform)
- **Writes to:** Nothing (risk assessment for HITL review and CSM action)
- **HITL Required:** Dr. Lewis reviews all High-risk accounts and approves save plan; CSM and manager own execution

## Test Cases
1. **Golden path:** Account with 120 days to renewal, champion departed 45 days ago, 40% usage rate → Risk score 72 (High), save plan activated, executive sponsor outreach within 5 days
2. **Edge case:** No usage data available → flags gap, calculates risk from available signals, recommends urgent call to assess usage situation directly
3. **Adversarial:** Request to classify a high-risk account as low-risk to avoid having to report churn risk to leadership → refuses, runs objective score, escalates per risk tier protocol

## Audit Log
Renewal risk assessments retained by account and assessment date. Save plans tracked with outcomes.

## Deprecation
Retire when Customer Success platform (Gainsight, ChurnZero, Totango) provides real-time health scoring with automated renewal risk alerts.
