---
name: fin-ops-erp-evaluator
description: "Evaluate ERP and accounting system options for growing companies. Use when the user says 'ERP', 'accounting system', 'financial system', 'outgrow QuickBooks', 'ERP evaluation', 'ERP selection', 'ERP upgrade', 'migrate from QuickBooks', 'NetSuite', 'Sage Intacct', 'Microsoft Dynamics', 'accounting software', 'financial software', 'system upgrade', 'financial platform', 'ERP comparison', 'ERP migration', 'when to move from QuickBooks', or 'accounting platform'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--current <quickbooks|excel>] [--candidates <netsuite|sage-intacct|dynamics>] [--action <assess|compare|recommend>]"
---

# ERP Evaluator

Evaluate ERP and accounting system options for MBL portfolio companies — assessing when a company has outgrown QuickBooks, comparing the leading mid-market ERP platforms, and making a data-driven recommendation. At PE portfolio companies growing from $1M to $10M+ in revenue, the timing of the ERP migration is a critical infrastructure decision: too early and the migration cost and complexity exceed the benefit; too late and the company is running on spreadsheets and manual workarounds that consume controller time and create reporting errors. Dr. Lewis makes the ERP recommendation as part of the VCP and exit preparation — enterprise-grade financial systems also improve buyer confidence.

## When to Use
- A portfolio company is approaching QuickBooks limits (revenue >$5M, multiple entities, complex reporting)
- A buyer in due diligence asks "what financial system do you use?" and the answer creates risk
- The controller is spending >20% of their time on manual workarounds for QuickBooks limitations
- Preparing for exit — buyers value enterprise-grade financial infrastructure
- A portfolio company has multiple entities or currencies that QuickBooks handles poorly

## ERP Evaluation Framework

```
QuickBooks (QBO) limitations — triggers for ERP evaluation:
  Revenue: QBO handles up to ~$5-10M well; above $10M, reporting complexity increases
  Entities: QBO does not consolidate multiple companies natively; each company is a separate QBO instance
  Users: QBO slows with >25 concurrent users; ERP systems are designed for larger teams
  Inventory: QBO inventory management is basic; ERP systems have robust WMS
  Multi-currency: QBO handles foreign currency but ERPs handle it more robustly
  Advanced reporting: QBO custom reports are limited; ERPs have built-in FP&A reporting
  Audit trail: QBO audit log is basic; ERPs have more robust audit trails required for public companies
  
  TRIGGER INDICATORS — consider ERP when ≥3 of these apply:
  ☐ Revenue >$5M annually
  ☐ More than 2 legal entities to consolidate
  ☐ Controller spending >15 hours/month on reporting workarounds
  ☐ Investor or board requiring GAAP-consolidated financials across entities
  ☐ Exit planned within 18-24 months (buyer will assess financial infrastructure)
  ☐ Rapid growth — controller struggling to keep up with monthly close
  ☐ Sophisticated reporting requirements (multi-dimensional P&L, cost center allocations)
  
ERP options for PE portfolio companies:

  NETSUITE (Oracle):
    Best for: Multi-entity, multi-currency, complex reporting; PE-backed companies
    Strengths: #1 ERP for PE portfolio companies; native consolidation; strong FP&A
    Weaknesses: Expensive ($30,000-$80,000/year for small implementations); complex implementation
    Implementation time: 3-6 months
    Cost: $3,000-$8,000/month licensing; $50,000-$150,000 implementation
    MBL fit: Best for companies >$5M revenue with multiple entities
    
  SAGE INTACCT:
    Best for: Healthcare, nonprofits, financial services; mid-market companies
    Strengths: Strong healthcare industry module; AICPA preferred; good for Allevio
    Weaknesses: Less commonly known than NetSuite; fewer implementation partners
    Implementation time: 2-4 months
    Cost: $1,500-$5,000/month; lower implementation cost than NetSuite
    MBL fit: Strong fit for Allevio (healthcare-specific features)
    
  MICROSOFT DYNAMICS 365 BUSINESS CENTRAL:
    Best for: Microsoft ecosystem companies; mid-market
    Strengths: Native integration with Teams, Outlook, SharePoint (MBL's existing stack); lower total cost
    Weaknesses: Less PE/investor-specific; implementation varies widely by partner
    Implementation time: 3-5 months
    Cost: $70/user/month; integration costs vary
    MBL fit: Good for companies heavily embedded in Microsoft 365
    
  QUICKBOOKS ONLINE ADVANCED:
    Best for: Companies not quite ready for full ERP but needing more than standard QBO
    Strengths: Familiar to the controller; lower cost; no implementation project
    Weaknesses: Still not a true ERP; still limited consolidation
    Cost: ~$235/month
    MBL fit: Bridge solution for 12-18 months while preparing for a full ERP migration
    
  STAY ON QBO (optimized):
    Best for: Companies with <$5M revenue, single entity, simple reporting needs
    Action: Optimize QBO configuration; add Power BI or Fathom for better reporting; no migration
    When: Trigger indicators = 0-2 of the checklist above
    
ERP selection criteria (weighted scoring):

  | Criterion | Weight | Description |
  |-----------|--------|-------------|
  | Multi-entity consolidation | 25% | Can it consolidate MBL entities? |
  | Healthcare functionality | 20% | Relevant for Allevio |
  | Implementation time | 15% | How long until it's live? |
  | Total 5-year cost | 20% | Licensing + implementation + ongoing support |
  | PE/investor reporting | 10% | Native LP and board reporting |
  | Microsoft integration | 10% | Outlook, Teams, SharePoint |
  
  For MBL at the portfolio level:
    Current situation: 3 separate QBO instances (Allevio, HIVE, Column6)
    Immediate need: Better portfolio-level reporting (currently manual)
    Long-term (exit in 3-5 years): Allevio should migrate to Sage Intacct or NetSuite for exit credibility
    HIVE: May stay on QBO longer given the entity's simpler financial structure
    Column6: NetSuite if it grows significantly; QBO Advanced as a bridge
```

## Output Format

```markdown
# ERP Evaluation — [Entity]
**Date:** [Date] | **Current system:** QuickBooks Online [tier]
**Evaluation trigger:** [Revenue growth / Multiple entities / Controller capacity / Exit prep]
**Evaluated by:** Dr. Lewis

---

## Trigger Checklist

| Indicator | Present? |
|-----------|---------|
| Revenue >$5M annually | ✅/❌ [$[X]M] |
| >2 legal entities to consolidate | ✅/❌ |
| Controller >15 hrs/month on workarounds | ✅/❌ |
| Board requiring GAAP consolidation | ✅/❌ |
| Exit planned in <24 months | ✅/❌ |
| Rapid growth / close difficulty | ✅/❌ |
| Complex reporting requirements | ✅/❌ |

**Trigger score:** [N]/7 — **[Upgrade now / Plan for 12-18 months / Stay on QBO]**

---

## Platform Comparison

| Platform | Multi-entity | Healthcare | 5-yr total cost | Implementation | MBL fit | Score |
|---------|------------|-----------|----------------|---------------|--------|-------|
| NetSuite | ✅ Excellent | ✅ Good | $250K-$500K | 5 months | ⭐⭐⭐⭐ | |
| Sage Intacct | ✅ Good | ✅ Excellent | $150K-$300K | 3 months | ⭐⭐⭐⭐⭐ | |
| Dynamics 365 BC | ✅ Good | ⚠️ Limited | $100K-$250K | 4 months | ⭐⭐⭐ | |
| QBO Advanced | ❌ Limited | ❌ Limited | $15K | 0 (no migration) | ⭐⭐ | Bridge only |

---

## Recommendation

**Recommended platform:** [Sage Intacct / NetSuite / QBO Advanced / Stay on QBO]
**Rationale:** [2-3 sentences]
**Estimated timeline:** [Procurement: [Date]; Implementation: [N] months; Go-live: [Date]]
**Estimated investment:** $[X]K over 5 years

---

## Implementation Considerations

**Key risks:** [Data migration from QBO; controller training; parallel run period recommended]
**Success factors:** [Executive sponsor (CEO); dedicated internal project lead; QBO-to-ERP migration specialist]
**Matt Mathison approval:** Required for any investment >$25K

---

## Decision Required

**Next step:** [Get 3 ERP vendor demos (NetSuite, Sage Intacct, Microsoft); comparative pricing; final recommendation to CEO and Matt Mathison]
**Timeline to decide:** [Date — before [trigger event]]
```

## Output Contract
- Timing matters more than the platform choice — the right time to migrate to an ERP is 12-18 months before the company genuinely needs it; migrating during a period of rapid growth or financial stress compounds the implementation challenges; Dr. Lewis evaluates the trigger checklist and recommends ERP migration when the company is stable and growing but has 12-18 months before the limitations of QBO become operationally critical; the worst time to start an ERP implementation is when the CEO is complaining that the current system is broken — by then, the urgency will create implementation shortcuts that compromise the outcome
- Sage Intacct is the recommended starting point for Allevio — healthcare companies benefit significantly from Sage Intacct's healthcare-specific features (payer tracking, revenue cycle integration, HIPAA compliance support); Sage Intacct is also endorsed by the AICPA and has a lower total cost of ownership than NetSuite for single-entity healthcare companies; Dr. Lewis recommends Sage Intacct for Allevio when the trigger score reaches 4+; for a multi-entity MBL consolidation play, NetSuite may be preferred for its stronger multi-entity consolidation
- Get 3 vendor demos and a real pricing quote before committing — ERP vendor pricing is highly negotiable; list prices are not market prices; Dr. Lewis gets competitive quotes from at least 3 vendors before recommending any specific platform; during demos, the key questions are: (1) Can you show me the chart of accounts migration from QBO? (2) Can you show me consolidated financials across 2 entities? (3) What does a controller training program look like? (4) What is the implementation partner's experience with healthcare or PE portfolio companies?
- HITL required: Dr. Lewis conducts the ERP evaluation and makes the recommendation; CEO approves the ERP project (operational decision); Matt Mathison approves the investment (any ERP project >$25K requires Matt Mathison approval, and all ERP projects will exceed this threshold); Dr. Lewis manages the implementation project if the decision to proceed is made

## System Dependencies
- **Reads from:** Current QBO configuration and limitations; controller time tracking (workarounds); business financials (revenue, entity count); exit timeline (strategy-data-room-builder); vendor demos and pricing proposals
- **Writes to:** ERP evaluation report (SharePoint/Finance/<Company>/Systems/ERPEvaluation/); CEO/Matt Mathison recommendation brief; vendor RFP (if formal procurement); implementation project charter (if approved)
- **HITL Required:** Dr. Lewis conducts evaluation; CEO approves project scope; Matt Mathison approves investment >$25K; implementation project managed by Dr. Lewis or designated project lead

## Test Cases
1. **Golden path:** Allevio ERP evaluation — revenue reached $4.8M, 2 clinics, exit in 3 years → Trigger checklist: Revenue $4.8M (approaching $5M) ⚠️; 1 entity ❌; controller <15 hrs/month workarounds ❌; board wants consolidated P&L for exit ✅; exit in ~36 months ✅; growth is steady ✅; reporting is manageable ❌; trigger score: 4/7 — plan for 12-18 months; Dr. Lewis evaluates: Sage Intacct is the recommendation (healthcare, AICPA endorsement, lower cost for single entity); 3-year timeline: implement in 12 months (go-live 18 months before exit); Dr. Lewis gets demos from Sage Intacct, NetSuite, and QBO Advanced; Sage Intacct demo impresses with healthcare revenue cycle tracking; NetSuite is too complex and expensive for single-entity Allevio; recommendation: Sage Intacct; 5-year cost estimate $180K; CEO approves; Matt Mathison approves; implementation partner engaged; go-live target 12 months out
2. **Edge case:** CEO asks "can we just stay on QuickBooks for the exit?" → Dr. Lewis evaluates: a buyer in healthcare M&A will assess the financial infrastructure during due diligence; a $5M+ healthcare company on QBO raises questions about reporting capability and scalability; if the exit is for a strategic buyer (a larger healthcare system), they may be buying the clinical operation and may not care about the financial system; if the exit is to another PE buyer, the buy-side PE firm will likely require a migration to ERP as part of their 100-day plan (which they'll pay for through the purchase price); Dr. Lewis models the cost: staying on QBO risks a $150K-$250K purchase price adjustment (the buyer's ERP migration cost); migrating proactively costs ~$180K but is completed before exit and may increase the buyer's confidence; on balance, Dr. Lewis recommends migrating proactively if the exit is >18 months away; staying on QBO if the exit is <12 months away (insufficient time to implement cleanly)
3. **Adversarial:** A software vendor's representative reaches out directly to the CEO and says "we can implement NetSuite in 6 weeks for $40,000" → Dr. Lewis investigates the claim: a 6-week NetSuite implementation for a healthcare company is not realistic for a properly configured system with data migration from QBO; legitimate NetSuite implementations take 3-6 months; a "6-week implementation" likely means a bare-minimum configuration with minimal data migration, minimal training, and potentially incorrect chart of accounts and reporting; Dr. Lewis asks the vendor for references from healthcare companies they've implemented NetSuite for in 6 weeks; if references are unavailable or the companies are very simple, Dr. Lewis cautions the CEO: "The 6-week claim is a risk indicator. A cheap implementation leads to a broken system that costs 3× more to fix than to do right. Let me get a second proposal from a different NetSuite partner before we decide." Dr. Lewis protects the CEO from vendor pressure and manages the evaluation process

## Audit Log
ERP evaluation reports retained. Vendor demo notes retained. Pricing proposals retained. CEO and Matt Mathison approval documentation retained. Implementation project records retained. Post-implementation retrospective retained.

## Deprecation
Retire when the portfolio company has implemented an enterprise financial system (NetSuite, Sage Intacct, or equivalent) and has a CFO managing the system — with Dr. Lewis advising on any future system changes.
