---
name: hr-entity-hr-rollup
description: "Generate a portfolio-wide HR summary for MBL Partners across all portfolio companies. Use when the user says 'portfolio HR summary', 'HR rollup', 'entity HR summary', 'portfolio people summary', 'cross-entity HR', 'portfolio-wide HR', 'all entities HR', 'MBL HR summary', 'portfolio HR report', 'portfolio talent summary', 'HR across portfolio', 'portfolio attrition', 'portfolio headcount', 'portfolio engagement', 'portfolio people metrics', 'Matt Mathison HR briefing', 'HR briefing for Matt', 'portfolio HR review', 'how are all the entities doing on people', 'portfolio HR risks', 'people risks across portfolio', 'cross-portfolio HR comparison', or 'entity HR comparison'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--audience <matt-mathison|entity-ceos|board>] [--action <build|present|compare>]"
---

# HR Entity Rollup

Generate a portfolio-wide HR summary — aggregating people metrics, risks, and priorities across MBL Partners, Allevio, HIVE Partners, and Column6 — for Dr. Lewis's quarterly briefing with Matt Mathison or for cross-entity analysis. The rollup converts four entity-level HR functions into one portfolio-level talent picture, enabling Matt Mathison to make capital allocation, governance, and talent investment decisions from accurate, consolidated data.

## When to Use
- Quarterly portfolio HR briefing with Matt Mathison
- Matt Mathison requests a cross-entity HR comparison
- An entity acquisition requires baseline HR analysis for the new entity
- Portfolio-level talent risk assessment is needed

## Portfolio HR Rollup Framework

```
ROLLUP STRUCTURE:

  SECTION 1 — PORTFOLIO HEADCOUNT SNAPSHOT:
    Total FTE across all entities (MBL HQ + Allevio + HIVE + Column6)
    FTE by entity; by function (clinical; commercial; ops; finance; admin)
    Open requisitions by entity
    Headcount vs. plan (actual FTE / planned FTE)
    
  SECTION 2 — ATTRITION COMPARISON:
    Voluntary regrettable attrition rate by entity (annualized; rolling 12 months)
    Portfolio average
    Which entity is above threshold (>15% voluntary regrettable)?
    Cost of regrettable attrition (annualized; by entity and portfolio total)
    Year-over-year trend
    
  SECTION 3 — ENGAGEMENT COMPARISON:
    eNPS by entity (latest quarter)
    Portfolio weighted average
    Any entity with eNPS <10 or >15-point drop → flagged
    
  SECTION 4 — COMPENSATION HEALTH:
    % employees below compa-ratio 0.85 (underpaid risk) by entity
    % employees above compa-ratio 1.15 (above-band risk) by entity
    Total off-cycle compensation adjustments in period (by entity)
    Any entity with >3 employees below 0.85 → compensation risk flag
    
  SECTION 5 — TALENT RISKS:
    Top 3 flight risks across portfolio (role; entity; risk level; retention action in place)
    Critical role vacancies (any role that creates business continuity risk if unfilled >30 days)
    Succession gaps (Director+ roles with no documented successor)
    
  SECTION 6 — COMPLIANCE STATUS:
    I-9 compliance: any entity with gap
    Handbook acknowledgments: any entity below 100%
    OIG/LEIE monthly check: Allevio only; must be 100% or flagged
    Open ER investigations: count by entity; no PII
    HIPAA training compliance (Allevio): % complete
    
  SECTION 7 — HR FUNCTION CAPACITY:
    Dr. Lewis capacity allocation by entity (% of HR time)
    Any entity requiring additional HR support?
    HR technology gaps (entities without HRIS)
    
  SECTION 8 — PORTFOLIO HR PRIORITIES (next quarter):
    Top 3 people priorities across portfolio
    Owner; timeline; investment (if budget required)
    
COMPARISON FRAMEWORK (for Matt Mathison decision-making):
  
  ENTITY RISK TIER:
    Green: attrition <15%; eNPS ≥30; compa-ratio health >90% in range; no open ER investigations
    Yellow: any one metric out of range; no critical vacancy; compliance complete
    Orange: 2+ metrics out of range; OR critical vacancy unfilled >30 days; OR open investigation
    Red: attrition >25%; OR eNPS <10; OR critical vacancy unfilled >60 days; OR material compliance gap
    
  USE CASE FOR MATT MATHISON:
    "Which entity needs HR investment most this quarter?"
    "What is the total people cost risk across the portfolio?"
    "Are there systemic people practices that should change across all entities?"
    
PORTFOLIO PRIVACY:
  Individual employee data (names; salaries; performance ratings) is NOT included
  All metrics are aggregate by entity
  ER investigation details are not included (only count and status category)
  Talent risk section uses role title + risk level only (not employee name in written report;
    Dr. Lewis discusses names verbally with Matt Mathison in 1:1 context as needed)
```

## Output Format

```markdown
# Portfolio HR Rollup — Q[X] [Year]
**Prepared by:** Dr. Lewis | **Audience:** Matt Mathison | **Date:** [Date]
**Portfolio FTE:** [X] | **Open reqs:** [X] | **Cost of regrettable attrition (annualized):** $[X]

---

## Entity Risk Summary

| Entity | FTE | Reg. attrition | eNPS | Compa health | Open ER | Risk tier |
|--------|-----|---------------|------|-------------|---------|----------|
| MBL HQ | | | | | | 🟢/🟡/🟠/🔴 |
| Allevio | | | | | | |
| HIVE | | | | | | |
| Column6 | | | | | | |
| **Portfolio** | | | | | | |

---

## Critical Alerts
🔴 [Entity + issue + recommended action]

---

## Top Talent Risks

| Role | Entity | Risk level | Action in place |
|------|--------|-----------|----------------|
| [Role title] | | 🟡/🟠/🔴 | [Retention action] |

---

## Compliance Summary

| Entity | I-9 | OIG/LEIE | Handbook | ER investigations |
|--------|-----|---------|---------|-----------------|
| Allevio | ✅/⚠️ | ✅ 100% / 🔴 [%] | ✅/⚠️ | [Count] open |
| HIVE | ✅/⚠️ | N/A | | |
| Column6 | ✅/⚠️ | N/A | | |

---

## Q[X+1] Portfolio HR Priorities
1. [Priority — entity — owner — by when — investment if any]
2.
3.

---

## Dr. Lewis Capacity Assessment
[Any entity requiring additional HR support this quarter; recommended action]
```

## Output Contract
- The rollup uses aggregate data — no individual employee names, salaries, or performance ratings appear in the written rollup; Matt Mathison receives entity-level metrics and role-level talent risks (by title, not name) in the document; personnel-specific conversations happen verbally in the 1:1 briefing; this maintains employee privacy across the portfolio and prevents the rollup document from becoming a personnel record that creates legal exposure if it is later subpoenaed or disclosed
- Every entity gets a risk tier — the risk tier system (Green/Yellow/Orange/Red) converts complex multi-metric data into a single signal that Matt Mathison can use quickly; Dr. Lewis assigns a risk tier to each entity based on the criteria defined in the framework; an entity that is Orange or Red receives specific recommended actions in the briefing; the tier assignment is Dr. Lewis's judgment call based on the data, not a mechanical formula (a single metrics outlier with a clear, managed remediation plan may stay at Yellow)
- The briefing is 30 minutes maximum — Matt Mathison's time is the scarcest resource in the portfolio; the rollup briefing is structured for 30 minutes: 5-minute entity risk summary (verbal, one sentence per entity); 15-minute deep dive on the 1-2 highest-risk entities; 5-minute compliance status; 5-minute next quarter priorities and resource asks; Dr. Lewis leads the briefing; Matt Mathison asks questions; decisions are recorded; the detailed written report is left with Matt after the meeting for reference
- HITL required: rollup preparation → Dr. Lewis compiles from entity-level HR data; entity CEO briefings occur before the Matt Mathison rollup (so entities are not surprised by portfolio-level reporting of their data); Matt Mathison briefing → Dr. Lewis presents; investment decisions (>$25K) → Matt Mathison approves in briefing or follow-up; entity CEO talent risk notification → Dr. Lewis + entity CEO before Matt Mathison sees names; Allevio OIG/LEIE flag → never included in written rollup; briefed verbally as immediate escalation

## System Dependencies
- **Reads from:** hr-metrics-dashboard (entity-level HR metrics — all entities); hr-attrition-analyzer (entity attrition rates; cost calculations); hr-engagement-analyzer (eNPS by entity); hr-high-performer-identifier (portfolio-level flight risks); hr-compliance-calendar (compliance status — all entities); hr-ops-review (entity-level ops review outputs as inputs); hr-headcount-planner (portfolio headcount vs. plan)
- **Writes to:** Portfolio HR rollup (SharePoint → HR → Portfolio → [Quarter]); Matt Mathison briefing package; entity CEO notification (if their entity risk tier is Orange or Red — before Matt Mathison briefing); Dr. Lewis investment request (if additional HR capacity needed); quarterly portfolio HR trend log
- **HITL Required:** Rollup preparation → Dr. Lewis; entity CEO pre-notification for Orange/Red tiers; Matt Mathison briefing → Dr. Lewis presents; investment >$25K → Matt Mathison approval; OIG/LEIE Allevio flag → verbal briefing only; portfolio-wide compensation change → Matt Mathison

## Test Cases
1. **Golden path:** Q2 portfolio HR rollup. Portfolio FTE: 39 (MBL: 4; Allevio: 22; HIVE: 5; Column6: 8). Entity risk tiers: Allevio Orange (regrettable attrition 18%; care coordinator comp below market; retention action in place — Dr. Lewis + Allevio CEO Q3 comp review approved); HIVE Green; Column6 Yellow (VP Sales flight risk — retention conversation scheduled); MBL Green. Compliance: OIG/LEIE June check 100%. Open ER: 1 (Column6; Moderate; investigation in progress). Matt Mathison briefing: 28 minutes. Decision: approve $42K Allevio comp adjustment. Next quarter priority: care coordinator hiring ramp.
2. **Edge case:** A 5th portfolio entity is acquired mid-year — what happens to the rollup? → Dr. Lewis: "I'll add the new entity to the rollup structure immediately. For the first two quarters, I'll flag the entity as 'baseline establishing' — metrics won't be comparable to established entities until I have 2 quarters of data. I'll do a standalone HR baseline assessment of the new entity within 30 days of close: headcount; current compensation health; compliance status (I-9; handbook; benefits); any existing ER issues I inherit. That baseline becomes their starting risk tier."
3. **Adversarial:** Matt Mathison wants the rollup to include individual employee names for the high performer list → Dr. Lewis: "I'll include the names in our verbal conversation — the written rollup stays aggregate to protect employee privacy. If the rollup document is ever subpoenaed or disclosed in litigation, individual employees named with performance or risk classifications creates legal exposure for the entity. I can email you a separate, restricted-access document with names if you need it for decision-making, with a note that it's personnel-level data. For the main rollup, we keep it by role and risk level."

## Audit Log
Portfolio HR rollup reports retained 3 years. Matt Mathison briefing records retained. Entity CEO pre-notification records retained. Investment decision records retained. Portfolio trend log retained. Talent risk section (verbal-only names) retained separately in Dr. Lewis restricted file.

## Deprecation
Rollup structure reviewed when portfolio entities change (acquisition or divestiture). Risk tier criteria reviewed annually. OIG/LEIE entity exclusion reviewed if non-Allevio entity enters healthcare. Cadence reviewed if Matt Mathison reporting preferences change.
