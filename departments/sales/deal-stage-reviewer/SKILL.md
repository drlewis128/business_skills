---
name: deal-stage-reviewer
description: "Review a deal's stage accuracy and identify what's needed to advance it. Use when the user says 'review this deal', 'is this deal in the right stage', 'where is this deal', 'deal review', 'stage check', 'pipeline review', 'deal assessment', or 'help me advance this deal'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<deal-or-account-name> [--stage <current-stage>] [--value <amount>]"
---

# Deal Stage Reviewer

Assess a deal's current stage accuracy, identify gaps blocking advancement, and output a specific next-action plan. CRM stages are often optimistic — this skill applies objective criteria to verify stage placement and surface what's actually needed to move the deal forward.

## When to Use
- Weekly pipeline review (is each deal actually where the rep says it is?)
- Before a forecast call (verify commits are real commits)
- Deal has been stuck in a stage for > 2 weeks
- Rep is unsure why a deal isn't advancing
- Preparing for an executive deal review with Matt Mathison

## Stage Criteria Framework

### Stage 1: Prospecting / Identified
**Entry criteria:** Account fits ICP, contact identified
**Exit criteria (to move to Stage 2):**
- [ ] Initial outreach made
- [ ] Phone number or email confirmed
- [ ] Reason to contact (trigger event or pain point) documented

### Stage 2: Qualified / Discovery Scheduled
**Entry criteria:** Prospect responded; meeting scheduled
**Exit criteria (to move to Stage 3):**
- [ ] Pain / problem confirmed (in their words)
- [ ] Budget exists or can be created
- [ ] Decision-making process understood
- [ ] Timeline established
- [ ] Access to economic buyer path identified

### Stage 3: Demo / Solution Presented
**Entry criteria:** Discovery complete; demo or solution meeting done
**Exit criteria (to move to Stage 4):**
- [ ] Prospect confirmed the solution addresses their core pain
- [ ] Identified stakeholders who must approve purchase
- [ ] Champion established (someone internally advocating for us)
- [ ] Pricing range acknowledged (no sticker shock surprise)

### Stage 4: Proposal Sent
**Entry criteria:** Formal proposal delivered to prospect
**Exit criteria (to move to Stage 5):**
- [ ] Prospect reviewed proposal with decision-maker
- [ ] Legal/procurement engaged (if required)
- [ ] Decision timeline confirmed
- [ ] Any outstanding objections identified and addressed

### Stage 5: Negotiation / Verbal Commit
**Entry criteria:** Prospect verbally committed to moving forward
**Exit criteria (to move to Stage 6 / Closed-Won):**
- [ ] Contract terms agreed
- [ ] Legal redlines resolved
- [ ] Signature authority confirmed
- [ ] Payment terms agreed
- [ ] Start date confirmed

### Stage 6: Closed-Won
Contract signed and countersigned. Deal booked.

### Stage 0: Closed-Lost
Document: Why lost? Competitor? Internal? Timing? Use `win-loss-analyzer`.

## Deal Health Signals

### Green Flags (Deal is Progressing)
- Prospect is taking next steps without prompting
- Economic buyer engaged
- Timeline has not moved
- Prospect sharing internal information (org charts, budget cycles)

### Red Flags (Deal is at Risk)
- No contact from prospect in > 7 days
- "I'll forward this to my team" with no follow-up
- Timeline keeps slipping
- Only speaking to one person (no access to decision-maker)
- "We love it but..." without a clear path to yes

## Output Format

```markdown
# Deal Stage Review — <Account Name>
**Date:** <date> | **Rep:** <rep> | **Deal Value:** $<N>

## Current vs. Verified Stage

| Assessment | Stage |
|-----------|-------|
| Stage in CRM | Stage <N> — <label> |
| Verified stage | Stage <N> — <label> |
| Variance | None / 1 stage behind / 2 stages behind |

## Stage Exit Criteria Check (Current Stage)

| Criterion | Status | Evidence |
|-----------|--------|---------|
| [Criterion 1] | ✅ Met / ❌ Not met / ⚠️ Partial | [Note] |
| [Criterion 2] | ✅ Met | [Note] |
| [Criterion 3] | ❌ Not met | Missing |

## Deal Health Assessment

**Overall health:** 🟢 On track / 🟡 At risk / 🔴 Stalled

**Green flags:**
- <Positive signal>

**Red flags:**
- <Risk signal>

## What's Blocking Advancement

1. **[Blocker]** — Required action: [specific action]
2. **[Blocker]** — Required action: [specific action]

## Next 3 Actions (Ranked by Priority)

1. **[Action]** — Owner: <rep> | Due: <date>
2. **[Action]** — Owner: <rep> | Due: <date>
3. **[Action]** — Owner: <rep> | Due: <date>

## Recommended Stage (Adjust CRM To)
**Move CRM from Stage <N> to Stage <N>** / **Keep at Stage <N> — criteria met**

## Risk of Loss
**Loss probability:** Low / Medium / High
**Key risk:** <specific reason deal could die>
**Mitigation:** <specific recommended action to reduce risk>
```

## Output Contract
- Verified stage always compared to CRM stage — discrepancies flagged
- Every blocker paired with a specific action — not just problem identification
- Next 3 actions always concrete, owned, and dated
- HITL required before rep is directed to adjust forecast based on stage review

## System Dependencies
- **Reads from:** CRM deal notes, stage criteria (this skill), deal context (provided)
- **Writes to:** Nothing (review for HITL discussion with rep)
- **HITL Required:** Sales manager reviews stage changes before CRM update; Dr. Lewis reviews any deal > $50K that is downgraded in stage

## Test Cases
1. **Golden path:** Deal listed in Stage 4 (Proposal Sent) but economic buyer never engaged → verified at Stage 3, three blockers identified, specific actions to engage economic buyer
2. **Edge case:** Deal stuck for 30+ days with no activity → stalled flag, loss risk assessed as High, recommends either forcing a decision conversation or closing the deal lost to clean the pipeline
3. **Adversarial:** Rep reports deal is in Stage 5 (Verbal Commit) with no documented champion or economic buyer engagement → refuses to validate Stage 5, surfaces specific criteria that aren't met

## Audit Log
Stage reviews retained by deal and date. Stage downgrades documented with rationale.

## Deprecation
Retire when CRM provides AI-powered deal health scoring with automated stage exit criteria validation.
