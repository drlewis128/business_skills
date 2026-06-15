---
name: investment-thesis-builder
description: "Build a structured investment thesis for a PE deal or sector. Use when the user says 'investment thesis', 'build a thesis', 'why we should invest', 'what is the thesis', 'thesis for this deal', 'investment rationale', 'strategic rationale', 'why buy this company', 'deal thesis', or 'sector thesis'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <name>] [--sector <sector>] [--mode <deal|sector|add-on>]"
---

# Investment Thesis Builder

Build a structured, testable investment thesis for a PE deal or sector. A thesis is not a summary of why a company is good — it is a specific, falsifiable argument for why MBL can create value that other buyers cannot, at a price that generates target returns. A weak thesis is the most common cause of a bad deal.

## When to Use
- Moving from deal screen to LOI — need a written thesis before committing
- Investment committee presentation to Matt Mathison — thesis is the spine
- Sector research — MBL wants to focus on a new sector; build the thesis first
- Add-on acquisition — why does this target fit the platform thesis?
- Post-investment — document the thesis to track whether assumptions remain valid

## Thesis Architecture

```
A strong PE investment thesis has 5 components:

1. Market thesis: Why is this market attractive?
   Size, growth, fragmentation, tailwinds, regulation changes
   "We believe this market is attractive because..."

2. Company thesis: Why is THIS company the right entry point?
   Competitive position, management quality, operational gaps, customer quality
   "Among the players in this market, this company wins because..."

3. Value creation thesis: What will MBL do differently?
   Specific operational improvements, AI/automation, add-on M&A, management upgrade
   "We will create $X of EBITDA improvement by doing X, Y, Z specifically"

4. Return thesis: Does the math work?
   Entry price → EBITDA improvement → Exit multiple → IRR/MOIC at target
   "At $X entry, with $X EBITDA growth, at X× exit, we achieve X× MOIC / X% IRR"

5. Risk thesis: What must be true? What could kill this?
   Key assumptions, risks, and how you're mitigating them
   "Our thesis requires: X. The thesis breaks if: Y. Mitigation: Z."
```

## Output Format

```markdown
# Investment Thesis — <Company Name>
**Date:** <date> | **Author:** Dr. John Lewis | **Reviewed by:** Matt Mathison
**Stage:** Deal screen / IOI / LOI / Full diligence / Investment committee
**Verdict:** ✅ Compelling / ⚠️ Conditional / ❌ Not compelling

---

## Executive Summary (BLUF)

**One-sentence thesis:**
"[Company] is a [X× EBITDA, $X revenue, sector] business where MBL can create $X of additional EBITDA over [N] years by [top 2 value creation levers], achieving [X× MOIC / X% IRR] at a [X×] entry on a [X×] exit."

**Why MBL, why now:**
[2-3 sentences on why MBL is the right owner and why this is the right time]

---

## 1. Market Thesis

**Market:** <Description>
**Size:** $X total addressable market | **Growth rate:** X% CAGR

| Tailwind | Impact | Evidence |
|---------|--------|---------|
| [Regulatory change] | [Drives demand] | [Specific example] |
| [Technology shift] | [Creates disruption] | [Data point] |
| [Demographic trend] | [Expands market] | [Source] |

**Fragmentation:** X% of market is held by top 5 players → [fragmented = consolidation opportunity / concentrated = need strong differentiation]

**Why this market now:** [1-2 sentences on timing]

---

## 2. Company Thesis

**Why this company is the right entry point:**

| Factor | Assessment | Evidence |
|--------|-----------|---------|
| Market position | #X in [market/geography] | [Client count, retention, NPS] |
| Customer quality | X% recurring; X-year avg relationship | [Revenue breakdown] |
| Management quality | [Founder operator / Strong team / Management gap] | [Track record] |
| Operational gaps | [Identifies where MBL adds value] | [EBITDA margin vs. peers] |
| Competitive moat | [What makes them hard to replicate] | [Why customers don't leave] |

**The "unfair advantage" — why this company wins:**
[1-2 sentences on the specific defensible edge]

**The "gap" — why there is value creation opportunity:**
[1-2 sentences on what's being left on the table that MBL can capture]

---

## 3. Value Creation Thesis

*Be specific. Vague value creation is a red flag.*

| Initiative | Year 1 | Year 2-3 | Year 3-5 | EBITDA Impact |
|-----------|--------|---------|---------|--------------|
| AI/automation: [specific process] | $X | $X | $X | $X improvement |
| Revenue: [specific growth lever] | $X | $X | $X | $X improvement |
| Cost: [specific cost reduction] | $X | $X | $X | $X improvement |
| Add-on M&A: [target type] | $0 | $X (if closed) | $X (synergies) | $X improvement |
| Management: [specific hire] | $0 | $X | $X | $X improvement |

**Entry EBITDA:** $X | **Exit EBITDA:** $X | **Improvement:** +$X (+X%)

**Key assumptions for value creation:**
- [Assumption 1: e.g., "AI scheduling reduces labor cost by 15% — based on X benchmark"]
- [Assumption 2: e.g., "Revenue grows 12%/year — based on pipeline + market growth"]
- [Assumption 3: e.g., "Margin expansion from X% to X% achievable — based on peer benchmarks"]

---

## 4. Return Thesis

**Scenario Analysis:**

| Scenario | Entry | Exit EBITDA | Exit Multiple | Proceeds | MOIC | IRR | Probability |
|---------|-------|------------|--------------|---------|------|-----|------------|
| Bear | $X | $X | X× | $X | X.X× | X% | 20% |
| Base | $X | $X | X× | $X | X.X× | X% | 60% |
| Bull | $X | $X | X× | $X | X.X× | X% | 20% |

**Base case assumptions:**
- Entry: $X (X× LTM EBITDA)
- Hold period: X years
- Exit EBITDA: $X (from $X — per value creation plan)
- Exit multiple: X× (assumes [market conditions / sector comps])

**Return hurdle check:** Base case IRR X% [vs. MBL target: >20% net] → ✅ Clears hurdle / ⚠️ Below target

---

## 5. Risk & What Must Be True

**Key assumptions (if wrong, thesis breaks):**

| Assumption | If wrong | Probability | Mitigation |
|-----------|---------|------------|-----------|
| AI/automation savings achievable | Savings 50% of plan | 25% | Pilot before full rollout; contractual savings guarantee |
| Revenue growth 12%/year | Revenue flat | 20% | Entry price accounts for flat scenario (bear case still X× MOIC) |
| Exit at X× EBITDA | Exit at (X-1)× | 30% | Bear case still returns capital + pref |
| Management team stays | Key executive exits | 15% | Retention agreement + equity rollover |

**Thesis killers (auto-abandon if realized):**
- [Key customer (X% of revenue) doesn't renew → Revenue drops $X → EBITDA goes negative]
- [Regulatory change that eliminates core service line]

**Thesis invalidation trigger:** [At what point (during diligence or hold) do we abandon?]

---

## Investment Committee Recommendation

**Verdict:** ✅ PROCEED TO [IOI / FULL DILIGENCE / LOI] / ⚠️ CONDITIONAL — need X before proceeding / ❌ PASS

**Matt Mathison action required:**
- [ ] Review thesis and approve proceeding
- [ ] Confirm target entry price range ($X – $X)
- [ ] Approve engagement of [counsel / accountants / sector expert] for diligence
- [ ] Connect with management team by <date>
```

## Output Contract
- One-sentence thesis always required — if you can't articulate the thesis in one sentence, it isn't clear enough
- Return analysis always includes bear case — a thesis that only works in the base case is not a thesis; it's optimism
- Value creation always quantified in dollars — "operational improvement" is not a thesis; "$X EBITDA from replacing manual scheduling with AI" is
- Risk section always includes thesis killers — proactive identification of what breaks the thesis is the most important diligence filter
- Matt Mathison actions always explicit — investment decisions require his approval at every milestone; the thesis document ends with a clear call to action for him
- HITL required: Dr. Lewis builds thesis; Matt Mathison must review and approve before any deal advance; investment committee step (Matt Mathison) before LOI; engagement of external advisors (legal, financial) requires Matt Mathison approval

## System Dependencies
- **Reads from:** Deal screen (pe-deal-screener output), CIM, management presentation, market research
- **Writes to:** Thesis document (SharePoint/Deals/<Company>/Investment Thesis); investment committee package; deal pipeline tracker
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews and approves; all investment decisions require Matt Mathison; advisor engagement requires Matt Mathison

## Test Cases
1. **Golden path:** Allevio add-on acquisition — small medical billing company, $3M revenue, $600K EBITDA → Market thesis: healthcare RCM fragmented, regulatory complexity driving outsourcing; Company thesis: regional leader, 90% retention, 3 major health systems; Value creation: consolidate billing ops with Allevio ($200K savings), cross-sell Allevio clinical services ($300K new revenue); Return: entry $3M (5×), exit EBITDA $1.1M, exit at 6× = $6.6M → 2.2× MOIC, 22% IRR; Risk: integration execution; Recommendation: proceed to LOI
2. **Edge case:** The financial model shows strong returns only if the exit multiple expands from 6× to 8× — if it stays at 6×, returns are mediocre → a thesis that depends on multiple expansion is a weak thesis; re-examine: can the EBITDA improvement alone generate sufficient returns at a flat multiple? if not, either negotiate a lower entry price or pass; don't rely on "the market will value this more in 5 years" as the primary return driver
3. **Adversarial:** Matt Mathison is excited about a deal and pressures Dr. Lewis to build a thesis that supports the deal rather than stress-test it → a pre-determined thesis is not a thesis; it is a justification document; identify the risks and assumptions honestly even if they create friction; the value of the thesis process is finding the flaws before committing capital; a deal that looks good only when the risks are minimized is a deal that should be scrutinized harder, not less

## Audit Log
All thesis versions retained with timestamps. Investment committee presentations retained. Post-investment thesis vs. actual tracking retained (quarterly). Thesis invalidation events documented.

## Deprecation
Retire when MBL has a dedicated investment team with formal investment committee process, standardized thesis templates, and portfolio management system that tracks thesis vs. performance.
