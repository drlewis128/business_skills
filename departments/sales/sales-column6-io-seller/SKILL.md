---
name: sales-column6-io-seller
description: "Run the full Column6/Siprocal IO (Insertion Order) sales process from agency prospecting to signed IO. Use when the user says 'Column6 sales', 'sell Column6', 'Column6 IO', 'IO sales', 'insertion order sales', 'sell an IO', 'sign an IO', 'IO process', 'CTV sales', 'CTV IO', 'programmatic sales', 'media sales', 'agency sales', 'sell to agencies', 'agency IO', 'Column6 pitch', 'Column6 value proposition', 'Siprocal pitch', 'CTV pitch', 'programmatic pitch', 'Column6 AE', 'CTV AE', 'media AE', 'Column6 account executive', 'IO pipeline', 'Column6 pipeline', 'CTV pipeline', 'Column6 proposal', 'IO proposal', 'Column6 close', 'IO close', 'agency outreach', 'agency prospecting', 'Column6 pricing', 'CPM', 'Column6 CPM', 'CTV CPM', 'Column6 campaign', 'IO campaign', 'flight dates', 'campaign delivery', 'Column6 delivery', 'Column6 guarantee', 'Column6 make-good', 'repeat IO', 'IO renewal', or 'agency relationship'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--stage <prospecting|discovery|proposal|io-close|campaign-live>] [--agency-tier <1|2|3>]"
---

# Sales Column6 IO Seller

Run the full Column6/Siprocal IO (Insertion Order) sales process — covering agency prospecting through signed IO and campaign launch. Column6's revenue model is IO-based: recognized at campaign delivery milestones. The sale is the IO; the renewal is the relationship. Repeat IO rate ≥60% is the single most important health metric — it means the first IO delivered enough value that the agency comes back.

## When to Use
- Running a full Column6 agency sales cycle from first contact to signed IO
- Preparing for any stage of the Column6 sales process (discovery; proposal; IO close)
- Coaching a Column6 AE on process, IO quality, and agency relationship management
- Reviewing Column6 pipeline in pipeline review

## Column6 IO Sales Framework

```
COLUMN6 IO SALES OVERVIEW:
  Product: CTV (Connected TV) / Mobile / Gaming advertising inventory + campaign execution
  Buyer: Media Buyer (day-to-day contact) + VP/Director Media (economic buyer on large IOs)
  Revenue model: IO-based (recognized at campaign delivery milestones; not subscription)
  Avg IO size: $50K-$250K (range varies; floor $25K; large agencies may IO $500K+)
  Sales cycle: 14-45 days (faster than Allevio; IO can be turned around in a week for repeat buyers)
  Close signal: agency requests a rate card or campaign spec sheet
  Compelling event: campaign flight date (hard deadline drives the IO signing timeline)
  Repeat IO rate target: ≥60% of active agencies re-book within 90 days of campaign completion
  
COLUMN6 IO SALES PROCESS (7 stages in GHL):
  Stage 1 — Agency Prospect: ICP-verified agency in GHL; outreach not yet started
  Stage 2 — Contacted: outreach sent; sequence running; awaiting first response
  Stage 3 — Discovery: first call completed; media buying approach understood; CTV needs identified
  Stage 4 — Qualified: agency has active CTV budget; media buyer is engaged; campaign brief received or discussable
  Stage 5 — Proposal / IO Draft: IO drafted; shared with agency; awaiting signature
  Stage 6 — IO Signed: IO executed (both parties); creative assets requested
  Stage 7 — Campaign Live / Closed: campaign in delivery or complete
  
COLUMN6 VALUE PROPOSITION (core):
  1. Inventory quality: IVT (Invalid Traffic) rate [X]% vs. open exchange benchmark [Y]%
  2. Delivery guarantee: 100% delivery commitment with make-good policy (not best effort)
  3. Viewability: ≥70% viewability; in-stream VCR ≥85%
  4. Audience accuracy: [inventory-specific targeting precision claim]
  5. Partnership: Column6 AE is an extension of the agency's team (white-glove; not a platform)
  
IO STRUCTURE — COLUMN6 STANDARD:
  IO must include:
    Campaign name; advertiser; agency; flight dates (start + end)
    Inventory type: CTV / Mobile / Gaming (or combination)
    Audience target: age/gender/geo/contextual (as applicable)
    CPM; total impressions; total investment
    Delivery guarantee: "Column6 guarantees 100% delivery within flight dates"
    Viewability standard: ≥70% viewability; VCR ≥85% for in-stream
    Make-good policy: underdelivery >10% → make-good on next IO or credit
    Measurement: methodology stated (ACR; panel; pixel; MRC-certified)
    Payment: net [30/45/60] from campaign end per agency terms
    Cancellation policy: 5 business days notice; creative changes within 48 hours
    Signatures: agency media buyer/VP + Column6 entity CEO or authorized signatory
    
  IO DOES NOT GO LIVE until:
    Both parties have signed
    Creative assets received in spec (video format; dimensions; VAST/VPAID if applicable)
    Column6 QA on creative completed
    
GROSS MARGIN DISCIPLINE:
  Target: ≥35% gross margin on every IO (see ai-column6-ai-ops for full metric context)
  If margin <35%: entity CEO + Dr. Lewis must authorize before IO is countersigned
  CPM discounting: never below the margin floor without authorization
  Volume discounting: volume-based CPM reductions require entity CEO approval before proposal
  DSO: net 30-60 standard; DSO target <50 days; anything >90 days → entity CEO + Dr. Lewis
  
COLUMN6 SALES METRICS (rep targets):
  Prospecting: 10 new agency contacts/week; 5 meetings booked/week
  Pipeline: ≥3× quota coverage maintained
  Discovery-to-IO rate: ≥50% (qualified agencies should produce an IO)
  IO-to-close rate: ≥75% (most drafted IOs should be signed)
  Repeat IO rate: ≥60% (track at 90 days post-campaign completion)
  
AGENCY TIER MANAGEMENT:
  Tier 1 ($250K+ annual IO spend with Column6): quarterly business reviews; entity CEO relationship
  Tier 2 ($50K-$250K annual IO): monthly check-in; AE manages; entity CEO intro once
  Tier 3 (<$50K annual IO or new): AE manages; no entity CEO involvement until Tier 2
  Tier 1 spend decline >20%: entity CEO call within 5 days (per ai-column6-ai-ops)
  
CLIENT DATA CONFIDENTIALITY:
  Agency-specific: Column6 does not share one agency's campaign data, creative, or strategy with another agency
  No cross-client data: creative and performance data from one campaign not used to inform a competing agency's proposal
  IO-level: all campaign data treated as confidential to the buying agency
  GHL: agency pipeline records do not include another agency's campaign details
```

## Output Format

```markdown
# Column6 IO Opportunity — [Agency Name] | [Date]
**Stage:** [1-7] | **IO Size:** [$X] | **Flight dates:** [Start – End]
**Gross margin:** [X%] | **Campaign type:** [CTV/Mobile/Gaming]
**Media buyer:** [Name] | **IO authorization:** [Entity CEO pending/approved]

---

## IO Summary
| Item | Value |
|------|-------|
| Inventory type | [CTV / Mobile / Gaming] |
| CPM | $[X] |
| Total impressions | [N] |
| Total investment | $[X] |
| Gross margin | [X%] — ✅ Above 35% / ❌ Requires approval |
| Payment terms | Net [30/45/60] |
| Delivery guarantee | 100% or make-good |

---

## Stage Assessment
**What's needed to advance:** [Specific action + date]
**Blocking issue:** [If any]
**Repeat IO probability:** [Low/Medium/High — based on campaign size and agency engagement]
```

## Output Contract
- Gross margin is checked before every IO is countersigned, not after — Column6's business model requires ≥35% gross margin to sustain operations, invest in inventory quality, and deliver the white-glove service that drives repeat IOs; an IO signed below 35% margin covers costs but doesn't build the business; if multiple IOs below margin are signed ("to win the relationship"), the relationship is built on a unit economics foundation that can't be sustained; entity CEO and Dr. Lewis review every IO where margin calculation is below floor before counterpartyature; there are no exceptions for "this is a strategic agency" — if the economics don't work at 35%, the conversation is about what volume or CPM makes it work, not about whether the floor applies
- Repeat IO rate is the health metric that matters most — a Column6 AE who signs 5 new agencies per quarter but has 0% repeat rate is building a treadmill: constant prospecting to replace single-use agencies who tried Column6 once and didn't come back; the repeat IO rate is the signal about delivery quality, campaign performance, and relationship management; AEs track repeat IO rate at the 90-day mark post-campaign; a Tier 2 agency that doesn't repeat within 90 days gets a campaign debrief call — "What worked? What could we do better next time?" — before the relationship is moved to inactive in GHL
- HITL required: IO gross margin <35% → entity CEO + Dr. Lewis before counterparty signature; Column6 entity CEO countersigns all IOs; non-standard payment terms (>net 60) → entity CEO + Dr. Lewis; Tier 1 agency spend decline >20% → entity CEO call within 5 days; new agency IOs >$250K → entity CEO may join close call; creative QA → Column6 ops team before campaign goes live; IO disputes (delivery; billing) → entity CEO + Dr. Lewis involved

## System Dependencies
- **Reads from:** GHL (Column6 agency pipeline; contacts; IO history; repeat IO tracking); ICP definition (sales-icp-builder); IO template (Column6 standard); gross margin calculator; agency tier tracking; campaign delivery records; competitive intelligence (sales-competitive-playbook)
- **Writes to:** GHL (stage updates; IO value; flight dates; margin; next steps; post-campaign repeat IO flag); IO repository (SharePoint → Column6 → Sales → IOs → [Agency] → [Date]); entity CEO authorization request (margin <35%); campaign operations handoff (IO signed → ops builds campaign); win/loss records; repeat IO rate tracking
- **HITL Required:** Gross margin <35% → entity CEO + Dr. Lewis; entity CEO countersigns all IOs; non-standard terms → entity CEO + Dr. Lewis; Tier 1 decline >20% → entity CEO; IO disputes → entity CEO + Dr. Lewis; creative QA → ops; repeat IO debrief → AE within 90 days of campaign completion; client data confidentiality enforced at all stages

## Test Cases
1. **Golden path:** New agency prospect — 45-person independent media agency; active CTV buys. ICP Tier 2. Discovery (Day 1): media buyer engaged; $80K CTV budget this quarter; IVT concern with current supply; VCR running 78% (below 85% benchmark). Qualified (Day 3): Column6 IVT and VCR benchmarks better than current; agency interested in test IO. IO proposal (Day 5): $50K IO; CTV; 2.5M impressions at $20 CPM; flight dates 4 weeks; viewability ≥70%; VCR ≥85% guaranteed; make-good policy. Margin check: 38% ✅. Entity CEO countersigns. IO sent Day 6. Agency signs Day 8. Creative assets received Day 10; Column6 QA passes. Campaign live Day 11. Campaign completes Day 38; 100% delivery; VCR 89%; viewability 73%. Debrief call Day 45: agency happy. Repeat IO (Day 65): $75K IO — Tier 2 agency confirmed. Repeat IO rate: ✅.
2. **Edge case:** Media buyer calls to say "our client wants to cancel the campaign halfway through — can we just stop delivery?" → Dr. Lewis: "Mid-flight cancellation is governed by the IO's cancellation policy. Standard Column6 IO: 5 business days notice required; impressions already delivered are billed. Actions for the AE: (1) Reference the IO cancellation clause to the media buyer; (2) Calculate what's already been delivered and what billing is owed; (3) Offer to pause (not cancel) while the client evaluates — this preserves the relationship and may allow restart; (4) If they want to cancel: entity CEO + Dr. Lewis involved to confirm revenue recognition on delivered impressions and whether a make-good credit applies to a future IO. Do not verbally agree to a cancellation or billing adjustment without entity CEO involvement."
3. **Adversarial:** Agency media buyer asks to see "how our competitor [Agency X] structured their CTV campaign with Column6 — just so we know what's working in the market" → Dr. Lewis: "That request has to be declined. Column6 treats each agency's campaign data, creative, and strategy as confidential to that agency. Sharing Agency X's approach would violate Column6's client confidentiality standards — and if that agency found out, it would permanently destroy that relationship. What we can share: Column6's aggregate performance benchmarks across all campaigns (average VCR; average viewability; average IVT rate) — that's market-level data that doesn't reveal any agency's specific strategy. The AE should explain: 'I'm not able to share details about other campaigns, but here's what we're seeing across our inventory as benchmarks.'"

## Audit Log
GHL Column6 agency pipeline records (all stages; IO values; flight dates; margin; repeat IO tracking). IO repository (all signed IOs; entity CEO countersignature; SharePoint). Gross margin approval records (<35% IOs; entity CEO + Dr. Lewis authorization). Repeat IO rate tracking (90-day post-campaign; by agency). Agency tier records (tier assignments; Tier 1 QBR records). Campaign delivery records (linked to IO; delivery % vs. guarantee). IO dispute records. Client confidentiality incident records.

## Deprecation
IO sales process reviewed annually against delivery, repeat IO, and margin data. Gross margin floor reviewed when Column6's cost structure changes. Agency tier thresholds reviewed when annual IO volume benchmarks change. IO template reviewed when Column6's inventory or measurement capabilities change. Client confidentiality standards reviewed when legal or contractual requirements change.
