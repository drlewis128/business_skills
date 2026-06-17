---
name: strategy-competitive-intelligence
description: "Monitor and analyze competitor activity to inform strategic decisions. Use when the user says 'competitive intelligence', 'competitor analysis', 'what is the competition doing', 'competitive landscape', 'competitor moves', 'competitive threats', 'competitive monitoring', 'who are our competitors', 'competitive positioning', 'competitor research', 'competitive response', 'how do we compare to competition', 'competitive benchmarking', or 'track competitors'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--competitor <name>] [--scope <landscape|specific|response>]"
---

# Competitive Intelligence

Monitor and analyze competitor activity for MBL portfolio companies — translating competitive signals into actionable strategic decisions before competitors execute their moves. Competitive intelligence at PE portfolio scale is not about building a competitor dossier — it is about answering one question: what do competitors know or plan that, if we don't respond, will erode our position or thesis? Intelligence that doesn't change a decision or reveal a threat isn't intelligence — it's research.

## When to Use
- Annual planning — refresh competitive landscape
- A competitor makes a notable move (acquisition, pricing change, new service, key hire)
- A key customer mentions a competitor's offering
- Matt Mathison asks "what's the competition doing?"
- Pre-acquisition screening — who are the target's real competitors?
- Exit preparation — understanding the competitive context a buyer sees

## Competitive Intelligence Framework

```
Intelligence sources (open source — no espionage):
  Web: Company websites, LinkedIn, job postings (strategy signals), press releases, news
  Financial: SEC filings (public companies), CMS cost reports (healthcare), state filings
  Regulatory: State license databases, permit filings, OSHA records, FDA, FTC
  Social: LinkedIn talent tracking, Glassdoor culture signals, customer reviews (G2, Healthgrades)
  Market: Industry analysts, association publications, conference presentations
  Primary: Customer and referral source feedback (what are they saying about competitors?)
  
Competitive signals to monitor (by entity):
  Allevio (Healthcare MSO):
    New physician practice affiliations in AZ
    Payer contract additions or losses
    New service lines (specialty expansion, telehealth)
    Pricing changes visible in public data
    Key physician hiring or departures (LinkedIn)
    Regulatory actions (AZ Medical Board, OCR, CMS)
    
  HIVE Partners (Oil & Gas, Uinta Basin):
    Rig activity (UT DOGM public permit data)
    Competitor well completions and production data (DOGM)
    WTI price response behaviors
    Land lease activity in Uinta Basin
    PE-backed competitor fundraising
    
  Column6/Siprocal (CTV/Media):
    Platform feature releases
    Advertiser/publisher announcements
    IAB standards participation
    M&A activity in ad tech
    Pricing and CPM floor trends
    
Competitive assessment dimensions:
  Capability: What can they do that we can't? What can we do that they can't?
  Pricing: Where are we positioned relative to market? Premium / parity / discount?
  Customers: Who are we competing for? Who are we losing to and why?
  Talent: Are they hiring in areas that signal strategy shifts?
  Capital: PE-backed? Recent raise? Public? Determines how fast they can move.
  
Response framework:
  Ignore: Competitor move doesn't affect our customers or thesis — no response needed
  Monitor: Competitor move may be relevant — watch for 60 days; no action yet
  Adapt: Adjust tactics (pricing, messaging, service offering) to counter the move
  Accelerate: Competitor validation of our strategy — move faster on planned initiatives
  Reposition: Competitor fundamentally changes the landscape — requires strategy review
```

## Output Format

```markdown
# Competitive Intelligence Report — [Entity Name]
**Date:** [Date] | **Analyst:** Dr. John Lewis | **Scope:** [Full landscape / Specific competitor / Threat response]

---

## Competitive Landscape (summary)

| Competitor | Type | Size est. | Key strength | Key weakness | Threat level |
|-----------|------|----------|-------------|-------------|-------------|
| [Competitor A] | [Strategic/Niche/National] | $[X]M rev est. | [Strength] | [Weakness] | 🔴/🟡/🟢 |
| [Competitor B] | | | | | |
| [Competitor C] | | | | | |

**Our position:** [One honest sentence about where we stand vs. the field]

---

## Recent Competitive Activity

| Date | Competitor | Activity | Signal | Recommended response |
|------|-----------|---------|--------|---------------------|
| [Date] | [Name] | [What they did] | [What it means] | [Ignore / Monitor / Adapt / Accelerate] |

---

## Threat Assessment

**Top 3 competitive threats (next 12 months):**
1. [Threat — specific, with evidence; probability; impact on revenue/thesis]
2. [Threat]
3. [Threat]

**Our competitive advantages (sustainable):**
1. [Advantage — honest; is it durable or temporary?]
2. [Advantage]

---

## Recommended Actions

| Action | Rationale | Owner | Timeline | Priority |
|--------|---------|-------|---------|---------|
| [Accelerate referral network] | [Competitor X entering our top referral area] | CEO | Q2 | High |

---

## Matt Mathison Brief

[Entity] competitive intelligence [Quarter]: Top competitor threat — [Name] is [what they're doing]. Our position: [Strong / Holding / Under pressure — specific]. Thesis impact: [Neutral / Minor watch / Material — specific]. Recommended actions: [1-2 specific]. Next monitoring cycle: [Date].
```

## Output Contract
- Intelligence must be actionable or it isn't intelligence — a competitor report that describes what competitors are doing without recommending a response is background reading, not competitive intelligence; every significant competitor move in the report is tagged with a recommended response (Ignore / Monitor / Adapt / Accelerate / Reposition); if Dr. Lewis can't determine what action follows from a piece of intelligence, it's left out of the executive report
- Use only open-source, ethical intelligence methods — no employee solicitation for confidential information, no pretexting, no unauthorized system access; open-source intelligence (public filings, job postings, LinkedIn, web, regulatory databases) is rich and legal; Dr. Lewis relies exclusively on these sources; anything that requires deception or unauthorized access is off-limits regardless of how useful the information would be
- Honest assessment of our own position — competitive intelligence that only finds competitor weaknesses and ignores our own is confirmation bias; Dr. Lewis includes an honest assessment of our competitive advantages and their durability; a competitive advantage that can be copied in 6 months is not an advantage; the THRIVE filter (Truth) requires that the analysis reflects reality, not wishful thinking
- HITL required: Dr. Lewis produces; CEO reviews for market accuracy (they have primary market knowledge); Matt Mathison receives for thesis implications; competitive moves that threaten the investment thesis trigger immediate Matt Mathison notification (do not wait for scheduled reporting)

## System Dependencies
- **Reads from:** Public sources (web, LinkedIn, state databases, regulatory filings, industry reports), customer feedback from CEO/sales team, payer/referral feedback, prior competitive assessments (SharePoint)
- **Writes to:** Competitive intelligence report (SharePoint/Strategy/<Company>/Competitive/); annual strategic plan (strategy-annual-plan-builder); Matt Mathison competitive brief; market analysis update (strategy-market-analyzer)
- **HITL Required:** Dr. Lewis produces; CEO validates market accuracy; Matt Mathison for thesis-level threats; immediate escalation for material competitive moves

## Test Cases
1. **Golden path:** Quarterly Allevio competitive intelligence → Monitor LinkedIn for AZ healthcare MSO hires; discover that Mountain View Medical Group (competitor) hired 3 physicians in the past 60 days and opened a new location 2 miles from Allevio's primary location; cross-check: AZBMV medical license filings confirm 3 new physicians at Mountain View address; job postings suggest Mountain View is also pursuing telehealth (2 positions for telehealth coordinators); threat assessment: 🟡 Medium — Mountain View is expanding into Allevio's geography; telehealth is adjacent but not our current service line; recommended response: Accelerate referral network development (Q2 priority, not Q3); evaluate whether telehealth is worth adding to counter Mountain View before they establish it; CEO confirms Mountain View has been more aggressive in the past 6 months; Matt Mathison briefed
2. **Edge case:** A major national MSO group announces they are entering the Arizona market → This is a 🔴 High threat — a well-capitalized national player has resources to compete on price, technology, and physician recruitment; threat assessment: revenue impact $200-400K/yr if Allevio loses 2 physician practices to the national group; response options: (1) Accelerate lock-in of existing physician affiliations with longer-term agreements; (2) Differentiate on service and responsiveness (national groups are slow; local is an advantage); (3) Evaluate whether this changes the exit timeline (exit before national competition fully arrives may maximize exit value); Matt Mathison briefed immediately; strategy session within 30 days
3. **Adversarial:** CEO says "we don't really have competitors — we're different" → Every business has competitors; the question is whether they compete directly, indirectly, or for the same dollars; for Allevio, the competition includes: (1) hospital-employed physician models (USPH, Banner Health); (2) other independent MSOs; (3) telehealth (Teladoc, MDLive — stealing primary care visits); (4) the physician running their own practice without MSO affiliation (the status quo is always a competitor); Dr. Lewis produces the competitive landscape regardless of CEO perspective; an accurate picture of competition is a prerequisite for a credible strategy

## Audit Log
Competitive intelligence reports retained 3 years. Matt Mathison briefs retained. Competitive signal log maintained continuously. Source documentation retained with each report. Recommended response actions tracked to completion.

## Deprecation
Retire when portfolio companies have marketing or strategy functions with competitive intelligence capability — with Dr. Lewis reviewing the output for thesis-level implications rather than producing the analysis.
