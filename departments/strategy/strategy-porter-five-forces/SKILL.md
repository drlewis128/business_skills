---
name: strategy-porter-five-forces
description: "Analyze competitive dynamics using Porter's Five Forces framework. Use when the user says 'five forces', 'porter five forces', 'competitive forces', 'industry analysis', 'competitive structure', 'industry attractiveness', 'industry dynamics', 'structural analysis', 'competitive position analysis', 'how competitive is this industry', 'analyze the industry', 'market structure', 'industry competitiveness', 'analyze competitive dynamics', or 'who has power in this market'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or industry>] [--depth <quick|full>] [--purpose <investment|expansion|competitive-response>]"
---

# Porter's Five Forces

Analyze the competitive dynamics of an industry or market using Porter's Five Forces framework — assessing threat of new entry, supplier power, buyer power, threat of substitutes, and competitive rivalry to determine industry attractiveness and strategic positioning. The five forces analysis is a foundational tool for investment thesis construction, market entry evaluation, and competitive response. At PE portfolio scale, understanding structural industry dynamics is as important as understanding individual company performance: a great management team in a structurally unattractive industry (high rivalry, low barriers, buyer power, substitute threat) will underperform a modest management team in an attractive industry structure. The five forces explain why some industries structurally earn above-average returns and others don't.

## When to Use
- Investment thesis construction — assessing a new acquisition target's industry
- Market entry evaluation — is the target market structurally attractive?
- Annual strategic planning — validating that the industry structure supports the thesis
- A portfolio company faces a new competitive threat — understand the structural source
- Matt Mathison asks "why is this industry attractive (or not)?"

## Five Forces Framework

```
FORCE 1 — Threat of New Entry (Barriers to Entry)
  Question: How easy is it for a new competitor to enter and take market share?
  
  Barrier factors:
    Capital requirements: High = low entry threat (O&G: high; CTV startup: low; MSO: medium)
    Regulatory requirements: Licenses, permits, certifications required (healthcare: high barriers)
    Brand loyalty: Customer switching costs and brand investment required
    Economies of scale: Incumbent cost advantages from scale (important in healthcare billing)
    Network effects: More users = more valuable (Column6 — publisher + advertiser network)
    Access to distribution: Must have established relationships with payers (Allevio) or publishers (Column6)
    
  Allevio assessment: Medium entry barriers
    + Requires AZ medical board licensed providers (supply constraint)
    + Payer credentialing takes 90-180 days (operational delay)
    + Clinical relationships take time to build
    − Capital to open a practice is not prohibitive (~$200K to start)
    − No exclusive licenses or patents
    Entry threat: MEDIUM — new entrants possible but face credentialing and ramp delays
    
  HIVE assessment: High entry barriers
    + Requires UT DOGM permits (time and regulatory) + capital ($2M+ per well)
    + Geological knowledge of the Uinta Basin
    + Established mineral rights leases
    − WTI price rise attracts new entrants rapidly
    Entry threat: MEDIUM-HIGH (capital and regulatory barriers, but price-driven cycles)
    
  Column6 assessment: Low entry barriers
    + Ad tech is a technology business — can launch with modest capital
    + Publisher relationships take time but are not exclusive
    − Many ad tech startups entering CTV programmatic
    Entry threat: HIGH — CTV programmatic is attracting new entrants

FORCE 2 — Supplier Power
  Question: Can suppliers raise prices or reduce quality and what happens?
  
  Allevio suppliers: Physicians/NPs (labor market); EMR vendors (AdvancedMD); medical supplies
    Physician labor: High supplier power — physician supply constrained; market rate drives compensation
    AdvancedMD: Medium power — switching is expensive (6+ months to migrate EMR); but alternatives exist
    Medical supplies: Low power — commodity; many suppliers
    
  HIVE suppliers: Oilfield services (drilling, completion); equipment; midstream/gathering
    Oilfield services: Cyclical — low power at $55 WTI (services desperate for work); high power at $80+ WTI (services overbooked)
    Midstream: Medium-high — HIVE depends on gathering/transport agreements
    
  Column6 suppliers: Publishers (inventory); data providers; ad tech infrastructure (DSP/SSP)
    Publishers: Medium power — multiple publishing partners; but premium publishers can demand better rev share
    DSP/SSP infrastructure: Medium — vendors like The Trade Desk or Magnite have pricing power

FORCE 3 — Buyer Power
  Question: Can customers negotiate prices down or switch easily?
  
  Allevio buyers: Patients + payers (insurance companies/CMS)
    Payer power: HIGH — CMS and commercial payers set reimbursement rates; Allevio is price-taker for contracted patients
    Patient power: LOW — patients rarely shop primary care on price; access and relationship drive retention
    Implication: Payer mix diversification reduces concentration risk; value-based contracting (PMPM) reduces rate risk
    
  HIVE buyers: Midstream offtakers; refineries
    Buyer power: LOW — commodity pricing; buyers can't negotiate significantly below WTI
    Price is market-determined; HIVE's cost structure (LOE) is the competitive lever
    
  Column6 buyers: Advertisers (agencies and brands)
    Buyer power: MEDIUM — advertisers can shift spend to competing inventory; but CTV is premium
    Programmatic advertising reduces individual advertiser power (auction mechanism)
    Concentration risk: If top 3 advertisers = >50% revenue, individual advertiser power increases

FORCE 4 — Threat of Substitutes
  Question: What can customers use instead that meets the same need?
  
  Allevio substitutes: Urgent care, telehealth, hospital outpatient, direct primary care memberships
    Telehealth threat: MEDIUM — growing; patients can access physicians remotely; erodes office visit demand
    Urgent care threat: LOW for chronic care (Allevio's core); MEDIUM for episodic care
    DPC memberships: LOW currently; niche but growing (direct competition for direct-pay patients)
    Net substitute threat: MEDIUM — Allevio's value is continuity of care + same-day access; telehealth erodes some but not all
    
  HIVE substitutes: Alternative energy (solar, wind, EV); natural gas
    Long-term threat: HIGH — energy transition is a secular trend; O&G demand peak disputed
    Short-term (5-year hold): LOW — oil demand growth in emerging markets offsets developed market decline
    Investment implication: 5-year hold at ≥20% IRR is achievable before secular decline affects thesis
    
  Column6 substitutes: Social media advertising, YouTube, streaming app direct deals
    Substitute threat: MEDIUM — brands with streaming budgets have many platform choices
    CTV's advantage: Premium content, brand-safe environment, measurable audiences
    If CTV premium erodes: Column6 must differentiate on data and measurement

FORCE 5 — Competitive Rivalry
  Question: How intense is competition among existing players?
  
  Allevio rivalry: LOW-MEDIUM
    Physician shortage means demand exceeds supply in AZ primary care
    MSOs are not directly competing for patients in same geography (geographic segmentation)
    Rivalry is primarily for physician/NP talent (labor market competition), not for patients
    
  HIVE rivalry: MEDIUM — Uinta Basin operators know each other; acreage competition for leases exists; production competition is via cost structure (LOE/BOE efficiency)
    
  Column6 rivalry: HIGH — CTV programmatic is crowded; CPM compression is ongoing;
    differentiation on data quality and match rate is the competitive lever

Industry Attractiveness Summary (higher = more attractive for PE returns):
  Each force: High threat/power = less attractive; Low threat/power = more attractive
  Allevio: Entry MEDIUM ✓ | Supplier HIGH (physician) ⚠ | Buyer HIGH (payer) ⚠ | Substitute MEDIUM | Rivalry LOW ✓
    → Moderately attractive; physician labor and payer power are the structural constraints
  HIVE: Entry MEDIUM ✓ | Supplier CYCLICAL | Buyer LOW ✓ | Substitute HIGH (secular) ⚠ | Rivalry MEDIUM
    → Attractive for 5-year hold; secular substitute threat requires disciplined exit timing
  Column6: Entry HIGH ⚠ | Supplier MEDIUM | Buyer MEDIUM | Substitute MEDIUM | Rivalry HIGH ⚠
    → Less structurally attractive; thesis depends on Column6-specific differentiation beating structural headwinds
```

## Output Format

```markdown
# Porter's Five Forces — [Industry / Company Name]
**Entity:** [Company] | **Date:** [Date] | **Purpose:** [Investment thesis / Market entry / Strategic review]

---

## Industry Attractiveness Summary

| Force | Rating | Impact on returns |
|-------|--------|-----------------|
| Threat of new entry | Low 🟢 / Medium 🟡 / High 🔴 | [Brief — high barriers protect incumbents] |
| Supplier power | Low 🟢 / Medium 🟡 / High 🔴 | [Brief] |
| Buyer power | Low 🟢 / Medium 🟡 / High 🔴 | [Brief] |
| Threat of substitutes | Low 🟢 / Medium 🟡 / High 🔴 | [Brief] |
| Competitive rivalry | Low 🟢 / Medium 🟡 / High 🔴 | [Brief] |
| **Overall industry attractiveness** | **🟢 Attractive / 🟡 Moderate / 🔴 Structurally challenging** | |

---

## Force 1 — Threat of New Entry

[3-5 sentence analysis: Key barriers present and absent; evidence for each; net assessment and why]

---

## Force 2 — Supplier Power

[3-5 sentence analysis: Who are the key suppliers? What is their leverage? What happens if supplier power increases?]

---

## Force 3 — Buyer Power

[3-5 sentence analysis: Who are the buyers? What is their pricing leverage? Concentration risk?]

---

## Force 4 — Threat of Substitutes

[3-5 sentence analysis: What substitutes exist? How close are they? Is the substitute threat growing?]

---

## Force 5 — Competitive Rivalry

[3-5 sentence analysis: How many competitors? Basis of competition (price, quality, access)? Trend?]

---

## Strategic Implications

**Industry structure [Supports / Challenges] the investment thesis because:** [Specific — which forces support and which challenge]

**Key structural risks to manage:**
1. [Physician labor power — Allevio must manage through comp structure and retention]
2. [CTV new entry — Column6 must differentiate through technology and data quality]

**Actions the company should take given industry structure:**
- [Action: Build payer diversification to reduce CMS rate-setting exposure]
- [Action: Invest in match rate technology to build differentiation vs. new CTV entrants]

---

## Matt Mathison Brief

Five Forces — [Industry]: Industry is [Attractive / Moderately attractive / Structurally challenging] for PE returns. Key structural advantage: [Low rivalry + moderate entry barriers in AZ primary care]. Key structural constraint: [Payer/CMS buyer power + physician supplier power]. Thesis alignment: [Intact — Allevio's value proposition addresses the structural constraints through patient access and managed care expansion]. Action from Matt Mathison: [None / Discuss payer diversification strategy / Factor into exit timing for HIVE given secular substitute threat].
```

## Output Contract
- The five forces analysis is a structural tool, not a snapshot of current performance — the five forces describe the industry structure, not last quarter's competitive dynamics; a company can outperform industry structure through excellent execution, but structural headwinds compound over time; Dr. Lewis presents both: the structural assessment (five forces) and the company's current competitive position within that structure; the investment thesis must either (a) acknowledge structural challenges and explain how the company avoids them, or (b) show that structural forces are more favorable than they appear and explain why
- Every force rating requires evidence, not intuition — "buyer power is high because payers are powerful" is not a force analysis; "buyer power is high because CMS sets reimbursement rates for 40% of Allevio's revenue through Medicare fee schedules, and Allevio has no ability to negotiate these rates — if CMS reduces the primary care fee schedule by 5%, Allevio's revenue falls proportionally with no offset" is a force analysis; Dr. Lewis provides the mechanism, the evidence, and the implication for each force
- The five forces inform strategy, not just describe the industry — the output must include strategic implications: what should the company do differently given the industry structure? If buyer power is high because of payer concentration, the strategic implication is payer diversification and value-based contract pursuit; if substitute threat from telehealth is medium and growing, the strategic implication is same-day access investment to compete on convenience (Allevio's advantage over telehealth); the five forces is not complete without the strategic response
- HITL required: Dr. Lewis produces the five forces analysis; CEO reviews for market intelligence (particularly supplier dynamics and competitive rivalry — the CEO has better ground-level knowledge); Matt Mathison reviews for thesis alignment; investment committee uses the five forces as part of deal screening and thesis construction

## System Dependencies
- **Reads from:** Competitive intelligence (strategy-competitive-intelligence), market analysis (strategy-market-analyzer), investment thesis (strategy-investment-thesis), industry publications, payer contracts (Allevio), UT DOGM permit data (HIVE), IAB industry data (Column6)
- **Writes to:** Investment thesis document (strategy-investment-thesis — five forces section); annual plan (strategic context section); M&A screener (strategy-m-and-a-screener — industry attractiveness input); board prep (strategic context)
- **HITL Required:** Dr. Lewis analyzes; CEO validates competitor and market intelligence; Matt Mathison reviews for thesis implications; investment committee uses for deal screening

## Test Cases
1. **Golden path:** Five Forces for AZ primary care (Allevio) — full analysis: Entry: MEDIUM (physician licensing + payer credentialing delay = 6-9 months to first revenue; capital ~$200K; conclusion: barriers exist but not prohibitive); Supplier: HIGH for physician labor (NP supply in Phoenix: constrained; competitive salaries $90K+ NP; Allevio retention strategy via culture + schedule flexibility); Buyer: HIGH for payer relationships (CMS rate-setter for Medicare; commercial payer renegotiations every 2-3 years; direct-pay = LOW buyer power); Substitutes: MEDIUM and growing (telehealth growing at 15% CAGR; urgent care clinics opening at high rate in Phoenix; Allevio's response: same-day scheduling + continuity of care); Rivalry: LOW-MEDIUM (Scottsdale/Phoenix primary care: physician shortage means demand > supply; MSOs are geographically segmented; competition is for physician talent, not patients); Overall: MODERATELY ATTRACTIVE — physician labor power and payer buyer power are the dominant structural constraints; both are manageable with the right talent strategy and payer mix; CEO reviews and validates; Matt Mathison receives brief; thesis confirmed
2. **Edge case:** Five Forces requested for Column6 CTV space at a time when a major new entrant (large tech platform) just entered the CTV programmatic space → The new entrant fundamentally changes Force 1 (Entry threat was already HIGH; a tech platform entrant with existing advertiser relationships and publisher integrations elevates this to VERY HIGH); Dr. Lewis updates the Column6 five forces analysis immediately; the key question is: does the new entrant compete directly with Column6 (matching the same inventory) or adjacently (different content category)? Column6's competitive moat is match rate technology and specific publisher relationships; if the entrant cannot replicate the match rate quickly, Column6's differentiation holds; Dr. Lewis presents the updated analysis to Matt Mathison with investment thesis impact: is the thesis still intact?
3. **Adversarial:** CEO presents a pitch to expand Allevio into dental services ("it's all healthcare, same opportunity") → Five forces for dental in AZ are structurally different from primary care: Entry: LOW (dentist entrepreneurship is common; low barriers vs. physician practice); Buyer power: LOW for dental (patients pay out-of-pocket for much of dental; payer power is lower than medical); Supplier: MEDIUM (dentist supply better than physician); Rivalry: HIGH (Phoenix dental is highly competitive — DSOs, independent practices, corporate dental chains all competing); Substitutes: LOW (dental is hard to substitute); Overall: MODERATE — dental is a different structural industry from primary care; the entry into dental is effectively a new thesis, not an extension of the Allevio primary care thesis; requires full investment thesis review (strategy-investment-thesis) and new market entry analysis (strategy-new-market-analyzer) before Dr. Lewis recommends; the five forces analysis clarifies why the CEO's intuition ("it's all healthcare") is not sufficient

## Audit Log
All five forces analyses retained. Investment thesis applications retained. Updates to prior analyses (when industry structure changes) retained with change rationale. CEO and Matt Mathison review records retained.

## Deprecation
Retire when portfolio companies have strategy functions capable of conducting industry analysis — with Dr. Lewis reviewing the thesis alignment implications and Matt Mathison receiving the strategic summary regardless of who produces the underlying analysis.
