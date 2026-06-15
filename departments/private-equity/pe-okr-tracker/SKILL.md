---
name: pe-okr-tracker
description: "Track OKRs for the MBL Partners PE operations function. Use when the user says 'PE OKRs', 'fund OKRs', 'private equity goals', 'MBL operations OKRs', 'deal sourcing goals', 'portfolio management OKRs', 'what are we trying to achieve this year', 'fund objectives', or 'PE team priorities'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--period <Q1|Q2|Q3|Q4|annual>] [--year <year>]"
---

# PE OKR Tracker

Track OKRs (Objectives and Key Results) for MBL Partners' private equity operations function. PE operations OKRs span deal sourcing, portfolio management, fund operations, and LP relationships. They hold the PE team accountable to specific outcomes — not just activity — and provide Matt Mathison with a clear view of whether MBL is executing on its fund strategy.

## When to Use
- Quarterly OKR review — how are we tracking?
- Annual planning — set OKRs for the coming year
- Matt Mathison asks "what are we focused on this year and how are we doing?"
- LP asks about MBL's operational priorities — share the OKR framework

## MBL PE Operations OKR Framework

```
4 Objective Areas for MBL PE Operations:
  1. Deal Sourcing: Generate quality deal flow at the right pace for fund deployment
  2. Portfolio Value Creation: Execute the thesis at each portfolio company
  3. Fund Operations: LP relations, reporting, compliance, fund mechanics
  4. Platform Building: Systems, capabilities, processes for scale

OKR grading (standard):
  1.0: Fully achieved
  0.7: Stretch achieved (good outcome)
  0.5: Partially achieved (acceptable)
  < 0.5: Off track
  Target: 0.7 (if always hitting 1.0, the targets aren't ambitious enough)
```

## Output Format

```markdown
# MBL Partners PE OKR Tracker
**Period:** <Q[N] [Year] / Annual [Year]> | **Owner:** Dr. John Lewis
**Reviewed by:** Matt Mathison | **Review date:** <date>

---

## Objective 1: Deal Sourcing — Build a disciplined, high-quality deal pipeline

| Key Result | Target | Actual | Grade | Notes |
|-----------|--------|--------|-------|-------|
| KR 1.1: Deals screened (Stage 1) | 20/quarter | <N> | X.X | |
| KR 1.2: Deals advanced to Stage 2+ (quality) | 4/quarter | <N> | X.X | |
| KR 1.3: LOI submitted | 1 per half-year | <N> | X.X | |
| KR 1.4: New deal source relationships activated | 3 bankers / year | <N> | X.X | |
| KR 1.5: Investment closed | 1 per fund year | <N> | X.X | |

**O1 Grade: X.X** | Status: ✅ On track / ⚠️ Watch / 🔴 Off track
**O1 Commentary:** [2 sentences — wins and what's blocking]

---

## Objective 2: Portfolio Value Creation — Execute the investment thesis at each portfolio company

| Key Result | Target | Actual | Grade | Notes |
|-----------|--------|--------|-------|-------|
| KR 2.1: Combined portfolio EBITDA growth | +15% YoY | +X% | X.X | |
| KR 2.2: Value creation initiatives on track | ≥80% on schedule | X% | X.X | |
| KR 2.3: Allevio EBITDA (specific target) | $X by Q4 | $X | X.X | |
| KR 2.4: HIVE production target (BOE/day) | <N> BOE/day | <N> | X.X | |
| KR 2.5: Column6 revenue growth | +X% | +X% | X.X | |
| KR 2.6: CFO hire at Allevio | By Q2 | Hired Q[N] | X.X | |
| KR 2.7: Add-on acquisition closed | 1 by year-end | Status | X.X | |

**O2 Grade: X.X** | Status: ✅ On track / ⚠️ Watch / 🔴 Off track
**O2 Commentary:** [2 sentences — wins and what's blocking]

---

## Objective 3: Fund Operations — Run a tight, compliant, LP-trustworthy fund

| Key Result | Target | Actual | Grade | Notes |
|-----------|--------|--------|-------|-------|
| KR 3.1: LP quarterly reports — on time | All 4 quarters by deadline | X/4 | X.X | |
| KR 3.2: K-1s delivered by tax deadline | March 15 or extended | ✅ / ❌ | X.X | |
| KR 3.3: Fund compliance filings current | Zero overdue | <N> overdue | X.X | |
| KR 3.4: LP satisfaction (qualitative) | Zero LP concerns raised | <N> concerns | X.X | |
| KR 3.5: Fund accounting reconciled | Monthly within 10 days | X/12 months | X.X | |
| KR 3.6: Capital calls funded on time | 100% LP funding on deadline | X% funded | X.X | |

**O3 Grade: X.X** | Status: ✅ On track / ⚠️ Watch / 🔴 Off track
**O3 Commentary:** [2 sentences — wins and what's blocking]

---

## Objective 4: Platform Building — Build the systems and capabilities to scale MBL

| Key Result | Target | Actual | Grade | Notes |
|-----------|--------|--------|-------|-------|
| KR 4.1: AI/skill library deployed (business_skills repo) | X departments complete | X/X | X.X | |
| KR 4.2: Portfolio dashboard live in Metabase | Q2 | ✅ Q[N] / ❌ Pending | X.X | |
| KR 4.3: Deal pipeline in formal tracker | Q1 | ✅ / ❌ | X.X | |
| KR 4.4: Fund accounting upgraded | Q3 | ✅ / ❌ | X.X | |
| KR 4.5: OpenFang agent deployed for portfolio ops | Q4 | Status | X.X | |
| KR 4.6: Second fund thesis documented | Q4 | Status | X.X | |

**O4 Grade: X.X** | Status: ✅ On track / ⚠️ Watch / 🔴 Off track
**O4 Commentary:** [2 sentences — wins and what's blocking]

---

## OKR Summary Dashboard

| Objective | Grade | Status |
|-----------|-------|--------|
| O1: Deal Sourcing | X.X | ✅ / ⚠️ / 🔴 |
| O2: Portfolio Value Creation | X.X | ✅ / ⚠️ / 🔴 |
| O3: Fund Operations | X.X | ✅ / ⚠️ / 🔴 |
| O4: Platform Building | X.X | ✅ / ⚠️ / 🔴 |
| **Overall** | **X.X** | |

---

## Matt Mathison Summary

**PE operations OKR summary for [Period]:** Overall grade X.X/1.0. Strongest: [O? — reason]. Concern: [O? — specific KR and why]. Portfolio EBITDA is [on track / off plan] at $X combined (+X% from entry). Deal pipeline: <N> active deals, [1 / none] LOI stage. Next quarter priority: [top 1-2 focus areas].

**Matt Mathison action required:** [Approve revised timeline for KR X.X / Discuss O2 KR 2.3 — need strategic input / None]
```

## Output Contract
- Grade always numerical (0-1.0) — qualitative "good/bad" OKR grades are useless; the grade must be a number that enables comparison
- Every off-track KR has a reason and next action — a red flag without a plan is noise; every KR below 0.5 needs "why" and "what changes"
- Portfolio EBITDA always in O2 — this is the core value creation metric; it must be in the OKR, not buried in a separate report
- Platform building OKRs always reflect Dr. Lewis's AI/systems work — MBL's competitive advantage is Dr. Lewis's AI and systems capability; this gets tracked and reported like any other objective
- Matt Mathison action always explicit and limited to 1-2 items — OKR reviews should produce decisions, not just information
- HITL required: Dr. Lewis maintains OKR tracker; Matt Mathison reviews quarterly; annual OKRs set collaboratively with Matt Mathison; OKR revisions mid-year require Matt Mathison approval; portfolio company OKRs within O2 require portfolio company management agreement

## System Dependencies
- **Reads from:** Deal pipeline tracker, portfolio value creation tracker, PE KPI dashboard, fund compliance tracker, fund performance calculator
- **Writes to:** OKR tracker (SharePoint/Strategy/OKRs); quarterly executive update; annual planning materials
- **HITL Required:** Dr. Lewis maintains; Matt Mathison reviews and sets annually; mid-year revisions → Matt Mathison

## Test Cases
1. **Golden path:** Q3 review → O1 Deal Sourcing: 18 screened (0.9), 5 Stage 2 (1.25 above target), 1 LOI (0.5 — late), 4 new sources (1.33), 0 closed (0); O1 grade 0.8; O2 Portfolio: EBITDA +14% (0.93), 75% initiatives on track (0.94), Allevio on target (0.9), HIVE on target (1.0), Column6 at 80% (0.8), CFO hired Q3 (1.0), add-on in diligence (0.5); O2 grade 0.87; O3 Fund Ops: all on track (1.0); O4 Platform: skill library 14 depts (1.0), dashboard live (1.0), deal tracker live (1.0); O4 grade 0.9; Overall: 0.89 — excellent quarter
2. **Edge case:** A KR target was set at the start of the year but circumstances have changed significantly (e.g., the deal target was aggressive given thin market deal flow) → OKR targets should be reviewed at mid-year with Matt Mathison; targets that are no longer achievable due to external factors (market, macro) should be revised vs. carried as permanent red flags; the purpose of OKRs is to drive focus and behavior — not to make the team feel bad about events outside their control; document the reason for any mid-year target revision
3. **Adversarial:** Matt Mathison sets very conservative OKR targets to ensure they look good for LP reporting → challenge this gently: the purpose of OKRs is to drive ambitious performance; if the team always hits 1.0, the targets need to be harder; suggest that 0.7 should feel like success — that means the targets are appropriately ambitious; overly conservative targets that are always hit provide no information and no motivation; make this a candid conversation about the purpose of the OKR process

## Audit Log
OKR grades retained by quarter and year. Target revisions documented with rationale. Matt Mathison reviews documented. Year-end OKR outcomes retained for fund performance narrative.

## Deprecation
Retire when MBL grows to a team size where OKR software (Lattice, Betterworks, or Monday.com OKR module) is warranted to manage cross-team OKRs.
