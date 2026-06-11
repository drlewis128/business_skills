---
name: churn-post-mortem
description: "Conduct a post-mortem analysis after a customer churns. Use when the user says 'churn post-mortem', 'why did the customer leave', 'lost customer analysis', 'churn analysis', 'what happened with this account', 'customer churned post-mortem', or 'learn from churn'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--churn-date <date>] [--churn-type <voluntary|non-renewal|downgrade>]"
---

# Churn Post-Mortem

Conduct a structured post-mortem analysis after a customer churns. Every churn contains a lesson. Done consistently, churn post-mortems are the best feedback loop in the company — they reveal product gaps, CS process failures, sales qualification problems, and cultural misalignments.

## When to Use
- Within 30 days of any customer churn
- After a material downgrade (significant ACV reduction)
- When a pattern of churn emerges in a segment or cohort
- Quarterly churn review — rolling review of all churned accounts
- Preparing a churn analysis for board or LP reporting

## Post-Mortem Structure

### 1. What Happened (Factual Account)
- Timeline of events from signature to churn
- When did risk signals first appear?
- What interventions were attempted?
- What was the stated reason for churn?

### 2. Root Cause Analysis
**Stated reason vs. real reason** — Customers often give a polite reason at churn. The real reason is usually one of:
- Product gap (couldn't do something they needed)
- Value not demonstrated (they didn't know how to use it)
- Relationship breakdown (we lost our champion)
- Business change (acquisition, pivot, budget cut — often unavoidable)
- Competitive displacement (someone did it better)
- Sales misalignment (sold to a customer who wasn't a good fit)

### 3. What We Could Have Done Differently
Honest assessment — no blame language, but clear accountability.

### 4. What We're Changing
Specific process, product, or relationship improvements.

## Attribution Framework

| Root Cause | Category | Who Owns the Fix |
|-----------|---------|-----------------|
| Product feature gap | Product | Product team |
| Onboarding failure | CS process | CS Manager |
| Relationship breakdown | CS execution | CSM + CS Manager |
| Sales misqualification | Sales process | Sales Manager |
| Market conditions | External | Monitor; no fix needed |
| Pricing dissatisfaction | Pricing strategy | Dr. Lewis + Finance |

## Output Format

```markdown
# Churn Post-Mortem — <Account>
**Entity:** <MBL entity> | **Churn date:** <date> | **ACV:** $<N>
**Churn type:** Voluntary / Non-renewal / Downgrade | **Conducted by:** <CSM + CS Manager>

---

## Customer Overview

| Field | Detail |
|-------|--------|
| Customer since | <date> |
| Contract ACV | $<N> |
| Contract term | <N> months |
| Total revenue captured | $<N> |
| Renewal # | 1st / 2nd / etc. |
| Primary industry | <industry> |

---

## Timeline of Events

| Date | Event | Health Signal |
|------|-------|--------------|
| <date> | Contract signed | — |
| <date> | Kickoff completed | Green |
| <date> | First health score = X | Green |
| <date> | [Risk signal 1 first appeared] | Yellow |
| <date> | Intervention attempted: [type] | |
| <date> | [Second signal] | Red |
| <date> | Customer notified of non-renewal | — |

---

## Stated Reason for Churn
<Verbatim or paraphrased from exit conversation>

---

## Real Root Cause (Best Assessment)

**Primary root cause:** <Category>
**Evidence:** <What supports this assessment>
**Secondary factor (if any):** <Category> — <Evidence>

**Was this churn avoidable?** Yes / Possibly / No
**If yes — what was the pivot point?** <Earliest moment we could have changed the outcome>

---

## What We Could Have Done Differently

| Phase | What Happened | What We Should Have Done |
|-------|-------------|------------------------|
| Onboarding | [Specific] | [Specific alternative] |
| Adoption | | |
| Health monitoring | | |
| Intervention | | |

---

## Product Feedback (If Applicable)

**Feature gap:** <Description>
**Estimated accounts affected:** <N> (based on similar profile)
**Urgency:** High / Medium / Low
→ Deliver to Product leadership as a churn-driven feature request

---

## Process Changes

| Change | Category | Owner | Due |
|--------|---------|-------|-----|
| [Specific change] | CS process | CS Manager | <date> |
| [Change] | Sales qualification | Sales Manager | <date> |

---

## Was This a Systemic Signal?

**Similar churns in past 6 months:** <N>
**Common root cause:** [Consistent pattern or isolated incident]
**If systemic:** Escalate to leadership; update `churn-prevention-playbook`
```

## Output Contract
- Post-mortem always completed within 30 days — after that, context is lost
- Root cause distinguished from stated reason — the polite exit reason is rarely the real one
- Product feedback always packaged for delivery to Product if applicable
- Process changes always specific with owner and date
- HITL required: Dr. Lewis reviews post-mortems for accounts > $50K; systemic patterns escalated immediately

## System Dependencies
- **Reads from:** CRM account history, health score history, support tickets, CSM notes (provided)
- **Writes to:** Nothing (post-mortem for HITL review and process improvement)
- **HITL Required:** Dr. Lewis reviews all post-mortems > $50K ACV; CS Manager reviews all post-mortems; systemic patterns reported to Dr. Lewis and Matt Mathison

## Test Cases
1. **Golden path:** $65K ACV customer churned after 14 months → timeline shows champion departure (month 8) as pivot point, root cause is relationship breakdown, 2 process changes identified (earlier champion succession planning), 1 product feedback item
2. **Edge case:** Customer churned without any prior communication (sudden departure) → flags that no intervention was possible, investigates whether there were early signals that weren't visible, recommends deeper health signal monitoring
3. **Adversarial:** CSM wants to attribute churn to "market conditions" to avoid accountability → requires specific evidence for any external attribution, ensures controllable factors are examined before external blame is assigned

## Audit Log
Churn post-mortems retained by account and churn date. Root cause categories tracked for systemic pattern analysis.

## Deprecation
Retire when CS platform provides automated churn analytics with post-mortem templating and root cause tracking built into the workflow.
