---
name: sales-competitive-playbook
description: "Manage competitive intelligence and win/loss strategy for MBL portfolio company sales teams. Use when the user says 'competitive', 'competition', 'competitor', 'competitive intelligence', 'competitive analysis', 'battlecard', 'competitive battlecard', 'win against', 'beat competitor', 'compete with', 'how do we win', 'why do we lose', 'win rate', 'win/loss', 'lost to competitor', 'lost deal', 'why we lost', 'competitive positioning', 'competitive differentiation', 'how are we different', 'what makes us better', 'competitor pricing', 'competitor product', 'competitor strength', 'competitor weakness', 'who are we up against', 'who else are they evaluating', 'market analysis', 'competitive landscape', 'competitive update', 'competitive review', 'competitive debrief', 'competitive win', 'competitive loss', 'prospect mentioned competitor', 'they mentioned', 'other vendor', 'Allevio competition', 'MSO competition', 'CTV competition', 'Column6 competition', 'programmatic competition', 'HIVE competition', 'acquisition competition', or 'head to head'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--competitor <name>] [--action <battlecard|win-loss|update|landscape>]"
---

# Sales Competitive Playbook

Manage competitive intelligence and win/loss strategy for MBL portfolio company sales teams — maintaining entity-specific competitor battlecards, analyzing win/loss patterns, and providing reps with the positioning and language to win competitive deals. Competitive intelligence is only valuable if it's accurate, current, and actionable. A battlecard built on guesses fails in a live competitive conversation.

## When to Use
- A rep discovers they're in a competitive evaluation (who are we up against?)
- Preparing for a deal where a specific competitor is involved
- Quarterly competitive landscape update for an entity
- Win/loss debrief after a competitive deal closes or is lost

## Competitive Intelligence Framework

```
COMPETITIVE INTELLIGENCE SOURCES (legal and ethical only):
  Prospect conversations: "Who else are you evaluating?" (best source — direct)
  Win/loss interviews: structured debrief with rep after every competitive win or loss
  Lost deal debrief with prospect: 20% of lost deals → prospects will share why they chose competitor
  Public sources: competitor website; pricing pages; case studies; press releases; LinkedIn job postings
  Industry events: conference conversations; vendor sessions (not misrepresentation)
  Customer feedback: existing customers who evaluated competitors before choosing entity
  NEVER use: misrepresentation; posing as a prospect; non-public information from competitors' employees
  
ALLEVIO — COMPETITIVE LANDSCAPE:
  Competitor types:
    Other MSO/DPC (Direct Primary Care) providers: [primary competitor class in AZ market]
    Telemedicine-only vendors: Teladoc; MDLive; similar (telehealth as PCP substitute)
    Status quo: no change; employer keeps current benefits structure
    
  Win when: employer has explicit cost reduction mandate; self-insured; 100+ employees; values relationship model
  Lose when: employer committed to telemedicine-only; very small (<75 employees); cost-only buyer who doesn't value access
  
  Battlecard vs. Telemedicine-only (generic):
    Their position: "Lower cost; no network required; any device"
    Our position: "Telemedicine complements primary care but doesn't replace it — complex cases need in-person evaluation"
    When we win: "Your employees need more than a 10-minute video call when they're sick"
    When they win: "Employer only values cost; not engagement; not relationship"
    Key proof point: employer aggregate data on utilization rates; care quality outcomes (aggregate, no PHI)
    
  Battlecard vs. Status quo (do nothing):
    Their position: "Switching is disruptive; current benefits are working"
    Our position: "Current claims trend is the competitor — Allevio is the solution to the cost problem"
    When we win: compelling event (renewal with cost increase); internal champion who owns the cost problem
    When they win: no compelling event; HR Director has no budget mandate; employer won't change
    
COLUMN6 — COMPETITIVE LANDSCAPE:
  Competitor types:
    Premium CTV SSPs: SpotX; Magnite; FreeWheel (supply-side platforms with premium CTV inventory)
    Open exchange CTV: programmatic DSP buying on open exchange (Trade Desk; DV360)
    Direct publisher deals: agency buys directly from Hulu; Peacock; Roku; etc.
    
  Win when: agency prioritizes IVT quality + delivery guarantee over lowest CPM
  Lose when: agency is CPM-first and won't pay premium for inventory quality
  
  Battlecard vs. Open Exchange:
    Their position: "Lowest CPM; full scale; programmatic efficiency"
    Our position: "Open exchange IVT rates of 8-12% mean you're paying for impressions that never delivered"
    Effective CPM model: show CPM adjusted for IVT rate (Column6 effective CPM often competitive with open exchange after adjustment)
    When we win: agency has had IVT problems; has viewability mandates from client; values delivery guarantee
    When they lose: CPM-only buyer; no IVT measurement in place
    
  Battlecard vs. Direct Publisher:
    Their position: "Brand-safe; guaranteed delivery; premium audience"  
    Our position: "Direct publisher deals lock you into one network; Column6 gives you cross-platform reach at similar quality"
    When we win: agency wants CTV scale across multiple platforms without managing multiple direct relationships
    When they win: specific publisher audience mandate from client (e.g., "only Hulu")
    
HIVE — COMPETITIVE LANDSCAPE:
  Competitor types (mineral acquisition):
    Large O&G private equity funds: larger check sizes; faster close; established relationships
    Individual/family operators: in-basin buyers with relationship advantage
    Public mineral companies (e.g., Viper Energy; Black Stone Minerals): scale; public market currency
    
  Win when: seller values relationship + local presence + reasonable timeline over maximizing price
  Lose when: seller is optimizing for maximum price or fastest close (large PE funds or auctions)
  
  Positioning vs. large PE funds: "HIVE is a long-term partner in the basin; we're not flipping this interest — 
    we're committed to the Uinta Basin and this acquisition is part of that story"
    
WIN/LOSS ANALYSIS FRAMEWORK:
  Every closed deal (won or lost): rep completes 5-question debrief in GHL within 5 business days
  Win debrief: why did we win? What was the deciding factor? What did we almost lose on?
  Loss debrief: why did we lose? What competitor won? Was it price, product, relationship, timing?
  Quarterly loss analysis: Dr. Lewis reviews all loss codes; identifies pattern; entity CEO briefed
  If ≥30% of losses are same reason: product/pricing/positioning issue — not a rep issue
```

## Output Format

```markdown
# Competitive Battlecard — [Entity] vs. [Competitor Type] | [Date]
**Updated by:** Dr. Lewis | **Entity CEO reviewed:** [Yes/No/Date]

---

## Competitor Profile
**Who they are:** [1 sentence]
**Their strength:** [What they do well]
**Their weakness:** [Where they fall short]
**Price positioning:** [Higher/Lower/Similar to us]

---

## When We Win
[Specific scenario + why our positioning lands]

## When We Lose
[Specific scenario + honest assessment]

---

## Response to "Why not [Competitor]?"
[Rep-ready talking points — 3 bullets max; evidence-based]

## Proof Points to Use
[Aggregate data or case studies that support our position — no PHI for Allevio]

---

## Win/Loss Trend (last 90 days)
- Wins vs. this competitor: [N]
- Losses vs. this competitor: [N]  
- Primary loss reason: [Pattern]
```

## Output Contract
- Battlecards must be honest about when we lose — a battlecard that only describes when we win is propaganda, not intelligence; reps who know when Column6 loses to open exchange (CPM-only buyers) won't waste time trying to convert those buyers; they'll qualify harder on IVT and delivery priorities; a battlecard that says "we always win when..." and never says "we lose when..." trains reps to believe they should win every deal, which leads to poor pipeline quality and inflated close rate expectations; Dr. Lewis requires the "when we lose" section to be as specific as the "when we win" section
- Competitive claims must be verifiable — a battlecard that says "our IVT rate is 2% vs. competitor's 8%" must be based on actual measured data (Column6's own campaigns; publicly reported industry benchmarks); a rep who makes a competitive claim in a prospect conversation that turns out to be inaccurate destroys credibility in that deal and potentially broader reputation in a market where agency buyers talk to each other; Dr. Lewis validates all competitive claims against actual data before the battlecard is published; "we believe" and "customers tell us" are labeled as such; benchmarks cite their source
- HITL required: battlecard publication → entity CEO reviews before distributing to sales team; competitive claims → Dr. Lewis validates data source; Allevio competitive proof points → employer-aggregate only (no PHI); win/loss pattern (≥30% same loss reason) → entity CEO + Dr. Lewis review; competitive response to an active deal → Dr. Lewis may review before rep engages; HIVE competitive intelligence → Dr. Lewis + Matt Mathison informed if acquisition competition is pricing HIVE out of deals

## System Dependencies
- **Reads from:** Win/loss records (GHL — debrief notes; loss codes); prospect conversations (GHL notes — "who else are they evaluating?"); competitor websites; industry reports; customer interviews (aggregate feedback); entity CEO competitive observations; industry event intelligence
- **Writes to:** Battlecard library (SharePoint → [Entity] → Sales → Competitive → Battlecards → [v.N]); GHL (competitive field on opportunities; loss code updates); win/loss analysis report (quarterly; entity CEO + Dr. Lewis); entity CEO briefing (competitive pattern alerts)
- **HITL Required:** Battlecard publication → entity CEO reviews; competitive data validation → Dr. Lewis; Allevio proof points → aggregate only; win/loss pattern alert → entity CEO + Dr. Lewis; HIVE competition pricing → Matt Mathison informed; competitive claim in active deal → Dr. Lewis may review

## Test Cases
1. **Golden path:** Q2 2026 Allevio competitive review. GHL loss code analysis (14 losses in Q2): 5 lost to "telemedicine-only vendor" (36%); 4 lost to "status quo/do nothing" (29%); 3 lost to "no compelling event/timing" (21%); 2 to budget (14%). Pattern: telemedicine-only is primary competition. Entity CEO briefed: "Nearly 40% of Q2 losses are to telemedicine vendors — reps need a stronger handle on the 'telemedicine doesn't replace primary care' positioning. Recommend: (1) Update battlecard with specific data on telemedicine vs. in-person care utilization outcomes; (2) Add a qualification question earlier in discovery: 'Are you currently evaluating telemedicine-only solutions, or are you open to in-person primary care access?'" Battlecard v1.2 published with updated proof points.
2. **Edge case:** Column6 AE is about to use a competitive claim in a proposal: "Our IVT rate is 3× better than Trade Desk open exchange buys" → Dr. Lewis: "Before this goes in a proposal, I need to verify the data behind that claim. Where is the 3× figure from? Is it our measured IVT rate compared to published industry benchmarks, or is it a general estimate? If it's our measured data vs. industry benchmark, cite the source and the date of measurement in the proposal. If it's an estimate, change the language to 'industry benchmarks for open exchange CTV show IVT rates of [X-Y]%, while our measured IVT rate is [Z]%.' Verifiable claims with sources build credibility; estimated claims that get challenged destroy it."
3. **Adversarial:** A rep poses as a prospect to get pricing from a competing MSO vendor for competitive intelligence → Dr. Lewis: "That's a misrepresentation — I can't condone it and it stops immediately. Beyond the ethics, it's a practical risk: if that competitor discovers it, it becomes a market reputation issue for Allevio in a market where we need to be seen as a trusted clinical partner. What competitive pricing information we legitimately need: we get it from prospects who share it voluntarily in discovery ('We've spoken to [Vendor] and they're offering $X PMPM'), from lost deal debriefs, and from public sources. If we don't know a competitor's pricing, we say 'I don't have their exact pricing, but here's how our value compares.' That's honest and it's enough."

## Audit Log
Battlecard version history (all versions; entity CEO review; SharePoint). Win/loss debrief records (all deals; GHL + SharePoint). Competitive claim validation records (data source; date; Dr. Lewis verification). Quarterly competitive analysis reports (entity CEO briefing). Loss code trend data. Competitive intelligence source records (legal sources only). Pattern alert records (≥30% same loss reason; entity CEO + Dr. Lewis notification).

## Deprecation
Battlecards reviewed quarterly against win/loss data. Competitive landscape reviewed semi-annually. Competitive claims reviewed when entity's performance data changes. Loss code taxonomy reviewed when sales process or ICP changes. HIVE competitive intelligence reviewed when Uinta Basin acquisition market changes.
