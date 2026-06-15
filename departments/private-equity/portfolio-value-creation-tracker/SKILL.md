---
name: portfolio-value-creation-tracker
description: "Track value creation initiatives at portfolio companies against the investment thesis. Use when the user says 'value creation', 'portfolio improvement', '100-day plan', 'EBITDA improvement', 'portfolio company progress', 'thesis tracking', 'track portfolio initiatives', 'value creation plan', 'portfolio performance vs. thesis', or 'what have we improved'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--mode <100-day|quarterly|annual>]"
---

# Portfolio Value Creation Tracker

Track value creation initiatives at portfolio companies against the investment thesis. The thesis was the reason you bought the company — this skill tracks whether you're executing on it. EBITDA improvement, revenue growth, cost reduction, and management upgrades should all be tracked against specific targets. "Things are going well" is not a portfolio update.

## When to Use
- New investment closed — build the 100-day value creation plan
- Quarterly portfolio review — are we on track vs. thesis?
- Matt Mathison asks "what progress have we made at Allevio this quarter?"
- LP quarterly reporting — value creation section requires specifics
- Pre-exit preparation — document the value creation story for buyers

## Value Creation Framework

```
Three value creation levers in PE:
  1. Revenue growth: More customers, more revenue per customer, new products/markets
  2. Margin improvement: Lower costs, better pricing, operational efficiency
  3. Multiple expansion: Better quality of revenue, market leadership, strategic positioning

MBL primary levers (per investment thesis):
  Allevio: Revenue growth (new clinics, new service lines) + Margin improvement (AI/automation, billing efficiency)
  HIVE: Production optimization + Cost reduction (supply chain, contract renegotiation)
  Column6: Revenue growth (new client channels, programmatic scale) + Platform differentiation

100-day plan principle:
  First 100 days: Stabilize and assess — don't change everything at once
  Month 1: Understand the business deeply; build trust with management
  Month 2: Identify the highest-value initiatives; build detailed plans
  Month 3: Launch the first wave of initiatives; set the measurement baseline
  After 100 days: Execute against the value creation plan; track quarterly
```

## Output Format

```markdown
# Value Creation Tracker — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis (reported to Matt Mathison)
**Investment date:** <date> | **Hold period:** X.X years
**Entry EBITDA:** $X | **Target exit EBITDA:** $X | **Progress:** $X (X% of target)

---

## Thesis Scorecard

| Thesis initiative | Target EBITDA impact | Year 1 target | Actual (YTD) | Status | Risk |
|-----------------|---------------------|--------------|-------------|--------|------|
| AI scheduling automation (Allevio) | +$X | +$X | +$X | ✅ On track | Low |
| New clinic — Phoenix West | +$X | +$X | +$X | ⚠️ Behind — 2 mo delay | Med |
| Billing rate renegotiation | +$X | +$X | +$X | ✅ Complete — $X realized | Low |
| CFO hire + financial reporting upgrade | Operational | Hire by Q2 | Not hired | 🔴 Off track | High |
| Add-on acquisition (tuck-in target) | +$X | LOI by Q3 | In diligence | ⚠️ Delayed Q1 | Med |

**Total target EBITDA improvement (Year 1):** $X
**Actual EBITDA improvement (YTD):** $X (X% of target)

---

## EBITDA Bridge (Entry vs. Current)

| Bridge item | $ Impact | Quarter realized |
|------------|---------|----------------|
| Entry EBITDA | $X | (baseline) |
| + Revenue growth (volume) | +$X | Q1-Q3 |
| + Pricing improvement | +$X | Q2 |
| - Labor cost increase | -$X | Q1-Q4 (offset) |
| + AI automation savings | +$X | Q3 (partial) |
| + Billing rate improvement | +$X | Q2 |
| ± Other (one-time items) | $X | |
| **Current run-rate EBITDA** | **$X** | |
| **vs. Entry EBITDA** | **+$X (+X%)** | |
| **vs. Year 1 target** | **$X short / $X ahead** | |

---

## Initiative Detail

### Initiative 1: AI Scheduling Automation
**Thesis:** Replace manual scheduling → reduce FTE labor by 2 → $X/year savings
**Status:** ✅ On track
**Progress:** Vendor selected (OpenFang integration); pilot running at Clinic A since <date>
**Results to date:** 1.2 FTE equivalent hours saved/week = $X annualized
**Next milestone:** Full rollout to Clinics B-D by <date>
**Risk:** Low — pilot results support full rollout

---

### Initiative 2: New Clinic — Phoenix West
**Thesis:** New clinic adds $X revenue / $X EBITDA in Year 2
**Status:** ⚠️ Behind plan
**Progress:** Lease signed <date> (2 months behind plan); buildout started; staff hiring begun
**Impact of delay:** First revenue pushed from Q3 to Q4; Year 1 EBITDA impact reduced by $X
**Next milestone:** Clinic open by <date>
**Risk:** Medium — lease is signed; execution risk in buildout and hiring timeline

---

### Initiative 3: CFO Hire
**Thesis:** Operational — upgrade financial reporting; support M&A readiness
**Status:** 🔴 Off track
**Progress:** Search started Q1; 3 candidates interviewed; top candidate declined offer
**Impact:** Financial reporting still manual; acquisition integration delayed
**Next milestone:** Re-engage recruiter; target hire by <date> (revised)
**Risk:** High — every quarter without a CFO delays M&A readiness

---

## Financial Performance (Quarter-over-Quarter)

| Metric | Entry (baseline) | Q1 | Q2 | Q3 | Q4 target |
|--------|-----------------|----|----|----|----|
| Revenue | $X | $X | $X | $X | $X |
| Gross margin % | X% | X% | X% | X% | X% |
| EBITDA | $X | $X | $X | $X | $X |
| EBITDA margin | X% | X% | X% | X% | X% |
| Headcount | <N> | <N> | <N> | <N> | <N> |

---

## 100-Day Plan Status (if within first 100 days)

| Day | Milestone | Status | Notes |
|-----|-----------|--------|-------|
| Day 15 | Management team assessment complete | ✅ Done | Gaps: CFO, VP Ops |
| Day 30 | Financial baseline established | ✅ Done | QoE completed |
| Day 45 | Value creation initiatives ranked and sequenced | ✅ Done | Top 5 defined |
| Day 60 | First initiative launched | ✅ Done | AI scheduling pilot |
| Day 90 | Financial reporting upgraded | ⚠️ In progress | CFO search underway |
| Day 100 | Quarterly cadence established | 🔴 Pending | Waiting on CFO |

---

## Matt Mathison Summary

**Allevio value creation: X% of Year 1 EBITDA target achieved.** Primary wins: billing rate renegotiation ($X) and AI scheduling pilot (on track for $X). One concern: CFO hire is 2 months behind — we re-engaged the recruiter and revised target hire date to <date>. New clinic delay pushes $X of Year 1 EBITDA to Year 2. Current run-rate EBITDA: $X (vs. entry $X, +X%). On track to hit Year 1 exit EBITDA target if CFO is hired on revised timeline. Action needed from Matt: [none / approve revised timeline / call with CEO to accelerate CFO search].
```

## Output Contract
- EBITDA bridge always shown — not just a summary; LPs and Matt Mathison need to see what drove the change
- Every initiative has a status, next milestone, and risk level — "in progress" is not a status; what's the next concrete milestone and when?
- Matt Mathison summary always 3-4 sentences maximum — wins, concerns, and what he needs to act on
- 100-day plan tracked explicitly for new investments — the first 100 days set the foundation; don't skip this even if it's uncomfortable to show delays
- HITL required: Dr. Lewis builds and maintains the tracker; portfolio company management confirms data accuracy; Matt Mathison reviews quarterly; any thesis deviation (initiative not working, major delay) escalated to Matt Mathison immediately; initiative spend > $50K requires Matt Mathison approval

## System Dependencies
- **Reads from:** Portfolio company financials (provided by management), initiative status (Dr. Lewis + management), investment thesis (SharePoint/Deals/<Company>/Investment Thesis)
- **Writes to:** Value creation tracker (SharePoint/Portfolio/<Company>/Value Creation); LP quarterly report (value creation section); quarterly portfolio review package
- **HITL Required:** Dr. Lewis maintains; management confirms data; Matt Mathison reviews quarterly; deviations from thesis → Matt Mathison immediately; spend >$50K → Matt Mathison

## Test Cases
1. **Golden path:** Allevio 12-month post-investment review → AI scheduling: on track; billing renegotiation: complete, $X realized; new clinic: open (2 months late); CFO: hired Q3; add-on: LOI signed; EBITDA from $X to $X (+X%); all initiatives tracked with milestones; Matt Mathison summary: strong year, thesis intact, on track for 5-year exit target
2. **Edge case:** A major value creation initiative (AI scheduling) fails in pilot — savings are 20% of projected → immediately escalate to Matt Mathison; revise the EBITDA bridge; identify alternative initiatives to replace the savings gap; don't continue investing in an initiative that the data shows won't hit target; the thesis must be updated to reflect the revised expectation; if the thesis still works at lower savings, document why and continue; if the thesis no longer supports target returns, have the honest conversation with Matt Mathison about options
3. **Adversarial:** Portfolio company management team provides financial data that seems inconsistent with prior periods (revenue appears inflated) → flag to Matt Mathison immediately; request a reconciliation from management; if the discrepancy is material and management can't explain it, engage accountants for a spot audit; never accept financial data from management at face value if it doesn't reconcile; LP reporting depends on accurate portfolio company data; management misrepresentation is a material event

## Audit Log
All value creation updates retained quarterly. Initiative status history retained. EBITDA bridge retained per period. Matt Mathison review of quarterly updates documented.

## Deprecation
Retire when MBL has dedicated portfolio management software (Allvue, Bain Insights, or similar) with automated portfolio company data aggregation and value creation tracking dashboards.
