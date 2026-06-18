---
name: fin-vendor-spend-analyzer
description: "Analyze vendor spend, concentration, and renegotiation opportunities across MBL entities. Use when the user says 'vendor spend', 'vendor analysis', 'vendor review', 'vendor rationalization', 'vendor concentration', 'top vendors', 'biggest vendors', 'biggest expenses', 'vendor audit', 'vendor cost', 'how much do we spend on vendors', 'who are our top vendors', 'vendor contract review', 'contract review', 'renegotiate vendor', 'vendor pricing', 'vendor pricing review', 'reduce vendor spend', 'software spend', 'SaaS spend', 'software audit', 'software review', 'tool audit', 'tech stack audit', 'subscription audit', 'duplicate vendors', 'overlap vendors', 'vendor consolidation', 'strategic vendor', 'critical vendor', 'vendor risk', 'single source vendor', 'vendor dependency', or 'spend analysis'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--period <trailing-12m|ytd|quarterly>] [--action <analyze|renegotiate|rationalize|report>] [--focus <concentration|duplicates|pricing|renewal>] [--category <software|services|marketing|all>]"
---

# Fin Vendor Spend Analyzer

Analyze vendor spend, concentration, and renegotiation opportunities across MBL entities — building a complete picture of where each entity's money goes, identifying over-reliance on single vendors, finding duplicate tools that can be consolidated, and flagging contracts approaching renewal for proactive negotiation. Vendor spend analysis is a high-ROI financial activity: a single day of Dr. Lewis's time reviewing vendor contracts typically identifies $40-80K of annualized savings opportunities — vendor renegotiations are almost always available to a buyer who knows what they're spending and shows up to the renewal conversation prepared.

## When to Use
- Annual: comprehensive vendor spend review for each entity (Q4)
- Monthly: review top 10 vendor invoices for any entity (spot check)
- A contract renewal is approaching (renegotiation preparation)
- Entity EBITDA is below target and cost levers are being explored
- Matt Mathison asks who our biggest vendors are or how concentrated our spend is

## Vendor Spend Framework

```
VENDOR SPEND ANALYSIS METHODOLOGY:

  DATA SOURCE: Bill.com + QuickBooks (trailing 12 months of payments)
  
  STEP 1 — EXTRACT VENDOR SPEND DATA:
    Pull all vendor payments for the TTM from Bill.com and QuickBooks
    Group by vendor (not by invoice — total payments per vendor)
    Sort by total TTM spend (highest to lowest)
    
  STEP 2 — VENDOR CATEGORIZATION:
    Category A: Software/SaaS (recurring subscriptions)
    Category B: Professional services (legal; accounting; consulting; IT)
    Category C: Marketing/advertising (media spend; agencies)
    Category D: Personnel-related (payroll processor; benefits; staffing)
    Category E: Facilities/operations (rent; utilities; insurance)
    Category F: Direct costs / COGS (entity-specific: DSP costs for Column6; medical costs for Allevio)
    
  STEP 3 — CONCENTRATION ANALYSIS:
    Top 5 vendors as % of total spend: [%]
    Top 10 vendors as % of total spend: [%]
    Single-vendor dependency: any critical function where only 1 vendor exists?
    
    Concentration thresholds:
      Any single vendor >20% of OpEx (excluding COGS): flag for concentration risk review
      Any single vendor providing a mission-critical service with no alternative: flag for vendor risk
      
  STEP 4 — RATIONALIZATION OPPORTUNITIES:
    DUPLICATE TOOLS (same category; similar function):
      Identify: "We have 2 tools doing video conferencing; 3 tools for project management"
      Resolution: consolidate to 1 tool; negotiate enterprise license; cancel the others
      
    UNUSED LICENSES:
      Ask: "Are all seats on this software being used?"
      Method: compare seat count to active user count (IT team verification)
      Resolution: reduce license count at next renewal
      
    OVER-SPECIFIED SERVICES:
      "We're paying for enterprise features on a tool we use at SMB capacity"
      Resolution: downgrade tier; negotiate a custom pricing arrangement
      
  STEP 5 — RENEWAL CALENDAR:
    Map all vendor contracts to their renewal dates
    Flag any contract renewing in the next 90 days
    For contracts >$10K annually: prepare a renegotiation brief
    Rule: start renegotiation 60 days before renewal (not at renewal)
    
RENEGOTIATION BRIEF FORMAT (for contracts >$10K/year):

  Vendor: [Name]
  Annual spend: $[X]
  Contract expires: [Date]
  Current terms: [$/month; seat count; tier]
  Market alternatives: [Competitor A at $X; Competitor B at $X]
  Negotiation leverage: [Volume; multi-year commitment; competitor quotes]
  Target: [% reduction or feature upgrade at same price]
  Our BATNA (Best Alternative): [Can we switch? At what cost?]
  Negotiation strategy: [Approach]
  
PORTFOLIO-LEVEL VENDOR INTELLIGENCE:

  Vendors serving multiple MBL entities (opportunity for portfolio discounts):
    Example: QuickBooks, Bill.com, Microsoft — used by MBL + entities
    Approach: negotiate at the portfolio level for all entities combined
    Savings: typically 15-25% over individual entity contracts
    
  Vendor risk by entity:
    Allevio: BAA-required vendors (HIPAA PHI exposure) — any vendor without a BAA is a compliance risk
    HIVE: Covercy (only royalty distribution platform) — no alternative; manage relationship carefully
    Column6: DSP relationships — concentration in one DSP is an operational risk
```

## Output Format

```markdown
# Vendor Spend Analysis — [Entity Name(s)] — TTM [End Date]
**Prepared by:** Dr. Lewis | **For:** Entity CEO + Dr. Lewis | **To Matt Mathison:** On request

---

## Top 10 Vendors by Spend

| Rank | Vendor | Category | TTM spend | % of OpEx | Renewal date | Flag |
|------|--------|---------|---------|---------|-------------|------|
| 1 | [Vendor A] | Software | $[X] | [%] | [Date] | ⚠️ Concentration |
| 2 | [Vendor B] | Services | $[X] | [%] | [Date] | ✅ |

**Top 5 concentration:** [%] of total OpEx

---

## Rationalization Opportunities

| # | Opportunity | Vendor(s) | Current spend | Estimated saving | Action | Timeline |
|---|------------|---------|-------------|----------------|--------|---------|
| 1 | Duplicate tools | [A] + [B] | $[X] | $[X] | Consolidate to [A] | 30 days |
| 2 | Unused licenses | [C] | $[X] | $[X] | Reduce seat count | Next renewal |
| 3 | Renegotiate | [D] | $[X] | $[X] | Multi-year commitment | 60 days |

**Total identified savings:** $[X] annualized

---

## 90-Day Renewal Calendar

| Vendor | Annual spend | Renewal date | Renegotiation status | Target |
|--------|------------|-------------|---------------------|--------|
| [Vendor A] | $[X] | [Date] | 🔄 In progress | -15% |
| [Vendor B] | $[X] | [Date] | 🔲 Not started | -10% |
```

## Output Contract
- Renegotiation 60 days before renewal, not at renewal — vendors have the most leverage at renewal (the customer is already committed and switching is painful); Dr. Lewis starts renegotiation conversations 60 days before a contract renews, when there is still time to evaluate alternatives and the vendor knows a competitor conversation is possible; at the renewal date, the leverage evaporates; the renewal calendar in Bill.com is the trigger system for starting these conversations; a contract that auto-renews at full price because no one tracked the renewal date is a controllable expense loss
- Concentration risk is a financial and operational risk — a single vendor representing 30% of OpEx is a financial concentration risk (price increase = meaningful EBITDA impact) and an operational risk (vendor failure or acquisition = disruption); Dr. Lewis flags any vendor >20% of OpEx to the entity CEO and, if critical/mission-critical with no viable alternative, to Matt Mathison; the response is either a renegotiation to reduce dependency (multi-vendor) or a formal vendor risk assessment that includes contract terms (SLAs; uptime guarantees; termination rights)
- Portfolio discounts are underexplored — most MBL entities use overlapping software (QuickBooks; Microsoft; Bill.com; project management tools); very few of these have been negotiated at the portfolio level; Dr. Lewis conducts an annual cross-entity vendor overlap analysis and negotiates portfolio-wide agreements where the combined spend exceeds individual thresholds; a portfolio-level agreement with a SaaS vendor typically yields 15-25% savings over individual agreements — for $200K of combined spend, that's $30-50K of savings for one conversation
- HITL required: vendor rationalization plans >$50K in total savings reviewed by entity CEO before implementation; vendor cancellations affecting critical business functions require entity CEO approval; Allevio BAA vendor additions/removals require Dr. Lewis + Allevio Privacy Officer review; portfolio-level vendor negotiations conducted by Dr. Lewis with Matt Mathison awareness; any vendor contract >$100K/year requires Dr. Lewis approval at renewal; Covercy (HIVE) relationship issues flagged to Matt Mathison directly

## System Dependencies
- **Reads from:** Bill.com (all vendor payment history by entity — the definitive source for AP payments); QuickBooks by entity (vendor ledger and category coding); vendor contracts (SharePoint — renewal dates; terms; notice periods)
- **Writes to:** Vendor spend analysis reports (SharePoint → Finance → [Entity] → VendorSpend → [YYYY]); renewal calendar (SharePoint → Finance → [Entity] → Contracts → RenewalCalendar); fin-cost-reduction-planner (vendor rationalization opportunities); fin-budget-builder (budget inputs for vendor categories); exec-cfo-oversight (vendor concentration flags)
- **HITL Required:** Rationalization plans >$50K → entity CEO review; critical vendor cancellations → entity CEO approval; Allevio BAA vendors → Privacy Officer; portfolio-level negotiations → Dr. Lewis leads, Matt Mathison aware; contracts >$100K/year → Dr. Lewis approval at renewal; HIVE/Covercy issues → Matt Mathison

## Test Cases
1. **Golden path:** Annual MBL portfolio vendor analysis (Q4); pulling TTM spend from Bill.com for all 3 entities; total portfolio OpEx (excluding COGS): $1.48M; top 10 vendors represent 68% of total spend; identified opportunities: (1) 3 duplicate project management tools across entities ($42K total; consolidate to Monday.com which MBL already uses — $28K saving); (2) legal services vendor at Entity A: $95K TTM; renewal in 75 days; market research shows comparable firms at 15-20% lower rate (renegotiate; estimated $15-19K saving); (3) Column6 has 22 of 30 DSP tool seats active (remove 8 unused — $8.4K saving); (4) portfolio-level Microsoft 365 deal negotiated at portfolio volume would save ~$12K vs. entity-level pricing. Total identified: $63K-$67K annualized. THRIVE: all Green (no headcount; vendor renegotiations are arm's-length market-rate conversations).
2. **Edge case:** Discover Allevio is using a cloud storage vendor that does NOT have a signed BAA and is potentially storing member documents → Dr. Lewis: "Stop. This is a HIPAA compliance issue, not a cost analysis issue. If Allevio is storing PHI in a cloud system without a BAA, that's a potential breach incident. Before I continue the vendor analysis, I'm escalating this to the Allevio CEO and Privacy Officer today. The three immediate actions: (1) Determine what data is stored in this vendor's system — is it actually PHI or just administrative documents? (2) If PHI: initiate the breach risk assessment protocol under HIPAA; (3) If non-PHI: get a BAA executed immediately before any PHI is ever routed to this vendor; (4) audit all Allevio cloud vendors for BAA status — this may not be the only one. Matt Mathison is being notified of the potential HIPAA issue today per our protocol."
3. **Adversarial:** Entity CEO is personally friendly with a vendor and resists renegotiating (concerned about the relationship) → Dr. Lewis: "I hear the relationship concern — and I agree that vendor relationships matter. Here's my recommendation: the renegotiation doesn't have to be adversarial. Approach it as a 'we're doing an annual vendor review and want to ensure our partnership is structured for the long term' conversation. The goal is a multi-year commitment in exchange for a better rate — the vendor gets revenue certainty, we get cost certainty. If the vendor is a good partner, they'll respond positively to a transparent conversation about pricing. What I'd avoid: auto-renewing at the current price without having the conversation, because that's leaving money on the table out of social discomfort. If after the conversation the vendor won't move, we have the data. If they move 10-15%, the relationship is stronger because you negotiated in good faith."

## Audit Log
All vendor spend analysis reports retained annually. Renegotiation records retained (outcome + new terms). Renewal calendar maintained and updated. Duplicate vendor rationalization records. Portfolio-level negotiation records. HIPAA BAA vendor audit records (Allevio — permanent retention). Vendor concentration flag records.

## Deprecation
Retire when each entity has a dedicated Finance or Operations Manager who maintains the vendor spend analysis and renewal calendar — with Dr. Lewis providing portfolio-level oversight and Matt Mathison retaining awareness of critical vendor concentration risks.
