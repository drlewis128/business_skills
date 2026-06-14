---
name: sustainability-supply-chain-tracker
description: "Track and improve supply chain sustainability and ESG metrics. Use when the user says 'supply chain sustainability', 'ESG supply chain', 'sustainable procurement', 'supply chain carbon footprint', 'green supply chain', 'supplier ESG', 'sustainable sourcing', 'supply chain emissions', 'Scope 3 emissions', or 'environmental procurement'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|all>] [--focus <emissions|diversity|labor|all>]"
---

# Sustainability Supply Chain Tracker

Track and improve supply chain sustainability across MBL's portfolio — Scope 3 emissions, supplier labor practices, packaging waste, and sustainable sourcing. Supply chain sustainability is increasingly important for enterprise customer relationships, LP expectations, and regulatory requirements. For MBL, Scope 3 (supply chain) emissions are the largest component of the portfolio's carbon footprint, and they're entirely outside MBL's direct control — which is why supplier engagement matters.

## When to Use
- LP or stakeholder ESG reporting requires supply chain sustainability data
- Enterprise customer asks for supply chain sustainability questionnaire
- Matt Mathison wants an ESG baseline for MBL's portfolio
- Portfolio company acquisition — assess ESG profile
- Building a sustainable procurement program
- Regulatory requirement emerging in portfolio company's industry

## Sustainability Framework

```
Three pillars of supply chain sustainability:
  Environmental (E):
    Scope 3 emissions: From supplier production, inbound freight, packaging
    Packaging waste: Can materials be reduced, reused, or recycled?
    Chemicals: Hazardous material reduction in supply chain
    Energy: Supplier energy source (renewable vs. fossil)

  Social (S):
    Labor standards: Supplier fair labor practices; no forced or child labor
    Safety: Supplier OSHA compliance; injury rates
    Supplier diversity: MBE, WBE, SDVOB spend (see supplier-diversity-tracker)
    Community: Supplier community impact

  Governance (G):
    Supplier code of conduct: Do suppliers have one? Do they comply?
    Anti-corruption: No facilitation payments, bribery
    Transparency: Supplier willing to disclose practices and data
```

## Output Format

```markdown
# Supply Chain Sustainability Report — <Entity / Portfolio>
**Period:** <Year> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Portfolio>
**Total spend analyzed:** $X

---

## ESG Summary

| Dimension | Status | Score (1-5) | Key finding | Action |
|---------|--------|------------|------------|--------|
| Environmental | 🟡 Developing | 2.5 | Scope 3 data not yet collected | Supplier survey Q3 |
| Social | 🟡 Developing | 3.0 | Supplier diversity at 12% | Diversity program launched |
| Governance | 🟡 Developing | 3.5 | 60% of suppliers have code of conduct | Add to onboarding checklist |

**Baseline established:** Yes / No
**Reporting framework:** GRI / SASB / TCFD / CDP / Custom

---

## Environmental: Scope 3 Emissions

### Scope 3 Categories Relevant to MBL

| Category | Description | Data source | Estimated emissions |
|---------|-----------|------------|-------------------|
| Cat 1: Purchased goods and services | Upstream supplier production | Supplier data / spend-based estimate | <N> tCO2e |
| Cat 4: Upstream transportation | Freight to MBL sites | Carrier data / weight-distance calculation | <N> tCO2e |
| Cat 12: End-of-life treatment | Product disposal | Product type / disposal method | <N> tCO2e |

**Scope 3 estimation method:**
- Spend-based: $ spend × emission factor per $ (least accurate; best for baseline)
- Activity-based: Freight weight × distance × mode emission factor (moderate accuracy)
- Supplier-specific: Supplier provides their Scope 1+2 data (most accurate; for Tier A suppliers)

**Current approach:** Spend-based estimate for baseline; transitioning to activity-based for freight; Tier A suppliers asked for actual data

### Freight Emissions

| Mode | Annual weight (metric tons) | Distance (km avg) | Emission factor | tCO2e |
|------|---------------------------|-----------------|----------------|-------|
| Parcel (air) | <N> | <N> | 1.26 kg CO2/kg·1000km | <N> |
| Parcel (ground) | <N> | <N> | 0.13 kg CO2/kg·1000km | <N> |
| LTL | <N> | <N> | 0.10 kg CO2/kg·1000km | <N> |
| FTL | <N> | <N> | 0.08 kg CO2/kg·1000km | <N> |
| Air freight | <N> | <N> | 1.26 kg CO2/kg·1000km | <N> |
| **Total freight** | | | | **<N> tCO2e** |

**Reduction actions:**
- Consolidate orders to reduce parcel frequency
- Shift air freight to ground where lead time allows
- Prioritize suppliers closer to our facilities for high-weight categories

---

## Social: Supplier Labor Standards

### Supplier Code of Conduct Assessment

| Tier | Suppliers assessed | Have code of conduct | Data verified | Concerns identified |
|------|------------------|---------------------|--------------|-------------------|
| A (Strategic) | <N> | X% | X% | <N> concerns |
| B (Preferred) | <N> | X% | X% | <N> concerns |
| C (Spot) | <N> | X% (sample) | N/A | Not assessed |

**Minimum labor standards required from Tier A/B suppliers:**
- No forced or child labor
- Legal wages and benefits in country of operation
- Safe working conditions (OSHA equivalent)
- No discrimination; freedom of association

**High-risk countries flagged:** [Any supplier operations in high labor-risk countries → enhanced due diligence required]

---

## Governance: Supplier Code of Conduct

**MBL Supplier Code of Conduct:**
Tier A and B suppliers are required to:
1. Comply with all applicable laws and regulations
2. Maintain ethical business practices (no corruption, bribery)
3. Provide safe working conditions
4. Uphold fair labor standards
5. Provide accurate and transparent sustainability data when requested
6. Cooperate with MBL sustainability assessments

**Code of Conduct signature rate:** X% of Tier A/B suppliers (target: 100%)
**Suppliers non-compliant:** <List> — escalation plan: [discuss at next QBR; require sign-off within 30 days or relationship review]

---

## Sustainability Action Plan

| Action | Category | Timeline | Owner | Expected impact |
|--------|---------|---------|-------|---------------|
| Supplier survey: collect Scope 3 data from Tier A suppliers | Environmental | Q3 | Dr. Lewis | Baseline Scope 3 |
| Add Code of Conduct to supplier onboarding checklist | Governance | 30 days | Dr. Lewis | 100% coverage |
| Reduce air freight by 50% (substitute ground for non-urgent) | Environmental | 90 days | Dr. Lewis | -X tCO2e/year |
| Increase diverse supplier spend to 20% | Social | 12 months | Dr. Lewis | Diversity target |
| Packaging reduction: evaluate sustainable alternatives for top 3 categories | Environmental | 6 months | Dr. Lewis | -X lbs waste |
```

## Output Contract
- Scope 3 always at least estimated — "we don't have the data yet" is acceptable only if followed by a plan to get it; spend-based estimation is a valid starting point
- Supplier Code of Conduct always included in governance — it's the foundation of supply chain ethics governance
- Freight emissions always tracked separately — freight is the most controllable part of supply chain emissions and the most actionable
- Actions always specific and time-bound — "improve sustainability" is not a plan; "reduce air freight by 50% by Q4" is a plan
- HITL required: Dr. Lewis manages sustainability program and reporting; LP ESG reporting reviewed by Dr. Lewis + Matt Mathison before submission; supplier Code of Conduct non-compliance escalated to Dr. Lewis for supplier relationship decision; any sustainability claims reviewed for accuracy before external reporting

## System Dependencies
- **Reads from:** Freight records (logistics coordinator), supplier data, spend analysis (QuickBooks), supplier performance tracker
- **Writes to:** Sustainability report (SharePoint/Strategy/ESG); supplier registry (CoC status); LP reporting
- **HITL Required:** Dr. Lewis manages; Matt Mathison reviews LP ESG reporting; external sustainability claims reviewed for accuracy; CoC non-compliance → Dr. Lewis supplier decision

## Test Cases
1. **Golden path:** Annual supply chain sustainability baseline for MBL portfolio → Environmental: Scope 3 spend-based estimate: X tCO2e; freight: Y tCO2e (air freight is 40% despite being 5% of weight — immediate action); Social: diversity 12% (plan to 20%); Governance: 60% of Tier A/B suppliers have CoC (add to onboarding checklist); Action plan: air freight reduction, diversity program, CoC rollout; Matt Mathison reviews; included in LP annual report
2. **Edge case:** LP requires detailed Scope 3 reporting but MBL doesn't have activity-based data → be transparent: disclose that current Scope 3 data is spend-based estimation; present accuracy limitations; provide the plan to transition to activity-based data within 12 months; LPs understand that supply chain emissions data collection is a multi-year journey; a credible plan with a spend-based estimate is more credible than a precise-looking number with unclear methodology
3. **Adversarial:** A supplier refuses to sign the Code of Conduct ("it creates liability for us") → a legitimate supplier can sign a standard code of conduct; refusal may indicate labor or ethics practices they're not willing to disclose; for Tier C suppliers, acceptable to waive; for Tier A/B suppliers, escalate: discuss at QBR; if they still refuse, consider whether to continue the relationship or accept the risk with documentation; the CoC is a standard business requirement, not unusual liability

## Audit Log
Sustainability reports versioned annually. Supplier CoC signed copies retained. Scope 3 calculation methodology documented. LP reporting retained. Freight emission calculations retained.

## Deprecation
Retire when MBL has a dedicated ESG team or uses a sustainability platform (Ecovadis, Sedex, or similar) with automated supplier assessment and Scope 3 tracking.
