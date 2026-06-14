---
name: procurement-strategy-advisor
description: "Build a procurement strategy for buying goods and services. Use when the user says 'procurement strategy', 'how should we buy', 'sourcing strategy', 'purchasing strategy', 'how we procure', 'supplier strategy', 'build a procurement function', 'procurement roadmap', 'buying strategy', or 'how should we approach vendors'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--focus <cost|risk|speed|sustainability>]"
---

# Procurement Strategy Advisor

Build a procurement strategy that balances cost efficiency, supply security, quality, and speed for MBL or its portfolio companies. Procurement without strategy defaults to reactive buying — purchasing whatever is available from whoever answers the phone, at whatever price they name. A procurement strategy defines what we buy, from whom, at what price, under what terms, and with what risk controls. For MBL's portfolio, procurement is most material at Allevio (medical supplies, clinical software), HIVE (oil and gas equipment, services), and MBL itself (technology, professional services).

## When to Use
- No formal procurement function exists — building from scratch
- Cost reduction initiative — where is spend going and how can it be optimized?
- Supplier risk is high — too dependent on one vendor
- New product launch — need a supply strategy
- Matt Mathison wants visibility into procurement spend across portfolio

## Procurement Maturity Model

```
Level 1 — Reactive (most PE portfolio companies):
  Buying triggered by need; no standards; multiple buyers; no contracts
  Typical result: 15-25% overpaying; supplier risk unmanaged; no leverage
  
Level 2 — Managed:
  Preferred suppliers defined; PO process exists; basic contracts
  Cost savings: 8-15% vs. reactive
  
Level 3 — Strategic:
  Category management; supplier partnerships; total cost of ownership analysis
  Risk segmentation; sustainability criteria
  Cost savings: 15-25% vs. reactive
  
Level 4 — Optimized:
  Data-driven procurement; supplier co-development; automated workflows
  Continuous improvement; ESG-integrated
  Cost savings: 25%+ vs. reactive (compounding over time)

MBL portfolio target: Level 2 → 3 within 12 months of systematic procurement
```

## Output Format

```markdown
# Procurement Strategy — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Column6>
**Current maturity:** Level <N> | **Target maturity:** Level <N>

---

## Bottom Line

<2-sentence summary: current procurement gap and primary strategic priority>

---

## Spend Analysis

| Category | Annual spend | # of suppliers | Top supplier | % of category spend | Risk |
|---------|------------|--------------|-------------|-------------------|------|
| Medical supplies (Allevio) | $X | 8 | Cardinal Health | 42% | Medium |
| Clinical software (Allevio) | $X | 3 | AdvancedMD | 80% | High |
| Technology (MBL) | $X | 12 | Microsoft | 35% | Low |
| Field services (HIVE) | $X | 6 | [Contractor] | 65% | High |

**Total spend analyzed:** $X
**Top 5 suppliers = X% of total spend**
**Single-source risk:** X categories with 1 supplier

---

## Category Strategy

### Category 1: [Highest spend or highest risk category]

**Strategy type:** Strategic partnership / Preferred supplier / Competitive bid / Self-perform

| Dimension | Current state | Target state |
|---------|-------------|------------|
| Supplier count | 8 | 3 preferred + 2 backup |
| Contract coverage | 20% under contract | 90% under contract |
| Pricing mechanism | Spot / list price | Negotiated annual pricing |
| Payment terms | Net 30 (mixed) | Net 45 standard |
| Total cost basis | Unknown | Total cost of ownership |

**Strategic actions:**
1. Consolidate from 8 suppliers to 3 preferred → 12-18% cost reduction via volume leverage
2. Negotiate MSA with top 2 suppliers (Cardinal Health, McKesson)
3. Establish backup supplier for each critical item (supply continuity)
4. Add annual price review clause to all contracts

---

## Supplier Portfolio Design

```
Strategic suppliers (A-tier — top relationship priority):
  Criteria: >25% of category spend OR no viable substitute
  Relationship: Executive sponsorship; quarterly business reviews; co-development
  Contract: MSA + annual work orders; 2-3 year terms

Preferred suppliers (B-tier — standard buy):
  Criteria: 10-25% of category spend; competitive alternatives exist
  Relationship: Procurement-managed; semi-annual reviews
  Contract: Annual pricing agreement; PO-based

Spot suppliers (C-tier — occasional or trial):
  Criteria: <10% of spend; commodity; easily substitutable
  Relationship: Transactional; no relationship investment
  Contract: PO + standard T&Cs only
```

---

## Procurement Policy Framework

| Policy area | Current state | Recommended standard |
|------------|-------------|---------------------|
| Purchase authority | Ad hoc | <$5K: department head; $5-25K: Dr. Lewis; >$25K: Matt Mathison |
| Competitive bids | Rarely done | Required for >$10K new purchases (min 3 quotes) |
| Contract requirement | Inconsistent | Required for any recurring spend >$5K/year |
| Preferred supplier use | Not enforced | Required for categories with preferred list |
| PO requirement | Ad hoc | Required for all purchases >$1K |

---

## Savings Roadmap

| Initiative | Category | Estimated savings | Timeline | Owner |
|-----------|---------|-----------------|---------|-------|
| Supplier consolidation (medical supplies) | Allevio | $X (15%) | 90 days | Dr. Lewis |
| MSA negotiation (AdvancedMD) | Allevio | $X (8%) | 60 days | Dr. Lewis |
| Tail spend cleanup (C-tier rationalization) | All | $X (5%) | 120 days | Dr. Lewis |
| Payment terms extension (Net 30 → Net 45) | All | $X working capital | 60 days | Dr. Lewis |
| **Total** | | **$X** | | |

---

## Compliance Requirements by Entity

| Entity | Procurement requirements |
|--------|------------------------|
| Allevio | HIPAA BAA required for clinical software vendors; FDA regulations for medical devices |
| HIVE | OSHA compliance for field service contractors; environmental regulations |
| MBL | SOC 2 vendor assessment for technology tools handling client data |
```

## Output Contract
- Spend analysis always first — strategy without data on what we're spending is speculation
- Category strategy always differentiated — not all categories get the same treatment; medical supplies and office supplies require different approaches
- Savings roadmap always quantified and time-bound — procurement strategy without a savings target isn't a strategy
- Compliance requirements always entity-specific — Allevio HIPAA BAA is mandatory; HIVE OSHA is mandatory
- HITL required: Dr. Lewis develops strategy; Matt Mathison approves final strategy and savings targets; supplier negotiations >$25K require Matt Mathison involvement; contract signing by authorized signatory only

## System Dependencies
- **Reads from:** QuickBooks (spend data by vendor), Bill.com (invoice history), vendor contracts (SharePoint/Legal)
- **Writes to:** Procurement strategy (SharePoint/Operations/Procurement); supplier registry; savings tracker
- **HITL Required:** Dr. Lewis leads; Matt Mathison approves strategy and major commitments; contracts signed by authorized signatory

## Test Cases
1. **Golden path:** MBL procurement strategy → spend analysis: $X total; top 3 categories identified; medical supplies (Allevio) highest opportunity; category strategy: consolidate from 8 → 3 preferred suppliers; negotiate MSA with Cardinal Health and McKesson; savings roadmap: $X over 12 months; policy: purchase authority matrix deployed; Matt Mathison approves; implementation begins
2. **Edge case:** HIVE has an emergency equipment need with no approved supplier for the category → approve emergency single-source purchase with post-purchase supplier evaluation; document exception; add the category to the preferred supplier development list; emergency purchases are inevitable but should trigger a procurement improvement, not normalize single-source buying
3. **Adversarial:** A department head is building personal relationships with specific vendors and resisting supplier consolidation → supplier loyalty is the enemy of supplier leverage; personal relationships can exist within a strategic supplier framework (A-tier QBR); the issue is buying outside the preferred supplier program; enforce the PO and preferred supplier policies; the department head's vendor may become a preferred supplier if they win the competitive evaluation

## Audit Log
Procurement strategy versioned annually. Supplier registry maintained. Savings tracking quarterly. Exception purchases documented. Contract copies in SharePoint/Legal.

## Deprecation
Retire when MBL has a dedicated procurement function with a CPO or procurement manager who owns the full category management lifecycle.
