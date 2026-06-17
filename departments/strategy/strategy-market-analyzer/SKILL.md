---
name: strategy-market-analyzer
description: "Analyze market size, growth, and opportunity — TAM/SAM/SOM and competitive positioning. Use when the user says 'market analysis', 'market size', 'TAM', 'SAM', 'SOM', 'total addressable market', 'market opportunity', 'market research', 'size the market', 'market sizing', 'market growth', 'how big is this market', 'market dynamics', 'industry analysis', 'market entry analysis', or 'market opportunity assessment'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--market <description>] [--method <top-down|bottom-up|value-based>]"
---

# Market Analyzer

Analyze market size, growth dynamics, and competitive opportunity for MBL portfolio companies — providing the evidence base for investment theses, acquisition screening, new product decisions, and strategic planning. Market analysis at PE portfolio scale is not academic — it answers investor-grade questions: Is this market growing or shrinking? What is the realistic capture opportunity? Are we fighting over a large, growing market or a small, declining one? The rigor of the analysis determines whether strategic decisions are made on data or on optimism.

## When to Use
- Investment thesis development for a new acquisition target
- Annual planning — are market conditions still favorable?
- A new product or service line is being evaluated
- Matt Mathison asks "how big is this market?"
- A competitor is behaving unexpectedly — are they responding to market signals?
- Entry into a new geography or vertical

## Market Analysis Framework

```
Market sizing methodology:
  
  TAM (Total Addressable Market): The total revenue opportunity if 100% market share — theoretical ceiling
    Top-down: Start from industry reports (IBISWorld, Statista, CMS data); segment to relevant geography and customer type
    Bottom-up: Count potential customers × average revenue per customer
    Example (Allevio): Total US MSO market; then Arizona MSO market; then competitor MSO patient volumes in AZ
    
  SAM (Serviceable Addressable Market): The portion of TAM that the company can realistically serve given its current capabilities, geography, and business model
    Geographic constraint: AZ/UT service area, not national
    Capability constraint: Current service mix (primary care + specialist mix)
    Regulatory constraint: Payer mix (Medicare/Medicaid/commercial acceptance rates)
    
  SOM (Serviceable Obtainable Market): Realistic near-term capture given competition and go-to-market capacity
    Rule of thumb: SOM ≤ 10-20% of SAM in Year 1-3 for a company without dominant market position
    Evidence-based: What have comparable companies achieved in comparable markets in comparable timeframes?
    
  Market growth analysis:
    Historical CAGR: Last 3-5 years from public sources
    Forward projections: CMS projections (healthcare), EIA (oil & gas), IAB (media/ad tech)
    Growth drivers: What forces are growing the market? (Aging population for Allevio; streaming for Column6)
    Growth inhibitors: What could slow or reverse growth?
    
  Portfolio entity market contexts:
    Allevio (Healthcare MSO): AZ healthcare services market; growing (aging population, AZ population growth); competitive (hospital systems, large MSO groups, telehealth)
    HIVE Partners (Oil & Gas): Uinta Basin; Tier 1 tight oil; price-dependent; WTI price is a market condition not a market size
    Column6/Siprocal (CTV/Media): CTV advertising market; fast-growing (cord-cutting tailwind); highly competitive (Trade Desk, Google, Magnite); ad tech platform dynamics
    
  Market structure analysis:
    Number of competitors and concentration (HHI)
    Barriers to entry: capital, regulatory, network effects, switching costs
    Pricing dynamics: commoditizing or premium-supporting?
    Customer power: are customers consolidating? (payer consolidation in healthcare)
    Supplier power: key input cost dynamics
```

## Output Format

```markdown
# Market Analysis — [Market Name]
**Entity:** [Company] | **Date:** [Date] | **Analyst:** Dr. John Lewis
**Purpose:** [Investment thesis / Annual planning / New product / Acquisition screening]

---

## Market Size

| Metric | Size | Source | Notes |
|--------|------|--------|-------|
| TAM | $[X]B | [Source + year] | [Geography; definition] |
| SAM | $[X]M | [Dr. Lewis calculation] | [Constraints applied] |
| SOM (Year 1-3) | $[X]M | [Dr. Lewis estimate] | [Basis for estimate] |

**TAM methodology:** [How calculated — top-down from [Source] + bottom-up cross-check via [method]]

---

## Market Growth

**Historical CAGR ([Year]-[Year]):** [X]% | **Source:** [Source]
**Forward growth estimate:** [X]% CAGR ([Year]-[Year]) | **Source:** [Source]
**Key growth drivers:**
1. [Driver 1 — specific, with evidence]
2. [Driver 2]
3. [Driver 3]

**Growth risks:** [What could slow or reverse growth]

---

## Market Structure

**Number of significant competitors:** [N] | **Market concentration:** [Fragmented / Moderate / Concentrated]
**Top 3 competitors:** [Competitor A — estimated share; B; C]
**Our estimated current share:** [X]% of SAM

| Competitive force | Strength | Trend | Notes |
|-----------------|---------|-------|-------|
| Competitor intensity | [Low/Med/High] | [Growing/Stable] | |
| Buyer power | [Low/Med/High] | | [Payer consolidation trend] |
| Supplier power | [Low/Med/High] | | [Key input: talent / crude / data] |
| Barriers to entry | [Low/Med/High] | | [Regulatory / Capital / Network] |
| Substitution threat | [Low/Med/High] | | [Telehealth / direct streaming / self-serve ad] |

---

## Market Position Assessment

**[Company name] position in this market:** [Leader / Challenger / Niche / New entrant]
**Differentiation:** [What makes this entity different from competitors in this market]
**Market share trajectory:** [Growing / Stable / Declining — with basis]
**Key market risk:** [Top 1-2 risks from market dynamics to the investment thesis]

---

## Strategic Implications

**Investment thesis validation:** [Does market analysis support the original thesis? Stronger / Validated / Weaker — specific]
**Priority actions from market analysis:** [1-3 specific actions driven by market findings]
**Monitoring signals:** [What to watch quarterly that would change the assessment]

---

## Matt Mathison Brief

[Market name] analysis for [Company]: TAM $[X]B; SAM $[X]M; SOM [Year 1] $[X]M. Market growth: [X]% CAGR — [growing/stable/declining]. Market structure: [fragmented/concentrated]. Current position: [X]% of SAM. Thesis [Validated / Confirmed with nuances / Weakened — specific]. Top risk: [One sentence]. Recommended action: [One sentence].
```

## Output Contract
- Use triangulated sources, not single data points — a market size estimate from one analyst report is a number; a market size estimate that converges from a top-down industry report + bottom-up customer count + revenue-per-customer calculation from public comparables is a defensible investment-grade analysis; Dr. Lewis applies at least two methodologies and reports whether they converge; if they diverge significantly (>2×), the divergence itself is important information about market definition ambiguity
- SOM must be evidence-based, not aspirational — the most common error in market analysis is presenting the TAM as if it were the company's opportunity; a small regional healthcare MSO does not have a $900B US healthcare TAM as its opportunity; SOM is constrained by geography, capability, capital, and go-to-market capacity; Dr. Lewis produces an SOM estimate grounded in comparable company performance data, not management aspirations
- Market analysis is an input to decisions, not a conclusion — presenting a large TAM without connecting it to strategic choices is market analysis theater; the output of a market analysis is: (1) investment thesis validation, (2) specific strategic actions, (3) what to monitor; if the analysis doesn't change any decision or reveal any new action, it wasn't necessary
- HITL required: Dr. Lewis produces; CEO reviews market position assessment; Matt Mathison receives for investment thesis validation; material changes to market assessment (significant contraction, new entrant threat) trigger immediate Matt Mathison notification

## System Dependencies
- **Reads from:** Industry reports (IBISWorld, CMS, EIA, IAB), competitor public filings, comparable company data, payer/customer data (QuickBooks revenue by segment), geographic market data
- **Writes to:** Market analysis document (SharePoint/Strategy/<Company>/Market/); annual strategic plan (strategy-annual-plan-builder); investment thesis (strategy-investment-thesis); Matt Mathison brief
- **HITL Required:** Dr. Lewis produces; CEO reviews; Matt Mathison for investment thesis implications; material market changes → Matt Mathison immediately

## Test Cases
1. **Golden path:** Market sizing for Allevio AZ healthcare MSO market → Top-down: Arizona healthcare services market; AZ DHS data + CMS utilization data; AZ population 7.4M; primary care visit rate 2.8 visits/person/year = ~21M primary care visits/year in AZ; average reimbursement $185/visit = TAM ~$3.9B for primary care in AZ; MSO-managed practices: ~35% of AZ practices are MSO-affiliated = SAM ~$1.4B; Allevio target segment: practices with 3-15 providers in Phoenix metro + Tucson = SAM $280M; bottom-up cross-check: 180 eligible practice groups × average Allevio revenue potential $1.5M/yr = $270M (≈ converges); SOM Year 1-3: 3-8 practice affiliations = $4.5-12M; Allevio current: $2.1M revenue = ~0.75% of SAM; thesis: underweight in a growing market with significant upside if patient volume and referral network expand as planned
2. **Edge case:** Matt Mathison asks about the market for a potential acquisition target — a 12-provider dental group practice in Utah → Run the same framework; TAM: Utah dental services market ($850M from ADA + state population data); SAM: Wasatch Front metro area ($340M); SOM Year 1-3: expand from 12 to 20 providers = ~$4.5M incremental revenue; market structure: fragmented (hundreds of small practices) but DSO consolidation accelerating; growth: aging population + dental insurance penetration growth; barriers to entry: ADA licensing, equipment capital, trained clinical staff; thesis check: DSO consolidation wave + fragmented market = buy-build opportunity; risk: DSO competition from larger players (Aspen, Heartland) entering Utah; strategic implication: acquire now before market gets picked over by national DSOs
3. **Adversarial:** Management presents a market analysis showing a $50B TAM to justify their growth projections → $50B TAM with a $5M revenue company is not an opportunity statement — it's a distraction; Dr. Lewis reframes: "What's the SAM we can actually serve with current capabilities?" and "What comparable company has captured a similar percentage in a similar timeframe?"; if management can't answer these questions with data, the market analysis isn't ready to drive decisions; Dr. Lewis does not validate an analysis based on TAM magnitude alone

## Audit Log
Market analysis documents retained 5 years. Investment thesis inputs retained permanently. Methodology notes and sources retained with analysis. Matt Mathison briefs retained. Annual market update notes retained.

## Deprecation
Retire when portfolio companies have strategy or finance functions capable of producing investment-grade market analysis — with Dr. Lewis reviewing and challenging the findings for thesis alignment rather than producing the analysis from scratch.
