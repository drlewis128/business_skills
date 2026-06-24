---
name: sales-icp-builder
description: "Build Ideal Customer Profile definitions for MBL portfolio company sales teams. Use when the user says 'ideal customer', 'ICP', 'ideal customer profile', 'target customer', 'who do we sell to', 'who should we be selling to', 'customer profile', 'buyer profile', 'target account', 'target market', 'our best customers', 'customer fit', 'good fit customer', 'bad fit customer', 'negative ICP', 'ICP criteria', 'ICP definition', 'ICP for Allevio', 'ICP for Column6', 'ICP for HIVE', 'employer profile', 'target employer', 'agency profile', 'target agency', 'who buys from us', 'customer segmentation', 'account segmentation', 'tier 1 customer', 'tier 2 customer', 'ICP scoring', 'firmographic', 'firmographics', 'company size target', 'revenue target', 'employee count target', 'industry target', 'geography target', or 'TAM segmentation'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--action <build|score|refine|audit>]"
---

# Sales ICP Builder

Build and maintain Ideal Customer Profile definitions for MBL portfolio company sales teams — defining who is the right customer, who is the wrong customer, and how to score prospects against ICP criteria. A clear ICP is the foundation of all downstream sales decisions: territory design, quota allocation, outreach prioritization, and pipeline quality.

## When to Use
- Building or refreshing the ICP for any portfolio entity
- Scoring an inbound prospect or deal against ICP criteria
- Auditing pipeline quality against ICP (are we chasing the right deals?)
- Preparing ICP documentation for a new sales hire or rep onboarding

## ICP Framework

```
MBL ENTITY ICPs:

  ALLEVIO (Healthcare MSO — Employer-Sponsored Primary Care):
    Primary ICP — Self-insured employer:
      Employee count: 75-500 employees (sweet spot: 100-300)
      Geography: Arizona (Maricopa / Pima counties; Phase 1); expansion markets TBD
      Industry: any (healthcare, professional services, manufacturing, construction priority)
      Insurance structure: self-insured OR fully insured open to MSO model
      Pain points: rising healthcare costs (>10% year-over-year); low employee utilization of benefits; 
        high claims (chronic disease burden); high turnover linked to benefits dissatisfaction
      Buyer: HR Director / VP HR / CFO (for self-insured); CEO for small employers
      Budget authority: HR Director for evaluation; CFO or CEO for contract sign
      PMPM range: $50-$120/employee/month (varies by service tier + employee count)
      Negative ICP (do not pursue):
        <50 employees (economics don't work for Allevio)
        Fully-insured, no flexibility on benefits structure, and no interest in supplemental MSO
        Government / public sector (procurement complexity; budget cycles)
        Single-site employers in rural areas outside service delivery radius
      HIPAA NOTE: ICP analysis uses employer-level aggregate data only; no member health data in any ICP or scoring model
      
    Secondary ICP — Benefits broker (channel partner, not end customer):
      Broker type: independent health benefits broker (not captive; not wirehouse)
      Book size: 10+ employer clients in AZ; ideally 3+ who fit primary ICP
      Incentive alignment: paid commission on referred employer enrollment
      see: sales-allevio-broker-channel
      
  COLUMN6 / SIPROCAL (CTV/Mobile/Gaming Advertising):
    Primary ICP — Media buying agency:
      Agency type: independent media agency; DSP-savvy buying team; CTV line items in current media plans
      Spend size: $500K+ annual CTV/digital spend (Column6 floor IO value ≥$25K)
      Vertical: any (entertainment, QSR, retail, auto, finance priority — proven CTV spenders)
      Geography: US (primary); no geography restriction
      Buyer: media buyer / associate media director / VP Media
      Pain points: CTV inventory quality (IVT concerns); viewability; reach/frequency measurement; 
        premium CTV inventory access at efficient CPMs
      Repeat IO rate target: ≥60% of active agencies; ICP agencies have clear path to repeat business
      Negative ICP:
        Brand-direct (no agency relationship; Column6 is agency-first)
        Agencies with <$100K annual digital spend (below IO floor)
        Agencies using only walled gardens (Google/Meta-only buyers; not CTV-oriented)
        Agencies with history of slow/non-payment (DSO risk; net 30-60 terms required)
        
  HIVE PARTNERS (Oil & Gas — Royalty Interest / ORRI):
    Primary ICP — Acquisition targets (seller):
      Asset type: producing oil and gas royalty interests / ORRI / mineral rights in Uinta Basin (UT)
      Production: existing production preferred (not speculative); BOE/month verifiable from operator statements
      NRI%: documented; Covercy-reconcilable
      Seller profile: estate sale; consolidating mineral holders; individual royalty owners wanting liquidity
      WTI trigger: ALL acquisitions paused if WTI <$58/bbl for 2+ consecutive weeks; Matt Mathison decides
      
    Secondary ICP — LP investors:
      Accredited investors seeking O&G exposure
      Focus: existing LP relationship managed by Matt Mathison; see sales-hive-lp-relations
      
ICP SCORING MODEL (Allevio example — adapt per entity):
  Score 1-5 per dimension:
    Employee count fit (1=outside range; 5=perfect sweet spot 100-300)
    Geography fit (1=outside market; 5=Maricopa/Pima core)
    Pain fit (1=no stated pain; 5=explicit cost pain + open to change)
    Decision-maker access (1=no contact; 5=HR Director or CFO engaged)
    Budget fit (1=no budget cycle alignment; 5=budget cycle within 90 days)
  Total: 20-25 Tier 1 (priority); 14-19 Tier 2 (develop); <14 Tier 3 (deprioritize or exit)
```

## Output Format

```markdown
# ICP Definition — [Entity] | [Date]
**Owner:** Dr. Lewis (validated by entity CEO) | **Version:** [N]

---

## Primary ICP — [Entity]
**Profile name:** [Allevio Core Employer / Column6 CTV Agency / etc.]
**One-sentence description:** [Who they are and why they buy]

### Firmographics
- Employee count: [range]
- Geography: [market]
- Industry: [verticals]
- Budget: [range / PMPM / IO floor]

### Pain Points (ranked)
1. [Primary pain]
2. [Secondary pain]
3. [Tertiary pain]

### Buyer Personas
| Persona | Role | Motivations | Pain |
|---------|------|-------------|------|
| [Primary] | HR Director | [cost reduction] | [benefits complexity] |

### Negative ICP — Do Not Pursue
- [Criterion 1 — reason]
- [Criterion 2 — reason]

## ICP Scoring Card
| Dimension | Weight | Score 1-5 | Weighted |
|-----------|--------|-----------|---------|
| [Dimension] | [X%] | [Score] | [Result] |
| **Total** | 100% | | [Score/25] |

**Tier:** [1/2/3] | **Recommendation:** [Pursue / Develop / Deprioritize]
```

## Output Contract
- Negative ICP is as important as positive ICP — a sales team without a clear negative ICP will chase bad-fit deals that consume time, miss quota, and produce churned customers; for Allevio, a <50-employee employer is not a borderline case — the PMPM economics require a minimum employer size for Allevio's clinical model to be delivered profitably; a 35-person employer pursuing Allevio is a distraction; Dr. Lewis's role is to enforce the negative ICP criteria so entity CEOs and sales leads aren't spending time on opportunities that look like deals but aren't; "they're interested" is not a qualifier — ICP fit is the first qualifier
- ICP is validated with data, not theory — the ICP definition is built from Allevio's best customers (highest GRR; highest NRR; fastest time to value), Column6's highest repeat IO agencies, and HIVE's cleanest acquisitions; if the ICP says "100-300 employees" but Allevio's highest-GRR accounts are 400-600 employees, the ICP is wrong; Dr. Lewis reviews ICP accuracy quarterly against actual customer outcomes (GRR ≥91%; NRR ≥105%; repeat IO ≥60%); ICP that doesn't predict customer success is just a guess with a name
- HITL required: ICP definition → entity CEO validates before activating with sales team; ICP update → entity CEO + Dr. Lewis review; pipeline audit against ICP → Dr. Lewis shares findings with entity CEO; Allevio ICP uses employer-aggregate data only (no member-level data in any ICP model); Matt Mathison sees ICP summary in quarterly ops review; HIVE acquisition ICP → Matt Mathison approval on all acquisitions regardless of ICP score

## System Dependencies
- **Reads from:** GoHighLevel (current pipeline; won deals by firmographic; lost deals; churn data); QuickBooks (revenue by customer segment); Allevio employer data (aggregate; employer-level); Column6 IO history by agency; HIVE acquisition history; win/loss records (revops-win-loss-tracker)
- **Writes to:** ICP definition document (SharePoint → [Entity] → Sales → ICP → v[N]); GoHighLevel (ICP tier field on contacts/accounts); sales onboarding materials; pipeline review criteria; territory planning inputs (sales-territory-planner)
- **HITL Required:** ICP definition → entity CEO validates; ICP update → entity CEO + Dr. Lewis; pipeline ICP audit → Dr. Lewis shares with entity CEO; Allevio: employer aggregate data only; HIVE: Matt Mathison approves all acquisitions; quarterly ICP accuracy review → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Building Allevio ICP v1.0. Pull GHL won deals (12 employers signed in 2025): avg 187 employees; 9 in Maricopa County; 3 in Pima; industries: healthcare (4), construction (3), professional services (3), manufacturing (2); avg PMPM $78. Pull churn data: 2 churned employers — both <60 employees; churn reason: "not enough employees to spread cost." ICP: sweet spot 100-300 employees; floor 75; Maricopa/Pima geography; any industry; PMPM $65-95. Negative ICP: <50 employees (hard stop). Entity CEO validates. GHL updated with ICP tier fields. Allevio sales team briefed. ICP scored against current pipeline of 22 prospects: 8 Tier 1; 9 Tier 2; 5 Tier 3 (recommended to exit 3 of the 5).
2. **Edge case:** Column6 entity CEO wants to pursue brand-direct relationships (bypassing agencies) because "the margins are better without agency commissions" → Dr. Lewis: "I understand the margin logic — direct brand relationships do carry better economics on paper. But Column6's go-to-market is built around agencies: our inventory relationships, our IO process, our measurement reporting, and our CS motion are all designed for agency buyers. Going direct-to-brand requires a completely different sales motion, different relationships, and a different support model. It's a separate ICP that we'd treat as a separate channel — with its own quota, own rep capacity, and own pipeline. What I'd recommend: pilot with 2 direct brands (brands you already have agency relationships for) to test the economics and sales cycle; if pilot shows >35% gross margin and <90-day sales cycle, we expand. I'll add 'brand-direct pilot' as a separate ICP track, not a replacement."
3. **Adversarial:** Sales rep pushes back on a prospect being classified Tier 3 ("But they're interested and they have budget!") → Dr. Lewis: "Interest and budget are necessary but not sufficient. This prospect is a 38-person employer — below our 75-person floor. Below 75, Allevio's model can't deliver the clinical program profitably. We'd sign them, deliver a degraded experience, and they'd churn at renewal. That's worse than not signing them: it's a distraction during onboarding, a churn stat, and potentially a negative reference. The ICP floor isn't a preference — it's economics. I'll help you redirect this prospect to a benefits broker who might have a better-fit solution for them, and that positions Allevio well if they grow."

## Audit Log
ICP version history (all versions; dates; entity CEO validation; SharePoint). ICP accuracy reviews (quarterly; GRR/NRR/repeat IO correlation; SharePoint). Pipeline ICP audit records. GHL ICP tier field update records. Negative ICP enforcement records. HIVE acquisition ICP review records (linked to Matt Mathison approval).

## Deprecation
ICP reviewed quarterly against customer outcomes (GRR; NRR; repeat IO). ICP updated when entity enters new geography or adds service tier. ICP validated at each entity annual planning cycle. Negative ICP criteria reviewed when market or pricing model changes. HIVE ICP reviewed when WTI trigger status changes.
