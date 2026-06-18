---
name: sales-ideal-customer-profile
description: "Build and maintain the Ideal Customer Profile for MBL portfolio companies. Use when the user says 'ICP', 'ideal customer', 'ideal customer profile', 'target customer', 'who is our customer', 'who should we be selling to', 'target market', 'buyer profile', 'customer persona', 'customer segmentation', 'best fit customers', 'who do we sell to', 'target account profile', 'fit criteria', 'customer characteristics', 'qualifying criteria', 'qualification framework', 'who is a good fit', 'disqualify', or 'total addressable market'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <build|refine|validate|apply>] [--segment <employer-group|agency|landowner|lp>]"
---

# Ideal Customer Profile Builder

Build and maintain the Ideal Customer Profile (ICP) for MBL portfolio companies — defining the specific characteristics of customers who generate the most value with the least friction. A well-defined ICP makes every sales decision easier: who to target, how to prioritize the pipeline, when to disqualify an opportunity, and how to build a prospecting list. Without an ICP, the sales team chases everything and closes nothing predictably.

## When to Use
- Building the initial sales strategy for a portfolio company
- The sales team is chasing too many deals with low win rates
- Refining the ICP after analyzing win/loss patterns
- Building a prospecting list or target account list
- Qualifying (or disqualifying) a new inbound lead

## ICP Framework

```
IDEAL CUSTOMER PROFILE — BY ENTITY:

  ALLEVIO (Healthcare MSO — Employer Group Sales):
    WHO THEY ARE:
      Primary decision-maker: HR Director, VP of HR, Benefits Administrator, CFO
        Companies with 50-500 employees (employer groups)
        Industries: Professional services; construction; manufacturing; healthcare-adjacent
        Geography: Arizona (primary market — Maricopa County; Pima County)
        Insurance type: Self-insured or level-funded preferred; fully-insured (harder sell)
      
    WHAT MAKES A GOOD FIT:
      ✅ 50-500 employees (right size for Allevio's model)
      ✅ Employer is paying too much for healthcare benefits (claim ratio >80%)
      ✅ Decision-maker is dissatisfied with current broker or carrier
      ✅ Company is growing (enrollment will increase over the contract)
      ✅ Located in Maricopa or Pima County (Allevio's primary delivery network)
      ✅ Willing to consider an MSO model (not locked in to a specific carrier)
      
    DISQUALIFY EARLY IF:
      ❌ <25 employees (too small for PMPM economics)
      ❌ Government or union employer (different procurement process; Allevio is not positioned)
      ❌ Multi-state workforce (Allevio's delivery network is Arizona-focused)
      ❌ Recently signed a 3-year deal with a competitor (no short-term opportunity)
      ❌ Decision is made entirely by a national broker with no local flexibility
      
    BEST-FIT CUSTOMER PROFILE (highest win rate, highest LTV):
      100-250 employees; Arizona; professional services or construction;
      Current claim ratio >80%; benefits cost growing >8%/year; HR director as champion
      
  HIVE PARTNERS (O&G — Mineral Lease Acquisition):
    WHO THEY ARE:
      Landowner or royalty owner with mineral rights in the Uinta Basin, Utah
      Often: Family farms; inherited mineral rights (heirs); small royalty interest holders
      Also: Small operators looking to divest producing assets
      
    WHAT MAKES A GOOD FIT:
      ✅ Mineral rights in the Uinta Basin (HIVE's area of operations)
      ✅ Willing to lease (not interested in operating themselves)
      ✅ Reasonable royalty expectations ($1/acre bonus; 12.5-16% royalty in current market)
      ✅ Clear title (no obvious title disputes or unresolved estate issues)
      ✅ Not already under a competing LOI
      
    DISQUALIFY EARLY IF:
      ❌ Mineral rights outside the Uinta Basin (outside HIVE's operations)
      ❌ Royalty expectations unrealistic (>20% + high bonus — market is $1-2/acre)
      ❌ Title cloud (estate in probate; multiple heirs who can't agree)
      ❌ Already signed with a competing operator
      ❌ Federal land (BLM lease process — different track from private mineral acquisition)
      
  COLUMN6 / SIPROCAL (CTV/Programmatic — Agency and Brand Sales):
    WHO THEY ARE:
      Buyers: Media agency buyer (planning or buying team); brand direct (VP Marketing; CMO)
      Agency types: Independent media agencies; holding company agency groups (IPG; WPP; Omnicom)
      Brand categories: CPG; retail; auto; entertainment; streaming; DTC brands
      Campaign types: Awareness campaigns ($25K-$500K/campaign); performance campaigns
      
    WHAT MAKES A GOOD FIT:
      ✅ Active CTV buyer (has run CTV campaigns in the last 12 months)
      ✅ Budget: $50K+ per campaign (below this, the economics are thin)
      ✅ Targeting need: Audience-based buying (Column6's targeting strength)
      ✅ Decision-maker accessible (direct relationship with the buyer or planner)
      ✅ Willing to test new supply sources (not 100% committed to one DSP or SSP)
      
    DISQUALIFY EARLY IF:
      ❌ Campaign budget <$25K (not worth the operational cost of the deal)
      ❌ No CTV budget (digital-only or TV-only with no convergence interest)
      ❌ Locked in to a single supplier with no room for diversification
      ❌ Political advertising (FEC compliance complexity; avoid)
      ❌ Pharma/prescription drug advertising (FDA compliance complexity; require specialist)

ICP APPLICATION — HOW TO USE THE ICP:

  Prospecting: Only build lists that match the ICP criteria
    Allevio: Source employer groups from local chamber memberships; AZ business registries; broker referrals
    Column6: Source from IAB member directory; agency holding company brand lists; trade show attendees
    
  Lead qualification: Score every inbound lead against ICP criteria
    5+ criteria met: Qualify immediately; prioritize in pipeline
    3-4 criteria met: Qualify with caution; invest limited sales time until confirmed fit
    <3 criteria met: Disqualify or deprioritize; don't invest primary sales resources
    
  Pipeline prioritization: ICP-fit deals get more sales attention than non-ICP deals
    When pipeline is full: ICP deals get more time; non-ICP deals are deprioritized
    
  Win/loss analysis: Track whether ICP vs. non-ICP deals have different win rates
    Hypothesis: ICP deals close faster, at higher win rates, and at higher ARPU than non-ICP deals
    If hypothesis not confirmed: Refine the ICP criteria
```

## Output Format

```markdown
# Ideal Customer Profile — [Entity]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Version:** [X.X]

---

## ICP Definition

**Target customer:** [2-sentence description — who they are, what their situation is]
**Primary decision-maker:** [Title + context]
**Firmographics:** [Size; geography; industry; ownership structure]

---

## Fit Criteria

| Criterion | Ideal | Acceptable | Disqualify |
|-----------|-------|-----------|-----------|
| Company size | [50-250 EEs] | [25-50 or 250-500 EEs] | [<25 or >500 EEs] |
| Geography | [Maricopa County] | [Arizona] | [Multi-state; no AZ presence] |
| Budget | [$85+/PMPM] | [$75-85/PMPM] | [<$70/PMPM expectations] |
| Decision-maker access | [Direct HR Dir. contact] | [Broker intermediary] | [No decision-maker access] |

---

## Disqualification Rules

Disqualify immediately if any of these are true:
- [ ] [Company is <25 employees]
- [ ] [Multi-state workforce primary]
- [ ] [Recent competitive contract]

---

## Best-Fit Customer Description

[2-3 sentences describing the archetypal best-fit customer — the customer who closes fastest, churns least, and generates the most PMPM value]

---

## ICP Validation Status

**Last validated:** [Date] | **Win rate on ICP deals:** [X]% | **Win rate on non-ICP deals:** [X]%
**Recommendation:** ICP is [well-calibrated / needs revision — see notes]
```

## Output Contract
- The ICP is a hypothesis until validated by win/loss data — an ICP built purely from intuition ("we think our best customers are...") should be treated as a starting point, not a finished product; Dr. Lewis validates the ICP quarterly by comparing win rates, deal velocity, and LTV between ICP-fit and non-ICP-fit deals; if non-ICP deals are winning at similar rates, the ICP is wrong; if ICP deals are winning at 3× the rate of non-ICP deals, the ICP is well-calibrated; update the ICP when the data says to, not when the team's intuition changes
- Disqualification criteria save as much time as qualification criteria — a lead that doesn't fit the ICP is not a bad lead, it is just a mis-fit for this company at this time; the ability to disqualify quickly (before investing 6 hours of sales time on a 3% win probability deal) is as valuable as the ability to identify a great fit; Dr. Lewis gives the sales team clear, specific, non-negotiable disqualification rules so that time is not wasted on deals that can't close
- ICP is specific to the entity and its delivery model — Allevio's ICP for employer groups is completely different from Column6's ICP for media agencies; there is no single "MBL portfolio ICP"; Dr. Lewis maintains a separate ICP for each portfolio company, with criteria that reflect the company's actual delivery capabilities, geographic reach, and economic model; an employer group with 1,200 employees is potentially a great fit for a national health benefits company but is out of Allevio's ICP range today
- HITL required: Dr. Lewis builds and maintains the ICP; CEO reviews and validates (the CEO has the best insight into which customers are the best customers); sales reps apply the ICP in day-to-day qualification; Matt Mathison informed when the ICP is materially revised (it affects the addressable market and growth strategy); Dr. Lewis does not change the ICP without CEO validation; sales reps do not override the ICP disqualification criteria without CEO discussion

## System Dependencies
- **Reads from:** Win/loss analysis (sales-win-loss-analyzer — ICP accuracy validation); CRM deal data (which deal characteristics correlate with wins?); customer LTV data (QuickBooks — which customers have highest retention and revenue?); sales-market-sizing (TAM/ICP-addressable market); competitor analysis (sales-competitive-intel — who else is competing for these customers?)
- **Writes to:** ICP document (SharePoint/Sales/<Company>/ICP_v[X]_[Date].pdf); prospecting criteria (for sales-outbound-sequencer and sales-lead-scoring); pipeline qualification checklist (used in sales-pipeline-manager — does this deal meet ICP criteria?); target account list criteria (for sales-territory-planner)
- **HITL Required:** Dr. Lewis builds; CEO validates; sales reps apply; Dr. Lewis updates based on win/loss data; Matt Mathison informed of major ICP revision; CEO must agree to any change in the core ICP definition before it is applied to the prospecting and pipeline qualification process; Dr. Lewis does not disqualify a specific lead without discussing with the CEO if the CEO has a personal relationship with the prospect

## Test Cases
1. **Golden path:** Building the initial Allevio ICP → Dr. Lewis reviews Allevio's 12 existing employer group contracts: average group size 145 employees; all in Maricopa or Pima County; 8 of 12 are in professional services or construction; 9 of 12 had a claim ratio >80% before signing; average PMPM: $85; retention rate: 92% at first renewal; Dr. Lewis drafts ICP criteria; CEO reviews and adds: "The groups where the broker is also a fan of the model are our fastest closers — add 'broker relationship' as a positive fit indicator"; ICP finalized; CEO approves; applied to prospecting and pipeline qualification from that point forward; validated after 2 quarters of data
2. **Edge case:** Allevio receives an inbound inquiry from a 900-employee company interested in the MSO model → Dr. Lewis runs the ICP criteria: 900 employees is above the Allevio ICP range (50-500); the company has a multi-state workforce (400 employees in Arizona; 500 in Colorado and Nevada); Allevio's delivery network is Arizona-focused; Dr. Lewis advises: "This is an interesting lead but it's outside the current ICP. A 900-employee multi-state group would require Allevio to credential providers in Colorado and Nevada — that's a significant operational expansion that isn't in the current model. Options: (1) Qualify for the Arizona employee segment only (~400 employees) and carve out the other states; (2) Pass entirely — this deal would stretch Allevio beyond its current delivery model. My recommendation: Qualify for the AZ-only segment; propose an Arizona carve-out structure at $85/member for the 400 AZ employees ($34K/month); if the client won't do a state-specific carve-out, pass." CEO decides on the carve-out approach
3. **Adversarial:** Column6's sales team wants to pursue a political campaign advertiser for the upcoming election cycle — the campaign budget is $800K (above the ICP floor) → Dr. Lewis flags: "Political advertising is an explicit disqualification criterion in Column6's ICP. The reasons: (1) FEC compliance complexity — political advertising requires specific disclosure processes and candidate authorization; (2) Brand risk — political advertising creates advertiser conflicts with non-political clients who share the same inventory; (3) Operational requirements — political advertising in broadcast-adjacent channels requires FCC coordination and specific reporting. The $800K budget is attractive, but the compliance and operational requirements create risk that exceeds the revenue opportunity for a company of Column6's size. I recommend holding the disqualification criteria as written." CEO confirms; political campaign declined

## Audit Log
All ICP versions retained by entity and date. Win/loss validation records retained quarterly. CEO approval records retained for ICP changes. ICP application records (how many leads qualified vs. disqualified using ICP criteria) retained. Prospecting list criteria retained.

## Deprecation
Retire when each portfolio company has a dedicated VP of Sales who maintains the ICP — with Dr. Lewis reviewing the ICP annually for consistency with the company's financial model and growth stage.
