---
name: strategy-synergy-analyzer
description: "Identify and quantify synergies in an M&A transaction — revenue synergies, cost synergies, and dis-synergies. Use when the user says 'synergies', 'synergy analysis', 'quantify synergies', 'identify synergies', 'cost synergies', 'revenue synergies', 'synergy model', 'integration synergies', 'deal synergies', 'acquisition synergies', 'estimate synergies', 'synergy value', 'capture the synergies', 'what are the synergies', 'value creation from the deal', or 'dis-synergies'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--acquirer <company name>] [--target <company name>] [--type <cost|revenue|both>] [--purpose <investment-thesis|integration-plan|lp-report>]"
---

# Synergy Analyzer

Identify, classify, and quantify M&A synergies for MBL portfolio company transactions — assessing the realistic value creation available from combining two businesses and building the execution plan to capture it. Synergies are the economic justification for paying an acquisition premium: if you are paying above standalone value for a company, synergies must bridge the gap between standalone value and price paid. At PE portfolio scale, synergy overestimation is the most common cause of deal failure — deals that look compelling on synergy-adjusted models often underdeliver because synergies are delayed, smaller than projected, or never captured at all. Dr. Lewis applies a conservative discipline: synergies are classified by capture probability, haircut aggressively in base case modeling, and tracked relentlessly post-close.

## When to Use
- LOI stage — first synergy estimate before LOI price is set
- Diligence stage — refining synergy estimates with access to target data
- Valuation modeling — synergy-adjusted price vs. standalone price
- Post-close — integration planning; tracking synergy capture vs. plan
- LP reporting — explaining value creation from a completed acquisition

## Synergy Analysis Framework

```
Synergy classification:

  COST SYNERGIES (more certain; typically captured within 12-24 months):
    Category A — Duplicate overhead elimination:
      CEO/management: If target has a CEO who is redundant post-acquisition → compensation saved
      Back office: HR, accounting, IT, legal if consolidated under acquirer's infrastructure
      Facilities: Redundant lease space eliminated
      Systems: Redundant software licenses, subscriptions (target uses same or different EMR, etc.)
      Insurance: Consolidated insurance under acquirer's larger policy (may get better rates)
      
    Category B — Purchasing power / vendor consolidation:
      Combined volume with shared vendors → negotiating leverage → rate reduction
      Medical supplies (Allevio): Combined ordering volume across practices
      Software/SaaS: Enterprise pricing for combined entity
      
    Category C — Operational efficiency:
      Shared billing / RCM (Allevio): Marshall Medical Billing can service combined patient volume
      Shared scheduling: Combined scheduling system reduces FTE overhead
      
  REVENUE SYNERGIES (less certain; typically take 18-36 months; haircut more aggressively):
    Category D — Cross-referral:
      Allevio acquisition of specialty practice: Allevio → specialty referrals; specialty → primary care referrals
      Note: Healthcare cross-referral requires AKS analysis — if financial arrangement exists between the
      parties, AKS safe harbor must apply (see strategy-partnership-evaluator)
      
    Category E — Geographic expansion:
      Allevio acquires Tucson practice: Tucson patients now have access to Allevio's Phoenix specialists
      Revenue opportunity from expanded service area
      
    Category F — Service line expansion:
      Acquirer adds new service line through target's capabilities (telehealth, behavioral health, etc.)
      Column6: Acquires a data analytics company → can offer enhanced targeting to advertisers
      
  DIS-SYNERGIES (always model; often overlooked):
    Integration distraction: Management time diverted from core business during integration
      Cost: CEO + COO spend 20-30% of time on integration for 6-12 months → foregone growth
    Revenue dis-synergy: If target's customers leave post-acquisition (brand change, management change)
      Measure: Historical customer retention at comparable acquisitions; plan for 5-10% customer loss
    Cultural dis-synergy: Two teams that don't integrate effectively → productivity loss, turnover
    Technology dis-synergy: If two systems don't integrate, double-running costs for transition period
    
Synergy modeling discipline:
  Three confidence tiers:
    High confidence (90%+ capture probability): Executed within 90 days; directly controllable
      Example: Target CEO severance + position elimination → 100% captured at close
    Medium confidence (60-70% capture probability): Requires negotiation or operational change
      Example: Vendor renegotiation for combined volume → likely but timeline uncertain
    Low confidence (30-40% capture probability): Requires revenue assumption or cultural change
      Example: Cross-referral revenue → dependent on physician behavior; haircut to 30-40%
      
  Base case rule: High × 90% + Medium × 60% + Low × 30% = base case synergy capture
  Never present total identified synergies as the plan — it's the theoretical maximum
  
  Timing: Synergies are not Day 1; build a capture timeline:
    Day 1-90: High confidence cost synergies only (duplicate positions, immediate overhead)
    Month 3-12: Medium confidence cost synergies (vendor negotiations, system consolidation)
    Month 12-36: Revenue synergies (cross-referral, geographic expansion)
```

## Output Format

```markdown
# Synergy Analysis — [Acquirer] + [Target]
**Date:** [Date] | **Stage:** [LOI / Diligence / Post-close / Annual review]
**Acquirer:** [Company] | **Target:** [Company] | **Deal structure:** [Asset / Stock purchase]

---

## Synergy Summary

| Category | Identified ($K) | Base case capture | Confidence | Timeline |
|---------|----------------|-----------------|-----------|---------|
| A — Duplicate overhead | $[X]K | $[X]K | High | Day 1-90 |
| B — Purchasing power | $[X]K | $[X]K | Medium | Month 6-12 |
| C — Operational efficiency | $[X]K | $[X]K | Medium | Month 3-12 |
| D — Cross-referral revenue | $[X]K | $[X]K | Low | Month 12-36 |
| E — Geographic expansion | $[X]K | $[X]K | Low | Month 18-36 |
| F — Service line expansion | $[X]K | $[X]K | Low | Month 18-36 |
| **Total identified synergies** | **$[X]K** | | | |
| **Base case (probability-weighted)** | | **$[X]K** | | |
| **Dis-synergies (integration cost)** | | **-$[X]K** | | |
| **Net base case synergies** | | **$[X]K** | | |

---

## Cost Synergy Detail

### A — Duplicate Overhead

| Item | Annual value | Confidence | Capture date |
|------|------------|-----------|------------|
| Target CEO elimination (severance: $[X]K) | $[X]K/year | High (95%) | Day 90 |
| Target back-office (1.0 FTE admin consolidated) | $[X]K/year | High (90%) | Day 60 |
| Facilities — [lease savings if consolidating] | $[X]K/year | High (85%) | Day 90 |
| Software — redundant subscriptions | $[X]K/year | High (90%) | Day 60 |
| Insurance — combined policy | $[X]K/year | Medium (65%) | Month 4 |
| **Subtotal** | **$[X]K** | **Avg 85%** | |

### B — Purchasing Power

| Item | Current spend | Combined volume | Projected savings | Confidence |
|------|------------|---------------|-----------------|-----------|
| [Medical supplies] | $[X]K | [X]× current | $[X]K | Medium (65%) |

### C — Operational Efficiency

| Item | Mechanism | Annual value | Confidence |
|------|----------|------------|-----------|
| Shared billing (Marshall Medical Billing) | Target billing migrated to MBL's Marshall agreement | $[X]K | Medium (70%) |

---

## Revenue Synergy Detail

| Synergy | Mechanism | Gross opportunity | Probability | Base case |
|---------|----------|-----------------|-----------|----------|
| D — Cross-referral | Allevio → target specialty; target → Allevio primary care | $[X]K/year | 30% | $[X]K |
| AKS NOTE: Any referral arrangement between the practices requires attorney AKS review | | | | |

---

## Dis-Synergy Assessment

| Dis-synergy | Mechanism | Impact |
|-----------|----------|--------|
| Integration distraction | CEO 25% time, COO 25% time for 9 months | $[X]K foregone growth opportunity |
| Customer retention risk | [X]% patient attrition post-ownership change | -$[X]K revenue Year 1 |
| Dual-system running costs | Concurrent AdvancedMD licenses during migration | $[X]K for 6 months |
| **Total dis-synergy** | | **-$[X]K** |

---

## Net Value Creation from Synergies

| | Amount |
|---|--------|
| Total identified synergies | $[X]K |
| Less: Base case haircut | -$[X]K |
| Base case synergies | $[X]K |
| Less: Dis-synergies | -$[X]K |
| **Net synergy value (Year 1-2)** | **$[X]K** |
| Capitalized value @ [X]× EBITDA | $[X]K |

**This represents [X]% of the acquisition price — [adequate to support the premium / marginal / does not justify the premium paid]**

---

## Synergy Capture Plan

| Initiative | Owner | Target date | KPI | Tracking |
|-----------|-------|------------|-----|---------|
| CEO transition | Dr. Lewis + Board | Day 90 | Position eliminated | Monthly |
| Billing migration to Marshall | COO + Marshall | Month 6 | Claims processed under new account | Monthly |
| Vendor renegotiation | CEO | Month 9 | New rate card signed | Quarterly |
| Cross-referral protocol | Both CEOs | Month 12 | Referrals tracked (AKS-compliant) | Quarterly |

---

## Matt Mathison Brief

[Acquirer] + [Target] synergy analysis: Identified $[X]K; base case $[X]K; dis-synergies -$[X]K; net $[X]K. Capitalized: $[X]K at [X]× EBITDA ([X]% of price paid). High confidence captures: [$X — target CEO + overhead, 90 days]. Revenue synergies: [Low confidence — haircut to $X; AKS attorney review required for referral arrangement]. Integration distraction cost: $[X]K (9 months). Synergy capture plan owner: Dr. Lewis (quarterly tracking). Action from Matt Mathison: [None / Approve acquisition price given synergy base case / Discuss AKS review for referral arrangement].
```

## Output Contract
- Synergies are probability-weighted in the base case — Dr. Lewis never presents total identified synergies as the operating plan; the base case uses the confidence-weighted captures (High × 90%, Medium × 60%, Low × 30%); the spread between identified and base case is the "synergy gap" that requires execution excellence to close; investors who have seen synergy models know that synergies consistently underperform the identified total; Dr. Lewis's credibility is maintained by presenting a conservative base case and tracking against it
- Revenue synergies are haircut to 30-40% and excluded from Year 1 — revenue synergies are structurally more uncertain than cost synergies: cross-referrals require physician behavior change; geographic expansion requires market penetration; service line expansion requires sales execution; all of these take 18-36 months and have substantial execution risk; Dr. Lewis includes them in the synergy analysis at 30-40% probability in the base case and marks them as Year 2-3 captures; they are not in the price justification for the acquisition; if the deal only works with revenue synergies, the deal price is too high
- AKS review for any referral synergy — if the synergy model includes cross-referral between an Allevio entity and an acquired practice, that referral arrangement must be reviewed by a healthcare attorney under the Anti-Kickback Statute before the synergy plan is implemented; the referral can generate real value but it must be structured to qualify under a safe harbor; Dr. Lewis flags this in every synergy analysis involving healthcare entities and ensures the AKS review happens before the integration plan is finalized, not after close
- HITL required: Dr. Lewis produces the synergy analysis; CEO of acquiring entity reviews for operational feasibility of cost synergy captures (particularly shared operations and vendor negotiations); CEO of target reviews dis-synergy assessment (particularly customer retention risk); Matt Mathison reviews the net synergy value relative to acquisition premium; attorney reviews any referral arrangement before implementation; synergy capture plan reviewed monthly by Dr. Lewis and quarterly by Matt Mathison

## System Dependencies
- **Reads from:** M&A screener (strategy-m-and-a-screener), LOI terms (strategy-loi-builder), diligence findings (strategy-due-diligence-coordinator), target financial statements, acquirer financial statements (QuickBooks), valuation model (strategy-valuation-model), value creation plan (strategy-value-creation-plan)
- **Writes to:** Synergy analysis memo (SharePoint/Strategy/M&A/[Deal Name]/Synergies/); integration plan (strategy-integration-planner — synergy capture section); Matt Mathison deal memo; IRR model (strategy-irr-model — synergy EBITDA input); LP report (synergy progress post-close)
- **HITL Required:** Dr. Lewis analyzes; CEO reviews operational feasibility; Matt Mathison approves synergy basis for acquisition price; attorney reviews referral synergies; Dr. Lewis tracks monthly; Matt Mathison reviews quarterly

## Test Cases
1. **Golden path:** Allevio acquires a 3-provider primary care practice in Tucson → Cost synergies: Target managing physician role is absorbed by Allevio's operating model ($180K salary eliminated, Day 90, 90% confidence); administrative consolidation (1.0 FTE admin → 0.5 FTE under Allevio's combined ops, $40K/year, Day 60, 90%); billing migration to Marshall Medical Billing ($25K/year savings vs. target's standalone billing contract, Month 6, 70%); medical supply ordering consolidated ($12K/year volume discount, Month 9, 65%); insurance consolidated ($8K/year, Month 4, 65%); identified cost synergies: $265K; base case: $218K (weighted); revenue synergies: Allevio Phoenix-based specialists refer Tucson patients back to Allevio's platform ($45K/year, 30% probability, Month 18); base case revenue: $13.5K; dis-synergies: integration distraction (-$22K); customer retention risk 5% attrition (-$35K year 1); dual-system running (-$8K); net base case: $218K + $13.5K − $65K = $166.5K/year; capitalized at 6.5× EBITDA: $1.08M; acquisition price $800K; synergies cover $1.08M > $800K → deal value positive even at base case captures
2. **Edge case:** A proposed synergy is to immediately consolidate Allevio's new Tucson practice's physician employment into Allevio's existing employment agreements → Physician employment agreements are subject to state medical board requirements and potentially Stark Law considerations; consolidating employment must be done carefully to avoid creating a compensation arrangement that violates Stark Law prohibitions on physician self-referral; Dr. Lewis flags this to the healthcare attorney before including the employment consolidation in the synergy plan; the attorney confirms: Allevio can employ the physicians under an employment model that qualifies under the Stark Law bona fide employment exception (FMV compensation, written agreement, no productivity bonus tied to referrals); employment consolidation proceeds as planned with attorney-confirmed structure
3. **Adversarial:** The deal team presents a synergy model where $400K of the $500K total synergies are "revenue synergies from cross-referral between the two practices" → Revenue synergies at 80% of total is a red flag; this is a model built on optimism, not evidence; Dr. Lewis applies the probability weights: $400K revenue synergies × 30% = $120K base case; $100K cost synergies × 85% = $85K; net base case: $205K; capitalized at 6.5×: $1.33M; if the acquisition price requires $500K total synergies to justify, it requires the revenue synergies to perform at 100% — which is the theoretical maximum, not the realistic base; Dr. Lewis recommends: either reduce the acquisition price to reflect $205K base case synergies, or structure the deal with earnout tied to cross-referral volume realized (revenue synergy performance drives price); Matt Mathison decides

## Audit Log
All synergy analyses retained with assumptions and source data. Probability weights and rationale retained. AKS review records retained permanently for any referral synergies. Post-close synergy capture tracking retained quarterly. Synergy realization vs. model retained at 12 and 36 months post-close.

## Deprecation
Retire when MBL develops a dedicated M&A or integration function — with Dr. Lewis reviewing synergy analyses for reasonableness and thesis alignment and Matt Mathison approving the synergy basis in acquisition pricing.
