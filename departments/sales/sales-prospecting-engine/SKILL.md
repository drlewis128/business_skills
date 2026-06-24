---
name: sales-prospecting-engine
description: "Build and run prospecting programs for MBL portfolio company sales teams. Use when the user says 'prospecting', 'prospect list', 'prospect database', 'build a prospect list', 'find prospects', 'find leads', 'lead generation', 'lead list', 'pipeline building', 'top of funnel', 'TOFU', 'outbound prospecting', 'outbound sales', 'outbound program', 'cold prospecting', 'cold list', 'target list', 'account list', 'target account list', 'TAL', 'prospecting strategy', 'prospecting cadence', 'prospecting volume', 'how many prospects', 'daily prospecting', 'weekly prospecting', 'prospecting KPIs', 'prospecting metrics', 'pipeline coverage', 'new pipeline', 'building pipeline', 'employer list', 'agency list', 'finding employers', 'finding agencies', 'Allevio prospecting', 'Column6 prospecting', 'HIVE prospecting', 'LinkedIn prospecting', 'email prospecting', 'phone prospecting', 'data source', 'prospect data', 'Apollo', 'ZoomInfo', 'LinkedIn Sales Navigator', or 'list building'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--channel <email|phone|linkedin|multi>] [--action <build-list|audit|analyze>]"
---

# Sales Prospecting Engine

Build and run prospecting programs for MBL portfolio company sales teams — defining ICP-matched prospect lists, sourcing data, and establishing prospecting volume targets that create sufficient pipeline coverage for entity revenue goals. Prospecting is a math problem before it is a skill problem: insufficient volume of ICP-fit prospects means quota miss regardless of rep quality.

## When to Use
- Building a new prospect list for Allevio, Column6, or HIVE
- Setting prospecting volume targets for sales reps
- Auditing whether top-of-funnel activity is sufficient for pipeline coverage
- Choosing data sources for prospect research

## Prospecting Framework

```
PROSPECTING MATH (pipeline coverage model):
  Required: determine monthly SQL target → work backward to prospecting volume needed
  
  Allevio example:
    Monthly revenue target: $X in new PMPM contracts
    Avg deal size: $8,500 PMPM/month (140 employees × $60 PMPM)
    Deals needed/month: [target ÷ avg deal size]
    Close rate (stage 1 → won): 18% (historical benchmark)
    SQL (qualified opps) needed: deals ÷ close rate
    MQL → SQL conversion: 35% (leads that become qualified)
    MQL needed: SQLs ÷ 0.35
    Prospect → MQL conversion: 8% (outreach → response → meeting)
    Prospects needed/month: MQLs ÷ 0.08
    
  Rule of thumb: 3× pipeline coverage ratio (always maintain 3× your monthly quota in pipeline)
  If monthly quota = $85K new PMPM, maintain $255K of open opportunities
  
PROSPECT DATA SOURCES (by entity):

  ALLEVIO (employer targets):
    Primary: LinkedIn Sales Navigator (filter: company size 75-500; Arizona; industry)
    Secondary: Arizona Chamber of Commerce member directory; SHRM AZ chapter; local business journals
    GHL import: enriched contact data → employer companies + HR Director contacts
    Verification: employee count (LinkedIn; company website); self-insured signal (benefits broker conversations)
    Enrichment: D&B or Apollo for revenue + employee count verification
    
  COLUMN6 (agency targets):
    Primary: LinkedIn Sales Navigator (filter: Media Agency; US; company size 10-200 employees)
    Secondary: IAB member directory; industry conference attendee lists (where permissible)
    Qualification signal: agency website shows CTV / programmatic capabilities; client roster includes CTV-spending brands
    GHL import: agency + media buyer contacts
    Enrichment: agency's own published work (case studies; client lists) to verify CTV focus
    
  HIVE (acquisition targets):
    Primary: county recorder records (Uinta Basin mineral deed filings; royalty interest transfers)
    Secondary: O&G landman networks; broker relationships; estate attorneys in UT
    Approach: outbound letter to mineral rights holders (county recorder address); relationship-based (not mass email)
    GHL: log all contacts; pipeline stage for each parcel/owner
    
PROSPECTING VOLUME STANDARDS:
  Allevio AE: 15 new prospects contacted/week; 20 outreach emails/week; 4 new meetings booked/week
  Column6 AE: 10 new agencies contacted/week; 15 outreach touches/week; 5 new meetings booked/week
  Activity logged in GHL within 24 hours (no exceptions)
  Prospecting hours: minimum 2 hours/day dedicated prospecting time (no meetings before 10am on Tuesdays)
  
PROSPECTING CHANNELS:
  Email (primary outbound): see sales-outreach-sequencer for sequence design
  LinkedIn: connection request + message sequence; LinkedIn Sales Navigator for list building
  Phone: cold call after 2 unanswered emails; call timing 8-9am or 4-5pm local
  Referral: see sales-referral-program
  Events: conference and local chamber attendance; see mktg-event-marketer
  
DATA HYGIENE:
  GHL: all prospects entered with company + role + source + ICP tier before first outreach
  Duplicates: search GHL before adding any prospect (no duplicate contacts in CRM)
  Stale prospects: no activity in 60 days → move to Nurture stage or archive (not delete)
  HIPAA: no health-related data in GHL for Allevio employer contacts (employer name; HR contact only)
```

## Output Format

```markdown
# Prospecting Plan — [Entity] | [Month/Quarter]
**Rep:** [Name] | **Quota:** [$X] | **Pipeline coverage needed:** [$X (3×)]

---

## Prospecting Volume Targets
| Metric | Weekly Target | Monthly Target | Current Rate |
|--------|-------------|---------------|-------------|
| New prospects added to GHL | [N] | [N] | [N] |
| Outreach touches (email + phone + LI) | [N] | [N] | [N] |
| Responses received | [N] | [N] | [N] |
| Meetings booked | [N] | [N] | [N] |
| SQLs created | [N] | [N] | [N] |

---

## Prospect List Sources This Month
- [Source; how many; ICP tier distribution]

## Pipeline Coverage Status
**Open pipeline:** [$X] | **Target:** [$X (3× quota)] | **Status:** 🟢/🟡/🔴

## Action Required
- [If pipeline coverage <3×: specific prospecting actions to close the gap]
```

## Output Contract
- Pipeline coverage below 3× is a leading indicator of quota miss, not a lagging one — by the time a rep misses quota, the pipeline coverage problem was visible 60-90 days earlier; Dr. Lewis reviews pipeline coverage weekly (not monthly) for each entity; when coverage drops below 2× quota, the response is immediate prospecting intervention (block all non-prospecting time until coverage is restored to 3×); "I have a lot of late-stage deals coming in" is not a valid response to low coverage — late-stage deals close or die, and the rep needs coverage for both outcomes; coverage below 2× triggers entity CEO notification and a corrective action conversation
- Prospect quality beats prospect quantity, but quantity is required — a Tier 1 ICP prospect list of 50 is more valuable than 500 poorly-qualified names; however, 50 Tier 1 prospects is not enough pipeline; the prospecting math requires sufficient volume of ICP-qualified contacts to produce the MQL and SQL rates needed; Dr. Lewis helps reps maintain both dimensions: quality (ICP tier) and quantity (volume targets); when a rep reports "I'm struggling to find prospects," the first step is ICP review (too narrow?) before adjusting targets
- HITL required: new data source activation → Dr. Lewis approves (cost; data quality; GHL integration); prospect list build >500 contacts → Dr. Lewis reviews before import to GHL; HIVE prospecting letters → Dr. Lewis reviews content before sending; prospecting to Allevio employer contacts — employer name/HR contact only (no health signals in GHL); prospecting KPI changes → entity CEO + Dr. Lewis; rep underperformance on prospecting metrics → entity CEO briefed after 2 consecutive weeks below target

## System Dependencies
- **Reads from:** GoHighLevel (existing contacts; duplicates; pipeline; ICP tier fields); LinkedIn Sales Navigator (prospect research and list building); Apollo/ZoomInfo (enrichment and verification); IAB/SHRM/Chamber directories; county recorder records (HIVE); ICP definition (sales-icp-builder); pipeline coverage model (revops-pipeline-health-monitor)
- **Writes to:** GoHighLevel (new contacts; company records; source field; ICP tier; stage); prospecting plan (SharePoint → [Entity] → Sales → Prospecting → [Month]); prospecting activity log; pipeline coverage report; data source records (cost; usage; quality)
- **HITL Required:** New data source → Dr. Lewis approves; large list import → Dr. Lewis reviews; HIVE letters → Dr. Lewis reviews; pipeline coverage <2× → entity CEO; rep underperformance → entity CEO after 2 weeks; Allevio contacts: employer + HR role only (no health data)

## Test Cases
1. **Golden path:** Allevio Q3 prospecting plan. Quota: $85K new PMPM/month. Coverage needed: $255K. Current open pipeline: $180K (2.1× — Yellow). Gap: $75K needed. Prospecting math: need 3 more SQLs this month; need 9 more MQLs (35% SQL rate); need 113 more prospect touches (8% response rate). Action: add 25 Tier 1 employers to GHL from LinkedIn Sales Navigator (AZ; 100-300 employees; self-insured signals); run 5-touch email + LinkedIn sequence; prioritize 10am Tuesday calling block. In 3 weeks: 18 responses; 7 meetings; 3 additional SQLs created. Pipeline coverage: $230K (2.7× — improving). Continue prospecting plan; add 15 more prospects from Chamber directory.
2. **Edge case:** Column6 rep built a prospect list of 400 agencies in the US but none are AZ-based and most are brand-side (not agency). Pipeline coverage appears high but ICP quality is poor → Dr. Lewis: "The pipeline quantity looks right but the quality is wrong. We've got 400 contacts but 60% are brand-direct (negative ICP for Column6) and none are in our core markets. The prospecting math requires ICP-qualified prospects — not any company. Actions: (1) Re-tier the GHL pipeline — any brand-direct contact moves to 'Archive / Not ICP'; (2) The 160 agency contacts that remain: re-verify CTV capability (website check; LinkedIn); remove any without CTV practice; (3) Rebuild with 100 Tier 1 agencies from IAB member directory and LinkedIn (filter: media agency; CTV in capabilities). Better to have 150 quality prospects than 400 noise contacts that dilute our pipeline metrics."
3. **Adversarial:** Rep asks to buy a mass email list of 10,000 healthcare brokers to blast Allevio's messaging → Dr. Lewis: "That approach has three problems: (1) CAN-SPAM compliance — commercial email to purchased lists requires proper opt-out and sender ID; we need to verify the list vendor's compliance practices; (2) Data quality — purchased healthcare broker lists are often outdated and low-quality; response rates on blasted purchased lists average <0.5% vs. 3-8% on targeted outreach; (3) Brand risk — mass unsolicited email from Allevio in the healthcare space can create negative first impressions in a market where Allevio needs to be seen as a trusted clinical partner. Recommended approach: build a targeted list of 150-200 AZ brokers from SHRM and Chamber directories + LinkedIn; run a personalized 5-touch sequence. That's 10× the conversion rate at 2% of the volume. I'll help design the broker channel program."

## Audit Log
Prospecting plan records (monthly; by entity; SharePoint). Prospecting activity logs (GHL). Pipeline coverage reports (weekly; entity CEO view). Data source records (vendor; cost; quality rating; GHL import records). Rep prospecting performance records. Pipeline coverage intervention records. HIVE prospect letter records (content; recipients; responses). Data import records (large imports; Dr. Lewis approval).

## Deprecation
Prospecting volume targets reviewed quarterly against conversion rates. Data sources reviewed annually (cost vs. quality). ICP criteria changes cascade to prospecting criteria. HIVE prospecting approach reviewed when Uinta Basin market conditions change. Email prospecting approach reviewed when CAN-SPAM or state email law changes.
