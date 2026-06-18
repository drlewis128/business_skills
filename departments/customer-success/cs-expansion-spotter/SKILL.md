---
name: cs-expansion-spotter
description: "Identify expansion and upsell opportunities within existing MBL portfolio company accounts. Use when the user says 'expansion', 'upsell', 'cross-sell', 'grow the account', 'account expansion', 'expansion opportunity', 'upsell opportunity', 'expand a customer', 'more revenue from existing customers', 'land and expand', 'NRR', 'net revenue retention', 'net dollar retention', 'grow within the account', 'account growth', 'additional services', 'new location', 'additional users', 'additional members', 'increase the IO', 'grow the contract', 'account upsell', 'identify expansion', 'expansion signals', 'ready to expand', or 'customer ready for more'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--action <identify|score|propose|report>]"
---

# CS Expansion Spotter

Identify expansion and upsell opportunities within existing MBL portfolio company accounts — recognizing when a customer is ready to buy more, what they're ready to buy, and how to position the expansion in terms of value already delivered rather than a sales pitch. Expansion revenue from existing customers is 3-5× cheaper to close than new business; net revenue retention (NRR) above 100% means the portfolio company is growing without adding new customers. Dr. Lewis reviews expansion opportunities quarterly.

## When to Use
- Quarterly account review (is this customer ready to expand?)
- A customer mentions a trigger event (new location; new department; new budget cycle)
- Building the expansion pipeline for a portfolio company's NRR plan
- QBR preparation (cs-qbr-preparer — should expansion be on the QBR agenda?)

## Expansion Identification Framework

```
EXPANSION SIGNAL CATEGORIES:

  GROWTH SIGNALS (the customer is growing — follow the growth):
    □ New location — Allevio employer opening a new office or facility
    □ Headcount growth — Allevio employer adding employees; Column6 agency winning new brand clients
    □ Budget increase — customer signals more budget available for Q2/H2/next year
    □ New division — organizational expansion that creates a new buyer persona
    □ Acquisition — customer acquired a company that could become a new account or expansion unit
    
  SUCCESS SIGNALS (the customer is winning — time to reinvest):
    □ Metrics exceeded — claim ratio below target; VCR above benchmark; cost savings >projected
    □ Positive sentiment — customer is publicly positive about the relationship; references us
    □ QBR love — customer said "this is working" at the last QBR; unprompted praise
    □ Renewal early — customer renewed significantly before the renewal date; high confidence
    □ Referred another customer — the strongest expansion signal: they believe in us
    
  PRODUCT FIT SIGNALS (they're using one thing well — another thing fits):
    □ Allevio: employer with a high wellness-engaged workforce ready for additional clinical programs
    □ Allevio: employer with a second location not yet covered under the plan
    □ Column6: agency buying CTV for one brand; has 3 other brands not yet buying CTV
    □ Column6: agency buying one DMA; could expand to national if performance is proven locally
    □ HIVE: landowner with additional parcels beyond the leased parcel
    
EXPANSION TYPES BY ENTITY:

  ALLEVIO:
    1. New employee group — employer adds a location; new facility employees added to the plan
       Expansion ACV impact: member count × PMPM × 12 (same rate as existing plan)
    2. Dependent expansion — employer extends coverage to dependents not previously included
       Expansion ACV impact: dependent count × PMPM (lower than employee PMPM) × 12
    3. Enhanced clinical programs — employer adds clinical care tiers for high-risk members
       Expansion ACV impact: program fee per member per month × enrolled members × 12
    4. Wellness premium — employer adds premium wellness services (biometric screening; coaching)
       Expansion ACV impact: wellness program fee × participating members × 12
    Ready-to-expand signal: claim ratio <78% for 2+ consecutive quarters (model is proven);
      member count growing; HR Director relationship strength ≥4/5
      
  COLUMN6:
    1. Spend increase — existing campaign category at higher IO value
       Expansion ACV impact: additional IO spend per quarter × 4
    2. DMA expansion — agency testing Column6 in 2 markets; ready to go national
       Expansion ACV impact: national CPM × national impression target − existing IO value
    3. Additional brand — agency has Column6 running for one of their clients; bring in another
       Expansion ACV impact: new brand IO value per quarter × 4
    4. Measurement upgrade — agency adds Nielsen OneCount or similar attribution layer
       Expansion ACV impact: measurement platform fee (pass-through)
    Ready-to-expand signal: VCR ≥92% for 2+ consecutive IOs; attribution results positive;
      media buyer has budget conversations with Dr. Lewis in regular calls
      
  HIVE:
    1. Additional parcels — landowner has neighboring parcels not yet leased
       Expansion revenue: additional bonus per acre × new acreage
    2. Referral — landowner refers a neighboring landowner to HIVE
       Expansion revenue: new lease bonus per acre (new account)
    Ready-to-expand signal: royalty payments flowing cleanly for 6+ months; landowner
      responds to development updates positively; no complaints in the relationship

EXPANSION POSITIONING:
  Never pitch expansion in the same conversation as a performance problem — fix the problem first
  Always anchor the expansion in value already delivered:
    "Because we've gotten your claim ratio to 77% in Year 1, I want to show you what
     adding your second location would look like — you'd bring the same model that's
     working here to 40 more employees."
  Expansion conversations belong in QBRs for established accounts (not standalone sales calls)
  Dr. Lewis qualifies the expansion opportunity before any pricing is shared:
    "Is expanding to the second location on your roadmap for the next 12 months?"
    Only if yes: "Great — let me pull the numbers together for you."
```

## Output Format

```markdown
# Expansion Opportunity Assessment — [Account Name] | [Entity]
**Assessed by:** Dr. Lewis | **Date:** [Date] | **Current ACV:** $[X]K
**Opportunity type:** [New location / Additional brand / Spend increase / etc.]

---

## Expansion Signals

| Signal | Evidence |
|--------|---------|
| [Signal 1] | [Specific data point or customer quote] |
| [Signal 2] | [Specific data point or customer quote] |

---

## Opportunity Summary

**What:** [Describe the specific expansion]
**Why now:** [Why is this the right time to propose it?]
**Estimated expansion ACV:** $[X]K
**New total ACV if won:** $[X]K

---

## Proposed Approach

**Forum:** [QBR / Standalone call / Email — and why]
**Opening:** [First sentence to use — anchor in value delivered]
**Qualification question:** [The "is this on your roadmap?" question]
**Decision maker:** [Who needs to say yes — is this the same person as our current contact?]
```

## Output Contract
- Expansion from proven value, never from quota — an expansion pitch that comes before the customer has seen results is a credibility risk; Dr. Lewis does not allow expansion conversations for accounts that are Yellow or Red on health score, or that have missed their success plan targets; the expansion conversation only opens when the customer has seen results and Dr. Lewis has confirmed the account is ready; "land and expand" requires the landing to be successful first
- Qualify before pricing — sharing a price for an expansion the customer isn't ready to buy trains them to say no; Dr. Lewis requires a qualification question before any expansion pricing is shared: "Is [the expansion] something you're actively thinking about for the next 12 months?" If yes: prepare the proposal. If no: "Great to know — let's keep delivering results and revisit in 6 months." Qualification prevents wasted effort and awkward pricing conversations
- Expansion opportunities are pipeline — every identified expansion opportunity is logged in GoHighLevel CRM with the estimated ACV, the qualifying signal, and the proposed timing; Dr. Lewis reviews the expansion pipeline monthly; Matt Mathison includes expansion pipeline in the portfolio growth review; expansion ARR contribution to NRR is tracked in cs-kpi-dashboard
- HITL required: Dr. Lewis approves all expansion proposals before they are presented to the customer; expansion pricing requires CEO approval if it involves a new pricing structure (not just volume increase); any expansion that requires additional service capacity (new location onboarding; new campaign setup; new parcel title search) requires operations team confirmation before the proposal is made; Dr. Lewis reviews the expansion pipeline monthly and prioritizes

## System Dependencies
- **Reads from:** cs-health-score-tracker (account must be Green before expansion conversation); cs-success-plan-builder (success plan actuals — is value proven?); cs-qbr-preparer (QBR agenda — is expansion on the agenda?); GoHighLevel CRM (account notes — has the customer mentioned a trigger event?); cs-churn-predictor (expansion is never proposed to High/Critical risk accounts); AdvancedMD member count trend (Allevio — growing member count signals ready for expansion); Column6 IO booking cadence (Column6 — consistent booking signals budget confidence)
- **Writes to:** Expansion opportunity log (GoHighLevel CRM — opportunity type; estimated ACV; qualifying signal; proposed timing; status); expansion pipeline (SharePoint/CustomerSuccess/<Company>/Expansion/[YYYY]_ExpansionPipeline.pdf); cs-kpi-dashboard (expansion ARR; NRR impact); expansion proposal (SharePoint/CustomerSuccess/<Company>/Proposals/[Account]_[Date]_ExpansionProposal.pdf — created after qualification)
- **HITL Required:** Dr. Lewis approves all expansion proposals before they are presented; expansion pricing requires CEO approval if new pricing structure; operational readiness must be confirmed before proposal is made; Dr. Lewis reviews expansion pipeline monthly; Matt Mathison includes in portfolio growth review

## Test Cases
1. **Golden path:** Allevio — 120-member group; Q3 QBR shows claim ratio at 76% (vs. 80% target); PMPM savings $65/member ($93.6K annualized); HR Director says "our CFO mentioned we're opening a Tucson office — 25 more employees" → Dr. Lewis (next day): "The Tucson mention is the signal. This isn't a pitch — the value is proven. I'll reach out to the HR Director today: 'I was thinking about the Tucson office you mentioned — I'd love to show you what it would look like to bring your existing plan to those 25 employees. We'd use the same model that's gotten your Scottsdale group to 76% claim ratio. Could I put together the numbers?' HR Director responds yes in 30 minutes; Dr. Lewis prices the expansion (25 members × PMPM × 12 = $18.9K additional ACV); proposal presented the following week; HR Director approves; total ACV grows from $91.8K to $110.7K
2. **Edge case:** Column6 agency is booking at $80K/quarter; media buyer casually mentions "our client is thinking about expanding to national" in a campaign update call → Dr. Lewis reviews before responding: health score Green (18/20); last 3 IOs all VCR ≥92%; expansion opportunity is clear — but Dr. Lewis waits for the next QBR: "This is expansion, not a reactive conversation. Bring it up in the QBR — 'I want to circle back to something you mentioned about national expansion. Our local VCR results position us well for that conversation.' In the QBR, we qualify: 'Is the national expansion on the client's roadmap for H2?' If yes, we build the national proposal. Framing in a QBR gives it the weight of a business conversation, not a side comment." QBR held; national expansion qualified; $280K/quarter proposal built (national vs. $80K local); agency presents to the brand client; $180K/quarter compromise plan approved; Column6 ACV grows 125%
3. **Adversarial:** A CS rep sends an expansion proposal to a Yellow-health account (18/25 — claim ratio 84%; champion just changed) without Dr. Lewis review → Dr. Lewis: "Stop — don't send this. I see the account is Yellow and the champion just changed 3 weeks ago. Sending an expansion proposal right now signals that we're focused on our revenue, not their problems. If the new HR Director receives a proposal before we've rebuilt the relationship, it's the wrong first impression. The sequence here is: (1) re-intro call with the new HR Director this week; (2) address the claim ratio trend — acknowledge it and show the plan; (3) get them back to Green; (4) then, if the opportunity still exists, bring up expansion at the Q2 QBR. Expansion on a Yellow account backfires. Let me know when they're back to Green." Rep holds the proposal; relationship rebuilt; account returns to Green Q2; expansion proposed at Q2 QBR; approved

## Audit Log
All expansion opportunity identifications retained with signals and qualifying criteria. Expansion proposals retained by account, entity, and date. Expansion wins (and losses) retained with reason. NRR impact of expansion wins tracked quarterly. Dr. Lewis approval records retained. CEO pricing approval records retained.

## Deprecation
Retire when each portfolio company has a CS platform that identifies expansion signals from product usage data — with Dr. Lewis reviewing the expansion pipeline monthly and the CEO approving all non-standard expansion pricing.
