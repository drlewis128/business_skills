---
name: finance-deal-valuation
description: "Build full acquisition valuations for MBL Partners deals. Use when the user says 'deal valuation', 'acquisition valuation', 'full valuation', 'DCF', 'discounted cash flow', 'DCF valuation', 'comparable company analysis', 'comps', 'comparable transactions', 'precedent transactions', 'EV/EBITDA valuation', 'enterprise value', 'equity value', 'net debt', 'terminal value', 'WACC', 'discount rate', 'valuation model', 'MBL valuation', 'what is this company worth', 'intrinsic value', 'intrinsic valuation', 'multiples valuation', 'football field analysis', 'football field chart', 'valuation range', 'valuation bridge', 'purchase price allocation', 'goodwill', 'intangible asset valuation', 'valuation for a board', 'valuation memo', 'value creation plan', 'IRR target MBL', 'MBL return targets', 'target hold period', 'exit value', 'exit multiple', or 'return on investment MBL acquisition'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--target <name>] [--method <dcf|comps|precedents|all>] [--hold-years <3|5|7>] [--action <build|present|compare>]"
---

# Finance Deal Valuation

Build full acquisition valuations for MBL Partners deals — combining DCF analysis, comparable company multiples, and precedent transaction analysis in a "football field" valuation range that gives Matt Mathison a defensible range for offer pricing and LP communication. MBL's valuation framework accounts for PE return targets (IRR and cash-on-cash) and a defined hold period before strategic sale or secondary to another PE buyer.

## When to Use
- Full valuation analysis after LOI (pre-close; post-DD)
- Scenario modeling: what do we need to exit at to achieve target IRR?
- LP communication: what is the current portfolio company worth?
- Strategic alternative analysis: sell now vs. hold 2 more years

## Deal Valuation Framework

```
THREE-PILLAR VALUATION APPROACH:

  PILLAR 1 — DCF (DISCOUNTED CASH FLOW):
    Build explicit cash flow projections for 5 years (Years 1-5)
    Year 1-2: base case from DD-verified financials
    Year 3-5: growth assumptions (conservative; typically 10-20% revenue growth for portfolio-stage companies)
    Terminal value: Gordon Growth Model or exit multiple (exit EBITDA × terminal multiple)
    Discount rate (WACC): for MBL PE-backed acquisitions, use 15-25% discount rate
      (reflects PE return requirements; not standard corporate WACC)
    DCF result: sum of PV of cash flows + PV of terminal value = enterprise value
    
  PILLAR 2 — COMPARABLE COMPANY MULTIPLES:
    Select 4-8 comparable public or private companies
    Multiples: EV/EBITDA; EV/Revenue; P/E (if applicable)
    Apply appropriate discount for size (small companies trade at discount to large comparables)
    Typical private company discount: 20-30% vs. public comparables
    
  PILLAR 3 — PRECEDENT TRANSACTIONS:
    Find 5-10 recent M&A transactions in the same industry
    Extract implied multiples (EV/EBITDA; EV/Revenue)
    Apply MBL target as if it were one of those transactions
    Precedent transaction multiples often higher than current comps (control premium)
    
  FOOTBALL FIELD CHART:
    Present all three methods as a horizontal bar chart (low to high)
    Show LOI price / offer price on the same chart
    If offer price is within the range: valuation-justified
    If offer price is above the range: explain why (strategic premium; synergies; growth option)
    
MBL PE RETURN TARGETS:
  Target hold period: 3-5 years
  Target IRR: ≥20% (PE-grade return)
  Target cash-on-cash: ≥2.0× investment over hold period
  
IRR BRIDGE:
  Entry price ($X) → exit price (implied by exit multiple × exit EBITDA) → IRR calculation
  Model: exit year 5 EBITDA × [exit multiple] = exit EV → cash returned = exit EV - remaining debt
  Work backwards: "to achieve 20% IRR with a $2M entry and 5-year hold, we need to exit at $5.2M"
  Then: "is that exit achievable? What EBITDA do we need at year 5, and what multiple can we assume?"
  
PURCHASE PRICE ALLOCATION (PPA) — POST-CLOSE:
  Goodwill = acquisition price - fair value of identifiable net assets
  Tangible assets: book value (or appraised if significantly different)
  Identifiable intangibles: customer relationships; non-competes; trade names
  PPA affects depreciation/amortization and thus post-close EBITDA
  Dr. Lewis + CPA handle PPA for each acquisition
```

## Output Format

```markdown
# Deal Valuation — [Target Name]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **For:** Matt Mathison | **Confidential**

---

## Valuation Summary (Football Field)

| Method | Low | Base | High |
|--------|-----|------|------|
| DCF (15-25% WACC) | $X | $X | $X |
| Comparable Companies | $X | $X | $X |
| Precedent Transactions | $X | $X | $X |
| **Valuation Range** | **$X** | **$X** | **$X** |

**Offer price: $X | Implied EV/EBITDA: X× | Within range? ✅/⚠️**

---

## MBL Return Analysis (5-Year Hold)

| Metric | Base Case | Bull Case |
|--------|----------|----------|
| Exit EBITDA (Year 5) | $X | $X |
| Exit multiple assumed | X× | X× |
| Exit EV | $X | $X |
| IRR | X% | X% |
| Cash-on-cash | X× | X× |

**Target: IRR ≥20%, Cash-on-cash ≥2.0×**
```

## Output Contract
- The football field is a communication tool, not a precision instrument — the purpose of presenting three valuation methods is to give Matt Mathison and LPs a range of reasonable values based on different assumptions, not to triangulate to a single "correct" price; if all three methods cluster in a similar range, it gives confidence that the offer price is fair; if the DCF shows $3M and the precedent transactions show $6M, that spread tells a story (either comparable transactions are expensive relative to fundamental value, or the DCF assumptions are conservative) and Dr. Lewis explains that story explicitly rather than averaging the methods mechanically
- The MBL return analysis is the most important output for the investment decision — Matt Mathison is a PE investor who needs to see the return profile, not just the entry price; "we're paying $2.6M for an asset that should generate $5.2M in exit value in 5 years (20% IRR; 2× cash-on-cash)" is the language of the decision; that analysis requires both a credible exit assumption (what multiple will a buyer pay in Year 5?) and credible EBITDA growth (can this business really grow EBITDA from $320K to $600K in 5 years?); Dr. Lewis challenges both assumptions explicitly: "here is the growth rate required and here is the basis for the exit multiple assumption"
- HITL required: full valuation → Matt Mathison reviews before close; football field → Matt Mathison sees all three methods and the rationale; return analysis assumptions → Matt Mathison agrees on exit multiple and growth rate used; offer price vs. valuation range → Matt Mathison approves; PPA → Dr. Lewis + CPA; LP communication of valuation → Matt Mathison reviews; strategic alternative analysis → Matt Mathison + Dr. Lewis + legal counsel; exit decision (sell now vs. hold) → Matt Mathison

## System Dependencies
- **Reads from:** Finance-due-diligence-financial (DD-verified financials; normalized EBITDA); finance-loi-financial-model (LOI stage assumptions for comparison); comparable company databases (M&A databases; public company filings); precedent transaction data; industry market research; HIVE: Covercy + reserve reports for O&G specific methods
- **Writes to:** Deal valuation model (SharePoint → M&A → [Target] → Valuation); Matt Mathison investment decision package; LP communication inputs (portfolio valuation); finance-portfolio-valuation (post-acquisition portfolio entry); deal decision log; CPA PPA inputs
- **HITL Required:** Full valuation → Matt Mathison reviews; football field → Matt Mathison sees all three + rationale; return assumptions → Matt Mathison agrees; offer price → Matt Mathison approves; PPA → Dr. Lewis + CPA; LP communication → Matt Mathison reviews; strategic alternatives → Matt Mathison + Dr. Lewis + legal; exit decision → Matt Mathison

## Test Cases
1. **Golden path:** MBL post-DD valuation for Phoenix MSO (normalized EBITDA: $320K; revenue: $1.8M; 5-year hold). DCF: 5-year FCF projections ($280K → $550K growing 18% year 1-2, tapering to 10% year 4-5); WACC 20%; terminal value at 10× Year 5 EBITDA $550K = $5.5M; PV of terminal value: $2.2M; PV of cash flows: $1.1M; DCF EV: $3.3M. Comparable companies (small MSO/healthcare managed care): EV/EBITDA range 8-12×; applied to $320K: $2.6M-$3.8M. Precedent transactions (MSO acquisitions 2024-2026): median 10× EBITDA; applied to $320K: $3.2M. Football field: Low $2.6M; Base $3.2M; High $3.8M. Offer price: $2.6M (low end of range ✅ — disciplined entry). IRR at $2.6M entry, 5-year hold, exit at 10× $550K EBITDA: exit EV $5.5M; IRR: 22% ✅; cash-on-cash: 2.1× ✅.
2. **Edge case:** All three valuation methods show $3-4M range but Matt Mathison wants to offer $2M to leave maximum upside → Dr. Lewis: "At $2M entry, our implied exit IRR at the same assumptions (Year 5 EBITDA $550K × 10× = $5.5M exit): IRR 28%; cash-on-cash 2.75×. The return profile is excellent. The risk is whether the seller accepts $2M — the valuation supports $3M+, and a $1M gap from the supported range is likely to trigger a counter that makes the deal competitive. My recommendation: anchor at $2.3M (well below the $3.2M base; meaningfully above $2M) and negotiate from there. A $2.3M offer is 72% of base valuation — aggressive but potentially defensible as a PE-stage entry price. If the seller counters at $3.0M, we have negotiating room. If they walk, that's information. Matt Mathison decides the negotiating strategy; I'm presenting the math."
3. **Adversarial:** Seller presents their own DCF valuation showing $8M enterprise value → Dr. Lewis: "I've reviewed the seller's DCF — the $8M valuation relies on three assumptions I don't accept: (1) Revenue growth of 35% for 5 years (their historical growth is 8-12%); (2) Margin expansion from current 18% EBITDA margin to 28% with no explanation of how the costs decline; (3) Terminal value discount rate of 8% (a standard corporate WACC — not appropriate for a business of this size and stage; I use 20%). Using their own revenue projections but with an 18% EBITDA margin (current performance sustained) and a 20% discount rate: DCF value = $3.8M. That's 52% below their claim. I'm not dismissing their growth ambitions, but growth projections that are 3× historical performance with margin expansion that's never been achieved need proof, not projection. Our offer is based on what the business has actually done, not what the seller believes it could do."

## Audit Log
Deal valuation models (all targets; permanent). Football field charts. Matt Mathison investment decision records. Return assumption approval records. Comparable transaction data sources. Precedent transaction data. PPA records (post-close). LP communication of acquisition value. Exit multiple assumption records. DCF assumption documentation.

## Deprecation
DCF discount rate reviewed annually (PE market return expectations). Comparable multiples reviewed annually (market conditions). Hold period assumptions reviewed when MBL portfolio strategy changes. Exit multiple assumptions reviewed when comparable exit data accumulates. PPA methodology reviewed when accounting standards change.
