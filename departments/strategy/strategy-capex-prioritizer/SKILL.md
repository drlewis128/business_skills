---
name: strategy-capex-prioritizer
description: "Prioritize and approve capital expenditures — CapEx ranking, ROI, and payback analysis. Use when the user says 'CapEx', 'capital expenditure', 'prioritize CapEx', 'CapEx request', 'equipment purchase', 'infrastructure investment', 'capital project', 'CapEx approval', 'prioritize investments', 'capital projects list', 'rank the CapEx', 'CapEx budget', 'equipment ROI', 'CapEx decision', 'capital project approval', or 'should we spend this capital'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--amount <$X>] [--type <maintenance|growth|compliance>] [--period <annual|specific>]"
---

# CapEx Prioritizer

Prioritize and approve capital expenditure requests for MBL portfolio companies — ranking competing capital projects by return and strategic fit, ensuring the highest-return investments are funded first, and applying consistent approval discipline that matches the capital authority matrix. CapEx decisions are different from operating decisions because they create multi-year commitments: a $250K equipment purchase that earns 8% IRR ties up capital that could earn 22% in a different deployment for 5+ years. At PE portfolio scale, CapEx discipline is a significant value creation lever — particularly for HIVE Partners (completion CapEx) and any Allevio buildout investments.

## When to Use
- A portfolio company CEO requests capital project approval
- Annual CapEx budget — prioritizing the list for the coming year
- HIVE completion well decision — which wells this year?
- Matt Mathison asks "should we approve this CapEx?"
- Multiple CapEx requests competing for the same capital pool

## CapEx Framework

```
CapEx categories:
  
  Maintenance CapEx: Required to maintain current operations at current capacity
    Definition: Without this spend, current revenue/production degrades
    Examples: Equipment replacement (worn-out), safety-required upgrades, facility maintenance
    Approval: Routine if within budget; higher threshold if unbudgeted
    Return threshold: Not primarily IRR-driven — it's the cost of maintaining operations
    
  Growth CapEx: Expands capacity, adds capability, or opens new markets
    Definition: Enables revenue or production above current capacity
    Examples: New completion well (HIVE), new practice location (Allevio), new technology platform
    Approval: Requires return analysis; must exceed 15% IRR or 18-month payback (revenue-linked)
    Return threshold: ≥15% IRR for growth CapEx; compared against best alternative use
    
  Compliance CapEx: Required by regulation, contract, or risk reduction
    Definition: Failure to spend creates regulatory, legal, or safety risk
    Examples: HIPAA technical safeguard upgrades, environmental compliance (HIVE), ADA accessibility
    Approval: Non-discretionary if required; risk-adjusted return for elective enhancements
    Return threshold: Risk-adjusted (expected cost of non-compliance × probability vs. CapEx cost)
    
  CapEx authority matrix:
    <$5K: CEO authority (within approved budget)
    $5K-$25K: CEO authority + Dr. Lewis review
    $25K-$100K: Dr. Lewis recommendation + Matt Mathison approval
    >$100K: Matt Mathison decision; Dr. Lewis provides analysis
    
  HIVE completion well CapEx framework:
    Well cost: ~$250K-$400K per completion (Uinta Basin)
    Production: ~40-60 BBL/day initial; decline rate ~30% Year 1
    ROI calculation: (Production × WTI price − LOE) × years / Well cost
    WTI sensitivity: At WTI $65, a $300K well returning 45 BBL/day @ $28/BOE LOE:
      Year 1 revenue: 45 × (65-28) × 365 = $609K; EBITDA: $609K × 80% = $487K
      Payback: $300K / $487K = 7.3 months; IRR: >100% Year 1 (fast payback)
      But: WTI $50 scenario: 45 × (50-28) × 365 = $362K; payback 9.9 months; still positive
      Stress: WTI $40: break-even at LOE $28/BOE; negative if WTI < $40
    HIVE CapEx trigger: Approve completion wells when WTI ≥$55 (30-day trailing average)
```

## Output Format

```markdown
# CapEx Prioritization — [Company Name] [Period]
**Date:** [Date] | **Total CapEx requested:** $[X]K | **Available CapEx budget:** $[X]K
**Analyst:** Dr. Lewis | **Decision authority:** [CEO / Dr. Lewis / Matt Mathison]

---

## CapEx Request Summary

| # | Request | Category | Amount | Requestor | Urgency |
|---|---------|---------|--------|----------|---------|
| 1 | [Well completion — NW Unit] | Growth (O&G) | $285K | HIVE CEO | Q3 |
| 2 | [EHR system upgrade] | Compliance + Efficiency | $35K | Allevio COO | Q2 |
| 3 | [Compression equipment] | Maintenance | $45K | HIVE CEO | Q3 |
| 4 | [New PT equipment] | Growth | $28K | Allevio CEO | Q2 |

---

## Return Analysis by Request

### #1 — Well Completion NW Unit ($285K)

**Category:** Growth CapEx (HIVE)
**Return analysis (base case WTI $68):**
| Metric | Value |
|--------|-------|
| Expected initial production | 48 BBL/day |
| WTI price (base) | $68/BBL |
| LOE ($/BOE) | $27 |
| Year 1 revenue | 48 × ($68-$27) × 365 = $718K |
| Payback | $285K / $718K = 4.8 months |
| Year 1 IRR | >150% (fast payback) |
| WTI $55 stress | Payback 8.2 months — still positive |
| WTI trigger met ($55)? | ✅ Current WTI $68 |

**Recommendation:** ✅ APPROVE — high return, WTI trigger met

### #2 — EHR System Upgrade ($35K)

**Category:** Compliance CapEx (Allevio)
**Compliance basis:** HIPAA security risk assessment finding — current EHR lacks audit logging required under §164.312(b)
**Risk-adjusted cost of non-compliance:** 15% × $150K potential OCR penalty = $22.5K expected cost
**Efficiency savings:** 2 FTE hours/week × $28/hr × 52 = $2.9K/yr
**Net cost after risk reduction:** $35K − $22.5K = $12.5K effective cost; $2.9K annual efficiency
**Payback:** Effective payback 4.3 years on efficiency alone; but compliance is non-discretionary
**Recommendation:** ✅ APPROVE — compliance non-discretionary; documented HIPAA gap

[Repeat for each request]

---

## Prioritized CapEx List

| Priority | Request | Category | Amount | IRR/Payback | Recommendation |
|---------|---------|---------|--------|------------|----------------|
| 1 | Well Completion NW Unit | Growth | $285K | >150% / 4.8 mo | ✅ Approve |
| 2 | EHR System Upgrade | Compliance | $35K | Non-discretionary | ✅ Approve |
| 3 | Compression Equipment | Maintenance | $45K | Maintenance req. | ✅ Approve |
| 4 | PT Equipment | Growth | $28K | 34% IRR / 10 mo | ✅ Approve |
| **Total approved** | | | **$393K** | | |
| **Budget available** | | | **$420K** | | ✅ Within budget |

---

## Matt Mathison CapEx Brief

[Company] CapEx [Period]: $[X]K requested vs. $[X]K budget. Recommended approvals: [N] items totaling $[X]K. Top item: [Well completion — $285K; 4.8-month payback at WTI $68; WTI trigger met]. [Compliance item]: [EHR $35K — HIPAA required]. All items within budget. Items requiring Matt Mathison approval (>$100K): [Well completion $285K — recommend approve]. Items approved at Dr. Lewis level (<$100K): [EHR $35K; Compression $45K; PT equipment $28K].
```

## Output Contract
- Every growth CapEx has a return analysis — maintenance CapEx is approved if required and within budget without an IRR requirement; growth CapEx requires an IRR analysis and comparison to the best alternative use of the same capital; Dr. Lewis does not approve growth CapEx by saying "this seems like a good investment" — the return is calculated and compared to the threshold before recommendation; if the IRR doesn't clear 15% for growth CapEx, the recommendation is Defer unless there are specific strategic reasons to proceed that are explicitly documented
- Compliance CapEx is never optional if required — the risk-adjusted framework applies only to elective compliance enhancements; if a HIPAA security risk assessment identifies a documented gap that a technical upgrade closes, that upgrade is non-discretionary and the question is not whether to spend the money but how quickly; Dr. Lewis distinguishes between mandatory compliance spend (fast-track approval) and preferred compliance improvements (ROI-justified); a physician office that "might want" an upgraded access control system is an enhancement; a physician office that has a documented breach risk in its current access control is a compliance requirement
- CapEx decisions are sequenced when capital is constrained — when the total requested CapEx exceeds the available budget, Dr. Lewis prioritizes: (1) mandatory maintenance (without which operations degrade), (2) mandatory compliance (regulatory requirement), (3) highest-IRR growth (best return on available capital), (4) strategic positioning (thesis-critical even if IRR is below threshold); this sequencing is presented explicitly when capital is rationed
- HITL required: CEO or dept head submits CapEx request with business case; Dr. Lewis analyzes return and recommends; Dr. Lewis approves items $5K-$25K; Matt Mathison approves items >$25K if not in approved budget, >$100K if in budget; all approvals documented; no CapEx commitment without appropriate authority approval

## System Dependencies
- **Reads from:** Annual budget (annual-budget-builder), capital available (strategy-capital-allocation), compliance requirements (rc-compliance-ops-review — for compliance CapEx), production data (HIVE — for well completion ROI), financial performance (QuickBooks)
- **Writes to:** CapEx approval log (SharePoint/Finance/CapEx/); annual budget update; Matt Mathison approval record; HIVE well register (if applicable); Allevio facility/equipment register
- **HITL Required:** CEO submits request; Dr. Lewis analyzes and recommends; Dr. Lewis approves $5K-$25K; Matt Mathison approves >$25K out-of-budget or >$100K; all approvals documented

## Test Cases
1. **Golden path:** HIVE Q3 CapEx — 2 completion wells + compression upgrade → Well 1 (NW Unit): $285K; expected production 48 BBL/day; WTI $68; payback 4.8 months; ✅ Approve; Well 2 (SE Unit): $310K; expected production 38 BBL/day; WTI $68; payback 7.1 months; ✅ Approve (above trigger); Compression upgrade: $45K; maintenance required (current compressor at 90% capacity creating production constraint); payback N/A — maintenance; ✅ Approve; Total: $640K; budget available $600K; $40K over budget; Dr. Lewis presents to Matt Mathison: approve Well 1 ($285K high-confidence, fast payback) + Compression ($45K maintenance); defer Well 2 to Q4 if Q3 production confirms Well 1 output; Matt Mathison approves; total Q3 approved CapEx $330K (within Q3 budget allocation $350K)
2. **Edge case:** Allevio CEO requests a $180K buildout for a second location → This is the largest CapEx request Allevio has made; growth CapEx, not maintenance; Dr. Lewis analysis: second location generates revenue only if additional providers are hired and patient volume follows; current location is at 75% capacity — not yet at capacity constraint; second location before primary location is at full capacity is premature growth; timing: open second location when primary is at ≥90% capacity and at least 1 additional provider is committed; recommendation: Defer — design the second location plan now (no cost) and approve when capacity trigger is hit; Matt Mathison briefed; agrees with defer recommendation; CEO accepts
3. **Adversarial:** CEO approves a $75K equipment purchase without going through the CapEx process → Any single CapEx item >$25K requires Dr. Lewis review and Matt Mathison approval (if unbudgeted) regardless of the CEO's view of urgency; a $75K purchase approved without this process is a governance exception; Dr. Lewis addresses directly with the CEO: the CapEx process exists to protect the portfolio from capital misallocation; if the equipment was genuinely urgent (safety risk, production halt), the 24-hour expedited process applies — which still requires Dr. Lewis review; Dr. Lewis documents the exception and discusses with Matt Mathison; CEO acknowledges the process requirement for future requests

## Audit Log
All CapEx requests and approval decisions retained permanently. Return analyses retained. Matt Mathison approval records retained. Annual CapEx budget vs. actual retained. Post-investment return tracking retained (actual vs. projected ROI at 12 months for each approved item >$50K).

## Deprecation
Retire when portfolio companies have a CFO who owns the CapEx process — with Dr. Lewis reviewing the strategic alignment and Matt Mathison receiving the same approval framework regardless of who prepares the analysis.
