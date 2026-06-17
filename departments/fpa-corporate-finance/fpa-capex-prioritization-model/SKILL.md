---
name: fpa-capex-prioritization-model
description: "Prioritize capital expenditure requests by return on investment and strategic fit. Use when the user says 'CapEx prioritization', 'capital expenditure priority', 'prioritize CapEx', 'CapEx decision', 'CapEx approval', 'capital project ranking', 'which CapEx projects to fund', 'CapEx ROI', 'return on capital expenditure', 'CapEx budget allocation', 'rank the CapEx requests', 'CapEx planning', 'evaluate CapEx', 'CapEx justification', 'capital project approval', 'equipment purchase decision', 'technology investment ROI', 'build vs buy ROI', or 'capital spend prioritization'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--project <name>] [--amount <$>] [--category <growth|maintenance|compliance|cost-reduction>] [--action <evaluate|rank|approve>]"
---

# CapEx Prioritization Model

Evaluate and rank capital expenditure requests for MBL portfolio companies — calculating ROI, payback, and strategic fit so CapEx budget is allocated to the projects that create the most value and the minimum goes to projects that consume capital without a clear return. CapEx decisions at the portfolio company level are generally small relative to PE standards ($5K-$100K range), but they are still permanent uses of cash that compete with each other and with operating investments (headcount). Dr. Lewis evaluates every CapEx request above $5K before it goes to the CEO for approval, and every request above $25K before it goes to Matt Mathison.

## When to Use
- Any CapEx request >$5K (CEO approval required per approval matrix)
- Annual budget process — CapEx plan is built alongside the operating budget
- Mid-year CapEx request that was not in the approved budget
- HIVE: well completion, production equipment, or acreage decisions (all require model)
- Allevio: medical equipment, facility buildout, technology platform investment
- Column6: technology infrastructure, ad server upgrade, platform licensing
- Portfolio-level CapEx budget allocation — which company's projects are funded first?

## CapEx Prioritization Framework

```
CapEx categories and approval thresholds:

  CATEGORY 1 — Compliance / Safety (highest priority, least ROI analysis required):
    Must-do: regulatory, safety, or contractual requirement
    Approval: Dr. Lewis confirms it is genuinely required; CEO approves; Matt Mathison notified if >$25K
    ROI analysis: Minimal — the cost of non-compliance is the comparator, not financial ROI
    Example: HIPAA-required security upgrade; OSHA safety equipment; state licensing requirement
    
  CATEGORY 2 — Maintenance (preserve existing asset value, reduce operating cost):
    Approval: Same as compliance — CEO; Matt Mathison if >$25K
    ROI analysis: Compare cost of replacement vs. repair vs. deferral
    Key metric: Is deferring this maintenance creating a larger future cost?
    Example: Server replacement at end of life; HVAC repair at Allevio clinic; HIVE pump replacement
    
  CATEGORY 3 — Cost Reduction (investment that reduces ongoing operating costs):
    Approval: Full ROI analysis required; CEO; Matt Mathison if >$25K
    ROI analysis: Annual cost savings ÷ CapEx cost = simple payback; also calculate IRR
    Target: Payback <24 months; IRR >25%
    Example: Automating a manual billing process at Allevio; replacing an inefficient production tool at HIVE
    
  CATEGORY 4 — Growth (investment that enables or accelerates revenue growth):
    Approval: Full ROI analysis required; CEO; Matt Mathison if >$25K
    ROI analysis: Incremental revenue × gross margin ÷ CapEx cost; calculate IRR
    Target: Payback <36 months; IRR >20%
    Risk-adjust: Growth CapEx has higher execution risk than cost-reduction CapEx (revenue may not materialize)
    Example: Telehealth platform for Allevio; new CTV ad server capability for Column6
    
ROI calculation methods:

  SIMPLE PAYBACK (for all projects):
    Formula: CapEx amount ÷ Annual benefit (cost savings or gross margin)
    Threshold: <24 months for cost reduction; <36 months for growth
    Limitation: Does not account for time value of money; use for quick triage only
    
  NPV (Net Present Value):
    Formula: Sum of (annual benefit ÷ (1 + discount rate)^year) − CapEx cost
    Discount rate: 15% for standard CapEx; 20% for higher-risk growth CapEx
    Decision rule: NPV >0 means the project creates value; NPV <0 means the project destroys value
    
  IRR (Internal Rate of Return):
    Formula: =XIRR(cash flows, dates)
    Threshold: >15% for standard CapEx; >20% for growth CapEx
    
  RISK-ADJUSTED ROI:
    For growth CapEx: Apply probability-weighted scenarios
    Base case revenue assumption × probability (e.g., 60% chance) + Bear case × (1 − probability)
    This captures the reality that growth CapEx has uncertain returns
    
Portfolio-level CapEx ranking:
  When total CapEx requests exceed the CapEx budget, rank by:
  1. Category 1 (Compliance/Safety) — fund all of these first
  2. Category 2 (Maintenance) — fund all of these next (deferral creates larger future cost)
  3. Category 3 (Cost Reduction) — rank by IRR (highest first)
  4. Category 4 (Growth) — rank by risk-adjusted IRR (highest first)
  5. Below the CapEx budget line: deferred or rejected projects documented with reason
  
HIVE-specific CapEx framework (O&G):
  Well completion: High-impact; use production decline curve and WTI price scenarios
  Production equipment: Compare LOE cost reduction per BOE vs. equipment cost
  Acreage acquisition: Requires full geological assessment + financial model (fpa-financial-model-builder)
  HIVE CapEx is evaluated at both base and Bear WTI — if the project doesn't work at $50/bbl, it's high risk
  
Allevio-specific CapEx framework (Healthcare):
  Medical equipment: Is it required for the services we provide? Or expansion?
  Telehealth platform: Revenue expansion opportunity + compliance (HIPAA requirements for telehealth)
  Facility buildout: Compare build vs. lease; if build, calculate depreciation and impact on EBITDA/EBITDA margin
```

## Output Format

```markdown
# CapEx Evaluation — [Project Name] | [Entity]
**Category:** [Compliance / Maintenance / Cost Reduction / Growth]
**Amount requested:** $[X]K | **Requested by:** [CEO / Department] | **Date needed:** [Date]
**Prepared by:** Dr. Lewis | **Approval required:** CEO ✅ / Matt Mathison ✅ (>$25K)

---

## Financial Analysis

| Metric | Value | Threshold | Pass? |
|--------|-------|-----------|-------|
| CapEx amount | $[X]K | — | — |
| Annual benefit (savings or margin) | $[X]K | — | — |
| Simple payback | [N] months | <[24/36] mo | ✅/⚠️ |
| NPV (15% discount rate) | $[X]K | >$0 | ✅/⚠️ |
| IRR | [X]% | >[15/20]% | ✅/⚠️ |
| Bear case payback | [N] months | <[36/48] mo | ✅/⚠️ |

---

## Investment Rationale

**Problem being solved:** [What operational or strategic problem does this CapEx address?]
**Proposed solution:** [What is being purchased/built and why this option?]
**Alternatives considered:** [What other approaches were evaluated?]
**Why now?** [What makes this the right time — operational need, pricing, contract timing]

---

## Risk Assessment

| Risk | Probability | Mitigation |
|------|------------|------------|
| Benefit doesn't materialize | [Low/Med/High] | [Monitoring metric + trigger] |
| Timeline slips | [Low/Med/High] | [Vendor milestone tracking] |
| Cost overrun | [Low/Med/High] | [Fixed-price contract / contingency] |

---

## Recommendation

**Approve / Defer / Reject** — [1 sentence rationale]

*If approved:* CapEx budget updated; depreciation schedule added to financial model; post-implementation review at [N] months.
*If deferred:* Re-evaluate at [trigger — budget cycle / WTI recovery / etc.]
*If rejected:* [Alternative approach if any]

---

## CapEx Budget Impact

| Entity | Annual CapEx Budget | Approved YTD | This Request | Remaining |
|--------|--------------------|--------------|--------------|-----------| 
| [Entity] | $[X]K | $[X]K | $[X]K | $[X]K |
```

## Output Contract
- Every CapEx above $5K gets a financial model — a CapEx approval without a financial model is a faith-based investment; Dr. Lewis requires that every CapEx request above $5K includes at minimum: the cost, the expected annual benefit (savings or revenue), the simple payback, and the category; for requests above $25K, Dr. Lewis adds NPV, IRR, and Bear case payback; if the requester cannot articulate the benefit clearly enough to calculate a payback period, the project should be deferred until the case is made more clearly
- Defer is a legitimate outcome — not every CapEx request needs to be approved or rejected; deferral is appropriate when (1) the project makes financial sense but cash is tight, (2) the timing is not optimal (better price available in 3 months), or (3) a prerequisite project needs to be completed first; Dr. Lewis frames deferrals with a specific re-evaluation trigger so the project is not simply lost in a queue — "defer until Q4 budget review when WTI stabilizes" or "defer until Allevio's Q3 member count is confirmed — this determines if the expansion is justified"
- Track actual vs. projected benefits — CapEx decisions create an implicit commitment: "this investment will generate $X in savings or revenue"; Dr. Lewis builds post-implementation reviews into every CapEx approval above $25K; at 6 months and 12 months after a major CapEx deployment, the actual benefit is compared to the modeled benefit; if a growth CapEx is consistently underdelivering vs. the model, the next growth CapEx request from that entity faces a higher scrutiny bar; this accountability loop prevents CapEx from becoming a mechanism for departments to spend capital on projects that never deliver the promised returns
- HITL required: Dr. Lewis evaluates every CapEx above $5K; CEO approves <$25K; CEO + Dr. Lewis approve $5K-$25K; CEO + Dr. Lewis + Matt Mathison approve >$25K; any unbudgeted CapEx (not in the approved annual plan) follows the same approval chain regardless of amount; Dr. Lewis does not approve CapEx that exceeds the remaining CapEx budget without a budget amendment approved by Matt Mathison

## System Dependencies
- **Reads from:** CapEx budget (annual budget model); QuickBooks fixed assets register; current CapEx approvals YTD; entity-specific data (HIVE: production data, WTI for well evaluations; Allevio: patient volume, revenue per clinical hour; Column6: campaign capacity, platform costs); depreciation schedule (fin-ops-depreciation-schedule-builder); vendor quotes (for major CapEx)
- **Writes to:** CapEx evaluation memo (SharePoint/Finance/<Company>/CapEx/[Project]_[Date].pdf); fixed assets register (QuickBooks — after approval); depreciation schedule (added to financial model); CapEx budget tracker (YTD vs. annual budget); post-implementation review calendar; Matt Mathison approval brief (>$25K)
- **HITL Required:** Dr. Lewis evaluates; CEO approves <$25K CapEx within budget; CEO + Dr. Lewis approve $5K-$25K; CEO + Dr. Lewis + Matt Mathison approve >$25K; unbudgeted CapEx of any amount requires same chain + Matt Mathison; no CapEx committed (vendor order placed, contract signed) before approval received

## Test Cases
1. **Golden path:** Allevio wants to purchase a telehealth platform at $28K (Category 4 — Growth) → Dr. Lewis evaluates: CapEx $28K; expected benefit: 15 additional patient visits/week at $65 average reimbursement, 60% margin = $585/week = $30,420/year; simple payback: $28K ÷ $30,420 = 11 months ✅; NPV at 15% (3-year): $42K ✅; IRR: 87% ✅; Bear case (only 8 visits/week): $16,224/year benefit; payback 21 months ✅; risks: HIPAA compliance for telehealth (additional legal review required $2K); reimbursement rate may vary by payer; recommendation: APPROVE with stipulation (legal review of HIPAA telehealth requirements before go-live); Matt Mathison approval brief sent; approved; Dr. Lewis adds $28K to fixed assets register; depreciation scheduled over 3 years ($9.3K/year); post-implementation review calendar: 6 months and 12 months
2. **Edge case:** HIVE operator submits a well completion for $180K (Category 4 — Growth) at $67/bbl WTI → Dr. Lewis models: base case (WTI $67): production 250 BOE/day, netback $35/BOE, annual cash flow $3.2M; IRR 42%; Bear case (WTI $50): netback $18/BOE, cash flow $1.6M; IRR 18% ✅ (above 15% threshold); stress case (WTI $45 — below stress protocol): netback $13/BOE; IRR 12% ⚠️ (below threshold, triggers stress protocol); recommendation: APPROVE subject to (1) WTI above $48/bbl at time of capital commitment; (2) fixed-price completion contract; (3) Matt Mathison approval (>$25K); Matt Mathison approves with the WTI condition documented; Dr. Lewis monitors WTI weekly; at commitment date, WTI is $64/bbl — condition met; commitment executed
3. **Adversarial:** The Column6 CEO requests $35K for "office furniture and renovation" as unbudgeted CapEx → Dr. Lewis evaluates: Category 2 (Maintenance/Facility); not in the approved CapEx budget; Dr. Lewis asks for detail — 3 quotes for the renovation; CEO provides one quote (no competitive bids); Dr. Lewis declines to advance without 2 additional quotes for comparison; also defers the approval pending understanding: Is this space necessary for team growth? Are we expanding the team? (If yes, the cost is justified; if no, is there an operational reason?); CEO explains the renovation is for a new hire workstation for the approved headcount plan; Dr. Lewis frames the approval: maintenance Category 2 (required for approved headcount), unbudgeted, $35K → requires CEO + Dr. Lewis + Matt Mathison approval; Dr. Lewis requests 2 additional quotes; with competitive bids, final cost $24K (below $25K threshold after competitive bidding) → CEO + Dr. Lewis approval sufficient; approved at $24K; CapEx budget amended

## Audit Log
All CapEx evaluations retained by project (evaluation memo, supporting model, approval chain). Approval records retained (CEO, Dr. Lewis, Matt Mathison). CapEx budget tracker maintained (annual budget vs. approved YTD). Fixed assets register additions logged. Post-implementation reviews scheduled and completed (6-month and 12-month for >$25K). Deferred and rejected CapEx documented with reason and re-evaluation trigger.

## Deprecation
Retire when each portfolio company has a CFO or Operations Director who evaluates CapEx requests — with Dr. Lewis reviewing all >$25K CapEx and Matt Mathison approving per the approval matrix.
