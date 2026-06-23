---
name: revops-market-penetration-tracker
description: "Track market penetration and addressable market coverage for MBL Partners portfolio entities. Use when the user says 'market penetration', 'TAM', 'total addressable market', 'SAM', 'serviceable addressable market', 'SOM', 'serviceable obtainable market', 'market share', 'market coverage', 'white space', 'whitespace', 'untapped market', 'how big is the market', 'how much of the market do we have', 'how much is left to capture', 'market size', 'market opportunity', 'market penetration rate', 'penetration rate', 'growth opportunity', 'addressable employers', 'addressable agencies', 'market potential', 'how many prospects are there', 'how much runway do we have', 'market saturation', 'coverage vs. opportunity', 'market penetration report', 'market analysis', or 'how much of the market can we win'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--market-level <tam|sam|som>] [--action <calculate|track|report|update>] [--period <annual|quarterly>]"
---

# RevOps Market Penetration Tracker

Track market penetration and addressable market coverage for MBL Partners portfolio entities — calculating TAM, SAM, and SOM for each entity, measuring current penetration rate, and identifying whitespace for growth strategy. Market penetration data answers the question every investor asks: "How much runway do you have?" and grounds expansion decisions in market reality rather than intuition.

## When to Use
- Annual market sizing exercise for entity or portfolio
- Preparing investor or LP materials with market opportunity data
- Setting sales territory coverage targets based on addressable accounts
- Identifying whitespace geographies or segments for expansion

## Market Penetration Framework

```
MARKET SIZING BY ENTITY:

  ALLEVIO (MSO/Healthcare Benefit — AZ market):
    TAM: all US employers with ≥25 employees interested in non-insurance healthcare benefits
      Estimate: ~2.1M employers nationally; healthcare benefit spending $X billion/year
      (TAM is illustrative for strategic context; not Allevio's immediate target)
      
    SAM: Arizona employers with ≥25 employees + active employee benefit program
      Data source: AZ Dept of Revenue employer records; NAICS data; public employer databases
      Estimate: ~8,200 AZ employers ≥25 employees (2026 estimate)
      Subsegment filter: exclude employers with self-insured "Cadillac" plans (low Allevio fit)
      Adjusted SAM: ~6,400 employers (excluding lowest-fit segment)
      
    SOM: AZ employers Allevio can realistically target in 12-24 months given rep capacity
      1-2 AEs covering Phoenix metro + Tucson: reachable accounts ~1,800/year (Tier 1 + Tier 2)
      SOM = number of accounts AEs can actively engage in the period given capacity
      
    CURRENT PENETRATION:
      Allevio active employer clients: [N] (from GoHighLevel)
      SAM penetration: [N] / 6,400 = X% (likely <1% currently — early stage; massive runway)
      
  COLUMN6 (CTV Platform — National Agency Market):
    TAM: all US media agencies and brands allocating CTV/programmatic budget
      Estimate: ~4,800 agencies with CTV capabilities nationally
      
    SAM: agencies with ≥$250K annual CTV budget (Column6's minimum ICP threshold)
      Estimate: ~1,200 agencies nationally meeting this threshold
      
    SOM: agencies Column6 can realistically reach with current AE capacity (named account model)
      2 AEs × 30 named accounts each = 60 active named accounts / year
      
    CURRENT PENETRATION:
      Column6 active agency clients: [N] (from GoHighLevel)
      SAM penetration: [N] / 1,200 = X% (likely 2-5% — early stage; significant runway)
      
  HIVE (Uinta Basin Mineral Rights):
    Market: defined acreage blocks within Uinta Basin, UT (DOGM public records)
    Addressable: total Uinta Basin acreage available for lease or acquisition
    Current lease position: [N] acres leased / total available
    Penetration: acres under lease or control / total addressable acreage
    
PENETRATION TRACKING:
  Annual: full market sizing update (data sources reviewed; estimates updated)
  Quarterly: active client count vs. SAM → penetration rate updated in portfolio dashboard
  Trigger: significant new competitor enters market → reassess SOM (share of wallet competition increases)
  
DATA SOURCES FOR MARKET SIZING:
  AZ employer data: AZ Dept of Revenue; NAICS; Dun & Bradstreet; ZoomInfo (if licensed)
  Agency CTV data: IAB; eMarketer; programmatic industry reports; agency network databases
  HIVE acreage data: Utah DOGM (Division of Oil, Gas and Mining) public records; SITLA
  
INVESTOR MATERIALS NOTE:
  Market size figures used in investor or LP materials → Dr. Lewis validates sources before use
  Penetration rate in investor materials → Dr. Lewis + entity CEO confirm accuracy
  "Market opportunity" claims must be defensible: cite the source; state the assumptions
```

## Output Format

```markdown
# Market Penetration Report — [Entity] — [Year]
**Prepared by:** Dr. Lewis | **Data sources:** [Sources cited]

---

## Market Sizing

| Level | Definition | Estimate | Assumption |
|-------|-----------|---------|------------|
| TAM | [All potential market] | $X / [N] accounts | [Source] |
| SAM | [Realistic target segment] | [N] accounts | [Criteria] |
| SOM | [What we can pursue with current capacity] | [N] accounts/year | [Capacity model] |

---

## Current Penetration

| Metric | Value | Notes |
|--------|-------|-------|
| Active clients | [N] | GoHighLevel confirmed |
| SAM penetration | X% | [N] / SAM |
| SOM penetration | X% | [N] / SOM |

---

## Whitespace Analysis

| Geography / Segment | Addressable accounts | Currently in pipeline | Penetrated | Priority |
|---------------------|--------------------|-----------------------|-----------|---------|
| Phoenix metro | [N] | [N] | X% | Core |
| Tucson metro | [N] | 2 | Very Low | Expand in Q1 |
| Flagstaff / NAU corridor | [N] | 0 | 0% | Lower priority |

---

## Runway Summary
[Comment: at current growth rate and capacity, how many years of runway remain in SAM?]
```

## Output Contract
- Penetration rate context prevents premature saturation assumptions — a Allevio sales team with 18 active employer clients at <1% of SAM (6,400 addressable AZ employers) has 99%+ of the market still ahead of them; framing this correctly for entity CEOs and Matt Mathison calibrates investment expectations: this is not a "defend our current position" business — it is a "capture the available market as fast as our capacity allows" business; the penetration rate puts resource investment decisions (hiring another AE; expanding to Tucson) in the right context
- Market size figures must be defensible — a claim that "the AZ employer healthcare market is a $2B opportunity" needs a source, a methodology, and a set of assumptions that Dr. Lewis has reviewed; investor and LP materials that include unsubstantiated market size claims create credibility risk; Dr. Lewis validates all market sizing figures before they appear in any external document, confirms the source is public and current, and ensures the assumptions are stated explicitly; "the TAM is large" is not an acceptable data point in an investor presentation
- HITL required: market sizing for investor or LP materials → Dr. Lewis + entity CEO validate before use; market size assumptions → Dr. Lewis reviews data sources; SOM calculation → entity CEO reviews (directly tied to sales capacity and hiring decisions); annual market sizing update → entity CEO + Dr. Lewis; whitespace expansion decision (e.g., add Tucson territory) → entity CEO + Dr. Lewis approve

## System Dependencies
- **Reads from:** GoHighLevel (active client count; pipeline by geography); public data sources (AZ Dept of Revenue; DOGM; IAB; NAICS); revops-territory-planner (territory coverage model — basis for SOM calculation); revops-quota-design-model (quota capacity → SOM constraint)
- **Writes to:** Market penetration reports (SharePoint → [Entity] → RevOps → Market → [Year]); portfolio market opportunity summary; investor/LP materials (entity CEO + Dr. Lewis reviewed); territory planning inputs; hiring capacity planning inputs
- **HITL Required:** Investor/LP market data → Dr. Lewis + entity CEO; market size assumptions → Dr. Lewis; SOM calculation → entity CEO reviews; annual update → entity CEO + Dr. Lewis; whitespace expansion → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio 2026 market penetration update. SAM: 6,400 AZ employers ≥25 EE (updated from 6,200 in 2025 — AZ employment growth). Active Allevio clients: 21. SAM penetration: 0.33% (massive runway). SOM 2026: 1 AE Phoenix-focused: 900 accounts reachable; adding Tucson AE (if hired Q1): +400 accounts → total SOM 2026 = 1,300. Pipeline currently covers: 64 accounts (Stage 1+). Whitespace: Tucson metro — 680 Tier 2 employers; 0 active pipeline (0 territory coverage). Recommendation: Tucson AE hire confirmed for Q1 (previously approved in territory plan). Dr. Lewis prepares market slide for Matt Mathison Q4 portfolio review: "Allevio has captured <1% of the AZ employer MSO market; SAM of 6,400 employers; no capacity constraint on growth — runway exceeds 5 years at current client acquisition rate."
2. **Edge case:** Entity CEO asks for a national market size for Allevio to use in a "future expansion" narrative for an investor conversation → Dr. Lewis: "National market sizing for Allevio is defensible strategically — the MSO/employer benefit market is large nationally. But I want to be careful: Allevio's current go-to-market is AZ-only, and our operational capabilities are AZ-specific (care network; regulatory relationships; DOGM local context for HIVE; etc.). Presenting a $2B national TAM when our actual market is currently AZ-only requires a very clear framing: 'SAM (current): 6,400 AZ employers; TAM (strategic expansion target): [national figure with source].' If the investor presentation conflates TAM with the current opportunity, it creates unrealistic expectations. I'll build the market slide with both figures clearly labeled and the assumptions stated."
3. **Adversarial:** Sales rep argues that the SAM is wrong because "there are way more than 6,400 employers in Phoenix alone" → Dr. Lewis: "The 6,400 is the AZ-wide estimate for employers with ≥25 employees. The Phoenix metro (Maricopa County) has approximately 4,200 of those. The 6,400 includes Tucson, Flagstaff, and smaller markets. If the rep is seeing more potential accounts than that in their territory, they may be including employers below the ≥25 EE threshold (which are Tier 3 — broker channel only, not direct AE) or employers outside ICP on other dimensions. My recommendation: I'll pull the specific Maricopa County employer count from the AZ Dept of Revenue database and we can see exactly how many ≥25 EE employers are in the rep's territory. If the data shows more than I estimated, I'll update the model. The market sizing is based on data, not intuition — and data beats intuition when they conflict."

## Audit Log
Annual market penetration reports. Data source references (all market sizing figures). Investor/LP materials with market data — Dr. Lewis validation records. Entity CEO approval records. Territory whitespace analysis records. SOM calculation methodology records.

## Deprecation
Market sizing updated annually. Data sources reviewed for freshness annually. SAM criteria reviewed when entity ICP changes. SOM model reviewed when entity rep capacity changes. National TAM expansion reviewed if Allevio expands beyond Arizona.
