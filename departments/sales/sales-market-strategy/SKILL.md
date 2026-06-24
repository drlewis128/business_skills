---
name: sales-market-strategy
description: "Build go-to-market sales strategy for MBL portfolio companies. Use when the user says 'go-to-market', 'GTM', 'GTM strategy', 'go to market strategy', 'sales strategy', 'market strategy', 'market entry', 'enter new market', 'expand into market', 'sales plan', 'annual sales plan', 'revenue plan', 'revenue strategy', 'growth strategy', 'sales growth', 'how do we grow', 'growth plan', 'expansion plan', 'market expansion', 'market penetration', 'penetrate the market', 'how do we sell this', 'build a sales motion', 'sales motion', 'sales playbook', 'sales model', 'revenue model', 'sales coverage', 'market coverage', 'coverage model', 'where should we sell', 'who should we target', 'target market', 'target segment', 'segment strategy', 'channel strategy', 'distribution strategy', 'sales channel', 'direct sales', 'indirect sales', 'partner strategy', 'broker strategy', 'channel partner', 'market sizing', 'TAM', 'SAM', 'SOM', 'total addressable market', 'serviceable addressable market', 'serviceable obtainable market', 'competitive positioning', 'market positioning', 'sales positioning', or 'Allevio GTM', 'Column6 GTM', 'HIVE GTM'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--horizon <quarterly|annual|3-year>] [--focus <entry|growth|expansion|channel>]"
---

# Sales Market Strategy

Build go-to-market sales strategy for MBL portfolio companies — defining the entity's target market, sales motion, channel mix, and revenue plan so the sales team knows who to sell to, how to reach them, and what success looks like. Strategy without execution is a document; execution without strategy is noise. The GTM is the bridge between the two.

## When to Use
- Building the annual sales plan for an entity
- Defining a new market entry or expansion strategy
- Reviewing and updating GTM as market conditions change
- Aligning the sales team on the entity's priority segments and motion

## GTM Strategy Framework

```
GTM COMPONENTS (for each entity):
  1. Target market definition (who)
  2. Sales motion (how)
  3. Channel mix (direct; indirect; partner)
  4. Revenue model (what success looks like)
  5. Capacity model (who does it)
  6. Coverage plan (where)
  
ALLEVIO GTM:

  Target market:
    Primary: self-insured employers; 75-500 employees; AZ geography (expanding regionally)
    Secondary: partially self-insured employers; benefits consultants/brokers managing ICP employers
    ICP detail: see sales-icp-builder
    
  Sales motion:
    Direct: AE-led outbound + inbound from broker referrals
    Relationship: benefits broker channel (sales-allevio-broker-channel)
    Key insight: ~80% of employer benefits decisions in the target segment involve a broker —
      the broker channel is NOT optional; it amplifies direct sales, not replaces it
    Cycle length: 60-90 days (benefits renewal-driven)
    
  Revenue model:
    PMPM × enrolled employees × 12 months = ACV
    New logo target: entity CEO sets annually (quota flows from revenue plan)
    Renewal: 12-month contract; renewal rate target set by entity CEO
    
  Market sizing (AZ primary):
    AZ employers 75-500 employees: approximately [N] (entity CEO maintains current data)
    Self-insured subset: approximately 35-40% of employer population at that size
    Serviceable: [N] employers in AZ ICP × PMPM × avg employee count = TAM
    
  Coverage:
    Territory: AZ geography-based (rep coverage by metro area); see sales-territory-planner
    Pipeline rule: ≥3× monthly quota in open pipeline at all times
    <2× coverage → entity CEO notified same day
    
  Competitive positioning:
    Primary alternatives: status quo (fully insured); telemedicine-only solutions
    Allevio's differentiation: primary care (not just urgent care) + employer cost trend reduction
    Win theme: "We solve the cost trend problem; telemedicine-only solutions solve the access problem
                 but not the downstream cost problem"
    
COLUMN6 GTM:

  Target market:
    Primary: media agencies with active CTV budgets ≥$100K/quarter
    Agency tier model: Tier 1 ($1M+/year); Tier 2 ($250K-1M); Tier 3 ($100K-250K or new)
    Geography: national (no geographic boundary)
    Vertical: all verticals; strong focus on retail/auto/entertainment/CPG
    ICP detail: see sales-icp-builder
    
  Sales motion:
    Direct: AE-led outbound to agency media buyers + VP media
    Relationship: conference-based (upFront; Digiday; industry events)
    Key insight: the media buyer is the champion; the VP Media is the economic buyer;
      the AE who only knows the media buyer doesn't control the relationship
    Cycle: 30-60 days (campaign-driven; IO can close in days once trust is established)
    Repeat IO rate target: ≥60% of clients run a second IO within 90 days
    
  Revenue model:
    CPM × impressions = IO value
    New agency acquisition: entity CEO sets annual new logo target
    Repeat revenue: IO repeat rate tracks relationship health
    Gross margin: ≥35% on every IO
    
  Market sizing:
    Total US CTV ad spend: [external industry data]; Column6's addressable portion: [entity CEO]
    Target agency count: [entity CEO maintains]
    
  Coverage:
    National; no geographic territory model (agency-based coverage)
    Agency tier drives rep priority: Tier 1 agencies get senior AE; Tier 3 is prospecting
    
  Competitive positioning:
    Primary alternatives: DSPs; open exchange; direct publisher relationships
    Column6's differentiation: IVT quality + delivery guarantee + white-glove service
    Win theme: "You're paying CPM for impressions that never reached a viewer — Column6 guarantees
                 what you're actually buying; and we prove it with measured IVT"
    
HIVE GTM:

  Target market:
    Producing royalty interest owners; ORRI holders; mineral rights heirs in the Uinta Basin, UT
    Key acquisition sources: county recorder (Duchesne/Uinta County), broker/landman network, estate network
    Not a traditional "sales" motion — acquisition outreach + relationship-based
    
  Acquisition motion:
    Source: county recorder research (sales-hive-deal-sourcer)
    Outreach: formal letter (sales-outreach-sequencer adapted for HIVE)
    LOI: Matt Mathison approves all LOIs; WTI trigger governs timing
    Deal desk: Matt Mathison reviews all HIVE deals
    
  Revenue model:
    HIVE does not have "revenue" in the traditional sense — it generates LP returns via royalty income
    Acquisition = capital deployment; return = royalty revenue over time
    LP return reporting: Covercy (sales-hive-lp-relations)
    
GTM PLANNING CALENDAR:
  Q4: Annual plan (entity CEO + Dr. Lewis + Matt Mathison; revenue target for next year)
  Q1: Quota assignment; territory coverage; channel activation
  Q2: Mid-year pipeline review; coverage assessment
  Q3: Annual plan prep begins; Matt Mathison annual briefing
  
SALES STRATEGY PRINCIPLES (MBL-wide):
  Build at MBL first → roll to portfolio (validate at MBL before scaling to portfolio companies)
  Orchestration, not replacement (AI coordinates sales tools; doesn't replace reps or GTM judgment)
  Broker/partner channel first (in Allevio; broker reach multiplies direct AE capacity)
  Quality pipeline over quantity (MEDDPICCC-qualified deals only advance; see qualification scorecard)
  Pipeline coverage ≥3× quota at all times (see pipeline review)
```

## Output Format

```markdown
# GTM Strategy — [Entity] | [Period] | [Date]
**Owner:** Dr. John Lewis | **Entity CEO reviewed:** [Yes/No] | **Matt Mathison briefed:** [Yes/No]

---

## Target Market
| Segment | Criteria | Priority | Addressable |
|---------|----------|----------|-------------|
| Primary | [ICP definition] | High | [N accounts / $X TAM] |
| Secondary | [ICP definition] | Medium | [N accounts] |

---

## Sales Motion
**Motion:** [Direct / Broker / Partner / Conference / Outbound / Inbound]
**Cycle length:** [N days]
**Key insight:** [What makes this motion work for this entity]

---

## Revenue Model
| Metric | Current | Target (EOY) |
|--------|---------|--------------|
| New logos | [N] | [N] |
| ACV per logo | $[X] | $[X] |
| Pipeline coverage | [X×] | ≥3× |

---

## Competitive Positioning
**Primary alternative:** [What the prospect does instead]
**Win theme:** [One sentence: why Column6/Allevio/HIVE wins]
```

## Output Contract
- GTM strategy is reviewed and signed off by entity CEO and Matt Mathison before it becomes the sales team's operating plan — a strategy built without entity CEO input on pricing floors, margin requirements, and pipeline targets is a strategy built on assumptions that may conflict with the entity's business model; Dr. Lewis drafts the GTM framework; entity CEO reviews and refines with current market intelligence; Matt Mathison reviews the annual plan and provides the revenue target from which quota is built; no quota is assigned to reps before Matt Mathison has set the entity revenue target for the year
- Market sizing is honest, not aspirational — a TAM that assumes every employer in AZ who employs 75-500 people is a potential client is not a plan; it's a fantasy; the serviceable addressable market is the subset that fits the ICP with a plausible path to engagement; Dr. Lewis applies the ICP filter to all market sizing: self-insured (40% of target employer size); not already with a competing solution (requires research); reachable via broker or direct channel in the coverage plan; the number that comes out of this analysis is the planning TAM for quota and coverage design — not the headline "we have 10,000 employers we could sell to"
- HITL required: annual revenue target → Matt Mathison sets before entity quota is assigned; annual GTM plan → entity CEO reviews and approves before publication to sales team; territory coverage → entity CEO reviews (see sales-territory-planner); channel strategy (broker) → entity CEO manages broker relationships and fee agreements; HIVE LOI volume and cadence → Matt Mathison determines acquisition pace; WTI trigger governs all HIVE LOI activity; GTM changes mid-year (market pivot; new segment; new channel) → entity CEO + Dr. Lewis decision; >$250K market investment decisions → Matt Mathison involved

## System Dependencies
- **Reads from:** Revenue plan (Matt Mathison annual briefing; entity CEO); ICP definitions (sales-icp-builder); quota model (sales-quota-builder); territory plan (sales-territory-planner); pipeline health (sales-pipeline-review); broker channel performance (Allevio — sales-allevio-broker-channel); competitive intelligence (sales-competitive-playbook); market data (external — industry reports; entity CEO current data)
- **Writes to:** Annual GTM plan document (SharePoint → [Entity] → Sales → Strategy → GTM → [Year]); Matt Mathison annual briefing (revenue target section); entity CEO operating plan (quota; territory; channel); quota assignment (sales-quota-builder input); territory coverage update (sales-territory-planner input)
- **HITL Required:** Revenue target → Matt Mathison sets; annual GTM plan → entity CEO approves; quota assignment → entity CEO and Dr. Lewis; broker channel activation → entity CEO manages; HIVE LOI cadence → Matt Mathison determines; mid-year GTM change → entity CEO + Dr. Lewis decision; market investment >$250K → Matt Mathison

## Test Cases
1. **Golden path:** Q4 annual GTM planning session for Allevio. Matt Mathison sets revenue target for Year 2: [X]% growth over Year 1 ACV. Entity CEO reviews ICP — 75-500 employee, self-insured, AZ — and confirms the market is large enough for the target. Dr. Lewis builds the GTM: (1) Direct AE: 2 reps; 60-day cycle; $[X] quota each; (2) Broker channel: 8-10 active Tier 1 and 2 brokers contributing 40% of deals; (3) Pipeline requirement: 3× quota = $[X] in open pipeline at all times; (4) Coverage: Phoenix metro (Rep 1); Tucson/Southern AZ (Rep 2); broker covers statewide. GTM submitted for entity CEO review. Entity CEO adjusts broker target (only 6 active Tier 1 brokers currently). Matt Mathison reviews final plan. Quota assigned in January. GTM published to sales team.
2. **Edge case:** Column6 wants to expand into a new vertical (healthcare advertising) mid-year. Entity CEO proposes shifting 20% of rep capacity to healthcare agency outreach. Dr. Lewis GTM review: (1) Does Column6 have case studies or proof points for healthcare vertical? (if not, reps have no proof to show); (2) Is there a HIPAA consideration — healthcare advertisers may have PHI in their targeting data; Dr. Lewis and entity CEO need to confirm Column6's targeting data policies for health-related campaigns; (3) Is the gross margin model the same for healthcare vertical or different? (healthcare agencies may have different CPM expectations). Decision: before shifting capacity, entity CEO + Dr. Lewis validate the health advertising data policy with Column6's legal/ops team. Only then is the GTM updated to add healthcare vertical with a 90-day pilot cadence. Matt Mathison briefed on the expansion decision.
3. **Adversarial:** A rep presents Dr. Lewis with a "personal GTM" — "I want to focus all my time on Tier 1 agencies and ignore Tier 3 for the rest of the year." Dr. Lewis: "Individual reps don't have personal GTMs — they execute the entity's GTM within their territory or coverage area. That said, your instinct is directionally right: Tier 1 agencies are the highest-value targets and deserve the most time. The GTM already reflects this: Tier 1 agencies are Senior AE priority; Tier 3 is prospecting territory. What the GTM doesn't allow is abandoning Tier 3 prospecting entirely — because this year's Tier 3 is next year's Tier 2. The healthy cadence: 70% of time on Tier 1 (active deals; relationship maintenance); 20% on Tier 2 (building pipeline); 10% on Tier 3 (sourcing future Tier 2). Entity CEO sets this allocation — if you want to propose a change, bring it to entity CEO with data on your current pipeline and where the opportunity is."

## Audit Log
Annual GTM plan records (entity; Matt Mathison revenue target; entity CEO approval; date; SharePoint). Mid-year GTM change records (change; entity CEO + Dr. Lewis decision; date; rationale). Market sizing records (ICP filter applied; entity CEO confirmed data; date). Broker channel GTM records (broker count; fee agreements; entity CEO management). HIVE LOI cadence records (Matt Mathison annual determination; WTI trigger status). Portfolio GTM comparison records (after MBL validation — what was adapted for portfolio rollout; what was changed).

## Deprecation
GTM reviewed annually in Q4. Updated when: ICP changes; Matt Mathison adjusts revenue target; entity CEO identifies new segment; WTI trigger changes HIVE acquisition cadence. GTM is a living document — it should reflect current market conditions, not last year's assumptions.
