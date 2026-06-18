---
name: sales-competitive-intel
description: "Gather and maintain competitive intelligence for MBL portfolio companies. Use when the user says 'competitive intelligence', 'competitive intel', 'competitors', 'who are our competitors', 'competitive landscape', 'competitive analysis', 'battle card', 'competitive positioning', 'competitor comparison', 'why choose us over competitor', 'competitive threat', 'market competition', 'competitive differentiation', 'competitor pricing', 'competitor weaknesses', 'how do we beat them', 'win against', 'we are losing to', 'competitive advantage', 'differentiation', or 'market position'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--competitor <name>] [--action <research|build-battlecard|update|brief>] [--context <deal|strategy|training>]"
---

# Competitive Intel

Gather and maintain competitive intelligence for MBL portfolio companies — building battle cards, tracking competitor moves, and giving the sales team what it needs to win against specific alternatives. Competitive intelligence is not about disparaging competitors; it is about understanding the landscape well enough to position accurately, anticipate objections, and choose the right battles. Dr. Lewis maintains a living competitive landscape for each portfolio company.

## When to Use
- Building or updating a battle card for a specific competitor
- A sales rep is facing a competitive deal and needs positioning guidance
- A competitor has made a move (new product; price change; acquisition) that affects positioning
- Quarterly competitive review

## Competitive Intelligence Framework

```
COMPETITIVE LANDSCAPE — BY ENTITY:

  ALLEVIO (Healthcare MSO — Arizona Employer Group Market):
    Primary competitors:
      Traditional carriers (Blue Cross Blue Shield AZ; UnitedHealthcare; Aetna; Cigna):
        Strengths: Brand recognition; large provider networks; established employer relationships
        Weaknesses: Higher cost (no local care management); reactive (no proactive population health);
          less flexible (one-size products); slower claims processing
        How Allevio wins: Cost — Allevio typically $15-30/PMPM less than carrier PMPM;
          Local care management — Allevio's AZ network actively manages care (not just administering)
          Employer-specific data — Allevio gives employers their own cost and utilization data
        Battle card response: "Our clients stay with us at renewal because they can see their data —
          you know exactly where your healthcare dollars are going, which a carrier won't show you."
          
      Regional MSO competitors (local Arizona MSOs):
        Strengths: Similar model; possibly lower PMPM; local relationships
        Weaknesses: Smaller network; less technology; less employer-group experience
        How Allevio wins: Track record (specific case studies with numbers); technology stack;
          employer references (let satisfied clients sell for us)
        Battle card response: "Ask them for a case study with actual PMPM before and after numbers.
          Our clients average 14% cost reduction in Year 1 — we can show you the data."
          
      Brokers (status quo): The biggest "competitor" is doing nothing and staying with the current setup
        How Allevio wins: The compelling event (open enrollment; cost increase; claim event);
          Make the cost of the status quo visible; show the 3-year projection if nothing changes
        Battle card response: "Your claim ratio has been above 80% for 2 years. If it stays there,
          your premiums will increase 8-12% at your next renewal. We typically prevent that increase
          and add a 10-15% reduction on top. The question is whether you want to address this now
          or pay more to address it in 2 years."
          
  COLUMN6 / SIPROCAL (CTV/Programmatic — Agency Advertising):
    Primary competitors:
      Google DV360 / Google Ad Manager (GAM):
        Strengths: Scale (largest inventory access); brand trust; integrated with Google ecosystem
        Weaknesses: Black box (limited transparency); inventory quality concerns (co-mingled premium/remnant);
          high CPM for truly premium CTV; audience data is Google's, not the advertiser's
        How Column6 wins: Transparency — Column6 provides full supply chain transparency vs. Google's opacity;
          Premium CTV — Column6's CTV supply is curated premium (not co-mingled);
          Audience ownership — advertisers' data stays theirs; Google uses it across the ecosystem
          
      The Trade Desk:
        Strengths: Best-in-class DSP; strong agency relationships; independent (not Google/Amazon)
        Weaknesses: Not a supply source — TTD buys inventory from everywhere including Column6;
          Column6 can position as a supply partner, not a competitor
        Key message: "The Trade Desk buys inventory from supply sources like Column6. If you're running
          on TTD, we can improve the quality of your CTV supply by connecting directly with us as
          a preferred supply source alongside your TTD buys."
          
      Amazon DSP:
        Strengths: Amazon audience data; Prime Video inventory; strong performance metrics
        Weaknesses: Amazon lock-in; first-party audience data (Amazon's, not yours);
          limited non-Amazon environment inventory
        How Column6 wins: Audience portability; non-Amazon CTV environments; supply diversity argument
        
      Incumbents (current SSP/supply source):
        Most common objection: "We're happy with our current supply setup"
        Response: "We're not asking you to replace your current supply — we're asking you to diversify.
          Add us as a test for one campaign and measure the completion rate and audience performance.
          If we don't outperform, we'll tell you."
          
  HIVE PARTNERS (O&G — Mineral Lease Acquisition):
    Primary competitors:
      Other basin operators (Uinta Basin):
        Competition for: Same mineral rights from the same landowners
        How HIVE wins: Speed (decision-making and LOI execution); fairness (market-rate terms);
          local relationships; reputation for honoring lease terms
        Key differentiator: "We sign, and we pay. We don't retrade offers after the LOI."
      
      Mineral rights aggregators:
        Aggregators may offer higher upfront bonuses to acquire rights for resale
        How HIVE wins: Long-term relationship (HIVE will be on this land for years;
          aggregators are transactional); production-based royalty upside

BATTLE CARD FORMAT (one page per competitor):
  Competitor: [Name]
  Strengths: [What they do well — honest assessment; not straw-man]
  Weaknesses: [Where they're vulnerable — specific, not generic]
  When you see them: [Which deals / deal profiles tend to be competitive with them]
  Landmines: [Things the competitor's rep will say about us; how to defuse]
  Our winning message: [One-paragraph response to "why you over them?"]
  Proof points: [3 specific data points or quotes that win this comparison]
  
MONITORING — KEEPING INTEL CURRENT:
  Sources to monitor quarterly:
    □ Competitor websites (pricing changes; new products)
    □ LinkedIn (competitor hiring patterns; leadership changes)
    □ LinkedIn ads (what messaging are they using?)
    □ CRM win/loss reasons (sales-win-loss-analyzer — when do they appear?)
    □ Google Alerts on competitor names
    □ Industry trade publications (Fierce Healthcare for Allevio; Broadcasting+Cable; AdWeek for Column6)
    □ Prospect and customer conversations ("what are you hearing from others in the market?")
```

## Output Format

```markdown
# Battle Card — [Competitor Name] | [Entity]
**Updated:** [Date] | **Maintained by:** Dr. Lewis

---

## Competitor Profile

**Who they are:** [2-sentence description]
**Relative strength:** [Major threat / Mid-tier / Niche]
**Most common deal scenario:** [When do we run into them?]

---

## Honest Assessment

| Dimension | Their strength | Our strength | Advantage |
|-----------|-------------|-------------|----------|
| Price | [$X PMPM] | [$85 PMPM] | ✅ Us / ❌ Them / 🟡 Even |
| Network size | [Large] | [AZ-focused] | ❌ Them |
| Cost reduction track record | [Not published] | [14% avg Year 1] | ✅ Us |
| Transparency | [Limited] | [Full employer data] | ✅ Us |

---

## Landmines (What They'll Say About Us)

| What they say | How to respond |
|--------------|----------------|
| "They're smaller than us" | "We focus exclusively on Arizona, so you get a dedicated local team..." |
| "Their network is limited" | "Our AZ network covers [X] providers in Maricopa..." |

---

## Our Winning Message

[2-3 sentences — why a prospect should choose us over this specific competitor. Specific; uses their language]

---

## Proof Points

1. [Case study or stat that wins this comparison]
2. [Second proof point]
3. [Third proof point]

---

## Intelligence Last Updated

| Source | Date | Finding |
|--------|------|---------|
| Their website | [Date] | [Pricing page change; new product launch] |
| Win/loss data | [Date] | [Win rate vs. this competitor this quarter: X%] |
```

## Output Contract
- Competitive intelligence must be honest — a battle card that exaggerates competitor weaknesses is dangerous; sales reps who use inaccurate competitive claims in front of a prospect who knows the competitor (e.g., a prospect whose HR consultant works with the competitor) lose immediately; Dr. Lewis writes battle cards with accurate competitor profiles ("they are strong at X") and positions Allevio/Column6/HIVE on specific, demonstrable advantages, not on manufactured weaknesses
- Battle cards are living documents, not annual deliverables — a competitor's pricing or product changes quarterly; a battle card that is 18 months old is likely wrong on at least one material point; Dr. Lewis updates battle cards quarterly or when a significant competitive change is discovered; the sales team is expected to report competitive intelligence from the field (what they hear from prospects) for integration into the battle cards
- The biggest competitor is often the status quo — for Allevio, the most common "loss" is not to a specific competitor but to inertia ("we'll stay with what we have"); the battle card for "status quo" is one of the most important documents to build and maintain; it is built around the compounding cost of staying on the current path (claim ratio trend; renewal premium increase; 3-year cost of doing nothing)
- HITL required: Dr. Lewis builds and maintains battle cards; CEO reviews quarterly to confirm accuracy (the CEO often has the most current competitive intelligence from conversations); sales reps contribute field intelligence; Matt Mathison is informed when a significant competitive threat appears (new entrant; competitor acquisition; pricing war); Dr. Lewis does not disparage specific competitors by name in official company materials — battle cards are internal sales tools, not public documents

## System Dependencies
- **Reads from:** Win/loss analysis (sales-win-loss-analyzer — which competitors appear in losses? at what rate?); CRM loss reasons (GoHighLevel — competitor names in loss reason fields); prospect conversations (discovery debrief — what competitors did the prospect mention?); industry sources (trade publications; LinkedIn; competitor websites); Google Alerts (competitor monitoring); sales rep field reports
- **Writes to:** Battle cards (SharePoint/Sales/<Company>/CompetitiveIntel/BattleCard_[Competitor]_v[X]_[Date].pdf); competitive landscape overview (SharePoint/Sales/<Company>/CompetitiveIntel/Landscape_[Year].pdf); outbound sequence updates (sales-outbound-sequencer — incorporate competitive differentiation into messaging); proposal differentiation section (sales-proposal-builder — what to say when competing against X)
- **HITL Required:** Dr. Lewis builds and updates; CEO validates accuracy; sales reps contribute field intelligence; Matt Mathison informed of significant competitive threats; battle cards are not published externally without CEO approval; Dr. Lewis does not make claims about competitors in externally-facing documents (proposals; marketing) without CEO approval and legal review of the accuracy of the claims

## Test Cases
1. **Golden path:** Building the Allevio battle card for Blue Cross Blue Shield AZ → Dr. Lewis researches: BCBS AZ website: pricing not published (quote-based); known market position: largest carrier in AZ; employer group pricing estimates from broker contacts: $110-130 PMPM for similar groups; BCBS strengths: brand trust; large network; established broker relationships; BCBS weaknesses: no employer-specific cost data (they won't tell you your own claim ratio); reactive management (no proactive population health management); not price-competitive with Allevio's model; Winning message: "Blue Cross gives you their network — we give you your data. You'll know exactly where your healthcare dollars are going and how to reduce costs. That transparency is what drives our 14% average Year 1 reduction — and why our clients stay." Battle card built; CEO reviews and confirms; distributed to sales reps; first deal where it's used: rep reports that the prospect said "Your analysis of the claim ratio was something we'd never gotten from BCBS — that's what convinced us."
2. **Edge case:** A rep reports that a new, unfamiliar competitor ("HealthBridge AZ") is appearing in 3 different prospects' conversations this quarter → Dr. Lewis initiates competitive research: website review (HealthBridge AZ: founded 2024; AZ-based MSO; target market: 50-300 employee groups); LinkedIn: 12 employees; CEO background in carrier sales; no published pricing; Google: no press coverage; Assessment: "Early-stage competitor with similar model and overlapping ICP. Not yet a material threat based on size and track record. Recommend: (1) Add to the competitive monitoring list; (2) Try to learn their pricing from the next prospect who mentions them; (3) Build a preliminary battle card within 30 days. I'll monitor this quarterly." Preliminary battle card created; added to the monitoring list
3. **Adversarial:** A Column6 sales rep asks Dr. Lewis to include in the Column6 proposal a statement that "Google DV360 is known for fraudulent inventory and you shouldn't use them" → Dr. Lewis: "That's not accurate enough to include, and it's risky. Google DV360 has inventory quality issues in the broader programmatic ecosystem — that's true and documented. But 'fraudulent inventory' is a legal claim that could expose Column6 to a defamation claim from Google if included in a written proposal. The right approach: (1) In the proposal, state our own inventory quality standards (IAS/DoubleVerify certified; full supply chain transparency) — let the comparison be implied, not explicit; (2) In conversation, a rep can say 'co-mingled premium and remnant inventory is a well-documented issue in programmatic' without naming Google specifically; (3) We don't put specific competitive claims in written proposals without legal review." Rep accepts the framing; proposal updated with Column6's quality claims without attacking Google directly

## Audit Log
All battle cards retained by entity, competitor, and version date. Win rate vs. each competitor retained quarterly. Field intelligence reports retained. CEO review records retained. Any external competitive claims reviewed by legal are retained.

## Deprecation
Retire when each portfolio company has a dedicated marketing or sales operations function that maintains the competitive intelligence program — with Dr. Lewis reviewing the quarterly competitive landscape summary and Matt Mathison informed of significant competitive threats.
