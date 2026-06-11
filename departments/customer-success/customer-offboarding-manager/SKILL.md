---
name: customer-offboarding-manager
description: "Manage a customer offboarding gracefully when they churn or cancel. Use when the user says 'customer is leaving', 'offboard this customer', 'handle the cancellation', 'manage the churn', 'customer offboarding', 'graceful exit', 'account is cancelling', or 'how do we offboard'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--reason <product|relationship|commercial|business-change>] [--win-back <possible|unlikely>]"
---

# Customer Offboarding Manager

Manage a customer offboarding gracefully when they churn or cancel. How you handle a departure determines whether a churned customer becomes a future win-back, a neutral past relationship, or an active detractor in the market. Graceful offboarding is brand protection and a future sales asset.

## When to Use
- Customer has confirmed they are not renewing
- Customer has requested account termination
- Contract is expiring and the customer has chosen not to renew
- After a save plan that did not succeed

## Offboarding Principles

1. **Don't grovel** — Once a customer has decided to leave, pushing back damages trust. Acknowledge the decision respectfully.
2. **Learn the real reason** — The customer is no longer a renewal at risk, so they may be more honest than during the save attempt.
3. **Leave the door open** — Circumstances change. Be the company they'd consider returning to.
4. **Honor the contract** — Fulfill all contractual obligations through the termination date.
5. **Make data export easy** — Don't hold their data hostage. It's their data.
6. **Ask for feedback** — Last chance to learn something actionable.

## Offboarding Checklist

### Commercial and Legal
- [ ] Confirm termination notice received and processed
- [ ] Confirm contract termination date
- [ ] Confirm any final invoices or credits
- [ ] Legal confirms no outstanding claims
- [ ] Auto-renewal cancelled (if applicable)

### Data and Access
- [ ] Customer provided data export / migration support
- [ ] Customer confirms data received
- [ ] User accounts disabled on termination date
- [ ] Data retention policy applied per contract

### Relationship
- [ ] CSM sends a farewell message to the champion
- [ ] Dr. Lewis or executive sponsor sends a note if it was a strategic account
- [ ] Exit interview offered (separate from the emotion of the departure)
- [ ] Churn post-mortem scheduled within 30 days

## Win-Back Potential Assessment

| Churn Reason | Win-Back Potential | Timeline |
|-------------|------------------|---------|
| Product gap (we add the feature) | High | 6–12 months |
| Business change (budget, acquisition) | Medium | 12–18 months |
| Pricing (we adjust) | Medium | Next cycle |
| Competitive displacement (they switch) | Low | 18–24 months |
| Relationship breakdown | Low (unless team changes) | Unknown |

## Output Format

```markdown
# Customer Offboarding Plan — <Account>
**Entity:** <MBL entity> | **Offboard date:** <date> | **CSM:** <name>
**Stated reason:** <customer's stated reason> | **Win-back potential:** High / Medium / Low

---

## Offboarding Status

| Task | Owner | Due Date | Status |
|------|-------|---------|--------|
| Termination notice confirmed | CSM | <date> | ✅ |
| Final invoice reviewed | Finance | <date> | ⬛ Pending |
| Data export delivered | CSM + IT | <date> | ⬛ Pending |
| User accounts disabled | IT | Termination date | ⬛ Scheduled |
| Exit interview offered | CSM | <date> | ⬛ |
| Farewell sent | CSM | <date> | ⬛ |
| Exec note sent (if strategic) | Dr. Lewis | <date> | ⬛ |
| Churn post-mortem scheduled | CS Manager | +14 days | ⬛ |

---

## Exit Interview Summary (If Conducted)

**Date:** <date> | **With:** <name>
**Real reason for departure:**
<What they said when no longer constrained by the renewal conversation>

**Would they return?** Yes / Maybe / No — **Conditions:**
<What would need to change for them to return>

**Referral or reference still willing?** Yes / No

---

## Farewell Communication (Draft)

**To:** <Champion>
**Subject:** Thank you for the partnership

"<Name>,

Thank you for the opportunity to work together over the past [tenure]. We're sorry to see you go — the team learned a great deal from working with [Company], and we wish you well.

Your data export is complete and accessible at [link/method]. Your access will remain active until [date].

If your situation ever changes or you'd like to reconnect, we'd love to hear from you. The door is always open.

[CSM Name]"

---

## Win-Back Plan (If Applicable)

**Win-back timeline:** <N> months
**Trigger:** [What needs to change — product feature, pricing adjustment, new champion]
**Follow-up owner:** <CSM or Sales> — check in at [timeframe]

---

## CRM Update

- [ ] Account status updated to "Churned"
- [ ] Churn date recorded
- [ ] Churn reason tagged (primary category)
- [ ] Win-back date set in CRM for future follow-up
- [ ] Revenue impact logged for Finance
```

## Output Contract
- Farewell communication always drafted — no customer leaves without a human sign-off from the relationship
- Data export checklist always completed — customers leaving must have full access to their data
- Exit interview always offered — last chance for honest feedback
- Win-back plan always assessed — some churned customers return
- HITL required: Dr. Lewis sends farewell for strategic accounts; CS Manager reviews all offboarding plans; Finance confirms commercial close-out

## System Dependencies
- **Reads from:** Contract terms, customer account records, data provision requirements (provided)
- **Writes to:** Nothing (offboarding plan for HITL review and execution)
- **HITL Required:** CS Manager reviews all offboarding plans; Dr. Lewis approves farewell for strategic accounts; Finance confirms final invoicing; Legal confirms clean contract termination

## Test Cases
1. **Golden path:** $65K ACV customer churning due to product gap → farewell sent by CSM and Dr. Lewis, data export completed 3 days early, exit interview reveals the specific feature gap, churn post-mortem scheduled, win-back flag set for 9 months (when feature is on roadmap)
2. **Edge case:** Customer churning with outstanding invoice dispute → does not send farewell until billing is resolved, routes to Finance + Legal first, keeps communication professional throughout
3. **Adversarial:** CSM wants to immediately deactivate the account to "cut ties" before the contract end date → refuses, confirms contractual obligations through the termination date, protects MBL from breach of contract exposure

## Audit Log
Offboarding plans and exit interview notes retained by account. Win-back pipeline tracked in CRM.

## Deprecation
Retire when CS platform provides automated offboarding workflows with data export management, contractual compliance tracking, and win-back pipeline features.
