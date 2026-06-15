---
name: pe-deal-screener
description: "Screen a potential PE investment against MBL's investment thesis and criteria. Use when the user says 'screen this deal', 'deal screening', 'should we pursue this', 'initial deal review', 'pass or pursue', 'deal thesis', 'does this fit our criteria', 'quick look at this company', 'investment screening', or 'first look at this deal'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <name>] [--sector <sector>] [--ask-price <dollar>] [--revenue <dollar>] [--ebitda <dollar>]"
---

# PE Deal Screener

Apply a structured first-pass screen to inbound deal opportunities to quickly determine Pass / Pursue / Watch. Most deals should be screened in under 30 minutes — the goal is to identify obvious mismatches early and focus diligence time on the right opportunities. MBL Partners' deal screen reflects their PE thesis: operationally intensive businesses with value-creation potential through AI/automation and professional management.

## When to Use
- Inbound deal from broker, advisor, or network contact
- Morgan Sills sends an M&A opportunity from the Allevio pipeline
- Matt Mathison asks "what do you think of this one?"
- CIM (Confidential Information Memorandum) received
- Potential add-on acquisition for an existing portfolio company

## MBL Investment Thesis (Screen Anchor)

```
MBL focuses on:
  ✅ Sector: Healthcare services, oil & gas services, media/digital — areas where MBL has operating expertise
  ✅ Size: $5M–$50M revenue businesses; $1M–$10M EBITDA (control investments)
  ✅ Geography: Western US preferred; national acceptable
  ✅ Business model: Services, B2B, recurring revenue — not capital-intensive manufacturing
  ✅ Value creation angle: Operational improvement, AI/automation, add-on M&A, management upgrade
  ✅ THRIVE fit: Business values align; management team integrity demonstrated

Hard disqualifiers (auto-Pass):
  ❌ Revenue < $2M (too early stage for PE)
  ❌ No clear path to profitability (EBITDA negative with no credible path)
  ❌ Declining revenue without thesis for reversal
  ❌ Single-customer concentration > 50% of revenue (existential customer risk)
  ❌ Regulatory or legal jeopardy that threatens business viability
  ❌ Asking multiple > 10× EBITDA without exceptional justification
  ❌ Founder who won't retain equity or stay through transition (key man risk without succession)
  ❌ THRIVE misalignment — integrity issues, reputation problems
```

## Output Format

```markdown
# Deal Screen — <Company Name>
**Date:** <date> | **Screened by:** Dr. John Lewis
**Source:** <Broker / Network / Direct / Add-on from [portfolio co]>
**Sector:** <sector> | **Geography:** <location>
**Verdict:** ✅ PURSUE / ⚠️ WATCH / ❌ PASS

---

## Company Snapshot

| Item | Detail |
|------|--------|
| Company | <Name> |
| Business | <2-sentence description> |
| Revenue | $X (LTM) |
| EBITDA | $X (LTM, X% margin) |
| Growth | X% YoY revenue growth |
| Ask price | $X (X× EBITDA, X× revenue) |
| Employees | <N> |
| Founded | <year> |
| Ownership | <PE-backed / Founder-owned / Family / Public sub> |
| Stage | Seeking full acquisition / Minority / Recap |

---

## MBL Thesis Fit Screen

| Criteria | Status | Notes |
|---------|--------|-------|
| Sector fit | ✅ / ⚠️ / ❌ | <note> |
| Size fit (revenue $5M-$50M) | ✅ / ⚠️ / ❌ | LTM revenue: $X |
| EBITDA fit ($1M-$10M) | ✅ / ⚠️ / ❌ | LTM EBITDA: $X |
| Revenue growth | ✅ / ⚠️ / ❌ | X% YoY |
| Asking multiple | ✅ / ⚠️ / ❌ | X× EBITDA (target: <8×) |
| Control investment | ✅ / ⚠️ / ❌ | <ownership % offered> |
| Value creation angle | ✅ / ⚠️ / ❌ | <what MBL would do differently> |
| Management quality | ✅ / ⚠️ / ❌ | <initial read> |
| Customer concentration | ✅ / ⚠️ / ❌ | Top customer: X% of revenue |
| Competitive moat | ✅ / ⚠️ / ❌ | <why they win> |
| THRIVE alignment | ✅ / ⚠️ / ❌ | <integrity/values initial read> |

**Hard disqualifiers triggered:** <None / List>

---

## Quick Financials

| Metric | LTM | Year -1 | Year -2 | Trend |
|--------|-----|---------|---------|-------|
| Revenue | $X | $X | $X | ↑ X% |
| Gross profit | $X (X%) | $X (X%) | $X (X%) | ↑/↓ |
| EBITDA | $X (X%) | $X (X%) | $X (X%) | ↑/↓ |
| CapEx | $X | $X | $X | |
| Free Cash Flow | $X | $X | $X | |
| Net Debt | $X | | | |

**Revenue quality:** Recurring X% / Project/contract X% / One-time X%
**Top customer:** X% of revenue

---

## Preliminary Valuation Range

| Metric | Value | Multiple | Implied Enterprise Value |
|--------|-------|---------|------------------------|
| EBITDA | $X | 5× – 8× | $X – $X |
| Revenue | $X | 0.8× – 1.5× | $X – $X |

**Asking price:** $X (X× EBITDA)
**MBL's initial target entry:** $X – $X
**Price gap:** $X below ask / At ask / $X above ask

---

## Value Creation Angle

*What would MBL do to grow value over a 3-5 year hold?*

1. [AI/automation opportunity — e.g., "Replace manual scheduling with AI-driven optimization: 15% ops cost reduction"]
2. [Revenue growth — e.g., "Expand to 3 adjacent markets using existing clinical brand"]
3. [Management upgrade — e.g., "CFO hire: current owner-operator runs finance from spreadsheets"]
4. [Add-on M&A — e.g., "Fragmented market: 3 identified acquisition targets <$2M each"]

**EBITDA expansion thesis:** From X% to X% margin = $X EBITDA improvement → X× → $X enterprise value creation

---

## Risks (Initial)

| Risk | Severity | Notes |
|------|---------|-------|
| Key man / owner dependency | High / Medium / Low | <note> |
| Customer concentration | High / Medium / Low | <note> |
| Market risk | High / Medium / Low | <note> |
| Regulatory | High / Medium / Low | <note> |
| Integration complexity | High / Medium / Low | <if add-on> |

---

## Recommended Next Step

**Verdict: ✅ PURSUE / ⚠️ WATCH / ❌ PASS**

**Rationale:** [2-3 sentences — why pursue/pass, what is the thesis, what would need to be true]

**If PURSUE:** Recommended next step — [Management meeting / NDA + CIM review / IOI submission by <date>]
**If WATCH:** Revisit trigger — [Revenue > $X / EBITDA improves / Price adjusts to <X× / Q[N] update]
**If PASS:** Primary reason — [Hard disqualifier: X / Valuation too high at X× / Outside thesis]

**Matt Mathison review:** [Action item for Matt — is this a call, a pass, or does he want a deeper look?]
```

## Output Contract
- THRIVE screen always explicit — integrity misalignment is a hard pass regardless of financials
- Hard disqualifiers checked first — no point running the full screen on a deal that fails a binary threshold
- Value creation angle always required for PURSUE — "it looks good" is not a thesis; articulate the specific actions MBL would take to create value
- Asking multiple always calculated — if the seller wants 10× and MBL can only support 7×, that gap needs to surface immediately
- Matt Mathison action always specified — the screen ends with a clear recommendation for what Matt should do next
- HITL required: Dr. Lewis screens; Matt Mathison reviews all Pursue verdicts before any management meeting or LOI; NDA signing requires Matt Mathison approval; no deal communication beyond initial acknowledgment without Matt Mathison direction

## System Dependencies
- **Reads from:** CIM (Confidential Information Memorandum), broker materials, company website, public records
- **Writes to:** Deal pipeline tracker (SharePoint/Deals/Pipeline); deal screen report (SharePoint/Deals/<Company>/Screen)
- **HITL Required:** Dr. Lewis screens; Matt Mathison reviews Pursue/Watch verdicts; all LOI/IOI requires Matt Mathison; NDA requires Matt Mathison signature

## Test Cases
1. **Golden path:** Healthcare services company, $8M revenue, $1.5M EBITDA, asking $12M (8× EBITDA), Arizona-based, 60% recurring revenue → Fits thesis: sector ✅, size ✅, multiple borderline ⚠️; Value creation: AI scheduling (save 2 FTEs), add-on acquisition of 2 competitors; Risk: 1 customer = 30% of revenue; EBITDA expansion: 18% → 25% margin; Verdict: PURSUE — management meeting; Matt Mathison action: call Dr. Lewis before week-end to confirm interest
2. **Edge case:** Deal looks great financially but founder has a reputation issue surfaced in network check → THRIVE screen: Integrity question. Conduct network reference calls (3 minimum); if confirmed reputation issue, this is a hard Pass regardless of the numbers; document the reason; do not communicate the reason to the broker; "no longer a strategic fit" is sufficient; keep the documentation internal
3. **Adversarial:** Broker pressures for a quick IOI (indication of interest) before Dr. Lewis has completed the screen → do not submit an IOI without a completed screen and Matt Mathison approval; a rushed IOI at the wrong price or wrong thesis harms MBL's reputation with brokers more than passing on a deal; tell the broker: "We're completing our internal review; we'll have a response by [date]"; if the timeline genuinely doesn't allow proper diligence, pass

## Audit Log
All deal screens retained with verdict and rationale. Pipeline tracker updated on each screen. Matt Mathison review of Pursue verdicts documented. Pass reasons documented (for future sourcing pattern analysis).

## Deprecation
Retire when MBL has a dedicated deal team with a formal investment committee process and a CRM system (Affinity, Navatar, or similar) that tracks deals and maintains screening documentation.
