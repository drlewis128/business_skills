---
name: sales-discovery-framework
description: "Run structured discovery calls for MBL portfolio company sales. Use when the user says 'discovery call', 'discovery', 'needs assessment', 'qualifying call', 'first call framework', 'what to ask', 'sales questions', 'discovery questions', 'needs analysis', 'discovery framework', 'discovery process', 'understand the prospect', 'find out what they need', 'discovery meeting', 'diagnostic conversation', 'buyer needs', 'pain discovery', 'budget discovery', 'decision process discovery', 'MEDDIC', 'BANT', 'discovery debrief', or 'what did we learn from the call'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--prospect <name>] [--action <prepare|debrief|score>] [--stage <first-call|follow-up>]"
---

# Discovery Framework

Run structured discovery calls for MBL portfolio companies — uncovering the prospect's situation, pain, urgency, budget, decision process, and success criteria before proposing a solution. Discovery is the highest-leverage part of the sales process: a rep who listens and asks the right questions wins more than a rep who talks and pitches. The output of a great discovery call is a qualified or disqualified opportunity with documented rationale — not a scheduled demo.

## When to Use
- Preparing for an initial discovery call with a new prospect
- Debriefing after a discovery call to capture what was learned
- Scoring the quality of a discovery call to determine next steps
- Training a new sales rep on discovery methodology

## Discovery Framework

```
DISCOVERY QUALIFICATION FRAMEWORK (MEDDPICCC — adapted for MBL portfolio):

  M — Metrics: What does success look like in numbers?
    Questions:
      "What does your healthcare cost per employee look like today?" (Allevio)
      "What CPM are you paying for CTV inventory right now?" (Column6)
      "What's the current bonus on mineral leases in your area?" (HIVE)
    Goal: Understand the baseline so the proposal shows a quantified improvement
    
  E — Economic Buyer: Who actually approves the spend?
    Questions:
      "Who else will be involved in making this decision?"
      "Has the budget already been approved or does it require sign-off?"
      "Who typically has the final say on benefits decisions like this?" (Allevio)
    Goal: Map the entire buying committee; don't waste time with people who can't say yes
    
  D — Decision Criteria: How will they make the choice?
    Questions:
      "What would make this an easy yes for your team?"
      "If you're comparing options, what are the most important factors?"
      "Is this a price decision, a capability decision, or a relationship decision?"
    Goal: Understand what they're actually optimizing for so we can align the proposal
    
  D — Decision Process: What's the path from interest to signature?
    Questions:
      "Walk me through how a decision like this typically gets made."
      "Are there any internal approvals, legal reviews, or procurement processes?"
      "What's your timeline — is there a date you need this in place?" (Allevio open enrollment)
    Goal: Understand the buying timeline and identify hidden obstacles (legal review; board approval)
    
  P — Pain: What happens if they don't solve this?
    Questions:
      "What's the business impact of your current healthcare costs continuing at this level?" (Allevio)
      "What happens if you don't diversify your CTV supply for Q4?" (Column6)
      "If the landowner next door signs with another operator first, what does that mean for you?" (HIVE)
    Goal: Make the pain tangible — a prospect who doesn't feel urgency will not decide
    
  I — Identified Pain: Have they already acknowledged they have a problem?
    Questions:
      "You mentioned your claim ratio is above 80% — is that something leadership is focused on?"
      "Has the cost of your current media buying been a point of discussion internally?"
    Goal: Confirm the pain is acknowledged, not just suspected — an unacknowledged pain won't drive action
    
  C — Champion: Do we have someone who will sell internally for us?
    Questions:
      "If this is a good fit for your company, who would be your biggest internal advocate?"
      "When you've brought ideas like this to leadership, how have they typically responded?"
    Goal: Identify the champion; if there's no champion, the deal won't close
    
  C — Competition: What alternatives are they considering?
    Questions:
      "Are you talking to anyone else about this?"
      "If you didn't choose us, what would you do instead?"
      "Have you looked at [specific competitor] for this?" (Allevio: Blue Cross; United; Aetna)
    Goal: Understand the competitive landscape so the proposal can differentiate on the right dimension
    
  C — Compelling Event: Is there a deadline that creates urgency?
    Questions:
      "Is there a specific date you need this resolved by?"
      "When does your current contract expire?" (Allevio: benefits renewal; Column6: existing IO)
      "Is there an upcoming board meeting or planning cycle where this needs to be decided?"
    Goal: Identify a natural deadline — a deal without a compelling event will drift indefinitely

DISCOVERY CALL STRUCTURE (60 minutes):
  0-5 min: Rapport and agenda setting ("Here's what I'd like to cover today...")
  5-20 min: Current situation (M — Metrics; I — Identified Pain)
  20-35 min: Pain and urgency (P — Pain; C — Compelling Event)
  35-45 min: Decision process (E — Economic Buyer; D — Decision Criteria; D — Decision Process)
  45-55 min: Competition and champion (C — Competition; C — Champion)
  55-60 min: Next steps (specific; with a date)
  
DISCOVERY DEBRIEF — AFTER EVERY CALL:
  Log in CRM within 1 hour of the call:
    □ What did we learn? (Metrics; pain; decision process; champions; competition)
    □ What are the key unknowns? (What do we still need to learn?)
    □ Qualification verdict: Qualified / Qualified with questions / Disqualified
    □ Recommended next step: Proposal / Follow-up call / Disqualify / Introduce to CEO
    □ Deal value estimate (ACV) and close date estimate
```

## Output Format

```markdown
# Discovery Call Debrief — [Prospect] | [Entity]
**Call date:** [Date] | **Participants:** [Names and titles] | **Duration:** [X] minutes
**Rep:** [Name] | **Qualification verdict:** Qualified / Disqualified / Needs follow-up

---

## What We Learned

| MEDDPICCC Element | Status | Detail |
|------------------|--------|--------|
| Metrics (baseline) | ✅ / ❓ | [Current PMPM / CPM / other baseline] |
| Economic Buyer | ✅ / ❓ | [CFO controls budget; HR Director is champion] |
| Decision Criteria | ✅ / ❓ | [Cost reduction first; network quality second] |
| Decision Process | ✅ / ❓ | [HR Dir. recommends; CFO approves; 30-day legal review] |
| Pain (acknowledged) | ✅ / ❓ | ["Our claim ratio hit 88% — leadership is watching this"] |
| Champion identified | ✅ / ❓ | [Jennifer (HR Dir.) — she'll advocate with the CFO] |
| Competition | ✅ / ❓ | [Evaluating Blue Cross and one local competitor] |
| Compelling event | ✅ / ❓ | [Open enrollment deadline: November 15] |

---

## Key Unknowns (Gaps to Close)

- [ ] [Budget: The CFO hasn't confirmed a budget has been allocated]
- [ ] [Competing offer: Don't know the local competitor's pricing]

---

## Recommended Next Step

**Action:** [Build and send a formal proposal]
**By:** [Rep name] | **By date:** [Date]
**Deal value estimate:** $[X]K/year | **Close date estimate:** [Date]
**Confidence:** High / Medium / Low — [reason]
```

## Output Contract
- Document within 1 hour of the call — memory of discovery calls decays fast; the discovery debrief must be logged in CRM within 1 hour of the call while the detail is still available; a debrief written 3 days later is a reconstruction, not a record; Dr. Lewis enforces the 1-hour logging rule for all discovery calls and reviews CRM logs in the weekly pipeline review to confirm they are complete
- Unknown elements are more important than known elements — the discovery debrief should be as clear about what we don't know as about what we do know; a debrief that shows 8 MEDDPICCC elements as "confirmed" when 3 are actually unknown is a false sense of qualification security; Dr. Lewis flags any debrief where the Economic Buyer, Decision Process, or Compelling Event is unknown and requires the rep to close those gaps in the next conversation before the deal advances to Proposal
- Disqualification after discovery is a win — a rep who discovers that a prospect has no budget, no compelling event, and the decision is made by a committee that won't meet for 8 months has performed a valuable service: they have freed the time from a deal that was never going to close; disqualifying a prospect after discovery is not a failure, it is the discovery framework working correctly; Dr. Lewis positively reinforces disqualification decisions that are well-documented and rationale-based
- HITL required: Sales rep conducts the call and logs the debrief; Dr. Lewis reviews the debrief in the pipeline review and challenges weak qualifications; CEO reviews the debrief before a formal proposal is built for any opportunity >$50K (to confirm the discovery is complete enough to justify the proposal investment); deals that advance to Proposal without complete MEDDPICCC documentation are flagged by Dr. Lewis for follow-up

## System Dependencies
- **Reads from:** ICP (sales-ideal-customer-profile — qualification criteria to apply during the call); prior CRM activity (GoHighLevel — what do we know about this prospect before the call?); competitive intelligence (sales-competitive-intel — who are the competitors to ask about?); pricing model (fpa-annual-budget-builder — PMPM and CPM ranges to assess budget fit); prior call notes (if a follow-up discovery call)
- **Writes to:** CRM discovery debrief (GoHighLevel — within 1 hour of call); pipeline stage update (move to Discovery stage; update deal value estimate; update close date estimate); qualification verdict (for sales-pipeline-manager — is this deal qualified?); discovery gaps (open questions to close in the next conversation); proposal prep notes (if the deal is qualified — what did we learn that goes in the proposal?)
- **HITL Required:** Sales rep conducts and logs; Dr. Lewis reviews debriefs in the weekly pipeline review; CEO reviews for any opportunity >$50K before a proposal is built; Dr. Lewis does not override the rep's qualification verdict without a conversation about the specific elements; disqualification decisions are made by the rep or CEO — not by Dr. Lewis alone

## Test Cases
1. **Golden path:** Allevio discovery call with HR Director at a 175-employee Scottsdale construction company → Rep asks: Current PMPM: "$118"; Claim ratio: "87% — our CFO is furious"; Decision process: "I recommend to our CFO; he has final authority; we've never done a procurement process for benefits"; Decision criteria: "Cost reduction is #1; we need the network to cover our employees in Maricopa"; Champion: HR Director herself — "I'll be pushing this"; Competition: "I'm looking at one other company but I haven't seen their pricing yet"; Compelling event: "Open enrollment is November 15 — we need to be decided by October 15"; Debrief: All 8 MEDDPICCC elements confirmed or near-confirmed; one unknown (competing company's pricing); verdict: Qualified; next step: Proposal within 5 days; deal value: $246,540/year ($118 → $85 PMPM × 175 × 12); deal is moved to Discovery stage; proposal to be built
2. **Edge case:** Column6 discovery call with a media planner at a large holding company agency — after 30 minutes, the rep learns that the planner has no budget authority (the agency's programmatic buying is controlled by a central trading desk the planner has never worked with, and all CTV supply decisions go through a committee that meets quarterly) → Rep debrief: Economic Buyer: "Not the planner — it's the trading desk committee"; Decision Process: "Quarterly committee; next meeting is 8 months away"; Compelling Event: "None identified"; Champion: "No champion — the planner is interested but has no influence"; Qualification verdict: Disqualified — no clear path to a decision in the foreseeable future; rep marks as Closed Lost reason "No decision-maker access; no compelling event"; CRM note added: "Re-engage in 6 months; try to connect directly with the trading desk"; Dr. Lewis affirms the disqualification in the pipeline review
3. **Adversarial:** A rep debriefs a discovery call by writing "great call — they're really interested, definitely moving forward" in the CRM with no MEDDPICCC detail → Dr. Lewis in the pipeline review: "This CRM entry doesn't give us what we need to assess this deal. 'Really interested' doesn't tell us: who the economic buyer is, what the decision timeline is, or whether there's a budget. I need the rep to complete the MEDDPICCC debrief before this deal moves to Proposal. I'll send the debrief template and give them 24 hours to fill it in. If the deal can't be documented after a discovery call, it wasn't a discovery call." Rep completes the debrief; 3 of 8 MEDDPICCC elements are actually unknown; deal is not advanced to Proposal until those gaps are closed

## Audit Log
All discovery debriefs retained in CRM (GoHighLevel — activity log). Qualification decisions retained. Disqualification decisions retained with rationale. Dr. Lewis pipeline review notes retained. Proposal pipeline advancement records retained (only qualified deals with complete discovery documentation).

## Deprecation
Retire when each portfolio company has a VP of Sales who enforces the discovery discipline — with Dr. Lewis spot-checking discovery quality in the monthly pipeline review.
