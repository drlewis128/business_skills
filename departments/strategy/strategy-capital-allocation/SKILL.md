---
name: strategy-capital-allocation
description: "Allocate capital across portfolio companies and projects — prioritization, ROI analysis, and approval. Use when the user says 'capital allocation', 'where to invest', 'capital deployment', 'investment prioritization', 'how to allocate capital', 'capital budget', 'investment decisions', 'where should the capital go', 'capital priorities', 'deploy capital', 'fund this initiative', 'capital decision', 'investment committee', 'capital request', 'approve the investment', or 'capital planning'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--scope <portfolio|entity>] [--entity <company name>] [--amount <$X>] [--stage <request|analysis|decision>]"
---

# Capital Allocation

Allocate capital across MBL Partners portfolio companies and internal investment opportunities — providing the analytical framework and decision discipline that ensures every dollar deployed earns the risk-adjusted return the thesis requires. Capital allocation is the highest-leverage decision in PE: the right capital at the right time in the right portfolio company multiplies; the wrong capital destroys value at scale. At MBL portfolio scale, Dr. Lewis provides the analytical framework and recommendation; Matt Mathison makes every capital allocation decision above operating authority.

## When to Use
- A portfolio company CEO requests capital for an initiative
- Annual capital planning — how is this year's capital allocated across the portfolio?
- Matt Mathison asks "should we invest in [X]?"
- A new acquisition opportunity requires capital deployment analysis
- Comparing two capital requests competing for the same pool

## Capital Allocation Framework

```
MBL capital allocation principles:
  
  1. Return threshold first: ≥20% IRR / ≥2.5× MOIC at 5-year hold for portfolio capital
     Internal rate of return on operating improvements varies:
       Revenue-generating capital: ≥15% IRR (longer payback acceptable for revenue growth)
       Cost-reduction capital: Payback ≤18 months (typically >40% IRR)
       Compliance capital: ROI is risk-adjusted (cost of capital vs. cost of violation)
       
  2. Best use of capital across the portfolio:
     The question is not just "does this initiative return 20%?" 
     The question is "does this initiative return more than the next best use of the same capital?"
     If Allevio's provider hire returns 35% and HIVE's completion well returns 25%,
     the capital goes to Allevio first (all else equal)
     
  3. Capital preservation in stress:
     Portfolio companies in stress scenarios (WTI below trigger; payer loss) receive capital only
     if it is essential to preserve going concern; not for growth
     
  4. Exit-stage prioritization:
     Portfolio companies approaching exit receive capital for value maximization actions 
     (exit readiness, compliance de-risking, SOP documentation) over growth capital
     
  5. Capital type matters:
     CapEx: Creates lasting assets; depreciates; affects balance sheet; higher threshold
     OpEx: Operating spend; immediate P&L impact; must generate revenue or reduce cost
     Compliance: Non-discretionary if required by law; discretionary for enhancements
     
MBL authority matrix:
  CEO operating budget: CEO authority within approved annual budget
  >Approved budget / >$25K single item: Dr. Lewis review + Matt Mathison approval
  >$100K: Matt Mathison decision; Dr. Lewis provides analysis
  >$500K: Matt Mathison + LP notification if applicable
  Acquisition capital: Any amount — Matt Mathison decision
  
Return calculation for operating capital:
  Revenue-generating: Annual incremental revenue × margin × years / capital invested
  Cost-reducing: Annual cost savings / capital invested = payback; IRR from savings stream
  Compliance: Risk-adjusted: probability of violation × cost of violation / cost of control
```

## Output Format

```markdown
# Capital Allocation Analysis — [Initiative Name]
**Entity:** [Company] | **Requestor:** [CEO / Dept head / Dr. Lewis]
**Capital requested:** $[X] | **Type:** [CapEx / OpEx / Compliance]
**Date:** [Date] | **Decision needed by:** [Date]

---

## Request Summary

**Initiative:** [Name]
**Description:** [2-3 sentences — what is being funded and why now]
**Requesting entity/person:** [CEO of Allevio / Dr. Lewis / etc.]

---

## Return Analysis

**Capital type:** [Revenue-generating / Cost-reducing / Compliance / Acquisition]

### Revenue-Generating Capital

| Assumption | Conservative | Base | Optimistic |
|-----------|-------------|------|-----------|
| Annual revenue generated | $[X] | $[X] | $[X] |
| EBITDA margin on new revenue | [X]% | [X]% | [X]% |
| Annual EBITDA impact | $[X] | $[X] | $[X] |
| Time to full ramp | [N months] | | |
| Payback period | [N months] | [N months] | |
| 3-year MOIC | [X]× | [X]× | [X]× |
| IRR | [X]% | [X]% | [X]% |

**Threshold check:** IRR ≥15% for revenue capital: 🟢 Passes / 🔴 Fails

### Cost-Reducing Capital (if applicable)

| Assumption | Amount |
|-----------|--------|
| Annual cost savings | $[X] |
| Payback period | [N months] |
| 3-year savings | $[X] |
| ROI (3-year savings / capital) | [X]× |

**Threshold check:** Payback ≤18 months: 🟢 Passes / 🔴 Fails

### Compliance Capital (if applicable)

| Risk being mitigated | Probability | Cost of violation | Risk-adjusted cost of not acting |
|--------------------|------------|------------------|--------------------------------|
| [OCR HIPAA investigation] | [X]% | $[X] | $[X] expected value |
| Capital cost to control | $[X] | | |
| Net risk reduction | $[X] expected value | | |

---

## Alternative Use of Capital

| Alternative | Return | Notes |
|------------|--------|-------|
| [HIVE completion well] | [X]% IRR | |
| [Allevio additional provider] | [X]% IRR | |
| [Hold cash — weighted cost] | [X]% | LP hurdle rate |

**Recommendation vs. best alternative:** [This initiative returns [X]% vs. next best use at [X]% — [Recommend / Defer]]

---

## Risk Assessment

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| [Revenue ramp slower than plan] | Medium | Capital stranded 6 months | Milestone-based deployment |
| [Cost savings not fully realized] | Low | Payback extends from 14 to 20 months | Monthly tracking vs. plan |

---

## Recommendation

**Recommendation:** ✅ Approve / ⚠️ Approve with conditions / ❌ Decline
**Rationale:** [IRR/ROI analysis; alternative use comparison; strategic fit]
**Conditions (if conditional):** [Milestone gates; phased deployment; review point]
**Deployment structure:** [$[X] immediately; $[X] at [milestone]; or full amount]

---

## Matt Mathison Decision Brief

[Initiative] capital request $[X]: [Revenue-generating / Cost-reducing / Compliance]. IRR: [X]% base ([above/below] [X]% threshold). Payback: [N months]. Best alternative: $[X] elsewhere at [X]% — [this is/isn't the best use]. Recommendation: [Approve / Approve with conditions / Decline]. CEO recommendation: [Approve / Defer]. Strategic rationale: [One sentence — why this advances the thesis]. Action: Approve $[X] for [Initiative] / Decline with alternative direction.
```

## Output Contract
- Every capital request has a return analysis — there is no "this is important so we should do it" capital approval without a return number; compliance capital has a risk-adjusted return (cost of control vs. expected cost of violation); revenue capital has an IRR; cost-reduction capital has a payback period; the discipline of attaching a return estimate to every capital decision, even approximately, prevents capital from flowing to the loudest voice rather than the highest-return use
- The alternative use question is mandatory — capital is not approved in isolation; the question is always "what are we not doing with this capital if we approve it?"; if there are higher-return alternatives available, those alternatives are presented to Matt Mathison alongside the current request; Dr. Lewis is responsible for knowing the capital demands across the portfolio and presenting them comparatively; capital prioritization requires comparing alternatives, not just approving requests one at a time
- Capital authority thresholds enforce discipline without slowing the business — CEO authority within approved budget keeps the business moving; Dr. Lewis review for material out-of-budget requests ensures quality control without excessive friction; Matt Mathison approval for significant capital ensures the managing partner retains control over thesis-critical investment decisions; the authority matrix is enforced consistently; Dr. Lewis does not approve capital that requires Matt Mathison authority regardless of urgency
- HITL required: CEO submits request with business case; Dr. Lewis builds the return analysis and alternative use comparison; Dr. Lewis recommends; Matt Mathison decides for all requests requiring his authority; all capital approvals documented with rationale; milestone-gated deployments tracked against milestones

## System Dependencies
- **Reads from:** Annual budget (annual-budget-builder), VCP (strategy-value-creation-plan), portfolio financial performance (QuickBooks), investment thesis (strategy-investment-thesis), LP commitments and capital available
- **Writes to:** Capital allocation decision log (SharePoint/Finance/CapitalAllocation/); VCP update if capital is approved for a VCP initiative; annual budget update if out-of-budget; Matt Mathison approval record; LP notification if applicable
- **HITL Required:** CEO submits request; Dr. Lewis analyzes and recommends; Matt Mathison approves all requests above CEO authority; LP notification for >$500K; all decisions logged

## Test Cases
1. **Golden path:** Allevio CEO requests $145K for NP hire → Dr. Lewis builds return analysis: NP adds 800 patients/year at $185 average reimbursement = $148K annual revenue; EBITDA margin on incremental revenue 22% = $32.6K annual EBITDA; NP cost $145K fully-loaded; payback = 145K/32.6K = 4.5 years (longer than the 18-month CapEx standard — but this is a revenue-generating hire, not cost reduction); 3-year MOIC = (3 × $148K × 22%) / $145K = 0.68× (modest because it's a people investment not capital); IRR = 12% at 3-year horizon, improving to 18% at 5-year; this is below the 20% portfolio threshold but the NP hire is the primary revenue growth lever in the thesis; alternative: $145K deployed in HIVE completion = ~22% IRR; Dr. Lewis recommendation: Approve — thesis-critical revenue growth, even at slightly below threshold, because the alternative HIVE deployment can be funded from HIVE cash flow while Allevio requires equity for people costs; Matt Mathison approves
2. **Edge case:** CEO requests $35K for a new EHR (electronic health records) system upgrade → Return analysis: compliance capital (HIPAA technical safeguard requirements) + efficiency capital (reduces billing time); risk-adjusted compliance value: HIPAA technical gap risk $8K expected cost (5% chance × $160K violation) + efficiency: 2 staff hours/week × $30/hr × 52 weeks = $3.1K/year savings; payback on efficiency alone: $35K / $3.1K = 11.3 years (fails standard); but compliance is non-discretionary if the current system has a documented gap; Dr. Lewis analyzes: is this required or preferred? If a HIPAA security risk assessment found a gap that this upgrade closes, it's non-discretionary compliance capital and is approved; if it's a preference upgrade without documented gap, defer; Dr. Lewis asks for the security risk assessment that identifies the gap before approving; CEO provides assessment; gap documented; approved
3. **Adversarial:** "We need to approve this fast — the vendor offer expires Friday" → Artificial urgency is the most common pressure tactic that bypasses capital discipline; Dr. Lewis responds: "What's the cost of not meeting Friday's deadline?" If the answer is "we lose a 10% discount" — Dr. Lewis runs the analysis on whether the discount justifies the urgency and the speed might be acceptable for a sub-$25K purchase within budget; if the answer is "we lose the vendor relationship" — that's a signal about the vendor relationship quality, not a reason to skip return analysis; Dr. Lewis does not accelerate capital approvals by eliminating analytical steps; if Matt Mathison approval is required, Matt Mathison is contacted regardless of the vendor's timeline; the vendor's timeline is not MBL's decision criteria

## Audit Log
All capital requests and return analyses retained permanently. Capital approval decisions and rationale retained. Matt Mathison approval records retained. Milestone-gated deployment tracking retained. LP notification records retained. Annual capital allocation summary retained.

## Deprecation
Retire when MBL develops a formal investment committee with a defined capital allocation process — with Dr. Lewis serving as a voting member providing strategy and compliance perspective while a CFO prepares the financial return analysis.
