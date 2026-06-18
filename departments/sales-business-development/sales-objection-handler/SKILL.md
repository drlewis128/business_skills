---
name: sales-objection-handler
description: "Handle and prepare for sales objections for MBL portfolio companies. Use when the user says 'objection', 'sales objection', 'they said no', 'prospect pushback', 'how to handle objections', 'objection handling', 'common objections', 'they said it is too expensive', 'price objection', 'they already have a solution', 'status quo objection', 'not the right time', 'timing objection', 'they need to think about it', 'competitor objection', 'they like the current vendor', 'they need board approval', 'objection response', 'objection framework', 'handling no', 'overcoming objections', or 'objection playbook'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--objection <type or quote>] [--stage <discovery|proposal|negotiation|close>] [--action <prepare|respond|coach>]"
---

# Objection Handler

Prepare and respond to sales objections for MBL portfolio companies — turning objections from conversation-stoppers into opportunities to deepen the value conversation. An objection is not a rejection; it is a request for more information or reassurance. The rep who panics at "it's too expensive" and immediately offers a discount is leaving money on the table; the rep who uses the objection to explore the prospect's cost situation wins more deals at better margins.

## When to Use
- Preparing for a discovery call or proposal presentation
- A rep is facing a specific objection and needs a response framework
- Building the objection section of the sales playbook
- Coaching a rep on a specific objection pattern

## Objection Handling Framework

```
OBJECTION HANDLING PRINCIPLE — EXPLORE BEFORE RESPONDING:
  Every objection follows the sequence: Acknowledge → Explore → Respond → Confirm
  
  ACKNOWLEDGE: Show you heard it (don't argue; don't immediately rebut)
    "That's a fair point."
    "I hear that — can I ask you a bit more about that?"
    "I appreciate you sharing that with me."
    
  EXPLORE: Ask one question to understand what's underneath the objection
    The stated objection is often a proxy for a different underlying concern
    "When you say it's too expensive, are you comparing to what you're paying now or to a budget you've set?"
    "When you say you're happy with your current vendor, is there anything you'd change if you could?"
    
  RESPOND: Address the real objection with a specific, credible response
    Not generic ("We provide great value!") — specific ("Here's the comparison...")
    
  CONFIRM: Close the loop — does the response address the objection?
    "Does that help with your concern on [objection]?"
    "Is there anything else about [objection topic] I can address before we move forward?"

ENTITY-SPECIFIC OBJECTION RESPONSES:

  ALLEVIO — Employer Group Common Objections:
  
    "It's too expensive." / "We can't afford $85/PMPM."
      Explore: "Can I ask what you're paying now per member per month?"
        If they're paying more: "Your current rate is $[X] — our $85 is actually $[X] less per member.
          At [group size] members, that's $[X] in annual savings."
        If they're at or below $85: "At that rate, we may be able to structure something — let me
          look at your claim ratio. If your claims are running high, there's often savings available
          in active care management that more than offsets the PMPM."
          
    "We're happy with our current plan." / "We're not looking to change."
      Explore: "That's great to hear. When your benefits come up for renewal, is cost typically on the
        agenda?"
      Respond: "I appreciate that — most of our clients weren't looking to change either. What opened
        the conversation was when they got their renewal rate and saw it was going up again. I'd just
        like to leave you with a comparison so you have the data when renewal comes up. Fair enough?"
        
    "We need to think about it." / "I need to talk to my CFO."
      Explore: "Of course — can I ask: is it the cost you're uncertain about, or the model itself?"
      Respond: "That makes total sense. Can I suggest this: I'll send you a one-page summary you can
        share with your CFO — it shows the cost comparison and the savings projection. That way
        the conversation with your CFO has numbers behind it. Would that help?"
        
    "Your network isn't large enough." / "Our employees need doctors in [location]."
      Explore: "Where are most of your employees located?"
      Respond: "Let me pull the provider count for [location]. Our Maricopa network includes [X]
        primary care physicians and [X] specialists within 15 miles of [ZIP code]. Can I show you
        the specific providers so you can assess whether the network meets your team's needs?"
        
    "We already work with a broker and they manage our benefits."
      Explore: "How does your broker feel about alternative models like ours?"
      Respond: "Many brokers we work with actually recommend the Allevio model — there's a referral
        structure in place. Would it be helpful for me to have a conversation with your broker
        directly so they can evaluate it on your behalf?"
        
  COLUMN6 — Agency/Brand Common Objections:
  
    "We're committed to [Google DV360 / our current DSP]."
      Explore: "Are you locked in contractually, or is it more of a workflow preference?"
      Respond: "I understand — I'm not suggesting you replace your current setup. What if you tested
        Column6 on one campaign alongside your current buy? A 20% test allocation would let you
        compare completion rate and audience performance. If we don't deliver better results, I'll
        tell you." (Introduce-alongside strategy)
        
    "Your CPM is too high."
      Explore: "What are you currently paying for CTV?"
      Respond: "If you're at $[X] CPM, I'd ask you to compare the completion rates. At our $22-45 CPM,
        our completion rate is typically 85-90% vs. 65-75% for lower-CPM co-mingled inventory.
        The effective cost per completed view is often lower even at a higher CPM. Can I show you
        that math for your last campaign?"
        
    "We don't have budget for CTV right now."
      Explore: "Is CTV something your clients are asking about?"
      Respond: "Understood — would it be valuable to connect again when the next planning cycle
        opens? I can put you in our early-access list for Q[next quarter] planning. That way you
        have the inventory secured if budget opens up."
        
    "We've never heard of Column6 / Siprocal."
      Respond: "We're a well-known supply source to the buyers we work with regularly. Here's our
        IAB member listing and our sellers.json registration — transparency is a core part of our
        supply chain. I'd rather earn your trust with data than with name recognition. Want to
        see the completion rates from our last three campaigns in your category?"
```

## Output Format

```markdown
# Objection Response Guide — [Entity]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Used in:** Sales playbook; rep coaching

---

## Top Objections and Responses

| Objection | Acknowledge | Explore question | Response approach | Confirm |
|-----------|-----------|-----------------|------------------|---------|
| "Too expensive" | "That's fair." | "What are you paying now?" | Show the cost comparison | "Does that change the picture?" |
| "Happy with current" | "Good to hear." | "What would you change?" | Leave them the comparison | "Would this be worth a second look at renewal?" |
| "Need to think about it" | "Of course." | "What specifically are you uncertain about?" | Address the specific uncertainty | "Does that help clarify?" |

---

## Deal-Specific Objection Prep

**Deal:** [Prospect name] | **Stage:** [Proposal / Negotiation]
**Known concerns from discovery:** [What the prospect has said]
**Expected objections at this stage:** [Price; competitor; timing; approval process]
**Prepared responses for this deal:**
[Customized response for each expected objection]
```

## Output Contract
- Never argue with an objection — arguing converts a sales conversation into a debate; the rep wins the argument and loses the deal; Dr. Lewis trains reps that the first response to any objection is always acknowledgment and a question, not a rebuttal; the prospect who feels heard is more likely to move forward than the prospect who feels corrected
- Explore the objection before responding — the stated objection is often different from the real concern; "it's too expensive" can mean "I don't have budget authority," "I can't justify this to my CFO," or "I don't see the value"; the response to each of these is different; Dr. Lewis trains reps to ask one question before responding to every objection; the question unlocks the real issue
- "I need to think about it" is a polite stall, not a real objection — when a prospect says "let me think about it," they are either (a) genuinely uncertain and need more information, or (b) not ready to say no to your face; the response is always to explore what they are uncertain about, not to schedule a follow-up call; a follow-up call on a polite stall produces another "I'm still thinking"; the exploration in the current conversation is more productive
- HITL required: Reps use the objection framework in their conversations; Dr. Lewis builds and maintains the objection guide; CEO reviews and validates the responses (the CEO knows the objections they've heard and what worked); Dr. Lewis updates the objection guide quarterly based on win/loss patterns; Dr. Lewis does not instruct reps to make claims in response to objections that are not accurate (competitive claims must be accurate; financial projections must be documented)

## System Dependencies
- **Reads from:** Win/loss analysis (sales-win-loss-analyzer — which objections appear in lost deals? which responses worked in won deals?); competitive intelligence (sales-competitive-intel — competitor-specific objections and responses); discovery debriefs (sales-discovery-framework — what concerns did the prospect raise in discovery?); pricing model (sales-pricing-strategist — accurate pricing information for the price objection response); case studies (SharePoint/Sales/<Company>/CaseStudies/ — proof points for value objection responses)
- **Writes to:** Objection response guide (SharePoint/Sales/<Company>/Playbook/ObjectionGuide_[Date].pdf); sales playbook Chapter 6 (sales-sales-playbook — objection section); rep coaching notes (sales-coaching-framework — which objections is a rep struggling with?); quarterly win/loss update (do the objection responses need to be revised based on new data?)
- **HITL Required:** Reps use the framework in live conversations; Dr. Lewis builds and updates the guide; CEO validates the responses; Dr. Lewis does not include objection responses that make claims about competitors without legal review (specific competitor claims in written materials create defamation risk); any financial projection used in an objection response (savings estimates) must be documented and achievable

## Test Cases
1. **Golden path:** Allevio rep preparing for a negotiation call where the prospect cited price as a concern → Dr. Lewis prepares the objection response for the specific deal: Current PMPM: $108; Allevio PMPM: $85; Group size: 160 employees; Prepared response: "I understand the $85 PMPM feels higher than you expected. Can I ask — how does that compare to what you're paying now? [Prospect: '$108/PMPM']. So our $85 is actually $23 less per member per month. At 160 members, that's $3,680 in savings per month, or $44,160 per year. Even if your claim ratio doesn't improve, you're saving $44K annually on day one. And typically we reduce claim ratios by 10-15 points in the first 18 months, which adds another $12-18K in savings annually." Rep uses this in the negotiation call; prospect says "I hadn't thought about it that way"; deal advances to contract
2. **Edge case:** Column6 rep encounters a brand-new objection not in the guide: "Our agency has a policy against direct deals — everything goes through our holding company DSP desk" → Dr. Lewis advises: "This is a new objection — let's add it to the guide. Response framework: Acknowledge: 'I understand — holding company policies are real constraints.' Explore: 'Is there a path for approved supply sources to be added to the desk's approved vendor list?' Respond: 'Many supply sources like Column6 can be added to approved lists. I'd be happy to go through your company's onboarding process — can you connect me with the right person at the DSP desk?' If the policy is truly rigid and the rep has no path: disqualify this contact and try to reach the DSP desk directly." Objection guide updated; Column6 CEO approves the new response
3. **Adversarial:** A rep responds to the "happy with current plan" objection by saying "Your current carrier's claim ratios are typically 15-20% higher than ours" — a claim that isn't validated → Dr. Lewis: "That response has a problem. We don't have data on this specific employer group's claim ratio history with their current carrier — we're generalizing about the carrier's typical performance without knowing the employer group's actual experience. If the prospect checks and their claim ratio is actually lower than 80%, the rep loses credibility. The safer and more accurate response: 'Our clients typically come from carriers with claim ratios in the 80-90% range — can I ask what yours is currently?' This invites the prospect to share their actual data, which is more persuasive than a claim we can't verify." Rep corrected; objection guide updated to remove the unvalidated claim

## Audit Log
All objection guide versions retained by entity and date. CEO validation records retained. Win/loss-informed update records retained. Rep coaching records for objection training retained. Any objection response revisions driven by a legal review are retained with the counsel's rationale.

## Deprecation
Retire when each portfolio company has a VP of Sales who maintains the objection guide as part of the sales playbook — with Dr. Lewis reviewing annually and the guide updated quarterly from win/loss analysis.
