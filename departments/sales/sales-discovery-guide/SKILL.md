---
name: sales-discovery-guide
description: "Guide sales discovery conversations for MBL portfolio company sales teams. Use when the user says 'discovery', 'discovery call', 'discovery questions', 'sales discovery', 'first call', 'intro call', 'qualification call', 'MEDDPICCC', 'MEDDIC', 'SPIN selling', 'discovery framework', 'discovery guide', 'what questions to ask', 'how to run a discovery', 'discovery prep', 'discovery debrief', 'discovery notes', 'discovery summary', 'what did we learn', 'discovery outcome', 'discovery follow-up', 'discovery email', 'discovery recap', 'discovery template', 'Allevio discovery', 'employer discovery', 'agency discovery', 'Column6 discovery', 'HIVE discovery', 'acquisition discovery', 'prospect discovery', 'buyer discovery', 'needs discovery', 'pain discovery', 'challenge discovery', or 'situation questions'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--stage <prep|live|debrief|follow-up>]"
---

# Sales Discovery Guide

Guide sales discovery conversations for MBL portfolio company sales teams — preparing discovery questions, structuring the live call, and synthesizing findings into a qualified opportunity assessment. Discovery is not a pitch. Discovery is how the rep earns the right to pitch by understanding the prospect's situation deeply enough to make a relevant proposal.

## When to Use
- Preparing for a first or second discovery call with a prospect
- Debriefing after a discovery call (what did we learn; what's the MEDDPICCC status?)
- Writing the discovery follow-up email
- Coaching a sales rep on discovery quality

## Discovery Framework

```
MEDDPICCC QUALIFICATION FRAMEWORK (MBL standard):
  M — Metrics: What does success look like in numbers?
    → Allevio: "What does your healthcare cost per employee look like today? What would a 15% reduction mean?"
    → Column6: "What's your target CPM for CTV? Current viewability rate? VCR benchmark?"
  E — Economic Buyer: Who controls the budget?
    → Allevio: "Who owns the benefits budget decision? Is it the CFO or HR Director?"
    → Column6: "Who signs the IO? Is that the media buyer or does it need VP approval?"
  D — Decision Criteria: How will they decide?
    → "What are the top 3 things that matter most to you in evaluating [MSO / CTV partner]?"
    → "What would a successful pilot look like after 90 days?"
  D — Decision Process: What are the steps to yes?
    → "Walk me through how this decision gets made — from evaluation to contract."
    → "Who else needs to be involved before you can move forward?"
  P — Paper Process: What does the contract/procurement process look like?
    → Allevio: "Do you work with outside counsel on benefits contracts? Typical timeline?"
    → Column6: "Is IO sign-off at the buyer level or does legal review?"
  I — Identify Pain: What's the actual problem?
    → "What's driving the conversation today? Why now?"
    → "What happens if you don't solve this in the next 6 months?"
  C — Champion: Who's fighting for us on the inside?
    → "Who internally is most excited about solving this? Who would you say is your biggest advocate for making a change?"
  C — Competition: Who else are they talking to?
    → "Are you evaluating any other solutions? What's driving you to look at alternatives?"
  C — Compelling Event: Why does this need to happen now?
    → "Is there a deadline, open enrollment date, or event that's creating urgency?"
    → Allevio: "When is your benefits renewal? Is that driving the timeline?"
    
ENTITY-SPECIFIC DISCOVERY QUESTIONS:

  ALLEVIO — Employer Discovery:
    Situation:
      "How many employees do you currently have, and where are they located?"
      "What benefits plan are you on today — fully insured or self-insured?"
      "What's your current healthcare cost per employee per month?"
    Pain:
      "What are your biggest frustrations with your current healthcare benefits?"
      "How often do employees actually use their primary care benefits today?"
      "What's your claims experience been trending in the last 2 years?"
    Impact:
      "What does high healthcare cost do to your ability to attract and retain people?"
      "If your claims trend continues, what does that mean for your 2027 renewal?"
    Vision:
      "If you could design the ideal benefits model — unlimited access to primary care, telehealth, lower deductibles — what would it look like?"
    HIPAA NOTE: No questions about individual employees' health status or claims. Employer-aggregate only.
    
  COLUMN6 — Agency Discovery:
    Situation:
      "What CTV inventory are you running today — which SSPs or direct publishers?"
      "What's your typical IO size for CTV? Monthly spend?"
      "What measurement methodology are you using — ACR, panel, pixel?"
    Pain:
      "What's your biggest headache with CTV right now — inventory quality, scale, measurement?"
      "What's your viewability and VCR looking like across your current supply?"
      "Are you hitting reach targets, or is frequency capping creating scale issues?"
    Impact:
      "When you can't hit delivery guarantees, what does that do to your client relationship?"
      "What's the cost when a client's campaign underdelivers?"
    Vision:
      "Ideally, what would a CTV partner relationship look like — guaranteed delivery, brand-safe inventory, clean measurement?"
      
  HIVE — Acquisition Discovery (seller-focused):
    Situation:
      "Can you describe the asset — how many producing wells, which basin, which operator?"
      "What's your current royalty interest structure — RI, ORRI, WI?"
      "What are you averaging in monthly production statements from the operator?"
    Motivation:
      "What's driving you to consider a sale now?"
      "Are there estate, liquidity, or tax timing considerations?"
    Process:
      "Have you had the interest appraised or valued recently?"
      "Are you talking to other buyers, or is this an exclusive conversation?"
      
DISCOVERY QUALITY STANDARDS:
  Listen ratio: rep should be listening ≥60% of the call (not pitching)
  Discovery is complete when: all 8 MEDDPICCC dimensions have at least a partial answer
  Incomplete discovery: do not send a proposal; schedule a second discovery call
  No-pitch rule: no product pitch until the rep has confirmed the prospect's top 2 pain points back to them
  Follow-up email: sent within 2 hours of discovery call; confirms key findings + next step
```

## Output Format

```markdown
# Discovery Call Summary — [Prospect Name] | [Date]
**Entity:** [Allevio/Column6/HIVE] | **Rep:** [Name] | **Stage:** [Discovery 1/Discovery 2]
**ICP Tier:** [1/2/3] | **Next step:** [What; by when]

---

## MEDDPICCC Status

| Dimension | Status | Key Finding |
|-----------|--------|-------------|
| Metrics | ✅ Confirmed / 🟡 Partial / ❌ Unknown | [Finding] |
| Economic Buyer | ✅ / 🟡 / ❌ | [Name; role; access level] |
| Decision Criteria | ✅ / 🟡 / ❌ | [Top 3 criteria stated] |
| Decision Process | ✅ / 🟡 / ❌ | [Steps and timeline] |
| Paper Process | ✅ / 🟡 / ❌ | [Contract/procurement notes] |
| Identify Pain | ✅ / 🟡 / ❌ | [Primary pain stated in their words] |
| Champion | ✅ / 🟡 / ❌ | [Who; how strong] |
| Competition | ✅ / 🟡 / ❌ | [Who; where in process] |
| Compelling Event | ✅ / 🟡 / ❌ | [Event; date] |

**Discovery complete?** [Yes → proceed to demo/proposal] / [No → schedule Discovery 2]

## Key Quotes (verbatim)
- "[Their exact words about the primary pain]"
- "[Their exact words about the compelling event]"

## Recommended Next Step
[Action + owner + date]
```

## Output Contract
- Discovery summaries use their words, not the rep's interpretation — when a prospect says "our healthcare costs went up 23% last year and the CFO is furious," that goes into the discovery summary verbatim; "prospect has high healthcare cost concern" is a rep's translation that loses the specificity; the CFO being furious is different from the CFO being aware; the 23% number is different from "significant increase"; proposals that mirror the prospect's exact language convert at higher rates because they demonstrate that we listened; Dr. Lewis coaches reps to capture direct quotes in real time (notes; GHL logging)
- Incomplete MEDDPICCC = no proposal — sending a proposal before discovery is complete is an expensive mistake; a proposal sent without knowing the economic buyer doesn't reach the decision maker; a proposal sent without knowing the decision process won't be reviewed on the right timeline; a proposal sent without knowing the compelling event won't create urgency; Dr. Lewis or entity CEO reviews MEDDPICCC completeness before authorizing a proposal; the standard is: if more than 3 MEDDPICCC dimensions are unknown/partial, a second discovery call is required before proposal
- HITL required: entity CEO reviews pipeline opportunities ≥$25K Allevio ACV or ≥$50K Column6 IO before proposal; HIVE acquisition discovery → Dr. Lewis reviews findings before Matt Mathison briefing; new discovery process changes → entity CEO approves; coaching decisions on rep discovery quality → entity CEO + Dr. Lewis; HIPAA: Allevio discovery never asks about individual employee health; employer-aggregate only

## System Dependencies
- **Reads from:** GoHighLevel (contact history; prior conversations; company data); ICP criteria (sales-icp-builder); win/loss records (revops-win-loss-tracker); competitor intelligence (sales-competitive-playbook); entity-specific product/pricing information; prior discovery notes in GHL
- **Writes to:** GoHighLevel (MEDDPICCC field updates; discovery notes; stage progression; next activity); discovery summary document (SharePoint or GHL attachment); opportunity assessment (for pipeline review); follow-up email drafts
- **HITL Required:** Opportunity ≥$25K Allevio or ≥$50K Column6 → entity CEO review before proposal; HIVE acquisition → Dr. Lewis before Matt Mathison briefing; discovery quality coaching → entity CEO + Dr. Lewis; proposal authorization → entity CEO for non-standard terms; Allevio: no individual health questions ever

## Test Cases
1. **Golden path:** Discovery call — Allevio prospect, 210-employee manufacturing employer, HR Director. Pre-call: ICP Tier 1 (employee count ✅; Maricopa ✅; self-insured ✅). Call (45 min): Metrics — "Healthcare up 19% last year; our CFO has given us 2 renewals to fix it." Economic buyer — "HR Director evaluates; CFO and CEO sign." Decision criteria — "Cost per employee; employee utilization; no disruption to existing provider relationships." Champion — HR Director is internal advocate; board already approved budget for solution. Compelling event — "Renewal in November; need a decision by August." Competition — "Looking at one other MSO and a telemedicine-only vendor." MEDDPICCC: 8/8 ✅. Discovery complete. Discovery summary written; GHL updated; follow-up email sent within 90 minutes. Next step: Allevio demo scheduled (2 weeks out; HR Director + CFO attending).
2. **Edge case:** Rep wants to send a proposal after a 20-minute discovery call where only M and I are confirmed (6 dimensions unknown) → Dr. Lewis: "Not yet. We have metrics (19% cost increase) and pain confirmed, but we don't have: who the economic buyer is, how they make decisions, paper process, who the champion is, what the competition is, or why now. Sending a proposal into that unknown lands in a black hole — we don't know who reviews it, what they're comparing it to, or when they decide. Schedule a 30-minute discovery 2 call focused on the D-D-P-C-C dimensions. I'll prep the specific questions. A proposal sent after a complete discovery is 3× more likely to advance than one sent after an incomplete one."
3. **Adversarial:** Prospect pushes back: "Just send me a brochure and pricing — I'll share it internally" → Dr. Lewis coaching: "That's a classic request that leads to proposals dying in committee. The coaching for this: 'I appreciate that — before I put together pricing, I want to make sure what I send is relevant to your specific situation. Can we spend 15 more minutes so I understand your top priorities? That way the pricing reflects what actually matters to you rather than a generic range.' If they insist on brochure-only: log this as a low-champion signal in GHL; send a one-pager (not a full proposal); follow up in 5 business days to schedule a proper discovery. The signal is: if they won't give you 15 minutes for discovery, they're probably not the decision maker."

## Audit Log
Discovery call summaries (all completed discoveries; GHL attachment + SharePoint). MEDDPICCC completion tracking (pipeline review records). Follow-up email logs (GHL). Coaching records (rep discovery quality; entity CEO feedback). Proposal authorization records (opportunities ≥ threshold; entity CEO approval). HIVE acquisition discovery records (linked to Matt Mathison briefing). Allevio HIPAA compliance records (no individual health data in discovery).

## Deprecation
Discovery questions reviewed annually against win/loss data. MEDDPICCC completeness thresholds reviewed when sales cycle changes. Allevio discovery questions reviewed when service offering changes. Column6 questions reviewed when inventory or measurement methodology changes. HIVE questions reviewed when acquisition criteria changes.
