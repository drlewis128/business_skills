---
name: sales-market-sizing
description: "Size the addressable market for MBL portfolio companies. Use when the user says 'market size', 'TAM', 'SAM', 'SOM', 'total addressable market', 'serviceable addressable market', 'serviceable obtainable market', 'market sizing', 'how big is the market', 'addressable market', 'market opportunity', 'how many potential customers', 'market potential', 'market analysis', 'what is our market opportunity', 'who is our total market', 'market estimation', 'bottom-up market sizing', 'top-down market sizing', 'opportunity sizing', or 'market opportunity analysis'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--segment <employer-group|agency|mineral-rights|lp>] [--action <build|update|validate>] [--method <top-down|bottom-up|both>]"
---

# Market Sizing

Size the addressable market for MBL portfolio companies — building TAM, SAM, and SOM estimates that are grounded in data and defensible to investors. Market sizing is used in LP presentations, strategic planning, and quota setting; a number that isn't credible destroys more trust than no number at all. Dr. Lewis builds market size estimates using bottom-up methodology (specific customer count × unit economics) rather than top-down extrapolation from broad industry statistics.

## When to Use
- Investor or LP presentation preparation (Matt Mathison is presenting market opportunity)
- Annual strategic planning (Is the market big enough to support the growth plan?)
- Setting sales quotas (How much of the addressable market can each rep address?)
- Evaluating whether to expand into a new segment or geography
- Evaluating a new portfolio company acquisition (How big is the market they operate in?)

## Market Sizing Framework

```
TAM / SAM / SOM DEFINITIONS:

  TAM — Total Addressable Market:
    The total revenue opportunity if you captured 100% of the market
    Typically the broadest reasonable definition of your market
    
  SAM — Serviceable Addressable Market:
    The portion of the TAM that you can realistically serve given your current
    capabilities, geography, and business model
    
  SOM — Serviceable Obtainable Market:
    The portion of the SAM you can realistically capture in the next 3-5 years
    Given your current resources, competitive position, and growth rate
    
METHODOLOGY — BOTTOM-UP PREFERRED:

  Bottom-up (preferred — more credible):
    Count the actual customers; estimate unit economics per customer
    Example (Allevio):
      Step 1: Pull Arizona employer data (AZ Dept of Labor; NAICS database; chamber lists)
        Arizona employers with 50-500 employees in Maricopa + Pima counties: [N] companies
      Step 2: Estimate what % are actively shopping for benefits alternatives (conversion universe)
        Assume: 20% are in renewal year and dissatisfied enough to evaluate alternatives
        SAM: [N] × 20% = [X] employer groups
      Step 3: Apply unit economics
        Average employer group: 150 employees × $85 PMPM × 12 months = $153,000 ACV
        SAM revenue: [X] employer groups × $153,000 ACV = $[X]M
      Step 4: SOM (3-5 year capture rate)
        With 2 reps; 30% win rate; 45 qualified leads per rep per year: [X] new groups/year
        SOM over 5 years: [X] groups × $153,000 ACV = $[X]M
        
  Top-down (for context; less credible for investors):
    Start with published industry market size; apply a series of percentage filters
    Risk: Any published market size is often wrong; the filters compound the error
    Use top-down to cross-check the bottom-up, not as the primary estimate

ENTITY-SPECIFIC MARKET SIZING:

  ALLEVIO (Arizona Employer Group Healthcare):
    TAM: All Arizona employers who purchase group health benefits
      Arizona: ~150,000 employers; ~30,000 with 10+ employees; ~12,000 with 50+ employees
      Average benefit spend: $7,000/employee/year (SHRM benchmark)
      TAM: 12,000 × 150 avg employees × $7,000 = $12.6B
    SAM: Arizona employers with 50-500 employees in Maricopa/Pima counties
      Estimated: 8,500 employers in Maricopa; 1,500 in Pima = 10,000 total
      At Allevio pricing ($85 PMPM): 10,000 × 150 employees × $85 × 12 = $1.53B SAM
    SOM: Allevio's 3-year realistic capture
      At 2 reps; 40 new groups/year each; 30% win rate: 24 new groups/year
      Year 3: 72 active groups × $153K ACV = $11M annual revenue (run rate)
      3-year SOM: $11M run rate = ~0.7% SAM penetration (reasonable for a PE-stage company)
      
  COLUMN6 (CTV Advertising — Agency and Brand):
    TAM: Total US CTV advertising spend (industry-level)
      eMarketer/IAB: US CTV ad spend ~$30B+ and growing 15-20% annually
    SAM: CTV spend by agencies with $5M+ annual CTV budgets who might access Column6's supply
      Estimated: Top 500 US media agencies; 50% active in CTV; $5M+ CTV budget = ~250 agencies
      Plus: Brand direct programs with $500K+ CTV budgets = ~300 additional brands
      Total SAM: 550 buyers × average $2M Column6 share = $1.1B SAM (generous estimate)
    SOM: Column6's 3-year realistic capture
      With current team: 20-30 active agency relationships; $5-10M annual revenue is realistic
      SOM over 3 years: $30M revenue = ~2.7% SAM penetration
      
  HIVE PARTNERS (Uinta Basin Mineral Rights):
    TAM: Total leasable mineral rights in the Uinta Basin
      DOGM data: ~X million acres of prospective acreage in the Uinta Basin
      At current WTI pricing and development economics: Estimated $[X]B in mineral rights value
    SAM: Privately-owned mineral rights (not federal BLM land) in HIVE's target development area
      Estimated: [X] acres privately owned in HIVE's primary development area
      At $1-2/acre lease bonus + 12.5-16% royalty: Lease value per acre = $[X]
      SAM: [X] acres × $[X] lease value = $[X]M leasable mineral value

DATA SOURCES FOR MARKET SIZING:
  Arizona employers: AZ Dept of Labor; US Census Business Patterns; NAICS database
  CTV market data: IAB; eMarketer; PwC Global Entertainment & Media Outlook
  Oil and gas land data: DOGM (Utah Division of Oil Gas and Mining); BLM records; USGS
  Healthcare benefits spend: SHRM Benefits Survey; Kaiser Foundation employer health benefit survey
  Industry reports: Use as cross-checks; cite the source and date; never use as primary data
```

## Output Format

```markdown
# Market Sizing — [Entity] | [Segment]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Method:** Bottom-up (primary) / Top-down (validation)

---

## Market Size Summary

| Market | Definition | Size | Revenue potential |
|--------|-----------|------|------------------|
| TAM | [Total Arizona employer healthcare benefits] | [X,XXX employers] | $[X]B |
| SAM | [AZ employers 50-500 EE; Maricopa/Pima] | [X,XXX employers] | $[X]M |
| SOM (3-year) | [Allevio capture at current growth rate] | [X] employer groups | $[X]M |

---

## Bottom-Up Calculation

**Step 1 — Customer universe:** [X,XXX employers meeting ICP criteria]
**Step 2 — Active buying universe (20% in renewal year):** [X,XXX employers]
**Step 3 — Unit economics:** [150 avg employees × $85 PMPM × 12 months = $153,000 ACV]
**Step 4 — SOM (3-year at current growth):** [24 new groups/year × 3 years × $153K ACV]

---

## Key Assumptions

| Assumption | Value | Source | Sensitivity |
|-----------|-------|--------|------------|
| AZ employers with 50-500 EE | [X,XXX] | AZ Dept of Labor | ±20% |
| % in renewal year / open to evaluate | 20% | Dr. Lewis estimate | ±10% |
| Average group size | 150 employees | Allevio portfolio avg | Low |
| PMPM | $85 | Allevio pricing | Fixed |

---

## Cross-Check (Top-Down)

**Industry source:** [SHRM Benefits Survey / IAB CTV Report]
**Top-down estimate:** $[X]M
**Variance from bottom-up:** [+/- X%]
**Conclusion:** [Bottom-up estimate is [conservative / consistent / aggressive] relative to top-down]
```

## Output Contract
- Bottom-up beats top-down for credibility — any investor or LP who has seen a pitch deck knows that a market size that starts with "the global [X] market is $[X] trillion, and if we capture just 1%..." is a hand-wave; Dr. Lewis builds market sizes from actual customer counts and unit economics; the result is a smaller, more credible number that investors trust more than an inflated top-down estimate
- State the assumptions explicitly — a market sizing exercise is a model, and every model has assumptions; Dr. Lewis always presents the key assumptions alongside the market size estimate so that the audience can assess the reasonableness of the estimate and adjust for their own views; hidden assumptions in a market size are a credibility risk
- SOM is the number that matters for operations — the TAM is for context; the SAM is for strategic ambition; the SOM is for planning; Dr. Lewis builds the SOM from the actual sales capacity (rep count; win rate; close rate) rather than from the SAM percentage; a SOM built from "we'll capture 5% of SAM" is less useful than a SOM built from "with 2 reps closing 24 groups/year, we'll have 72 groups after 3 years"
- HITL required: Dr. Lewis builds the market sizing model; CEO reviews and validates the assumptions (the CEO knows the market from experience); Matt Mathison reviews for LP presentations and investor materials; market sizing presented to external audiences must be approved by Matt Mathison before use; Dr. Lewis does not use market sizing estimates from external sources without citing the source and noting the date; outdated market size data is more dangerous than no data

## System Dependencies
- **Reads from:** AZ Dept of Labor employer data; US Census Business Patterns (NAICS); DOGM production data (HIVE); IAB/eMarketer CTV market reports (Column6); Allevio portfolio data (average group size; PMPM; ACV — for unit economics); HIVE LOE and production data (for mineral rights value calculation); sales-ideal-customer-profile (ICP criteria define the SAM)
- **Writes to:** Market sizing model (SharePoint/Strategy/<Company>/MarketSize_[Date].xlsx); LP presentation market slide (for Matt Mathison); quota plan territory capacity input (sales-quota-setter — how many qualified prospects exist per rep territory?); strategic plan market opportunity section; M&A evaluation market analysis (fpa-ma-financial-support — for acquisition target market assessment)
- **HITL Required:** Dr. Lewis builds; CEO validates assumptions; Matt Mathison approves for LP/investor presentations; any market size used in a fundraising or LP communication is reviewed by outside counsel if material; Dr. Lewis does not use speculative or unverified market data in LP presentations; data must be cited with source and date

## Test Cases
1. **Golden path:** Building the Allevio market size for Matt Mathison's Q4 LP presentation → Dr. Lewis builds bottom-up: pulls AZ Dept of Labor data: 8,200 employers in Maricopa; 1,400 in Pima with 50-500 employees; 20% in active renewal year = 1,920 SAM prospects; average group: 150 employees × $85 × 12 = $153K ACV; SAM revenue: 1,920 × $153K = $293.8M; SOM: 2 reps × 20 groups closed/year at 30% win rate = 40 groups/year; Year 3: 120 groups × $153K = $18.4M run rate; Cross-check top-down: SHRM Survey — AZ employer healthcare spend = $12.6B total; Allevio SAM is ~2.3% of TAM (reasonable); Presentation includes: TAM ($12.6B AZ employer healthcare); SAM ($294M at Allevio PMPM in ICP geography); SOM ($18M year-3 run rate); Matt Mathison reviews; approves; confident in the numbers because they're built from actual data
2. **Edge case:** Column6's CEO claims the CTV market is "$100B and growing" in a pitch meeting without a model → Dr. Lewis: "That's the global TV advertising market, not the US CTV market. eMarketer's 2026 estimate for US CTV-specific ad spend is ~$30B. Column6's SAM — agencies with meaningful CTV budgets that we could realistically access — is much smaller. If we use $30B as the TAM, the LP will ask 'how much of that is accessible to Column6?' and the real answer is 1-2% max. Better to lead with a credible SAM ($1.1B in agencies we could realistically reach) than defend an inflated TAM that doesn't represent our addressable opportunity." CEO accepts the revised approach; presentation updated with the bottom-up estimate
3. **Adversarial:** A potential portfolio company presents a market sizing with "$5B TAM" based on a Gartner report in the pitch deck → Dr. Lewis reviews for Matt Mathison: "The $5B number is from a Gartner report (2023) for the broader category — not the specific segment this company operates in. Gartner's methodology inflates market sizes by including adjacent segments. The company's actual ICP (enterprise health systems in the Southeast US) is a much smaller market. I'd estimate the real SAM is $400-600M based on the ICP criteria and customer count. At the company's current ACV of $180K and win rate, the SOM is ~$50M over 5 years. The $5B TAM creates false expectations about growth potential — this is a $50-100M opportunity, not a $5B opportunity. I recommend factoring a realistic market size into the valuation analysis." Matt Mathison receives the corrected analysis; it affects the valuation conversation

## Audit Log
All market sizing models retained by entity and date. Assumptions documented and retained. CEO and Matt Mathison review records retained. LP presentation uses of market data retained with the version submitted. External data sources cited and retained (source; date; version).

## Deprecation
Retire when each portfolio company has a VP of Strategy or VP of Sales who maintains the market sizing model — with Dr. Lewis reviewing annually for LP presentations and Matt Mathison approving all market data used in investor communications.
