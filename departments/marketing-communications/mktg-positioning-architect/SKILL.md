---
name: mktg-positioning-architect
description: "Build competitive positioning for MBL Partners portfolio entities. Use when the user says 'positioning', 'competitive positioning', 'market positioning', 'how do we position', 'differentiation', 'competitive differentiation', 'unique selling proposition', 'USP', 'value proposition', 'competitive advantage', 'what makes us different', 'how are we different', 'why choose us', 'competitive landscape', 'how do we stack up', 'competitive analysis', 'competitive comparison', 'against competitors', 'positioning statement', 'category definition', 'market category', 'create a category', 'own a category', 'competitive messaging', 'battlecard', 'sales battlecard', 'competitive intel for sales', 'objection handling positioning', or 'how should we differentiate'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|north-vista>] [--audience <employers|agencies|landowners|lps>] [--action <develop|audit|update|battlecard>]"
---

# Marketing Positioning Architect

Build and maintain competitive positioning for MBL Partners portfolio entities — defining how each entity is differentiated in its market, how to communicate that differentiation to specific audiences, and how to arm sales teams with messaging that handles competitive objections. Positioning is the strategic foundation that makes all marketing more effective; without clear positioning, marketing spend produces attention but not conviction.

## When to Use
- A new product or service needs competitive positioning
- Sales team is losing deals to specific competitors and needs better differentiation messaging
- Positioning feels generic or indistinguishable from competitors
- A market shift (new competitor; regulatory change; technology shift) requires positioning update

## Positioning Framework

```
ENTITY COMPETITIVE CONTEXTS:

  ALLEVIO (healthcare MSO):
    Primary market: employer-sponsored health plans (AZ; MSO model)
    Competitors: traditional EAPs; TPAs; direct primary care vendors; national insurance-embedded programs
    Differentiators:
      - Care coordinator model (vs. digital-only or triage-only competitors)
      - Employer-aligned economics (Allevio's success tied to employer GRR; not volume-incentivized)
      - AdvancedMD data integration (clinical-to-employer reporting loop)
      - Arizona-based operations (local knowledge; local relationships)
    Key positioning: "The only care coordination MSO aligned entirely with your financial outcomes"
    Proof required: employer GRR data; claim ratio improvement case studies
    
  HIVE PARTNERS (oil & gas):
    Primary market: Uinta Basin landowners (royalty trust model)
    Competitors: major operators; other royalty aggregators; direct-to-landowner operators
    Differentiators:
      - Basin-specialist (not a generalist operator)
      - Transparent royalty reporting (monthly; Covercy platform)
      - Landowner relationship model (not arm's-length extraction)
      - Environmental stewardship positioning (DOGM compliance; proactive disclosure)
    Key positioning: "The Uinta Basin operator that treats you like a partner, not a resource"
    Proof required: on-time royalty payment record; landowner retention rate; DOGM compliance record
    
  COLUMN6 (CTV/programmatic):
    Primary market: media agencies (independent + holding company) + direct advertisers
    Competitors: The Trade Desk; Magnite; PubMatic; regional programmatic platforms; CTV aggregators
    Differentiators:
      - VCR performance (measurably above industry average)
      - IVT/fraud protection (proactive; not reactive)
      - Agency partnership model (not competing with agencies for direct business)
      - CTV + mobile + gaming (multi-surface reach from one platform)
      - Transparent reporting (no black-box inventory)
    Key positioning: "Programmatic with accountability — every impression, every measurement, no games"
    Proof required: VCR data vs. industry benchmarks; IVT rate vs. MRC standards; agency NRR
    
  MBL PARTNERS:
    Primary market: lower-middle market business sellers; co-investors; LPs
    Differentiators vs. PE peers:
      - Operational improvement focus (not financial engineering)
      - Sector expertise (healthcare MSO; energy royalties; CTV)
      - THRIVE values-driven diligence (Integrity kill criterion distinguishes from opportunistic PE)
      - Portfolio operational support (Dr. Lewis embedded capability; not hands-off ownership)
    Key positioning: "Operationally-driven private equity — we build businesses, not just returns"

POSITIONING STATEMENT TEMPLATE:
  For [target audience] who [need/pain point],
  [Entity] is the [category] that [key differentiator].
  Unlike [primary alternative], we [specific proof of differentiation].
  
BATTLECARD STRUCTURE:
  1. What they say about us: [common objections]
  2. What we say about them: [factual competitive weaknesses — never personal]
  3. When we win: [deal characteristics that favor us]
  4. When we lose: [honest assessment of where competitor is stronger]
  5. Key questions to ask: [discovery questions that surface our differentiation]

POSITIONING MAINTENANCE:
  Review: quarterly competitive scan; annual full repositioning review
  Trigger for update: competitor launches feature/product that closes a differentiation gap
  Column6: quarterly (programmatic market moves fast)
  Allevio: semi-annual (MSO market evolving; ACA/regulatory shifts)
  HIVE: annual (Basin-specific dynamics; WTI price context)
```

## Output Format

```markdown
# Competitive Positioning — [Entity] — [Audience] — [Date]
**Prepared by:** Dr. Lewis / Marketing Lead | **Approved by:** Entity CEO

---

## Positioning Statement
For [audience] who [pain point],
[Entity] is the [category] that [key differentiator].
Unlike [alternative], we [proof].

---

## Differentiation Map

| Our Strength | Competitor Weakness | Our Proof |
|-------------|--------------------|-----------| 
| [Specific differentiator] | [How competitors fail here] | [Data point or case] |

---

## Battlecard — vs. [Competitor Name]

**What they lead with:** [Their positioning claim]
**Our response:** [Factual counter]
**Questions to ask:** [Discovery questions that surface our differentiation]
**When we win:** [Scenario characteristics]
**When they win:** [Honest assessment]

---

## Messaging by Stage

| Stage | Message focus |
|-------|--------------|
| Awareness | [Why the category matters] |
| Consideration | [Why we're different] |
| Decision | [Why us vs. specific competitor] |
```

## Output Contract
- Every differentiation claim is supported by data — "we have better service" is not a differentiation claim; "our agency NRR is 95% vs. industry average of 82%" is a differentiation claim; Dr. Lewis does not approve positioning that includes unsupported claims; for Allevio, claims about health outcomes require HIPAA-compliant aggregate data (never PHI); for Column6, performance claims require actual campaign data vs. published benchmarks; for HIVE, royalty payment claims require payment record documentation
- Competitive analysis is factual, never personal — positioning that attacks a competitor's leadership, character, or specific business failures is legally and reputationally risky; Dr. Lewis ensures all competitive content is based on publicly available market facts and objective performance data; "their platform has a 12% IVT rate vs. our 3% IVT rate" is competitive intelligence; "their CEO is incompetent" is not
- The "when we lose" section of the battlecard is required — a battlecard that only describes when we win gives sales reps a false confidence and makes them unable to qualify out poor-fit deals; knowing when a competitor is the better choice (and communicating that honestly to prospects) builds credibility; Column6 AMs who can tell an agency "for your specific use case, [Competitor] might serve you better — but here's where we add more value for your CTV-heavy campaigns" close more business than those who claim to be best for everything
- HITL required: positioning statement → entity CEO approves; battlecard (competitive claims) → Dr. Lewis reviews for factual accuracy; Allevio health claims → Dr. Lewis HIPAA review; positioning update after competitor launch → entity CEO + Dr. Lewis assess; MBL Partners positioning → Matt Mathison approves

## System Dependencies
- **Reads from:** mktg-brand-strategist (brand positioning inputs); mktg-competitive-intelligence (current competitor landscape); mktg-messaging-matrix (message hierarchy informed by positioning); cs-competitive-intel (customer-level competitive insights from CS team); sales-competitive-intel (sales team competitive signals)
- **Writes to:** Positioning document (SharePoint → Marketing → Positioning → [Entity]); sales battlecards; website copy inputs; campaign messaging; event and PR talking points
- **HITL Required:** Positioning statement → entity CEO; battlecard claims → Dr. Lewis factual review; Allevio health claims → Dr. Lewis HIPAA; positioning update → entity CEO + Dr. Lewis; MBL positioning → Matt Mathison

## Test Cases
1. **Golden path:** Column6 needs updated positioning vs. The Trade Desk for agency battlecard. Competitive research: TTD positions as "the independent DSP for the open internet." Column6 positioning: "We specialize in CTV, mobile, and gaming with accountability metrics TTD's general-purpose platform doesn't prioritize." Battlecard: TTD strength = scale and technology investment; Column6 strength = surface-specific expertise, VCR/IVT focus, agency partnership (not competing for direct). Key question to ask: "What percentage of your campaigns are CTV? Are you getting the reporting granularity you need?"
2. **Edge case:** Allevio loses 3 employers in a row to the same competitor → Dr. Lewis: "This is a positioning signal. Let me look at the exit interviews and post-mortem notes. If we're losing consistently to [Competitor] on [specific dimension], either: (1) they've genuinely improved in an area we claimed as ours — we need to close that gap; or (2) our sales team isn't communicating our differentiation effectively — we need better battlecard training. Let me do a competitive audit of their materials and compare to our win/loss patterns."
3. **Adversarial:** CEO wants to include a claim that Allevio has "the best care coordinator model in Arizona" without data → Dr. Lewis: "We can't make a superlative claim we can't prove. 'Best' in any form invites a challenge we'd have to document. Let me reframe this as: 'The only employer-aligned care coordination MSO operating natively in Arizona' — this is verifiable and more meaningful to the employer audience anyway. If we want to use 'best,' we need a published ranking or survey to cite. Let me find out if MGMA or any employer benefits association has one."

## Audit Log
Positioning documents retained with version history. Entity CEO approval records. Battlecard update records (date + trigger). Competitive claim factual review records. HIPAA review records (Allevio). Matt Mathison approval records (MBL Partners).

## Deprecation
Positioning reviewed quarterly (Column6) or semi-annually (Allevio/HIVE) or annually (MBL Partners). Full repositioning when: competitor closes primary differentiation gap; entity pivots product model; market category definition shifts.
