---
name: sales-demo-framework
description: "Run product or service demonstrations for MBL portfolio companies. Use when the user says 'demo', 'product demo', 'service demo', 'run a demo', 'give a demo', 'demo framework', 'demo structure', 'how to demo', 'demo script', 'demo prep', 'demo flow', 'what to show in a demo', 'demo call', 'show the product', 'walk them through', 'product walkthrough', 'service walkthrough', 'proof of concept', 'POC', 'demo day', 'demo feedback', 'what should I demonstrate', 'custom demo', 'tailored demo', or 'demo best practices'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--prospect <name>] [--pain <stated pain from discovery>] [--action <prep|run|debrief>]"
---

# Sales Demo Framework

Run product or service demonstrations for MBL portfolio companies — demonstrating value against the prospect's specific pain, not every feature the company offers. A demo that shows everything is a demo that sells nothing. Dr. Lewis structures every demo around the discovery findings (sales-discovery-framework) and presents only the capabilities that address the prospect's confirmed pain points.

## When to Use
- After completing a successful discovery call (the prospect qualified; pain confirmed; demo next)
- Preparing a rep to run their first entity-specific demo
- Debriefing after a demo that didn't convert to a next step
- Building the standard demo deck or demo environment for a portfolio company

## Demo Framework

```
DEMO PHILOSOPHY:
  Discovery before demo — a demo without a discovery call is a product pitch;
    it may be interesting but it isn't selling; the demo is the answer to the pain
    the prospect told you about in discovery; if you don't know their pain, you can't
    demonstrate a solution
    
  Show, don't tell — "Our clinical team can reduce your claim ratio" is telling;
    showing the prospect a graph of how a similar employer group's claim ratio dropped
    from 88% to 74% in 6 months after joining Allevio is showing; use real data
    (anonymized if necessary) to make the demo concrete
    
  Prospect-specific framing — every demo section should be prefaced with the pain it
    addresses: "You mentioned that your claim ratio is at 87% and your renewal is coming up —
    let me show you how our clinical care management team handles high-risk members..." instead
    of "And now I'll walk you through our clinical care management module..."

ENTITY-SPECIFIC DEMO FLOWS:

  ALLEVIO — Employer Group Healthcare Demo:
    Discovery-to-demo translation:
      Pain: "Our health insurance costs went up 22% this year"
        → Show: Side-by-side PMPM cost comparison (carrier vs. Allevio) for a group their size
      Pain: "We have a few employees with expensive conditions that are driving up our claims"
        → Show: High-risk member identification and clinical care management workflow
      Pain: "Our employees are unhappy with the network"
        → Show: The Allevio network map (Maricopa/Pima coverage); specialist access; telehealth
      Pain: "Our HR Director spends too much time managing benefits questions"
        → Show: Member services workflow; how Allevio's team handles calls so the HR Director doesn't
        
    Demo structure (45-60 minutes):
      0-5 min: Confirm pain from discovery ("You told me X is the key issue — is that still true?")
      5-20 min: ROI calculator — run the numbers for their group (member count; current PMPM; estimated
        savings; 3-year projection); let them see their own numbers
      20-35 min: Clinical care management walkthrough — how we handle high-risk members; show a case
        example (anonymized); claim ratio improvement data from comparable groups
      35-45 min: Implementation timeline (how long to transition; what the employer has to do)
      45-55 min: Reference — offer a peer reference call with an HR Director who made the switch
      55-60 min: Next step (proposal date; decision timeline; who else needs to be involved)
      
  COLUMN6 — CTV Advertising Demo:
    Discovery-to-demo translation:
      Pain: "We're spending on linear TV but can't measure attribution"
        → Show: Column6 attribution methodology; pixel-based conversion tracking; DAR/Nielsen verification
      Pain: "We need to reach [specific audience] but linear is too broad"
        → Show: Audience targeting capabilities; first-party data integration; behavioral segments
      Pain: "Our current SSP has completion rate issues"
        → Show: Column6 inventory quality score; completion rate data; fraud prevention stack
      Pain: "We want CTV but our current vendor can't execute"
        → Show: Campaign launch timeline; IO-to-launch in 3 business days; account team access
        
    Demo structure (30-45 minutes):
      0-5 min: Recap pain ("You said attribution is the top issue — is that still your priority?")
      5-15 min: Inventory walkthrough — premium publisher list; completion rate data; IAS/DV certification
      15-25 min: Targeting demo — show how their audience segment would be built
      25-35 min: Attribution reporting — sample campaign report with DAR results
      35-40 min: Next step (first test IO; RFP timeline)
      
  HIVE — Mineral Rights Demo:
    Discovery-to-demo translation:
      "Demo" in HIVE context is a conversation + map + terms walkthrough — not a software demo
      Pain: "I don't know if my land is in an active development area"
        → Show: Basin development map with HIVE's current area of interest
      Pain: "I don't know what my mineral rights are worth"
        → Show: Recent comps in the area (bonus per acre; royalty rate for comparable parcels)
      Pain: "I've had bad experiences with oil companies"
        → Show: HIVE's landowner communication process; transparency about development timeline
        
    Meeting structure (30-45 minutes):
      0-5 min: Confirm the landowner's situation (how many acres; what they know about their rights)
      5-15 min: Basin development map walkthrough — show where HIVE is active; where the wells are
      15-25 min: LOI terms overview — bonus per acre range; royalty rate; how the process works
      25-35 min: Questions — the landowner typically has many; Dr. Lewis answers all of them
      35-40 min: Next step (LOI for review; legal counsel recommendation; follow-up call)

POST-DEMO DEBRIEF (required within 24 hours):
  □ Did the prospect engage? (Questions during the demo = good; silence = bad sign)
  □ What did they react most strongly to? (What will we emphasize in the proposal?)
  □ Did we get a clear next step? (Date for proposal; date for decision)
  □ Who else needs to be involved? (Did new stakeholders emerge?)
  □ Any objections raised? (Log them for the objection handler — sales-objection-handler)
```

## Output Format

```markdown
# Demo Prep Brief — [Prospect Name] | [Entity]
**Demo date:** [Date] | **Prospect:** [Company] | **Rep:** [Name]
**Discovery pain confirmed:** [Top 2-3 pain points from the discovery call]
**Key stakeholders attending:** [Names and titles]

---

## Demo Agenda (Customized to Prospect)

| Time | Section | Pain it addresses | Key data/asset |
|------|---------|-----------------|---------------|
| 0-5 min | Pain confirmation | — | Verbal recap only |
| 5-20 min | ROI calculator run | "Cost went up 22% — want to see their numbers" | Allevio ROI model |
| 20-35 min | Clinical care walkthrough | "High-risk members driving claims" | Case example (anonymized) |
| 35-45 min | Implementation timeline | "Worried about the transition" | Standard migration timeline |
| 45-55 min | Peer reference offer | — | Reference list (2 comparable groups) |
| 55-60 min | Next step close | — | Proposal delivery date |

---

## Post-Demo Debrief Notes

**Engagement signals:** [High / Medium / Low — what did they ask about?]
**Strongest reaction:** [What demo section got the most response?]
**Objections raised:** [List them; route to sales-objection-handler]
**Next step confirmed:** [Proposal by [date] / Decision call [date] / Additional stakeholder [name]]
**Follow-up by:** [Rep / Dr. Lewis] by [Date]
```

## Output Contract
- Discovery required before demo prep — the demo agenda is built from the discovery notes; a rep who wants to run a demo without completing discovery first will receive a generic demo that converts at a fraction of the rate of a discovery-informed demo; Dr. Lewis does not prepare a custom demo brief without the discovery notes; if discovery hasn't been completed, the next call is a discovery call, not a demo
- Show the ROI first for Allevio — for employer group healthcare prospects, the PMPM cost savings analysis is the most important section of the demo; put it early (after pain confirmation) before the clinical walkthrough; a prospect who sees their own numbers will stay engaged for the rest of the demo; a prospect who sees clinical workflows first and cost savings second may be skeptical by the time you get to the financial case
- Always end with a specific next step — a demo with no confirmed next step is a stalled deal; Dr. Lewis coaches reps to close for a specific next step at the end of every demo: "Based on what you saw today, does it make sense for us to put together a formal proposal? I can have that to you by [date]. Does that work?" — if the prospect says yes, the next step is set; if they say no, there is an objection or a hidden concern to surface immediately
- HITL required: Dr. Lewis reviews demo prep briefs before any demo above $150K ACV; rep runs demos independently for smaller deals; Dr. Lewis joins demos above $250K ACV (Allevio) or $500K ACV (Column6) in person or on video; any commitments made during a demo (custom pricing; special terms; extended implementation timeline) require Dr. Lewis approval before being offered; CEO is briefed on any demo outcome that includes a pricing exception request

## System Dependencies
- **Reads from:** Discovery notes (sales-discovery-framework — what pain was confirmed? what is the decision-making process? who are the stakeholders?); ROI calculator (Allevio PMPM savings model — Excel or web-based; populated with the prospect's member count and current carrier rate); case studies (SharePoint/Sales/<Company>/CaseStudies — real-world results to show in the demo); inventory data (Column6 — completion rate; publisher list; audience reach); Uinta Basin development map (HIVE — current area of interest; active well data)
- **Writes to:** Demo prep brief (SharePoint/Sales/<Company>/Demos/[Prospect]_[Date]_DemoBrief.pdf); post-demo debrief notes (GoHighLevel CRM — logged as an activity within 24 hours of the demo; outcome noted); pipeline stage advance (GoHighLevel — demo completed; advance to Proposal Pending if next step confirmed); sales-forecast-builder (deals with a confirmed proposal date are entered into the forecast)
- **HITL Required:** Dr. Lewis reviews demo briefs for >$150K ACV demos; Dr. Lewis joins >$250K ACV Allevio demos and >$500K ACV Column6 demos; any pricing exception or custom terms raised during the demo require Dr. Lewis approval before commitment; CEO is briefed on any demo where the prospect raised a material pricing or contract issue that would require a CEO-level response

## Test Cases
1. **Golden path:** Allevio demo for a 145-employee Scottsdale professional services firm — discovery confirmed: 21% carrier rate increase; 2 high-risk members driving claims; HR Director wants to simplify administration → Dr. Lewis prepares the brief: Demo agenda: pain recap (1 min); ROI calculator run — enter 145 employees; current PMPM estimate $620; Allevio PMPM at their size: $565; projected 3-year savings: $392K; "Here are your numbers" — HR Director leans forward; clinical care walkthrough: "Let me show you how we handle high-risk members like the two you mentioned"; implementation timeline: "12 weeks from signed contract to first member enrolled"; peer reference offer: "I can connect you with an HR Director at a Scottsdale engineering firm who went through this 18 months ago"; next step: "Does it make sense for me to put together a formal proposal? I can have it to you by Friday." HR Director: "Yes — Friday works." Deal advances to Proposal Pending
2. **Edge case:** Column6 demo scheduled but the media buyer who attended the discovery call was replaced by a new buyer who has no context → Dr. Lewis briefed 10 minutes before the call: "The contact changed. This is a cold demo now — we need to treat the first 15 minutes as a discovery conversation. Don't show the inventory data until we've confirmed their pain. I'll lead the first 15 minutes: pain confirmation and qualification; then hand off to the rep for the inventory walkthrough once we know what they need." Dr. Lewis leads the opening as discovery; new buyer's pain: attribution; demo pivots to attribution methodology; next step confirmed (test IO of $25K to evaluate Column6 attribution data)
3. **Adversarial:** A rep has been demoing the same standard 60-slide Allevio presentation to every prospect, regardless of their pain, and is reporting that "demos aren't converting" → Dr. Lewis reviews: "The problem is that you're giving a product presentation, not a demo. A demo shows the prospect how we solve their specific problem. Look at the last 5 demo outcomes — each prospect had a different primary pain. For Group A (high claims), the right demo starts with the clinical care workflow, not the cost comparison. For Group B (cost), it starts with the ROI calculator. The 60-slide deck is a resource; it's not the agenda. Let's rebuild your demo prep process around the discovery notes. Going forward: send me the discovery notes 24 hours before any demo and I'll give you a custom brief with the right agenda sequence." Rep adopts the custom brief process; demo conversion improves

## Audit Log
All demo prep briefs retained by entity, prospect, and date. Post-demo debrief notes retained in CRM. Demo outcome records retained (converted to proposal; no next step; objections raised). Dr. Lewis attendance records retained for demos >$250K ACV. Pricing exception requests and responses retained.

## Deprecation
Retire when each portfolio company has a Sales Engineering or Solutions Consulting function that owns demo preparation and delivery — with Dr. Lewis reviewing demo conversion rates quarterly and the CEO attending strategic demos with prospects above $500K ACV.
