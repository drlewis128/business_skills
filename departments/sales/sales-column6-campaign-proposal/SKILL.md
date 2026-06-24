---
name: sales-column6-campaign-proposal
description: "Build CTV campaign proposals and IO drafts for Column6/Siprocal. Use when the user says 'Column6 proposal', 'CTV proposal', 'campaign proposal', 'build a proposal', 'draft a proposal', 'IO draft', 'draft an IO', 'IO template', 'Column6 IO', 'CTV IO', 'build an IO', 'campaign spec', 'campaign plan', 'campaign brief', 'CTV campaign brief', 'campaign outline', 'campaign structure', 'Column6 campaign', 'Siprocal campaign', 'IO structure', 'IO terms', 'IO line items', 'IO budget', 'IO impressions', 'IO CPM', 'IO flight dates', 'IO audience', 'IO targeting', 'CTV targeting', 'audience targeting', 'CTV audience', 'campaign targeting', 'campaign audience', 'programmatic targeting', 'campaign measurement', 'campaign KPIs', 'CTV KPIs', 'campaign performance goals', 'viewability', 'IVT', 'VCR', 'video completion rate', 'Column6 measurement', 'CTV measurement', 'ACR data', 'campaign reporting', 'Column6 reporting', or 'CTV reporting'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--agency <name>] [--campaign-type <CTV|mobile|gaming|cross-platform>] [--budget <$X>] [--action <draft|review|send>]"
---

# Sales Column6 Campaign Proposal

Build CTV campaign proposals and IO drafts for Column6/Siprocal — producing client-ready campaign proposals that clearly state the inventory, audience, performance expectations, and contractual terms so the agency can evaluate, approve, and sign. A Column6 proposal that is vague about what's being delivered is an IO that will generate disputes at campaign completion. Specific is professional.

## When to Use
- Building a new campaign proposal for an agency discovery follow-up
- Drafting the formal IO for an agreed-upon campaign
- Reviewing a campaign proposal before sending to an agency
- Responding to an agency's campaign brief with a Column6 recommendation

## Column6 Campaign Proposal Framework

```
CAMPAIGN PROPOSAL STRUCTURE (pre-IO document):
  1. Campaign objective (agency's stated goal — in their words)
  2. Recommended inventory mix (CTV / Mobile / Gaming — with rationale)
  3. Audience targeting (age; gender; geo; contextual; ACR if applicable)
  4. Performance goals (VCR; viewability; IVT benchmark)
  5. Investment summary (CPM; impressions; total investment)
  6. Flight dates and delivery schedule
  7. Measurement methodology
  8. Next step (move from proposal to IO)
  
IO REQUIRED ELEMENTS (legally binding; see also sales-column6-io-seller):
  Campaign name; advertiser; agency name; media buyer contact
  Flight start date; flight end date
  Inventory type: CTV / Mobile / Gaming (specify per line if cross-platform)
  Audience target: [age/gender/geo/contextual/ACR] per line item
  CPM per line item; impressions per line item; total impressions; total investment
  Delivery guarantee: "Column6 guarantees 100% delivery within the flight dates"
  Viewability standard: ≥70% viewability (MRC-accredited measurement)
  VCR: ≥85% for in-stream video (applies to CTV and mobile video)
  IVT: Column6 measured IVT rate ≤[X]% (current measured rate; entity CEO confirms before inclusion)
  Make-good policy: underdelivery >10% → make-good on next IO or credit on current IO
  Payment terms: net [30/45/60] per agency agreement
  Cancellation policy: 5 business days notice; creative changes within 48 hours of live
  Signatures: agency authorized representative + Column6 entity CEO or authorized signatory
  Creative spec: format; dimensions; VAST/VPAID (if applicable); click URL; impression pixel
  
INVENTORY SELECTION GUIDANCE:

  CTV (Connected Television):
    When to recommend: brand awareness; high-impact video; household reach
    Minimum IO: $25K (smaller budgets don't generate enough impressions to be meaningful)
    CPM range: $[X]-$[X] (entity CEO confirms current rate card)
    KPIs: VCR ≥85%; viewability ≥70%; IVT ≤[X]%
    Best for: reaching cord-cutters; premium household audiences; brand campaigns
    
  Mobile:
    When to recommend: location-based targeting; app-adjacent audiences; DR with click-through
    Minimum IO: $15K
    CPM range: [entity CEO rate card]
    KPIs: CTR; viewability; IVT
    Best for: lower-funnel campaigns; geo-targeted campaigns; app install campaigns
    
  Gaming:
    When to recommend: 18-34 male audiences; high engagement environments; brand awareness
    Minimum IO: $15K
    CPM range: [entity CEO rate card]
    KPIs: engagement rate; VCR; viewability
    Best for: reaching gaming audiences that are difficult to reach on standard CTV
    
  Cross-platform:
    When to recommend: maximum reach; multiple audience touchpoints; larger budgets ($75K+)
    Portfolio approach: recommend CTV as primary (60-70% of budget); Mobile/Gaming as complement (30-40%)
    
AUDIENCE TARGETING OPTIONS:
  Age/gender/geo: standard demographic targeting
  Contextual: targeting by content type (sports; news; entertainment; lifestyle)
  ACR (Automatic Content Recognition): targets households based on TV viewing behavior
    Example: target households that have recently watched competitor's ads
    ACR is premium targeting; used for direct-response or competitive campaigns
  1st party: agency or advertiser's own CRM data (must be properly onboarded; confirm data privacy compliance)
  
GROSS MARGIN CHECK (before sending proposal):
  Every campaign proposal is subject to the 35% gross margin floor
  Calculate: (Total IO value - Column6 cost to deliver) ÷ Total IO value ≥ 35%
  If margin check fails: do not send proposal; go to deal desk (sales-deal-desk) for entity CEO + Dr. Lewis approval
  Confirm: current CPM rate card → entity CEO confirms before any proposal is sent with specific pricing
  
PROPOSAL REVIEW CHECKLIST:
  ☐ Campaign objective stated in agency's words (not generic)
  ☐ Inventory recommendation has rationale (not just "we have this")
  ☐ CPM is on current rate card (entity CEO confirmed)
  ☐ Gross margin ≥35% calculated
  ☐ Performance guarantees match Column6's standard terms (VCR ≥85%; viewability ≥70%; IVT ≤[X]%)
  ☐ Flight dates are realistic (minimum 3 business days from IO signature for creative QA)
  ☐ Make-good policy stated
  ☐ Payment terms match agency's standard or approved deviation
  ☐ IO has all required fields for execution (not missing campaign name; advertiser; etc.)
  ☐ Client confidentiality: no other agency's campaign data referenced
```

## Output Format

```markdown
# Column6 Campaign Proposal — [Agency Name] | [Campaign Name] | [Date]
**Prepared by:** [AE Name] | **Gross margin:** [X%] ✅/❌ | **Entity CEO reviewed:** [Yes/No]

---

## Campaign Overview
**Objective:** [In the agency's words from discovery]
**Advertiser:** [Name] | **Flight:** [Start date] – [End date]

---

## Recommended Campaign
| Inventory | Audience | CPM | Impressions | Investment |
|-----------|---------|-----|------------|-----------|
| CTV | [Target] | $[X] | [N] | $[X] |
| Mobile (if applicable) | [Target] | $[X] | [N] | $[X] |
| **Total** | | | **[N]** | **$[X]** |

---

## Performance Commitments
| KPI | Column6 Commitment |
|-----|--------------------|
| Delivery | 100% guaranteed |
| VCR (in-stream) | ≥85% |
| Viewability | ≥70% (MRC-accredited) |
| IVT rate | ≤[X]% (current measured rate) |
| Make-good | Underdelivery >10% → make-good on next IO or credit |

---

## Measurement
**Methodology:** [ACR / MRC-accredited panel / pixel / other]
**Reporting:** [Frequency; dashboard access or weekly delivery report]

---

## Investment Summary
| Item | Value |
|------|-------|
| Total IO investment | $[X] |
| Gross margin | [X%] — ✅/❌ |
| Payment terms | Net [30/45/60] |
| Cancellation notice | 5 business days |

---

## Next Step
☐ Agency reviews proposal | ☐ IO draft sent | ☐ IO signed | ☐ Creative assets requested
```

## Output Contract
- Every performance commitment in the proposal must be something Column6 can actually deliver — "100% delivery guaranteed" is on every IO because Column6's make-good policy backs it; "VCR ≥85%" is on every in-stream CTV IO because Column6's inventory is selected for this standard; "IVT ≤[X]%" must use Column6's current measured IVT rate, not an estimated or aspirational number; Dr. Lewis validates all performance claims against current Column6 campaign data before they go in a proposal; a proposal that commits to performance Column6 can't achieve generates disputes at campaign completion that damage the relationship and trigger make-good obligations that reduce margin; specific and achievable beats ambitious and aspirational
- Gross margin is checked before the proposal is sent — not after the agency pushes back on price; the AE who builds a proposal at CPM rates that produce 28% gross margin and then sends it has created a situation where: (1) they can't accept the IO without entity CEO + Dr. Lewis approval; (2) the agency now has a price expectation that's below margin floor; (3) if the AE holds firm, the agency may feel misled; the right order is: AE builds the proposal → calculates gross margin → if ≥35%, send; if <35%, go to deal desk before sending; the gross margin calculation is on every proposal checklist for exactly this reason
- HITL required: CPM rate card → entity CEO confirms current rates before any proposal is sent; gross margin ≥35% → entity CEO confirms before send (margin check is AE's responsibility; entity CEO spot-checks); gross margin <35% → entity CEO + Dr. Lewis deal desk before sending; performance claims (IVT; VCR) → entity CEO/ops team confirms current measured data; non-standard terms in proposal → entity CEO + Dr. Lewis before send; agency receives proposal → entity CEO aware for IOs >$100K; all IOs → entity CEO authorized signatory at execution

## System Dependencies
- **Reads from:** Agency discovery notes (GHL — campaign objective; audience; budget; timeline; KPIs); Column6 rate card (entity CEO — current CPM by inventory type); Column6 performance data (ops team — current measured IVT rate; VCR benchmark; viewability); gross margin calculator (entity CEO provides or AE calculates); IO template (Column6 standard); agency payment terms history (GHL — standard terms or approved deviation)
- **Writes to:** Campaign proposal document (SharePoint → Column6 → Sales → Proposals → [Agency] → [Campaign] → [Date]); IO draft (SharePoint → Column6 → IOs → [Agency] → [Campaign] → Draft → [Date]); GHL (proposal sent; date; margin; gross margin check; next step); entity CEO notification (proposals >$100K); deal desk request (if margin <35%)
- **HITL Required:** Rate card → entity CEO confirms; gross margin check → entity CEO spot-check; gross margin <35% → entity CEO + Dr. Lewis deal desk; performance claims → entity CEO/ops confirms current data; non-standard terms → entity CEO + Dr. Lewis; >$100K proposal → entity CEO aware; IO execution → entity CEO authorized signatory; client confidentiality → no other agency's data referenced

## Test Cases
1. **Golden path:** Agency discovery: media buyer wants to target "sports-watching households in major markets; 25-54 demo; brand awareness for auto client; $80K Q3 budget." Proposal built: CTV (ACR data for sports viewers; male-skew 25-54; NY/LA/CHI/ATL; 8 weeks). Inventory: CTV $19 CPM × 4.2M impressions = $79,800. Gross margin: ($79,800 - $52,000 internal cost) ÷ $79,800 = 34.8% → below 35%. Go to deal desk: entity CEO reviews. Decision: adjust to $19.50 CPM ($80,850 total; margin 35.5% ✅). Entity CEO approves. Proposal sent at $19.50 CPM. Agency accepts. IO drafted. Entity CEO countersigns. Creative assets received. Campaign live.
2. **Edge case:** Agency sends Column6 their RFP with specific targeting requirements: "We need to target households that have watched [Competitor Brand] ads in the last 90 days." ACR data targeting → Dr. Lewis: "ACR targeting based on competitor ad exposure is technically possible with ACR data — this is competitive conquesting, a legitimate advertising approach. Confirm with ops: (1) Does Column6 have ACR data access that enables this specific query? (2) What's the privacy compliance status of this data set — is it CCPA/CPRA compliant for the targeted markets (NY; LA; CHI)? (3) Does the data provider have appropriate consent for this targeting methodology? If all three are confirmed, include ACR competitive conquesting in the proposal as a line item with the appropriate data provider credit and a note about the privacy compliance basis. If any of the three is uncertain, offer standard demographic targeting for this line instead and explain why."
3. **Adversarial:** AE sends a campaign proposal to an agency that includes a performance guarantee: "Column6 guarantees viewability ≥85% and VCR ≥92%" — exceeding Column6's standard terms (70% viewability; 85% VCR) → Dr. Lewis: "Those guarantees need to be corrected before the agency reads them. Column6's standard performance commitments are ≥70% viewability and ≥85% VCR — those are what our make-good policy backs. A commitment to 85% viewability and 92% VCR means: (1) if we deliver our standard 73% viewability and 87% VCR, we're in breach of the contract even though we delivered above our standard terms; (2) make-good liability increases; (3) if the agency takes us to task on the guarantee, we're exposed. Correct the proposal to standard terms: '≥70% viewability; ≥85% VCR' — and resend with a note 'I want to make sure our terms are accurate before you share with your client.' Pull the incorrect version from the email thread if possible."

## Audit Log
Campaign proposal records (all proposals; agency; campaign; date; margin; entity CEO review; SharePoint). IO draft records (linked to proposal; IO version; entity CEO authorized signatory). Gross margin records (proposal; calculated margin; entity CEO spot-check; deal desk if <35%). Performance claim validation records (IVT; VCR; viewability; ops team confirmation; date). Non-standard terms records (deviation; entity CEO + Dr. Lewis approval). Incorrect proposal records (proposals sent with errors; correction action; agency notification). Deal desk records (proposals below margin floor; entity CEO + Dr. Lewis decision).

## Deprecation
Campaign proposal structure reviewed when Column6's inventory types or measurement capabilities change. CPM rate card reviewed when entity CEO updates pricing. Performance benchmarks reviewed when Column6's measured campaign data changes. Gross margin floor reviewed when Column6's cost structure changes. ACR targeting guidance reviewed when CCPA/CPRA enforcement guidance changes.
