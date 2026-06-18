---
name: sales-bd-deal-sourcer
description: "Source and originate new business development deals for MBL portfolio companies. Use when the user says 'business development', 'BD', 'deal sourcing', 'find deals', 'new deals', 'find prospects', 'deal origination', 'how to find new business', 'new business pipeline', 'new opportunities', 'BD pipeline', 'find new clients', 'build a pipeline from scratch', 'greenfield', 'no pipeline', 'how to generate leads', 'lead generation', 'top of funnel', 'build top of funnel', 'generate pipeline', 'pipeline generation', 'sourcing strategy', 'prospect list', 'target list', or 'who should we be talking to'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--segment <employer-group|agency|mineral-rights>] [--action <build-list|prioritize|source|report>] [--volume <N leads needed>]"
---

# BD Deal Sourcer

Source and originate new business development deals for MBL portfolio companies — building target account lists, identifying qualified prospects, and generating the top-of-funnel pipeline that feeds the sales machine. A rep with no pipeline has no deals to close; BD sourcing is where the pipeline begins. Dr. Lewis builds sourcing strategies from specific data sources, not from generic "do more outreach" directives.

## When to Use
- Pipeline coverage falls below 3× (need more top of funnel urgently)
- Building a new target account list for a rep or territory
- Entering a new geography or segment (where do we find prospects?)
- A rep has called through their existing list and needs a fresh pipeline

## BD Deal Sourcing Framework

```
SOURCING PHILOSOPHY:
  Targeted beats broad: 100 well-researched, scored targets are worth more than
    1,000 names from a generic database; a rep calling scored Priority A leads
    converts at 3-5× the rate of a rep calling random names
    
  Research the signal, not just the contact: The best prospects are those with an
    active need signal (renewal coming up; carrier rate increase; new campaign launching;
    mineral rights in an active development area) — find the signal; then find the contact
    
  Build from data, not guesswork: Use specific data sources (AZ Dept of Labor; LinkedIn;
    DOGM; IAB; industry association lists) — not generic outreach to every company in a ZIP code

SOURCING SOURCES BY ENTITY:

  ALLEVIO (Employer Group Healthcare):
    Primary sources:
      □ Arizona Dept of Labor employer database: Filter by employee count (50-500);
        Maricopa + Pima County; SIC code for professional services + construction
      □ Arizona Commerce Authority business list: New businesses that crossed 50-employee threshold
      □ ZoomInfo or similar: ICP-targeted enrichment (HR Director contact; company headcount; industry)
      □ Chamber of commerce membership lists: Scottsdale; Phoenix; Tucson chambers
        (members are often mid-size businesses — good ICP density)
      □ LinkedIn Sales Navigator: "HR Director" title; Arizona location; 50-500 employees; filter by
        companies posting multiple open jobs (growth signal = more employees = expanding)
        
    Secondary sources:
      □ Broker referrals: See sales-referral-program — any broker who refers gets a warm lead already
      □ Customer referrals: HR Directors who refer peers
      □ Industry events: AZ SHRM (Society for Human Resource Management) conferences;
        AZ Business Coalition; chamber events — HR Directors attend
        
    Signal prioritization:
      - Company has posted 5+ jobs in the last 30 days: Growing; likely adding employees; good timing
      - Company is approaching their benefits renewal date (estimate based on fiscal year + hire date)
      - LinkedIn shows the HR Director posted about benefits challenges (rare; but high signal)
      
  COLUMN6 (CTV Advertising — Agency/Brand):
    Primary sources:
      □ IAB member directory: Active agencies and brands in CTV buying
      □ AdAge / Adweek agency ranking lists: Top independent agencies by revenue
      □ Semrush / iSpot.tv / MediaRadar: Companies actively buying CTV in relevant categories
      □ LinkedIn Sales Navigator: "Media Buyer" + "CTV" + "Agency" in title; US-based
      □ Trade show attendee lists: Cannes Lions; Advertising Week; CES (MediaLink events)
        
    Signal prioritization:
      - Agency is posting job descriptions for CTV buyers (building a CTV capability)
      - Brand has been on TV (linear) and is migrating budget to streaming (common transition)
      - Agency has a major client launching in a new market (new campaign = new supply need)
      - Agency just won a new client (announcement on their website = they're in planning mode)
        
  HIVE (Mineral Rights — Uinta Basin):
    Primary sources:
      □ County assessor records (Uinta County; Duchesne County): Mineral rights ownership by parcel
      □ DOGM production data: Which parcels are producing? Which are undeveloped?
      □ BLM records: Federal land status; private mineral rights identification
      □ Title company contacts: Landmen and title companies who know the Basin
      □ Community networks: Local landowner associations; water rights meetings; farm bureau
        
    Signal prioritization:
      - Landowner with mineral rights in HIVE's primary development area (top priority by definition)
      - Landowner who attended an industry meeting recently (signal of awareness)
      - Landowner whose neighboring parcel is being actively developed (increases urgency to lease now)

TARGET LIST CONSTRUCTION:
  Step 1: Pull names from primary sources
  Step 2: Filter against ICP criteria (disqualify below-ICP names at this stage)
  Step 3: Enrich with contact information (decision-maker name; title; email; phone)
  Step 4: Score using the lead scoring framework (sales-lead-scoring)
  Step 5: Segment into Priority A/B/C/D
  Step 6: Upload to GoHighLevel CRM; assign to rep; begin outreach sequence
  
TARGET LIST QUALITY STANDARD:
  Minimum: 3 contacts per account (HR Director; CFO or CEO; a champion if identifiable)
  Required fields: Company; contact name; title; email; phone; last funding or renewal signal; ICP score
  Freshness: Lists should be no more than 6 months old; re-research before use
  Volume: Each rep needs 200-300 active prospects in their territory to sustain a 3× pipeline coverage
```

## Output Format

```markdown
# BD Deal Sourcing Report — [Entity] | [Date]
**Prepared by:** Dr. Lewis | **Rep territory:** [West Valley Maricopa / Column6 Tier 2]
**List goal:** [N] qualified leads | **Delivery date:** [Date]

---

## Sources Used

| Source | Leads pulled | Disqualified (ICP filter) | Net qualified | Avg ICP score |
|--------|-------------|--------------------------|--------------|--------------|
| AZ Dept of Labor (50-500 EE; Maricopa) | [N] | [N] | [N] | [X]/30 |
| ZoomInfo (HR Director; AZ; 50-500 EE) | [N] | [N] | [N] | [X]/30 |
| Chamber of commerce lists | [N] | [N] | [N] | [X]/30 |

---

## Priority Distribution

| Priority tier | Count | % of list |
|--------------|-------|----------|
| A (25-30 points) | [N] | [X]% |
| B (18-24 points) | [N] | [X]% |
| C (10-17 points) | [N] | [X]% |
| D (<10 points) | [N] | [X]% |

---

## Pipeline Impact

**Current pipeline coverage:** [X]× | **After this list is worked:** Est. [X]× (at historical connect rate)
**Priority A leads to call first:** [Top 5 accounts by score, with signal]
```

## Output Contract
- Research the prospect before adding them to the list — a contact with no research is just a name; a contact where the researcher knows "this 180-employee Scottsdale engineering firm has 8 open positions and their CFO posted on LinkedIn about rising benefits costs last month" is a lead; Dr. Lewis builds lists that include the signal that makes each prospect a priority target; generic names from a database without a research layer produce low connect rates and wasted rep time
- ICP filter is applied at list construction, not at the call — a rep who calls through 200 names only to find 60 of them are below the ICP minimum has wasted 60 calls; Dr. Lewis applies the ICP filter at the list construction stage; every name on the final list has been verified against the ICP criteria before the rep sees it
- Volume supports consistency — the rule of 200-300 active prospects per rep is not arbitrary; at a 10-15% connect rate and a 15-20% connect-to-meeting conversion, a rep with 200 active prospects can sustain 3-4 meetings per week from outreach alone; below 200, the pipeline dries up; Dr. Lewis monitors the active prospect count in CRM and initiates list refresh when the count drops below 150
- HITL required: Dr. Lewis builds and scores the lists; CEO reviews the top Priority A accounts (any with >$200K potential is reviewed before outreach begins); rep uses the list in priority order; Matt Mathison is not involved in individual list construction; Dr. Lewis does not provide lists without ICP scoring applied; Dr. Lewis does not let a rep outreach from an unscored list (wastes their time and the company's credibility)

## System Dependencies
- **Reads from:** ICP criteria (sales-ideal-customer-profile — who qualifies); lead scoring model (sales-lead-scoring — apply to every name before it goes to the rep); ZoomInfo (contact enrichment); AZ Dept of Labor (employer data); county assessor records (HIVE); IAB member directory (Column6); LinkedIn Sales Navigator; GoHighLevel CRM (what accounts are already in CRM? — don't duplicate)
- **Writes to:** Target account list (SharePoint/Sales/<Company>/Prospects/ScoredList_[Date].xlsx); GoHighLevel CRM (all new contacts added with ICP score and priority tier; assigned to rep; enrolled in outreach sequence); sales-pipeline-manager (Priority A leads entered as active pipeline opportunities); sales-kpi-dashboard (new leads added this month; lead source quality by source)
- **HITL Required:** Dr. Lewis builds and scores; CEO reviews Priority A accounts >$200K before outreach; rep uses the list in priority order; lists are internal — not shared with external parties; any list purchased from a third-party vendor must have a data agreement in place reviewed by Dr. Lewis (privacy and CAN-SPAM compliance); Dr. Lewis does not add accounts to the CRM that haven't been ICP-scored; all lists older than 6 months are re-researched before being given to a rep

## Test Cases
1. **Golden path:** Rep A's West Valley pipeline has dropped to 1.8× coverage — Dr. Lewis builds a fresh list → Pulls: 450 AZ Dept of Labor records (50-500 EE; West Valley ZIP codes); filters for professional services + construction (ICP industries): 280 remain; runs ZoomInfo enrichment for HR Director contacts: 245 with valid HR Director email; applies ICP scoring; Priority A: 28 accounts (signal: active hiring; construction sector; likely upcoming renewal); Priority B: 87 accounts; Priority C: 130; Priority D: 0 (already filtered); uploads all 245 to CRM with scores; rep is given a sorted call list: "Start with these 28 Priority A accounts this week"; in 3 weeks, 12 Priority A accounts have connected; 4 have scheduled discovery calls; pipeline coverage grows from 1.8× to 2.6×
2. **Edge case:** A Column6 rep reports that their outreach list is "stale" — they've contacted everyone on it and conversion has dropped → Dr. Lewis: "If the list is stale, we have two options: (1) Expand the universe — are there agency tiers or categories we haven't targeted? (2) Re-research the existing list — 6 months is enough time for media buyer contacts to change; let's re-verify who is still at each agency before giving up. I'll pull a fresh list from AdAge and Adweek's agency ranking data; filter for agencies that have been buying CTV (MediaRadar); and identify which contacts have changed in the last 6 months. This isn't a new list — it's a refreshed list." Rep receives a refreshed list of 85 contacts; 23 have changed buyers since the last research; 4 of the new buyers schedule meetings within 2 weeks
3. **Adversarial:** A rep purchases a third-party list from a vendor without Dr. Lewis's knowledge and begins calling from it → Dr. Lewis: "Purchased lists require a data agreement that confirms the contacts opted in to B2B marketing outreach — without this, we may have CAN-SPAM and state privacy law compliance issues (Arizona; California if any contacts are there). Stop using the purchased list immediately. I'll review the vendor agreement — if it's CAN-SPAM compliant, I'll approve it; if not, we'll dispose of the list properly. In the future, any list purchase requires Dr. Lewis approval before the list is used. The ICP score still needs to be applied to any external list before a rep touches it." List reviewed; vendor agreement adequate for CAN-SPAM; list scored and approved; rep continues with scored version

## Audit Log
All target lists retained by entity, rep, and date with ICP scores. Source records retained (where each contact was pulled from). CAN-SPAM compliance records for purchased lists. CEO Priority A account reviews retained. List refresh records retained. Lead conversion by source tracked monthly.

## Deprecation
Retire when each portfolio company has a dedicated SDR or Sales Operations role who owns list building and pipeline generation — with Dr. Lewis reviewing the sourcing strategy quarterly and the CEO reviewing the Priority A account list monthly.
