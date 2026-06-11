---
name: renewal-manager
description: "Manage the customer renewal process from initiation to close. Use when the user says 'renewal', 'manage the renewal', 'renewal process', 'contract renewal', 'handle the renewal', 'renewal strategy', 'customer is up for renewal', or 'get the renewal closed'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--days-to-renewal <N>] [--risk <low|medium|high>]"
---

# Renewal Manager

Manage the customer renewal process from initiation to close. Renewals don't close themselves — a structured renewal process starts 120 days before expiration and drives toward a signed contract well before the deadline.

## When to Use
- 120 days before a contract renewal date (proactive start)
- Renewal risk identified (see `renewal-risk-identifier`)
- Preparing renewal proposal and commercial terms
- Expansion at renewal conversation planning
- Board or Finance reporting on renewal pipeline

## Renewal Timeline

| Days Before Renewal | Activity | Owner |
|-------------------|---------|-------|
| 120 days | Health check; set renewal strategy | CSM |
| 90 days | Initiate renewal conversation with champion | CSM |
| 75 days | Present renewal proposal (and expansion if appropriate) | CSM |
| 60 days | Executive alignment if needed | CS Manager / Dr. Lewis |
| 45 days | Legal and procurement engagement | CSM + Legal |
| 30 days | Follow up — get verbal commit | CSM |
| 15 days | Contract signature push | CSM |
| 0 days | Contract signed | Done |

## Renewal Strategy by Risk Level

### Low Risk (Health Score > 75)
- Lead with a QBR that demonstrates ROI delivered
- Present renewal as a straightforward continuation
- Propose expansion at the same conversation
- Aim to close 60 days before expiration

### Medium Risk (Health Score 50–74)
- Address concerns before the renewal conversation
- Schedule an executive call
- Consider a renewal incentive (annual prepay discount) to close early
- Do NOT present expansion until renewal is secured

### High Risk (Health Score < 50)
- Activate save plan first (see `churn-prevention-playbook`)
- Do NOT approach renewal until health is stabilized or you've had an honest conversation about what would need to change
- Be prepared for a difficult conversation about whether renewal is right for both parties

## Renewal Conversation Structure

### Opening (Establish the Value Foundation)
"Before we talk about the renewal, I want to make sure we're aligned on what we've accomplished together this year. [Summary of ROI + goals achieved]."

### The Ask
"Based on the value we've delivered and what we're planning to bring you next year, I'd like to propose continuing the relationship. Here's what we're proposing..."

### Handle Price Objections
- "What has your experience been worth to you?" — anchor to value before defending price
- If price concession needed: require a trade (multi-year term, expansion, reference) — never give a discount without getting something back

### The Close
Agree on terms verbally → send the contract within 24 hours → set a signature deadline

## Output Format

```markdown
# Renewal Management Plan — <Account>
**Entity:** <MBL entity> | **Renewal date:** <date> | **Days remaining:** <N>
**ACV:** $<N> | **CSM:** <name> | **Risk level:** Low / Medium / High

---

## Renewal Status

| Metric | Status |
|--------|--------|
| Health score | <N> — 🟢 / 🟡 / 🔴 |
| Last QBR | <date> |
| ROI documented | Yes / No |
| Champion health | Active / At risk |
| Economic buyer access | Yes / No |

---

## Renewal Strategy

**Strategy:** [Standard renewal / Save-first / Executive escalation]
**Expansion opportunity:** [Yes — see details / No — focus on clean renewal]
**Target close date:** <date — 30+ days before expiration>

---

## Renewal Proposal

| Line Item | Current ACV | Renewal ACV | Change |
|---------|------------|------------|--------|
| Core contract | $<N> | $<N> | No change |
| [Expansion — if applicable] | — | $<N> | New |
| Annual prepay discount (optional) | | -X% | If customer prepays |
| **Total renewal ACV** | **$<N>** | **$<N>** | |

**Term:** <N> months | **Expiration:** <new date>

---

## Renewal Conversation Timeline

| Date | Activity | Owner | Status |
|------|---------|-------|--------|
| <date> | Renewal strategy set | CSM | ✅ |
| <date> | Renewal conversation with champion | CSM | Scheduled |
| <date> | Executive alignment | CSM Manager | Pending |
| <date> | Contract sent | CSM | |
| <date> | Signature target | Customer | |

---

## Objection Prep

| Likely Objection | Response |
|----------------|---------|
| "We need to reduce cost" | "What has [product] been worth to you this year? [ROI number]. What would you reduce to get that same value elsewhere?" |
| "We want to evaluate alternatives" | "What's driving that? [Understand root cause]. If [concern] is addressed, would you be comfortable renewing?" |
| "Our budget is frozen" | "When does budget open? Can we agree on terms now and set a signature date aligned with your budget cycle?" |
```

## Output Contract
- Renewal always started at 120 days — no exceptions for high-value contracts
- Risk level always determines strategy — no one-size-fits-all approach
- Expansion never presented before renewal is secure for at-risk accounts
- HITL required: Dr. Lewis approves any renewal with discount > 10% or strategic term change; Finance reviews ACV change before signature

## System Dependencies
- **Reads from:** Health score from `customer-health-scorer`, ROI data from `customer-roi-review`, contract terms (provided)
- **Writes to:** Nothing (renewal plan for HITL management)
- **HITL Required:** Dr. Lewis reviews all high-risk renewals; CS Manager manages medium-risk renewals; Finance approves any ACV reduction; Matt Mathison visibility on renewals > $100K

## Test Cases
1. **Golden path:** $75K ACV renewal, 90 days out, low risk → QBR completed with strong ROI, renewal proposal with +15% expansion, target close 45 days early, objection prep for price conversation
2. **Edge case:** Auto-renewal provision in contract → flag to customer 60 days before trigger, ensure they want to continue, don't rely on auto-renewal as a substitute for a relationship conversation
3. **Adversarial:** CSM wants to offer 20% discount to close a renewal without manager approval → blocks unauthorized discount, routes to approval chain, recommends understanding root cause of the renewal risk before making financial concessions

## Audit Log
Renewal plans and outcomes retained by account and renewal year. Renewal close rate tracked as a core CS KPI.

## Deprecation
Retire when CS platform provides automated renewal pipeline with built-in timeline tracking, proposal generation, and executive escalation triggers.
