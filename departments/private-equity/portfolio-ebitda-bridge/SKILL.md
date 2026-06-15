---
name: portfolio-ebitda-bridge
description: "Build an EBITDA bridge analysis for a portfolio company. Use when the user says 'EBITDA bridge', 'what drove EBITDA', 'EBITDA walkdown', 'explain the EBITDA change', 'price volume mix', 'EBITDA variance', 'why did EBITDA change', 'earnings bridge', 'profit bridge', or 'EBITDA waterfall'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--period <QoQ|YoY|entry-to-current>] [--compare <prior-period|budget|entry>]"
---

# Portfolio EBITDA Bridge

Build a structured EBITDA bridge — the waterfall analysis that explains the change in EBITDA from one period to another (or from entry to current). An EBITDA bridge answers "why did earnings change?" in a way that separates organic performance from noise. It's the foundation of portfolio review discussions with Matt Mathison and the value creation narrative for LPs.

## When to Use
- Quarterly portfolio review — explain EBITDA movement vs. prior quarter or budget
- Annual review — entry-to-current EBITDA bridge for each portfolio company
- LP quarterly reporting — EBITDA bridge shows value creation progress
- Matt Mathison asks "why is Allevio EBITDA up/down this quarter?"
- Pre-exit preparation — document the full EBITDA improvement story for buyers

## Bridge Structure

```
Standard EBITDA bridge categories:

Volume/Price (Revenue drivers):
  +/- Volume: Change in units/patients/BOE/impressions × prior-period price
  +/- Price: Change in price × current-period volume
  +/- Mix: Revenue shift between higher/lower margin products or services

Cost structure:
  +/- Variable costs: Materials, cost of goods, commissions (move with volume)
  +/- Fixed cost change: Rent, salaries, overhead changes independent of volume
  +/- One-time items: Non-recurring costs (litigation, restructuring, one-time bonuses)
  +/- New initiatives: AI savings, new clinic startup costs, hire costs

Portfolio-specific:
  +/- Acquisitions: EBITDA from acquired entities (if add-on closed)
  +/- Divestitures: EBITDA lost from sold entities
  +/- FX: Currency impact (minimal for MBL portfolio — US-focused)
```

## Output Format

```markdown
# EBITDA Bridge — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison
**Entity:** <Allevio / HIVE / Column6>
**Bridge period:** <Q[N] [Year] vs. Q[N] [Year] / Entry EBITDA vs. Current / Budget vs. Actual>

---

## Summary

| | EBITDA | Margin % |
|-|--------|---------|
| Starting EBITDA (prior period / entry) | $X | X% |
| **Change** | **+/- $X** | **+/- X pp** |
| Ending EBITDA (current period) | $X | X% |

**Net EBITDA change:** +$X (+X%) / -$X (-X%)
**EBITDA bridge verdict:** ✅ Organic improvement / ⚠️ Mixed / 🔴 EBITDA declined

---

## Bridge Waterfall

| Bridge item | $ Impact | Revenue or Cost | Type |
|------------|---------|----------------|------|
| **Starting EBITDA** | **$X** | | |
| | | | |
| **REVENUE DRIVERS** | | | |
| Volume: [Patient visits / BOE / Impressions] | +/- $X | Revenue | Organic |
| Price: [Reimbursement rate / WTI / eCPM] | +/- $X | Revenue | Market/Negotiated |
| Mix: [Service line shift] | +/- $X | Revenue | Organic |
| New revenue: [New clinic / New client] | +$X | Revenue | Growth initiative |
| Revenue subtotal | **+/- $X** | | |
| | | | |
| **COST DRIVERS** | | | |
| Variable costs (with volume) | +/- $X | Cost | Volume-driven |
| Labor cost change | +/- $X | Cost | Fixed/Variable |
| AI/automation savings | +$X | Cost | Initiative |
| Supply chain savings | +$X | Cost | Initiative |
| Startup costs: [New clinic / New hire] | -$X | Cost | One-time / Ramp |
| Overhead change | +/- $X | Cost | Fixed |
| One-time items | +/- $X | Cost | Non-recurring |
| Cost subtotal | **+/- $X** | | |
| | | | |
| **ACQUISITION/DIVESTITURE** | | | |
| Add-on acquisition: [Company] | +$X | Both | Inorganic |
| Add-on subtotal | **+/- $X** | | |
| | | | |
| **ENDING EBITDA** | **$X** | | |

---

## Bridge Visual (ASCII Waterfall)

```
Starting  Volume  Price   AI     Labor   One-   Ending
EBITDA    growth  impact  saves  cost    time   EBITDA

$1.2M     +$0.3M  +$0.1M  +$0.1M -$0.15M -$0.05M $1.5M
  ↑         ↑       ↑       ↑      ↓       ↓       ↑
[████]   [███]   [█]     [█]    [▼▼]    [▼]    [██████]
```

---

## Key Insights

**What drove EBITDA growth:**
1. [Primary driver]: +$X — [1-sentence explanation]
2. [Secondary driver]: +$X — [1-sentence explanation]

**What offset growth:**
1. [Primary headwind]: -$X — [1-sentence explanation — is it temporary or structural?]
2. [Secondary headwind]: -$X

**Organic vs. inorganic:**
| | $ | % of total change |
|-|---|------------------|
| Organic (price, volume, efficiency) | +/- $X | X% |
| Inorganic (acquisitions) | +/- $X | X% |

**Is the EBITDA quality improving or deteriorating?**
- Recurring/predictable: X% of EBITDA (prior: X%) — [better / worse]
- One-time items: $X (prior: $X) — [note if bridge is distorted by non-recurring items]

---

## Value Creation Attribution

| Initiative (from thesis) | EBITDA contribution | % of total improvement |
|------------------------|--------------------|-----------------------|
| AI scheduling automation | +$X | X% |
| Billing rate renegotiation | +$X | X% |
| New clinic revenue | +$X | X% |
| [Other] | +$X | X% |
| **Total value creation initiatives** | **+$X** | **X%** |
| Market/volume (not from initiatives) | +/- $X | X% |
| **Total EBITDA change** | **+/- $X** | **100%** |

**Insight:** X% of EBITDA improvement is attributable to deliberate value creation initiatives (thesis execution); X% is market/volume.
```

## Output Contract
- Bridge always separates organic from inorganic — acquisitions inflate EBITDA; buyers will separate this in diligence; LP reporting should reflect organic performance clearly
- One-time items always called out — normalized EBITDA (excluding one-time items) is what buyers use for valuation; track and disclose one-time items consistently
- Value creation attribution always included — the bridge must connect to the investment thesis; this is the narrative for LP reporting and pre-exit buyer presentation
- EBITDA quality always assessed — higher-quality EBITDA (recurring, predictable) deserves a higher multiple; track quality trend alongside the dollar amount
- HITL required: Dr. Lewis builds; management confirms underlying data; Matt Mathison reviews before LP or external use; any material EBITDA deviation from budget escalated to Matt Mathison immediately

## System Dependencies
- **Reads from:** Portfolio company financials (monthly P&L from management), value creation initiative tracking, budget/prior period comparisons
- **Writes to:** EBITDA bridge analysis (SharePoint/Portfolio/<Company>/Financials); portfolio dashboard (EBITDA section); LP quarterly report (value creation narrative)
- **HITL Required:** Dr. Lewis builds; management confirms data; Matt Mathison reviews; LP version requires Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio Q3 vs. Q2 bridge → Starting: $375K; Volume (patient visits +15%): +$90K; Price (billing rate increase): +$45K; AI scheduling savings: +$30K; Labor cost increase (2 new RNs): -$60K; New clinic startup cost (one-time): -$50K; Ending: $430K (+$55K, +14.7%); Organic improvement: +$105K; offset by new clinic investment -$50K; quality: recurring EBITDA up; value creation attribution: AI + billing rate = $75K of $105K organic = 71%
2. **Edge case:** EBITDA declined despite revenue growth → classic margin compression — separate the bridge into revenue growth (+) and cost expansion (-); identify which cost items drove the margin compression; is it variable (bad — losing operating leverage) or fixed (potentially temporary — investment in growth); distinguish between deliberate investments (new hire for growth) vs. cost control failures (overtime, waste); present the honest analysis to Matt Mathison with a specific plan to address the root cause
3. **Adversarial:** Management presents an EBITDA bridge that excludes significant recurring costs as "one-time" (e.g., ongoing legal costs, annual restructuring charges) → challenge the one-time classification with specific questions: has this cost occurred in prior years? will it occur in future years? if a cost recurs annually, it is not one-time; LP reporting must reflect normalized EBITDA accurately; systematically overstating one-time items creates a credibility gap with LPs and buyers

## Audit Log
All EBITDA bridge analyses retained by period. Source data (management P&L) retained. One-time item classifications documented with rationale. Matt Mathison reviews documented.

## Deprecation
Retire when MBL has financial analytics software that generates EBITDA bridges automatically from portfolio company accounting data with variance explanations.
