---
name: commission-plan-designer
description: "Design or review a sales commission plan. Use when the user says 'commission plan', 'comp plan', 'sales compensation', 'how should we pay reps', 'commission structure', 'OTE', 'on-target earnings', 'variable pay plan', or 'incentive plan'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--role <ae|sdr|csm|manager>] [--entity <name>] [--ote-range <low-high>]"
---

# Commission Plan Designer

Design or review a sales commission plan. Comp plans drive behavior — get them wrong and reps optimize for the wrong outcomes. A well-designed plan aligns rep incentives with company goals, rewards the right deals, and is simple enough that reps can calculate their own commission on the back of a napkin.

## When to Use
- Building comp plans for new sales roles
- Annual comp plan refresh (new fiscal year)
- Business model change that requires incentive alignment update
- Reps gaming the current plan in ways that hurt the business
- New product line that needs its own incentive structure
- Matt Mathison reviewing comp strategy for a portfolio company

## Commission Plan Design Principles

1. **Simplicity** — If a rep can't calculate their commission mentally, the plan is too complex
2. **Line of sight** — Reps should see a direct connection between their behavior and their paycheck
3. **Align to company goals** — If ARR growth is the priority, comp on ARR; if new logos matter, weight new logos
4. **Avoid gaming** — Every comp plan can be gamed; identify how and design guardrails
5. **Cap vs. no cap** — Capped plans save money but demotivate top performers; uncapped plans cost more but drive exponential effort

## Standard Comp Plan Components

### Base / Variable Split
| Role | Typical Base/Variable Split |
|------|-----------------------------|
| Enterprise AE | 50/50 — 60/40 |
| Mid-Market AE | 60/40 |
| SMB AE | 70/30 |
| SDR / BDR | 70/30 — 75/25 |
| CSM (expansion-focused) | 70/30 |
| Sales Manager | 70/30 (on team attainment) |

### OTE (On-Target Earnings)
```
OTE = Base salary + Variable at 100% quota attainment
```
Market benchmarks vary by geography and stage. Document source when used.

### Accelerators (Above-Quota Rewards)

| Attainment | Commission Rate |
|-----------|----------------|
| 0–50% | 50% of standard rate (ramp protection) |
| 51–100% | 100% of standard rate |
| 101–120% | 125% of standard rate (accelerator) |
| > 120% | 150% of standard rate (kicker) |

### Commission Triggers

| Metric | Weight | Notes |
|--------|--------|-------|
| New ARR / ACV | 60-80% | Core production metric |
| New logos | 10-20% | If strategic priority |
| Multi-year contracts | Bonus (5-10%) | Rewards longer contracts |
| Renewal rate (CSM) | 20-40% | If renewal is in scope |
| Product mix (new product) | 10-20% | If new product launch is priority |

## Output Format

```markdown
# Commission Plan — <Role> at <Entity>
**Effective date:** <date> | **Approver:** <name> | **Plan year:** <year>

---

## Plan Summary

| Element | Value |
|---------|-------|
| Role | <title> |
| OTE | $<N> — $<N> range |
| Base salary | $<N> |
| Variable at 100% quota | $<N> |
| Base / Variable split | X% / X% |
| Commission rate (at quota) | X% of <metric> |
| Quota (annual) | $<N> |

---

## Commission Structure

| Attainment | Commission Rate | Estimated Payout |
|-----------|----------------|-----------------|
| < 50% | X% | $<N> |
| 50–99% | X% | Up to $<N> |
| 100% (target) | X% | **$<N>** |
| 101–120% | X% (accelerator) | Up to $<N> |
| > 120% | X% (kicker) | Uncapped |

---

## Measurement Metrics

| Metric | Weight | Definition | Pays on |
|--------|--------|-----------|---------|
| New ARR | X% | Signed contract value, first year | Contract signature |
| New logos | X% | Net-new accounts (no prior revenue) | First invoice paid |
| [Secondary metric] | X% | [Definition] | [Trigger] |

---

## Plan Rules

- **Draw:** [Yes/No] — Recoverable draw of $<N>/month for first <N> months
- **Clawback:** Commissions clawed back if customer cancels within <N> days of contract start
- **Cap:** [Uncapped / Capped at $<N>]
- **Payment timing:** Paid [monthly/quarterly] on [event: signature / first payment / etc.]
- **Multi-year deals:** Credit <N> months ACV (or full TCV) at signature

---

## Plan Risks and Gaming Scenarios

1. **Risk:** Reps could [gaming scenario] → **Guardrail:** [how the plan prevents it]
2. **Risk:** [Scenario] → **Guardrail:** [Protection]

---

## Approvals Required
- [ ] Sales leadership
- [ ] Finance / CFO
- [ ] HR / People Ops
- [ ] Legal (if employment contract modification needed)
```

## Output Contract
- OTE range always shown — base and variable components itemized
- Accelerator table always included — no plan without above-quota incentive
- Gaming scenarios always identified — plan designer must think like a rep who wants to maximize payout without maximum effort
- HITL required: Finance and HR must approve before any comp plan is communicated to reps; Dr. Lewis reviews for portfolio companies

## System Dependencies
- **Reads from:** Quota assignments, revenue targets, role definitions (provided)
- **Writes to:** Nothing (plan design for HITL review and legal/HR formatting)
- **HITL Required:** Finance approves cost model; HR approves employment terms; Dr. Lewis approves for MBL entity comp plans; Matt Mathison approves for strategic portfolio role plans

## Test Cases
1. **Golden path:** Mid-market AE comp plan, $120K OTE, 60/40 split → base $72K, variable $48K, 5% commission rate on new ARR to quota, 7.5% above, uncapped, clawback 90 days
2. **Edge case:** Rep asks to design their own commission plan → flags conflict of interest, requires comp plan to be designed by manager + Finance + HR, not by the rep themselves
3. **Adversarial:** Request to make a comp plan retroactively worse for reps mid-year → flags legal and morale risk, recommends implementing changes only at start of next plan year with advance notice

## Audit Log
Comp plans retained by role, entity, and plan year. Changes documented with effective date and approver.

## Deprecation
Retire when compensation management platform (Xactly, CaptivateIQ) handles plan design, calculation, and distribution with built-in approval workflows.
