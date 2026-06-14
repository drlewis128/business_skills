---
name: data-vendor-evaluator
description: "Evaluate and select data tools and vendors. Use when the user says 'evaluate data tools', 'which BI tool should we use', 'compare data vendors', 'select a data platform', 'ETL tool comparison', 'data tool evaluation', 'should we use Fivetran or Airbyte', 'BigQuery vs Snowflake', 'Metabase vs Looker', 'data vendor RFP', or 'pick a data warehouse'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--category <warehouse|etl|bi|catalog|observability>] [--candidates <tool1,tool2,tool3>]"
---

# Data Vendor Evaluator

Evaluate and select data tools and vendors using a structured scoring framework. Data tool decisions have 3-5 year cost and lock-in implications — the wrong warehouse or ETL choice compounds over time. For MBL, the constraint is small-scale with room to grow: free/low-cost tier now, enterprise capability when portfolio revenue justifies it. Dr. Lewis is the primary operator — tools must be manageable by a solo data function.

## When to Use
- Selecting a new data tool (warehouse, ETL, BI, catalog, observability)
- Current tool is failing — evaluating alternatives
- Portfolio company needs a data stack recommendation
- Vendor contract renewal — should we stay or switch?
- Matt Mathison asks for a recommendation on a data platform

## MBL Data Stack Baseline

```
Current MBL stack (fit to scale/budget):
  Data warehouse: BigQuery (free tier → usage-based; best-in-class SQL)
  ETL: Fivetran (managed connectors; usage-based billing)
  Transformation: dbt Core (open source; SQL-based)
  BI: Metabase (Community Edition; free; Metabase Cloud $500/month when ready)
  Catalog: Manual (data-catalog-builder skill; Atlan/Collibra when needed)
  Observability: Manual (data-quality-auditor + anomaly-detection-planner skills)

Evaluation criteria for MBL tools:
  1. Solo-operator friendly — can Dr. Lewis run it without dedicated ops?
  2. Open source or free tier — cost-efficient at small scale
  3. BigQuery-native — integrates with existing stack
  4. HIPAA-capable — must support BAA when Allevio data is involved
  5. Enterprise upgrade path — can scale with portfolio growth
```

## Evaluation Framework

```
Scoring dimensions (100 points total):
  Fit (25): Does it solve the specific problem?
  Total cost (20): TCO over 3 years at MBL scale
  Operability (20): Can Dr. Lewis run it solo? Maintenance burden?
  Integration (15): Works with BigQuery, dbt, existing stack?
  Compliance (10): HIPAA BAA available? SOC 2 certified?
  Vendor risk (10): Stability, market position, support quality

Score 1-5 per dimension:
  5 = Excellent fit / zero concerns
  4 = Good fit / minor concerns
  3 = Adequate / notable tradeoffs
  2 = Poor fit / significant concerns
  1 = Disqualifying issue
```

## Output Format

```markdown
# Data Vendor Evaluation — <Category>
**Date:** <date> | **Evaluator:** Dr. John Lewis
**Category:** Warehouse / ETL / BI / Catalog / Observability
**Candidates:** <Tool A>, <Tool B>, <Tool C>
**Decision needed by:** <date>

---

## Problem Statement

**What problem are we solving?** <Specific gap or capability needed>
**Current solution:** <What we're doing now and why it's failing>
**Success criteria:** <What does a successful tool look like — metrics, capabilities>

---

## Candidate Evaluations

### Option A: <Tool Name>

| Dimension | Weight | Score (1-5) | Weighted | Notes |
|----------|--------|------------|---------|-------|
| Fit | 25% | 4 | 20 | Solves the core problem; missing X |
| Total cost | 20% | 5 | 25 | Free/open source; $0 at MBL scale |
| Operability | 20% | 4 | 20 | Well-documented; Dr. Lewis can manage solo |
| Integration | 15% | 5 | 25 | Native BigQuery connector |
| Compliance | 10% | 3 | 15 | SOC 2 certified; HIPAA BAA available for paid tier |
| Vendor risk | 10% | 4 | 20 | Established; active community |
| **TOTAL** | **100%** | | **125/160** | **78%** |

**Strengths:**
- <Bullet of what this tool does exceptionally well>
- <Second strength>

**Weaknesses:**
- <Bullet of what this tool fails at or where it creates risk>
- <Second weakness>

**Total cost of ownership (3 years):**
- License: $0 (Community) → $X/month at scale
- Setup: ~Xh Dr. Lewis time (one-time)
- Maintenance: ~Xh/month
- 3-year TCO: $X

---

### Option B: <Tool Name>

| Dimension | Weight | Score (1-5) | Weighted | Notes |
|----------|--------|------------|---------|-------|
| Fit | 25% | 3 | 19 | Partial fit; designed for larger teams |
| Total cost | 20% | 2 | 10 | $X/month; expensive at MBL scale |
| Operability | 20% | 2 | 10 | Requires DevOps skills; not solo-operator friendly |
| Integration | 15% | 4 | 20 | Good BigQuery support |
| Compliance | 10% | 5 | 25 | Full HIPAA BAA; SOC 2 Type II |
| Vendor risk | 10% | 5 | 25 | Enterprise; stable |
| **TOTAL** | **100%** | | **109/160** | **68%** |

---

## Comparison Matrix

| Criterion | Option A | Option B | Option C | Weight |
|-----------|---------|---------|---------|--------|
| Fit | 4 | 3 | 5 | 25% |
| Total cost | 5 | 2 | 3 | 20% |
| Operability | 4 | 2 | 3 | 20% |
| Integration | 5 | 4 | 4 | 15% |
| Compliance | 3 | 5 | 4 | 10% |
| Vendor risk | 4 | 5 | 3 | 10% |
| **Score** | **78%** | **68%** | **74%** | |

---

## Reference Check Summary

| Vendor | Reference contacted | Their use case | Verdict |
|--------|------------------|--------------|---------|
| Option A | [Name at Company] | Similar scale B2B SaaS | Positive — scales well; support responsive |
| Option B | [Name at Company] | Enterprise (larger than MBL) | Neutral — overkill for our scale |

---

## Recommendation

**RECOMMENDED: Option A — <Tool Name>**

**Bottom line:** Option A scores highest (78%) and best fits MBL's constraints: solo-operator, BigQuery-native, free at current scale. The compliance gap (HIPAA BAA only on paid tier) is acceptable because Allevio PHI is not in scope for this tool; if that changes, upgrade to paid tier before connecting Allevio data.

**When to reconsider:** If HIPAA BAA becomes required at free tier, or if BigQuery support degrades in future versions.

**Implementation:**
- [ ] Dr. Lewis evaluates Option A in sandbox (Week 1)
- [ ] HITL: Dr. Lewis presents final recommendation to Matt Mathison (Week 2)
- [ ] Implementation begins (Week 3)
- [ ] Old tool decommission plan (if applicable): 30-day overlap

---

## Avoided Risks

**Why not Option B:** 3x the cost, requires DevOps skills Dr. Lewis doesn't have bandwidth for. The compliance advantage is irrelevant if Allevio PHI never flows to this tool.

**Why not Option C:** Lower score; vendor stability concerns (Series A, small team); risk of EOL.
```

## Output Contract
- Recommendation always explicit and BLUF — "we recommend X because Y" not "all options have merit"
- TCO always included — sticker price vs. total cost of ownership diverge significantly for data tools (implementation time, maintenance burden)
- HIPAA compliance always scored — every data tool that could touch Allevio data must have a BAA path
- Operability always explicitly scored — a tool Dr. Lewis can't manage solo is effectively unusable
- HITL required: Dr. Lewis develops evaluation; Matt Mathison approves final vendor selection for any tool with >$10K/year cost or strategic significance; HIPAA BAA must be confirmed before any Allevio data flows to a new tool; contracts signed only by authorized signatory

## System Dependencies
- **Reads from:** Vendor documentation, pricing pages, reference customer contacts, existing stack compatibility docs
- **Writes to:** Vendor evaluation (SharePoint/Data/Procurement); vendor decision log
- **HITL Required:** Dr. Lewis runs evaluation; Matt Mathison approves final selection (cost threshold: >$10K/year or strategic); HIPAA BAA: Dr. Lewis + legal confirms before Allevio data flows; contract: authorized signatory only

## Test Cases
1. **Golden path:** Evaluate BI tool for MBL (Metabase vs. Looker vs. Tableau) → Metabase: 78% (free, BigQuery-native, solo-operator friendly, HIPAA BAA on paid tier); Looker: 64% ($$$$, requires BI engineer, overkill); Tableau: 70% ($$, good fit, desktop-heavy — less suited to embedded dashboards); Recommendation: Metabase (Community Edition now → Metabase Cloud when revenue justifies); Matt Mathison briefed; approved; implementation begins
2. **Edge case:** All three candidates have compliance gaps (no HIPAA BAA) → if Allevio PHI is in scope, a missing HIPAA BAA is disqualifying regardless of score; expand the candidate list or confirm that PHI won't flow to this tool; document the compliance gap and the mitigation (design so PHI never touches this system)
3. **Adversarial:** A vendor offers a free trial and the team gets attached to it before a formal evaluation → "we're already using it" is vendor lock-in pressure disguised as momentum; run the formal evaluation anyway; if the tool scores well, the evaluation confirms the choice and documents the reasoning; if it scores poorly, the evaluation saves a long-term mistake; the cost of switching is much lower before deep integration than after

## Audit Log
Vendor evaluation retained. Reference check notes retained. Final selection documented with reasoning. Contract and BAA copies retained in SharePoint/Legal.

## Deprecation
Retire when MBL has a vendor management function that owns the full vendor lifecycle (evaluation, procurement, contract, renewal, offboarding) with standardized tooling.
