---
name: portops-portfolio-value-builder
description: "portfolio value builder, value creation tracking, revenue growth initiatives, margin expansion tracking, operational efficiency, M&A optionality, IRR tracking per investment, LP communication narrative, portfolio value creation, Matt LP letter narrative, annual value creation review, portfolio IRR, investment value tracking, value creation initiatives, EBITDA growth tracking, portfolio value report, MBL portfolio value, investment performance narrative, LP annual communication, portfolio returns story"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "reporting period (annual/quarterly), entity or 'all', LP communication mode (Y/N)"
---

# Portfolio Value Builder

This skill tracks and narratizes value creation initiatives across all MBL portfolio entities — revenue growth, margin expansion, operational efficiency, and M&A optionality — and maintains IRR tracking per investment for LP reporting. It produces Matt Mathison's annual LP communication narrative and value creation story, grounded in THRIVE values and real financial performance data.

## When to Use

- Annual LP letter value creation narrative for Matt's review and signature
- Quarterly value creation initiative progress review
- IRR and MOIC tracking update for any portfolio entity
- Pre-sale or exit preparation: building the value creation story for a potential acquirer

## Portfolio Value Builder Framework

```
PORTFOLIO VALUE BUILDER — [PERIOD YEAR]
Prepared by: Dr. John Lewis | For: Matt Mathison + LP Distribution (post-approval)

═══════════════════════════════════════════════════════
VALUE CREATION INITIATIVE TRACKER
═══════════════════════════════════════════════════════

INITIATIVE CATEGORIES:
  [R] Revenue Growth   [M] Margin Expansion
  [E] Operational Efficiency   [A] M&A Optionality

─── ALLEVIO ─────────────────────────────────────────
[R] Employer portfolio expansion
    Initiative: [description] | Status: [🟢/🟡/🔴]
    Q[X] Target: [X] employers | Actual: [X] | Δ: [+/-X]
    ARR Impact: $[X]M | Run Rate: $[X]M

[M] PMPM optimization
    Initiative: [description] | Status: [🟢/🟡/🔴]
    PMPM Target: $[X] | Actual: $[X] | Δ: [+/-X]%
    Revenue Impact: $[X]K

[E] RCM efficiency (DSO reduction)
    Initiative: [description] | Status: [🟢/🟡/🔴]
    DSO Target: 35-40d | Actual: [X]d | Cash Impact: $[X]K

─── HIVE PARTNERS ───────────────────────────────────
[R] Production volume growth
    Initiative: [description] | Status: [🟢/🟡/🔴]
    BBL/day Target: [X] | Actual: [X] | Revenue Δ: $[X]K

[M] Lifting cost reduction
    Initiative: [description] | Status: [🟢/🟡/🔴]
    Cost/BOE Target: $[X] | Actual: $[X] | Margin Δ: [X]%

[A] Acquisition pipeline (WTI-gated)
    LOIs in pipeline: [X] | Total acreage: [X]
    Gate status: [OPEN/PAUSED] | Pipeline value: $[X]M

─── COLUMN6 / SIPROCAL ──────────────────────────────
[R] IO pipeline and agency expansion
    Initiative: [description] | Status: [🟢/🟡/🔴]
    IO Target: [X] | Actual: [X] | Rev Impact: $[X]M

[M] Gross margin improvement
    Initiative: [description] | Status: [🟢/🟡/🔴]
    GM Target: ≥35% | Actual: [X]% | Status: [🟢/🔴]

─── MBL HOLDCO ──────────────────────────────────────
[E] AI orchestration ROI
    Initiative: Krista.ai Phase [X] | Status: [🟢/🟡/🔴]
    Time saved: [X] hrs/week | Cost avoided: $[X]K/yr
    Portfolio rollout: [entities deployed]

═══════════════════════════════════════════════════════
IRR TRACKING PER INVESTMENT
═══════════════════════════════════════════════════════
Entity         | Entry Date | Invested | Current Val | MOIC | IRR
-------------- |------------|----------|-------------|------|-----
Allevio        | [date]     | $[X]M    | $[X]M       | [X]x | [X]%
HIVE Partners  | [date]     | $[X]M    | $[X]M       | [X]x | [X]%
Column6        | [date]     | $[X]M    | $[X]M       | [X]x | [X]%

Portfolio Total: Invested $[X]M | Current $[X]M | MOIC [X]x | IRR [X]%

VALUATION METHODOLOGY:
  Allevio: [EBITDA ×X multiple / ARR ×X multiple]
  HIVE: [NAV / DCF / comparable transactions]
  Column6: [Revenue ×X / EBITDA ×X]
  Last mark: [date] | Next mark: [date]

═══════════════════════════════════════════════════════
LP COMMUNICATION NARRATIVE (MATT MATHISON VOICE)
═══════════════════════════════════════════════════════
HEADLINE: [One-sentence portfolio value creation summary]

PARAGRAPH 1 — PERFORMANCE:
[2-3 sentences: MOIC, IRR, value created vs invested]

PARAGRAPH 2 — ENTITY HIGHLIGHTS:
[2-3 sentences: top value creation wins per entity]

PARAGRAPH 3 — FORWARD LOOK:
[2-3 sentences: next-year priorities, value creation roadmap]

THRIVE ALIGNMENT NOTE:
[1 sentence connecting value creation story to THRIVE values]

═══════════════════════════════════════════════════════
VALUE CREATION SUMMARY — SCORECARD
═══════════════════════════════════════════════════════
Total initiatives tracked: [X]
On track (🟢): [X] | At risk (🟡): [X] | Off track (🔴): [X]
Estimated annual value created: $[X]M
LP narrative status: [Draft / Matt Review / Approved / Distributed]
```

## Output Format

```markdown
## PORTFOLIO VALUE CREATION — [YEAR]

**Total Portfolio:** MOIC [X]x | IRR [X]% | Value Created: $[X]M

| Entity | Top Initiative | Status | IRR |
|--------|---------------|--------|-----|
| Allevio | [initiative] | 🟢/🟡/🔴 | [X]% |
| HIVE | [initiative] | 🟢/🟡/🔴 | [X]% |
| Column6 | [initiative] | 🟢/🟡/🔴 | [X]% |

**LP Narrative Status:** [Draft / Approved / Sent]
**Matt Sign-off Required:** [Y/N]
```

## Output Contract

- IRR and MOIC figures used in LP communications must be sourced from QuickBooks-verified financial data and the most recent valuation mark, not from management projections or unaudited estimates. Any IRR figure presented to LPs must include the valuation methodology and mark date so LPs can assess recency and assumptions. Matt Mathison must sign off before any LP communication containing performance figures is distributed.
- The LP narrative is written in Matt Mathison's voice — first person, direct, confident, BLUF — and must pass the THRIVE filter before distribution. Truth means no inflated metrics; Integrity means disclosing underperforming initiatives alongside wins; Value means connecting every initiative to a specific financial outcome. A narrative that omits underperforming areas fails the Truth standard.
- Value creation initiatives rated 🔴 must not be hidden in LP communications; instead, they must be framed with the corrective action underway and the expected recovery timeline. Selective disclosure that presents only green initiatives to LPs is a breach of fiduciary duty and contradicts the THRIVE Truth value.

## System Dependencies

**Reads from:** QuickBooks (financial performance), Covercy (HIVE production/LP data), AdvancedMD aggregate (Allevio), Column6 internal reporting, Monday.com (initiative tracking)
**Writes to:** SharePoint /MBL/Portfolio/Value-Creation/, LP communication archive, Matt Mathison for signature
**HITL Required:** Dr. Lewis compiles and audits; Matt Mathison reviews and signs all LP narrative and IRR communications before distribution

## Test Cases

- **Golden path:** All entities with positive MOIC, 3 green initiatives per entity, clean LP narrative drafted — Matt reviews, approves, distributes within 2 business days
- **Edge case:** One entity showing MOIC below 1.0x — skill includes in LP narrative with transparent framing, corrective actions, and recovery timeline rather than omitting or minimizing
- **Adversarial:** User attempts to generate LP narrative using projected IRR from an unapproved model — skill flags, substitutes last verified mark, and routes to Dr. Lewis for data source confirmation before proceeding

## Audit Log

All value creation reports and LP narrative drafts are version-controlled in SharePoint with edit history. Each IRR figure is annotated with data source, valuation date, and methodology. LP distributions are logged with Matt's signature timestamp, distribution list, and delivery confirmation. Annual audits cross-reference LP communications against QuickBooks actuals to verify accuracy.

## Deprecation

This skill is retired when MBL deploys a portfolio management platform (e.g., Juniper Square, Allvue) that auto-generates IRR and MOIC reporting with LP communication workflows; in that case, this skill is replaced by an output-validation and Matt-voice-narrative skill. Requires 90-day parallel operation and Matt Mathison approval for deprecation.
