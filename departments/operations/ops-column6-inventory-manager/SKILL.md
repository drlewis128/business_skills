---
name: ops-column6-inventory-manager
description: "Manage Column6 / Siprocal advertising inventory strategy and supply optimization. Use when the user says 'inventory management', 'inventory manager', 'inventory strategy', 'ad inventory', 'CTV inventory', 'mobile inventory', 'gaming inventory', 'programmatic inventory', 'supply strategy', 'supply management', 'inventory quality', 'inventory audit', 'inventory analysis', 'inventory mix', 'inventory sources', 'supply sources', 'supply quality', 'premium inventory', 'private marketplace', 'PMP deal', 'preferred deal', 'programmatic guaranteed', 'direct inventory', 'publisher relationships', 'CTV publisher', 'app publisher', 'gaming publisher', 'inventory availability', 'inventory yield', 'inventory pricing', 'floor price', 'CPM floor', 'inventory CPM', 'supply CPM', 'auction dynamics', 'bid landscape', 'inventory forecasting', 'inventory planning', 'inventory demand', 'inventory utilization', or 'Siprocal gaming inventory'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--channel <ctv|mobile|gaming|all>] [--action <audit|optimize|forecast|source|report>] [--metric <quality|pricing|availability|yield|margin>] [--period <monthly|quarterly|annual>]"
---

# Ops Column6 Inventory Manager

Manage Column6 / Siprocal's advertising inventory strategy — evaluating inventory sources and quality, optimizing the supply mix across CTV, mobile, and gaming channels, managing private marketplace deals and direct publisher relationships, and ensuring that Column6's inventory access supports the delivery performance and gross margin targets. Inventory strategy is the supply-side of Column6's media business: Column6 sells impressions to agencies (demand side) and buys them from publishers via DSPs and SSPs (supply side); the quality, availability, and cost of the inventory supply directly determines Column6's ability to deliver campaigns at VCR ≥92% and gross margin ≥40%. Dr. Lewis monitors inventory strategy as a margin health signal — supply cost changes and inventory quality issues connect directly to the Column6 financial model.

## When to Use
- Monthly inventory quality and margin review
- DSP cost is rising (affecting campaign gross margin)
- A new inventory source (publisher; SSP; PMP deal) is being evaluated
- Column6 is planning capacity for a large agency campaign
- The Siprocal gaming platform inventory is being expanded

## Inventory Management Framework

```
COLUMN6 INVENTORY CHANNELS:

  CTV (Connected TV):
    Inventory source: DSP access to CTV publishers (Roku; Samsung; Pluto TV; Peacock; etc.)
    CPM range: $15-45 (premium CTV; depends on targeting)
    VCR characteristics: very high (70-98%; viewers are engaged; 10-foot experience)
    Column6 advantage: programmatic CTV access at competitive CPMs
    Competition: significant; DSP auction dynamics drive cost
    
  MOBILE:
    Inventory source: DSP access to mobile apps (gaming; news; social adjacent; etc.)
    CPM range: $3-15 (varies by targeting; audience; format)
    VCR characteristics: variable (60-90%; depends on placement quality)
    Brand safety: requires active management (some mobile app inventory is low quality)
    
  GAMING — SIPROCAL PLATFORM:
    Inventory source: Siprocal direct publisher relationships with gaming apps
    CPM range: $8-20 (gaming premium; engaged audience)
    VCR characteristics: highest of the three channels (captive audience during gameplay)
    Column6 advantage: direct publisher relationships create inventory exclusivity and better pricing
    Competition: lower on Siprocal direct inventory (not fully auction-dependent)

INVENTORY QUALITY STANDARDS:

  QUALITY REQUIREMENTS (for all inventory sources):
    IVT rate: <2% (from third-party measurement)
    Brand safety: no adjacency to harmful content (violence; adult; misinformation)
    Viewability: meets IAB standards for the channel
    Audience quality: actual human views (not bot traffic)
    
  SUPPLY CURATION PROCESS:
    New SSP or publisher: 30-day test period before full scale; IVT monitoring throughout
    Quarterly audit: all active supply sources reviewed for quality metrics
    Removal criteria: IVT >2%; brand safety violation; viewability below threshold
    Siprocal publishers: direct vetting (editorial review + performance test)
    
  BRAND SAFETY TOOLS:
    Pre-bid keyword/URL blocking (DSP-side)
    Contextual targeting (avoid unsafe adjacency)
    Exclusion lists: blocked URLs/apps (Column6 maintains a running list)
    Post-bid brand safety verification (MOAT; IAS; DoubleVerify)

INVENTORY PRICING AND MARGIN:

  GROSS MARGIN STRUCTURE:
    Column6 sells at a CPM to agencies (the "sell CPM")
    Column6 buys inventory at a CPM from DSPs/publishers (the "buy CPM")
    Gross margin = (sell CPM - buy CPM) / sell CPM
    Target: ≥40% portfolio gross margin
    
  MARGIN DRIVERS:
    Buy CPM is the key cost variable:
      Auction dynamics (supply/demand at DSP level)
      Targeting specificity (narrow targeting = more competition = higher cost)
      Channel (CTV is highest cost; mobile is lowest)
      Time of year (Q4 is highest DSP cost — holiday ad spend peaks)
    
  CPM MONITORING:
    Monthly: track buy CPM by channel vs. prior month
    Alert: buy CPM increases >10% vs. prior month → Column6 CEO (margin impact)
    Annual: review sell CPM rates with agency clients (align with market)
    
  PRIVATE MARKETPLACE (PMP) DEALS:
    Preferred deal: Column6 has first-look access to specific publisher inventory at a fixed CPM
    Benefits: price certainty; quality inventory; reduced auction competition
    Use case: large campaigns needing specific premium inventory
    Evaluation: is the PMP CPM competitive with open auction for equivalent quality?

INVENTORY FORECASTING:

  CAPACITY PLANNING:
    Agency pipeline → how many impressions does Column6 need to source in the next 90 days?
    By channel: CTV / mobile / gaming
    Identify: are there capacity constraints? (e.g., Siprocal gaming at maximum publisher capacity)
    Action: if capacity constraint identified → evaluate new publisher partnerships
    
  SEASONAL PLANNING:
    Q4 demand surge: DSP costs rise sharply (holiday ad spending)
    Strategy: secure PMP deals and preferred inventory before Q4
    Impact on margin: sell CPMs in Q4 may not rise proportionally with buy CPMs → margin compression
    Matt Mathison: Q4 margin compression is an expected structural pattern; no alarm needed
    if within historical range
```

## Output Format

```markdown
# Column6 Inventory Report — [Month Year]
**Prepared by:** Column6 Operations | **Reviewed by:** Dr. Lewis

---

## Inventory Quality

| Channel | Sources active | IVT rate | Brand safety events | Quality score |
|---------|---------------|---------|--------------------|-|
| CTV | [N] | [%] | [N] | 🟢/🟡/🔴 |
| Mobile | [N] | [%] | [N] | 🟢/🟡/🔴 |
| Gaming (Siprocal) | [N] | [%] | [N] | 🟢/🟡/🔴 |

---

## Buy CPM Trend (vs. prior month)

| Channel | Buy CPM | vs. Prior month | Margin impact |
|---------|---------|----------------|--------------|
| CTV | $[X] | +[N%] | -[N] pts vs. target |
| Mobile | $[X] | -[N%] | +[N] pts vs. target |
| Gaming | $[X] | [N%] | Flat |

---

## Inventory Actions

| Action | Channel | Rationale | Status |
|--------|---------|-----------|--------|
| Removed [SSP] | Mobile | IVT 3.8% | Complete |
| Added [Publisher] | Gaming | Siprocal expansion | In testing |
```

## Output Contract
- Inventory quality is never traded for cost efficiency — a supply source with a 4% IVT rate is not accepted because it has a lower buy CPM; Column6's VCR performance and brand safety standards are the non-negotiable foundation of the agency value proposition; an agency that receives 1% IVT on their campaign because Column6 chose cheaper-but-lower-quality inventory has a hidden defect in their buy; when the agency's third-party measurement finds it, the trust damage is worse than the cost saving was worth; low-quality inventory is removed regardless of the CPM advantage
- Margin compression signals are surfaced, not buried — when buy CPM rises >10% in a month, the margin impact is calculated and surfaced to the Column6 CEO: "CTV buy CPM increased 14% this month; on the current campaign portfolio, this reduces gross margin from 41% to 36%; three campaigns are now below the 25% margin floor"; the Column6 CEO decides whether to adjust sell CPMs for new IOs, absorb the margin impact, or change the channel mix; the decision is informed; the margin compression is not discovered at month-end when the financial statements are prepared
- Q4 seasonal margin compression is planned, not panicked — Column6 faces predictable Q4 DSP cost inflation every year; the annual plan accounts for Q4 margin compression; Dr. Lewis builds the Q4 financial model with this expectation; the Q4 actual gross margin may be 33-36% vs. the 40% annual target, but the annual average still hits 40% if Q1-Q3 performs above target; Dr. Lewis communicates this pattern to Matt Mathison in the annual plan so there's no alarm when Q4 margin data comes in
- HITL required: buy CPM increases >10% in a single month → Column6 CEO same week; gross margin on a campaign falls below 15% → Column6 CEO same day (per campaign ops standard); new SSP or publisher added to the buying mix → Column6 CEO approval (supply quality vetting); Siprocal publisher relationships (direct deals) → Column6 CEO involved in all publisher agreements; PMP deals with annual commitments >$100K → Dr. Lewis review + Column6 CEO approval; any supply quality breach involving brand safety incident affecting an agency campaign → Column6 CEO + Dr. Lewis immediate

## System Dependencies
- **Reads from:** DSP platforms (buy CPM data; supply source data; IVT rates); third-party brand safety and IVT measurement (MOAT; IAS; DoubleVerify); ops-column6-platform-ops (platform health — inventory feed quality); fin-column6-media-cost (media cost tracking — buy CPM feeds into margin analysis); ops-column6-campaign-ops (campaign delivery — demand side, informs capacity planning)
- **Writes to:** Inventory quality reports (SharePoint → Column6 → Operations → Inventory); Column6 CEO briefings (buy CPM alerts; quality actions; Siprocal expansion); supply exclusion list (DSP-side blocking); ops-column6-platform-ops (supply source changes); fin-column6-media-cost (updated buy CPM data); Dr. Lewis monthly review
- **HITL Required:** Buy CPM >10% increase → Column6 CEO same week; campaign margin <15% → Column6 CEO same day; new SSP/publisher → Column6 CEO approval; Siprocal publisher agreements → Column6 CEO; PMP commitments >$100K → Dr. Lewis + CEO approval; brand safety incident affecting agency campaign → Column6 CEO + Dr. Lewis immediate

## Test Cases
1. **Golden path:** Monthly inventory review. CTV: 14 active supply sources; IVT 1.2%; no brand safety events; buy CPM $22.40 (+3.4% vs. prior month — within normal range). Mobile: 8 supply sources; 1 removed this month (IVT 3.8%); replaced with vetted alternative; current portfolio IVT 1.8%; buy CPM $7.80 (-2.1% vs. prior month — favorable). Gaming (Siprocal): 6 direct publisher relationships; IVT 0.8% (direct publishers = lower fraud); buy CPM $11.20 (stable). Portfolio gross margin: 41.3% — above 40% target. No escalations. Report to Column6 CEO: "Inventory quality clean. One mobile SSP removed for IVT. Margin healthy at 41.3%. No action needed."
2. **Edge case:** Q4 begins and CTV buy CPM jumps 28% in October (vs. September) → Dr. Lewis: "CTV buy CPM is up 28% this October vs. September — this is larger than last year's Q4 ramp (which was 18%). The margin impact on current CTV campaigns: gross margin dropped from 42% to 29% in October. Three options: (1) Accept the margin compression for the quarter (projected impact: $[X] on Q4 EBITDA); (2) Adjust sell CPMs upward for new Q4 IOs (protecting margin but potentially impacting volume); (3) Shift more budget to gaming (Siprocal) where CPM inflation is less acute. Column6 CEO: I've modeled all three scenarios. My recommendation: do a combination of (2) and (3) — raise sell CPMs for large-volume Q4 IOs by 15% and shift 20% of CTV budget to gaming. This keeps Q4 margin at approximately 34% vs. the 40% annual target. We'll hit the annual average if Q1-Q3 stays on track. Matt: flagging the Q4 pattern — within expectations but larger than last year."
3. **Adversarial:** Column6 CEO wants to add a new mobile SSP that offers very low buy CPMs but has no IVT track record → Dr. Lewis: "Before we add [SSP] to the buying mix, I want to run the standard quality vetting: 30-day test period with third-party IVT monitoring. The low CPM is compelling — it would improve margin by approximately 4 points on the mobile portion of our portfolio. But if IVT comes back above 2%, the cost is: (1) make-good obligations on campaigns with elevated IVT; (2) agency trust damage; (3) potential IO violations if the agency contracted for IVT below 2%. The margin gain isn't worth those risks if the source is dirty. My recommendation: 30-day test at low volume ($[X] total spend); if IVT is <2% and brand safety is clean, we add them to full rotation. If IVT is >2%, we remove and look elsewhere. Can we run the test?"

## Audit Log
Monthly inventory quality reports retained. Supply source changes retained (added; removed; reason). Buy CPM trend data retained. Brand safety incident records retained. Siprocal publisher agreement records retained. PMP deal records retained. Seasonal planning documents retained (with Q4 margin projection vs. actual).

## Deprecation
Review inventory channel priorities annually as the CTV/mobile/gaming landscape evolves. Gaming (Siprocal) is a differentiating channel — review its strategic position annually. The IVT threshold (2%) is an industry standard — review annually.
