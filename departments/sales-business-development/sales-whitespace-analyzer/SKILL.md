---
name: sales-whitespace-analyzer
description: "Identify expansion and whitespace opportunities within existing customer accounts for MBL portfolio companies. Use when the user says 'whitespace', 'account whitespace', 'expansion opportunity', 'upsell opportunity', 'cross-sell opportunity', 'grow the account', 'what else can we sell', 'account expansion', 'expand the relationship', 'additional revenue from existing customers', 'where can we grow', 'identify upsell', 'net revenue retention', 'NRR', 'upsell analysis', 'cross-sell analysis', 'account growth', 'expand into', 'more services', 'additional products', or 'untapped potential in accounts'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--action <analyze|prioritize|plan>] [--timeframe <this-quarter|next-quarter|annual>]"
---

# Whitespace Analyzer

Identify expansion and upsell opportunities within existing customer accounts for MBL portfolio companies — finding revenue that is already within the relationship but not yet captured. Expanding an existing customer costs 5-7× less than acquiring a new one; a customer who buys more has stronger retention; and the whitespace conversation is significantly easier than a new sales conversation. Dr. Lewis identifies whitespace systematically, not opportunistically.

## When to Use
- Quarterly account review (what whitespace exists across all accounts?)
- Before a QBR (what upsell opportunities can we introduce at this review?)
- Account health is Green and the customer is satisfied (ready for the expansion conversation)
- A customer adds headcount or opens a new location (natural expansion signal)

## Whitespace Analysis Framework

```
WHITESPACE DIMENSIONS — WHAT TO LOOK FOR:

  1. VOLUME EXPANSION (same product; more of it):
     Allevio: Employer group grows from 100 to 150 employees → 50 additional PMPM slots
       Current ACV: 100 × $85 × 12 = $102,000
       Expansion ACV: 150 × $85 × 12 = $153,000
       Whitespace: $51,000/year
       Signal: HR Director mentions they're hiring; company is growing
     Column6: Agency books one campaign; whitespace is repeat campaigns or larger IO
       Current IO: $80K/quarter; whitespace: expand to $120K/quarter or add a second campaign category
     HIVE: Landowner has mineral rights on 200 acres in the lease area; neighboring parcel is unleasable
       → HIVE can't expand here; document as covered; move to the next landowner
       
  2. PRODUCT/SERVICE EXPANSION (adjacent product; same customer):
     Allevio: Add wellness program; dental/vision; EAP (Employee Assistance Program)
       Trigger: HR Director mentions employees asking about wellness benefits
       Expansion revenue: Wellness program adds $12-18/PMPM additional
     Column6: Add programmatic display alongside CTV campaign
       Trigger: Agency asks about reaching audiences that don't consume CTV
       Expansion revenue: $0.50-1.50 CPM additional on programmatic overlay
     HIVE: Landowner has surface rights in addition to mineral rights
       → Surface use agreement for HIVE's operations; additional per-acre payment
       
  3. GEOGRAPHY/LOCATION EXPANSION (same product; new location):
     Allevio: Employer group has a second location in Tucson → Expand Allevio to that location
       Trigger: HR Director mentions opening a second office
       Expansion: New member count adds to total ACV
     Column6: Agency runs in one DMA; whitespace in adjacent markets
       Trigger: Agency client launches in a new city
       
  4. CONTRACT EXTENSION (same product; longer term):
     Not technically whitespace (revenue is already in the contract) but extends the
     relationship security
     Allevio: 1-year contract → offer 2-year renewal with a 2% discount
       ACV impact: Locked in revenue for another year; higher confidence in GRR
     Column6: Quarterly IO → annual upfront commitment with a volume discount

WHITESPACE PRIORITIZATION:
  Rank expansion opportunities by:
    1. Customer health score: Green only (Yellow or Red = fix the issue first)
    2. Revenue potential: Higher potential first
    3. Timing: Is there a natural conversation opener? (hiring news; new location; new campaign)
    4. Relationship depth: Strong relationship with the champion = easier conversation
    
EXPANSION CONVERSATION TIMING:
  Best moments to introduce expansion:
    □ After a positive QBR (customer is in a good headspace about the relationship)
    □ When the customer surfaces a relevant need (they mention wellness; they mention a new DMA)
    □ At renewal (expand the scope at the same time as the renewal conversation)
  NOT: In the middle of an unresolved service issue; in the first 3 months of the relationship;
    as the first topic in a QBR (data first; then expansion)
```

## Output Format

```markdown
# Whitespace Analysis — [Account Name] | [Entity]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Account health:** 🟢 Green

---

## Current State

**Account:** [Company] | **Current ACV:** $[X]K | **Contract term:** [Date to Date]
**Products/services:** [Allevio employer group plan — 145 members; $85 PMPM]

---

## Whitespace Opportunities

| Opportunity | Type | Revenue potential | Signal | Priority | Best timing |
|------------|------|-----------------|--------|---------|-------------|
| +35 new employees (hiring) | Volume expansion | +$35.7K ACV | HR Director mentioned Q3 hiring | High | Next call |
| Wellness program add-on | Product expansion | +$16-24K ACV | Asked about wellness in QBR | Medium | Q4 QBR |
| 2-year renewal vs. 1-year | Contract extension | Lock-in; no ACV increase | Renewal in 5 months | High | Q3 QBR |

---

## Total Whitespace Potential

**Additional annual revenue available:** $[X]K
**% increase to current ACV:** [X]%

---

## Expansion Conversation Plan

**When:** [Q3 QBR — August 15]
**Agenda position:** Section 4 (Looking Ahead) — after performance data is presented
**Lead with:** [The hiring news — "I saw you've posted 35 new positions — when do you expect those to start?"]
**Transition to wellness:** [After confirming the hiring: "We also have a wellness add-on that several of our clients are asking about — worth 2 minutes?"]
```

## Output Contract
- Only expand into Green accounts — an expansion conversation with an at-risk customer is a sales pitch to someone who is already frustrated; it damages the relationship and rarely succeeds; Dr. Lewis requires that the account health score be Green before any expansion conversation is introduced; if an account is Yellow, fix the issue first, then revisit the whitespace in 60 days
- The expansion conversation follows the data — the QBR is structured to present performance data before introducing expansion opportunities; a customer who has just seen their claim ratio improve and their savings validated is in a much better position to hear about a wellness add-on than a customer who is being pitched before seeing any value data; Dr. Lewis positions every whitespace opportunity as "based on what we've built together, here's what's natural to consider next"
- Volume expansion is the easiest upsell — when a customer adds employees, the PMPM stays the same and the ACV grows automatically; Dr. Lewis tracks hiring signals from all active Allevio accounts (LinkedIn job postings; HR Director mentions in calls; company news) and surfaces them to the rep immediately; the volume expansion conversation is not a sales conversation — it is an administrative update ("I noticed you're hiring — are the new employees being added to the plan?")
- HITL required: Rep identifies signals and surfaces whitespace to Dr. Lewis; Dr. Lewis confirms the health score is Green before the expansion conversation is approved; CEO approves any expansion that involves new pricing structures or service additions not already in the approved product catalog; Matt Mathison is informed of significant expansion opportunities (>$50K ACV increase); Dr. Lewis does not approach a customer about expansion without the rep's awareness and consent (the rep owns the relationship)

## System Dependencies
- **Reads from:** Account health scores (sales-account-plan — Green required); member count or campaign reports (Allevio AdvancedMD — member trend; Column6 campaign delivery); QBR notes (sales-qbr-framework — what did the customer say about their plans?); hiring signals (LinkedIn company page; Google news alerts; HR Director comments in calls); CRM account notes (GoHighLevel — any expansion signals logged?); sales-renewal-manager (is the renewal approaching? bundle the expansion with the renewal?)
- **Writes to:** Account expansion pipeline (sales-pipeline-manager — whitespace opportunities are pipeline entries with a separate "Expansion" deal type); QBR agenda Section 4 (sales-qbr-framework — expansion opportunities scheduled for the QBR); CRM expansion opportunity record (GoHighLevel — opportunity type: Expansion; revenue: $X; timing; signal); sales-kpi-dashboard (expansion pipeline; NRR calculation — does total ARR from existing customers grow >100%?); Matt Mathison NRR report (quarterly — are we growing revenue in our existing accounts?)
- **HITL Required:** Rep surfaces signals and pursues the conversation; Dr. Lewis approves the expansion conversation after confirming Green health status; CEO approves new service additions or pricing structures; Matt Mathison informed of large expansions (>$50K); Dr. Lewis does not approve expansion conversations for Yellow or Red accounts; CEO must approve any discount offered to incentivize an expansion commitment

## Test Cases
1. **Golden path:** Quarterly whitespace review for Allevio — 18 active employer groups → Dr. Lewis reviews: 5 have Green health scores and active hiring signals (LinkedIn job postings); 2 have mentioned wellness initiatives in QBRs; 3 are approaching their 1-year mark and are candidates for a 2-year renewal conversation; Whitespace map: 5 volume expansions (avg +25 employees each = avg +$25.5K ACV each = $127.5K total); 2 wellness add-ons ($16-24K each = $36K potential); 3 renewal extensions (no immediate ACV increase; churn protection); rep prioritized: calls the 5 hiring accounts first to confirm new employee additions to the plan; 4 of 5 confirm the additions; $100K in expansion ACV added within 30 days
2. **Edge case:** An Allevio employer group HR Director mentions at a QBR that they're opening a Tucson office with 40 employees but Allevio doesn't currently have strong coverage in the Tucson provider network for their employees' healthcare needs → Dr. Lewis: "This is an expansion opportunity but also a service delivery risk. Before we commit to expanding to Tucson, we need to verify the network depth. Let me pull our Pima County provider count for the zip codes near their Tucson office before we promise anything. If the network is strong enough: this is a $40.8K ACV expansion ($85 × 40 × 12). If the network is thin: I need to be honest with the HR Director that we'd need to supplement with a supplemental coverage option. I'll have an answer within 2 business days." Network reviewed; coverage confirmed adequate; expansion committed; $40.8K ACV added at renewal
3. **Adversarial:** A sales rep approaches a Yellow-health Allevio account (unresolved billing dispute) about a wellness program add-on without Dr. Lewis's approval → Dr. Lewis: "The wellness pitch to this account needs to stop immediately. This account is Yellow — there's an unresolved billing dispute from last month. Pitching an add-on product to a customer who is currently frustrated with a billing problem sends the message that we're focused on selling rather than solving their issue. This could accelerate churn. Stop the expansion conversation; resolve the billing issue first; wait for the health score to return to Green; then revisit the wellness pitch in 60 days." Rep corrected; billing dispute resolved in 2 weeks; health returns to Green; wellness conversation restarted successfully

## Audit Log
All whitespace analyses retained by account, entity, and date. Expansion conversation records retained (what was discussed; outcome; expansion pipeline entry). Health score confirmation records retained (confirming Green status before approval). CEO approvals for new service additions retained. NRR quarterly reports retained.

## Deprecation
Retire when each portfolio company has a Customer Success Manager who maintains account growth plans and identifies expansion opportunities — with Dr. Lewis reviewing the expansion pipeline quarterly and Matt Mathison receiving the NRR summary monthly.
