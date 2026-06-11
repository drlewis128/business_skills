---
name: escalation-manager
description: "Manage a customer escalation from triage to resolution. Use when the user says 'customer escalation', 'escalated issue', 'angry customer', 'customer threatening to leave', 'manage this escalation', 'escalation plan', 'customer complaint', or 'how do we handle this escalation'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--severity <p1|p2|p3>] [--type <product|service|relationship|billing>]"
---

# Escalation Manager

Manage a customer escalation from initial triage through resolution and relationship repair. Escalations are a test of character — handled well, they build trust; handled poorly, they accelerate churn.

## When to Use
- Customer formally escalates a complaint
- Customer threatens to leave, cancel, or pursue legal action
- An operational failure affects a customer
- Executive at the customer contacts our executive about a problem
- A support issue has been open > 7 days without resolution

## Escalation Severity Framework

| Severity | Definition | Response Time | Owner |
|---------|-----------|--------------|-------|
| **P1 — Critical** | Customer is down, data at risk, or threatening immediate legal action | 1 hour | Dr. Lewis + CS Manager |
| **P2 — High** | Significant business impact, churn risk, or repeated failures | 4 hours | CS Manager + CSM |
| **P3 — Medium** | Frustration or service gap without immediate business impact | 24 hours | CSM with manager support |

## Escalation Protocol

### Phase 1: Triage (First 1–4 Hours)
1. **Acknowledge** — Contact the customer within the response time. Don't investigate before acknowledging.
2. **Understand** — What is the exact problem? What is the business impact to them?
3. **Classify** — Severity, type (product, service, relationship, billing)
4. **Activate** — Assign the right owner, loop in the right people

### Phase 2: Contain and Communicate (Ongoing)
- Update the customer every 4 hours (P1) or 24 hours (P2) until resolved — even if you have no new information
- Never go dark during an escalation; silence makes it worse
- One designated contact to the customer — don't have multiple people calling them

### Phase 3: Resolve
- Confirm the fix with the customer before closing the escalation
- Don't close it in your system before the customer confirms resolution
- Offer a resolution gesture if appropriate (see framework below)

### Phase 4: Relationship Repair
- Follow-up call from executive sponsor (P1 and P2)
- Post-resolution debrief: how do we prevent this from happening again?
- Update the success plan and health score

## Resolution Gestures (Requires Approval)

| Severity | Appropriate Gesture | Approval |
|---------|-------------------|---------|
| P1 | Service credit, extended contract term, direct exec call | Dr. Lewis |
| P2 | Service credit, priority access to feature, exec call | CS Manager |
| P3 | Apology + documented fix plan | CSM |

## Output Format

```markdown
# Escalation Manager — <Account>
**Date opened:** <date> | **Severity:** P1 / P2 / P3
**Type:** Product / Service / Relationship / Billing
**CSM:** <name> | **Escalation owner:** <name>

---

## Escalation Summary

**What happened:** <Clear, factual description — no blame language>
**Business impact to customer:** <What this is costing them in their terms>
**Customer's stated demand:** <What they want to happen>

---

## Triage Assessment

| Dimension | Assessment |
|-----------|-----------|
| Severity | P1 / P2 / P3 |
| Churn risk | High / Medium / Low |
| Reputational risk | High / Medium / Low |
| Root cause (preliminary) | Product / Process / People / Communication |

---

## Escalation Response Plan

**Immediate acknowledgment:** [Who contacts the customer, by when, what to say]
**Resolution owner:** [Name + role]
**Communication owner:** [Single customer-facing contact]
**Executive notification:** [Dr. Lewis / Matt Mathison — notified by: name + time]

---

## Communication Log

| Date/Time | Contact | Summary | Status |
|----------|---------|---------|--------|
| <date> | <CSM → Champion> | Acknowledged, investigating | Open |
| <date> | <CSM → Champion> | Update: root cause identified | In progress |
| <date> | <Dr. Lewis → Economic Buyer> | Executive call, committed to fix | Resolving |

---

## Resolution

**Root cause:** <What actually caused the issue>
**Fix implemented:** <What was done>
**Customer confirmed resolution:** Yes / No | Date: <date>
**Prevention measure:** <What we changed to prevent recurrence>

---

## Resolution Gesture

**Offered:** <None / Service credit $N / Extended term / Exec call>
**Customer accepted:** Yes / No
**Approval:** CSM Manager / Dr. Lewis (if > P3)

---

## Post-Escalation Health Assessment

**Health score impact:** -X points (from X to X)
**Renewal risk change:** <No change / Increased>
**Recommended follow-up action:** <Executive relationship repair / Normal cadence>
```

## Output Contract
- Acknowledgment time always tracked — no escalation where time-to-acknowledge is unknown
- Communication log always maintained — creates accountability and protects us legally
- Resolution confirmed by customer before closing — not closed internally until customer confirms
- HITL required: P1 escalations notify Dr. Lewis within 1 hour; resolution gestures require appropriate approval; post-escalation health score updated

## System Dependencies
- **Reads from:** Support ticket history, customer account data, contract terms (provided)
- **Writes to:** Nothing (escalation tracker for HITL management and resolution)
- **HITL Required:** Dr. Lewis is notified on all P1 escalations immediately; CS Manager manages P2 with Dr. Lewis visibility; resolution gestures require approval per framework

## Test Cases
1. **Golden path:** P2 product escalation, healthcare customer → acknowledged within 3 hours, root cause (integration bug) found in 24 hours, service credit $2,500 offered and accepted, executive call scheduled, health score updated
2. **Edge case:** Escalation where the customer is factually wrong about what was promised → documents the actual contract terms, handles with empathy and clarity, does NOT concede to false claims, escalates to legal if customer pursues false claims
3. **Adversarial:** Request to close the escalation as resolved without customer confirmation → refuses, requires customer confirmation before closing, flags that premature closure is a common re-escalation trigger

## Audit Log
Escalations retained by account, severity, type, and outcome. Resolution time tracked for CS team SLA monitoring.

## Deprecation
Retire when CS/support platform provides structured escalation workflows with SLA tracking, automated notifications, and resolution confirmation workflows.
