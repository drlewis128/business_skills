---
name: sales-call-prep
description: "Prepare for a sales call or discovery meeting. Use when the user says 'call prep', 'prep for this meeting', 'sales call prep', 'discovery call prep', 'prepare for prospect call', 'meeting prep', 'prospect meeting prep', or 'what should I ask on this call'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<company-name> <contact-name> [--call-type <discovery|demo|follow-up|close>] [--duration <minutes>]"
---

# Sales Call Prep

Prepare a structured brief for a sales call or meeting. Reps who prepare outperform those who don't by 50%+ on close rates. This skill eliminates the excuse for going in cold.

## When to Use
- Before any prospect call (discovery, demo, follow-up, close attempt)
- Before a re-engagement call with a stalled deal
- Before Matt Mathison or Dr. Lewis takes a partner or strategic prospect call
- Pre-meeting for any account above $25K in potential value

## Call Types and Objectives

| Call Type | Primary Objective | Success Criteria |
|---------|-----------------|----------------|
| **Discovery** | Understand the problem, validate ICP fit, identify budget/authority/timeline | Mutual agreement there's a problem worth solving and a reason to continue |
| **Demo** | Show the solution maps to their specific pain | Prospect articulates value in their own words |
| **Follow-up** | Advance the deal, address objections | Clear next step agreed to before hanging up |
| **Close** | Reach a decision | Signed agreement or firm next step toward signature |

## Call Prep Framework

### 1. Know the Prospect
- Company background (see `prospect-research`)
- Contact's role and decision authority
- Prior conversation history (what was said, what was promised)

### 2. Define the Objective
What is the ONE thing that would make this call successful? Write it down.

### 3. Opening (First 90 Seconds)
- Purpose: Confirm agenda and give prospect control ("Does that work for you?")
- Build rapport: Reference something specific and genuine
- Set the stage: "I want to make sure we use your time well"

### 4. Questions (Discovery Calls)
Lead with situational, then move to problem, then implication, then value.
- **Situation:** What does their current state look like?
- **Problem:** What's not working?
- **Implication:** What happens if this isn't solved?
- **Value:** What would solving it be worth?

### 5. Anticipated Objections
For each likely objection: what's the response?

### 6. The Ask
What will you ask for at the end of this call? (Never end a call without a clear ask)
- Qualified → Book a demo
- Demo done → Send proposal / set close call
- Proposal out → Get a decision timeline

## Output Format

```markdown
# Sales Call Brief — <Company Name>
**Contact:** <name, title> | **Date:** <date/time> | **Duration:** <N> min
**Call Type:** Discovery / Demo / Follow-up / Close
**Entity/Product:** <what we're selling>

## Objective
**One thing that would make this call a success:** <specific, measurable>

## Prospect Context
**Company:** <2-sentence summary>
**Contact:** <role, tenure, decision authority>
**Prior history:** <what's been discussed, what was promised, where deal stands>
**Trigger / reason to call now:** <why now>

## Call Agenda (Share with Prospect at Open)
1. Confirm priorities for today (2 min)
2. <Main topic> (15 min)
3. <Demo or discussion> (15 min)
4. Next steps (5 min)

## Discovery Questions (Prioritized)

**Must ask:**
1. "<Question>" — listening for: <what a good answer sounds like>
2. "<Question>"

**If time:**
3. "<Question>"

## Anticipated Objections and Responses

| Objection | Response |
|---------|---------|
| "We're happy with our current solution" | <response> |
| "We don't have budget right now" | <response> |
| "I need to talk to <X> first" | <response> |

## The Ask (How to Close This Call)
At the end: "<Specific close language — next step request>"

If they say yes: <what you'll send / schedule>
If they say not yet: <how to keep momentum without being pushy>

## Red Flags to Watch For
- <Signal that this prospect isn't qualified>
- <Signal that this deal is stuck>

## Success Criteria for This Call
- [ ] Confirmed problem and impact
- [ ] Identified decision-maker and process
- [ ] Got a specific next step with date
```

## Output Contract
- Single objective always defined before the call
- The Ask always defined — no call ends without a prepared next-step request
- Anticipated objections always prepared with responses
- HITL required before executive-level calls (Matt Mathison, Dr. Lewis) — brief reviewed and approved

## System Dependencies
- **Reads from:** Prospect research, CRM deal notes, prior conversation history (provided)
- **Writes to:** Nothing (call brief for rep use)
- **HITL Required:** Executive calls reviewed by Dr. Lewis before taking; key close calls reviewed by sales manager

## Test Cases
1. **Golden path:** Discovery call with healthcare operations director → brief with company context, 4 discovery questions with listening notes, 2 anticipated objections, specific next-step ask
2. **Edge case:** No prior context available (blind call) → brief with inferred pain based on ICP, more open-ended discovery questions, emphasis on qualifying fit
3. **Adversarial:** Rep wants to skip prep ("I know this company well") → surfaces that even familiar accounts benefit from written objectives and explicit next-step language

## Audit Log
Call briefs retained by account and date. Post-call notes linked.

## Deprecation
Retire when CRM provides AI-generated call prep from deal history and contact enrichment.
