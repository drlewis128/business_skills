---
name: sales-proposal-builder
description: "Build sales proposals and presentations for MBL portfolio companies. Use when the user says 'proposal', 'sales proposal', 'write a proposal', 'build a proposal', 'proposal template', 'proposal framework', 'pitch deck', 'sales deck', 'client proposal', 'proposal document', 'RFP response', 'respond to the RFP', 'RFP', 'proposal review', 'proposal approval', 'pricing proposal', 'solution proposal', 'service proposal', 'proposal narrative', 'proposal structure', 'proposal writing', 'executive summary proposal', or 'win proposal'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--prospect <name>] [--deal-size <amount>] [--proposal-type <employer-group|agency-io|mineral-lease|investor>] [--action <build|review|refine>]"
---

# Proposal Builder

Build compelling, complete sales proposals for MBL portfolio companies — from the executive summary through pricing, implementation timeline, and call to action. A proposal that is submitted without the decision-maker's buy-in is a document dropped into a void; a proposal built jointly with the champion and tailored to the prospect's specific situation is a closing tool. Dr. Lewis builds proposal frameworks that are disciplined, honest, and match the buyer's decision criteria.

## When to Use
- A qualified prospect has been through discovery and is ready for a formal proposal
- Responding to an RFP from an agency, employer group, or institution
- Building or refining a standard proposal template for a portfolio company
- Reviewing a proposal before it is submitted

## Proposal Framework

```
PROPOSAL STRUCTURE (universal — adapt content by entity):

  SECTION 1: Executive Summary (1 page maximum)
    What it must contain:
      □ Problem statement: What specific challenge does this prospect face? (Use their words)
      □ Proposed solution: What Allevio / Column6 / HIVE will do, specifically
      □ Key outcome: What result will the prospect achieve? (Quantified if possible)
      □ Investment: Total cost and timeline to value (don't bury the price; put it in context)
      □ Why us: One differentiating reason (not a list of features)
    What to avoid: Generic company overview; marketing language; vague promises
    
  SECTION 2: Understanding of the Situation (1 page)
    Demonstrate that you listened in discovery
    Reference specific things the prospect said ("During our conversation on [Date], you mentioned...")
    Include: Current situation; pain points; what a successful outcome looks like for them
    If this section reads like it could apply to any prospect, rewrite it
    
  SECTION 3: Proposed Solution (2-3 pages)
    What you're proposing, specifically
    Implementation approach: How does it work? What are the steps?
    Timeline: When will value be realized?
    What the prospect does vs. what you do
    
  SECTION 4: Proof / Case Studies (1 page)
    1-2 relevant case studies (anonymized if needed)
    Must be specific: Company size; situation; result (in numbers, not adjectives)
    NOT acceptable: "We helped a large Arizona company save money on healthcare" 
    ACCEPTABLE: "We helped a 95-employee Scottsdale engineering firm reduce healthcare costs by 
      $127 per member per month — saving $145K annually while maintaining benefit quality"
      
  SECTION 5: Investment (1 page)
    Pricing, clearly stated — not buried in footnotes
    What is included; what is not included
    Contract term; renewal terms
    Comparison if multiple options: Option A / Option B / Option C
    
  SECTION 6: Next Steps (½ page)
    Specific: What happens after they sign?
    Timeline: When does implementation begin? When do results appear?
    Call to action: "Let's schedule a 30-minute call to review this proposal and answer questions"
    

ENTITY-SPECIFIC PROPOSAL CONTENT:

  ALLEVIO (Employer Group Proposal):
    Key financial model to include:
      Current cost analysis: [Group size] employees × current PMPM × 12 = current annual cost
      Allevio cost analysis: [Group size] employees × $85 PMPM × 12 = Allevio annual cost
      Year 1 savings: Current cost − Allevio cost = gross savings
      Net 3-year projection: Show savings grow as Allevio reduces claim ratio over time
    Key differentiator: Arizona-based care management network; employer-specific data; Net 15 payment
    Employer group key objections to address in the proposal:
      "We already have benefits" → Show the cost comparison; Allevio is a supplement or replacement
      "Our employees like our current plan" → Member satisfaction data; transition support
      "This is too complicated" → Implementation timeline; dedicated account manager
    Pricing: $[85]/member/month (customize by group size and risk profile)
      Small groups (25-50 employees): May require a slightly higher PMPM due to lower scale
      Large groups (250-500 employees): Volume pricing discussion
      
  COLUMN6 (Agency RFP Response / IO Proposal):
    RFP response must include:
      □ Audience strategy: How Column6 reaches the target demo (specific targeting approach)
      □ Inventory description: CTV channels; programming environments; audience segments
      □ Measurement: How campaign performance is measured (reach; completion rate; VCR; brand lift if applicable)
      □ CPM pricing: By channel and targeting complexity ($18-45 CPM range for CTV; $4-12 for programmatic)
      □ Flight schedule: Proposed flight dates; impressions delivery schedule
      □ Brand safety: Contextual targeting; content adjacency; fraud protection (IAS/DoubleVerify)
    Column6 differentiators to emphasize:
      Premium CTV supply; audience-first targeting; transparent reporting; direct publisher relationships
      IAB certified; ads.txt compliance; fully transparent supply chain
      
  HIVE (Mineral Lease / LP Investor Proposal):
    For landowners: LOI + term sheet (not a full proposal — mineral rights acquisition is simpler)
    For LP investors: Executive summary of HIVE's investment thesis + projected returns
      See fpa-lp-report-builder for LP-specific financial presentation
      Investment thesis: Uinta Basin economics; LOE $20-25/BOE; WTI trigger structure; projected IRR

RFP RESPONSE PROCESS:
  Step 1: Read the RFP in full before writing a word (understand what they're actually asking)
  Step 2: Identify the evaluation criteria (often listed; use these to structure the response)
  Step 3: Confirm whether to respond (does this prospect meet the ICP? is the deal worth pursuing?)
  Step 4: Write the response in the order of their criteria, not our preferred narrative
  Step 5: Review compliance: Have all mandatory questions been answered? Format requirements met?
  Step 6: Internal review before submission (CEO + Dr. Lewis for large opportunities)
  Step 7: Submit by the deadline — late submissions are typically disqualified
```

## Output Format

```markdown
# Sales Proposal — [Prospect Name] | [Entity]
**Deal value:** $[X]K/year | **Submitted by:** [Rep name] | **Date:** [Date]
**Decision-maker:** [Name / Title] | **Decision expected:** [Date]

---

## Executive Summary

**Their situation:** [1 sentence — what problem they face, in their words]
**Our proposal:** [1 sentence — what we're proposing, specifically]
**Expected outcome:** [1 sentence — what they will achieve, with a number if possible]
**Investment:** $[X]K/year | **Contract term:** [X] months | **Start date:** [Date]

---

## Why This Matters (Understanding Their Situation)

[3-5 sentences showing we listened. Reference specific things they said in discovery.
Include: Current pain; cost or efficiency impact; what success looks like to them.]

---

## Our Proposal

[Entity-specific section — what we're proposing; how it works; their role vs. our role]

---

## Financial Summary

| Item | Current | Proposed | Savings/Delta |
|------|---------|---------|--------------|
| [Annual healthcare cost] | $[X]K | $[X]K | $[X]K savings |
| [Implementation cost] | — | $0 (included) | — |
| [Net Year 1 impact] | | | **$[X]K** |

---

## Case Study

[Anonymized case study — specific situation, result, number]

---

## Pricing

| Option | Description | Price | Recommended? |
|--------|------------|-------|-------------|
| [Allevio Standard] | $85/member/month | $[X]K/year | ✅ |

---

## Next Steps

1. [Review call — schedule for next week]
2. [Legal review — typically 5-7 business days]
3. [Contract execution — target date: [Date]]
4. [Implementation begins: [Date]]
```

## Output Contract
- No proposal without a discovery call first — a proposal submitted without understanding the prospect's specific situation is a brochure, not a proposal; the "Understanding of the Situation" section must reference something specific the prospect said; if the proposal could be sent to any employer group in Arizona without changing anything, it is a generic proposal; Dr. Lewis enforces the rule: no proposal without at least one substantive discovery conversation documented in the CRM
- Show the number — the most persuasive element of any proposal is a specific, credible financial impact; "we'll reduce your healthcare costs" is marketing language; "$127/PMPM × 145 members × 12 months = $220,860 in annual savings" is a business case; Dr. Lewis builds the financial case into every Allevio proposal using the prospect's actual group size and current PMPM data; Column6 proposals include the CPM comparison and reach projection; the number makes the proposal a business decision, not a procurement decision
- Proposals above $50K get CEO + Dr. Lewis review before submission — a poorly constructed proposal on a $150K employer group deal reflects on Allevio; Dr. Lewis reviews and approves all proposals above $50K before they are submitted; the review covers: Is the financial model correct? Are we promising something we can deliver? Is the pricing consistent with our PMPM model? Are there any legal terms in the proposal that need outside counsel review?
- HITL required: Sales rep builds; Dr. Lewis reviews all proposals >$50K; CEO signs off on pricing for large deals; Dr. Lewis does not submit proposals — the sales rep owns the submission; outside counsel reviews any non-standard terms in a proposal (payment terms that deviate from Net 15; SLA commitments; indemnification); Matt Mathison is briefed when a single proposal exceeds $250K (material contract value)

## System Dependencies
- **Reads from:** Discovery notes (CRM — what did the prospect say in discovery?); pricing model (fpa-annual-budget-builder — current PMPM targets; CPM pricing ranges); case study library (SharePoint/Sales/<Company>/CaseStudies/); competitive intelligence (sales-competitive-intel — what objections will they raise?); ICP (sales-ideal-customer-profile — confirm this is still a fit before investing in a proposal); RFP document (if applicable)
- **Writes to:** Proposal document (SharePoint/Sales/<Company>/Proposals/[Prospect]_Proposal_[Date].pdf); CRM activity log (proposal submitted; date; follow-up date); pipeline stage update (move to Proposal stage in CRM); pricing approval record (for proposals above standard rate)
- **HITL Required:** Sales rep builds; Dr. Lewis reviews >$50K; CEO approves pricing and non-standard terms; outside counsel reviews any non-standard contractual provisions in the proposal; Matt Mathison briefed for proposals >$250K; Dr. Lewis does not submit proposals or quote prices outside the approved PMPM/CPM range without CEO approval; sales rep is the primary owner of the proposal relationship (Dr. Lewis is support)

## Test Cases
1. **Golden path:** Allevio proposal for a 185-employee Scottsdale healthcare company → Discovery call confirmed: Current PMPM $112; claim ratio 84%; HR Director is the champion; CEO needs to sign; budget authority confirmed; Dr. Lewis builds the financial model: Current cost = 185 × $112 × 12 = $248,640; Allevio cost = 185 × $85 × 12 = $188,700; Year 1 savings: $59,940; 3-year projection: savings compound as claim ratio improves to 72% (industry Allevio average for groups at 24 months); proposal built with case study from similar 160-employee healthcare company; pricing: $85/PMPM = $188,700/year; Dr. Lewis reviews (>$50K); CEO confirms pricing; proposal submitted; follow-up call scheduled for next week
2. **Edge case:** Column6 receives an RFP from a major holding company agency for a $350K upfront CTV campaign — deadline is 48 hours → Dr. Lewis: "48-hour RFP deadline — this is very short for a $350K proposal. Questions before we commit to responding: (1) Do we have the inventory depth to support a $350K campaign? (2) Is this an RFP with a real decision or an RFP issued to 8 vendors to create price competition for a deal that's already won internally? (3) Do we have a relationship with anyone at this agency? A $350K RFP response in 48 hours without a relationship is a low-probability exercise. My recommendation: Call the agency contact immediately, ask 2 questions ('Is there an incumbent? What's the primary evaluation criterion?'), and make a go/no-go decision based on the answers. If we respond: I'll build the audience strategy and inventory description; CEO confirms the CPM pricing; submit by the deadline." Decision made; proposal submitted; followed up within the timeline
3. **Adversarial:** A rep submits an Allevio proposal to an employer group promising a "guaranteed 20% reduction in healthcare costs in Year 1" without checking with Dr. Lewis → Dr. Lewis: "This is a problem. The proposal makes a specific financial guarantee (20% reduction in Year 1) that is not in our standard offering terms. A guarantee creates a contractual obligation — if we deliver 17% savings, the employer group can claim breach. Our standard proposal language is 'projected savings of 12-18% based on comparable groups' — not a guarantee. Before this proposal goes any further: (1) Retrieve the proposal if it's been submitted; contact the prospect and clarify this was a projection, not a guarantee; (2) If the contract is already in negotiation with guarantee language, engage outside counsel to review before signing; (3) Train the rep: proposals must be reviewed by Dr. Lewis before submission for any deal >$50K." Rep is counseled; proposal language corrected; review process reinforced

## Audit Log
All proposals retained by entity, prospect, and date. Pricing approval records retained. CEO and Dr. Lewis review records retained. Submitted RFP responses retained with submission confirmation. Win/loss records for each proposal retained. Any proposals with non-standard terms retained with outside counsel review notes.

## Deprecation
Retire when each portfolio company has a dedicated account executive who builds proposals — with Dr. Lewis reviewing all proposals above $50K and Matt Mathison briefed on proposals above $250K.
