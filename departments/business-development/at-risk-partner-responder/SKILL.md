---
name: at-risk-partner-responder
description: "Respond to an at-risk partner relationship. Use when the user says 'partner is at risk', 'partner going quiet', 'at-risk partner', 'partner disengaged', 'recover a partner relationship', 'partner not referring', 'partner stopped engaging', 'revive a partner relationship', 'partner churn risk', or 'save a partner relationship'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--risk-signal <gone-quiet|contact-left|no-referrals|competitor-poaching>]"
---

# At-Risk Partner Responder

Build a response plan for a partner relationship that is showing warning signs — before it fully disengages. The window for recovering an at-risk partner is finite: once a partner has mentally exited the partnership (even if they haven't formally terminated), it's very hard to rebuild. The goal is to intervene early, identify the specific blocker, and address it with a concrete change — not a call to "check in."

## When to Use
- A partner's health score drops to 🟡 or 🔴
- A partner hasn't submitted a referral in 60+ days
- A partner's primary contact left the company
- A partner is responding to us less frequently or has missed a QBR
- Intelligence suggests a competitor has approached the partner with a better offer

## At-Risk Signals and Root Causes

```
At-risk signal → most likely root cause → response approach

Gone quiet (no response to 2+ outreach attempts):
  → Champion is overwhelmed / changed role / left
  → Response: find new champion before diagnosing the relationship

No referrals in 60+ days (was previously active):
  → (a) Partner doesn't have qualifying leads in their pipeline right now
  → (b) Partner forgot / deprioritized
  → (c) A friction point in the referral process
  → (d) Partner is unhappy with how we handled a prior referral
  → Response: direct conversation — ask "what's getting in the way?"

Referral quality has declined (noise referrals):
  → Partner is referring to seem active without real qualifying activity
  → Response: reset the ICP understanding; reinforce quality over quantity

Contact left:
  → The institutional knowledge of the partnership is gone
  → Response: establish new champion urgently — every day without one is a liability

Competitor approach:
  → Partner is being offered better economics or a competing partnership
  → Response: competitive response — know what the competitor is offering;
     defend with value, not just economics; consider tier upgrade if warranted
```

## Output Format

```markdown
# At-Risk Partner Response Plan — <Partner Name>
**Risk signal:** [Gone quiet / No referrals / Contact left / Competitor / Quality decline]
**Health score:** [X/100 🟡/🔴] | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Situation Summary

**Partner:** [Name]
**Relationship since:** [Date]
**Last referral:** [Date / N days ago]
**Last contact:** [Date / N days ago]
**Current contact:** [Name, title — or "Unknown — contact left"]
**Revenue in last 90 days:** $[X] (vs. $[Y] prior 90 days — [↑ / ↓ / → trend])

**What's changed:** [1-2 sentences — what is the specific signal that triggered this response plan]

---

## Root Cause Hypothesis

Based on the signals above, the most likely root cause is:
☐ Champion left — need to re-establish relationship with new contact
☐ Partner is overwhelmed / deprioritized us
☐ Friction in referral process
☐ Unhappy with how a prior referral was handled
☐ Competitor offering better terms
☐ Their client base has shifted away from our ICP
☐ Other: [Specific hypothesis]

**We will confirm or correct this hypothesis on the outreach call.**

---

## Response Plan

### Step 1: Outreach (Day 1-3)

**Channel:** [Email / LinkedIn / Phone — use the channel most likely to reach them]
**Who:** Dr. John Lewis (or CEO for top-tier partners)
**Tone:** Genuine curiosity — not accusatory, not desperate

**Message frame:**
> "I wanted to reach out personally — I realized we haven't connected in a while and I wanted to see how things are going on your end. We value the partnership with [Company] and want to make sure we're showing up well for you."

**Avoid:**
- "I noticed you haven't sent any referrals" — accusatory; starts the conversation on the defensive
- "Just checking in" — vague and forgettable
- Leading with what we need from them

---

### Step 2: Recovery Call (within 5-7 days of first contact)

**Format:** 20-30 minutes (video preferred for relationship repair)
**Agenda — we ask, they answer:**

1. "What's been top of mind for you lately?" (context — why they've been quiet)
2. "Is there anything about our partnership that's felt off or that we could do better?" (open door for honest feedback)
3. "When you think about making referrals, what's the biggest friction point right now?" (specific — diagnose the problem)
4. "Is there anything we can do from our side to make this easier for you?"

**We share at the end (3 minutes):**
- Recent wins we've had with clients they'd recognize
- Any product or service updates that improve the referral story
- "Here's what we're hoping to accomplish together in the next 90 days"

**Recovery call goal:** Identify the specific blocker and agree on one concrete next action.

---

### Step 3: Response Based on Root Cause

| Root cause confirmed | Response |
|---------------------|---------|
| Champion left | Establish new champion: warm intro from their leadership; re-onboard new contact with full enablement kit; reset relationship |
| Overwhelmed / deprioritized | Remove friction: simplify referral process; offer to handle more of the legwork; set monthly reminder together |
| Referral process friction | Fix the specific friction: faster response SLA, clearer status updates, simpler submission process |
| Unhappy with prior referral handling | Acknowledge and apologize specifically; explain what changed; demonstrate with one fast referral experience |
| Competitor offering better terms | Know the competitor's offer; respond with value argument first; consider tier upgrade if warranted; escalate to Matt Mathison if economics change is needed |
| ICP shift | Requalify: can we adjust our ICP to fit their evolving customer base? If not, have honest wind-down conversation |

---

### Step 4: 30-Day Follow-Up

After the recovery call and response action, check in at 30 days:
- Did we make the agreed-upon change?
- Has the partner made any referrals since?
- Is the relationship improving?

If health score hasn't improved after 30 days: escalate to Matt Mathison — decide whether to invest more or begin a structured wind-down.

---

## Decision: Recovery vs. Wind-Down

| Signal | Recovery (invest more) | Wind-down (graceful exit) |
|--------|----------------------|--------------------------|
| Contact still present and responsive | ✅ | |
| Root cause is identifiable and fixable | ✅ | |
| Revenue potential if recovered >$25K | ✅ | |
| Contact left with no successor | | Consider wind-down |
| Root cause is "we're not the right fit anymore" | | Wind-down |
| Partner explicitly working with a competitor exclusively | | Wind-down |
| <2 referrals in 12 months despite recovery effort | | Wind-down |

---

## Matt Mathison Summary

[Partner] is 🟡/🔴 health ([X/100]). Primary signal: [1 sentence — what's changed]. Root cause hypothesis: [1 sentence]. Response plan: [1 sentence — what we're doing]. **Matt Mathison decision needed:** [Approval to offer tier upgrade / input on competitor response / approval to wind down / None — Dr. Lewis managing]
```

## Output Contract
- Root cause hypothesis always explicit — "partner isn't active" is not a root cause; the response plan must identify the most likely reason and a plan to confirm or correct it on the recovery call; treating symptoms without understanding causes is how partnerships end up in the wind-down column
- Recovery call is always on the calendar before the response plan is considered complete — a response plan that is a list of things to do "eventually" is not a response plan; the call must be scheduled within 7 days of the plan being generated
- Decision framework always included — every at-risk partner response must explicitly evaluate recovery vs. wind-down; continuing to pour BD time into a relationship that should be wound down is a cost; the output must force this decision
- HITL required: Dr. Lewis manages at-risk responses; 🔴 health score triggers Matt Mathison notification within 1 week; any offer to upgrade partner tier as a retention tactic requires Matt Mathison approval; wind-down decisions require Matt Mathison approval; competitive response tactics (matching competitor economics) require Matt Mathison approval

## System Dependencies
- **Reads from:** Partner health score, CRM (referral activity), communication history, partner agreement
- **Writes to:** At-risk response log (SharePoint/BD/Partners/<Partner>/At-Risk); partner health tracker; Matt Mathison summary if 🔴
- **HITL Required:** Dr. Lewis manages; Matt Mathison notified for 🔴 partners; tier changes and economics changes require Matt Mathison; wind-down requires Matt Mathison

## Test Cases
1. **Golden path:** Allevio referral partner (previously 4 referrals/quarter) has submitted 0 referrals in 90 days → Health: 42/100 🔴; Signal: gone quiet + no referrals; Outreach call Day 2: "I wanted to reach out personally"; Recovery call Day 5: "The person we referred to last time said it took 3 weeks to get a response — we felt a little embarrassed for making the introduction"; Root cause confirmed: prior referral handling was slow; Response: apologized specifically; showed new 48-hour response SLA; sent case study of 3 recent fast wins; offered to do a joint introduction call with next prospect; 30-day result: partner submitted 2 referrals; health score recovered to 68
2. **Edge case:** At-risk partner's champion left and there is no obvious successor — the company is 3 people → this is the hardest recovery scenario; contact the partner's CEO or owner directly; frame as "I wanted to reach out personally since [Name] moved on — I didn't want our partnership to lose momentum"; if the CEO/owner has no knowledge of the partnership (the champion was the only connection), this may be a wind-down situation; assess whether re-onboarding the owner is realistic before investing more time
3. **Adversarial:** A competitor has approached the partner and offered a higher referral fee (competitor fee: 25%, our fee: 20%) → don't immediately match the fee without evaluation; first, make the value argument: "We understand you've heard from [Competitor]. Here's what we'd ask you to consider: [specific value points — faster payout, better client experience, track record with your referrals]; if that doesn't hold, evaluate whether 25% works in our unit economics; escalate to Matt Mathison with a recommendation before making any counter-offer; don't let urgency pressure an economics decision that should be deliberate

## Audit Log
At-risk partner response plans retained. Recovery call notes documented. Root cause confirmed vs. hypothesis logged. Recovery outcomes tracked (recovered / wound down / still at risk). Economic concessions approved by Matt Mathison and logged.

## Deprecation
Retire when portfolio companies have dedicated partner success managers who own at-risk intervention as a standard, CRM-triggered workflow.
