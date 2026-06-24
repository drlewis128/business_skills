---
name: sales-hive-deal-sourcer
description: "Source oil and gas acquisition targets for HIVE Partners in the Uinta Basin. Use when the user says 'HIVE deal sourcing', 'HIVE acquisitions', 'deal sourcing', 'source deals', 'find acquisitions', 'mineral rights acquisition', 'royalty interest acquisition', 'ORRI acquisition', 'oil and gas acquisition', 'Uinta Basin acquisition', 'acquisition sourcing', 'acquisition pipeline', 'HIVE pipeline', 'HIVE deal pipeline', 'find mineral rights', 'find royalty interests', 'royalty acquisition', 'mineral acquisition', 'O&G acquisition', 'oil and gas deal', 'acquisition prospect', 'acquisition target', 'acquisition outreach', 'mineral owner outreach', 'royalty owner outreach', 'landman', 'O&G broker', 'acquisition broker', 'county recorder', 'mineral deed', 'working interest', 'NRI', 'Uinta Basin', 'Uinta', 'Utah O&G', 'Utah acquisition', 'HIVE deal flow', 'deal flow', 'off-market deal', 'proprietary deal', 'estate sale', 'mineral estate', 'consolidation acquisition', 'royalty consolidation', 'LOI pipeline', 'acquisition strategy', or 'HIVE acquisition model'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--action <source|qualify|outreach|pipeline-review>] [--source <county-recorder|broker|estate|direct>]"
---

# Sales HIVE Deal Sourcer

Source oil and gas acquisition targets for HIVE Partners in the Uinta Basin — identifying royalty interest, ORRI, and mineral rights sellers through county recorder research, broker relationships, and direct outreach. HIVE's acquisition model targets producing assets in the Uinta Basin; deal sourcing is relationship-based and county-record-driven, not a mass outreach operation. Every acquisition requires Matt Mathison's explicit approval — deal sourcing creates pipeline for Matt Mathison's evaluation, not autonomous acquisition decisions.

## When to Use
- Building HIVE's acquisition pipeline from county recorder and broker sources
- Drafting outreach letters to mineral rights holders
- Qualifying an inbound acquisition opportunity
- Preparing an acquisition summary for Matt Mathison's review

## HIVE Deal Sourcing Framework

```
HIVE ACQUISITION CRITERIA (ICP equivalent):
  Asset type: producing oil and gas royalty interests; ORRI; mineral rights (not speculative/undeveloped)
  Basin: Uinta Basin (Utah) primary; existing producing wells preferred
  Production: documented BOE/month from operator statements preferred (not estimated)
  NRI%: documented and reconcilable in Covercy post-acquisition
  Seller profile: estate sales; individual mineral rights holders seeking liquidity; consolidators exiting
  Excluded: working interest (WI) unless exceptional circumstances; Matt Mathison decides
  LOE relevance: for WI: LOE <$18/BOE target (HIVE benchmark); for royalty interests: N/A
  
WTI TRIGGER — ACQUISITION PAUSE:
  WTI <$58/bbl for 2+ consecutive weeks: ALL new acquisition LOIs paused
  Existing LOIs: Matt Mathison decides whether to continue or withdraw
  Pipeline building (sourcing, not LOI): continues even during WTI trigger
  Every acquisition LOI: Matt Mathison approves BEFORE sending — no exceptions, no amount threshold
  
DEAL SOURCING CHANNELS:

  COUNTY RECORDER RESEARCH (primary):
    Source: Utah county recorder offices (Uinta County; Duchesne County)
    What to look for: mineral deed filings; royalty interest transfers; ORRI assignments
    How: search for recent (last 12-18 months) mineral deed recordings with out-of-state grantors
    Out-of-state grantors: higher probability of sellers who inherited or have limited operational interest
    Frequency: monthly review of new filings
    Output: list of names + addresses from deed records → basis for outreach letter campaign
    
  BROKER AND LANDMAN NETWORK:
    Target: independent landmen and O&G brokers with Uinta Basin focus
    How: relationship-based (industry events; referrals from operators); not cold volume outreach
    What they bring: off-market sellers; estate situations; known mineral owners interested in liquidity
    HIVE value proposition for brokers: HIVE is a committed Uinta Basin buyer; fast DD; fair terms; relationship
    
  OPERATOR RELATIONSHIPS:
    Existing operators in HIVE's Covercy portfolio: may know of adjacent mineral owners interested in selling
    Approach: "If you hear of any royalty owners in [basin section] looking to sell, HIVE would welcome the introduction"
    
  ESTATE AND LEGAL NETWORK:
    Estate attorneys in Utah who handle mineral estate distributions
    Context: inherited mineral rights are often sold by heirs who don't have operational interest in O&G
    Approach: introduce HIVE as a Uinta Basin royalty buyer; ask to be referred when appropriate
    
OUTREACH LETTER STANDARDS (county recorder sourced):
  Format: formal letter; HIVE Partners letterhead; 1 page
  Content:
    Introduction: HIVE Partners is a royalty interest acquisition firm focused on the Uinta Basin
    What we do: we purchase royalty interests, ORRIs, and mineral rights from landowners
    Why reach out: "We've identified your interest in [basin/county] through public records"
    Value proposition: "We offer a confidential evaluation of your interest; no obligation to sell"
    CTA: phone or email contact (Dr. Lewis or designated HIVE contact)
    No price quoted in initial letter (introduction only; not an offer)
  Review: Dr. Lewis reviews all outreach letter content before mailing
  Volume: targeted (not mass); typically 20-50 letters per quarter based on recorder research
  
ACQUISITION PIPELINE QUALIFICATION:
  Step 1 — Initial contact (response to letter or broker referral):
    Confirm: Are they interested in discussing a sale? What interest do they hold?
    Do not: discuss specific pricing in first contact
    
  Step 2 — Interest qualification:
    Obtain: production statement (most recent operator statement); deed information
    Confirm: producing vs. non-producing; operator; approximate NRI%
    
  Step 3 — Preliminary evaluation:
    HIVE acquisition model (see finance-hive-acquisition-model): BOE × WTI × NRI% → revenue
    LOI price range: based on production revenue × acquisition multiple
    Check WTI trigger: if WTI <$58/bbl for 2+ weeks → pause; Matt Mathison decides
    
  Step 4 — Matt Mathison briefing:
    Format: 1-page summary (see output format below)
    Matt Mathison decision: proceed to LOI / pass / request more information
    LOI: Matt Mathison approves before send; Matt Mathison signs all HIVE LOIs
    
COVERCY INTEGRATION:
  Post-acquisition: asset entered in Covercy with NRI%; operator; production history; acquisition price
  Covercy = system of record for HIVE O&G operations; acquisition sourcing data feeds eventual Covercy entry
  Dr. Lewis does not directly access AdvancedMD or Marshall Medical Billing for HIVE (different entity)
```

## Output Format

```markdown
# HIVE Acquisition Opportunity — [Opportunity Name] | [Date]
**Source:** [County recorder / Broker / Inbound] | **Status:** [Sourced / Qualified / Matt Mathison Review]
**WTI check:** [$X/bbl — above/below $58 trigger] | **Trigger active:** [Yes/No]

---

## Asset Summary
| Item | Detail |
|------|--------|
| Asset type | [Royalty Interest / ORRI / Mineral Rights] |
| Basin / County | [Uinta / Duchesne / Uinta County] |
| Operator | [Name] |
| Producing wells | [N] |
| Est. monthly BOE | [N BOE/month] |
| NRI% | [X%] |
| Seller profile | [Estate / Individual / Other] |

---

## Preliminary Valuation
| Metric | Value |
|--------|-------|
| Monthly production revenue (BOE × WTI × NRI%) | $[X] |
| Annual production revenue | $[X] |
| Acquisition multiple (revenue multiple) | [X]× |
| Preliminary LOI price range | $[X] – $[X] |

---

## Recommendation
**Proceed to LOI / Pass / More information needed**
[1-2 sentences: key risk or upside; Matt Mathison decision required]

---

## Matt Mathison Action Required
☐ Approve LOI (Matt Mathison approves amount and structure before send)
☐ Matt Mathison signs LOI
```

## Output Contract
- Every HIVE LOI requires Matt Mathison's approval before it goes out — this is not a threshold-based rule; it applies to every acquisition regardless of amount; the reason is that HIVE's acquisition strategy is Matt Mathison's domain; Dr. Lewis can source, qualify, and model deals, but the decision to make an offer is Matt Mathison's; a LOI sent without his review may contradict the acquisition thesis, conflict with HIVE's capital position, or create an expectation with a seller that Matt Mathison would reverse; the sourcing funnel exists to surface deals for Matt Mathison's evaluation — the sourcing function does not have independent acquisition authority at any amount
- WTI trigger pauses new LOIs, not deal sourcing — when WTI is below $58/bbl for 2+ consecutive weeks, HIVE pauses sending new acquisition LOIs; deal sourcing (county recorder research; broker conversations; qualification calls) continues; the pipeline doesn't stop; what stops is the commitment step (LOI); a seller who was being evaluated when the trigger fires gets an honest message: "HIVE is evaluating the market and we're pausing new commitments briefly — we remain interested and will be in touch when conditions align"; Matt Mathison decides whether any in-progress LOI continues or pauses
- HITL required: outreach letter content → Dr. Lewis reviews before mailing; LOI → Matt Mathison approves amount and structure before send; Matt Mathison signs all HIVE LOIs; preliminary valuation → Dr. Lewis reviews financial model before Matt Mathison briefing; WTI trigger active → Dr. Lewis + Matt Mathison determine pause scope; acquisition entered in Covercy → Dr. Lewis coordinates post-close; broker/landman relationship → Dr. Lewis or Matt Mathison manages (not delegated); pipeline review → Matt Mathison monthly briefing

## System Dependencies
- **Reads from:** Utah county recorder records (public deed filings); HIVE Covercy data (existing portfolio; NRI%; production history); operator production statements (from seller during qualification); WTI current price (EIA or market data); HIVE acquisition model (finance-hive-acquisition-model); broker/landman network contacts
- **Writes to:** GHL (HIVE acquisition pipeline — contacts; stage; interest details; WTI status); Matt Mathison acquisition briefing documents (SharePoint → HIVE → Acquisitions → Pipeline → [Opportunity]); HIVE LOI repository (post-Matt Mathison approval; SharePoint → HIVE → Acquisitions → LOIs); Covercy (post-close; asset entry); outreach letter records (county recorder letters — date; recipients; responses)
- **HITL Required:** Outreach letters → Dr. Lewis reviews content; LOI → Matt Mathison approves before send; Matt Mathison signs all LOIs; WTI trigger → Dr. Lewis + Matt Mathison; financial model → Dr. Lewis reviews before briefing Matt Mathison; broker relationships → Dr. Lewis or Matt Mathison; monthly pipeline → Matt Mathison briefing; Covercy entry → Dr. Lewis post-close coordination

## Test Cases
1. **Golden path:** County recorder research — Duchesne County, UT — 12 new mineral deed filings in last 30 days. Identified: 3 out-of-state grantors (California, Texas, Colorado addresses). Dr. Lewis reviews outreach letter content. Letters mailed to 3 prospects. Response: 1 response (California address — inherited interest from parent's estate). Qualification call: 2-well royalty interest; Uinta Basin; operator = [Major O&G company]; 18 BOE/month estimated from operator statement. NRI% = 1.25%. Preliminary valuation: 18 BOE × $62 WTI × 1.25% = $13.95/month net royalty → $167/year. Acquisition multiple: 5× annual = ~$835 all-in (small deal; included for illustration). WTI: $65.40 — above trigger ✅. Matt Mathison briefing: 1-page summary prepared. Matt Mathison: "Pass — too small for diligence cost." Logged in GHL as "Pass — size." Relationship maintained ("We appreciate you reaching out; if you have additional interests you'd consider selling, HIVE would welcome the conversation").
2. **Edge case:** Broker brings HIVE a working interest (WI) opportunity instead of a royalty interest — 15% WI in 4 producing wells, Uinta Basin. LOE is $22.50/BOE (above HIVE's $18/BOE benchmark) → Dr. Lewis: "Working interest acquisitions are outside HIVE's standard criteria — the additional operational and cost exposure of WI is different from royalty interests. LOE at $22.50/BOE is also above our $18 benchmark, which means cost risk. This goes to Matt Mathison as a 'non-standard opportunity' before any qualification continues. Matt Mathison's call: is this interesting enough to evaluate despite WI structure and LOE concerns? I'll prepare a 1-page summary noting both the deviation from standard criteria and the LOE issue. Matt Mathison decides whether we spend diligence time on it."
3. **Adversarial:** A landman offers to sell HIVE a target list of Uinta Basin mineral owners' contact information for $5,000 ("I compiled this from county records; it'll save you months of research") → Dr. Lewis: "Before purchasing any data, I need to understand: (1) How was this list compiled? If it's from public county records, we can compile it ourselves for free — the value is in the research labor, not proprietary data; (2) Is there any non-public information in this list (direct contact info beyond what's in county records)? If so, how was it obtained? We'll only use information sourced from public records or direct outreach; (3) Does purchasing this list create any representation issues ('HIVE acquires data on private mineral owners') that could affect our reputation in the basin? Recommendation: if the list is pure county recorder data + enriched contact info, evaluate whether $5K is fair value for the labor vs. doing it ourselves. Do not pay for any non-public data without Dr. Lewis and Matt Mathison review."

## Audit Log
Outreach letter records (content; Dr. Lewis review; recipients; response; date; SharePoint). GHL HIVE acquisition pipeline records (all opportunities; stage; Matt Mathison decision). LOI records (Matt Mathison approval; signature; date sent; response; SharePoint → HIVE → Acquisitions → LOIs). WTI trigger records (trigger date; Matt Mathison decision on in-progress LOIs). Broker/landman relationship records. Covercy entry records (post-close; Dr. Lewis coordination). Acquisition pass records (reason; logged in GHL).

## Deprecation
Acquisition criteria reviewed when HIVE's investment thesis or focus changes. WTI trigger threshold reviewed when Matt Mathison updates HIVE operating parameters. Outreach letter templates reviewed annually. Broker/landman network reviewed semi-annually. County recorder research process reviewed when Utah O&G regulatory environment changes. Covercy integration process reviewed when Covercy platform changes.
